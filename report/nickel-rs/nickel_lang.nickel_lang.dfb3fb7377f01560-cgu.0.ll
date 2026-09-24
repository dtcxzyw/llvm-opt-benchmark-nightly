Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h8a39f222a264a087E:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !12, !noalias !15650, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !15651
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !15651
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.n, !noalias !15649 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !15652
  store i8 1, ptr %i.i, align 8, !noalias !15652
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i
  %.pre-phi12.i.i = phi i64 [ %i.n, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi.i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !15651
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h6eba9f1fd1487ff2E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef 2, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi12.i.i)
          to label %bb.c unwind label %bb.n, !noalias !15649

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15653)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15653, !noalias !15654, !noundef !11
  %i.s = icmp eq i64 %i.r, 0
  %.sroa.0.0.i.i.i = select i1 %i.s, i64 2, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15655, !noalias !15656, !noundef !11
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i", !prof !17

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !15657, !noalias !15654, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !15657, !noalias !15654, !nonnull !11, !noundef !11
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.y, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i" unwind label %bb.k, !noalias !15654 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !range !34, !alias.scope !15657, !noalias !15654, !noundef !11
  %i.ad = load i64, ptr %i.t, align 8, !alias.scope !15657, !noalias !15654, !noundef !11 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 128102389400760776
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub nsw i64 %i.ac, %i.ad
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i"
  %i.ah = load i64, ptr %i.q, align 8, !alias.scope !15657, !noalias !15654, !noundef !11
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !15657, !noalias !15654, !noundef !11
  %i.aj = add i64 %i.ai, %i.ah
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h34b18e10e19f224fE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.aj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i" unwind label %bb.k, !noalias !15654

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !15659
  call void @llvm.experimental.noalias.scope.decl(metadata !15660)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15661)
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !15662, !noalias !15663, !noundef !11 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !15662, !noalias !15663, !noundef !11 ; 5 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.an
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6fbb35186f3cba98E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 6 uses
  %i.at = icmp ult i64 %i.ar, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !15660, !noalias !15664, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15665
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !15666

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !noalias !15667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15668
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15668
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h58b8fdd023454860E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.ap)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !15666

.noexc1.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !15668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15668
  %i.av = load i64, ptr %i.b, align 8, !range !35, !alias.scope !15669, !noalias !15668, !noundef !11
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc1.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h8ed741fe930f1f88E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !15666

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %.noexc1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15665
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6fbb35186f3cba98E.exit, label %bb.f

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !15662, !noalias !15663
  %i.ay = icmp eq i64 %i.an, %i.as
  br i1 %i.ay, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw i64 %i.an, %i.as
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.as
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h1ea2ec23e543f72fE"(ptr noalias noundef nonnull readonly align 8 %i.ba, i64 noundef %i.az)
          to label %.body.i.i unwind label %bb.j, !noalias !15670

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15666
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h1ea2ec23e543f72fE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %.body.i.i unwind label %bb.l, !noalias !15671

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15654
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %common.resume unwind label %bb.m, !noalias !15649

bb.m:                                             ; preds = %bb.n, %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15649
  unreachable

common.resume:                                    ; preds = %bb.o, %.body.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i", %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h1ea2ec23e543f72fE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %common.resume unwind label %bb.m, !noalias !15671

_ZN4core4iter6traits8iterator8Iterator7collect17h6fbb35186f3cba98E.exit: ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17hd26deaf0b2b033b7E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load i8, ptr %i.i, align 8, !range !12, !noalias !15672, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6fbb35186f3cba98E.exit
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !15673
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6fbb35186f3cba98E.exit
  %i.bi = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i"
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !15674
  store i8 1, ptr %i.i, align 8, !noalias !15674
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i
  %i.bm = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i ], [ %i.bj, %.noexc ]
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.h, align 8, !noalias !15673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #43
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17hd763db91f9c2ed43E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15749)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15750, !noalias !15751 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !15752, !noalias !15753
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15752, !noalias !15753 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15752, !noalias !15753 ; 5 uses
  %i.h = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.h, label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h5a4d1b4ff7f62002E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !15750, !noalias !15751, !nonnull !11, !noundef !11
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !15754
  br label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h5a4d1b4ff7f62002E.exit"

"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h5a4d1b4ff7f62002E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  store ptr %.sroa.4.0.copyload.i, ptr %i.g, align 8, !alias.scope !15755
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15755
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15755
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !15755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15756
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !range !12, !noalias !15757, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i: ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h5a4d1b4ff7f62002E.exit"
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !15758
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !15758
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h5a4d1b4ff7f62002E.exit"
  %i.x = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.r, !noalias !15756 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !15759
  store i8 1, ptr %i.u, align 8, !noalias !15759
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i
  %.pre-phi11.i.i = phi i64 [ %i.z, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.y, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ab = add i64 %.pre-phi.i.i, 1
  store i64 %i.ab, ptr %i.t, align 8, !noalias !15758
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h6eba9f1fd1487ff2E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi11.i.i)
          to label %bb.c unwind label %bb.r, !noalias !15756

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15760)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !15760, !noalias !15761, !noundef !11
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add nuw nsw i64 %.sroa.5.0.copyload.i, 1
  %i.ag = lshr i64 %i.af, 1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i64 %.sroa.5.0.copyload.i, i64 %i.ag ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !15762, !noalias !15763, !noundef !11
  %i.ak = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i", !prof !17

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !15764, !noalias !15761, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !15764, !noalias !15761, !nonnull !11, !noundef !11
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.am, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i" unwind label %bb.o, !noalias !15761 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.aq = load i64, ptr %i.e, align 8, !range !34, !alias.scope !15764, !noalias !15761, !noundef !11
  %i.ar = load i64, ptr %i.ah, align 8, !alias.scope !15764, !noalias !15761, !noundef !11 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 128102389400760776
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.aq, %i.ar
  %i.au = icmp ugt i64 %.sroa.0.0.i.i.i, %i.at
  br i1 %i.au, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i"
  %i.av = load i64, ptr %i.ac, align 8, !alias.scope !15764, !noalias !15761, !noundef !11
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !15764, !noalias !15761, !noundef !11
  %i.ax = add i64 %i.aw, %i.av
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h34b18e10e19f224fE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.ax)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i" unwind label %bb.o, !noalias !15761

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hae9d8f815a0f581bE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !15766
  call void @llvm.experimental.noalias.scope.decl(metadata !15767)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15768, !noalias !15769, !nonnull !11, !noundef !11 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !15768, !noalias !15769 ; 3 uses
  %i.bb = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.az
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.lr.ph.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.lr.ph.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.lr.ph.i.i.i.i.i.i"
  %i.be = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.lr.ph.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15770)
  call void @llvm.experimental.noalias.scope.decl(metadata !15771)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 5 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.43.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15772 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i", label %bb.g

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !15768, !noalias !15769
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h408649352833672bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #43
          to label %.body.i.i unwind label %bb.n, !noalias !15773

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !15772, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !15774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15775
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bc, ptr noundef nonnull %.sroa.01.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !15774

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  store i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !15775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, i64 16, i1 false), !noalias !15775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15776
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h58b8fdd023454860E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bc)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.f, !noalias !15774

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !15776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15776
  %i.bh = load i64, ptr %i.b, align 8, !range !35, !alias.scope !15777, !noalias !15776, !noundef !11
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h8ed741fe930f1f88E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.f, !noalias !15774

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i"
  %i.bj = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h8b019c1dd5743befE.exit.i.i.i" ], [ %i.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15778)
  call void @llvm.experimental.noalias.scope.decl(metadata !15779)
  call void @llvm.experimental.noalias.scope.decl(metadata !15780)
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 40
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h9b8403b578de3349E"(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bn)
          to label %bb.k unwind label %bb.i, !noalias !15781

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !15782, !noalias !15783, !noundef !11 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !15782, !noalias !15783, !nonnull !11, !noundef !11
  %i.bt = mul nuw i64 %i.bq, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15781
  br label %.body.i.i

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15782, !noalias !15783, !noundef !11 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17heb5a985d92da31ecE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.d, align 8, !alias.scope !15782, !noalias !15783, !nonnull !11, !noundef !11
  %i.by = mul nuw i64 %i.bv, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15781
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17heb5a985d92da31ecE.exit

bb.m:                                             ; preds = %bb.h, %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  %i.bz = icmp eq ptr %i.bf, %i.az
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfb9a28deb9c251aeE.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15774
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3fa1910bafce0d5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #43
          to label %.body.i.i unwind label %bb.p, !noalias !15784

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15761
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.j, %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.cb, %bb.o ], [ %i.bo, %bb.i ], [ %i.bo, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %common.resume unwind label %bb.q, !noalias !15756

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15756
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ce, %bb.r ], [ %i.cq, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.b, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3fa1910bafce0d5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #43
          to label %common.resume unwind label %bb.q, !noalias !15784

_ZN4core4iter6traits8iterator8Iterator7collect17heb5a985d92da31ecE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = load i8, ptr %i.u, align 8, !range !12, !noalias !15785, !noundef !11
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17heb5a985d92da31ecE.exit
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !15786
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17heb5a985d92da31ecE.exit
  %i.ch = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i"
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !noalias !15787
  store i8 1, ptr %i.u, align 8, !noalias !15787
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE.exit": ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i
  %i.cl = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i ], [ %i.ci, %.noexc ]
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.t, align 8, !noalias !15786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i"
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17ha7053164e737dc6fE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #43
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache11SourceCache10add_source17hdefab2a68c992fbfE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15810
  %.val.i.i = load ptr, ptr %3, align 8, !alias.scope !15811, !noalias !15812, !nonnull !11, !align !23, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val2.i.i = load i64, ptr %i.e, align 8, !alias.scope !15811, !noalias !15812, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15811, !noalias !15812, !noundef !11
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val2.i.i, i64 %i.g) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %i.i = sub nuw i64 %.val2.i.i, %.sroa.0.0.i.i.i
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.h, i64 noundef %i.i)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !range !25, !noalias !15810, !noundef !11
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15810
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @473, ptr %i.l, align 8
  store i32 1, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

bb.b:                                             ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !15810, !nonnull !11, !align !23, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !15810, !noundef !11 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15810
  %i.q = invoke { i64, i64 } @_ZN5alloc6string6String11try_reserve17h9774032b7049ce09E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.p)
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %bb.b
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %.not.i = icmp eq i64 %i.r, -9223372036854775807
  %.val.i.i12.pre = load i64, ptr %i.d, align 8, !range !34 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.noexc10
  call void @llvm.experimental.noalias.scope.decl(metadata !15813)
  call void @llvm.experimental.noalias.scope.decl(metadata !15814)
  %i.s = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !15815, !noalias !15808, !noundef !11 ; 3 uses
  %i.t = sub i64 %.val.i.i12.pre, %i.s
  %i.u = icmp ugt i64 %i.p, %i.t
  br i1 %i.u, label %bb.d, label %bb.g, !prof !17

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.s, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
          to label %.noexc11 unwind label %bb.i

.noexc11:                                         ; preds = %bb.d
  %.pre.i.i.i = load i64, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !15816, !noalias !15808
  br label %bb.g

bb.e:                                             ; preds = %.noexc10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 163208757251 to ptr), ptr %i.v, align 8
  store i32 1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !15817)
  call void @llvm.experimental.noalias.scope.decl(metadata !15818)
  %i.w = icmp eq i64 %.val.i.i12.pre, 0
  br i1 %i.w, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15819, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i12.pre, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15819
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

bb.g:                                             ; preds = %.noexc11, %bb.c
  %i.x = phi i64 [ %i.s, %bb.c ], [ %.pre.i.i.i, %.noexc11 ] ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15816, !noalias !15808, !nonnull !11, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %i.n, i64 %i.p, i1 false), !noalias !15820
  %i.ab = add i64 %i.x, %i.p
  store i64 %i.ab, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !15816, !noalias !15808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ac = call noundef i32 @_ZN16nickel_lang_core5cache11SourceCache10add_string17hbf4edb646b5fd383E(ptr noalias noundef nonnull align 8 dereferenceable(296) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ac, ptr %i.ad, align 4
  store i32 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit", %bb.g
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit": ; preds = %.thread, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..cache..SourcePath$GT$17h16baaf75656aa615E"(ptr noalias noundef align 8 dereferenceable(32) %2)
  br label %bb.h

bb.i:                                             ; preds = %bb.d, %bb.a, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !15821)
  call void @llvm.experimental.noalias.scope.decl(metadata !15822)
  %.val.i.i13 = load i64, ptr %i.d, align 8, !range !34, !alias.scope !15823, !noundef !11 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i13, 0
  br i1 %i.ae, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i14 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15823, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i14, i64 noundef %.val.i.i13, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15823
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..cache..SourcePath$GT$17h16baaf75656aa615E"(ptr noalias noundef align 8 dereferenceable(32) %2) #43
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17hefc9c31aab8ff2b7E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 11 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 14 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = tail call { i64, i64 } @_ZN16nickel_lang_core5cache9TermCache11entry_state17hbb3e2ab6ce484d7fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i32 noundef %4)
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %.not = icmp eq i64 %i.i, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp sgt i64 %i.i, 6
  br i1 %i.j, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hd45bb5bc141bd7c8E.exit32"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16017)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16018
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 8, !alias.scope !16019, !noalias !16020 ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.c, align 16, !alias.scope !16021, !noalias !16018
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !16021, !noalias !16018
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !16021, !noalias !16018
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
end_hunk_0

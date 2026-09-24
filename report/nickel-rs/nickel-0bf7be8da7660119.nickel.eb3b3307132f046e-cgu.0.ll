Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h3ff58ac558a9bcd8E:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !44, !noalias !26247, !noundef !34
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !26248
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !26248
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.n, !noalias !26246 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !26249
  store i8 1, ptr %i.i, align 8, !noalias !26249
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i
  %.pre-phi12.i.i = phi i64 [ %i.n, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi.i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !26248
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef 2, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi12.i.i)
          to label %bb.c unwind label %bb.n, !noalias !26246

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26250)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !26250, !noalias !26251, !noundef !34
  %i.s = icmp eq i64 %i.r, 0
  %.sroa.0.0.i.i.i = select i1 %i.s, i64 2, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !26252, !noalias !26253, !noundef !34
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i", !prof !37

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !26254, !noalias !26251, !noundef !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !26254, !noalias !26251, !nonnull !34, !noundef !34
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.y, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i" unwind label %bb.k, !noalias !26251 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !range !42, !alias.scope !26254, !noalias !26251, !noundef !34
  %i.ad = load i64, ptr %i.t, align 8, !alias.scope !26254, !noalias !26251, !noundef !34 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 128102389400760776
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub nsw i64 %i.ac, %i.ad
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i"
  %i.ah = load i64, ptr %i.q, align 8, !alias.scope !26254, !noalias !26251, !noundef !34
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !26254, !noalias !26251, !noundef !34
  %i.aj = add i64 %i.ai, %i.ah
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.aj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i" unwind label %bb.k, !noalias !26251

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !26256
  call void @llvm.experimental.noalias.scope.decl(metadata !26257)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26258)
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !26259, !noalias !26260, !noundef !34 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !26259, !noalias !26260, !noundef !34 ; 5 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.an
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hfb2de4d6d0fde083E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 6 uses
  %i.at = icmp ult i64 %i.ar, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !26257, !noalias !26261, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26262
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !26263

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !noalias !26264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26265
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.ap)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !26263

.noexc1.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !26265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26265
  %i.av = load i64, ptr %i.b, align 8, !range !57, !alias.scope !26266, !noalias !26265, !noundef !34
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc1.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !26263

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %.noexc1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26262
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hfb2de4d6d0fde083E.exit, label %bb.f

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !26259, !noalias !26260
  %i.ay = icmp eq i64 %i.an, %i.as
  br i1 %i.ay, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw i64 %i.an, %i.as
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.as
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hc46c92a11acef12cE"(ptr noalias noundef nonnull readonly align 8 %i.ba, i64 noundef %i.az)
          to label %.body.i.i unwind label %bb.j, !noalias !26267

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26263
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hc46c92a11acef12cE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %.body.i.i unwind label %bb.l, !noalias !26268

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26251
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #61
          to label %common.resume unwind label %bb.m, !noalias !26246

bb.m:                                             ; preds = %bb.n, %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26246
  unreachable

common.resume:                                    ; preds = %bb.o, %.body.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i", %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hc46c92a11acef12cE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %common.resume unwind label %bb.m, !noalias !26268

_ZN4core4iter6traits8iterator8Iterator7collect17hfb2de4d6d0fde083E.exit: ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h3de54566b825c455E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load i8, ptr %i.i, align 8, !range !44, !noalias !26269, !noundef !34
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hfb2de4d6d0fde083E.exit
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !26270
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hfb2de4d6d0fde083E.exit
  %i.bi = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i"
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !26271
  store i8 1, ptr %i.i, align 8, !noalias !26271
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i, %.noexc
  %i.bm = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i ], [ %i.bj, %.noexc ]
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.h, align 8, !noalias !26270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #61
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17hfbd78c73d8d9d6c1E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26346)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26348 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !26349, !noalias !26350
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !26349, !noalias !26350 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !26349, !noalias !26350 ; 5 uses
  %i.h = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.h, label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17hf7ae6798e7ad95a1E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !26347, !noalias !26348, !nonnull !34, !noundef !34
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !26351
  br label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17hf7ae6798e7ad95a1E.exit"

"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17hf7ae6798e7ad95a1E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  store ptr %.sroa.4.0.copyload.i, ptr %i.g, align 8, !alias.scope !26352
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !26352
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !26352
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !26352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26353
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !range !44, !noalias !26354, !noundef !34
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i: ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17hf7ae6798e7ad95a1E.exit"
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !26355
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !26355
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17hf7ae6798e7ad95a1E.exit"
  %i.x = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.r, !noalias !26353 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i"
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !26356
  store i8 1, ptr %i.u, align 8, !noalias !26356
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i
  %.pre-phi11.i.i = phi i64 [ %i.z, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.y, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ab = add i64 %.pre-phi.i.i, 1
  store i64 %i.ab, ptr %i.t, align 8, !noalias !26355
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi11.i.i)
          to label %bb.c unwind label %bb.r, !noalias !26353

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26357)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !26357, !noalias !26358, !noundef !34
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add nuw nsw i64 %.sroa.5.0.copyload.i, 1
  %i.ag = lshr i64 %i.af, 1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i64 %.sroa.5.0.copyload.i, i64 %i.ag ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !26359, !noalias !26360, !noundef !34
  %i.ak = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i", !prof !37

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !26361, !noalias !26358, !noundef !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !26361, !noalias !26358, !nonnull !34, !noundef !34
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.am, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i" unwind label %bb.o, !noalias !26358 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.aq = load i64, ptr %i.e, align 8, !range !42, !alias.scope !26361, !noalias !26358, !noundef !34
  %i.ar = load i64, ptr %i.ah, align 8, !alias.scope !26361, !noalias !26358, !noundef !34 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 128102389400760776
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.aq, %i.ar
  %i.au = icmp ugt i64 %.sroa.0.0.i.i.i, %i.at
  br i1 %i.au, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i"
  %i.av = load i64, ptr %i.ac, align 8, !alias.scope !26361, !noalias !26358, !noundef !34
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !26361, !noalias !26358, !noundef !34
  %i.ax = add i64 %i.aw, %i.av
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.ax)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i" unwind label %bb.o, !noalias !26358

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !26363
  call void @llvm.experimental.noalias.scope.decl(metadata !26364)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !26365, !noalias !26366, !nonnull !34, !noundef !34 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !26365, !noalias !26366 ; 3 uses
  %i.bb = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.az
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.lr.ph.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.lr.ph.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.lr.ph.i.i.i.i.i.i"
  %i.be = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.lr.ph.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26367)
  call void @llvm.experimental.noalias.scope.decl(metadata !26368)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 5 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.43.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !26369 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i", label %bb.g

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !26365, !noalias !26366
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hef6ac9910d1edd7fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #61
          to label %.body.i.i unwind label %bb.n, !noalias !26370

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !26369, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !26371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26372
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bc, ptr noundef nonnull %.sroa.01.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !26371

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  store i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !26372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, i64 16, i1 false), !noalias !26372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26373
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26373
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bc)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.f, !noalias !26371

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !26373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26373
  %i.bh = load i64, ptr %i.b, align 8, !range !57, !alias.scope !26374, !noalias !26373, !noundef !34
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.f, !noalias !26371

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i"
  %i.bj = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i.i" ], [ %i.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26375)
  call void @llvm.experimental.noalias.scope.decl(metadata !26376)
  call void @llvm.experimental.noalias.scope.decl(metadata !26377)
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 40
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h34757a36f3180fdaE"(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bn)
          to label %bb.k unwind label %bb.i, !noalias !26378

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !26379, !noalias !26380, !noundef !34 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !26379, !noalias !26380, !nonnull !34, !noundef !34
  %i.bt = mul nuw i64 %i.bq, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !26378
  br label %.body.i.i

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !26379, !noalias !26380, !noundef !34 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h87a1c156078b701aE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.d, align 8, !alias.scope !26379, !noalias !26380, !nonnull !34, !noundef !34
  %i.by = mul nuw i64 %i.bv, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !26378
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h87a1c156078b701aE.exit

bb.m:                                             ; preds = %bb.h, %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !26373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26372
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  %i.bz = icmp eq ptr %i.bf, %i.az
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf00ae339180d21b5E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26371
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3e74ea44b87840e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #61
          to label %.body.i.i unwind label %bb.p, !noalias !26381

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26358
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.j, %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.cb, %bb.o ], [ %i.bo, %bb.i ], [ %i.bo, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #61
          to label %common.resume unwind label %bb.q, !noalias !26353

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26353
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ce, %bb.r ], [ %i.cq, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.b, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3e74ea44b87840e3E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #61
          to label %common.resume unwind label %bb.q, !noalias !26381

_ZN4core4iter6traits8iterator8Iterator7collect17h87a1c156078b701aE.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !26353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = load i8, ptr %i.u, align 8, !range !44, !noalias !26382, !noundef !34
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h87a1c156078b701aE.exit
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !26383
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h87a1c156078b701aE.exit
  %i.ch = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i"
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !noalias !26384
  store i8 1, ptr %i.u, align 8, !noalias !26384
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i, %.noexc
  %i.cl = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i ], [ %i.ci, %.noexc ]
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.t, align 8, !noalias !26383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i"
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #61
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache8CacheHub16custom_transform17h46926d0b1407ceb3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(632) %1, i32 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 4                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [96 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.p = tail call { i64, i64 } @_ZN16nickel_lang_core5cache9TermCache11entry_state17hbb3e2ab6ce484d7fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, i32 noundef %2)
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 2 uses
  switch i64 %i.q, label %bb.c [
    i64 8, label %bb.b
    i64 2, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  store i64 7, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h487d1c15c32f71ceE.exit47"

bb.c:                                             ; preds = %bb.a
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %.critedge

.critedge:                                        ; preds = %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h487d1c15c32f71ceE.exit46", %bb.a, %bb.c
  store i64 8, ptr %0, align 8
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17h487d1c15c32f71ceE.exit47"

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6remove17h88ea85fb81c7860cE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef align 8 dereferenceable(48) %i.o, i32 %2)
  %i.s = load i64, ptr %i.n, align 8, !range !113, !noundef !34
  %.not35 = icmp eq i64 %i.s, 8
  br i1 %.not35, label %bb.x, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !34, !noundef !34 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.w = load i8, ptr %i.v, align 8, !range !84, !noundef !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.val44 = load ptr, ptr %3, align 8, !nonnull !34, !align !41, !noundef !34
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val45 = load ptr, ptr %i.x, align 8, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %.val.i = load ptr, ptr %.val44, align 8, !noalias !26428, !nonnull !34, !align !41, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !26429
  store ptr %i.u, ptr %i.h, align 8, !noalias !26430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !26430
  %i.y = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h)
          to label %bb.f unwind label %bb.r, !noalias !26430

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN16nickel_lang_core8position8PosTable3get17he9d0e7b4065e9368E(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val45, i32 noundef %i.y)
          to label %bb.g unwind label %bb.r, !noalias !26431

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.g, align 4, !range !65, !noalias !26430, !noundef !34
  %i.aa = icmp eq i32 %i.z, 2
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !26430, !noundef !34
  %i.ad = invoke { ptr, i64 } @"_ZN93_$LT$nickel_lang_core..cache..CacheHub$u20$as$u20$nickel_lang_core..cache..ImportResolver$GT$8get_path17h2b6d7ab39bb4e0b2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(632) %1, i32 noundef %i.ac)
          to label %bb.i unwind label %bb.r, !noalias !26432 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 7 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %.invoke.i.i.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.j
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !26433
  %i.ai = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #53, !noalias !26433 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.invoke.i.i.i, label %bb.m

.invoke.i.i.i:                                    ; preds = %bb.l, %bb.k, %bb.j
  %i.ak = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ]
  %i.al = phi i64 [ %i.af, %bb.j ], [ %i.af, %bb.k ], [ 4, %bb.l ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ak, i64 %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1401) #59
          to label %.cont.i.i.i unwind label %bb.r, !noalias !26432

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26430
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !26434
  %i.am = call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #53, !noalias !26434 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.invoke.i.i.i, label %bb.o

bb.m:                                             ; preds = %bb.k, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ai, %bb.k ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %i.ae, i64 %i.af, i1 false), !noalias !26435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !26430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !26430
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %.sink42.i.i.i = phi i64 [ 4, %bb.o ], [ %i.af, %bb.m ] ; 2 uses
  %.sink41.i.i.i = phi ptr [ %i.am, %bb.o ], [ %.sroa.10.0.i.i.i.i.i, %bb.m ]
  %storemerge.i.i.i = phi i64 [ -9223372036854775800, %bb.o ], [ -9223372036854775808, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sink42.i.i.i, ptr %i.ao, align 8, !noalias !26430
  %.sroa.428.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sink41.i.i.i, ptr %.sroa.428.0..sroa_idx.i.i.i, align 8, !noalias !26430
  %.sroa.529.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sink42.i.i.i, ptr %.sroa.529.0..sroa_idx.i.i.i, align 8, !noalias !26430
  store i64 %storemerge.i.i.i, ptr %i.f, align 8, !noalias !26430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26430
  store ptr %.val45, ptr %i.e, align 8, !noalias !26430
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.ap, align 8, !noalias !26430
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.aq, align 8, !noalias !26430
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.val.i, ptr %i.ar, align 8, !noalias !26430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26430
  store ptr %i.e, ptr %i.d, align 8, !noalias !26430
  invoke fastcc void @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$8traverse17h439e4fe61a896b4fE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, ptr noundef nonnull %i.u, ptr noalias noundef align 8 dereferenceable(8) %i.d, i1 noundef zeroext false)
          to label %"_ZN16nickel_lang_core7program17Program$LT$EC$GT$16custom_transform28_$u7b$$u7b$closure$u7d$$u7d$17h8032be655a04de8dE.exit" unwind label %bb.p

bb.o:                                             ; preds = %bb.l
  store i32 1953719668, ptr %i.am, align 1, !noalias !26436
  br label %bb.n

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_core..cache..SourcePath$GT$17h4210bcdb4d295772E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #61, !noalias !26437
  br label %common.resume

bb.q:                                             ; preds = %bb.w, %bb.v, %bb.s
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !26432
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.ab, %bb.p, %bb.r, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i.i" ], [ %i.as, %bb.p ], [ %lpad.thr_comm.i.i.i, %bb.r ], [ %i.br, %bb.ab ], [ %i.br, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %.invoke.i.i.i, %bb.h, %bb.f, %bb.e
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = ptrtoint ptr %i.u to i64
  %i.av = and i64 %i.au, 3
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 2)
  switch i64 %..i.i.i.i, label %common.resume [
    i64 2, label %bb.s
end_hunk_0

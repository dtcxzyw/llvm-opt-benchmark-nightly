Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h9efcc0ae13396c3aE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.j = load i8, ptr %i.i, align 8, !range !16, !noalias !15346, !noundef !15
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !15347
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !15347
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.n, !noalias !15345 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i"
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !15348
  store i8 1, ptr %i.i, align 8, !noalias !15348
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i
  %.pre-phi12.i.i = phi i64 [ %i.n, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.m, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.p = add i64 %.pre-phi.i.i, 1
  store i64 %i.p, ptr %i.h, align 8, !noalias !15347
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef 2, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi12.i.i)
          to label %bb.c unwind label %bb.n, !noalias !15345

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15349)
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !15349, !noalias !15350, !noundef !15
  %i.s = icmp eq i64 %i.r, 0
  %.sroa.0.0.i.i.i = select i1 %i.s, i64 2, i64 1 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !15351, !noalias !15352, !noundef !15
  %i.w = icmp ugt i64 %.sroa.0.0.i.i.i, %i.v
  br i1 %i.w, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i", !prof !21

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.y = load i64, ptr %i.t, align 8, !alias.scope !15353, !noalias !15350, !noundef !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !15353, !noalias !15350, !nonnull !15, !noundef !15
  %i.ab = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aa, i64 noundef %i.y, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i" unwind label %bb.k, !noalias !15350 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.ac = load i64, ptr %i.e, align 8, !range !39, !alias.scope !15353, !noalias !15350, !noundef !15
  %i.ad = load i64, ptr %i.t, align 8, !alias.scope !15353, !noalias !15350, !noundef !15 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 128102389400760776
  call void @llvm.assume(i1 %i.ae)
  %i.af = sub nsw i64 %i.ac, %i.ad
  %i.ag = icmp ugt i64 %.sroa.0.0.i.i.i, %i.af
  br i1 %i.ag, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i"
  %i.ah = load i64, ptr %i.q, align 8, !alias.scope !15353, !noalias !15350, !noundef !15
  %i.ai = load i64, ptr %i.u, align 8, !alias.scope !15353, !noalias !15350, !noundef !15
  %i.aj = add i64 %i.ai, %i.ah
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.aj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i" unwind label %bb.k, !noalias !15350

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !15355
  call void @llvm.experimental.noalias.scope.decl(metadata !15356)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15357)
  %i.al = load i64, ptr %i.d, align 8, !alias.scope !15358, !noalias !15359, !noundef !15 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !15358, !noalias !15359, !noundef !15 ; 5 uses
  %i.ao = icmp ule i64 %i.al, %i.an
  call void @llvm.assume(i1 %i.ao)
  %.not2.i.i.i.i.i.i.i = icmp eq i64 %i.al, %i.an
  br i1 %.not2.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf57b85c1c5a4e320E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.as, %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i" ] ; 3 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 6 uses
  %i.at = icmp ult i64 %i.ar, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.ar ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !15356, !noalias !15360, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15361
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ap, ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !15362

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !noalias !15363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15364
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.ap)
          to label %.noexc1.i.i.i.i.i.i unwind label %bb.h, !noalias !15362

.noexc1.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !15364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15364
  %i.av = load i64, ptr %i.b, align 8, !range !33, !alias.scope !15365, !noalias !15364, !noundef !15
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  br i1 %i.aw, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %.noexc1.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i" unwind label %bb.h, !noalias !15362

"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i": ; preds = %bb.g, %.noexc1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15361
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.as, %i.an
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hf57b85c1c5a4e320E.exit, label %bb.f

bb.h:                                             ; preds = %bb.g, %.noexc.i.i.i.i.i.i, %bb.f
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !15358, !noalias !15359
  %i.ay = icmp eq i64 %i.an, %i.as
  br i1 %i.ay, label %.body.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = sub nuw i64 %i.an, %i.as
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ak, i64 %i.as
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hb2c2e7dd6eecdc9dE"(ptr noalias noundef nonnull readonly align 8 %i.ba, i64 noundef %i.az)
          to label %.body.i.i unwind label %bb.j, !noalias !15366

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15362
  unreachable

bb.k:                                             ; preds = %bb.d, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hb2c2e7dd6eecdc9dE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %.body.i.i unwind label %bb.l, !noalias !15367

bb.l:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15350
  unreachable

.body.i.i:                                        ; preds = %bb.k, %bb.i, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ax, %bb.i ], [ %i.ax, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %common.resume unwind label %bb.m, !noalias !15345

bb.m:                                             ; preds = %bb.n, %.body.i.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15345
  unreachable

common.resume:                                    ; preds = %bb.o, %.body.i.i, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.n ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.br, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i", %bb.b
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hb2c2e7dd6eecdc9dE"(ptr noalias noundef nonnull readonly align 8 %.sroa.5.0..sroa_idx, i64 noundef 2)
          to label %common.resume unwind label %bb.m, !noalias !15367

_ZN4core4iter6traits8iterator8Iterator7collect17hf57b85c1c5a4e320E.exit: ; preds = %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$8try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h31c0e97403a839bbE.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load i8, ptr %i.i, align 8, !range !16, !noalias !15368, !noundef !15
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf57b85c1c5a4e320E.exit
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !15369
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hf57b85c1c5a4e320E.exit
  %i.bi = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i"
  %i.bj = extractvalue { i64, i64 } %i.bi, 0
  %i.bk = extractvalue { i64, i64 } %i.bi, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !noalias !15370
  store i8 1, ptr %i.i, align 8, !noalias !15370
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i, %.noexc
  %i.bm = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i ], [ %i.bj, %.noexc ]
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.h, align 8, !noalias !15369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.o:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #43
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17hd0bb4937edd3920aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15445)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !15446, !noalias !15447 ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !15448, !noalias !15449
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15448, !noalias !15449 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15448, !noalias !15449 ; 5 uses
  %i.h = icmp eq i64 %.sroa.5.0.copyload.i.i, 0
  br i1 %i.h, label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h406654d6b33638f4E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !15446, !noalias !15447, !nonnull !15, !noundef !15
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !15450
  br label %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h406654d6b33638f4E.exit"

"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h406654d6b33638f4E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.r = icmp ult i64 %.sroa.5.0.copyload.i, 230584300921369396
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  store ptr %.sroa.4.0.copyload.i, ptr %i.g, align 8, !alias.scope !15451
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !15451
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !15451
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !15451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15452
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.v = load i8, ptr %i.u, align 8, !range !16, !noalias !15453, !noundef !15
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i: ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h406654d6b33638f4E.exit"
  %.pre.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !15454
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !15454
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4iter112_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$GT$9into_iter17h406654d6b33638f4E.exit"
  %i.x = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i.i unwind label %bb.r, !noalias !15452 ; 2 uses

.noexc.i.i:                                       ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i"
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !15455
  store i8 1, ptr %i.u, align 8, !noalias !15455
  br label %bb.b

bb.b:                                             ; preds = %.noexc.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i
  %.pre-phi11.i.i = phi i64 [ %i.z, %.noexc.i.i ], [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.y, %.noexc.i.i ], [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ab = add i64 %.pre-phi.i.i, 1
  store i64 %i.ab, ptr %i.t, align 8, !noalias !15454
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %.pre-phi.i.i, i64 noundef %.pre-phi11.i.i)
          to label %bb.c unwind label %bb.r, !noalias !15452

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15456)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !15456, !noalias !15457, !noundef !15
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = add nuw nsw i64 %.sroa.5.0.copyload.i, 1
  %i.ag = lshr i64 %i.af, 1
  %.sroa.0.0.i.i.i = select i1 %i.ae, i64 %.sroa.5.0.copyload.i, i64 %i.ag ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !15458, !noalias !15459, !noundef !15
  %i.ak = icmp ugt i64 %.sroa.0.0.i.i.i, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i", !prof !21

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !15460, !noalias !15457, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !15460, !noalias !15457, !nonnull !15, !noundef !15
  %i.ap = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, i64 noundef %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.am, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i" unwind label %bb.o, !noalias !15457 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i": ; preds = %bb.d, %bb.c
  %i.aq = load i64, ptr %i.e, align 8, !range !39, !alias.scope !15460, !noalias !15457, !noundef !15
  %i.ar = load i64, ptr %i.ah, align 8, !alias.scope !15460, !noalias !15457, !noundef !15 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 128102389400760776
  call void @llvm.assume(i1 %i.as)
  %i.at = sub nsw i64 %i.aq, %i.ar
  %i.au = icmp ugt i64 %.sroa.0.0.i.i.i, %i.at
  br i1 %i.au, label %bb.e, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i"
  %i.av = load i64, ptr %i.ac, align 8, !alias.scope !15460, !noalias !15457, !noundef !15
  %i.aw = load i64, ptr %i.ai, align 8, !alias.scope !15460, !noalias !15457, !noundef !15
  %i.ax = add i64 %i.aw, %i.av
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i.i, i64 noundef %i.ax)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i" unwind label %bb.o, !noalias !15457

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !15462
  call void @llvm.experimental.noalias.scope.decl(metadata !15463)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !15464, !noalias !15465, !nonnull !15, !noundef !15 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !15464, !noalias !15465 ; 3 uses
  %i.bb = icmp eq ptr %.promoted.i.i.i.i.i.i, %i.az
  br i1 %i.bb, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.lr.ph.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.lr.ph.i.i.i.i.i.i": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.lr.ph.i.i.i.i.i.i"
  %i.be = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.lr.ph.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15466)
  call void @llvm.experimental.noalias.scope.decl(metadata !15467)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 5 uses
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.43.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !15468 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i", label %bb.g

bb.f:                                             ; preds = %bb.h, %.noexc.i.i.i.i.i.i, %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bf, ptr %i.ba, align 8, !alias.scope !15464, !noalias !15465
  invoke fastcc void @"_ZN4core3ptr143drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h04cd568c2a4235ceE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #43
          to label %.body.i.i unwind label %bb.n, !noalias !15469

bb.g:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i"
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !15468, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !15470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15471
  invoke void @"_ZN127_$LT$nickel_lang_core..term..record..Field$u20$as$u20$core..convert..From$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$4from17hbc62b6c61ecb9f63E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.bc, ptr noundef nonnull %.sroa.01.0.copyload.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.f, !noalias !15470

.noexc.i.i.i.i.i.i:                               ; preds = %bb.g
  store i32 %.sroa.43.0.copyload.i.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !15471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.49.i.i.i.i.i.i, i64 16, i1 false), !noalias !15471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15472
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15472
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bc)
          to label %.noexc3.i.i.i.i.i.i unwind label %bb.f, !noalias !15470

.noexc3.i.i.i.i.i.i:                              ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !noalias !15472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15472
  %i.bh = load i64, ptr %i.b, align 8, !range !33, !alias.scope !15473, !noalias !15472, !noundef !15
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.noexc3.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %bb.m unwind label %bb.f, !noalias !15470

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i": ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i"
  %i.bj = phi ptr [ %.promoted.i.i.i.i.i.i, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i.i" ], [ %i.bf, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i" ], [ %i.bf, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15474)
  call void @llvm.experimental.noalias.scope.decl(metadata !15475)
  call void @llvm.experimental.noalias.scope.decl(metadata !15476)
  %i.bk = ptrtoint ptr %i.az to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 40
  invoke fastcc void @"_ZN4core3ptr140drop_in_place$LT$$u5b$indexmap..Bucket$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$u5d$$GT$17h1ca747b385aa08e7E"(ptr noalias noundef nonnull align 8 %i.bj, i64 noundef %i.bn)
          to label %bb.k unwind label %bb.i, !noalias !15477

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !15478, !noalias !15479, !noundef !15 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.d, align 8, !alias.scope !15478, !noalias !15479, !nonnull !15, !noundef !15
  %i.bt = mul nuw i64 %i.bq, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15477
  br label %.body.i.i

bb.k:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !15478, !noalias !15479, !noundef !15 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZN4core4iter6traits8iterator8Iterator7collect17h48475cdbea75cdd8E.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.d, align 8, !alias.scope !15478, !noalias !15479, !nonnull !15, !noundef !15
  %i.by = mul nuw i64 %i.bv, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15477
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h48475cdbea75cdd8E.exit

bb.m:                                             ; preds = %bb.h, %.noexc3.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15471
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i.i.i.i.i.i)
  %i.bz = icmp eq ptr %i.bf, %i.az
  br i1 %i.bz, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i._crit_edge.i.i.i.i.i.i", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd0fc03abf32ee862E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15470
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h05e5b9bea80cd87dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #43
          to label %.body.i.i unwind label %bb.p, !noalias !15480

bb.p:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15457
  unreachable

.body.i.i:                                        ; preds = %bb.o, %bb.j, %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.f ], [ %i.cb, %bb.o ], [ %i.bo, %bb.i ], [ %i.bo, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %common.resume unwind label %bb.q, !noalias !15452

bb.q:                                             ; preds = %bb.r, %.body.i.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15452
  unreachable

common.resume:                                    ; preds = %bb.s, %.body.i.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ce, %bb.r ], [ %i.cq, %bb.s ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.b, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i.i"
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr398drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_core..term..record..RecordData..with_field_values$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h05e5b9bea80cd87dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.g) #43
          to label %common.resume unwind label %bb.q, !noalias !15480

_ZN4core4iter6traits8iterator8Iterator7collect17h48475cdbea75cdd8E.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cf = load i8, ptr %i.u, align 8, !range !16, !noalias !15481, !noundef !15
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h48475cdbea75cdd8E.exit
  %.pre.i.i = load i64, ptr %i.t, align 8, !noalias !15482
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h48475cdbea75cdd8E.exit
  %i.ch = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i"
  %i.ci = extractvalue { i64, i64 } %i.ch, 0
  %i.cj = extractvalue { i64, i64 } %i.ch, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !noalias !15483
  store i8 1, ptr %i.u, align 8, !noalias !15483
  br label %"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit"

"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E.exit": ; preds = %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i, %.noexc
  %i.cl = phi i64 [ %.pre.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i ], [ %i.ci, %.noexc ]
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.t, align 8, !noalias !15482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 0, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.cp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.s:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i"
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.f) #43
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core5cache9TermCache9closurize17h9be41bc9aa7df00bE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 1 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..files..FileId$GT$$GT$17hcd3d55112152e9afE.exit32"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15677)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15678
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.711.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 8, !alias.scope !15679, !noalias !15680 ; 3 uses
  %i.m = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.n = xor <2 x i64> %i.m, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.n, ptr %i.c, align 16, !alias.scope !15681, !noalias !15678
  %i.o = shufflevector <2 x i64> %i.l, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.p = xor <2 x i64> %i.o, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.p, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15681, !noalias !15678
  store <2 x i64> %i.l, ptr %.sroa.711.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15681, !noalias !15678
  %.sroa.913.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !15681, !noalias !15678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15682
  store i32 %4, ptr %i.b, align 4, !noalias !15682
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17habca5f4658f8fd83E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 4), !noalias !15678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15682
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !15683, !noalias !15678
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15683, !noalias !15678
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15683, !noalias !15678 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i.i, align 8, !alias.scope !15683, !noalias !15678
  %i.q = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i.i, align 16, !alias.scope !15683, !noalias !15678, !noundef !15
  %i.r = shl i64 %i.q, 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !15683, !noalias !15678, !noundef !15
  %i.u = or i64 %i.r, %i.t                        ; 2 uses
  %i.v = xor i64 %i.u, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.w = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.x = add i64 %i.v, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.y = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.z = xor i64 %i.y, %i.w                       ; 3 uses
  %i.aa = tail call i64 @llvm.fshl.i64(i64 %i.v, i64 %i.v, i64 16)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = add i64 %i.x, %i.z                      ; 3 uses
  %i.ae = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 21)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = xor i64 %i.ae, %i.u
  %i.al = xor i64 %i.aj, 255
  %i.am = add i64 %i.ak, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ai, %i.al                    ; 2 uses
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 13)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb                    ; 3 uses
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 17)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 3 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 32)
  %i.bo = add i64 %i.bk, %i.bi
  %i.bp = add i64 %i.bm, %i.bn                    ; 2 uses
  %i.bq = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 13)
  %i.br = xor i64 %i.bq, %i.bo                    ; 3 uses
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 16)
  %i.bt = xor i64 %i.bs, %i.bp                    ; 2 uses
  %i.bu = add i64 %i.br, %i.bp                    ; 3 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 17)
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 21)
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 32)
  %i.by = xor i64 %i.bw, %i.bv
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = xor i64 %i.bz, %i.bu                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15686)
  %i.cb = lshr i64 %i.ca, 57
  %i.cc = trunc nuw nsw i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !15687, !noalias !15688, !noundef !15 ; 3 uses
  %i.cf = load ptr, ptr %1, align 8, !alias.scope !15687, !noalias !15688, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.cc, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.cw, %bb.g ]
  %.pn.i.i.i.i = phi i64 [ %i.ca, %bb.d ], [ %i.cx, %bb.g ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.ce ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !15689 ; 2 uses
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.f
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.cv, %bb.f ], [ %i.ci, %bb.e ] ; 3 uses
  %i.cj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = add i64 %.sroa.01.0.i.i.i.i.i, %i.ck
  %i.cm = and i64 %i.cl, %i.ce                    ; 2 uses
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [40 x i8], ptr %i.cf, i64 %i.cn ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -40
  %.val3.i.i.i.i.i = load i32, ptr %i.cp, align 4, !noalias !15690, !noundef !15
  %i.cq = icmp eq i32 %4, %.val3.i.i.i.i.i
  br i1 %i.cq, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h24e4b0702f13fe2cE.exit.i.i.i", label %bb.f, !prof !17

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.cs = bitcast <16 x i1> %i.cr to i16
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.g, label %.loopexit, !prof !21

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cu = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.cv = and i16 %i.cu, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cw = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.cx = add i64 %.sroa.01.0.i.i.i.i.i, %i.cw
  br label %bb.e

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h24e4b0702f13fe2cE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15692)
  %.idx.neg.i.i.i = mul i64 %i.cm, 40
  %i.cy = sdiv exact i64 %.idx.neg.i.i.i, 40      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15693)
  %i.cz = add nsw i64 %i.cy, -16
end_hunk_0

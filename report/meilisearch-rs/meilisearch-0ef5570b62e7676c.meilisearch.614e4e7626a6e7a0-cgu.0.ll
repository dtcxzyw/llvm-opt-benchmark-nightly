Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@"_ZN10actix_http2h110dispatcher40InnerDispatcher$LT$T$C$S$C$B$C$X$C$U$GT$12poll_request17h31266c1f3436235eE":bb.a
    i8 4, label %bb.dk
    i8 8, label %bb.eg
  ]

bb.e:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$actix_http..h1..payload..PayloadSender$GT$17h4914778d9517d936E.exit373"
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.dv = icmp eq i64 %i.dr, 4
  br i1 %i.dv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not291 = icmp eq ptr %.sroa.7.0.copyload, null
  br i1 %.not291, label %bb.bw, label %bb.bv

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i64 %i.dr, ptr %i.cb, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx, i64 64, i1 false)
  invoke void @_ZN10actix_http2h15timer10TimerState5clear17hb3187895ee3afd98E(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 762)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %.val331 = load ptr, ptr %i.cy, align 8, !nonnull !52, !noundef !52 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val331, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !52
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.i, label %bb.j, !prof !65

bb.i:                                             ; preds = %bb.h
  %i.dz = load i64, ptr %.val331, align 8, !noundef !52
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.k, label %bb.j, !prof !65

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2114) #43
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val331, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %.val332 = load ptr, ptr %i.cs, align 8         ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.ec = load ptr, ptr %i.cz, align 8, !alias.scope !1268, !noundef !52 ; 5 uses
  %.not.i338 = icmp eq ptr %i.ec, null            ; 2 uses
  %.not3.i = icmp eq ptr %.val332, null           ; 2 uses
  %or.cond.i = select i1 %.not.i338, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %.not3.i, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val332) ]
  %.val.i.i.i.i = load i64, ptr %.val332, align 8, !noalias !1269, !noundef !52 ; 2 uses
  %i.ed = icmp ne i64 %.val.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.ee, ptr %.val332, align 8, !noalias !1269
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.n, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i", !prof !54

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i": ; preds = %bb.m
  %i.eg = load i64, ptr %i.ec, align 8, !noalias !1270, !noundef !52
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  store i64 %i.eh, ptr %i.ec, align 8, !noalias !1270
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.invoke.i, label %bb.r

.invoke.i:                                        ; preds = %bb.q, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.r unwind label %.thread508

bb.o:                                             ; preds = %bb.l
  %.val.i.i.i = load i64, ptr %.val332, align 8, !noalias !1268, !noundef !52 ; 2 uses
  %i.ej = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ek, ptr %.val332, align 8, !noalias !1268
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.p, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", !prof !54

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i": ; preds = %bb.o, %bb.l
  br i1 %.not.i338, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i"
  %i.em = load i64, ptr %i.ec, align 8, !noalias !1271, !noundef !52
  %i.en = add i64 %i.em, -1                       ; 2 uses
  store i64 %i.en, ptr %i.ec, align 8, !noalias !1271
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.invoke.i, label %bb.r

.thread508:                                       ; preds = %.invoke.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store ptr %.val332, ptr %i.cz, align 8, !alias.scope !1268
  br label %.thread

bb.r:                                             ; preds = %bb.q, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", %.invoke.i, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i"
  store ptr %.val332, ptr %i.cz, align 8, !alias.scope !1268
  %i.eq = load i8, ptr %i.da, align 2, !noundef !52
  %i.er = and i8 %i.eq, 4
  %.not282 = icmp eq i8 %i.er, 0
  br i1 %.not282, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.es = load i8, ptr %i.db, align 8, !range !58, !noundef !52
  %.not283 = icmp eq i8 %i.es, 3
  br i1 %.not283, label %bb.u, label %.thread526

.thread526:                                       ; preds = %bb.s, %bb.t
  %i.et = invoke { ptr, ptr } @_ZN10actix_http2h17payload7Payload6create17h152481bbe0f7adcaE(i1 noundef zeroext false)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.cq, align 8, !nonnull !52, !noundef !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.ew = load i8, ptr %i.ev, align 8, !range !59, !noundef !52
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.v, label %.thread526

bb.u:                                             ; preds = %bb.s, %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
  %storemerge = phi i8 [ %.sroa.013.0, %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit" ], [ 0, %bb.s ]
  store i8 %storemerge, ptr %i.cv, align 8
  %i.ey = load i64, ptr %i.cu, align 8, !range !80, !noundef !52 ; 2 uses
  %i.ez = icmp ne i64 %i.ey, 10
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp eq i64 %i.ey, 8
  br i1 %i.fa, label %bb.an, label %bb.bh

bb.v:                                             ; preds = %bb.t
  store i8 0, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i64 80, i1 false)
  store i64 1, ptr %i.ca, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.fc = load i64, ptr %i.ce, align 8, !alias.scope !1272, !noundef !52 ; 2 uses
  %i.fd = load i64, ptr %i.cd, align 8, !range !53, !alias.scope !1272, !noundef !52 ; 2 uses
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h4191e58517461e8bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @95)
          to label %._crit_edge.i unwind label %bb.x, !noalias !1273

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load i64, ptr %i.ce, align 8, !alias.scope !1272
  %.pre6.i = load i64, ptr %i.cd, align 8, !range !53, !alias.scope !1272
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$17h2da8e1b57319a809E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ca) #44
          to label %common.resume unwind label %bb.y, !noalias !1272

bb.y:                                             ; preds = %bb.x
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !1272
  unreachable

bb.z:                                             ; preds = %._crit_edge.i, %bb.v
  %i.fh = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.fd, %bb.v ] ; 2 uses
  %i.fi = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fc, %bb.v ] ; 2 uses
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ce, align 8, !alias.scope !1272
  %i.fk = load i64, ptr %i.de, align 8, !alias.scope !1272, !noundef !52
  %i.fl = add i64 %i.fk, %i.fi                    ; 2 uses
  %.not.i339 = icmp ult i64 %i.fl, %i.fh
  %i.fm = select i1 %.not.i339, i64 0, i64 %i.fh
  %.sroa.0.0.i340 = sub nuw i64 %i.fl, %i.fm
  %i.fn = load ptr, ptr %i.df, align 8, !alias.scope !1272, !nonnull !52, !noundef !52
  %i.fo = getelementptr inbounds nuw [88 x i8], ptr %i.fn, i64 %.sroa.0.0.i340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fo, ptr noundef nonnull align 8 dereferenceable(88) %i.ca, i64 88, i1 false), !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.loopexit

bb.aa:                                            ; preds = %.thread526
  %i.fp = extractvalue { ptr, ptr } %i.et, 0      ; 6 uses
  %i.fq = extractvalue { ptr, ptr } %i.et, 1      ; 2 uses
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hb4d88b82aebe5b43E"(ptr noalias noundef align 8 dereferenceable(24) %i.cb)
          to label %bb.ab unwind label %bb.br

bb.ab:                                            ; preds = %bb.aa
  store i64 1, ptr %i.cb, align 8
  store ptr %i.fq, ptr %.sroa.7.0..sroa_idx3, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %.val328 = load ptr, ptr %i.ck, align 8, !noundef !52 ; 4 uses
  %magicptr.i = ptrtoint ptr %.val328 to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.ac, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val328) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.val328, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !52
  %i.ft = add i64 %i.fs, -1                       ; 2 uses
  store i64 %i.ft, ptr %i.fr, align 8
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.ad, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

bb.ad:                                            ; preds = %bb.ac
  call void @mi_free(ptr noundef nonnull %.val328) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit": ; preds = %bb.ad, %bb.ac, %bb.ab
  store ptr %i.fp, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %.val333 = load ptr, ptr %i.cy, align 8, !nonnull !52, !noundef !52
  invoke fastcc void @_ZN10actix_http12http_message11HttpMessage7chunked17hed6893475935e281E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bz, ptr nonnull %.val333)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread526, %bb.g, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit", %bb.j
  %lpad.loopexit.split-lp946 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"
  %i.fv = load i8, ptr %i.dc, align 8, !range !82, !noundef !52 ; 2 uses
  %.not284 = icmp eq i8 %i.fv, 11                 ; 2 uses
  %i.fw = load i8, ptr %i.bz, align 8, !range !59
  %.sroa.013.0 = select i1 %.not284, i8 %i.fw, i8 0
  br i1 %.not284, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val334 = load ptr, ptr %i.bz, align 8         ; 5 uses
  %cond.i = icmp eq i8 %i.fv, 10
  br i1 %cond.i, label %bb.ag, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val334) ]
  %i.fx = ptrtoint ptr %.val334 to i64
  %i.fy = and i64 %i.fx, 3
  switch i64 %i.fy, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
    i64 3, label %bb.ah
    i64 0, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
    i64 1, label %bb.ai
  ], !prof !60

default.unreachable:                              ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.fz = icmp ult ptr %.val334, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.fz)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

bb.ai:                                            ; preds = %bb.ag
  %i.ga = getelementptr i8, ptr %.val334, i64 -1  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !noalias !1274 ; 5 uses
  %i.gb = getelementptr i8, ptr %.val334, i64 7
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !1274, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.gc = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !52, !noalias !1274 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.gc(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.ak unwind label %bb.al, !noalias !1274

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !53, !invariant.load !52, !noalias !1274
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #38, !noalias !1274
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.aj
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !53, !invariant.load !52, !noalias !1274
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i": ; preds = %bb.al
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #38, !noalias !1274
  br label %bb.am

bb.am:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i", %bb.al
  call void @mi_free(ptr noundef nonnull %i.ga) #38, !noalias !1274
  br label %.thread

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.ak
  call void @mi_free(ptr noundef nonnull %i.ga) #38, !noalias !1274
  br label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i", %bb.ah, %bb.ag, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.u

bb.an:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0471)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  %.sroa.6.0.copyload = load ptr, ptr %i.cy, align 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 201
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !1278, !noundef !52
  %i.gm = and i8 %i.gl, 8
  %.not.i346 = icmp eq i8 %i.gm, 0
  br i1 %.not.i346, label %.noexc352, label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          cleanup
  store i64 9, ptr %i.cu, align 8, !alias.scope !1276, !noalias !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx76.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, i64 24, i1 false), !alias.scope !1280, !noalias !1279
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.5.0..sroa_idx76.i.sroa_idx, align 8, !alias.scope !1280, !noalias !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa.5.0..sroa_idx76.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false), !alias.scope !1280, !noalias !1279
  br label %common.resume

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr3381drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h6769dc6239c5e3beE"(ptr noalias noundef align 8 dereferenceable(312) %i.cu)
          to label %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit.i" unwind label %bb.ao, !noalias !1281

"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit.i": ; preds = %bb.ap
  store i64 9, ptr %i.cu, align 8, !alias.scope !1276, !noalias !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx76.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, i64 24, i1 false), !alias.scope !1280, !noalias !1279
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.5.0..sroa_idx76.i.sroa_idx, align 8, !alias.scope !1280, !noalias !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa.5.0..sroa_idx76.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false), !alias.scope !1280, !noalias !1279
  br label %.preheader

bb.aq:                                            ; preds = %.noexc352
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cu, ptr noundef nonnull align 8 dereferenceable(312) %i.d, i64 312, i1 false), !noalias !1282
  br label %common.resume

.noexc352:                                        ; preds = %bb.an
  %i.gp = load ptr, ptr %i.cq, align 8, !alias.scope !1276, !nonnull !52, !noundef !52
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx474, align 8, !noalias !1283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx477, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  call fastcc void @"_ZN336_$LT$actix_web..app_service..AppInitService$LT$T$C$B$GT$$u20$as$u20$actix_service..Service$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$4call17hecb883afe6a62ec5E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.d, ptr noundef nonnull align 8 %i.gq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1278
  invoke fastcc void @"_ZN4core3ptr3381drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h6769dc6239c5e3beE"(ptr noalias noundef align 8 dereferenceable(312) %i.cu)
          to label %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit10.i" unwind label %bb.aq, !noalias !1284

"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit10.i": ; preds = %.noexc352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cu, ptr noundef nonnull align 8 dereferenceable(312) %i.d, i64 312, i1 false), !noalias !1282
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit10.i", %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h8401075749383ce0E.exit.i"
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %bb.az
  %i.gr = load i64, ptr %i.cu, align 8, !range !80, !alias.scope !1276, !noundef !52 ; 3 uses
  %i.gs = icmp ne i64 %i.gr, 10
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nsw i64 %i.gr, -8
  %i.gu = icmp samesign ugt i64 %i.gr, 7
  %i.gv = select i1 %i.gu, i64 %i.gt, i64 2
  switch i64 %i.gv, label %bb.as [
    i64 0, label %.noexc355
    i64 1, label %bb.at
    i64 2, label %.noexc354
    i64 3, label %.noexc355
    i64 4, label %.noexc355
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx76.i, align 8, !alias.scope !1286 ; 3 uses
  store i64 5, ptr %.sroa.5.0..sroa_idx76.i, align 8, !alias.scope !1286
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 5
  br i1 %.not.i.i, label %.noexc353, label %"_ZN91_$LT$actix_utils..future..ready..Ready$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h44e43d14bf8e237bE.exit.i", !prof !54
end_hunk_0
begin_hunk_1_@"_ZN10actix_http2h110dispatcher40InnerDispatcher$LT$T$C$S$C$B$C$X$C$U$GT$12poll_request17h74b6cd7be0d9cc1dE":bb.a
    i8 4, label %bb.dk
    i8 8, label %bb.eg
  ]

bb.e:                                             ; preds = %"_ZN4core3ptr59drop_in_place$LT$actix_http..h1..payload..PayloadSender$GT$17h4914778d9517d936E.exit373"
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.dv = icmp eq i64 %i.dr, 4
  br i1 %i.dv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not291 = icmp eq ptr %.sroa.7.0.copyload, null
  br i1 %.not291, label %bb.bw, label %bb.bv

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  store i64 %i.dr, ptr %i.cb, align 8
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx, i64 64, i1 false)
  invoke void @_ZN10actix_http2h15timer10TimerState5clear17hb3187895ee3afd98E(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 762)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %.val331 = load ptr, ptr %i.cy, align 8, !nonnull !52, !noundef !52 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val331, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !52
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.i, label %bb.j, !prof !65

bb.i:                                             ; preds = %bb.h
  %i.dz = load i64, ptr %.val331, align 8, !noundef !52
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.k, label %bb.j, !prof !65

bb.j:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @149, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2114) #43
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val331, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 32, i1 false)
  %.val332 = load ptr, ptr %i.cs, align 8         ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %i.ec = load ptr, ptr %i.cz, align 8, !alias.scope !1402, !noundef !52 ; 5 uses
  %.not.i338 = icmp eq ptr %i.ec, null            ; 2 uses
  %.not3.i = icmp eq ptr %.val332, null           ; 2 uses
  %or.cond.i = select i1 %.not.i338, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %.not3.i, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val332) ]
  %.val.i.i.i.i = load i64, ptr %.val332, align 8, !noalias !1403, !noundef !52 ; 2 uses
  %i.ed = icmp ne i64 %.val.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.ee, ptr %.val332, align 8, !noalias !1403
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %bb.n, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i", !prof !54

bb.n:                                             ; preds = %bb.m
  call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i": ; preds = %bb.m
  %i.eg = load i64, ptr %i.ec, align 8, !noalias !1404, !noundef !52
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  store i64 %i.eh, ptr %i.ec, align 8, !noalias !1404
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.invoke.i, label %bb.r

.invoke.i:                                        ; preds = %bb.q, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.r unwind label %.thread508

bb.o:                                             ; preds = %bb.l
  %.val.i.i.i = load i64, ptr %.val332, align 8, !noalias !1402, !noundef !52 ; 2 uses
  %i.ej = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ej)
  %i.ek = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ek, ptr %.val332, align 8, !noalias !1402
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.p, label %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", !prof !54

bb.p:                                             ; preds = %bb.o
  call void @llvm.trap()
  unreachable

"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i": ; preds = %bb.o, %bb.l
  br i1 %.not.i338, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i"
  %i.em = load i64, ptr %i.ec, align 8, !noalias !1405, !noundef !52
  %i.en = add i64 %i.em, -1                       ; 2 uses
  store i64 %i.en, ptr %i.ec, align 8, !noalias !1405
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %.invoke.i, label %bb.r

.thread508:                                       ; preds = %.invoke.i
  %i.ep = landingpad { ptr, i32 }
          cleanup
  store ptr %.val332, ptr %i.cz, align 8, !alias.scope !1402
  br label %.thread

bb.r:                                             ; preds = %bb.q, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i", %.invoke.i, %"_ZN65_$LT$alloc..rc..Rc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hbb948fc9ba160a4fE.exit.i.i"
  store ptr %.val332, ptr %i.cz, align 8, !alias.scope !1402
  %i.eq = load i8, ptr %i.da, align 2, !noundef !52
  %i.er = and i8 %i.eq, 4
  %.not282 = icmp eq i8 %i.er, 0
  br i1 %.not282, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.es = load i8, ptr %i.db, align 8, !range !58, !noundef !52
  %.not283 = icmp eq i8 %i.es, 3
  br i1 %.not283, label %bb.u, label %.thread526

.thread526:                                       ; preds = %bb.s, %bb.t
  %i.et = invoke { ptr, ptr } @_ZN10actix_http2h17payload7Payload6create17h152481bbe0f7adcaE(i1 noundef zeroext false)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.t:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.cq, align 8, !nonnull !52, !noundef !52
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 144
  %i.ew = load i8, ptr %i.ev, align 8, !range !59, !noundef !52
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.v, label %.thread526

bb.u:                                             ; preds = %bb.s, %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
  %storemerge = phi i8 [ %.sroa.013.0, %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit" ], [ 0, %bb.s ]
  store i8 %storemerge, ptr %i.cv, align 8
  %i.ey = load i64, ptr %i.cu, align 8, !range !80, !noundef !52 ; 2 uses
  %i.ez = icmp ne i64 %i.ey, 10
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp eq i64 %i.ey, 8
  br i1 %i.fa, label %bb.an, label %bb.bh

bb.v:                                             ; preds = %bb.t
  store i8 0, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fb, ptr noundef nonnull align 8 dereferenceable(80) %i.cb, i64 80, i1 false)
  store i64 1, ptr %i.ca, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.fc = load i64, ptr %i.ce, align 8, !alias.scope !1406, !noundef !52 ; 2 uses
  %i.fd = load i64, ptr %i.cd, align 8, !range !53, !alias.scope !1406, !noundef !52 ; 2 uses
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h4191e58517461e8bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @95)
          to label %._crit_edge.i unwind label %bb.x, !noalias !1407

._crit_edge.i:                                    ; preds = %bb.w
  %.pre.i = load i64, ptr %i.ce, align 8, !alias.scope !1406
  %.pre6.i = load i64, ptr %i.cd, align 8, !range !53, !alias.scope !1406
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ff = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$17h2da8e1b57319a809E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ca) #44
          to label %common.resume unwind label %bb.y, !noalias !1406

bb.y:                                             ; preds = %bb.x
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !1406
  unreachable

bb.z:                                             ; preds = %._crit_edge.i, %bb.v
  %i.fh = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.fd, %bb.v ] ; 2 uses
  %i.fi = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fc, %bb.v ] ; 2 uses
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ce, align 8, !alias.scope !1406
  %i.fk = load i64, ptr %i.de, align 8, !alias.scope !1406, !noundef !52
  %i.fl = add i64 %i.fk, %i.fi                    ; 2 uses
  %.not.i339 = icmp ult i64 %i.fl, %i.fh
  %i.fm = select i1 %.not.i339, i64 0, i64 %i.fh
  %.sroa.0.0.i340 = sub nuw i64 %i.fl, %i.fm
  %i.fn = load ptr, ptr %i.df, align 8, !alias.scope !1406, !nonnull !52, !noundef !52
  %i.fo = getelementptr inbounds nuw [88 x i8], ptr %i.fn, i64 %.sroa.0.0.i340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.fo, ptr noundef nonnull align 8 dereferenceable(88) %i.ca, i64 88, i1 false), !noalias !1406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %.loopexit

bb.aa:                                            ; preds = %.thread526
  %i.fp = extractvalue { ptr, ptr } %i.et, 0      ; 6 uses
  %i.fq = extractvalue { ptr, ptr } %i.et, 1      ; 2 uses
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hb4d88b82aebe5b43E"(ptr noalias noundef align 8 dereferenceable(24) %i.cb)
          to label %bb.ab unwind label %bb.br

bb.ab:                                            ; preds = %bb.aa
  store i64 1, ptr %i.cb, align 8
  store ptr %i.fq, ptr %.sroa.7.0..sroa_idx3, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %.val328 = load ptr, ptr %i.ck, align 8, !noundef !52 ; 4 uses
  %magicptr.i = ptrtoint ptr %.val328 to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.ac, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val328) ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.val328, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !52
  %i.ft = add i64 %i.fs, -1                       ; 2 uses
  store i64 %i.ft, ptr %i.fr, align 8
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.ad, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

bb.ad:                                            ; preds = %bb.ac
  call void @mi_free(ptr noundef nonnull %.val328) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit": ; preds = %bb.ad, %bb.ac, %bb.ab
  store ptr %i.fp, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %.val333 = load ptr, ptr %i.cy, align 8, !nonnull !52, !noundef !52
  invoke fastcc void @_ZN10actix_http12http_message11HttpMessage7chunked17hed6893475935e281E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bz, ptr nonnull %.val333)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.thread526, %bb.g, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit", %bb.j
  %lpad.loopexit.split-lp946 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ae:                                            ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit"
  %i.fv = load i8, ptr %i.dc, align 8, !range !82, !noundef !52 ; 2 uses
  %.not284 = icmp eq i8 %i.fv, 11                 ; 2 uses
  %i.fw = load i8, ptr %i.bz, align 8, !range !59
  %.sroa.013.0 = select i1 %.not284, i8 %i.fw, i8 0
  br i1 %.not284, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val334 = load ptr, ptr %i.bz, align 8         ; 5 uses
  %cond.i = icmp eq i8 %i.fv, 10
  br i1 %cond.i, label %bb.ag, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val334) ]
  %i.fx = ptrtoint ptr %.val334 to i64
  %i.fy = and i64 %i.fx, 3
  switch i64 %i.fy, label %default.unreachable [
    i64 2, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
    i64 3, label %bb.ah
    i64 0, label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"
    i64 1, label %bb.ai
  ], !prof !60

default.unreachable:                              ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.fz = icmp ult ptr %.val334, inttoptr (i64 180388626432 to ptr)
  call void @llvm.assume(i1 %i.fz)
  br label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

bb.ai:                                            ; preds = %bb.ag
  %i.ga = getelementptr i8, ptr %.val334, i64 -1  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ga, align 8, !noalias !1408 ; 5 uses
  %i.gb = getelementptr i8, ptr %.val334, i64 7
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !noalias !1408, !nonnull !52, !align !55, !noundef !52 ; 3 uses
  %i.gc = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !52, !noalias !1408 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  invoke void %i.gc(ptr noundef nonnull %.val.i.i.i.i.i.i.i)
          to label %bb.ak unwind label %bb.al, !noalias !1408

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !range !53, !invariant.load !52, !noalias !1408
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #38, !noalias !1408
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i"

bb.al:                                            ; preds = %bb.aj
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !53, !invariant.load !52, !noalias !1408
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.am, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i": ; preds = %bb.al
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #38, !noalias !1408
  br label %bb.am

bb.am:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i.i.i.i", %bb.al
  call void @mi_free(ptr noundef nonnull %i.ga) #38, !noalias !1408
  br label %.thread

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i", %bb.ak
  call void @mi_free(ptr noundef nonnull %i.ga) #38, !noalias !1408
  br label %"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit"

"_ZN4core3ptr85drop_in_place$LT$core..result..Result$LT$bool$C$actix_http..error..ParseError$GT$$GT$17h7c721452ef62324dE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hf9f3542050d139d7E.exit.i.i.i.i.i.i", %bb.ah, %bb.ag, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.u

bb.an:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0471)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  %.sroa.6.0.copyload = load ptr, ptr %i.cy, align 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 201
  %i.gl = load i8, ptr %i.gk, align 1, !noalias !1412, !noundef !52
  %i.gm = and i8 %i.gl, 8
  %.not.i346 = icmp eq i8 %i.gm, 0
  br i1 %.not.i346, label %.noexc352, label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %i.gn = landingpad { ptr, i32 }
          cleanup
  store i64 9, ptr %i.cu, align 8, !alias.scope !1410, !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx76.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, i64 24, i1 false), !alias.scope !1414, !noalias !1413
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.5.0..sroa_idx76.i.sroa_idx, align 8, !alias.scope !1414, !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa.5.0..sroa_idx76.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false), !alias.scope !1414, !noalias !1413
  br label %common.resume

bb.ap:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr3363drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h1dea28ee478e5310E"(ptr noalias noundef align 8 dereferenceable(312) %i.cu)
          to label %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit.i" unwind label %bb.ao, !noalias !1415

"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit.i": ; preds = %bb.ap
  store i64 9, ptr %i.cu, align 8, !alias.scope !1410, !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx76.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0471, i64 24, i1 false), !alias.scope !1414, !noalias !1413
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.5.0..sroa_idx76.i.sroa_idx, align 8, !alias.scope !1414, !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa.5.0..sroa_idx76.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false), !alias.scope !1414, !noalias !1413
  br label %.preheader

bb.aq:                                            ; preds = %.noexc352
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cu, ptr noundef nonnull align 8 dereferenceable(312) %i.d, i64 312, i1 false), !noalias !1416
  br label %common.resume

.noexc352:                                        ; preds = %bb.an
  %i.gp = load ptr, ptr %i.cq, align 8, !alias.scope !1410, !nonnull !52, !noundef !52
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1412
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false)
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx474, align 8, !noalias !1417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx477, ptr noundef nonnull align 8 dereferenceable(48) %i.cz, i64 48, i1 false)
  call fastcc void @"_ZN336_$LT$actix_web..app_service..AppInitService$LT$T$C$B$GT$$u20$as$u20$actix_service..Service$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$$GT$4call17hecb883afe6a62ec5E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(312) %i.d, ptr noundef nonnull align 8 %i.gq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1412
  invoke fastcc void @"_ZN4core3ptr3363drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h1dea28ee478e5310E"(ptr noalias noundef align 8 dereferenceable(312) %i.cu)
          to label %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit10.i" unwind label %bb.aq, !noalias !1418

"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit10.i": ; preds = %.noexc352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %i.cu, ptr noundef nonnull align 8 dereferenceable(312) %i.d, i64 312, i1 false), !noalias !1416
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit10.i", %"_ZN4core3pin14Pin$LT$Ptr$GT$3set17h9760dd92fdc4ec10E.exit.i"
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %bb.az
  %i.gr = load i64, ptr %i.cu, align 8, !range !80, !alias.scope !1410, !noundef !52 ; 3 uses
  %i.gs = icmp ne i64 %i.gr, 10
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nsw i64 %i.gr, -8
  %i.gu = icmp samesign ugt i64 %i.gr, 7
  %i.gv = select i1 %i.gu, i64 %i.gt, i64 2
  switch i64 %i.gv, label %bb.as [
    i64 0, label %.noexc355
    i64 1, label %bb.at
    i64 2, label %.noexc354
    i64 3, label %.noexc355
    i64 4, label %.noexc355
  ]

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx76.i, align 8, !alias.scope !1420 ; 3 uses
  store i64 5, ptr %.sroa.5.0..sroa_idx76.i, align 8, !alias.scope !1420
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 5
  br i1 %.not.i.i, label %.noexc353, label %"_ZN91_$LT$actix_utils..future..ready..Ready$LT$T$GT$$u20$as$u20$core..future..future..Future$GT$4poll17h44e43d14bf8e237bE.exit.i", !prof !54
end_hunk_1
begin_hunk_2_@"_ZN4core3ptr3448drop_in_place$LT$actix_http..service..HttpServiceHandler$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$GT$17ha6e4f5360e40158bE":bb.a

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit": ; preds = %bb.c, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24112)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24112, !noundef !52 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit"
  %i.s = load i64, ptr %i.q, align 8, !noalias !24113, !noundef !52
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !24113
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit"

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.p)
          to label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit" unwind label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit"

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4": ; preds = %"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..", %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24114)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !24114, !noundef !52 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit6", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4"
  %i.z = load i64, ptr %i.x, align 8, !noalias !24115, !noundef !52
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !noalias !24115
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit6"

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h9829eb115efdee90E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
  br label %"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit6"

"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit6": ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4", %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr238drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$tokio..net..tcp..stream..TcpStream$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17hfcd71d92ab245fe3E.exit": ; preds = %bb.f, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit", %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr3452drop_in_place$LT$actix_http..h1..dispatcher..DispatcherState$LT$tokio..net..tcp..stream..TcpStream$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$GT$17h2007445c7242d4e5E"(ptr noalias noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !24170 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !96, !noundef !52
  %.not = icmp eq i64 %i.a, 3
  br i1 %.not, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24171)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24173)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24174, !nonnull !52, !noundef !52 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !24174, !noundef !52
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !noalias !24174
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h1a92f5710259b72fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.." unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24175)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !24176, !noundef !52 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !noalias !24177, !noundef !52
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !noalias !24177
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i" unwind label %bb.am

"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..": ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24178)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !24179, !noundef !52 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."
  %i.q = load i64, ptr %i.o, align 8, !noalias !24180, !noundef !52
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !noalias !24180
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i" unwind label %bb.j

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i": ; preds = %bb.j, %bb.f, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.g, %bb.f ], [ %i.g, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24183)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !24184, !nonnull !52, !noundef !52 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !24185, !noundef !52
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !24185
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"

bb.i:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i" unwind label %bb.am

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i": ; preds = %bb.h, %bb.g, %"_ZN4core3ptr3204drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24188)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !24189, !nonnull !52, !noundef !52 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !24190, !noundef !52
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !noalias !24190
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"

bb.k:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i" unwind label %bb.m

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i": ; preds = %bb.m, %bb.i, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"
  %.pn2.i = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %.pn.i, %bb.i ], [ %.pn.i, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !80, !alias.scope !24191, !noundef !52
  %i.ag = icmp eq i64 %i.af, 12
  br i1 %i.ag, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..error..DispatchError$GT$17h3d2653bfacc08f67E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ae)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i" unwind label %bb.am

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i": ; preds = %bb.k, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !80, !alias.scope !24192, !noundef !52
  %i.ak = icmp eq i64 %i.aj, 12
  br i1 %i.ak, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..error..DispatchError$GT$17h3d2653bfacc08f67E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i" unwind label %bb.o

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i": ; preds = %bb.o, %bb.l, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"
  %.pn4.i = phi { ptr, i32 } [ %i.am, %bb.o ], [ %.pn2.i, %bb.l ], [ %.pn2.i, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i" ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @"_ZN4core3ptr3363drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h1dea28ee478e5310E"(ptr noalias noundef align 8 dereferenceable(312) %i.al) #44
          to label %bb.p unwind label %bb.am

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i"

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i": ; preds = %bb.n, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @"_ZN4core3ptr3363drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h1dea28ee478e5310E"(ptr noalias noundef align 8 dereferenceable(312) %i.an)
          to label %bb.t unwind label %bb.s

bb.p:                                             ; preds = %bb.s, %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i"
  %.pn6.i = phi { ptr, i32 } [ %i.at, %bb.s ], [ %.pn4.i, %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.val24.i = load ptr, ptr %i.ao, align 8, !alias.scope !24171, !noundef !52 ; 4 uses
  %magicptr.i.i = ptrtoint ptr %.val24.i to i64
  %magicptr.off.i.i = add i64 %magicptr.i.i, -1
  %switch.i.i = icmp ult i64 %magicptr.off.i.i, -2
  br i1 %switch.i.i, label %bb.q, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !52
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.r, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.r:                                             ; preds = %bb.q
  tail call void @mi_free(ptr noundef nonnull %.val24.i) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.s:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i"
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.t:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i"
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.val.i = load ptr, ptr %i.au, align 8, !alias.scope !24171, !noundef !52 ; 4 uses
  %magicptr.i46.i = ptrtoint ptr %.val.i to i64
  %magicptr.off.i47.i = add i64 %magicptr.i46.i, -1
  %switch.i48.i = icmp ult i64 %magicptr.off.i47.i, -2
  br i1 %switch.i48.i, label %bb.u, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !52
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

bb.v:                                             ; preds = %bb.u
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i": ; preds = %bb.r, %bb.q, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$$GT$17hefb10c7659e9f79bE"(ptr noalias noundef align 8 dereferenceable(32) %i.az) #44
          to label %bb.w unwind label %bb.am

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i": ; preds = %bb.v, %bb.u, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 544
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$$GT$17hefb10c7659e9f79bE"(ptr noalias noundef align 8 dereferenceable(32) %i.ba)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"
  %.pn10.i = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %.pn6.i, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i" ]
  %.val35.i = load i64, ptr %0, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val36.i = load ptr, ptr %i.bb, align 8, !alias.scope !24171
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val35.i, ptr %.val36.i) #44
          to label %.body.i unwind label %bb.am

bb.x:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"
  %.val33.i = load i64, ptr %0, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val34.i = load ptr, ptr %i.bd, align 8, !alias.scope !24171 ; 4 uses
  %switch.i50.i = icmp samesign ult i64 %.val33.i, 2
  br i1 %switch.i50.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val34.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val34.i) #38
  br label %.body.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i": ; preds = %bb.z
  tail call void @mi_free(ptr noundef nonnull %.val34.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"

.body.i:                                          ; preds = %bb.aa, %bb.w
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %bb.w ], [ %i.be, %bb.aa ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val31.i = load i64, ptr %i.bf, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val32.i = load ptr, ptr %i.bg, align 8, !alias.scope !24171
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val31.i, ptr %.val32.i) #44
          to label %.body53.i unwind label %bb.am

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i", %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load i64, ptr %i.bh, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30.i = load ptr, ptr %i.bi, align 8, !alias.scope !24171 ; 4 uses
  %switch.i51.i = icmp samesign ult i64 %.val29.i, 2
  br i1 %switch.i51.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i", label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val30.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i" unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val30.i) #38
  br label %.body53.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i": ; preds = %bb.ab
  tail call void @mi_free(ptr noundef nonnull %.val30.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"

.body53.i:                                        ; preds = %bb.ac, %.body.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %.body.i ], [ %i.bj, %bb.ac ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val27.i = load i64, ptr %i.bk, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val28.i = load ptr, ptr %i.bl, align 8, !alias.scope !24171
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val27.i, ptr %.val28.i) #44
          to label %.body58.i unwind label %bb.am

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i", %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val25.i = load i64, ptr %i.bm, align 8, !range !63, !alias.scope !24171, !noundef !52
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val26.i = load ptr, ptr %i.bn, align 8, !alias.scope !24171 ; 4 uses
  %switch.i56.i = icmp samesign ult i64 %.val25.i, 2
  br i1 %switch.i56.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val26.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i" unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val26.i) #38
  br label %.body58.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i": ; preds = %bb.ad
  tail call void @mi_free(ptr noundef nonnull %.val26.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"

.body58.i:                                        ; preds = %bb.ae, %.body53.i
  %.pn16.i = phi { ptr, i32 } [ %.pn14.i, %.body53.i ], [ %i.bo, %bb.ae ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !63, !alias.scope !24193, !noundef !52
  %i.br = icmp eq i64 %i.bq, 2
  br i1 %i.br, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i", label %bb.af

bb.af:                                            ; preds = %.body58.i
  invoke void @"_ZN4core3ptr55drop_in_place$LT$tokio..net..tcp..stream..TcpStream$GT$17hf2b40bbc15db5d32E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i" unwind label %bb.am

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i", %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !63, !alias.scope !24194, !noundef !52
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit63.i", label %bb.ag

bb.ag:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"
  invoke void @"_ZN4core3ptr55drop_in_place$LT$tokio..net..tcp..stream..TcpStream$GT$17hf2b40bbc15db5d32E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs)
          to label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit63.i" unwind label %bb.ah

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i": ; preds = %bb.ah, %bb.af, %.body58.i
  %.pn18.i = phi { ptr, i32 } [ %i.bw, %bb.ah ], [ %.pn16.i, %bb.af ], [ %.pn16.i, %.body58.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 624
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i" unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i"

"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit63.i": ; preds = %bb.ag, %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 624
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i" unwind label %bb.ai

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i": ; preds = %bb.ai, %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i"
  %.pn20.i = phi { ptr, i32 } [ %i.bz, %bb.ai ], [ %.pn18.i, %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit.i" ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.by)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i" unwind label %bb.am

bb.ai:                                            ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit63.i"
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i": ; preds = %"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17h55d734e8bb4380a1E.exit63.i"
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 656
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit70.i" unwind label %bb.ak

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i": ; preds = %bb.ak, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i"
  %.pn22.i = phi { ptr, i32 } [ %i.cg, %bb.ak ], [ %.pn20.i, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24195)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24198)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !24199, !nonnull !52, !noundef !52 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !24200, !noundef !52
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.cc, align 8, !noalias !24200
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %common.resume

bb.aj:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %common.resume unwind label %bb.am

bb.ak:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i"
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit70.i": ; preds = %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24201)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24202)
end_hunk_2
begin_hunk_3_@"_ZN4core3ptr3515drop_in_place$LT$actix_http..service..HttpServiceHandler$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$GT$17h880e7035ce776e89E":bb.a

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit": ; preds = %bb.c, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24375)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !24375, !noundef !52 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit"
  %i.s = load i64, ptr %i.q, align 8, !noalias !24376, !noundef !52
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !24376
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit"

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hfa6bccda13e704fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.p)
          to label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit" unwind label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit"

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4": ; preds = %"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..", %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24377)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !24377, !noundef !52 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit6", label %bb.i

bb.i:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4"
  %i.z = load i64, ptr %i.x, align 8, !noalias !24378, !noundef !52
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !noalias !24378
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit6"

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hfa6bccda13e704fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
  br label %"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit6"

"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit6": ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit4", %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr287drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RF$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$$RF$mut$u20$actix_http..extensions..Extensions$RP$$GT$$u2b$Output$u20$$u3d$$u20$$LP$$RP$$GT$$GT$$GT$17h5c1cf624736c85f4E.exit": ; preds = %bb.f, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit", %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr3519drop_in_place$LT$actix_http..h1..dispatcher..DispatcherState$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$C$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$C$actix_http..h1..upgrade..UpgradeHandler$GT$$GT$17h98d8c6ed25237802E"(ptr noalias noundef nonnull align 8 dereferenceable(1888) %0) unnamed_addr #3 personality ptr @rust_eh_personality !guid !24431 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !96, !noundef !52
  %.not = icmp eq i64 %i.a, 3
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24432)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24434)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !24435, !nonnull !52, !noundef !52 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !24435, !noundef !52
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !noalias !24435
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17haef5e5d3a86b1843E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.." unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24436)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !24437, !noundef !52 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.i, align 8, !noalias !24438, !noundef !52
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !noalias !24438
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i" unwind label %bb.an

"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..": ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1864 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24439)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !24440, !noundef !52 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."
  %i.q = load i64, ptr %i.o, align 8, !noalias !24441, !noundef !52
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !noalias !24441
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.h, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i" unwind label %bb.j

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i": ; preds = %bb.j, %bb.f, %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.g, %bb.f ], [ %i.g, %bb.d ], [ %i.g, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24444)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !24445, !nonnull !52, !noundef !52 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !24446, !noundef !52
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !24446
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"

bb.i:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i" unwind label %bb.an

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i": ; preds = %bb.h, %bb.g, %"_ZN4core3ptr3222drop_in_place$LT$alloc..rc..Rc$LT$actix_http..service..HttpFlow$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch.."
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24449)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !24450, !nonnull !52, !noundef !52 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !24451, !noundef !52
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !noalias !24451
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"

bb.k:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i" unwind label %bb.m

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i": ; preds = %bb.m, %bb.i, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i"
  %.pn2.i = phi { ptr, i32 } [ %i.ah, %bb.m ], [ %.pn.i, %bb.i ], [ %.pn.i, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit.i" ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !80, !alias.scope !24452, !noundef !52
  %i.ag = icmp eq i64 %i.af, 12
  br i1 %i.ag, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..error..DispatchError$GT$17h3d2653bfacc08f67E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ae)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i" unwind label %bb.an

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i": ; preds = %bb.k, %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h4129c4be6d9a9b0aE.exit39.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !80, !alias.scope !24453, !noundef !52
  %i.ak = icmp eq i64 %i.aj, 12
  br i1 %i.ak, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..error..DispatchError$GT$17h3d2653bfacc08f67E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i" unwind label %bb.o

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i": ; preds = %bb.o, %bb.l, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i"
  %.pn4.i = phi { ptr, i32 } [ %i.am, %bb.o ], [ %.pn2.i, %bb.l ], [ %.pn2.i, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit.i" ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1408
  invoke fastcc void @"_ZN4core3ptr3381drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h6769dc6239c5e3beE"(ptr noalias noundef align 8 dereferenceable(312) %i.al) #44
          to label %bb.p unwind label %bb.an

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i"

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i": ; preds = %bb.n, %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h4ccfd9a21c4640ceE.exit42.i"
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1408
  invoke fastcc void @"_ZN4core3ptr3381drop_in_place$LT$actix_http..h1..dispatcher..State$LT$actix_service..map_err..MapErr$LT$actix_web..app_service..AppInitService$LT$actix_web..middleware..normalize..NormalizePathNormalization$LT$actix_web..middleware..compress..CompressMiddleware$LT$tracing_actix_web..middleware..TracingLoggerMiddleware$LT$actix_cors..middleware..CorsMiddleware$LT$meilisearch..middleware..RouteMetricsMiddleware$LT$actix_web..app_service..AppRouting$GT$$GT$$C$meilisearch..AwebTracingLogger$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$C$actix_web..server..HttpServer$LT$meilisearch..run_http..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..app..App$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$GT$$C$actix_web..app_service..AppInit$LT$actix_service..transform..ApplyTransform$LT$actix_web..middleware..normalize..NormalizePath$C$actix_service..transform..ApplyTransform$LT$actix_web..middleware..compress..Compress$C$actix_service..transform..ApplyTransform$LT$tracing_actix_web..middleware..TracingLogger$LT$meilisearch..AwebTracingLogger$GT$$C$actix_service..transform..ApplyTransform$LT$actix_cors..builder..Cors$C$actix_service..transform..ApplyTransform$LT$meilisearch..middleware..RouteMetrics$C$actix_web..app_service..AppEntry$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_web..service..ServiceRequest$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$GT$..listen_rustls_0_23_inner..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$actix_web..response..response..HttpResponse$GT$$C$actix_http..body..either..EitherBody$LT$actix_http..encoding..encoder..Encoder$LT$tracing_actix_web..middleware..StreamSpan$LT$actix_http..body..either..EitherBody$LT$actix_http..body..boxed..BoxBody$GT$$GT$$GT$$GT$$C$actix_http..h1..expect..ExpectHandler$GT$$GT$17h6769dc6239c5e3beE"(ptr noalias noundef align 8 dereferenceable(312) %i.an)
          to label %bb.t unwind label %bb.s

bb.p:                                             ; preds = %bb.s, %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i"
  %.pn6.i = phi { ptr, i32 } [ %i.at, %bb.s ], [ %.pn4.i, %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit.i" ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %.val24.i = load ptr, ptr %i.ao, align 8, !alias.scope !24432, !noundef !52 ; 4 uses
  %magicptr.i.i = ptrtoint ptr %.val24.i to i64
  %magicptr.off.i.i = add i64 %magicptr.i.i, -1
  %switch.i.i = icmp ult i64 %magicptr.off.i.i, -2
  br i1 %switch.i.i, label %bb.q, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val24.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !52
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.r, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.r:                                             ; preds = %bb.q
  tail call void @mi_free(ptr noundef nonnull %.val24.i) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"

bb.s:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i"
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.t:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$actix_http..error..DispatchError$GT$$GT$17h7bb8a08964c9584bE.exit45.i"
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1872
  %.val.i = load ptr, ptr %i.au, align 8, !alias.scope !24432, !noundef !52 ; 4 uses
  %magicptr.i46.i = ptrtoint ptr %.val.i to i64
  %magicptr.off.i47.i = add i64 %magicptr.i46.i, -1
  %switch.i48.i = icmp ult i64 %magicptr.off.i47.i, -2
  br i1 %switch.i48.i, label %bb.u, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !noundef !52
  %i.ax = add i64 %i.aw, -1                       ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

bb.v:                                             ; preds = %bb.u
  tail call void @mi_free(ptr noundef nonnull %.val.i) #38
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i": ; preds = %bb.r, %bb.q, %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1720
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$$GT$17hefb10c7659e9f79bE"(ptr noalias noundef align 8 dereferenceable(32) %i.az) #44
          to label %bb.w unwind label %bb.an

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i": ; preds = %bb.v, %bb.u, %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1720
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$alloc..collections..vec_deque..VecDeque$LT$actix_http..h1..dispatcher..DispatcherMessage$GT$$GT$17hefb10c7659e9f79bE"(ptr noalias noundef align 8 dereferenceable(32) %i.ba)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i"
  %.pn10.i = phi { ptr, i32 } [ %i.bc, %bb.x ], [ %.pn6.i, %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit.i" ]
  %.val35.i = load i64, ptr %0, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val36.i = load ptr, ptr %i.bb, align 8, !alias.scope !24432
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val35.i, ptr %.val36.i) #44
          to label %.body.i unwind label %bb.an

bb.x:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$actix_http..h1..payload..PayloadSender$GT$$GT$17h0737d1c1e9972929E.exit49.i"
  %.val33.i = load i64, ptr %0, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val34.i = load ptr, ptr %i.bd, align 8, !alias.scope !24432 ; 4 uses
  %switch.i50.i = icmp samesign ult i64 %.val33.i, 2
  br i1 %switch.i50.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val34.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val34.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val34.i) #38
  br label %.body.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i": ; preds = %bb.z
  tail call void @mi_free(ptr noundef nonnull %.val34.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"

.body.i:                                          ; preds = %bb.aa, %bb.w
  %.pn12.i = phi { ptr, i32 } [ %.pn10.i, %bb.w ], [ %i.be, %bb.aa ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val31.i = load i64, ptr %i.bf, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val32.i = load ptr, ptr %i.bg, align 8, !alias.scope !24432
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val31.i, ptr %.val32.i) #44
          to label %.body53.i unwind label %bb.an

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i.i", %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val29.i = load i64, ptr %i.bh, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val30.i = load ptr, ptr %i.bi, align 8, !alias.scope !24432 ; 4 uses
  %switch.i51.i = icmp samesign ult i64 %.val29.i, 2
  br i1 %switch.i51.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i", label %bb.ab

bb.ab:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val30.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val30.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i" unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val30.i) #38
  br label %.body53.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i": ; preds = %bb.ab
  tail call void @mi_free(ptr noundef nonnull %.val30.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"

.body53.i:                                        ; preds = %bb.ac, %.body.i
  %.pn14.i = phi { ptr, i32 } [ %.pn12.i, %.body.i ], [ %i.bj, %bb.ac ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val27.i = load i64, ptr %i.bk, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val28.i = load ptr, ptr %i.bl, align 8, !alias.scope !24432
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E"(i64 %.val27.i, ptr %.val28.i) #44
          to label %.body58.i unwind label %bb.an

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i52.i", %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit.i"
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val25.i = load i64, ptr %i.bm, align 8, !range !63, !alias.scope !24432, !noundef !52
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val26.i = load ptr, ptr %i.bn, align 8, !alias.scope !24432 ; 4 uses
  %switch.i56.i = icmp samesign ult i64 %.val25.i, 2
  br i1 %switch.i56.i, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$tokio..time..sleep..Sleep$GT$17h10bdc9bbf70139ccE"(ptr noundef nonnull align 8 %.val26.i)
          to label %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i" unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.val26.i) #38
  br label %.body58.i

"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i": ; preds = %bb.ad
  tail call void @mi_free(ptr noundef nonnull %.val26.i) #38
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"

.body58.i:                                        ; preds = %bb.ae, %.body53.i
  %.pn16.i = phi { ptr, i32 } [ %.pn14.i, %.body53.i ], [ %i.bo, %bb.ae ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE"(ptr noalias noundef align 8 dereferenceable(1208) %i.bp) #44
          to label %.body61.i unwind label %bb.an

"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$tokio..time..sleep..Sleep$GT$$GT$$GT$17h2ef5046c4da5a068E.exit.i57.i", %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit55.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !range !63, !alias.scope !24454, !noundef !52
  %i.bs = icmp eq i64 %i.br, 2
  br i1 %i.bs, label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE.exit.i", label %bb.af

bb.af:                                            ; preds = %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"
  invoke void @"_ZN4core3ptr55drop_in_place$LT$tokio..net..tcp..stream..TcpStream$GT$17hf2b40bbc15db5d32E"(ptr noalias noundef nonnull align 8 dereferenceable(1208) %i.bq)
          to label %"_ZN4core3ptr104drop_in_place$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17hba6b7b2e03e14209E.exit.i.i" unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr108drop_in_place$LT$rustls..conn..ConnectionCommon$LT$rustls..server..server_conn..ServerConnectionData$GT$$GT$17h47960af765b77812E"(ptr noalias noundef nonnull align 8 dereferenceable(1168) %i.bu)
          to label %.body61.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

"_ZN4core3ptr104drop_in_place$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17hba6b7b2e03e14209E.exit.i.i": ; preds = %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @"_ZN4core3ptr108drop_in_place$LT$rustls..conn..ConnectionCommon$LT$rustls..server..server_conn..ServerConnectionData$GT$$GT$17h47960af765b77812E"(ptr noalias noundef nonnull align 8 dereferenceable(1168) %i.bw)
          to label %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE.exit.i" unwind label %bb.ai

.body61.i:                                        ; preds = %bb.ai, %bb.ag, %.body58.i
  %.pn18.i = phi { ptr, i32 } [ %.pn16.i, %.body58.i ], [ %i.by, %bb.ai ], [ %i.bt, %bb.ag ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1800
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i" unwind label %bb.an

bb.ai:                                            ; preds = %"_ZN4core3ptr104drop_in_place$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17hba6b7b2e03e14209E.exit.i.i"
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE.exit.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$17hba6b7b2e03e14209E.exit.i.i", %"_ZN4core3ptr54drop_in_place$LT$actix_http..h1..timer..TimerState$GT$17h5c67177472ba40e7E.exit60.i"
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1800
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i" unwind label %bb.aj

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i": ; preds = %bb.aj, %.body61.i
  %.pn20.i = phi { ptr, i32 } [ %i.cb, %bb.aj ], [ %.pn18.i, %.body61.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1832
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ca)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i" unwind label %bb.an

bb.aj:                                            ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE.exit.i"
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i"

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit66.i": ; preds = %"_ZN4core3ptr132drop_in_place$LT$core..option..Option$LT$actix_tls..accept..rustls_0_23..TlsStream$LT$tokio..net..tcp..stream..TcpStream$GT$$GT$$GT$17h46c97e446cab9bafE.exit.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1832
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit70.i" unwind label %bb.al

"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit68.i": ; preds = %bb.al, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i"
  %.pn22.i = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %.pn20.i, %"_ZN4core3ptr47drop_in_place$LT$bytes..bytes_mut..BytesMut$GT$17h1b9136e447aa1cf5E.exit.i" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24455)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24458)
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !24459, !nonnull !52, !noundef !52 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !24460, !noundef !52
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %i.ce, align 8, !noalias !24460
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.ak, label %common.resume

end_hunk_3

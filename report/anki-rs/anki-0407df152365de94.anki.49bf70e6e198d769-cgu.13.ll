inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h23776eb7454f93b2E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17hd58f304292b4ec60E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE.exit" unwind label %bb.e

.loopexit:                                        ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.9", %bb.cf, %bb.ca, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.8", %bb.by, %bb.bt, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.7", %bb.br, %bb.bm, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.6", %bb.bk, %bb.bf, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.5", %bb.bd, %bb.ay, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.4", %bb.aw, %bb.ar, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.3", %bb.ap, %bb.ak, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.2", %bb.ai, %bb.ad, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20.1", %bb.ab, %bb.w, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17h9b9475f6eddf40a0E.exit.sink.split.i20", %bb.f, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %bb.c, %bb.g, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE"(ptr %1) #40
          to label %common.resume unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN194_$LT$anki..sync..http_server.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..http_server..SyncServerConfig$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17ha14d115ec2d0faacE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @315, i64 noundef 23)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN199_$LT$anki..sync..http_server.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..http_server..SyncServerConfig$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h7bc439563b6afffeE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @320, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape11escape_href17h1a326d5cb724d161E(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 7 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.d

._crit_edge:                                      ; preds = %bb.h
  %i.i = icmp eq i64 %.sroa.01.1, 0
  br i1 %i.i, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not.i = icmp ult i64 %.sroa.01.1, %2
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.j = icmp eq i64 %.sroa.01.1, %2
  br i1 %i.j, label %._crit_edge.thread, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1352, !noundef !3
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %._crit_edge.thread, label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.01.052 = phi i64 [ 0, %.lr.ph ], [ %.sroa.01.1, %bb.h ] ; 7 uses
  %.sroa.015.051 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.h ] ; 5 uses
  %i.n = add nuw i64 %.sroa.015.051, 1            ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.015.051
  %i.p = load i8, ptr %i.o, align 1, !noundef !3  ; 6 uses
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

._crit_edge.thread:                               ; preds = %bb.a, %bb.c, %.split.i, %._crit_edge
  %.sroa.01.0.lcssa64 = phi i64 [ 0, %._crit_edge ], [ %.sroa.01.1, %bb.c ], [ %.sroa.01.1, %.split.i ], [ 0, %bb.a ] ; 2 uses
  %i.r = sub nuw i64 %2, %.sroa.01.0.lcssa64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.lcssa64
  %i.t = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.r)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %.split.i
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #39
  unreachable

.loopexit:                                        ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit", %bb.r, %bb.m, %bb.q, %._crit_edge.thread
  %.sroa.0.0 = phi i1 [ %i.t, %._crit_edge.thread ], [ true, %bb.q ], [ true, %bb.m ], [ true, %bb.r ], [ true, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit" ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.g, %bb.d
  %i.u = icmp ult i64 %.sroa.01.052, %.sroa.015.051
  br i1 %i.u, label %bb.i, label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.v = zext nneg i8 %i.p to i64
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN21pulldown_cmark_escape9HREF_SAFE17h7728997bfd49ef77E, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !3
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.h

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit", %bb.r, %bb.q, %bb.g
  %.sroa.01.1 = phi i64 [ %.sroa.01.052, %bb.g ], [ %i.n, %bb.q ], [ %i.n, %bb.r ], [ %i.n, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit" ] ; 8 uses
  %exitcond.not = icmp eq i64 %i.n, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.i:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %.sroa.01.052, 0
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.052
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1355, !noundef !3
  %i.ac = icmp sgt i8 %i.ab, -65
  %i.ad = icmp sgt i8 %i.p, -65
  %or.cond = and i1 %i.ad, %i.ac
  br i1 %or.cond, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  %.old.old = icmp sgt i8 %i.p, -65
  br i1 %.old.old, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.m, %bb.f
  switch i8 %i.p, label %bb.o [
    i8 38, label %bb.q
    i8 39, label %bb.r
  ]

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.ae = sub nuw i64 %.sroa.015.051, %.sroa.01.052
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.052
  %i.ag = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.af, i64 noundef %i.ae)
  br i1 %i.ag, label %.loopexit, label %bb.l

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.052, i64 noundef %.sroa.015.051, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323) #39
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 0, ptr %i.h, align 1
  store i8 37, ptr %i.c, align 1
  %i.ah = load ptr, ptr @_ZN21pulldown_cmark_escape9HEX_CHARS17h855614f0c1d146f9E, align 8, !nonnull !3, !align !221, !noundef !3 ; 2 uses
  %i.ai = zext i8 %i.p to i64                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noundef !3
  store i8 %i.al, ptr %i.d, align 1
  %i.am = and i64 %i.ai, 15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noundef !3
  store i8 %i.ao, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 3)
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.ap = load i64, ptr %i.b, align 8, !range !5, !alias.scope !1358, !noundef !3
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.p, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit", !prof !37

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @768, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324) #39, !noalias !1358
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2939a17a26923364E.exit": ; preds = %bb.o
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !1358, !nonnull !3, !align !221, !noundef !3
  %i.as = load i64, ptr %i.g, align 8, !alias.scope !1358, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.at = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ar, i64 noundef %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.at, label %.loopexit, label %bb.h

bb.q:                                             ; preds = %bb.l
  %i.au = load ptr, ptr @_ZN21pulldown_cmark_escape10AMP_ESCAPE17hc88b6a5597d5d236E, align 8, !nonnull !3, !align !221, !noundef !3
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN21pulldown_cmark_escape10AMP_ESCAPE17hc88b6a5597d5d236E, i64 8), align 8, !noundef !3
  %i.aw = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.au, i64 noundef %i.av)
  br i1 %i.aw, label %.loopexit, label %bb.h

bb.r:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr @_ZN21pulldown_cmark_escape19SINGLE_QUOTE_ESCAPE17h5a939c1e760eb6ffE, align 8, !nonnull !3, !align !221, !noundef !3
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN21pulldown_cmark_escape19SINGLE_QUOTE_ESCAPE17h5a939c1e760eb6ffE, i64 8), align 8, !noundef !3
  %i.az = call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ax, i64 noundef %i.ay)
  br i1 %i.az, label %.loopexit, label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN21pulldown_cmark_escape18escape_html_scalar17h9933c27a34ba07ddE(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(none) dereferenceable(256) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.01.068 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %bb.q ] ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.068 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %gepdiff = sub nuw nsw i64 %2, %.sroa.01.068
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.02.09.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.c = phi ptr [ %i.g, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %.val7.i = load i8, ptr %i.c, align 1, !noalias !1364, !noundef !3
  %i.d = zext i8 %.val7.i to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !1361, !noalias !1366, !noundef !3
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.h = add nuw i64 %.sroa.02.09.i, 1
  %i.i = icmp eq ptr %i.g, %i.a
  br i1 %i.i, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %.sroa.01.068, 0
  br i1 %i.j, label %bb.f, label %.thread51

.thread:                                          ; preds = %bb.q, %bb.a
  %.sroa.01.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.q ] ; 2 uses
  %i.k = icmp eq i64 %.sroa.01.0.lcssa, %2
  br i1 %i.k, label %bb.f, label %bb.g

.thread51:                                        ; preds = %bb.d
  %i.l = load i8, ptr %i.b, align 1, !alias.scope !1367, !noundef !3
  %i.m = icmp sgt i8 %i.l, -65
  br i1 %i.m, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.n = icmp ult i64 %.sroa.02.09.i, %gepdiff
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw i64 %.sroa.02.09.i, %.sroa.01.068 ; 6 uses
  %i.p = icmp ult i64 %i.o, %2
  br i1 %i.p, label %bb.i, label %bb.h

bb.f:                                             ; preds = %.thread, %.thread51, %bb.d
  %.sroa.01.060 = phi i64 [ %2, %.thread ], [ %.sroa.01.068, %.thread51 ], [ 0, %bb.d ] ; 2 uses
  %i.q = sub nuw i64 %2, %.sroa.01.060
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.060
  %i.s = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.q)
  br label %.loopexit

bb.g:                                             ; preds = %.thread, %.thread51
  %.sroa.01.061 = phi i64 [ %.sroa.01.0.lcssa, %.thread ], [ %.sroa.01.068, %.thread51 ]
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.061, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #39
  unreachable

.loopexit:                                        ; preds = %bb.n, %bb.p, %bb.f
  %.sroa.0.0 = phi i1 [ %i.s, %bb.f ], [ true, %bb.p ], [ true, %bb.n ]
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.o, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #39
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noundef !3  ; 2 uses
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !3  ; 2 uses
  %i.y = zext i8 %i.x to i64                      ; 2 uses
  %i.z = icmp ult i8 %i.x, 6
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr @_ZN21pulldown_cmark_escape12HTML_ESCAPES17h3aaea2376a7ac3b8E, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !3, !align !221, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !3
  %4 = icmp eq i64 %.sroa.01.068, 0
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ae = icmp eq i64 %i.o, 0
  %i.af = icmp sgt i8 %i.u, -65
  %or.cond53 = or i1 %i.ae, %i.af
  br i1 %or.cond53, label %bb.n, label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ag = load i8, ptr %i.b, align 1, !alias.scope !1370, !noundef !3
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %bb.k, label %bb.o

bb.m:                                             ; preds = %bb.i
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.y, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @327) #39
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ai = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %.sroa.02.09.i)
  br i1 %i.ai, label %.loopexit, label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.l
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.068, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #39
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aj = tail call noundef zeroext i1 @"_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hefaba01f1ef569ffE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ab, i64 noundef %i.ad)
  br i1 %i.aj, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = add nuw i64 %i.o, 1                     ; 3 uses
  %i.al = icmp ult i64 %i.ak, %2
  br i1 %i.al, label %bb.b, label %.thread
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN3csv6writer15Writer$LT$W$GT$12write_record17h3129980add64bde7E"(ptr noalias noundef align 8 dereferenceable(360) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.0 = alloca i64, align 8                  ; 7 uses
  %.sroa.9 = alloca [16 x i8], align 8            ; 6 uses
  %i.h = alloca [136 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 5 uses
  %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 3 uses
  %.sroa.6.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN3csv6writer15Writer$LT$W$GT$16write_field_impl17ha72ae4a3f3cf3767E.exit", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1381
  %i.z = load i64, ptr %i.i, align 8, !range !1383, !alias.scope !1384, !noalias !1385, !noundef !3 ; 3 uses
  %.not.i.i = icmp eq i64 %i.z, -9223372036854775804
  br i1 %.not.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h04fa90aa3be57ea2E.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1396
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1402
  %.not.i.i.i.i.i = icmp eq i64 %i.z, -9223372036854775805
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1416
  %i.aa = load i64, ptr %i.j, align 8, !range !1418, !alias.scope !1419, !noalias !1420, !noundef !3 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775805
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i, label %bb.e

_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %.not6.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, -9223372036854775807 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, i64 -9223372036854775806, i64 -9223372036854775807
  store i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !alias.scope !1427, !noalias !1432
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !1437, !noalias !1420
  br label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.i.i.i.i.i.i.i.i.i.i, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  %i.ab = load i64, ptr %i.k, align 8, !range !1441, !alias.scope !1442, !noalias !1445, !noundef !3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !1447, !noalias !1451
  br label %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.f ], [ %i.b, %_ZN4core4iter8adapters5chain17and_then_or_clear17h71a075e5f888d988E.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  store i64 -9223372036854775807, ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1452, !noalias !1451
  %.pr.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1453 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i, -9223372036854775807
  br i1 %.not6.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i

bb.g:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr230drop_in_place$LT$core..option..Option$LT$core..iter..adapters..chain..Chain$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$GT$$GT$17h1811a00945632b04E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i unwind label %bb.h, !noalias !1420

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775805, ptr %i.j, align 8, !alias.scope !1419, !noalias !1420
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$17h0c7cb9b36eac21c3E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #40
          to label %.body unwind label %bb.i, !noalias !1420

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1420
  unreachable

_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  store i64 -9223372036854775805, ptr %i.j, align 8, !alias.scope !1419, !noalias !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %.pre.i.i.i.i.i = load i64, ptr %i.i, align 8, !range !1441, !alias.scope !1461, !noalias !1464
  br label %bb.j

_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.ph.i.i.i.i.i.i.i = phi i64 [ %.pr.i.i.i.i.i.i.i.i, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.i.i.i.i.i.i.i.i ], [ %i.aa, %_ZN4core3ops8function6FnOnce9call_once17h985cd79c68c78d46E.exit.thread.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1416
  store i64 %.sroa.0.0.copyload.ph.i.i.i.i.i.i.i, ptr %i.c, align 8, !alias.scope !1467, !noalias !1468
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

bb.j:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i
  %i.ae = phi i64 [ %.pre.i.i.i.i.i, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.i.i.i.i.i.i.i ], [ %i.z, %_ZN4core4iter8adapters5chain17and_then_or_clear17h83c37f5fbbe0eae1E.exit.thread.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ae, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.i, i64 24, i1 false), !alias.scope !1470, !noalias !1474
  br label %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %bb.k ], [ %i.c, %bb.j ]
  store i64 -9223372036854775807, ptr %.sink.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1475, !noalias !1474
  %.pr.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !1402
  %.not6.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i, -9223372036854775807
  br i1 %.not6.i.i.i.i.i, label %bb.l, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.thread.i.i.i.i: ; preds = %bb.c
  store i64 -9223372036854775807, ptr %i.d, align 8, !alias.scope !1397, !noalias !1476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1402
  br label %bb.p

bb.l:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17hc7686e24b77c19e8E.exit.i.i.i.i.i
  invoke fastcc void @"_ZN4core3ptr343drop_in_place$LT$core..option..Option$LT$core..iter..adapters..chain..Chain$LT$core..iter..adapters..chain..Chain$LT$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$C$core..option..IntoIter$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$$GT$$GT$17hb38672034e50cb0eE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i)
          to label %bb.n unwind label %bb.m, !noalias !1477

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775805, ptr %i.i, align 8, !alias.scope !1478, !noalias !1477
  invoke fastcc void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..borrow..Cow$LT$$u5b$u8$u5d$$GT$$GT$$GT$17h0c7cb9b36eac21c3E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #40
          to label %.body unwind label %bb.o, !noalias !1477

bb.n:                                             ; preds = %bb.l
  store i64 -9223372036854775805, ptr %i.i, align 8, !alias.scope !1478, !noalias !1477
  br label %_ZN4core4iter8adapters5chain17and_then_or_clear17h72e77a1835dd89daE.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@"_ZN3csv6writer15Writer$LT$W$GT$3new17h5cfa9745e360689fE":bb.a
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1631, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1631
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.q = load i8, ptr %i.p, align 8, !range !238, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.r, ptr noundef nonnull align 8 dereferenceable(288) %i.b, i64 288, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %i.t, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.f, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %., ptr %.sroa.8.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d, %bb.g
  %.pn17 = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.m, %bb.d ]
  %i.u = call noundef i32 @close(i32 noundef %2) #34 ; 0 uses
  resume { ptr, i32 } %.pn17

bb.g:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @"_ZN3csv6writer15Writer$LT$W$GT$5flush17h987b4fcac836a499E"(ptr noalias noundef align 8 dereferenceable(360) initializes((25, 26)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.a, align 1, !alias.scope !1634
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !1634, !noundef !3
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1634, !noundef !3 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1634, !noundef !3 ; 2 uses
  %.not6.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not6.i, label %bb.d, label %bb.e, !prof !214

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333) #39, !noalias !1634
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.e, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @334) #39, !noalias !1634
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1634, !nonnull !3, !noundef !3
  %i.j = tail call noundef ptr @_ZN3std2io5Write9write_all17h55ae749b4115d4deE(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.e) ; 2 uses
  store i8 0, ptr %i.a, align 1, !alias.scope !1634
  %.not7.i = icmp eq ptr %i.j, null
  br i1 %.not7.i, label %bb.f, label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h653dd2d4d38ce157E.exit"

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.d, align 8, !alias.scope !1634
  %i.k = load i32, ptr %i.b, align 8, !noundef !3
  %.not8 = icmp eq i32 %i.k, -1
  br i1 %.not8, label %bb.g, label %"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h653dd2d4d38ce157E.exit", !prof !37

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #39
  unreachable

"_ZN3csv6writer15Writer$LT$W$GT$9flush_buf17h653dd2d4d38ce157E.exit": ; preds = %bb.f, %bb.e
  ret ptr %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$18disconnect_senders17h44cf46ea4c2259e0E"(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !3
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E(ptr noundef nonnull align 8 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$20disconnect_receivers17hcf0022538f618d93E"(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8 ; 2 uses
  %i.e = load i64, ptr %i.a, align 16, !noundef !3 ; 2 uses
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10disconnect17hb947c4e6ba83d9a3E(ptr noundef nonnull align 8 %i.h)
  %.pre = load i64, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 2 uses
  %i.j = load atomic i64, ptr %0 monotonic, align 128
  %i.k = xor i64 %i.i, -1
  %i.l = and i64 %i.d, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.q = phi i64 [ %i.i, %bb.c ], [ %.pre.i, %bb.j ]
  %.sroa.0.07.i = phi i32 [ 0, %bb.c ], [ %.sroa.0.18.i, %bb.j ] ; 7 uses
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.c ], [ %.sroa.0.1.i, %bb.j ] ; 5 uses
  %i.r = add i64 %i.q, -1
  %i.s = and i64 %.sroa.0.0.i, %i.r               ; 3 uses
  %i.t = load i64, ptr %i.m, align 8, !noundef !3
  %i.u = sub i64 0, %i.t
  %i.v = and i64 %.sroa.0.0.i, %i.u
  %i.w = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.x = load i64, ptr %i.o, align 32, !noundef !3
  %i.y = icmp ult i64 %i.s, %i.x
  tail call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [136 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = add i64 %.sroa.0.0.i, 1
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ae, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$20discard_all_messages17hd1ca1e0322d68309E.exit", label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = add nuw i64 %i.s, 1
  %i.ag = load i64, ptr %i.p, align 128, !noundef !3
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  tail call void @llvm.x86.sse2.pause() #34
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause() #34
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1637

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !3
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.z)
  br label %bb.j

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$20discard_all_messages17hd1ca1e0322d68309E.exit": ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv17h8e06f1c9d3de90ccE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [128 x i8], align 8               ; 4 uses
  %i.h = alloca [128 x i8], align 8               ; 7 uses
  %.sroa.4 = alloca [112 x i8], align 8           ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1639)
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, %bb.b
  %.sroa.0.029.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.029.i.be, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !1639 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !1639, !noundef !3
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !1639, !nonnull !3, !noundef !3
  %i.ac = load i64, ptr %i.p, align 32, !noalias !1639, !noundef !3
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [136 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !1639 ; 3 uses
  %i.ah = add i64 %i.u, 1
  %i.ai = icmp eq i64 %i.ah, %i.ag
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i
  %i.aj = icmp eq i64 %i.ag, %i.u
  br i1 %i.aj, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i
  %i.ak = add nuw i64 %i.x, 1
  %i.al = load i64, ptr %i.r, align 128, !noalias !1639, !noundef !3
  %i.am = icmp ult i64 %i.ak, %i.al
  br i1 %i.am, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.an = icmp ult i32 %.sroa.0.029.i, 7
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E(), !noalias !1639
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ao = mul nuw i32 %.sroa.0.029.i, %.sroa.0.029.i ; 2 uses
  %xtraiter = and i32 %i.ao, 7                    ; 3 uses
  %i.ap = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ap, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ao, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod69 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod69)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1642

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.aq = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.ar = load atomic i64, ptr %i.q monotonic, align 128, !noalias !1639 ; 2 uses
  %i.as = load i64, ptr %i.m, align 16, !noalias !1639, !noundef !3 ; 2 uses
  %i.at = xor i64 %i.as, -1
  %i.au = and i64 %i.ar, %i.at
  %i.av = icmp eq i64 %i.au, %i.u
  br i1 %i.av, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %i.aw = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i11.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter70 = and i32 %i.aw, 5                  ; 3 uses
  %i.ax = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.ax, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter74 = and i32 %i.aw, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod72.not = icmp eq i32 %xtraiter70, 0
  br i1 %lcmp.mod72.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod73 = icmp ne i32 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter71 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter71.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter71.next = add i32 %epil.iter71, 1     ; 2 uses
  %epil.iter71.cmp.not = icmp eq i32 %epil.iter71.next, %xtraiter70
  br i1 %epil.iter71.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !1643

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ay = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter75 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter75.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter75.next.7 = add nuw i32 %niter75, 8       ; 2 uses
  %niter75.ncmp.7 = icmp eq i32 %niter75.next.7, %unroll_iter74
  br i1 %niter75.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.az = and i64 %i.as, %i.ar
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit", label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit.thread"

bb.k:                                             ; preds = %bb.d
  %i.bb = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.bc = add i64 %i.bb, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.bc, %bb.k ], [ %i.ag, %bb.d ]
  %i.bd = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !1639
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.029.i, i32 6) ; 2 uses
  %i.bf = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.029.i, 0
  br i1 %.not.i16.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter76 = and i32 %i.bf, 5                  ; 3 uses
  %i.bg = icmp ult i32 %.sroa.0.029.i, 3
  br i1 %i.bg, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter80 = and i32 %i.bf, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod78.not = icmp eq i32 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod79 = icmp ne i32 %xtraiter76, 0
  call void @llvm.assume(i1 %lcmp.mod79)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter77 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter77.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %epil.iter77.next = add i32 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i32 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !1644

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bh = add i32 %.sroa.0.029.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.029.i.be = phi i32 [ %i.aq, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 1, %bb.m ], [ %i.bh, %._crit_edge.loopexit.i20.i ], [ %i.ay, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter81 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter81.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  call void @llvm.x86.sse2.pause() #34, !noalias !1639
  %niter81.next.7 = add nuw i32 %niter81, 8       ; 2 uses
  %niter81.ncmp.7 = icmp eq i32 %niter81.next.7, %unroll_iter80
  br i1 %niter81.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit": ; preds = %bb.j
  %i.bi = load i32, ptr %i.k, align 8, !range !1645, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bi, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !1639
  %i.bk = load i64, ptr %i.n, align 8, !noalias !1639, !noundef !3
  %i.bl = add i64 %i.bk, %i.u                     ; 2 uses
  store i64 %i.bl, ptr %i.l, align 8, !alias.scope !1639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i64 128, i1 false), !noalias !1646
  store atomic i64 %i.bl, ptr %i.bj release, align 8, !noalias !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !noalias !1646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17h699d8ba71470dd02E(ptr noundef nonnull align 8 %i.bm)
          to label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit" unwind label %bb.o, !noalias !1646

bb.o:                                             ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$$LP$usize$C$core..result..Result$LT$fsrs..inference..SplitEvaluation$C$fsrs..error..FSRSError$GT$$RP$$GT$17h7c42d75ad96bbb6fE"(ptr noalias noundef align 8 dereferenceable(128) %i.h) #40
          to label %common.resume unwind label %bb.p, !noalias !1646

bb.p:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1646
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.o ], [ %i.ca, %bb.t ], [ %i.co, %bb.ac ], [ %i.ca, %bb.u ], [ %i.co, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit": ; preds = %bb.n
  %.sroa.0.0.copyload3 = load i64, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.2.0.copyload5 = load i64, ptr %.sroa.2.0..sroa_idx4, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx6, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1646
  %i.bp = icmp eq i64 %.sroa.2.0.copyload5, -9223372036854775807
  br i1 %i.bp, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4read17hac1149e4d275d2c8E.exit.thread", label %bb.ah

bb.q:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit"
  %i.bq = load i64, ptr %i.j, align 8, !noundef !3 ; 2 uses
  %i.br = call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.bs = extractvalue { i64, i32 } %i.br, 0      ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  br i1 %i.bt, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_recv17h7505a0d0e284e6a3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1649
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.48.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bu = load i8, ptr %i.t, align 8, !range !522, !noalias !1652, !noundef !3
  %i.bv = icmp eq i8 %i.bu, 1
  br i1 %i.bv, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !1306

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.r
  %i.bw = call noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !1649 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0d80a01c82ee0390E.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bw, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.by = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !37

bb.s:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1649
  %i.bz = call noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E(), !noalias !1649 ; 2 uses
  store ptr %i.bz, ptr %i.e, align 8, !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1649
  store ptr %i.i, ptr %i.c, align 8, !noalias !1649
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bz)
          to label %bb.v unwind label %bb.t, !noalias !1649

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  call void @llvm.experimental.noalias.scope.decl(metadata !1662)
  call void @llvm.experimental.noalias.scope.decl(metadata !1665)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !1668, !noalias !1649, !nonnull !3, !noundef !3
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1669
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.x, !noalias !1649

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1649
  call void @llvm.experimental.noalias.scope.decl(metadata !1670)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.ce = load ptr, ptr %i.e, align 8, !alias.scope !1679, !noalias !1649, !nonnull !3, !noundef !3
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !1680
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.w, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e), !noalias !1649
  br label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i": ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1649
  br label %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1649
  unreachable

bb.y:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1649
  store ptr %i.by, ptr %i.d, align 8, !noalias !1649
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store atomic i64 0, ptr %i.ci release, align 8, !noalias !1649
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store atomic ptr null, ptr %i.cj release, align 8, !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1649
  store ptr %i.i, ptr %i.b, align 8, !noalias !1649
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.by)
          to label %bb.z unwind label %bb.ac, !noalias !1649

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1649
  %i.ck = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649, !noundef !3 ; 3 uses
  store ptr %i.ck, ptr %i.a, align 8, !noalias !1649
  store ptr %i.by, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1649
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = atomicrmw sub ptr %i.ck, i64 1 release, align 8, !noalias !1681
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ab, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1649
  br label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i": ; preds = %bb.ab, %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1649
  br label %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit

bb.ac:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1690
  %i.cq = icmp eq i64 %i.cp, 1
  br i1 %i.cq, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %common.resume unwind label %bb.x, !noalias !1649

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0d80a01c82ee0390E.exit.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i
  call fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h4274718def3f2c90E"(ptr nonnull %i.f), !noalias !1649
  br label %_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit

_ZN3std4sync4mpmc7context7Context4with17hbeaedaa30b881ee5E.exit: ; preds = %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i", %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17h0d80a01c82ee0390E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1649
  br label %bb.b

.split:                                           ; preds = %bb.q
  %i.cr = extractvalue { i64, i32 } %i.br, 1      ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 1000000000
  call void @llvm.assume(i1 %i.cs)
  %.not22 = icmp samesign ult i32 %i.cr, %i.bi
  br i1 %.not22, label %bb.r, label %bb.af

bb.ae:                                            ; preds = %bb.q
  %.not21 = icmp slt i64 %i.bs, %i.bq
  br i1 %.not21, label %bb.r, label %bb.af

bb.af:                                            ; preds = %.split, %bb.ae
end_hunk_1
begin_hunk_2_@"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4recv28_$u7b$$u7b$closure$u7d$$u7d$17h2a69db5df57073dcE":bb.a
  tail call void @_ZN3std6thread6Thread4park17h537f656050d56d48E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac)
  br label %.split8.us.i

.split8.i:                                        ; preds = %bb.d, %bb.i
  %i.ae = load atomic i64, ptr %i.aa acquire, align 8
  switch i64 %i.ae, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4 [
    i64 0, label %bb.f
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  ]

bb.f:                                             ; preds = %.split8.i
  %i.af = tail call { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE() ; 2 uses
  %i.ag = extractvalue { i64, i32 } %i.af, 0      ; 3 uses
  %i.ah = extractvalue { i64, i32 } %i.af, 1      ; 3 uses
  %i.ai = icmp eq i64 %i.ag, %i.x
  br i1 %i.ai, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.aj = icmp ult i32 %i.ah, 1000000000
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.ab)
  %i.ak = icmp samesign ult i32 %i.ah, %i.z
  br i1 %i.ak, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = icmp slt i64 %i.ag, %i.x
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.split.i
  %i.am = cmpxchg ptr %i.aa, i64 0, i64 1 acq_rel acquire, align 8 ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit

bb.i:                                             ; preds = %bb.g, %.split.i
  %i.ao = tail call { i64, i32 } @"_ZN60_$LT$std..time..Instant$u20$as$u20$core..ops..arith..Sub$GT$3sub17h5a2cdf940c4d2995E"(i64 noundef %i.x, i32 noundef range(i32 0, 1000000001) %i.z, i64 noundef %i.ag, i32 noundef %i.ah) ; 2 uses
  %i.ap = extractvalue { i64, i32 } %i.ao, 0
  %i.aq = extractvalue { i64, i32 } %i.ao, 1
  tail call void @_ZN3std6thread6Thread12park_timeout17hc0e8a0d3add8dc16E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, i64 noundef %i.ap, i32 noundef %i.aq)
  br label %.split8.i

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit: ; preds = %bb.h
  %i.ar = extractvalue { i64, i1 } %i.am, 0
  switch i64 %i.ar, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4 [
    i64 0, label %bb.j
    i64 1, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
    i64 2, label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  ], !prof !1698

bb.j:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #39
  unreachable

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread: ; preds = %.split8.i, %.split8.i, %.split8.us.i, %.split8.us.i, %bb.h, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker10unregister17h7d14c547a2ba2184E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.g, i64 noundef %i.d)
  %i.as = load ptr, ptr %i.a, align 8, !noundef !3
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.m, label %bb.k, !prof !37

_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4: ; preds = %.split8.i, %.split8.us.i, %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit, %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"
  ret void

bb.k:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1708)
  %i.at = load ptr, ptr %i.b, align 8, !alias.scope !1711, !nonnull !3, !noundef !3
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1711
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit"

"_ZN4core3ptr50drop_in_place$LT$std..sync..mpmc..waker..Entry$GT$17h6d0e85869ccb3d86E.exit": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread4

bb.m:                                             ; preds = %_ZN3std4sync4mpmc7context7Context10wait_until17h7a5bb244e0fb0986E.exit.thread
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @337) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send17hbabf8e6c0d5122b3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1712 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !1712, !noundef !3 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit"

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4sync4mpmc7context7Context4with7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$23__RUST_STD_INTERNAL_VAL17h5dfd234b3fbb79b8E") ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.cy, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cx, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  br label %bb.b

bb.b:                                             ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.be, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ]
  %.sroa.02.034.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bd, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ] ; 8 uses
  %.sroa.0.02933.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.034.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.034.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !1715, !nonnull !3, !noundef !3
  %i.af = load i64, ptr %i.s, align 32, !noalias !1715, !noundef !3
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8, !noalias !1715 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.02.034.i, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.am = add i64 %i.al, %i.aj
  %i.an = add i64 %.sroa.02.034.i, 1
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.aa, 1
  %i.aq = load i64, ptr %i.t, align 128, !noalias !1715, !noundef !3
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.as = icmp ult i32 %.sroa.0.02933.i, 7
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3std6thread9yield_now17h4aa2d339f3f81af3E()
          to label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i unwind label %.body.thread34.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.at = mul nuw i32 %.sroa.0.02933.i, %.sroa.0.02933.i ; 2 uses
  %xtraiter = and i32 %i.at, 7                    ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.au, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.at, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !1717

_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i: ; preds = %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.av = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aw = load atomic i64, ptr %1 monotonic, align 128, !noalias !1715
  %i.ax = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.ay = add i64 %i.ax, %i.aw
  %i.az = icmp eq i64 %i.ay, %.sroa.02.034.i
  br i1 %i.az, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.i.i.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %i.ba = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i11.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i11.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %xtraiter105 = and i32 %i.ba, 5                 ; 3 uses
  %i.bb = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bb, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter109 = and i32 %i.ba, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !1718

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.bc = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter110.next.7 = add nuw i32 %niter110, 8     ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %_ZN3std4sync4mpmc5utils7Backoff10spin_heavy17h4febe83a2b9b9332E.exit.i ], [ 1, %bb.m ], [ %i.bo, %._crit_edge.loopexit.i20.i ], [ %i.bc, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bd = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1715 ; 2 uses
  %i.be = load i64, ptr %i.l, align 16, !noalias !1715, !noundef !3 ; 2 uses
  %i.bf = and i64 %i.be, %i.bd
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.b, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit"

bb.j:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.q, align 8, !noalias !1715, !noundef !3
  %i.bi = add i64 %i.bh, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bj = add i64 %.sroa.02.034.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bj, %bb.k ], [ %i.bi, %bb.j ]
  %i.bk = cmpxchg weak ptr %i.k, i64 %.sroa.02.034.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !1715
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit.thread", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, -1) i32 @llvm.umin.i32(i32 %.sroa.0.02933.i, i32 6) ; 2 uses
  %i.bm = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %.not.i16.i = icmp eq i32 %.sroa.0.02933.i, 0
  br i1 %.not.i16.i, label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %xtraiter111 = and i32 %i.bm, 5                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02933.i, 3
  br i1 %i.bn, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter115 = and i32 %i.bm, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod113.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod113.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod114 = icmp ne i32 %xtraiter111, 0
  call void @llvm.assume(i1 %lcmp.mod114)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter112 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter112.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %epil.iter112.next = add i32 %epil.iter112, 1   ; 2 uses
  %epil.iter112.cmp.not = icmp eq i32 %epil.iter112.next, %xtraiter111
  br i1 %epil.iter112.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !1719

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bo = add i32 %.sroa.0.02933.i, 1
  br label %_ZN3std4sync4mpmc5utils7Backoff10spin_light17h9d96ea26e4e11cecE.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter116 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter116.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  call void @llvm.x86.sse2.pause() #34, !noalias !1715
  %niter116.next.7 = add nuw i32 %niter116, 8     ; 2 uses
  %niter116.ncmp.7 = icmp eq i32 %niter116.next.7, %unroll_iter115
  br i1 %niter116.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread34.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread34.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, %bb.n, %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit": ; preds = %bb.h
  %i.bp = load i32, ptr %i.i, align 8, !range !1645, !noundef !3 ; 2 uses
  %.not = icmp eq i32 %i.bp, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$5write17hf99cc1ddacac4cebE.exit.thread": ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !1715
  %i.br = add i64 %.sroa.02.034.i, 1              ; 2 uses
  store i64 %i.br, ptr %i.j, align 8, !alias.scope !1715
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load <2 x i64>, ptr %2, align 8
  store <2 x i64> %i.bs, ptr %i.ah, align 8, !noalias !1720
  %.sroa.6.0..val.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..val.sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx42, i64 112, i1 false)
  store atomic i64 %i.br, ptr %i.bq release, align 8, !noalias !1723
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_ZN3std4sync4mpmc5waker9SyncWaker6notify17h699d8ba71470dd02E(ptr noundef nonnull align 8 %i.bt)
  br label %bb.ai

bb.n:                                             ; preds = %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit"
  %i.bu = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %i.bv = invoke { i64, i32 } @_ZN3std4time7Instant3now17h85e5dfc2f76449beE()
          to label %bb.ac unwind label %.body.thread34.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$10start_send17h934fa77414d31991E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1725
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.425.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bw = load i8, ptr %i.v, align 8, !range !522, !noalias !1728, !noundef !3
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i, label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i, !prof !1306

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i: ; preds = %bb.o
  %i.by = invoke noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h410c91cf78b23b71E"(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc11 unwind label %.body.thread34.loopexit.split-lp ; 2 uses

.noexc11:                                         ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.i.i
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i", label %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i

_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i: ; preds = %.noexc11, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.by, %.noexc11 ], [ %i.u, %bb.o ] ; 4 uses
  %i.ca = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725, !noundef !3 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !37

bb.p:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1725
  %i.cb = invoke noundef nonnull ptr @_ZN3std4sync4mpmc7context7Context3new17h4ada8dad59760ae9E()
          to label %bb.q unwind label %.body.thread34.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.cb, ptr %i.e, align 8, !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1725
  store ptr %i.g, ptr %i.c, align 8, !noalias !1725
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hd9d087d91aea5494E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.cb)
          to label %bb.t unwind label %bb.r, !noalias !1725

bb.r:                                             ; preds = %bb.q
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.cd = load ptr, ptr %i.e, align 8, !alias.scope !1744, !noalias !1725, !nonnull !3, !noundef !3
  %i.ce = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1745
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body.thread unwind label %bb.v, !noalias !1725

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1725
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  %i.cg = load ptr, ptr %i.e, align 8, !alias.scope !1755, !noalias !1725, !nonnull !3, !noundef !3
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !1756
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.u, label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i"

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i" unwind label %.body.thread34.loopexit.split-lp

"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1725
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !1725
  unreachable

bb.w:                                             ; preds = %_ZN4core3ops8function6FnOnce9call_once17h0b8de74ed7668cd8E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1725
  store ptr %i.ca, ptr %i.d, align 8, !noalias !1725
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store atomic i64 0, ptr %i.ck release, align 8, !noalias !1725
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store atomic ptr null, ptr %i.cl release, align 8, !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1725
  store ptr %i.g, ptr %i.b, align 8, !noalias !1725
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @"_ZN3std4sync4mpmc5array16Channel$LT$T$GT$4send28_$u7b$$u7b$closure$u7d$$u7d$17hd9d087d91aea5494E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.ca)
          to label %bb.x unwind label %bb.aa, !noalias !1725

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1725
  %i.cm = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725, !noundef !3 ; 3 uses
  store ptr %i.cm, ptr %i.a, align 8, !noalias !1725
  store ptr %i.ca, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !1725
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !1757
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.z, label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i" unwind label %.body.thread34.loopexit.split-lp

"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i": ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1725
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !1766
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.ab, label %.body.thread

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17he120c938bd334363E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.body.thread unwind label %bb.v, !noalias !1725

"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i": ; preds = %.noexc11
  invoke fastcc void @"_ZN3std4sync4mpmc7context7Context4with28_$u7b$$u7b$closure$u7d$$u7d$17h39379f6ca4008a1eE"(ptr nonnull %i.f)
          to label %bb.ag unwind label %.body.thread34.loopexit.split-lp

bb.ac:                                            ; preds = %bb.n
  %i.ct = extractvalue { i64, i32 } %i.bv, 0      ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %i.bu
  br i1 %i.cu, label %.split, label %bb.ad

.split:                                           ; preds = %bb.ac
  %i.cv = extractvalue { i64, i32 } %i.bv, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not52 = icmp samesign ult i32 %i.cv, %i.bp
  br i1 %.not52, label %bb.o, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not51 = icmp slt i64 %i.ct, %i.bu
  br i1 %.not51, label %bb.o, label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ad
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.ag:                                            ; preds = %"_ZN4core3ptr82drop_in_place$LT$core..option..Option$LT$std..sync..mpmc..context..Context$GT$$GT$17h86a7c4936c379724E.exit.i.i.i", %"_ZN4core3ptr54drop_in_place$LT$std..sync..mpmc..context..Context$GT$17h3ecc15e07802e150E.exit19.i.i.i", %"_ZN3std6thread5local17LocalKey$LT$T$GT$8try_with17hbddfa0d1ce8a21fbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1725
  %i.cx = load atomic i64, ptr %i.k monotonic, align 128, !noalias !1773 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6zopfli7squeeze12lz77_optimal17h4a7a4f9a3d6a950bE:bb.a
  %i.ad = alloca [144 x i8], align 8              ; 8 uses
  %i.ae = alloca [144 x i8], align 8              ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 88 ; 2 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 136 ; 2 uses
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN62_$LT$zopfli..lz77..Lz77Store$u20$as$u20$core..clone..Clone$GT$5clone17h49aec94e0482abaaE"(ptr noalias noundef align 8 captures(address) dereferenceable(144) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.y, %.thread74, %.thread, %bb.c
  %.pn49.pn = phi { ptr, i32 } [ %.pn4970, %.thread ], [ %lpad.thr_comm.split-lp, %bb.y ], [ %i.af, %bb.c ], [ %i.mg, %.thread74 ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zopfli..lz77..Lz77Store$GT$17he3e6fa702fdf0e9bE"(ptr noalias noundef align 8 dereferenceable(144) %i.ae) #40
          to label %bb.dp unwind label %bb.do

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12281)
  %i.ag = icmp eq i64 %4, %5                      ; 2 uses
  br i1 %i.ag, label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %.noexc unwind label %bb.z     ; 8 uses

.noexc:                                           ; preds = %bb.e
  %.not.i = icmp ugt i64 %5, %3
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !37

bb.f:                                             ; preds = %.noexc
  %i.ai = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6warmup17h04ebcd04568fc9d5E(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.ai, i64 noundef %5)
          to label %.preheader82.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i.preheader:                         ; preds = %bb.f
  %i.aj = icmp ult i64 %i.ai, %4
  br i1 %i.aj, label %.lr.ph, label %.preheader75.i

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %5, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @891) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.preheader82.i:                                   ; preds = %.lr.ph
  %i.ak = add nuw i64 %.sroa.052.0.i436, 1        ; 2 uses
  %i.al = icmp ult i64 %i.ak, %4
  br i1 %i.al, label %.lr.ph, label %.preheader75.i

.preheader75.i:                                   ; preds = %.preheader82.i, %.preheader82.i.preheader
  %i.am = icmp ult i64 %4, %5
  br i1 %i.am, label %.lr.ph.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.lr.ph.i:                                   ; preds = %.preheader75.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader82.i.preheader, %.preheader82.i
  %.sroa.052.0.i436 = phi i64 [ %i.ak, %.preheader82.i ], [ %i.ai, %.preheader82.i.preheader ] ; 2 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.052.0.i436)
          to label %.preheader82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.outer._crit_edge.i:                              ; preds = %.outer.i, %._crit_edge, %.preheader75.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit

bb.h:                                             ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.07.0103.i = phi i64 [ %.sroa.07.0.ph107.i, %.lr.ph.i ], [ %i.ce, %._crit_edge ] ; 16 uses
  %.sroa.024.0102.i = phi i1 [ %.sroa.024.0.ph106.i, %.lr.ph.i ], [ false, %._crit_edge ]
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12284
  store ptr null, ptr %i.k, align 8, !noalias !12284
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$7try_get17hcbb6d17ff25d9fddE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef 258, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %4)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

.noexc.i:                                         ; preds = %bb.i
  %i.aq = load i8, ptr %i.an, align 4, !range !238, !alias.scope !12287, !noalias !12290, !noundef !3
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i, label %bb.j

.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i: ; preds = %.noexc.i
  %.pre.i = load i16, ptr %i.ao, align 8, !noalias !12284
  %.pre128.i = load i16, ptr %i.ap, align 2, !noalias !12284
  br label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i

bb.j:                                             ; preds = %.noexc.i
  %i.as = sub i64 %5, %.sroa.07.0103.i            ; 2 uses
  %i.at = icmp ult i64 %i.as, 3
  br i1 %i.at, label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load i64, ptr %i.l, align 8, !alias.scope !12287, !noalias !12290, !noundef !3 ; 2 uses
  %i.av = add i64 %i.au, %.sroa.07.0103.i
  %i.aw = icmp ugt i64 %i.av, %5
  %spec.store.select.i.i = select i1 %i.aw, i64 %i.as, i64 %i.au ; 2 uses
  %i.ax = invoke { i16, i16 } @_ZN6zopfli4lz7723find_longest_match_loop17h5ff85276e6e5d364E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %.sroa.07.0103.i, i64 noundef %5, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc65.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ; 2 uses

.noexc65.i:                                       ; preds = %bb.k
  %i.ay = extractvalue { i16, i16 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { i16, i16 } %i.ax, 1      ; 2 uses
  invoke void @"_ZN79_$LT$zopfli..cache..ZopfliLongestMatchCache$u20$as$u20$zopfli..cache..Cache$GT$5store17h8b54cb83f0d87357E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %.sroa.07.0103.i, i64 noundef %spec.store.select.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, i16 noundef %i.ay, i16 noundef %i.az, i64 noundef %4)
          to label %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i: ; preds = %.noexc65.i, %bb.j, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i
  %i.ba = phi i16 [ %.pre128.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.az, %.noexc65.i ], [ 0, %bb.j ] ; 5 uses
  %i.bb = phi i16 [ %.pre.i, %.noexc._ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit_crit_edge.i ], [ %i.ay, %.noexc65.i ], [ 0, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12284
  %i.bc = zext i16 %i.ba to i32                   ; 2 uses
  %i.bd = icmp ugt i16 %i.bb, 1024
  %i.be = sext i1 %i.bd to i32
  %.sroa.039.0.i = add nsw i32 %i.be, %i.bc       ; 4 uses
  br i1 %.sroa.024.0102.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bf = icmp ugt i32 %.sroa.039.0.i, 2
  %i.bg = icmp ult i16 %i.ba, 258
  %or.cond.i = and i1 %i.bg, %i.bf
  br i1 %or.cond.i, label %.loopexit81.i, label %bb.n

bb.m:                                             ; preds = %_ZN6zopfli4lz7718find_longest_match17h0980386d1efc4744E.exit.i
  %i.bh = icmp sgt i32 %.sroa.039.0.i, %.sroa.043.0.i
  br i1 %i.bh, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.t, %bb.l
  %i.bi = icmp ugt i32 %.sroa.039.0.i, 2
  br i1 %i.bi, label %bb.u, label %bb.v

.loopexit81.i:                                    ; preds = %bb.t, %bb.l
  %i.bj = zext i16 %i.bb to i32
  br label %.outer.i

.outer.i:                                         ; preds = %.preheader.i, %.preheader.preheader.i, %.loopexit81.i
  %.sroa.048.1.i = phi i32 [ %i.bj, %.loopexit81.i ], [ %.sroa.048.0.ph104.i, %.preheader.preheader.i ], [ %.sroa.048.0.ph104.i, %.preheader.i ]
  %.sroa.046.1.i = phi i32 [ %i.bc, %.loopexit81.i ], [ %.sroa.046.0.ph105.i, %.preheader.preheader.i ], [ %.sroa.046.0.ph105.i, %.preheader.i ]
  %.sroa.024.2.i = phi i1 [ true, %.loopexit81.i ], [ false, %.preheader.preheader.i ], [ false, %.preheader.i ]
  %.sroa.07.1.in.i = phi i64 [ %.sroa.07.0103.i, %.loopexit81.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ], [ %i.bt, %.preheader.i ]
  %.sroa.07.1.i = add i64 %.sroa.07.1.in.i, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12284
  %i.bk = icmp ult i64 %.sroa.07.1.i, %5
  br i1 %i.bk, label %.lr.ph.i, label %.outer._crit_edge.i

.lr.ph.i:                                         ; preds = %.outer.i, %.lr.ph.lr.ph.i
  %.sroa.07.0.ph107.i = phi i64 [ %4, %.lr.ph.lr.ph.i ], [ %.sroa.07.1.i, %.outer.i ]
  %.sroa.024.0.ph106.i = phi i1 [ false, %.lr.ph.lr.ph.i ], [ %.sroa.024.2.i, %.outer.i ]
  %.sroa.046.0.ph105.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.046.1.i, %.outer.i ] ; 5 uses
  %.sroa.048.0.ph104.i = phi i32 [ 0, %.lr.ph.lr.ph.i ], [ %.sroa.048.1.i, %.outer.i ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.048.0.ph104.i, 1025
  %i.bm = zext i1 %i.bl to i32
  %.sroa.043.0.i = add nuw nsw i32 %.sroa.046.0.ph105.i, %i.bm
  br label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.bn = trunc nuw i32 %.sroa.046.0.ph105.i to i16 ; 2 uses
  %i.bo = trunc nuw i32 %.sroa.048.0.ph104.i to i16
  %i.bp = add i64 %.sroa.07.0103.i, -1
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bn, i16 noundef %i.bo, i64 noundef %i.bp)
          to label %.preheader.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i

.preheader.preheader.i:                           ; preds = %bb.o
  %umax126.i = call i16 @llvm.umax.i16(i16 %i.bn, i16 2)
  %exitcond127.not.i441 = icmp ult i32 %.sroa.046.0.ph105.i, 3
  br i1 %exitcond127.not.i441, label %.outer.i, label %.lr.ph444

bb.p:                                             ; preds = %bb.m
  %i.bq = add i64 %.sroa.07.0103.i, -1            ; 4 uses
  %i.br = icmp ult i64 %i.bq, %5
  br i1 %i.br, label %bb.q, label %bb.r

.preheader.i:                                     ; preds = %.lr.ph444
  %i.bs = add nuw i16 %.sroa.055.0.i442, 1        ; 2 uses
  %exitcond127.not.i = icmp eq i16 %i.bs, %umax126.i
  br i1 %exitcond127.not.i, label %.outer.i, label %.lr.ph444

.lr.ph444:                                        ; preds = %.preheader.preheader.i, %.preheader.i
  %.sroa.07.2.i443 = phi i64 [ %i.bt, %.preheader.i ], [ %.sroa.07.0103.i, %.preheader.preheader.i ]
  %.sroa.055.0.i442 = phi i16 [ %i.bs, %.preheader.i ], [ 2, %.preheader.preheader.i ]
  %i.bt = add i64 %.sroa.07.2.i443, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.bt)
          to label %.preheader.i unwind label %.loopexit.split-lp.loopexit.i

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !12281, !noalias !12295, !noundef !3
  %i.bw = zext i8 %i.bv to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.bw, i16 noundef 0, i64 noundef %i.bq)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.r:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bq, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @890) #39
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.s:                                             ; preds = %bb.r, %bb.g
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.bx = icmp ugt i32 %.sroa.039.0.i, 2
  %i.by = icmp ult i16 %i.ba, 258
  %or.cond5.i = and i1 %i.by, %i.bx
  br i1 %or.cond5.i, label %.loopexit81.i, label %bb.n

bb.u:                                             ; preds = %bb.n
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.ba, i16 noundef %i.bb, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.v:                                             ; preds = %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0103.i
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !12281, !noalias !12295, !noundef !3
  %i.cb = zext i8 %i.ca to i16
  invoke void @_ZN6zopfli4lz779Lz77Store12lit_len_dist17h41122da3b71cff86E(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.ae, i16 noundef %i.cb, i16 noundef 0, i64 noundef %.sroa.07.0103.i)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.030.0.i = phi i16 [ %i.ba, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %exitcond.not.i437 = icmp ult i16 %.sroa.030.0.i, 2
  br i1 %exitcond.not.i437, label %._crit_edge, label %.lr.ph440

bb.x:                                             ; preds = %.lr.ph440
  %i.cc = add nuw i16 %.sroa.057.0.i438, 1        ; 2 uses
  %exitcond.not.i = icmp eq i16 %.sroa.030.0.i, %i.cc
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph440

.lr.ph440:                                        ; preds = %bb.w, %bb.x
  %.sroa.07.3.i439 = phi i64 [ %i.cd, %bb.x ], [ %.sroa.07.0103.i, %bb.w ]
  %.sroa.057.0.i438 = phi i16 [ %i.cc, %bb.x ], [ 1, %bb.w ]
  %i.cd = add i64 %.sroa.07.3.i439, 1             ; 3 uses
  invoke void @_ZN6zopfli4hash10ZopfliHash6update17hfb60a6238fdcc21eE(ptr noalias noundef nonnull align 2 dereferenceable(720900) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %5, i64 noundef %i.cd)
          to label %bb.x unwind label %.loopexit.i

._crit_edge:                                      ; preds = %bb.x, %bb.w
  %.sroa.07.3.i.lcssa = phi i64 [ %.sroa.07.0103.i, %bb.w ], [ %i.cd, %bb.x ]
  %i.ce = add i64 %.sroa.07.3.i.lcssa, 1          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !12284
  %i.cf = icmp ult i64 %i.ce, %5
  br i1 %i.cf, label %bb.h, label %.outer._crit_edge.i

.loopexit.i:                                      ; preds = %.lr.ph440
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.lr.ph444
  %lpad.loopexit72.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i: ; preds = %bb.v, %bb.u, %bb.q, %.noexc65.i, %bb.k, %bb.i, %bb.h
  %lpad.loopexit78.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i: ; preds = %bb.o
  %lpad.loopexit.split-lp79.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.r, %bb.g, %bb.f
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit72.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp79.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.i ], [ %lpad.loopexit78.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.i ], [ %lpad.loopexit83.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

.thread77:                                        ; preds = %bb.ac, %bb.ab
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 720900, i64 noundef 2) #34
  br label %.thread

bb.y:                                             ; preds = %bb.cw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 720900, i64 noundef 2) #34
  br label %bb.b

bb.z:                                             ; preds = %bb.e, %bb.aa, %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit: ; preds = %.outer._crit_edge.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2304) %i.n, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.m, i8 0, i64 256, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ac, i64 2304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.ac, i8 0, i64 5120, i1 false)
  invoke void @_ZN6zopfli7squeeze11SymbolStats14get_statistics17h29395d5ef7d2221cE(ptr noalias noundef nonnull align 8 dereferenceable(5120) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ae)
          to label %bb.aa unwind label %bb.z

bb.aa:                                            ; preds = %_ZN6zopfli4lz779Lz77Store6greedy17h9ebc48a0f82c81a3E.exit
  %i.ci = invoke noundef nonnull align 2 ptr @_ZN6zopfli4hash10ZopfliHash3new17h80eb7a2598878f85E()
          to label %bb.ab unwind label %bb.z      ; 12 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.cj = sub i64 %5, %4                          ; 5 uses
  %i.ck = add i64 %i.cj, 1                        ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, i64 noundef %i.ck, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc53 unwind label %.thread77

.noexc53:                                         ; preds = %bb.ab
  %i.cl = load i64, ptr %i.j, align 8, !range !5, !noundef !3
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !996, !noundef !3 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.ac, label %bb.ad, !prof !37

bb.ac:                                            ; preds = %.noexc53
  %i.cq = load i64, ptr %i.cp, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.co, i64 %i.cq) #39
          to label %.noexc54 unwind label %.thread77

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.noexc53
  %i.cr = load ptr, ptr %i.cp, align 8, !nonnull !3, !noundef !3
  %i.cs = icmp ule i64 %i.ck, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.co, ptr %i.ab, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 9 uses
  store ptr %i.cr, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 10 uses
  store i64 0, ptr %i.cu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5120) %i.w, i8 0, i64 5120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i32 1, ptr %i.aa, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 2, ptr %i.cv, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.da = call i64 @llvm.usub.sat.i64(i64 %4, i64 32768) ; 3 uses
  %.not.i.i = icmp ugt i64 %5, %3
  %i.db = icmp ugt i64 %i.ck, 1
  %.sroa.13.0.i13.i = add i64 %i.cj, -1           ; 3 uses
  %i.dc = icmp eq i64 %.sroa.13.0.i13.i, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.dh = icmp ult i64 %4, %5
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 655364 ; 2 uses
  %i.dj = add i64 %4, 259
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.eh = icmp ult i64 %i.da, %4
  %i.ei = add i64 %5, -2
  %i.ej = sub i64 %i.ei, %4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.dj, %bb.ad
  %.sroa.04.0 = phi i64 [ -1, %bb.ad ], [ %.sroa.04.1, %bb.dj ] ; 3 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.ad ], [ %.sroa.02.1, %bb.dj ]
  %.sroa.01.0 = phi double [ 0.000000e+00, %bb.ad ], [ %i.ms, %bb.dj ]
  %.sroa.0.0 = phi double [ +inf, %bb.ad ], [ %.sroa.0.1, %bb.dj ] ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12296)
  call void @llvm.experimental.noalias.scope.decl(metadata !12299)
  call void @llvm.experimental.noalias.scope.decl(metadata !12301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !12303)
  call void @llvm.experimental.noalias.scope.decl(metadata !12306)
  call void @llvm.experimental.noalias.scope.decl(metadata !12308)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12310
  call void @llvm.experimental.noalias.scope.decl(metadata !12317)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12320
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ck, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc56 unwind label %.loopexit

.noexc56:                                         ; preds = %bb.ae
  %i.ek = load i64, ptr %i.c, align 8, !range !5, !noalias !12320, !noundef !3
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = load i64, ptr %i.cw, align 8, !range !996, !noalias !12320, !noundef !3 ; 2 uses
end_hunk_3
begin_hunk_4_@"_ZN97_$LT$pulldown_cmark..parse..Parser$LT$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd27219abf4458b75E":bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !3 ; 6 uses
  %i.eb = icmp ult i64 %i.do, %i.ds
  br i1 %i.eb, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %._crit_edge.i
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dq, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @279) #39
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw [48 x i8], ptr %i.dr, i64 %i.do
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i64 %i.ea, ptr %i.ed, align 8
  %i.ee = icmp ult i64 %.sroa.07.1259.i, %i.cz
  br i1 %i.ee, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.do, i64 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #39
  unreachable

bb.ah:                                            ; preds = %bb.ai, %bb.af
  %i.ef = sub i64 %.sroa.07.1259.i, %.sroa.0.0.i.i ; 3 uses
  %.not111.i = icmp eq i64 %i.ef, 0
  br i1 %.not111.i, label %._crit_edge261.i, label %bb.aj

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12783
  %i.eg = sub nuw i64 %i.cz, %.sroa.0.0.i.i
  store i64 %i.eg, ptr %i.b, align 8, !noalias !12783
  store <2 x i64> %i.db, ptr %i.bk, align 8, !noalias !12783
  store i8 %i.dc, ptr %i.bl, align 8, !noalias !12783
  store i8 %i.cy, ptr %i.bm, align 1, !noalias !12783
  call void @_ZN14pulldown_cmark5parse11InlineStack4push17h0072d370a6853a14E(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12783
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ah
  %.not113.i = icmp eq i64 %i.ea, 0
  br i1 %.not113.i, label %bb.al, label %bb.ak, !prof !37

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12783
  call void @_ZN14pulldown_cmark5parse11InlineStack10find_match17ha0fca125dd764f2bE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be, ptr noalias noundef nonnull align 8 dereferenceable(576) %1, i8 noundef %i.cw, i64 noundef %i.bx, i1 noundef zeroext %i.ca)
  %i.eh = load i8, ptr %i.bf, align 1, !range !522, !noalias !12783, !noundef !3 ; 2 uses
  %.not.i = icmp eq i8 %i.eh, 2
  br i1 %.not.i, label %._crit_edge261.i, label %.lr.ph260.i

bb.al:                                            ; preds = %bb.aj
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @281) #39
  unreachable

bb.am:                                            ; preds = %.lr.ph.i
  switch i8 %i.cw, label %bb.as [
    i8 126, label %bb.ao
    i8 94, label %bb.aq
  ]

bb.an:                                            ; preds = %.lr.ph.i
  switch i8 %i.cw, label %bb.as [
    i8 126, label %bb.ar
    i8 94, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.am
  %i.ei = load i32, ptr %i.bj, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.ej = and i32 %i.ei, 16384
  %.not114.i = icmp eq i32 %i.ej, 0
  br i1 %.not114.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ek = and i32 %i.ei, 8
  %.not115.i = icmp eq i32 %i.ek, 0
  %.118.i = select i1 %.not115.i, i8 24, i8 10
  br label %bb.as

bb.aq:                                            ; preds = %bb.an, %bb.am
  %.sroa.023.0.i = phi i64 [ 2, %bb.an ], [ 1, %bb.am ]
  %i.el = load i32, ptr %i.bj, align 8, !alias.scope !12783, !noundef !3
  %i.em = and i32 %i.el, 8192
  %.not116.i = icmp eq i32 %i.em, 0
  %.119.i = select i1 %.not116.i, i8 24, i8 11
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.en = load i32, ptr %i.bj, align 8, !alias.scope !12783, !noundef !3
  %i.eo = and i32 %i.en, 8
  %.not117.i = icmp eq i32 %i.eo, 0
  %.120.i = select i1 %.not117.i, i8 24, i8 10
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.025.0.i = phi i8 [ %.118.i, %bb.ap ], [ %.120.i, %bb.ar ], [ 8, %bb.am ], [ 9, %bb.an ], [ 12, %bb.ao ], [ %.119.i, %bb.aq ]
  %.sroa.023.1.i = phi i64 [ 1, %bb.ap ], [ 2, %bb.ar ], [ 1, %bb.am ], [ 2, %bb.an ], [ 1, %bb.ao ], [ %.sroa.023.0.i, %bb.aq ] ; 2 uses
  %i.ep = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Sub$LT$usize$GT$$GT$3sub17h7936640542183defE"(i64 noundef %.sroa.019.0254.i, i64 noundef %.sroa.023.1.i) ; 14 uses
  %i.eq = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17h6293de136f935893E"(i64 noundef %.sroa.017.0255.i, i64 noundef %.sroa.023.1.i) ; 4 uses
  %i.er = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.es = icmp ult i64 %i.ep, %i.er
  br i1 %i.es, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.et = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.eu = getelementptr inbounds nuw [48 x i8], ptr %i.et, i64 %i.ep ; 2 uses
  store i8 %.sroa.025.0.i, ptr %i.eu, align 8
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1
  %i.ev = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3 ; 2 uses
  %i.ew = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 4 uses
  %i.ex = icmp ult i64 %i.eq, %i.ew
  br i1 %i.ex, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ep, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #39
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.ey = icmp ult i64 %i.ep, %i.ew
  br i1 %i.ey, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.at
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.eq, i64 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #39
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ez = getelementptr inbounds nuw [48 x i8], ptr %i.ev, i64 %i.eq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !noundef !3
  %i.fc = getelementptr inbounds nuw [48 x i8], ptr %i.ev, i64 %i.ep
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store i64 %i.fb, ptr %i.fd, align 8
  %i.fe = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.ff = icmp ult i64 %i.ep, %i.fe
  br i1 %i.ff, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.av
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ep, i64 noundef %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #39
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.fh = getelementptr inbounds nuw [48 x i8], ptr %i.fg, i64 %i.ep
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store i64 %.sroa.019.0254.i, ptr %i.fi, align 8
  %i.fj = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.fk = icmp ult i64 %i.ep, %i.fj
  br i1 %i.fk, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ep, i64 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @285) #39
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.fl = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.fm = getelementptr inbounds nuw [48 x i8], ptr %i.fl, i64 %i.ep
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  store i64 0, ptr %i.fn, align 8
  %i.fo = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17h6293de136f935893E"(i64 noundef %i.da, i64 noundef %i.cz)
  %i.fp = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Sub$LT$usize$GT$$GT$3sub17h7936640542183defE"(i64 noundef %i.fo, i64 noundef %.sroa.0.0.i.i)
  %i.fq = icmp ugt i64 %i.ep, %i.fp
  br i1 %i.fq, label %.lr.ph.i, label %._crit_edge.i

bb.bc:                                            ; preds = %bb.az
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ep, i64 noundef %i.fj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @286) #39
  unreachable

bb.bd:                                            ; preds = %bb.y
  br i1 %i.ca, label %bb.be, label %.preheader.i

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12783
  store i64 %.sroa.026.0.i, ptr %i.bn, align 8, !noalias !12783
  store i64 %.sroa.07.0.i, ptr %i.a, align 8, !noalias !12783
  store i64 %i.bx, ptr %i.bo, align 8, !noalias !12783
  store i8 %i.cw, ptr %i.bp, align 8, !noalias !12783
  store i8 %i.cc, ptr %i.bq, align 1, !noalias !12783
  call void @_ZN14pulldown_cmark5parse11InlineStack4push17h0072d370a6853a14E(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12783
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.bd, %bb.bf
  %i.fr = phi i64 [ %i.gb, %bb.bf ], [ 1, %bb.bd ] ; 3 uses
  %.sroa.072.0270.i = phi i64 [ %i.fr, %bb.bf ], [ 0, %bb.bd ]
  %i.fs = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17h6293de136f935893E"(i64 noundef %.sroa.026.0.i, i64 noundef %.sroa.072.0270.i) ; 3 uses
  %i.ft = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.fu = icmp ult i64 %i.fs, %i.ft
  br i1 %i.fu, label %bb.bf, label %bb.bg

.loopexit.i:                                      ; preds = %bb.bf, %bb.be
  %i.fv = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Add$LT$usize$GT$$GT$3add17h6293de136f935893E"(i64 noundef %.sroa.026.0.i, i64 noundef %.sroa.07.0.i)
  %i.fw = call noundef i64 @"_ZN86_$LT$pulldown_cmark..tree..TreeIndex$u20$as$u20$core..ops..arith..Sub$LT$usize$GT$$GT$3sub17h7936640542183defE"(i64 noundef %i.fv, i64 noundef 1) ; 3 uses
  %i.fx = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.fy = icmp ult i64 %i.fw, %i.fx
  br i1 %i.fy, label %.sink.split.sink.split.i, label %bb.bh

bb.bf:                                            ; preds = %.preheader.i
  %i.fz = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.ga = getelementptr inbounds nuw [48 x i8], ptr %i.fz, i64 %i.fs ; 2 uses
  store i8 24, ptr %i.ga, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.gb = add nuw i64 %i.fr, 1
  %exitcond.not.i = icmp eq i64 %i.fr, %.sroa.07.0.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i

bb.bg:                                            ; preds = %.preheader.i
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fs, i64 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @287) #39
  unreachable

bb.bh:                                            ; preds = %.loopexit.i
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fw, i64 noundef %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @288) #39
  unreachable

.sink.split.sink.split.i:                         ; preds = %bb.bu, %bb.bq, %.loopexit.i
  %.sroa.065.0272.sink.i = phi i64 [ %.sroa.065.0272.i, %bb.bu ], [ %.sroa.065.0272.i, %bb.bq ], [ %i.fw, %.loopexit.i ] ; 2 uses
  %.sroa.060.1.ph.ph.i = phi i64 [ %.sroa.060.0273.i, %bb.bu ], [ %.sroa.060.3.i, %bb.bq ], [ %.sroa.060.0273.i, %.loopexit.i ]
  %.sroa.0.1.ph.ph.i = phi i1 [ %.sroa.0.0275.i, %bb.bu ], [ %.sroa.0.2.i, %bb.bq ], [ %.sroa.0.0275.i, %.loopexit.i ]
  %i.gc = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.gd = getelementptr inbounds nuw [48 x i8], ptr %i.gc, i64 %.sroa.065.0272.sink.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.v, %bb.r
  %.sink590.i = phi ptr [ %i.bu, %bb.v ], [ %i.bu, %bb.r ], [ %i.gd, %.sink.split.sink.split.i ]
  %.sroa.060.1.ph.i = phi i64 [ %.sroa.060.0273.i, %bb.v ], [ %.sroa.060.0273.i, %bb.r ], [ %.sroa.060.1.ph.ph.i, %.sink.split.sink.split.i ]
  %.sroa.049.4.ph.i = phi i64 [ %.sroa.065.0272.i, %bb.v ], [ %.sroa.065.0272.i, %bb.r ], [ %.sroa.065.0272.sink.i, %.sink.split.sink.split.i ]
  %.sroa.0.1.ph.i = phi i1 [ %.sroa.0.0275.i, %bb.v ], [ %.sroa.0.0275.i, %bb.r ], [ %.sroa.0.1.ph.ph.i, %.sink.split.sink.split.i ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.sink590.i, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !3
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split.i, %bb.y
  %.sroa.065.4.i = phi i64 [ %.sroa.065.1.i, %bb.y ], [ %i.gf, %.sink.split.i ] ; 2 uses
  %.sroa.060.1.i = phi i64 [ %.sroa.060.0273.i, %bb.y ], [ %.sroa.060.1.ph.i, %.sink.split.i ]
  %.sroa.049.4.i = phi i64 [ %.sroa.049.1.i, %bb.y ], [ %.sroa.049.4.ph.i, %.sink.split.i ]
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0275.i, %bb.y ], [ %.sroa.0.1.ph.i, %.sink.split.i ]
  %.not107.i = icmp eq i64 %.sroa.065.4.i, 0
  br i1 %.not107.i, label %"_ZN14pulldown_cmark5parse15Parser$LT$F$GT$30handle_emphasis_and_hard_break17h570cb12d79e2d650E.exit", label %bb.q

bb.bj:                                            ; preds = %bb.u
  %.not109.i = icmp ne i64 %.sroa.060.0273.i, 0
  %brmerge.not.i = and i1 %.not109.i, %i.co
  br i1 %brmerge.not.i, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.u
  %or.cond.i = select i1 %i.co, i1 %.sroa.0.0275.i, i1 false ; 2 uses
  %spec.store.select.i = select i1 %i.cl, i1 true, i1 %.sroa.0.0275.i
  %spec.select591.i = select i1 %or.cond.i, i32 8221, i32 8220
  %not.or.cond.i = xor i1 %or.cond.i, true
  %spec.select592.i = select i1 %not.or.cond.i, i1 %spec.store.select.i, i1 false
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bj
  %spec.select.i = select i1 %i.cl, i64 %.sroa.065.0272.i, i64 %.sroa.060.0273.i
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  %i.gg = icmp ult i64 %.sroa.060.0273.i, %i.br
  br i1 %i.gg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gh = getelementptr inbounds nuw [48 x i8], ptr %i.bt, i64 %.sroa.060.0273.i ; 2 uses
  store i8 22, ptr %i.gh, align 8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 8216, ptr %.sroa.458.0..sroa_idx.i, align 4
  %.pre417.i = load i64, ptr %i.s, align 8, !alias.scope !12783
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.060.0273.i, i64 noundef %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @289) #39
  unreachable

bb.bp:                                            ; preds = %bb.bn, %bb.bl, %bb.bk
  %i.gi = phi i64 [ %i.br, %bb.bl ], [ %i.br, %bb.bk ], [ %.pre417.i, %bb.bn ] ; 2 uses
  %.sroa.060.3.i = phi i64 [ %spec.select.i, %bb.bl ], [ %.sroa.060.0273.i, %bb.bk ], [ 0, %bb.bn ]
  %.sroa.653.0.i = phi i32 [ 8217, %bb.bl ], [ %spec.select591.i, %bb.bk ], [ 8217, %bb.bn ]
  %.sroa.0.2.i = phi i1 [ %.sroa.0.0275.i, %bb.bl ], [ %spec.select592.i, %bb.bk ], [ %.sroa.0.0275.i, %bb.bn ]
  %i.gj = icmp ult i64 %.sroa.065.0272.i, %i.gi
  br i1 %i.gj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.gk = load ptr, ptr %i.r, align 8, !alias.scope !12783, !nonnull !3, !noundef !3
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.gk, i64 %.sroa.065.0272.i ; 2 uses
  store i8 22, ptr %i.gl, align 8
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %.sroa.653.0.i, ptr %.sroa.653.0..sroa_idx.i, align 4
  %i.gm = load i64, ptr %i.s, align 8, !alias.scope !12783, !noundef !3 ; 2 uses
  %i.gn = icmp ult i64 %.sroa.065.0272.i, %i.gm
  br i1 %i.gn, label %.sink.split.sink.split.i, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.065.0272.i, i64 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #39
  unreachable

bb.bs:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.065.0272.i, i64 noundef %i.gm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #39
  unreachable

bb.bt:                                            ; preds = %bb.v
  %i.go = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.gp = load i64, ptr %i.go, align 8, !noundef !3
  %.not108.i = icmp eq i64 %i.gp, 0
  br i1 %.not108.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %bb.bt
  %i.gq = phi i64 [ %.pre.i, %bb.bv ], [ %i.br, %bb.bt ] ; 2 uses
  %i.gr = icmp ult i64 %.sroa.065.0272.i, %i.gq
  br i1 %i.gr, label %.sink.split.sink.split.i, label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  store i8 22, ptr %i.bu, align 8
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 92, ptr %.sroa.463.0..sroa_idx.i, align 4
  %.pre.i = load i64, ptr %i.s, align 8, !alias.scope !12783
  br label %bb.bu

bb.bw:                                            ; preds = %bb.bu
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.065.0272.i, i64 noundef %i.gq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @292) #39
  unreachable

"_ZN14pulldown_cmark5parse15Parser$LT$F$GT$30handle_emphasis_and_hard_break17h570cb12d79e2d650E.exit": ; preds = %bb.bi, %bb.p
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 248
  call void @_ZN14pulldown_cmark5parse11InlineStack7pop_all17h3091a7cc2deb24edE(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.gs, ptr noalias noundef nonnull align 8 dereferenceable(576) %1)
  %.pre331 = load i64, ptr %i.s, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.n, %"_ZN14pulldown_cmark5parse15Parser$LT$F$GT$30handle_emphasis_and_hard_break17h570cb12d79e2d650E.exit"
  %i.gt = phi i64 [ %i.aw, %bb.n ], [ %.pre331, %"_ZN14pulldown_cmark5parse15Parser$LT$F$GT$30handle_emphasis_and_hard_break17h570cb12d79e2d650E.exit" ] ; 2 uses
  %i.gu = icmp ult i64 %.sroa.08.0, %i.gt
  br i1 %i.gu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gv = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.gv, i64 %.sroa.08.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.gy = load ptr, ptr %i.gx, align 8, !nonnull !3, !align !221, !noundef !3
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !3
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @_ZN14pulldown_cmark5parse13item_to_event17h04c6ab268f31c610E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gy, i64 noundef %i.ha, ptr noalias noundef nonnull align 8 dereferenceable(192) %i.hb)
  %i.hc = load i8, ptr %i.e, align 8, !range !909, !noundef !3
  %i.hd = icmp samesign ult i8 %i.hc, 23
  br i1 %i.hd, label %bb.ca, label %bb.cb

bb.bz:                                            ; preds = %bb.bx
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.08.0, i64 noundef %i.gt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @957) #39
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.he = invoke noundef i64 @"_ZN14pulldown_cmark4tree13Tree$LT$T$GT$4push17h215dfe6885825a6cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.cd unwind label %bb.cc     ; 0 uses

bb.cb:                                            ; preds = %bb.by
  %i.hf = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.hg = icmp ult i64 %.sroa.08.0, %i.hf
  br i1 %i.hg, label %bb.ce, label %bb.cf

bb.cc:                                            ; preds = %bb.cf, %bb.ca
  %i.hh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$pulldown_cmark..Event$GT$17hae672a7b81684ffbE"(ptr noalias noundef align 8 dereferenceable(80) %i.e) #40
          to label %bb.ci unwind label %bb.ch

bb.cd:                                            ; preds = %bb.ca, %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.ce:                                            ; preds = %bb.cb
  %i.hi = load ptr, ptr %i.r, align 8, !nonnull !3, !noundef !3
  %i.hj = getelementptr inbounds nuw [48 x i8], ptr %i.hi, i64 %.sroa.08.0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hl = load i64, ptr %i.hk, align 8, !noundef !3
  store i64 %i.hl, ptr %i.f, align 8
  br label %bb.cd

bb.cf:                                            ; preds = %bb.cb
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.08.0, i64 noundef %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @953) #39
          to label %bb.cg unwind label %bb.cc

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %bb.cc
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.ci:                                            ; preds = %bb.cc
  resume { ptr, i32 } %i.hh
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @"_ZN99_$LT$serde_core..de..value..private..UnitOnly$LT$E$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$20newtype_variant_seed17h44b838f56e95148dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  call void @_ZN10serde_core2de5Error12invalid_type17hbc9998fb2358f7e9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 1 @959, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @960)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_4

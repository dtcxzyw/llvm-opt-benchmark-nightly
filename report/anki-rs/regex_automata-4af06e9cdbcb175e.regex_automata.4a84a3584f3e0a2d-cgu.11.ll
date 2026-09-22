Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h9a448366484052eaE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h0c2b09f8b5dcda72E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ac, i64 noundef %i.aa, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm5Cache3new17h2b8dc7029e0f3fdcE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates3new17h5e5edeac255e809eE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b, ptr %.val2)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..pikevm..FollowEpsilon$GT$$GT$17h202bbf8250195e3eE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates3new17h5e5edeac255e809eE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr %.val2)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$regex_automata..nfa..thompson..pikevm..ActiveStates$GT$17h766ec170700d20cbE"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #23
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm5Cache5reset17h0fd63f07ebe2877aE(ptr noalias noundef align 8 dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h9a448366484052eaE(ptr noalias noundef align 8 dereferenceable(96) %i.a, ptr nonnull %.val1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h9a448366484052eaE(ptr noalias noundef align 8 dereferenceable(96) %i.b, ptr nonnull %.val1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6Config9prefilter17h8ffdc1abaf24a98aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !9, !alias.scope !75, !noundef !5 ; 2 uses
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !80, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !80
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h1c26f61b68bc21a5E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #23
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$regex_automata..util..prefilter..Prefilter$GT$$GT$$GT$17h1da963db7e9a5195E.exit": ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 8 uses
  %i.b = alloca [256 x i8], align 1               ; 8 uses
  %i.c = alloca [256 x i8], align 1               ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [4 x i8], align 4                 ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 33 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  store i64 %5, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 13 uses
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 6 uses
  store i64 %5, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 54 uses
  %.not25 = icmp eq i64 %i.an, -1
  br i1 %.not25, label %bb.d, label %bb.e, !prof !8

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @35, ptr %i.y, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.ar, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load i8, ptr %i.at, align 8, !range !10, !noundef !5 ; 2 uses
  %.not26 = icmp ne i8 %i.au, 2
  %6 = and i8 %i.au, 1
  %i.av = icmp eq i8 %6, 0
  %.sroa.0.0 = and i1 %.not26, %i.av              ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %.val67 = load i32, ptr %3, align 8, !range !11, !noundef !5
  switch i32 %.val67, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.he, %bb.gz, %bb.t, %bb.fo, %bb.fj, %bb.dj, %bb.de, %bb.ao, %bb.aj, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.ax = load i32, ptr %i.aw, align 16, !noundef !5
  br label %.lr.ph1734

bb.g:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val68 = load i32, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.ba = load i64, ptr %i.az, align 8, !noundef !5
  %i.bb = zext i32 %.val68 to i64                 ; 2 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bb
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !5
  br label %.lr.ph1734

bb.i:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.bi = load i32, ptr %i.bh, align 16, !noundef !5 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 372
  %i.bk = load i32, ptr %i.bj, align 4, !noundef !5
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %.lr.ph1734, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.jh, %bb.jg, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread, %bb.q, %bb.j, %bb.c
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !range !9, !noundef !5
  %.not28 = icmp eq i8 %i.bn, 3
  %. = select i1 %.not28, ptr @38, ptr %i.as      ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.bp = load i8, ptr %i.bo, align 8, !range !10, !noundef !5
  %.not29 = icmp eq i8 %i.bp, 2
  %spec.select = select i1 %.not29, ptr null, ptr %.
  br label %.lr.ph1734

.lr.ph1734:                                       ; preds = %bb.i, %bb.k, %bb.f, %bb.h
  %i.bq = phi i1 [ false, %bb.k ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.h ] ; 2 uses
  %.sroa.5.1.i.ph268 = phi i32 [ %i.bi, %bb.k ], [ %i.bi, %bb.i ], [ %i.ax, %bb.f ], [ %i.bg, %bb.h ]
  %.sroa.07.0 = phi ptr [ %spec.select, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.h ] ; 3 uses
  store i64 0, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.07.0, null
  %i.br = load ptr, ptr %i.al, align 8, !nonnull !5, !align !7 ; 33 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %.not25.i215 = icmp eq i64 %i.an, 0             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 4 uses
  %i.cn = shl i64 %5, 3
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cp = load i8, ptr %i.co, align 8, !range !12
  %i.cq = trunc nuw i8 %i.cp to i1                ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 176
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph1734, %bb.jh
  %i.cu = phi i64 [ 0, %.lr.ph1734 ], [ %i.aka, %bb.jh ] ; 2 uses
  %i.cv = phi i64 [ 0, %.lr.ph1734 ], [ %.sroa.02.0.copyload.i.i.i.6.i.i, %bb.jh ]
  %.sroa.09.01733 = phi i64 [ %i.ah, %.lr.ph1734 ], [ %i.ds, %bb.jh ] ; 4 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.m, label %._crit_edge3345

bb.m:                                             ; preds = %bb.l
  %.not31 = icmp eq i64 %i.cu, 0
  %brmerge1 = or i1 %.sroa.0.0, %.not31
  %brmerge1.not = xor i1 %brmerge1, true
  %i.cx = icmp ugt i64 %.sroa.09.01733, %i.ah
  %or.cond34 = and i1 %i.bq, %i.cx
  %or.cond369 = or i1 %or.cond34, %brmerge1.not
  br i1 %or.cond369, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %._crit_edge3345, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cy = load ptr, ptr %.sroa.07.0, align 8, !nonnull !5, !noundef !5
  %i.cz = load ptr, ptr %i.bs, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !range !14, !invariant.load !5
  %i.dc = add i64 %i.db, -1
  %i.dd = and i64 %i.dc, -16
  %i.de = getelementptr i8, ptr %i.cy, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !invariant.load !5, !nonnull !5
  call void %i.dh(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef align 1 %i.df, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %.sroa.09.01733, i64 noundef %i.aj)
  %i.di = load i64, ptr %i.x, align 8, !range !15, !noundef !5
  %i.dj = trunc nuw i64 %i.di to i1
  br i1 %i.dj, label %bb.p, label %bb.q

._crit_edge3345:                                  ; preds = %bb.l, %bb.p, %bb.n
  %.sroa.09.1 = phi i64 [ %i.dl, %bb.p ], [ %.sroa.09.01733, %bb.n ], [ %.sroa.09.01733, %bb.l ] ; 29 uses
  %.not32 = icmp eq i64 %i.cu, 0
  %brmerge = or i1 %.sroa.0.0, %.not32
  %brmerge.not = xor i1 %brmerge, true
  %i.dk = icmp ne i64 %.sroa.09.1, %i.ah
  %or.cond37.not = and i1 %i.bq, %i.dk
  %or.cond382 = or i1 %or.cond37.not, %brmerge.not
  br i1 %or.cond382, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %bb.gn

bb.p:                                             ; preds = %bb.o
  %i.dl = load i64, ptr %i.bt, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %._crit_edge3345

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190", %._crit_edge3345
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.dm = load i64, ptr %i.ab, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 3 uses
  %i.dn = load i64, ptr %i.bz, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 2 uses
  %.not.i38 = icmp ugt i64 %i.dm, %i.dn
  br i1 %.not.i38, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.dm, i64 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #22, !noalias !344
  unreachable

bb.s:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  %i.do = load ptr, ptr %i.ca, align 8, !alias.scope !342, !noalias !343, !nonnull !5, !noundef !5 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm ; 2 uses
  %i.dq = icmp ult i64 %.sroa.09.1, %i.an         ; 9 uses
  %i.dr = getelementptr i8, ptr %i.br, i64 %.sroa.09.1 ; 26 uses
  %i.ds = add i64 %.sroa.09.1, 1                  ; 29 uses
  %i.dt = add i64 %.sroa.09.1, 2                  ; 4 uses
  %.not.i29.i.i = icmp eq i64 %i.dt, 0            ; 3 uses
  %i.du = icmp ne i64 %i.ds, -1                   ; 3 uses
  %i.dv = icmp ult i64 %i.ds, %i.an               ; 24 uses
  %i.dw = getelementptr i8, ptr %i.br, i64 %i.ds  ; 26 uses
  %i.dx = icmp eq i64 %i.ds, %i.an                ; 9 uses
  %.not.i139 = icmp eq i64 %i.ds, 0               ; 18 uses
  br label %.outer

.outer:                                           ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189", %bb.s
  %.sroa.07.0.i.ph = phi ptr [ %i.dz, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ %i.do, %bb.s ] ; 2 uses
  %.sroa.3.0.i.ph = phi i32 [ %i.ek, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ undef, %bb.s ]
  %.sroa.0.0.i39.ph = phi i1 [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ false, %bb.s ]
  %i.dy = icmp eq ptr %.sroa.07.0.i.ph, %i.dp
  br i1 %i.dy, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit, label %.lr.ph1727

.lr.ph1727:                                       ; preds = %.outer, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
  %.sroa.07.0.i1726 = phi ptr [ %i.dz, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i ], [ %.sroa.07.0.i.ph, %.outer ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i1726, i64 4 ; 3 uses
  %i.ea = load i32, ptr %.sroa.07.0.i1726, align 4, !noalias !344, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.eb = load i64, ptr %i.cb, align 16, !noalias !346, !noundef !5 ; 2 uses
  %i.ec = zext i32 %i.ea to i64                   ; 7 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph1727
  %i.ee = load ptr, ptr %i.cc, align 8, !noalias !346, !nonnull !5, !noundef !5
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.ec ; 7 uses
  %i.eg = load i32, ptr %i.ef, align 8, !range !17, !noalias !346, !noundef !5
  switch i32 %i.eg, label %default.unreachable [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
    i32 4, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
    i32 5, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
    i32 6, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
    i32 7, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
    i32 8, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread
  ]

bb.u:                                             ; preds = %.lr.ph1727
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ec, i64 noundef %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !noalias !346
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.ei = call noundef zeroext i1 @_ZN14regex_automata3nfa8thompson3nfa10Transition7matches17h202f0f9260c3d5bbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.eh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %.sroa.09.1), !noalias !346
  br i1 %i.ei, label %bb.y, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

bb.w:                                             ; preds = %bb.t
  br i1 %i.dq, label %bb.cq, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

bb.x:                                             ; preds = %bb.t
  br i1 %i.dq, label %bb.ew, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread: ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !346, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.el = load i64, ptr %i.ce, align 8, !alias.scope !347, !noalias !344, !noundef !5
  %i.em = mul i64 %i.el, %i.ec                    ; 4 uses
  %i.en = load i64, ptr %i.ac, align 8, !alias.scope !347, !noalias !344, !noundef !5 ; 3 uses
  %i.eo = add i64 %i.em, %i.en                    ; 3 uses
  %i.ep = load i64, ptr %i.cf, align 8, !alias.scope !347, !noalias !344, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %i.eo, %i.em
  %.not.i185 = icmp ugt i64 %i.eo, %i.ep
  %or.cond.i186 = or i1 %i.eq, %.not.i185
  br i1 %or.cond.i186, label %bb.gl, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187, !prof !16

bb.y:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.er = load i64, ptr %i.ce, align 8, !alias.scope !348, !noalias !349, !noundef !5
  %i.es = mul i64 %i.er, %i.ec                    ; 4 uses
  %i.et = load i64, ptr %i.ac, align 8, !alias.scope !348, !noalias !349, !noundef !5 ; 7 uses
  %i.eu = add i64 %i.es, %i.et                    ; 3 uses
  %i.ev = load i64, ptr %i.cf, align 8, !alias.scope !348, !noalias !349, !noundef !5 ; 2 uses
  %i.ew = icmp ult i64 %i.eu, %i.es
  %.not.i73 = icmp ugt i64 %i.eu, %i.ev
  %or.cond.i74 = or i1 %i.ew, %.not.i73
  br i1 %or.cond.i74, label %bb.z, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit, !prof !16

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !350
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit: ; preds = %bb.y
  %i.ex = load ptr, ptr %i.cg, align 8, !alias.scope !348, !noalias !349, !nonnull !5, !noundef !5
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.es ; 3 uses
  %i.ez = load i32, ptr %i.eh, align 4, !noalias !349, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.fa = load i64, ptr %i.z, align 8, !alias.scope !353, !noalias !354, !noundef !5 ; 3 uses
  %i.fb = load i64, ptr %2, align 8, !range !18, !alias.scope !353, !noalias !354, !noundef !5
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.aa, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"

bb.aa:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !354
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit, %bb.aa
  %i.fd = load ptr, ptr %i.bw, align 8, !alias.scope !353, !noalias !354, !nonnull !5, !noundef !5
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.fa ; 2 uses
  store i32 0, ptr %i.fe, align 8, !noalias !355
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.ez, ptr %.sroa.4241.0..sroa_idx, align 4, !noalias !355
  %i.ff = add i64 %i.fa, 1                        ; 3 uses
  store i64 %i.ff, ptr %i.z, align 8, !alias.scope !353, !noalias !354
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1725.preheader

.lr.ph1725.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"
  %i.fh = shl i64 %i.et, 3
  br label %.lr.ph1725

.lr.ph1725:                                       ; preds = %.lr.ph1725.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i
  %i.fi = phi i64 [ %.pr, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i ], [ %i.ff, %.lr.ph1725.preheader ] ; 2 uses
  %i.fj = add nsw i64 %i.fi, -1                   ; 3 uses
  store i64 %i.fj, ptr %i.z, align 8, !alias.scope !356, !noalias !357
  %i.fk = load i64, ptr %2, align 8, !range !18, !alias.scope !356, !noalias !357, !noundef !5
  %i.fl = icmp samesign ult i64 %i.fj, %i.fk
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load ptr, ptr %i.bw, align 8, !alias.scope !356, !noalias !357, !nonnull !5, !noundef !5
  %i.fn = icmp samesign ult i64 %i.fi, 576460752303423489
  call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fj ; 3 uses
  %.sroa.04.0.copyload.i17.i.i = load i32, ptr %i.fo, align 8, !noalias !358
  %.sroa.45.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %.sroa.45.0.copyload.i19.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i18.i.i, align 4, !noalias !358 ; 4 uses
  %.sroa.56.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.56.0.copyload.i21.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i20.i.i, align 8, !noalias !358
  %i.fp = trunc i32 %.sroa.04.0.copyload.i17.i.i to i1
  br i1 %i.fp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph1725
  %i.fq = zext i32 %.sroa.45.0.copyload.i19.i.i to i64 ; 3 uses
  %i.fr = icmp ugt i64 %i.et, %i.fq
  br i1 %i.fr, label %bb.co, label %bb.cp

bb.ac:                                            ; preds = %.lr.ph1725
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %.sroa.45.0.copyload.i19.i.i, ptr %i.w, align 4, !noalias !360
  %i.fs = zext i32 %.sroa.45.0.copyload.i19.i.i to i64 ; 3 uses
  %i.ft = load i64, ptr %i.ci, align 8, !alias.scope !361, !noalias !362, !noundef !5 ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, %i.fs
  br i1 %i.fu, label %.lr.ph1718, label %._crit_edge1719

.lr.ph1718:                                       ; preds = %bb.ac, %.backedge
  %i.fv = phi i64 [ %i.kx, %.backedge ], [ %i.fs, %bb.ac ] ; 5 uses
  %i.fw = phi i32 [ %.sroa.0.0.i.i.i.be, %.backedge ], [ %.sroa.45.0.copyload.i19.i.i, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.fx = load ptr, ptr %i.cj, align 8, !alias.scope !364, !noalias !362, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fv
  %i.fz = load i32, ptr %i.fy, align 4, !noalias !365, !noundef !5
  %i.ga = zext i32 %i.fz to i64                   ; 4 uses
  %i.gb = load i64, ptr %i.ae, align 8, !alias.scope !364, !noalias !362, !noundef !5 ; 5 uses
  %i.gc = icmp ugt i64 %i.gb, %i.ga
  %.pre3344 = load i64, ptr %i.ck, align 8, !noalias !362 ; 5 uses
  br i1 %i.gc, label %bb.ad, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread

._crit_edge1719:                                  ; preds = %bb.ac, %.backedge
  %.lcssa723 = phi i64 [ %i.kx, %.backedge ], [ %i.fs, %bb.ac ]
end_hunk_0
begin_hunk_1_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a
  %i.zi = trunc nuw i8 %i.zh to i1
  br i1 %i.dv, label %bb.fy, label %.split334.a

.split334.a:                                      ; preds = %bb.fy, %bb.fx
  %.sroa.02.0.i175 = phi i1 [ %i.zo, %bb.fy ], [ true, %bb.fx ]
  %spec.select.i176 = select i1 %i.zi, i1 %.sroa.02.0.i175, i1 false
  br i1 %spec.select.i176, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

bb.fy:                                            ; preds = %bb.fx
  %i.zj = load i8, ptr %i.dw, align 1, !alias.scope !469, !noundef !5
  %i.zk = zext i8 %i.zj to i64
  %i.zl = getelementptr inbounds nuw i8, ptr @79, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !range !12, !noalias !469, !noundef !5
  %i.zn = trunc nuw i8 %i.zm to i1
  %i.zo = xor i1 %i.zn, true
  br label %.split334.a

.split336:                                        ; preds = %bb.fo
  %i.zp = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %i.ds)
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split335:                                        ; preds = %bb.fo
  %i.zr = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %i.ds)
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split327.a:                                      ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.zt = load i8, ptr %i.dr, align 1, !alias.scope !470, !noundef !5
  %i.zu = zext i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @79, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !range !12, !noalias !470, !noundef !5
  %i.zx = trunc nuw i8 %i.zw to i1
  br i1 %i.zx, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

bb.fz:                                            ; preds = %bb.fo
  br i1 %i.dv, label %.split331, label %.backedge384

.split332:                                        ; preds = %bb.fo
  %i.zy = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %i.ds)
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split326:                                        ; preds = %bb.fo
  %i.aaa = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.br, i64 noundef %i.an, i64 noundef %i.ds)
  %i.aab = trunc nuw i8 %i.aaa to i1
  br i1 %i.aab, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split328:                                        ; preds = %bb.fo
  %i.aac = load i8, ptr %i.dr, align 1, !alias.scope !463, !noalias !471, !noundef !5
  %i.aad = load i8, ptr %i.cd, align 16, !alias.scope !462, !noalias !472, !noundef !5
  %i.aae = icmp eq i8 %i.aac, %i.aad
  br i1 %i.aae, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split330.a:                                      ; preds = %bb.fp
  %i.aaf = load i8, ptr %i.dw, align 1, !alias.scope !463, !noalias !471, !noundef !5
  %i.aag = load i8, ptr %i.cd, align 16, !alias.scope !462, !noalias !472, !noundef !5
  %i.aah = icmp eq i8 %i.aaf, %i.aag
  br i1 %i.aah, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split331:                                        ; preds = %bb.fz
  %i.aai = load i8, ptr %i.dw, align 1, !alias.scope !463, !noalias !471, !noundef !5
  %i.aaj = zext i8 %i.aai to i64
  %i.aak = getelementptr inbounds nuw i8, ptr @79, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !range !12, !noalias !473, !noundef !5
  %i.aam = trunc nuw i8 %i.aal to i1
  br i1 %i.aam, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63: ; preds = %bb.fu
  %i.aan = trunc nuw i8 %i.yb to i1
  br i1 %i.aan, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.backedge384:                                     ; preds = %.split3490, %bb.gd, %bb.gh, %bb.ft, %bb.fs, %bb.fq, %bb.fz, %bb.fr, %bb.fp, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183.a", %bb.ge, %.split323, %.split324.a, %.split325.a, %.split326, %.split327.a, %.split328, %.split329.a, %.split330.a, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167, %.split331, %.split332, %.split333.a, %.split334.a, %.split335, %.split336, %.split337, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173
  %.sroa.0.0.i28.i.i.be = phi i32 [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63 ], [ %i.abl, %bb.ge ], [ %i.aau, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183.a" ], [ %i.xs, %bb.ft ], [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173 ], [ %i.xs, %.split323 ], [ %i.xs, %.split324.a ], [ %i.xs, %.split325.a ], [ %i.xs, %.split326 ], [ %i.xs, %.split327.a ], [ %i.xs, %.split328 ], [ %i.xs, %.split329.a ], [ %i.xs, %.split330.a ], [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167 ], [ %i.xs, %.split331 ], [ %i.xs, %.split332 ], [ %i.xs, %.split333.a ], [ %i.xs, %.split334.a ], [ %i.xs, %.split335 ], [ %i.xs, %.split336 ], [ %i.xs, %.split337 ], [ %i.xs, %bb.fp ], [ %i.xs, %bb.fr ], [ %i.xs, %bb.fz ], [ %i.xs, %bb.fq ], [ %i.xs, %bb.fs ], [ %i.abe, %bb.gh ], [ %i.abe, %bb.gd ], [ %i.xs, %.split3490 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.0.0.i28.i.i.be, ptr %i.m, align 4, !noalias !474
  %i.aao = zext i32 %.sroa.0.0.i28.i.i.be to i64  ; 3 uses
  %i.aap = load i64, ptr %i.ci, align 8, !alias.scope !475, !noalias !450, !noundef !5 ; 2 uses
  %i.aaq = icmp ugt i64 %i.aap, %i.aao
  br i1 %i.aaq, label %.lr.ph1699, label %.split1697._crit_edge

bb.ga:                                            ; preds = %bb.fj
  %i.aar = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !noalias !450, !noundef !5 ; 2 uses
  %.not11.i30.i.i = icmp eq i64 %i.aas, 0
  br i1 %.not11.i30.i.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %bb.ge

bb.gb:                                            ; preds = %bb.fj
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.aau = load i32, ptr %i.aat, align 4, !noalias !450, !noundef !5
  %i.aav = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.aaw = load i32, ptr %i.aav, align 8, !noalias !450, !noundef !5
  %i.aax = load i64, ptr %i.z, align 8, !alias.scope !476, !noalias !477, !noundef !5 ; 3 uses
  %i.aay = load i64, ptr %2, align 8, !range !18, !alias.scope !476, !noalias !477, !noundef !5
  %i.aaz = icmp eq i64 %i.aax, %i.aay
  br i1 %i.aaz, label %bb.gc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183.a"

bb.gc:                                            ; preds = %bb.gb
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !477
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183.a"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183.a": ; preds = %bb.gb, %bb.gc
  %i.aba = load ptr, ptr %i.bw, align 8, !alias.scope !476, !noalias !477, !nonnull !5, !noundef !5
  %i.abb = getelementptr inbounds nuw [16 x i8], ptr %i.aba, i64 %i.aax ; 2 uses
  store i32 0, ptr %i.abb, align 8, !noalias !450
  %.sroa.4256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  store i32 %i.aaw, ptr %.sroa.4256.0..sroa_idx, align 4, !noalias !450
  %i.abc = add i64 %i.aax, 1
  store i64 %i.abc, ptr %i.z, align 8, !alias.scope !476, !noalias !477
  br label %.backedge384

bb.gd:                                            ; preds = %bb.fj
  %i.abd = getelementptr inbounds nuw i8, ptr %i.xf, i64 4
  %i.abe = load i32, ptr %i.abd, align 4, !noalias !450, !noundef !5 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.abg = load i32, ptr %i.abf, align 8, !noalias !450, !noundef !5 ; 2 uses
  %i.abh = zext i32 %i.abg to i64                 ; 2 uses
  %i.abi = icmp ugt i64 %i.uv, %i.abh
  br i1 %i.abi, label %bb.gf, label %.backedge384

bb.ge:                                            ; preds = %bb.ga
  %i.abj = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !noalias !450, !nonnull !5, !noundef !5 ; 3 uses
  %i.abl = load i32, ptr %i.abk, align 4, !noalias !450, !noundef !5
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abn = getelementptr [4 x i8], ptr %i.abk, i64 %i.aas
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.abm, ptr noundef %i.abn), !noalias !450
  br label %.backedge384

bb.gf:                                            ; preds = %bb.gd
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.abh ; 2 uses
  %i.abp = load i64, ptr %i.abo, align 8, !alias.scope !447, !noalias !478, !noundef !5
  %i.abq = load i64, ptr %i.z, align 8, !alias.scope !479, !noalias !480, !noundef !5 ; 3 uses
  %i.abr = load i64, ptr %2, align 8, !range !18, !alias.scope !479, !noalias !480, !noundef !5
  %i.abs = icmp eq i64 %i.abq, %i.abr
  br i1 %i.abs, label %bb.gg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184"

bb.gg:                                            ; preds = %bb.gf
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !480
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184": ; preds = %bb.gf, %bb.gg
  %i.abt = load ptr, ptr %i.bw, align 8, !alias.scope !479, !noalias !480, !nonnull !5, !noundef !5
  %i.abu = getelementptr inbounds nuw [16 x i8], ptr %i.abt, i64 %i.abq ; 3 uses
  store i32 1, ptr %i.abu, align 8, !noalias !450
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abu, i64 4
  store i32 %i.abg, ptr %.sroa.4259.0..sroa_idx, align 4, !noalias !450
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  store i64 %i.abp, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !450
  %i.abv = add i64 %i.abq, 1
  store i64 %i.abv, ptr %i.z, align 8, !alias.scope !479, !noalias !480
  br i1 %.not.i29.i.i, label %bb.gi, label %bb.gh, !prof !8

bb.gh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184"
  call void @llvm.assume(i1 %i.du)
  store i64 %i.dt, ptr %i.abo, align 8, !alias.scope !447, !noalias !478
  br label %.backedge384

bb.gi:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !450
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i: ; preds = %bb.fw, %bb.fo, %bb.ft, %bb.fq, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63, %bb.ga, %.split323, %.split324.a, %.split325.a, %.split326, %.split327.a, %.split328, %.split329.a, %.split330.a, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167, %.split331, %.split332, %.split333.a, %.split334.a, %.split335, %.split336, %.split337, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173, %.split3490, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit154", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit50, %bb.gj
  %.pr315 = load i64, ptr %i.z, align 8, !alias.scope !445, !noalias !446 ; 2 uses
  %i.abw = icmp eq i64 %.pr315, 0
  br i1 %i.abw, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1705

bb.gj:                                            ; preds = %bb.fc
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.vr
  store i64 %.sroa.56.0.copyload.i.i.i, ptr %i.abx, align 8, !alias.scope !441, !noalias !481
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

bb.gk:                                            ; preds = %bb.fc
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.vr, i64 noundef %i.uv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !358
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, %.lr.ph6212, %bb.cr, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, %bb.cq, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit147", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit106", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit", %bb.ex, %bb.x, %bb.w, %bb.v, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.aby = icmp eq ptr %i.dz, %i.dp
  br i1 %i.aby, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit, label %.lr.ph1727

bb.gl:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.em, i64 noundef %i.eo, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !482
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread
  %i.abz = load ptr, ptr %i.cg, align 8, !alias.scope !347, !noalias !344, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %.not.i188 = icmp eq i64 %5, %i.en
  br i1 %.not.i188, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189", label %bb.gm, !prof !6

bb.gm:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %5, i64 noundef %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22, !noalias !485
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull readonly align 8 %i.aca, i64 %i.cn, i1 false), !alias.scope !486, !noalias !487
  br i1 %.sroa.0.0, label %.outer, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit: ; preds = %.outer, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
  br i1 %.sroa.0.0.i39.ph, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread, label %bb.jg

bb.gn:                                            ; preds = %._crit_edge3345
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.acb = load i64, ptr %i.bu, align 8, !alias.scope !488, !noundef !5 ; 5 uses
  %i.acc = icmp ult i64 %i.acb, 1152921504606846976
  call void @llvm.assume(i1 %i.acc)
  %i.acd = load i64, ptr %i.af, align 8, !alias.scope !488, !noundef !5 ; 8 uses
  %i.ace = sub i64 %i.acb, %i.acd                 ; 2 uses
  %i.acf = icmp ult i64 %i.acb, %i.acd
  br i1 %i.acf, label %bb.go, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable10all_absent17h9d0a159170a6726cE.exit, !prof !8

bb.go:                                            ; preds = %bb.gn
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.ace, i64 noundef %i.acb, i64 noundef %i.acb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !488
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable10all_absent17h9d0a159170a6726cE.exit: ; preds = %bb.gn
  %i.acg = load ptr, ptr %i.bv, align 8, !alias.scope !488, !nonnull !5, !noundef !5
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %i.ace ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.aci = load i64, ptr %i.z, align 8, !alias.scope !491, !noalias !492, !noundef !5 ; 3 uses
  %i.acj = load i64, ptr %2, align 8, !range !18, !alias.scope !491, !noalias !492, !noundef !5
  %i.ack = icmp eq i64 %i.aci, %i.acj
  br i1 %i.ack, label %bb.gp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190"

bb.gp:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable10all_absent17h9d0a159170a6726cE.exit
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !492
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable10all_absent17h9d0a159170a6726cE.exit, %bb.gp
  %i.acl = load ptr, ptr %i.bw, align 8, !alias.scope !491, !noalias !492, !nonnull !5, !noundef !5
  %i.acm = getelementptr inbounds nuw [16 x i8], ptr %i.acl, i64 %i.aci ; 2 uses
  store i32 0, ptr %i.acm, align 8, !noalias !493
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  store i32 %.sroa.5.1.i.ph268, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !493
  %i.acn = add i64 %i.aci, 1                      ; 3 uses
  store i64 %i.acn, ptr %i.z, align 8, !alias.scope !491, !noalias !492
  %i.aco = icmp eq i64 %i.acn, 0
  br i1 %i.aco, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %.lr.ph1696

.lr.ph1696:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190"
  %i.acp = add i64 %.sroa.09.1, 1                 ; 2 uses
  %.not.i = icmp eq i64 %i.acp, 0
  %i.acq = icmp ne i64 %.sroa.09.1, -1
  %i.acr = icmp ult i64 %.sroa.09.1, %i.an        ; 9 uses
  %i.acs = getelementptr i8, ptr %i.br, i64 %.sroa.09.1 ; 10 uses
  %.not.i223 = icmp eq i64 %.sroa.09.1, 0         ; 9 uses
  %i.act = add i64 %.sroa.09.1, -1                ; 9 uses
  %i.acu = icmp ult i64 %i.act, %i.an             ; 7 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.act ; 7 uses
  %i.acw = icmp eq i64 %.sroa.09.1, %i.an         ; 3 uses
  %i.acx = getelementptr i8, ptr %i.acs, i64 -1
  %i.acy = shl nuw nsw i64 %i.acd, 3
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1696, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit
  %i.acz = phi i64 [ %i.acn, %.lr.ph1696 ], [ %.pr342, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit ] ; 2 uses
  %i.ada = add nsw i64 %i.acz, -1                 ; 3 uses
  store i64 %i.ada, ptr %i.z, align 8, !alias.scope !489, !noalias !493
  %i.adb = load i64, ptr %2, align 8, !range !18, !alias.scope !489, !noalias !493, !noundef !5
  %i.adc = icmp samesign ult i64 %i.ada, %i.adb
  call void @llvm.assume(i1 %i.adc)
  %i.add = load ptr, ptr %i.bw, align 8, !alias.scope !489, !noalias !493, !nonnull !5, !noundef !5
  %i.ade = icmp samesign ult i64 %i.acz, 576460752303423489
  call void @llvm.assume(i1 %i.ade)
  %i.adf = getelementptr inbounds nuw [16 x i8], ptr %i.add, i64 %i.ada ; 3 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.adf, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adf, i64 4
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8
  %i.adg = trunc i32 %.sroa.04.0.copyload.i to i1
  br i1 %i.adg, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.adh = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.adi = icmp ugt i64 %i.acd, %i.adh
  br i1 %i.adi, label %bb.je, label %bb.jf

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.45.0.copyload.i, ptr %i.h, align 4, !noalias !495
  %i.adj = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.adk = load i64, ptr %i.bx, align 8, !alias.scope !496, !noalias !497, !noundef !5 ; 2 uses
  %i.adl = icmp ugt i64 %i.adk, %i.adj
  br i1 %i.adl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.gs, %.backedge388
  %i.adm = phi i64 [ %i.aio, %.backedge388 ], [ %i.adj, %bb.gs ] ; 5 uses
  %i.adn = phi i32 [ %.sroa.0.0.i.be, %.backedge388 ], [ %.sroa.45.0.copyload.i, %bb.gs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.ado = load ptr, ptr %i.by, align 8, !alias.scope !499, !noalias !497, !nonnull !5, !noundef !5
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.adm
  %i.adq = load i32, ptr %i.adp, align 4, !noalias !500, !noundef !5
  %i.adr = zext i32 %i.adq to i64                 ; 4 uses
  %i.ads = load i64, ptr %i.ab, align 8, !alias.scope !499, !noalias !497, !noundef !5 ; 5 uses
  %i.adt = icmp ugt i64 %i.ads, %i.adr
  %.pre = load i64, ptr %i.bz, align 8, !noalias !497 ; 5 uses
  br i1 %i.adt, label %bb.gt, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread

._crit_edge:                                      ; preds = %bb.gs, %.backedge388
  %.lcssa418 = phi i64 [ %i.aio, %.backedge388 ], [ %i.adj, %bb.gs ]
  %.lcssa398 = phi i64 [ %i.aip, %.backedge388 ], [ %i.adk, %bb.gs ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa418, i64 noundef %.lcssa398, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !500
  unreachable

bb.gt:                                            ; preds = %.lr.ph
  %i.adu = icmp ugt i64 %.pre, %i.adr
  br i1 %i.adu, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.adr, i64 noundef %.pre, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !500
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192: ; preds = %bb.gt
  %i.adv = load ptr, ptr %i.ca, align 8, !alias.scope !499, !noalias !497, !nonnull !5, !noundef !5
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adv, i64 %i.adr
  %i.adx = load i32, ptr %i.adw, align 4, !noalias !500, !noundef !5
  %i.ady = icmp eq i32 %i.adx, %i.adn
  br i1 %i.ady, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit55, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread: ; preds = %.lr.ph, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192
  store i64 %i.ads, ptr %i.g, align 8, !noalias !501
  %i.adz = icmp ult i64 %.pre, 2305843009213693952
  call void @llvm.assume(i1 %i.adz), !noalias !497
  %i.aea = icmp ult i64 %i.ads, %.pre
  br i1 %i.aea, label %bb.gw, label %bb.gv, !prof !6

bb.gv:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !501
  store i64 %.pre, ptr %i.e, align 8, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !501
  store ptr %i.g, ptr %i.d, align 8, !noalias !501
  %.sroa.43.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i51, align 8, !noalias !501
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.aeb, align 8, !noalias !501
  %.sroa.47.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i52, align 8, !noalias !501
  %i.aec = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.h, ptr %i.aec, align 8, !noalias !501
  %.sroa.411.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i53, align 8, !noalias !501
  store ptr @66, ptr %i.f, align 8, !noalias !501
  %i.aed = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 3, ptr %i.aed, align 8, !noalias !501
  %i.aee = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.aee, align 8, !noalias !501
  %i.aef = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.aef, align 8, !noalias !501
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 3, ptr %i.aeg, align 8, !noalias !501
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !497
  unreachable

bb.gw:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread
  %i.aeh = and i64 %i.ads, 4294967295
  %i.aei = load ptr, ptr %i.ca, align 8, !alias.scope !498, !noalias !497, !nonnull !5, !noundef !5
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.aeh
  store i32 %i.adn, ptr %i.aej, align 4, !noalias !497
  %i.aek = zext i32 %i.adn to i64                 ; 3 uses
  %i.ael = load i64, ptr %i.bx, align 8, !alias.scope !498, !noalias !497, !noundef !5 ; 2 uses
  %i.aem = icmp ugt i64 %i.ael, %i.aek
  br i1 %i.aem, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aek, i64 noundef %i.ael, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22, !noalias !497
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit55: ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.gy:                                            ; preds = %bb.gw
  %i.aen = trunc i64 %i.ads to i32
  %i.aeo = load ptr, ptr %i.by, align 8, !alias.scope !498, !noalias !497, !nonnull !5, !noundef !5
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %i.aek
  store i32 %i.aen, ptr %i.aep, align 4, !noalias !497
  %i.aeq = load i64, ptr %i.ab, align 8, !alias.scope !498, !noalias !497, !noundef !5
  %i.aer = add i64 %i.aeq, 1
  store i64 %i.aer, ptr %i.ab, align 8, !alias.scope !498, !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aes = load i64, ptr %i.cb, align 16, !noalias !497, !noundef !5 ; 2 uses
  %i.aet = icmp ugt i64 %i.aes, %i.adm
  br i1 %i.aet, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.aeu = load ptr, ptr %i.cc, align 8, !noalias !497, !nonnull !5, !noundef !5
  %i.aev = getelementptr inbounds nuw [24 x i8], ptr %i.aeu, i64 %i.adm ; 9 uses
  %i.aew = load i32, ptr %i.aev, align 8, !range !17, !noalias !497, !noundef !5
  switch i32 %i.aew, label %default.unreachable [
end_hunk_1
begin_hunk_2_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12new_from_nfa17h2b52529be54f1ddeE:bb.a
bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.m:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.thread:                                          ; preds = %bb.n, %bb.o, %bb.k
  %.pn7 = phi { ptr, i32 } [ %i.f, %bb.n ], [ %i.z, %bb.k ], [ %i.f, %bb.o ]
  resume { ptr, i32 } %.pn7

bb.n:                                             ; preds = %bb.b
  %i.ac = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !596
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4d593ceb2c0bc2d6E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.thread unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15create_captures17h0158992ad872a835E(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  tail call void @_ZN14regex_automata4util8captures8Captures3all17h3e9096aea26d215bE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull %i.f)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM16search_slots_imp17h3f0af0cf833d9760E(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 386
  %i.f = load i8, ptr %i.e, align 2, !range !12, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  %i.h = load i64, ptr %0, align 8, !range !15, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.j, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 387
  %i.k = load i8, ptr %i.j, align 1, !range !12, !noundef !5
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef %5)
  %i.l = load i64, ptr %0, align 8, !range !15, !noundef !5
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = trunc nuw i8 %i.k to i1
  br i1 %i.n, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %5, ptr %i.u, align 8
  call void @_ZN14regex_automata4util5empty15skip_splits_fwd17h07e2eba4e519bbb1E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, i64 noundef %i.p, i32 noundef %i.r, i64 noundef %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.v = load i64, ptr %i.c, align 8, !range !20, !alias.scope !603, !noalias !602, !noundef !5
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.g, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he2309326797fcbf4E.exit", !prof !8

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !604
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !603, !noalias !602, !nonnull !5, !align !13, !noundef !5
  store ptr %i.y, ptr %i.a, align 8, !noalias !604
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #22
          to label %bb.h unwind label %bb.i, !noalias !604

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !605, !noalias !604, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #25, !noalias !606
  resume { ptr, i32 } %i.z

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he2309326797fcbf4E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.b, %bb.d, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17he2309326797fcbf4E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 8 uses
  %i.b = alloca [256 x i8], align 1               ; 8 uses
  %i.c = alloca [256 x i8], align 1               ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 3 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [4 x i8], align 4                 ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [4 x i8], align 4                 ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 3 uses
  %i.y = alloca [48 x i8], align 8                ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 31 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 13 uses
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !5 ; 54 uses
  %.not = icmp eq i64 %i.am, -1
  br i1 %.not, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr @35, ptr %i.y, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 0, ptr %i.aq, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i8, ptr %i.ar, align 8, !range !10, !noundef !5 ; 2 uses
  %.not17 = icmp ne i8 %i.as, 2
  %4 = and i8 %i.as, 1
  %i.at = icmp eq i8 %4, 0
  %.sroa.0.0 = and i1 %.not17, %i.at              ; 2 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %.val50 = load i32, ptr %2, align 8, !range !11, !noundef !5
  switch i32 %.val50, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

default.unreachable:                              ; preds = %.lr.ph5003, %bb.ab, %bb.w, %bb.hu, %bb.hp, %bb.fp, %bb.fk, %bb.cu, %bb.cp, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.av = load i32, ptr %i.au, align 16, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 372
  %i.ax = load i32, ptr %i.aw, align 4, !noundef !5
  %i.ay = icmp eq i32 %i.av, %i.ax
  br label %.lr.ph1424

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.ba = load i32, ptr %i.az, align 16, !noundef !5
  br label %.lr.ph1424

bb.g:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val51 = load i32, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5
  %i.be = zext i32 %.val51 to i64                 ; 2 uses
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.be
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !5
  br label %.lr.ph1424

.lr.ph1424:                                       ; preds = %bb.f, %bb.e, %bb.h
  %.sroa.5.1.i.ph = phi i32 [ %i.ba, %bb.f ], [ %i.av, %bb.e ], [ %i.bj, %bb.h ]
  %.sroa.0.1.i.ph = phi i1 [ true, %bb.f ], [ %i.ay, %bb.e ], [ true, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !5, !align !7 ; 32 uses
  %.not25.i = icmp eq i64 %i.am, 0                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 386
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 387
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 8 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ck = load i8, ptr %i.cj, align 8, !range !12
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.pre = load i64, ptr %i.bk, align 8
  br label %bb.i

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit, %bb.j, %bb.iw, %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph1424, %bb.iw
  %i.cn = phi i64 [ 0, %.lr.ph1424 ], [ %.sroa.02.0.copyload.i.i.i.6.i.i, %bb.iw ]
  %i.co = phi i64 [ %.pre, %.lr.ph1424 ], [ %i.aij, %bb.iw ]
  %.sroa.0.02381422 = phi i64 [ %i.ah, %.lr.ph1424 ], [ %spec.select350, %bb.iw ] ; 29 uses
  %i.cp = icmp uge i64 %.sroa.0.02381422, %i.aj   ; 2 uses
  %not. = xor i1 %i.cp, true
  %i.cq = zext i1 %not. to i64
  %spec.select350 = add nuw i64 %.sroa.0.02381422, %i.cq ; 2 uses
  %i.cr = icmp eq i64 %i.co, 0
  %i.cs = icmp eq i64 %i.cn, 0
  %brmerge = or i1 %.sroa.0.0, %i.cr              ; 3 uses
  br i1 %i.cs, label %bb.j, label %._crit_edge2734

._crit_edge2734:                                  ; preds = %bb.i
  br i1 %brmerge, label %bb.l, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit

bb.j:                                             ; preds = %bb.i
  %brmerge.not = xor i1 %brmerge, true
  %i.ct = icmp ugt i64 %.sroa.0.02381422, %i.ah
  %or.cond7 = select i1 %.sroa.0.1.i.ph, i1 %i.ct, i1 false
  %or.cond351 = select i1 %brmerge.not, i1 true, i1 %or.cond7
  br i1 %or.cond351, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %brmerge, label %bb.l, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit

bb.l:                                             ; preds = %._crit_edge2734, %bb.k
  %i.cu = load i64, ptr %i.z, align 8, !alias.scope !855, !noalias !856, !noundef !5 ; 3 uses
  %i.cv = load i64, ptr %1, align 8, !range !18, !alias.scope !855, !noalias !856, !noundef !5
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.m, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"

bb.m:                                             ; preds = %bb.l
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !856
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit": ; preds = %bb.l, %bb.m
  %i.cx = load ptr, ptr %i.bl, align 8, !alias.scope !855, !noalias !856, !nonnull !5, !noundef !5
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.cu ; 2 uses
  store i32 0, ptr %i.cy, align 8, !noalias !857
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %.sroa.5.1.i.ph, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !857
  %i.cz = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cz, ptr %i.z, align 8, !alias.scope !855, !noalias !856
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %.lr.ph1387

.lr.ph1387:                                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit"
  %i.db = icmp ult i64 %.sroa.0.02381422, %i.am   ; 9 uses
  %i.dc = getelementptr i8, ptr %i.bu, i64 %.sroa.0.02381422 ; 10 uses
  %.not.i76 = icmp eq i64 %.sroa.0.02381422, 0    ; 9 uses
  %i.dd = add i64 %.sroa.0.02381422, -1           ; 9 uses
  %i.de = icmp ult i64 %i.dd, %i.am               ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dd ; 7 uses
  %i.dg = icmp eq i64 %.sroa.0.02381422, %i.am    ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph1387, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit
  %i.di = phi i64 [ %i.cz, %.lr.ph1387 ], [ %.pr, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit ] ; 2 uses
  %i.dj = add nsw i64 %i.di, -1                   ; 3 uses
  store i64 %i.dj, ptr %i.z, align 8, !alias.scope !858, !noalias !857
  %i.dk = load i64, ptr %1, align 8, !range !18, !alias.scope !858, !noalias !857, !noundef !5
  %i.dl = icmp samesign ult i64 %i.dj, %i.dk
  call void @llvm.assume(i1 %i.dl)
  %i.dm = load ptr, ptr %i.bl, align 8, !alias.scope !858, !noalias !857, !nonnull !5, !noundef !5
  %i.dn = icmp samesign ult i64 %i.di, 576460752303423489
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dj ; 2 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.do, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4 ; 4 uses
  %i.dp = trunc i32 %.sroa.04.0.copyload.i to i1
  br i1 %i.dp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dq = zext i32 %.sroa.45.0.copyload.i to i64
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dq, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.45.0.copyload.i, ptr %i.h, align 4, !noalias !859
  %i.dr = zext i32 %.sroa.45.0.copyload.i to i64  ; 3 uses
  %i.ds = load i64, ptr %i.bm, align 8, !alias.scope !860, !noalias !861, !noundef !5 ; 2 uses
  %i.dt = icmp ugt i64 %i.ds, %i.dr
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.p, %.backedge371.a
  %i.du = phi i64 [ %i.iu, %.backedge371.a ], [ %i.dr, %bb.p ] ; 5 uses
  %i.dv = phi i32 [ %.sroa.0.0.i19.be, %.backedge371.a ], [ %.sroa.45.0.copyload.i, %bb.p ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.dw = load ptr, ptr %i.bn, align 8, !alias.scope !863, !noalias !861, !nonnull !5, !noundef !5
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.du
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !864, !noundef !5
  %i.dz = zext i32 %i.dy to i64                   ; 4 uses
  %i.ea = load i64, ptr %i.ab, align 8, !alias.scope !863, !noalias !861, !noundef !5 ; 5 uses
  %i.eb = icmp ugt i64 %i.ea, %i.dz
  %.pre2730 = load i64, ptr %i.bo, align 8, !noalias !861 ; 5 uses
  br i1 %i.eb, label %bb.q, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread

._crit_edge:                                      ; preds = %bb.p, %.backedge371.a
  %.lcssa400 = phi i64 [ %i.iu, %.backedge371.a ], [ %i.dr, %bb.p ]
  %.lcssa381 = phi i64 [ %i.iv, %.backedge371.a ], [ %i.ds, %bb.p ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa400, i64 noundef %.lcssa381, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !864
  unreachable

bb.q:                                             ; preds = %.lr.ph
  %i.ec = icmp ugt i64 %.pre2730, %i.dz
  br i1 %i.ec, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dz, i64 noundef %.pre2730, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !864
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit: ; preds = %bb.q
  %i.ed = load ptr, ptr %i.bp, align 8, !alias.scope !863, !noalias !861, !nonnull !5, !noundef !5
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dz
  %i.ef = load i32, ptr %i.ee, align 4, !noalias !864, !noundef !5
  %i.eg = icmp eq i32 %i.ef, %i.dv
  br i1 %i.eg, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit38, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread: ; preds = %.lr.ph, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit
  store i64 %i.ea, ptr %i.g, align 8, !noalias !865
  %i.eh = icmp ult i64 %.pre2730, 2305843009213693952
  call void @llvm.assume(i1 %i.eh), !noalias !861
  %i.ei = icmp ult i64 %i.ea, %.pre2730
  br i1 %i.ei, label %bb.t, label %bb.s, !prof !6

bb.s:                                             ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !865
  store i64 %.pre2730, ptr %i.e, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !865
  store ptr %i.g, ptr %i.d, align 8, !noalias !865
  %.sroa.43.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i34, align 8, !noalias !865
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ej, align 8, !noalias !865
  %.sroa.47.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i35, align 8, !noalias !865
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.h, ptr %i.ek, align 8, !noalias !865
  %.sroa.411.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i36, align 8, !noalias !865
  store ptr @66, ptr %i.f, align 8, !noalias !865
  %i.el = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 3, ptr %i.el, align 8, !noalias !865
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.em, align 8, !noalias !865
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.en, align 8, !noalias !865
  %i.eo = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 3, ptr %i.eo, align 8, !noalias !865
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !861
  unreachable

bb.t:                                             ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread
  %i.ep = and i64 %i.ea, 4294967295
  %i.eq = load ptr, ptr %i.bp, align 8, !alias.scope !862, !noalias !861, !nonnull !5, !noundef !5
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  store i32 %i.dv, ptr %i.er, align 4, !noalias !861
  %i.es = zext i32 %i.dv to i64                   ; 3 uses
  %i.et = load i64, ptr %i.bm, align 8, !alias.scope !862, !noalias !861, !noundef !5 ; 2 uses
  %i.eu = icmp ugt i64 %i.et, %i.es
  br i1 %i.eu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.es, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22, !noalias !861
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit38: ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.v:                                             ; preds = %bb.t
  %i.ev = trunc i64 %i.ea to i32
  %i.ew = load ptr, ptr %i.bn, align 8, !alias.scope !862, !noalias !861, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.es
  store i32 %i.ev, ptr %i.ex, align 4, !noalias !861
  %i.ey = load i64, ptr %i.ab, align 8, !alias.scope !862, !noalias !861, !noundef !5
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.ab, align 8, !alias.scope !862, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fa = load i64, ptr %i.bq, align 16, !noalias !861, !noundef !5 ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, %i.du
  br i1 %i.fb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fc = load ptr, ptr %i.br, align 8, !noalias !861, !nonnull !5, !noundef !5
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.fc, i64 %i.du ; 8 uses
  %i.fe = load i32, ptr %i.fd, align 8, !range !17, !noalias !861, !noundef !5
  switch i32 %i.fe, label %default.unreachable [
    i32 0, label %bb.y
    i32 1, label %bb.y
    i32 2, label %bb.y
    i32 3, label %bb.ab
    i32 4, label %bb.bs
    i32 5, label %bb.bt
    i32 6, label %bb.bv
    i32 7, label %bb.y
    i32 8, label %bb.y
  ]

bb.x:                                             ; preds = %bb.v
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.du, i64 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !noalias !861
  unreachable
end_hunk_2
begin_hunk_3_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E:bb.a
  %i.afk = load i8, ptr %i.afj, align 1, !range !12, !noalias !1012, !noundef !5
  %i.afl = trunc nuw i8 %i.afk to i1
  br i1 %i.kg, label %bb.ie, label %.split339.a

.split339.a:                                      ; preds = %bb.ie, %bb.id
  %.sroa.02.0.i196 = phi i1 [ %i.afr, %bb.ie ], [ true, %bb.id ]
  %spec.select.i197 = select i1 %i.afl, i1 %.sroa.02.0.i196, i1 false
  br i1 %spec.select.i197, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

bb.ie:                                            ; preds = %bb.id
  %i.afm = load i8, ptr %i.kh, align 1, !alias.scope !1012, !noundef !5
  %i.afn = zext i8 %i.afm to i64
  %i.afo = getelementptr inbounds nuw i8, ptr @79, i64 %i.afn
  %i.afp = load i8, ptr %i.afo, align 1, !range !12, !noalias !1012, !noundef !5
  %i.afq = trunc nuw i8 %i.afp to i1
  %i.afr = xor i1 %i.afq, true
  br label %.split339.a

.split341:                                        ; preds = %bb.hu
  %i.afs = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.am, i64 noundef %i.kd)
  %i.aft = trunc nuw i8 %i.afs to i1
  br i1 %i.aft, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split340:                                        ; preds = %bb.hu
  %i.afu = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.am, i64 noundef %i.kd)
  %i.afv = trunc nuw i8 %i.afu to i1
  br i1 %i.afv, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split332.a:                                      ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.afw = load i8, ptr %i.kc, align 1, !alias.scope !1013, !noundef !5
  %i.afx = zext i8 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr @79, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1, !range !12, !noalias !1013, !noundef !5
  %i.aga = trunc nuw i8 %i.afz to i1
  br i1 %i.aga, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

bb.if:                                            ; preds = %bb.hu
  br i1 %i.kg, label %.split336, label %.backedge367

.split337:                                        ; preds = %bb.hu
  %i.agb = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.am, i64 noundef %i.kd)
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split331:                                        ; preds = %bb.hu
  %i.agd = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bu, i64 noundef %i.am, i64 noundef %i.kd)
  %i.age = trunc nuw i8 %i.agd to i1
  br i1 %i.age, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split333:                                        ; preds = %bb.hu
  %i.agf = load i8, ptr %i.kc, align 1, !alias.scope !1006, !noalias !1014, !noundef !5
  %i.agg = load i8, ptr %i.bs, align 16, !alias.scope !1005, !noalias !1015, !noundef !5
  %i.agh = icmp eq i8 %i.agf, %i.agg
  br i1 %i.agh, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split335.a:                                      ; preds = %bb.hv
  %i.agi = load i8, ptr %i.kh, align 1, !alias.scope !1006, !noalias !1014, !noundef !5
  %i.agj = load i8, ptr %i.bs, align 16, !alias.scope !1005, !noalias !1015, !noundef !5
  %i.agk = icmp eq i8 %i.agi, %i.agj
  br i1 %i.agk, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split336:                                        ; preds = %bb.if
  %i.agl = load i8, ptr %i.kh, align 1, !alias.scope !1006, !noalias !1014, !noundef !5
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @79, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !range !12, !noalias !1016, !noundef !5
  %i.agp = trunc nuw i8 %i.ago to i1
  br i1 %i.agp, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46: ; preds = %bb.ia
  %i.agq = trunc nuw i8 %i.aee to i1
  br i1 %i.agq, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.backedge367:                                     ; preds = %.split2872, %bb.ij, %bb.in, %bb.hz, %bb.hy, %bb.hw, %bb.if, %bb.hx, %bb.hv, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204.a", %bb.ik, %.split328, %.split329.a, %.split330.a, %.split331, %.split332.a, %.split333, %.split334.a, %.split335.a, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188, %.split336, %.split337, %.split338.a, %.split339.a, %.split340, %.split341, %.split342, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194
  %.sroa.0.0.i28.i.be = phi i32 [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46 ], [ %i.aho, %bb.ik ], [ %i.agx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204.a" ], [ %i.adv, %bb.hz ], [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194 ], [ %i.adv, %.split328 ], [ %i.adv, %.split329.a ], [ %i.adv, %.split330.a ], [ %i.adv, %.split331 ], [ %i.adv, %.split332.a ], [ %i.adv, %.split333 ], [ %i.adv, %.split334.a ], [ %i.adv, %.split335.a ], [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188 ], [ %i.adv, %.split336 ], [ %i.adv, %.split337 ], [ %i.adv, %.split338.a ], [ %i.adv, %.split339.a ], [ %i.adv, %.split340 ], [ %i.adv, %.split341 ], [ %i.adv, %.split342 ], [ %i.adv, %bb.hv ], [ %i.adv, %bb.hx ], [ %i.adv, %bb.if ], [ %i.adv, %bb.hw ], [ %i.adv, %bb.hy ], [ %i.ahh, %bb.in ], [ %i.ahh, %bb.ij ], [ %i.adv, %.split2872 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.0.0.i28.i.be, ptr %i.m, align 4, !noalias !1017
  %i.agr = zext i32 %.sroa.0.0.i28.i.be to i64    ; 3 uses
  %i.ags = load i64, ptr %i.cb, align 8, !alias.scope !1018, !noalias !993, !noundef !5 ; 2 uses
  %i.agt = icmp ugt i64 %i.ags, %i.agr
  br i1 %i.agt, label %.lr.ph1390, label %.split1388._crit_edge

bb.ig:                                            ; preds = %bb.hp
  %i.agu = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.agv = load i64, ptr %i.agu, align 8, !noalias !993, !noundef !5 ; 2 uses
  %.not11.i30.i = icmp eq i64 %i.agv, 0
  br i1 %.not11.i30.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %bb.ik

bb.ih:                                            ; preds = %bb.hp
  %i.agw = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.agx = load i32, ptr %i.agw, align 4, !noalias !993, !noundef !5
  %i.agy = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.agz = load i32, ptr %i.agy, align 8, !noalias !993, !noundef !5
  %i.aha = load i64, ptr %i.z, align 8, !alias.scope !1019, !noalias !1020, !noundef !5 ; 3 uses
  %i.ahb = load i64, ptr %1, align 8, !range !18, !alias.scope !1019, !noalias !1020, !noundef !5
  %i.ahc = icmp eq i64 %i.aha, %i.ahb
  br i1 %i.ahc, label %bb.ii, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204.a"

bb.ii:                                            ; preds = %bb.ih
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1020
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204.a"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204.a": ; preds = %bb.ih, %bb.ii
  %i.ahd = load ptr, ptr %i.bl, align 8, !alias.scope !1019, !noalias !1020, !nonnull !5, !noundef !5
  %i.ahe = getelementptr inbounds nuw [16 x i8], ptr %i.ahd, i64 %i.aha ; 2 uses
  store i32 0, ptr %i.ahe, align 8, !noalias !993
  %.sroa.4233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahe, i64 4
  store i32 %i.agz, ptr %.sroa.4233.0..sroa_idx, align 4, !noalias !993
  %i.ahf = add i64 %i.aha, 1
  store i64 %i.ahf, ptr %i.z, align 8, !alias.scope !1019, !noalias !1020
  br label %.backedge367

bb.ij:                                            ; preds = %bb.hp
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.adi, i64 4
  %i.ahh = load i32, ptr %i.ahg, align 4, !noalias !993, !noundef !5 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.ahj = load i32, ptr %i.ahi, align 8, !noalias !993, !noundef !5 ; 2 uses
  %i.ahk = zext i32 %i.ahj to i64                 ; 2 uses
  %i.ahl = icmp ugt i64 %i.aay, %i.ahk
  br i1 %i.ahl, label %bb.il, label %.backedge367

bb.ik:                                            ; preds = %bb.ig
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8, !noalias !993, !nonnull !5, !noundef !5 ; 3 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !noalias !993, !noundef !5
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahn, i64 4
  %i.ahq = getelementptr [4 x i8], ptr %i.ahn, i64 %i.agv
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.ahp, ptr noundef %i.ahq), !noalias !993
  br label %.backedge367

bb.il:                                            ; preds = %bb.ij
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.ahk ; 2 uses
  %i.ahs = load i64, ptr %i.ahr, align 8, !alias.scope !990, !noalias !1021, !noundef !5
  %i.aht = load i64, ptr %i.z, align 8, !alias.scope !1022, !noalias !1023, !noundef !5 ; 3 uses
  %i.ahu = load i64, ptr %1, align 8, !range !18, !alias.scope !1022, !noalias !1023, !noundef !5
  %i.ahv = icmp eq i64 %i.aht, %i.ahu
  br i1 %i.ahv, label %bb.im, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205"

bb.im:                                            ; preds = %bb.il
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1023
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205": ; preds = %bb.il, %bb.im
  %i.ahw = load ptr, ptr %i.bl, align 8, !alias.scope !1022, !noalias !1023, !nonnull !5, !noundef !5
  %i.ahx = getelementptr inbounds nuw [16 x i8], ptr %i.ahw, i64 %i.aht ; 3 uses
  store i32 1, ptr %i.ahx, align 8, !noalias !993
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  store i32 %i.ahj, ptr %.sroa.4236.0..sroa_idx, align 4, !noalias !993
  %.sroa.5237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  store i64 %i.ahs, ptr %.sroa.5237.0..sroa_idx, align 8, !noalias !993
  %i.ahy = add i64 %i.aht, 1
  store i64 %i.ahy, ptr %i.z, align 8, !alias.scope !1022, !noalias !1023
  br i1 %.not.i29.i, label %bb.io, label %bb.in, !prof !8

bb.in:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205"
  call void @llvm.assume(i1 %i.kf)
  store i64 %i.ke, ptr %i.ahr, align 8, !alias.scope !990, !noalias !1021
  br label %.backedge367

bb.io:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !993
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i: ; preds = %bb.ic, %bb.hu, %bb.hz, %bb.hw, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46, %bb.ig, %.split328, %.split329.a, %.split330.a, %.split331, %.split332.a, %.split333, %.split334.a, %.split335.a, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188, %.split336, %.split337, %.split338.a, %.split339.a, %.split340, %.split341, %.split342, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194, %.split2872, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit175", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit33, %bb.ip
  %.pr320 = load i64, ptr %i.z, align 8, !alias.scope !988, !noalias !989 ; 2 uses
  %i.ahz = icmp eq i64 %.pr320, 0
  br i1 %i.ahz, label %.backedge372, label %.lr.ph1396

bb.ip:                                            ; preds = %bb.hi
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.abd, i64 %i.abu
  store i64 %.sroa.56.0.copyload.i.i, ptr %i.aia, align 8, !alias.scope !984, !noalias !1024
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

bb.iq:                                            ; preds = %bb.hi
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.abu, i64 noundef %i.aay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !901
  unreachable

bb.ir:                                            ; preds = %.lr.ph5003
  %i.aib = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.aic = load i32, ptr %i.aib, align 4, !noalias !890, !noundef !5
  br i1 %.sroa.0.0.i, label %bb.it, label %bb.is

.backedge372:                                     ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, %bb.ex, %.lr.ph5001, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, %bb.ew, %bb.iv, %.lr.ph5003, %.lr.ph5003, %.lr.ph5003, %.lr.ph5003, %.lr.ph5003, %bb.cb, %bb.cc, %bb.hd, %bb.cd, %bb.iu, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit82", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit127", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit168"
  %.old = icmp eq ptr %i.ko, %i.jy
  br i1 %.old, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit, label %.backedge1435

.backedge1435:                                    ; preds = %.backedge372, %bb.is
  %i.aid = load i32, ptr %i.ko, align 4, !noundef !5
  %i.aie = load i64, ptr %i.bq, align 16, !noalias !1025, !noundef !5 ; 2 uses
  %i.aif = zext i32 %i.aid to i64                 ; 3 uses
  %i.aig = icmp ugt i64 %i.aie, %i.aif
  br i1 %i.aig, label %.lr.ph5003, label %.lr.ph1419._crit_edge

bb.is:                                            ; preds = %bb.iv, %bb.iu, %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !886
  call void @_ZN14regex_automata4util6search10PatternSet10try_insert17h694175b078817df0E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.aic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !886
  %i.aih = icmp ne ptr %i.ko, %i.jy
  %or.cond1426.not = select i1 %.sroa.0.0, i1 %i.aih, i1 false
  br i1 %or.cond1426.not, label %.backedge1435, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit

bb.it:                                            ; preds = %bb.ir
  br i1 %i.ka, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.aii = load i8, ptr %i.kc, align 1, !noundef !5
  %or.cond355 = icmp sgt i8 %i.aii, -65
  br i1 %or.cond355, label %bb.is, label %.backedge372

bb.iv:                                            ; preds = %bb.it
  br i1 %i.kb, label %bb.is, label %.backedge372

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit: ; preds = %bb.is, %.backedge372, %bb.ca
  %i.aij = load i64, ptr %i.bk, align 8, !noundef !5 ; 2 uses
  %i.aik = load i64, ptr %i.ci, align 8, !noundef !5
  %i.ail = icmp eq i64 %i.aij, %i.aik
  %or.cond = select i1 %i.ail, i1 true, i1 %i.cl
  br i1 %or.cond, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit
  %i.aim = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1026, !noalias !5
  %i.ain = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !1027, !noalias !5
  store <2 x i64> %i.aim, ptr %i.aa, align 8, !alias.scope !1027, !noalias !5
  store <2 x i64> %i.ain, ptr %i.ad, align 8, !alias.scope !1026, !noalias !5
  %i.aio = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !1028, !noalias !5
  %i.aip = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !1029, !noalias !5
  store <2 x i64> %i.aio, ptr %i.bo, align 8, !alias.scope !1029, !noalias !5
  store <2 x i64> %i.aip, ptr %i.cd, align 8, !alias.scope !1028, !noalias !5
  %i.aiq = load <2 x i64>, ptr %i.cc, align 8, !alias.scope !1030, !noalias !5
  %i.air = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !1031, !noalias !5
  store <2 x i64> %i.aiq, ptr %i.bn, align 8, !alias.scope !1031, !noalias !5
  store <2 x i64> %i.air, ptr %i.cc, align 8, !alias.scope !1030, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.ais = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !1033, !noalias !5
  %.sroa.02.0.copyload.i.i.i.6.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1034, !noalias !1032
  %i.ait = load <2 x i64>, ptr %i.ch, align 8, !alias.scope !1035, !noalias !5
  %i.aiu = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !1036, !noalias !5
  store <2 x i64> %i.ais, ptr %i.ab, align 8, !alias.scope !1037, !noalias !5
  store <2 x i64> %i.aiu, ptr %i.cm, align 8, !alias.scope !1038, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %.sroa.0.0.copyload.i.i.i.11.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1039, !noalias !1040
  %i.aiv = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !1041, !noalias !5
  %i.aiw = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !1042, !noalias !5
  store <2 x i64> %i.ait, ptr %i.ca, align 8, !alias.scope !1043, !noalias !5
  store <2 x i64> %i.aiw, ptr %i.cg, align 8, !alias.scope !1044, !noalias !5
  store <2 x i64> %i.aiv, ptr %i.bv, align 8, !alias.scope !1045, !noalias !5
  store i64 %.sroa.0.0.copyload.i.i.i.11.i.i, ptr %i.af, align 8, !alias.scope !1040, !noalias !1039
  store i64 0, ptr %i.ae, align 8
  %.not.i55 = icmp ugt i64 %spec.select350, %i.aj
  %or.cond365 = select i1 %i.cp, i1 true, i1 %.not.i55
  br i1 %or.cond365, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit, label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM3new17h371bea68edf6af14E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [448 x i8], align 8               ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [488 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1072
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 2, ptr %i.f, align 8, !noalias !1072
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 3, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1072
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.c)
          to label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h0e30b01781518f76E.exit unwind label %bb.b, !noalias !1072

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h1c26f61b68bc21a5E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d) #23
          to label %common.resume unwind label %bb.c, !noalias !1072

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !1072
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.n, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.g, %bb.b ], [ %i.ab, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h0e30b01781518f76E.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.e, ptr noundef nonnull align 8 dereferenceable(448) %i.c, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1072
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1074
  store ptr %1, ptr %i.b, align 8, !noalias !1074
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.j, align 8, !noalias !1074
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1076
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h649e8ac96042645bE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a, ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h0e30b01781518f76E.exit
  %i.k = load i64, ptr %i.a, align 8, !range !21, !noalias !1076, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, -9223372036854775800
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1076 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.312.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.312.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.69.0..sroa_idx.i.i, i64 112, i1 false), !noalias !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1076
  store i64 %i.k, ptr %0, align 8, !alias.scope !1078, !noalias !1077
  %.sroa.211.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.211.0..sroa_idx.i.i, align 8, !alias.scope !1078, !noalias !1077
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !9, !alias.scope !1079
  br label %bb.j

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1076
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.o = load i8, ptr %i.n, align 8, !range !10, !noalias !1081, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 472 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noalias !1081, !noundef !5 ; 2 uses
  %switch.not = icmp samesign ult i8 %i.q, 2
  br i1 %switch.not, label %bb.f, label %_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e8434af24aac85dE.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.i, align 8, !noalias !1081, !nonnull !5, !noundef !5
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !1082
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load <2 x ptr>, ptr %i.i, align 8, !noalias !1081
  %i.v = load i8, ptr %i.p, align 8, !range !12, !noalias !1081, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.x = load i64, ptr %i.w, align 8, !noalias !1081, !noundef !5
  br label %_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e8434af24aac85dE.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e8434af24aac85dE.exit.i.i: ; preds = %bb.e, %bb.g
  %i.y = phi i8 [ %i.q, %bb.e ], [ %i.v, %bb.g ]  ; 2 uses
  %.sroa.05.sroa.5.0.i.i.i = phi i64 [ undef, %bb.e ], [ %i.x, %bb.g ]
  %i.z = phi <2 x ptr> [ undef, %bb.e ], [ %i.u, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.aa, align 8, !alias.scope !1082, !noalias !1077
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.z, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1082, !noalias !1077
  %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.05.sroa.5.0.i.i.i, ptr %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1082, !noalias !1077
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.y, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1082, !noalias !1077
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.o, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !1082, !noalias !1077
  store i64 -9223372036854775800, ptr %0, align 8, !alias.scope !1082, !noalias !1077
  br label %bb.j

bb.i:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM7builder17h0e30b01781518f76E.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h79dd8e8a7678d05dE"(ptr noalias noundef align 8 dereferenceable(488) %i.e) #23
          to label %common.resume unwind label %bb.p

bb.j:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e8434af24aac85dE.exit.i.i, %bb.d
  %i.ac = phi i8 [ %i.y, %_ZN14regex_automata3nfa8thompson6pikevm7Builder14build_from_nfa17h6e8434af24aac85dE.exit.i.i ], [ %.pre, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1074
  call void @llvm.experimental.noalias.scope.decl(metadata !1083)
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.ad = icmp eq i8 %i.ac, 3
  br i1 %i.ad, label %"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h79dd8e8a7678d05dE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.ae = icmp eq i8 %i.ac, 2
  br i1 %i.ae, label %"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h79dd8e8a7678d05dE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.af = load ptr, ptr %i.i, align 8, !alias.scope !1090, !nonnull !5, !noundef !5
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1090
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.m, label %"_ZN4core3ptr67drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Builder$GT$17h79dd8e8a7678d05dE.exit"

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i)
end_hunk_3

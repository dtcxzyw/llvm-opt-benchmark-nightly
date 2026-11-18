Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN4anki4tags8complete13filters_match17hd5381f8b09c42943E:bb.a
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [128 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @373, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 9 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 5 uses
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 3 uses
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 121 ; 8 uses
  store i8 0, ptr %.sroa.79.0..sroa_idx, align 1
  %.idx = shl nuw nsw i64 %1, 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.i = icmp eq i64 %1, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph35, %.loopexit42
  %.sroa.01.034 = phi i1 [ true, %.lr.ph35 ], [ %i.gc, %.loopexit42 ]
  %.sroa.03.033 = phi ptr [ %0, %.lr.ph35 ], [ %i.q, %.loopexit42 ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.033, i64 32 ; 2 uses
  %i.r = load i8, ptr %.sroa.79.0..sroa_idx, align 1, !range !39, !alias.scope !7657, !noundef !33
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr i8, ptr %.sroa.03.033, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7658)
  %.val.i.peel = load ptr, ptr %i.j, align 8, !alias.scope !7658, !nonnull !33, !align !43, !noundef !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7658
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.u = load i64, ptr %i.f, align 8, !range !35, !noalias !7658, !noundef !33
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = load i8, ptr %.sroa.79.0..sroa_idx, align 1, !range !39, !alias.scope !7659, !noundef !33
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit.thread16", label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %.sroa.79.0..sroa_idx, align 1, !alias.scope !7659
  %i.y = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !range !39, !alias.scope !7659, !noundef !33
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %._crit_edge.i.i.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7659, !noundef !33 ; 2 uses
  %i.ab = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7659, !noundef !33 ; 2 uses
  %.not.i.i.peel = icmp eq i64 %i.aa, %i.ab
  br i1 %.not.i.i.peel, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit.thread16", label %bb.f

._crit_edge.i.i.peel:                             ; preds = %bb.d
  %.pre.i.i.peel = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7659
  %.pre3.i.i.peel = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7659
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.peel, %bb.e
  %i.ac = phi i64 [ %.pre3.i.i.peel, %._crit_edge.i.i.peel ], [ %i.aa, %bb.e ]
  %i.ad = phi i64 [ %.pre.i.i.peel, %._crit_edge.i.i.peel ], [ %i.ab, %bb.e ] ; 2 uses
  %.val.i.i.peel = load ptr, ptr %i.j, align 8, !alias.scope !7659, !nonnull !33, !align !43, !noundef !33
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i.peel, i64 %i.ad
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ag = load i64, ptr %i.k, align 8, !noalias !7658, !noundef !33
  %i.ah = load i64, ptr %i.l, align 8, !noalias !7658, !noundef !33
  %i.ai = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7658, !noundef !33 ; 2 uses
  %i.aj = sub nuw i64 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.peel, i64 %i.ai
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7658
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.peel = phi i64 [ %i.aj, %bb.g ], [ %i.ae, %bb.f ] ; 4 uses
  %.sroa.0.0.i.peel = phi ptr [ %i.ak, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7658
  %.sroa.03.0.val.peel = load ptr, ptr %.sroa.03.033, align 8, !nonnull !33, !noundef !33 ; 5 uses
  %.sroa.03.0.val11.peel = load ptr, ptr %i.t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7660
  store i32 0, ptr %i.e, align 8, !noalias !7660
  store ptr %.sroa.0.0.i.peel, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !7660
  store i64 %.sroa.4.0.i.peel, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !7660
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !7660
  store i64 %.sroa.4.0.i.peel, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !7660
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !7660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7660
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.peel, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !7661)
  %.pre.pre.i.i.peel = load ptr, ptr %i.al, align 8, !alias.scope !7661, !noalias !7662
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.pre.i.i.peel, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !noalias !7663 ; 6 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !35, !noalias !7663, !noundef !33
  %i.ap = trunc nuw i64 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !7663
  %i.as = icmp ult i64 %.sroa.4.0.i.peel, %i.ar
  br i1 %i.as, label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 60
  %i.au = load i32, ptr %i.at, align 4, !noalias !7663, !noundef !33
  %i.av = and i32 %i.au, 1
  %.not8.i.i.i.peel = icmp eq i32 %i.av, 0
  br i1 %.not8.i.i.i.peel, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !noalias !7663, !noundef !33
  %i.ay = and i32 %i.ax, 2
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !35, !noalias !7663, !noundef !33
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.peel, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.peel: ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !7663
  %i.bf = icmp ugt i64 %.sroa.4.0.i.peel, %i.be
  br i1 %i.bf, label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i.peel, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel: ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.peel, %bb.l, %bb.k, %bb.j, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.val11.peel) ]
  %i.bg = call noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hfa155a335acaab29E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @106), !noalias !7664 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val11.peel, i64 40 ; 2 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !7665 ; 2 uses
  %i.bj = icmp eq i64 %i.bg, %i.bi
  br i1 %i.bj, label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel", label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel", !prof !40

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel": ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel
  call void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h2284c50b46ccff7eE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull align 8 %.sroa.03.0.val11.peel, i64 noundef %i.bg, i64 noundef %i.bi), !noalias !7666
  %.pre.i.peel = load i64, ptr %i.c, align 8, !range !35, !noalias !7662
  %i.bk = trunc nuw i64 %.pre.i.peel to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.peel, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !7662, !nonnull !33, !noundef !33
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.peel, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !7662, !nonnull !33, !align !38, !noundef !33 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !62, !invariant.load !33, !noalias !7666
  %i.br = add i64 %i.bq, -1
  %i.bs = and i64 %i.br, -16
  %i.bt = getelementptr i8, ptr %i.bm, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 16     ; 2 uses
  br i1 %i.bk, label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge", label %bb.m

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge": ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel"
  %.pre = load ptr, ptr %i.n, align 8, !noalias !7662
  br label %bb.n

bb.m:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel"
  %i.bv = load ptr, ptr %i.m, align 8, !noalias !7662, !nonnull !33, !noundef !33
  br label %bb.o

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel": ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i.peel
  store atomic i64 1, ptr %i.bh release, align 8, !noalias !7665
  %i.bw = inttoptr i64 %i.bg to ptr
  store ptr %.sroa.03.0.val11.peel, ptr %i.n, align 8, !noalias !7662
  store i64 1, ptr %i.c, align 8, !noalias !7662
  store ptr %i.bw, ptr %i.m, align 8, !noalias !7662
  store i8 0, ptr %i.o, align 8, !noalias !7662
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.peel, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !7662, !nonnull !33, !noundef !33
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.peel, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !7662, !nonnull !33, !align !38, !noundef !33 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !62, !invariant.load !33, !noalias !7666
  %i.cd = add i64 %i.cc, -1
  %i.ce = and i64 %i.cd, -16
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  br label %bb.n

bb.n:                                             ; preds = %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge", %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel"
  %i.ch = phi ptr [ %.sroa.03.0.val11.peel, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel" ], [ %.pre, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge" ]
  %i.ci = phi ptr [ %i.cg, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel" ], [ %i.bu, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge" ]
  %i.cj = phi ptr [ %i.ca, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i.peel" ], [ %i.bo, %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i.peel._crit_edge" ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = phi ptr [ %i.ci, %bb.n ], [ %i.bu, %bb.m ]
  %i.cm = phi ptr [ %i.cj, %bb.n ], [ %i.bo, %bb.m ]
  %i.cn = phi i1 [ true, %bb.n ], [ false, %bb.m ]
  %.sroa.01.0.i.i.peel = phi ptr [ %i.ck, %bb.n ], [ %i.bv, %bb.m ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !33, !noalias !7666, !nonnull !33
  invoke void %i.cp(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef align 1 %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i.i.peel, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7667

bb.p:                                             ; preds = %bb.o
  %.sroa.2.0.copyload.i.i.peel = load ptr, ptr %i.m, align 8, !noalias !7662 ; 5 uses
  %.sroa.3.0.copyload.i.i.peel = load ptr, ptr %i.n, align 8, !noalias !7662 ; 4 uses
  %.sroa.4.0.copyload.i.i.peel = load i8, ptr %i.o, align 8, !noalias !7662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7662
  %i.cq = ptrtoint ptr %.sroa.2.0.copyload.i.i.peel to i64 ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = trunc nuw i8 %.sroa.4.0.copyload.i.i.peel to i1
  br i1 %i.cr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.peel) ]
  call fastcc void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$9put_value17h23776eb7454f93b2E"(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i.i.peel, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i.i.peel), !noalias !7668
  br label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.i.peel

bb.s:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.peel) ]
  call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17h128a5ce09dbb89fbE"(ptr nonnull %.sroa.2.0.copyload.i.i.peel), !noalias !7668
  br label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.i.peel

bb.t:                                             ; preds = %bb.p
  store i64 %i.cq, ptr %i.b, align 8, !noalias !7669
  %i.cs = icmp eq ptr %.sroa.2.0.copyload.i.i.peel, inttoptr (i64 2 to ptr)
  br i1 %i.cs, label %.noexc4.i.i, label %.noexc5.i.i.peel, !prof !37

.noexc5.i.i.peel:                                 ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i.i.peel) ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.peel, i64 40
  store atomic i64 %i.cq, ptr %i.ct release, align 8, !noalias !7668
  br label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.i.peel

_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.i.peel: ; preds = %.noexc5.i.i.peel, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7662
  %.pre4.i.peel = load i64, ptr %i.d, align 8, !range !35, !noalias !7660
  %i.cu = trunc nuw i64 %.pre4.i.peel to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7660
  br i1 %i.cu, label %.loopexit42, label %bb.u

_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i.peel: ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i.peel, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7660
  br label %bb.u

bb.u:                                             ; preds = %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i.peel, %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7660
  %i.cv = load i8, ptr %.sroa.79.0..sroa_idx, align 1, !range !39, !alias.scope !7670, !noundef !33
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %._crit_edge, label %.peel.next

._crit_edge.loopexit:                             ; preds = %.loopexit42
  %i.cx = zext i1 %i.gc to i8
  br label %._crit_edge

.peel.next:                                       ; preds = %bb.u, %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !7671)
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !7671, !nonnull !33, !align !43, !noundef !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7671
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.g)
  %i.cy = load i64, ptr %i.f, align 8, !range !35, !noalias !7671, !noundef !33
  %i.cz = trunc nuw i64 %i.cy to i1
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.peel.next
  %i.da = load i64, ptr %i.k, align 8, !noalias !7671, !noundef !33
  %i.db = load i64, ptr %i.l, align 8, !noalias !7671, !noundef !33
  %i.dc = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7671, !noundef !33 ; 2 uses
  %i.dd = sub nuw i64 %i.da, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dc
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7671
  br label %bb.aa

bb.w:                                             ; preds = %.peel.next
  %i.df = load i8, ptr %.sroa.79.0..sroa_idx, align 1, !range !39, !alias.scope !7672, !noundef !33
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit.thread16", label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %.sroa.79.0..sroa_idx, align 1, !alias.scope !7672
  %i.dh = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !range !39, !alias.scope !7672, !noundef !33
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.pre.i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7672
  %.pre3.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7672
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !7672, !noundef !33 ; 2 uses
  %i.dk = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !7672, !noundef !33 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dj, %i.dk
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit.thread16", label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.dl = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dj, %bb.y ]
  %i.dm = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.dk, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.j, align 8, !alias.scope !7672, !nonnull !33, !align !43, !noundef !33
  %i.dn = sub nuw i64 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dm
  br label %bb.aa

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit.thread16": ; preds = %bb.e, %bb.c, %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7671
  br label %._crit_edge

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.dd, %bb.v ], [ %i.dn, %bb.z ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.de, %bb.v ], [ %i.do, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7671
  %.sroa.03.0.val = load ptr, ptr %.sroa.03.033, align 8, !nonnull !33, !noundef !33 ; 5 uses
  %.sroa.03.0.val11 = load ptr, ptr %i.t, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7660
  store i32 0, ptr %i.e, align 8, !noalias !7660
  store ptr %.sroa.0.0.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !7660
  store i64 %.sroa.4.0.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !7660
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !7660
  store i64 %.sroa.4.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !7660
  store i8 0, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !7660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7660
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !7673)
  %.pre.pre.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !7673, !noalias !7662
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre.pre.i.i, i64 168
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !7674 ; 6 uses
  %i.ds = load i64, ptr %i.dr, align 8, !range !35, !noalias !7674, !noundef !33
  %i.dt = trunc nuw i64 %i.ds to i1
  br i1 %i.dt, label %bb.ab, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !noalias !7674
  %i.dw = icmp ult i64 %.sroa.4.0.i, %i.dv
  br i1 %i.dw, label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 60
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !7674, !noundef !33
  %i.dz = and i32 %i.dy, 1
  %.not8.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not8.i.i.i, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.eb = load i32, ptr %i.ea, align 8, !noalias !7674, !noundef !33
  %i.ec = and i32 %i.eb, 2
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !35, !noalias !7674, !noundef !33
  %i.eg = trunc nuw i64 %i.ef to i1
  br i1 %i.eg, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i: ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !7674
  %i.ej = icmp ugt i64 %.sroa.4.0.i, %i.ei
  br i1 %i.ej, label %_ZN14regex_automata4meta5regex5Regex6search17h26911d412b830506E.exit.thread.i, label %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i

_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i: ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.i.i, %bb.ae, %bb.ad, %bb.ac, %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.val11) ]
  %i.ek = call noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hfa155a335acaab29E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @106), !noalias !7664 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val11, i64 40 ; 2 uses
  %i.em = load atomic i64, ptr %i.el acquire, align 8, !noalias !7665 ; 2 uses
  %i.en = icmp eq i64 %i.ek, %i.em
  br i1 %i.en, label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i", label %"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.i", !prof !40

"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$3get17hfc95ba6e9568e2f0E.exit.i.thread.i": ; preds = %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17ha2f4ccf190b89dc0E.exit.thread.i.i
  store atomic i64 1, ptr %i.el release, align 8, !noalias !7665
  %i.eo = inttoptr i64 %i.ek to ptr
  store ptr %.sroa.03.0.val11, ptr %i.n, align 8, !noalias !7662
  store i64 1, ptr %i.c, align 8, !noalias !7662
  store ptr %i.eo, ptr %i.m, align 8, !noalias !7662
  store i8 0, ptr %i.o, align 8, !noalias !7662
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !7662, !nonnull !33, !noundef !33
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !noalias !7662, !nonnull !33, !align !38, !noundef !33 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !range !62, !invariant.load !33, !noalias !7666
  %i.ev = add i64 %i.eu, -1
  %i.ew = and i64 %i.ev, -16
  %i.ex = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
end_hunk_0

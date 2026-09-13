Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a
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
  %i.av = and i8 %i.au, 1
  %i.aw = icmp eq i8 %i.av, 0
  %.sroa.0.0 = and i1 %.not26, %i.aw              ; 3 uses
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
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.ay = load i32, ptr %i.ax, align 16, !noundef !5
  br label %.lr.ph1734

bb.g:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val68 = load i32, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !5
  %i.bc = zext i32 %.val68 to i64                 ; 2 uses
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bc
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !5
  br label %.lr.ph1734

bb.i:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.bj = load i32, ptr %i.bi, align 16, !noundef !5 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 372
  %i.bl = load i32, ptr %i.bk, align 4, !noundef !5
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %.lr.ph1734, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.jh, %bb.jg, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread, %bb.q, %bb.j, %bb.c
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !range !9, !noundef !5
  %.not28 = icmp eq i8 %i.bo, 3
  %. = select i1 %.not28, ptr @38, ptr %i.as      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.bq = load i8, ptr %i.bp, align 8, !range !10, !noundef !5
  %.not29 = icmp eq i8 %i.bq, 2
  %spec.select = select i1 %.not29, ptr null, ptr %.
  br label %.lr.ph1734

.lr.ph1734:                                       ; preds = %bb.i, %bb.k, %bb.f, %bb.h
  %i.br = phi i1 [ false, %bb.k ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.h ] ; 2 uses
  %.sroa.5.1.i.ph268 = phi i32 [ %i.bj, %bb.k ], [ %i.bj, %bb.i ], [ %i.ay, %bb.f ], [ %i.bh, %bb.h ]
  %.sroa.07.0 = phi ptr [ %spec.select, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.h ] ; 3 uses
  store i64 0, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.07.0, null
  %i.bs = load ptr, ptr %i.al, align 8, !nonnull !5, !align !7 ; 33 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %.not25.i215 = icmp eq i64 %i.an, 0             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 4 uses
  %i.co = shl i64 %5, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cq = load i8, ptr %i.cp, align 8, !range !12
  %i.cr = trunc nuw i8 %i.cq to i1                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 176
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph1734, %bb.jh
  %i.cv = phi i64 [ 0, %.lr.ph1734 ], [ %i.ajz, %bb.jh ] ; 2 uses
  %i.cw = phi i64 [ 0, %.lr.ph1734 ], [ %.sroa.02.0.copyload.i.i.i.6.i.i, %bb.jh ]
  %.sroa.09.01733 = phi i64 [ %i.ah, %.lr.ph1734 ], [ %i.dt, %bb.jh ] ; 4 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %._crit_edge3345

bb.m:                                             ; preds = %bb.l
  %.not31 = icmp eq i64 %i.cv, 0
  %brmerge1 = or i1 %.sroa.0.0, %.not31
  %brmerge1.not = xor i1 %brmerge1, true
  %i.cy = icmp ugt i64 %.sroa.09.01733, %i.ah
  %or.cond34 = and i1 %i.br, %i.cy
  %or.cond369 = or i1 %or.cond34, %brmerge1.not
  br i1 %or.cond369, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %._crit_edge3345, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.cz = load ptr, ptr %.sroa.07.0, align 8, !nonnull !5, !noundef !5
  %i.da = load ptr, ptr %i.bt, align 8, !nonnull !5, !align !13, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !14, !invariant.load !5
  %i.dd = add i64 %i.dc, -1
  %i.de = and i64 %i.dd, -16
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !5, !nonnull !5
  call void %i.di(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef align 1 %i.dg, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.01733, i64 noundef %i.aj)
  %i.dj = load i64, ptr %i.x, align 8, !range !15, !noundef !5
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.p, label %bb.q

._crit_edge3345:                                  ; preds = %bb.l, %bb.p, %bb.n
  %.sroa.09.1 = phi i64 [ %i.dm, %bb.p ], [ %.sroa.09.01733, %bb.n ], [ %.sroa.09.01733, %bb.l ] ; 29 uses
  %.not32 = icmp eq i64 %i.cv, 0
  %brmerge = or i1 %.sroa.0.0, %.not32
  %brmerge.not = xor i1 %brmerge, true
  %i.dl = icmp ne i64 %.sroa.09.1, %i.ah
  %or.cond37.not = and i1 %i.br, %i.dl
  %or.cond382 = or i1 %or.cond37.not, %brmerge.not
  br i1 %or.cond382, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %bb.gn

bb.p:                                             ; preds = %bb.o
  %i.dm = load i64, ptr %i.bu, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %._crit_edge3345

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit190", %._crit_edge3345
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.dn = load i64, ptr %i.ab, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 3 uses
  %i.do = load i64, ptr %i.ca, align 8, !alias.scope !342, !noalias !343, !noundef !5 ; 2 uses
  %.not.i38 = icmp ugt i64 %i.dn, %i.do
  br i1 %.not.i38, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.dn, i64 noundef %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #22, !noalias !344
  unreachable

bb.s:                                             ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  %i.dp = load ptr, ptr %i.cb, align 8, !alias.scope !342, !noalias !343, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dn ; 2 uses
  %i.dr = icmp ult i64 %.sroa.09.1, %i.an         ; 9 uses
  %i.ds = getelementptr i8, ptr %i.bs, i64 %.sroa.09.1 ; 26 uses
  %i.dt = add i64 %.sroa.09.1, 1                  ; 29 uses
  %i.du = add i64 %.sroa.09.1, 2                  ; 4 uses
  %.not.i29.i.i = icmp eq i64 %i.du, 0            ; 3 uses
  %6 = icmp ne i64 %i.dt, -1                      ; 3 uses
  %i.dv = icmp ult i64 %i.dt, %i.an               ; 24 uses
  %i.dw = getelementptr i8, ptr %i.bs, i64 %i.dt  ; 26 uses
  %i.dx = icmp eq i64 %i.dt, %i.an                ; 9 uses
  %.not.i139 = icmp eq i64 %i.dt, 0               ; 18 uses
  br label %.outer

.outer:                                           ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189", %bb.s
  %.sroa.07.0.i.ph = phi ptr [ %i.dz, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ %i.dp, %bb.s ] ; 2 uses
  %.sroa.3.0.i.ph = phi i32 [ %i.ek, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ undef, %bb.s ]
  %.sroa.0.0.i39.ph = phi i1 [ true, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ], [ false, %bb.s ]
  %i.dy = icmp eq ptr %.sroa.07.0.i.ph, %i.dq
  br i1 %i.dy, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit, label %.lr.ph1727

.lr.ph1727:                                       ; preds = %.outer, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
  %.sroa.07.0.i1726 = phi ptr [ %i.dz, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i ], [ %.sroa.07.0.i.ph, %.outer ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i1726, i64 4 ; 3 uses
  %i.ea = load i32, ptr %.sroa.07.0.i1726, align 4, !noalias !344, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.eb = load i64, ptr %i.cc, align 16, !noalias !346, !noundef !5 ; 2 uses
  %i.ec = zext i32 %i.ea to i64                   ; 7 uses
  %i.ed = icmp ugt i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph1727
  %i.ee = load ptr, ptr %i.cd, align 8, !noalias !346, !nonnull !5, !noundef !5
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
  %i.ei = call noundef zeroext i1 @_ZN14regex_automata3nfa8thompson3nfa10Transition7matches17h202f0f9260c3d5bbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.eh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1), !noalias !346
  br i1 %i.ei, label %bb.y, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

bb.w:                                             ; preds = %bb.t
  br i1 %i.dr, label %bb.cq, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

bb.x:                                             ; preds = %bb.t
  br i1 %i.dr, label %bb.ew, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread: ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !noalias !346, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.el = load i64, ptr %i.cf, align 8, !alias.scope !347, !noalias !344, !noundef !5
  %i.em = mul i64 %i.el, %i.ec                    ; 4 uses
  %i.en = load i64, ptr %i.ac, align 8, !alias.scope !347, !noalias !344, !noundef !5 ; 3 uses
  %i.eo = add i64 %i.em, %i.en                    ; 3 uses
  %i.ep = load i64, ptr %i.cg, align 8, !alias.scope !347, !noalias !344, !noundef !5 ; 2 uses
  %i.eq = icmp ult i64 %i.eo, %i.em
  %.not.i185 = icmp ugt i64 %i.eo, %i.ep
  %or.cond.i186 = or i1 %i.eq, %.not.i185
  br i1 %or.cond.i186, label %bb.gl, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187, !prof !16

bb.y:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.er = load i64, ptr %i.cf, align 8, !alias.scope !348, !noalias !349, !noundef !5
  %i.es = mul i64 %i.er, %i.ec                    ; 4 uses
  %i.et = load i64, ptr %i.ac, align 8, !alias.scope !348, !noalias !349, !noundef !5 ; 7 uses
  %i.eu = add i64 %i.es, %i.et                    ; 3 uses
  %i.ev = load i64, ptr %i.cg, align 8, !alias.scope !348, !noalias !349, !noundef !5 ; 2 uses
  %i.ew = icmp ult i64 %i.eu, %i.es
  %.not.i73 = icmp ugt i64 %i.eu, %i.ev
  %or.cond.i74 = or i1 %i.ew, %.not.i73
  br i1 %or.cond.i74, label %bb.z, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit, !prof !16

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.ev, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !350
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit: ; preds = %bb.y
  %i.ex = load ptr, ptr %i.ch, align 8, !alias.scope !348, !noalias !349, !nonnull !5, !noundef !5
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
  %i.fd = load ptr, ptr %i.bx, align 8, !alias.scope !353, !noalias !354, !nonnull !5, !noundef !5
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
  %i.fm = load ptr, ptr %i.bx, align 8, !alias.scope !356, !noalias !357, !nonnull !5, !noundef !5
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
  %i.ft = load i64, ptr %i.cj, align 8, !alias.scope !361, !noalias !362, !noundef !5 ; 2 uses
  %i.fu = icmp ugt i64 %i.ft, %i.fs
  br i1 %i.fu, label %.lr.ph1718, label %._crit_edge1719

.lr.ph1718:                                       ; preds = %bb.ac, %.backedge
  %i.fv = phi i64 [ %i.kx, %.backedge ], [ %i.fs, %bb.ac ] ; 5 uses
  %i.fw = phi i32 [ %.sroa.0.0.i.i.i.be, %.backedge ], [ %.sroa.45.0.copyload.i19.i.i, %bb.ac ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.fx = load ptr, ptr %i.ck, align 8, !alias.scope !364, !noalias !362, !nonnull !5, !noundef !5
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.fv
  %i.fz = load i32, ptr %i.fy, align 4, !noalias !365, !noundef !5
  %i.ga = zext i32 %i.fz to i64                   ; 4 uses
  %i.gb = load i64, ptr %i.ae, align 8, !alias.scope !364, !noalias !362, !noundef !5 ; 5 uses
  %i.gc = icmp ugt i64 %i.gb, %i.ga
  %.pre3344 = load i64, ptr %i.cl, align 8, !noalias !362 ; 5 uses
  br i1 %i.gc, label %bb.ad, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread

._crit_edge1719:                                  ; preds = %bb.ac, %.backedge
  %.lcssa723 = phi i64 [ %i.kx, %.backedge ], [ %i.fs, %bb.ac ]
  %.lcssa703 = phi i64 [ %i.ky, %.backedge ], [ %i.ft, %bb.ac ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa723, i64 noundef %.lcssa703, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !365
  unreachable

bb.ad:                                            ; preds = %.lr.ph1718
  %i.gd = icmp ugt i64 %.pre3344, %i.ga
  br i1 %i.gd, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ga, i64 noundef %.pre3344, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !365
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit: ; preds = %bb.ad
  %i.ge = load ptr, ptr %i.cm, align 8, !alias.scope !364, !noalias !362, !nonnull !5, !noundef !5
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ga
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !365, !noundef !5
  %i.gh = icmp eq i32 %i.gg, %i.fw
  br i1 %i.gh, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread: ; preds = %.lr.ph1718, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit
  store i64 %i.gb, ptr %i.v, align 8, !noalias !366
  %i.gi = icmp ult i64 %.pre3344, 2305843009213693952
  call void @llvm.assume(i1 %i.gi), !noalias !362
  %i.gj = icmp ult i64 %i.gb, %.pre3344
  br i1 %i.gj, label %bb.ag, label %bb.af, !prof !6

bb.af:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !366
  store i64 %.pre3344, ptr %i.t, align 8, !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !366
  store ptr %i.v, ptr %i.s, align 8, !noalias !366
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !366
  %i.gk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.gk, align 8, !noalias !366
end_hunk_0
begin_hunk_1_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a

bb.bi:                                            ; preds = %bb.bg
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #22, !noalias !379
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.ik = load i8, ptr %i.ds, align 1, !alias.scope !379, !noundef !5
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr @79, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !range !12, !noalias !379, !noundef !5
  %i.io = trunc nuw i8 %i.in to i1
  br label %bb.bh

.split3478:                                       ; preds = %bb.bh
  %i.ip = load i8, ptr %i.dw, align 1, !alias.scope !379, !noundef !5
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @79, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !range !12, !noalias !379, !noundef !5
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = xor i1 %.sroa.0.0.i86, %i.it
  br i1 %i.iu, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %.backedge

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit88: ; preds = %bb.bh
  br i1 %.sroa.0.0.i86, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %.backedge

.split285:                                        ; preds = %bb.ao
  %i.iv = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

.split289:                                        ; preds = %bb.ao
  %i.ix = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.bk:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  br i1 %.not.i139, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not25.i215, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.dr, label %bb.bp, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.iz = load i8, ptr %i.bs, align 1, !alias.scope !380, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !380
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !range !12, !noalias !380, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !380
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit

bb.bo:                                            ; preds = %bb.bm
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22, !noalias !380
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.jd = load i8, ptr %i.ds, align 1, !alias.scope !380, !noundef !5
  %i.je = zext i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @79, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !range !12, !noalias !380, !noundef !5
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.dv, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.br, %bb.bp
  %.sroa.0.0.i90 = phi i8 [ %i.jl, %bb.br ], [ 0, %bb.bp ]
  %spec.select.i = select i1 %i.jh, i8 0, i8 %.sroa.0.0.i90
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit

bb.br:                                            ; preds = %bb.bp
  %i.ji = load i8, ptr %i.dw, align 1, !alias.scope !380, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.c, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !380
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !range !12, !noalias !380, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !380
  br label %bb.bq

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit: ; preds = %bb.bn, %bb.bq
  %.sroa.0.1.i91 = phi i8 [ %i.jc, %bb.bn ], [ %spec.select.i, %bb.bq ]
  %i.jm = trunc nuw i8 %.sroa.0.1.i91 to i1
  br i1 %i.jm, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.bs:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  br i1 %.not.i139, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.dr, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !noalias !381
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.jn = load i8, ptr %i.ds, align 1, !alias.scope !381, !noundef !5
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw i8, ptr @79, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !range !12, !noalias !381, !noundef !5
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.dv, label %bb.bw, label %.split286

.split286:                                        ; preds = %bb.bw, %bb.bv
  %.sroa.02.0.i = phi i1 [ %i.jx, %bb.bw ], [ true, %bb.bv ]
  %spec.select.i93 = select i1 %i.jr, i1 %.sroa.02.0.i, i1 false
  br i1 %spec.select.i93, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.js = load i8, ptr %i.dw, align 1, !alias.scope !381, !noundef !5
  %i.jt = zext i8 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr @79, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !range !12, !noalias !381, !noundef !5
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = xor i1 %i.jw, true
  br label %.split286

.split288:                                        ; preds = %bb.ao
  %i.jy = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

.split287:                                        ; preds = %bb.ao
  %i.ka = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.bx:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  br i1 %.not.i139, label %.backedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br i1 %i.dr, label %.split279, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #22, !noalias !382
  unreachable

.split279:                                        ; preds = %bb.by
  %i.kc = load i8, ptr %i.ds, align 1, !alias.scope !382, !noundef !5
  %i.kd = zext i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr @79, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !range !12, !noalias !382, !noundef !5
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %.backedge

bb.ca:                                            ; preds = %bb.ao
  br i1 %i.dv, label %.split283, label %.backedge

.split284:                                        ; preds = %bb.ao
  %i.kh = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

.split278:                                        ; preds = %bb.ao
  %i.kj = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.cb:                                            ; preds = %bb.ap
  br i1 %i.dr, label %.split280, label %bb.cc

.split280:                                        ; preds = %bb.cb
  %i.kl = load i8, ptr %i.ds, align 1, !alias.scope !375, !noalias !383, !noundef !5
  %i.km = load i8, ptr %i.ce, align 16, !alias.scope !374, !noalias !384, !noundef !5
  %i.kn = icmp eq i8 %i.kl, %i.km
  br i1 %i.kn, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22, !noalias !385
  unreachable

bb.cd:                                            ; preds = %bb.aq
  br i1 %i.dv, label %.split282, label %bb.ce

.split282:                                        ; preds = %bb.cd
  %i.ko = load i8, ptr %i.dw, align 1, !alias.scope !375, !noalias !383, !noundef !5
  %i.kp = load i8, ptr %i.ce, align 16, !alias.scope !374, !noalias !384, !noundef !5
  %i.kq = icmp eq i8 %i.ko, %i.kp
  br i1 %i.kq, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dt, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !385
  unreachable

.split283:                                        ; preds = %bb.ca
  %i.kr = load i8, ptr %i.dw, align 1, !alias.scope !375, !noalias !383, !noundef !5
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw i8, ptr @79, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !range !12, !noalias !385, !noundef !5
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %.backedge

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit: ; preds = %bb.bd
  %i.kw = trunc nuw i8 %i.ia to i1
  br i1 %i.kw, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

.backedge:                                        ; preds = %.thread3479..split275_crit_edge, %.split3478, %bb.ci, %bb.cm, %bb.ay, %bb.aw, %bb.at, %bb.ar, %bb.ap, %bb.bx, %bb.ca, %bb.av, %bb.ba, %bb.aq, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit97", %bb.cj, %.split, %.split275, %.split276, %.split277, %.split278, %.split279, %.split280, %.split281, %.split282, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit88, %.split283, %.split284, %.split285, %.split286, %.split287, %.split288, %.split289, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit
  %.sroa.0.0.i.i.i.be = phi i32 [ %i.hr, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit ], [ %i.lu, %bb.cj ], [ %i.ld, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit97" ], [ %i.hr, %bb.ay ], [ %i.hr, %.split ], [ %i.hr, %.split275 ], [ %i.hr, %.split276 ], [ %i.hr, %.split277 ], [ %i.hr, %.split278 ], [ %i.hr, %.split279 ], [ %i.hr, %.split280 ], [ %i.hr, %.split281 ], [ %i.hr, %.split282 ], [ %i.hr, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit88 ], [ %i.hr, %.split283 ], [ %i.hr, %.split284 ], [ %i.hr, %.split285 ], [ %i.hr, %.split286 ], [ %i.hr, %.split287 ], [ %i.hr, %.split288 ], [ %i.hr, %.split289 ], [ %i.hr, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit ], [ %i.hr, %bb.aq ], [ %i.hr, %bb.ba ], [ %i.hr, %bb.av ], [ %i.hr, %bb.ca ], [ %i.hr, %bb.bx ], [ %i.hr, %bb.ap ], [ %i.hr, %bb.ar ], [ %i.hr, %bb.at ], [ %i.hr, %bb.aw ], [ %i.ln, %bb.cm ], [ %i.ln, %bb.ci ], [ %i.hr, %.split3478 ], [ %i.hr, %.thread3479..split275_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %.sroa.0.0.i.i.i.be, ptr %i.w, align 4, !noalias !386
  %i.kx = zext i32 %.sroa.0.0.i.i.i.be to i64     ; 3 uses
  %i.ky = load i64, ptr %i.cj, align 8, !alias.scope !387, !noalias !362, !noundef !5 ; 2 uses
  %i.kz = icmp ugt i64 %i.ky, %i.kx
  br i1 %i.kz, label %.lr.ph1718, label %._crit_edge1719

bb.cf:                                            ; preds = %bb.aj
  %i.la = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !noalias !362, !noundef !5 ; 2 uses
  %.not11.i.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not11.i.i.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i, label %bb.cj

bb.cg:                                            ; preds = %bb.aj
  %i.lc = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !noalias !362, !noundef !5
  %i.le = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.lf = load i32, ptr %i.le, align 8, !noalias !362, !noundef !5
  %i.lg = load i64, ptr %i.z, align 8, !alias.scope !388, !noalias !389, !noundef !5 ; 3 uses
  %i.lh = load i64, ptr %2, align 8, !range !18, !alias.scope !388, !noalias !389, !noundef !5
  %i.li = icmp eq i64 %i.lg, %i.lh
  br i1 %i.li, label %bb.ch, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit97"

bb.ch:                                            ; preds = %bb.cg
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !389
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit97"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit97": ; preds = %bb.cg, %bb.ch
  %i.lj = load ptr, ptr %i.bx, align 8, !alias.scope !388, !noalias !389, !nonnull !5, !noundef !5
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lg ; 2 uses
  store i32 0, ptr %i.lk, align 8, !noalias !362
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store i32 %i.lf, ptr %.sroa.4244.0..sroa_idx, align 4, !noalias !362
  %i.ll = add i64 %i.lg, 1
  store i64 %i.ll, ptr %i.z, align 8, !alias.scope !388, !noalias !389
  br label %.backedge

bb.ci:                                            ; preds = %bb.aj
  %i.lm = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !362, !noundef !5 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.lp = load i32, ptr %i.lo, align 8, !noalias !362, !noundef !5 ; 2 uses
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %i.lr = icmp ugt i64 %i.et, %i.lq
  br i1 %i.lr, label %bb.ck, label %.backedge

bb.cj:                                            ; preds = %bb.cf
  %i.ls = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !362, !nonnull !5, !noundef !5 ; 3 uses
  %i.lu = load i32, ptr %i.lt, align 4, !noalias !362, !noundef !5
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lw = getelementptr [4 x i8], ptr %i.lt, i64 %i.lb
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.lv, ptr noundef %i.lw), !noalias !362
  br label %.backedge

bb.ck:                                            ; preds = %bb.ci
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.lq ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !359, !noalias !390, !noundef !5
  %i.lz = load i64, ptr %i.z, align 8, !alias.scope !391, !noalias !392, !noundef !5 ; 3 uses
  %i.ma = load i64, ptr %2, align 8, !range !18, !alias.scope !391, !noalias !392, !noundef !5
  %i.mb = icmp eq i64 %i.lz, %i.ma
  br i1 %i.mb, label %bb.cl, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit98"

bb.cl:                                            ; preds = %bb.ck
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !392
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit98"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit98": ; preds = %bb.ck, %bb.cl
  %i.mc = load ptr, ptr %i.bx, align 8, !alias.scope !391, !noalias !392, !nonnull !5, !noundef !5
  %i.md = getelementptr inbounds nuw [16 x i8], ptr %i.mc, i64 %i.lz ; 3 uses
  store i32 1, ptr %i.md, align 8, !noalias !362
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store i32 %i.lp, ptr %.sroa.4247.0..sroa_idx, align 4, !noalias !362
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i64 %i.ly, ptr %.sroa.5248.0..sroa_idx, align 8, !noalias !362
  %i.me = add i64 %i.lz, 1
  store i64 %i.me, ptr %i.z, align 8, !alias.scope !391, !noalias !392
  br i1 %.not.i29.i.i, label %bb.cn, label %bb.cm, !prof !8

bb.cm:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit98"
  call void @llvm.assume(i1 %6)
  store i64 %i.du, ptr %i.lx, align 8, !alias.scope !359, !noalias !390
  br label %.backedge

bb.cn:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit98"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !362
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i: ; preds = %.thread3479..split275_crit_edge, %.thread3479, %bb.bs, %bb.bl, %bb.ay, %bb.at, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit, %bb.cf, %.split, %.split275, %.split276, %.split277, %.split278, %.split279, %.split280, %.split281, %.split282, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit88, %.split283, %.split284, %.split285, %.split286, %.split287, %.split288, %.split289, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit, %.split3478, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit, %bb.co
  %.pr = load i64, ptr %i.z, align 8, !alias.scope !356, !noalias !357 ; 2 uses
  %i.mf = icmp eq i64 %.pr, 0
  br i1 %i.mf, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1725

bb.co:                                            ; preds = %bb.ab
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fq
  store i64 %.sroa.56.0.copyload.i21.i.i, ptr %i.mg, align 8, !alias.scope !352, !noalias !393
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i.i

bb.cp:                                            ; preds = %bb.ab
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fq, i64 noundef %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !358
  unreachable

bb.cq:                                            ; preds = %bb.w
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.mi = load i8, ptr %i.ds, align 1, !noalias !346, !noundef !5 ; 2 uses
  %.val69 = load ptr, ptr %i.mh, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.mj = getelementptr i8, ptr %i.ef, i64 16
  %.val70 = load i64, ptr %i.mj, align 8, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %.val70, 3
  %i.mk = getelementptr inbounds nuw i8, ptr %.val69, i64 %.idx
  %i.ml = icmp eq i64 %.val70, 0
  br i1 %i.ml, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph6212

bb.cr:                                            ; preds = %bb.cs
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i996210, i64 8 ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.mk
  br i1 %i.mn, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph6212

.lr.ph6212:                                       ; preds = %bb.cq, %bb.cr
  %.sroa.01.0.i996210 = phi ptr [ %i.mm, %bb.cr ], [ %.val69, %bb.cq ] ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i996210, i64 4
  %i.mp = load i8, ptr %i.mo, align 4, !noundef !5
  %i.mq = icmp ugt i8 %i.mp, %i.mi
  br i1 %i.mq, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph6212
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i996210, i64 5
  %i.ms = load i8, ptr %i.mr, align 1, !noundef !5
  %.not.i100 = icmp ugt i8 %i.mi, %i.ms
  br i1 %.not.i100, label %bb.cr, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.mt = load i32, ptr %.sroa.01.0.i996210, align 4, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.mu = load i64, ptr %i.cf, align 8, !alias.scope !394, !noalias !349, !noundef !5
  %i.mv = mul i64 %i.mu, %i.ec                    ; 4 uses
  %i.mw = load i64, ptr %i.ac, align 8, !alias.scope !394, !noalias !349, !noundef !5 ; 7 uses
  %i.mx = add i64 %i.mv, %i.mw                    ; 3 uses
  %i.my = load i64, ptr %i.cg, align 8, !alias.scope !394, !noalias !349, !noundef !5 ; 2 uses
  %i.mz = icmp ult i64 %i.mx, %i.mv
  %.not.i103 = icmp ugt i64 %i.mx, %i.my
  %or.cond.i104 = or i1 %i.mz, %.not.i103
  br i1 %or.cond.i104, label %bb.cu, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit105, !prof !16

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.mv, i64 noundef %i.mx, i64 noundef %i.my, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !395
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit105: ; preds = %bb.ct
  %i.na = load ptr, ptr %i.ch, align 8, !alias.scope !394, !noalias !349, !nonnull !5, !noundef !5
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.mv ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.nc = load i64, ptr %i.z, align 8, !alias.scope !398, !noalias !399, !noundef !5 ; 3 uses
  %i.nd = load i64, ptr %2, align 8, !range !18, !alias.scope !398, !noalias !399, !noundef !5
  %i.ne = icmp eq i64 %i.nc, %i.nd
  br i1 %i.ne, label %bb.cv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit106"

bb.cv:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit105
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !399
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit106"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit106": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit105, %bb.cv
  %i.nf = load ptr, ptr %i.bx, align 8, !alias.scope !398, !noalias !399, !nonnull !5, !noundef !5
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.nf, i64 %i.nc ; 2 uses
  store i32 0, ptr %i.ng, align 8, !noalias !400
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store i32 %i.mt, ptr %.sroa.4238.0..sroa_idx, align 4, !noalias !400
  %i.nh = add i64 %i.nc, 1                        ; 3 uses
  store i64 %i.nh, ptr %i.z, align 8, !alias.scope !398, !noalias !399
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1715.preheader

.lr.ph1715.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit106"
  %i.nj = shl i64 %i.mw, 3
  br label %.lr.ph1715

.lr.ph1715:                                       ; preds = %.lr.ph1715.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i
  %i.nk = phi i64 [ %.pr292, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i ], [ %i.nh, %.lr.ph1715.preheader ] ; 2 uses
  %i.nl = add nsw i64 %i.nk, -1                   ; 3 uses
  store i64 %i.nl, ptr %i.z, align 8, !alias.scope !401, !noalias !402
  %i.nm = load i64, ptr %2, align 8, !range !18, !alias.scope !401, !noalias !402, !noundef !5
  %i.nn = icmp samesign ult i64 %i.nl, %i.nm
  call void @llvm.assume(i1 %i.nn)
  %i.no = load ptr, ptr %i.bx, align 8, !alias.scope !401, !noalias !402, !nonnull !5, !noundef !5
  %i.np = icmp samesign ult i64 %i.nk, 576460752303423489
  call void @llvm.assume(i1 %i.np)
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %i.no, i64 %i.nl ; 3 uses
  %.sroa.04.0.copyload.i11.i.i = load i32, ptr %i.nq, align 8, !noalias !358
  %.sroa.45.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %.sroa.45.0.copyload.i13.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i12.i.i, align 4, !noalias !358 ; 4 uses
  %.sroa.56.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.sroa.56.0.copyload.i15.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i14.i.i, align 8, !noalias !358
  %i.nr = trunc i32 %.sroa.04.0.copyload.i11.i.i to i1
  br i1 %i.nr, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph1715
  %i.ns = zext i32 %.sroa.45.0.copyload.i13.i.i to i64 ; 3 uses
  %i.nt = icmp ugt i64 %i.mw, %i.ns
  br i1 %i.nt, label %bb.eu, label %bb.ev

bb.cx:                                            ; preds = %.lr.ph1715
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %.sroa.45.0.copyload.i13.i.i, ptr %i.r, align 4, !noalias !404
  %i.nu = zext i32 %.sroa.45.0.copyload.i13.i.i to i64 ; 3 uses
  %i.nv = load i64, ptr %i.cj, align 8, !alias.scope !405, !noalias !406, !noundef !5 ; 2 uses
  %i.nw = icmp ugt i64 %i.nv, %i.nu
  br i1 %i.nw, label %.lr.ph1708, label %._crit_edge1709

.lr.ph1708:                                       ; preds = %bb.cx, %.backedge383
  %i.nx = phi i64 [ %i.sz, %.backedge383 ], [ %i.nu, %bb.cx ] ; 5 uses
  %i.ny = phi i32 [ %.sroa.0.0.i23.i.i.be, %.backedge383 ], [ %.sroa.45.0.copyload.i13.i.i, %bb.cx ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.nz = load ptr, ptr %i.ck, align 8, !alias.scope !408, !noalias !406, !nonnull !5, !noundef !5
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.nx
  %i.ob = load i32, ptr %i.oa, align 4, !noalias !409, !noundef !5
  %i.oc = zext i32 %i.ob to i64                   ; 4 uses
  %i.od = load i64, ptr %i.ae, align 8, !alias.scope !408, !noalias !406, !noundef !5 ; 5 uses
  %i.oe = icmp ugt i64 %i.od, %i.oc
  %.pre3343 = load i64, ptr %i.cl, align 8, !noalias !406 ; 5 uses
  br i1 %i.oe, label %bb.cy, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108.thread

._crit_edge1709:                                  ; preds = %bb.cx, %.backedge383
  %.lcssa631 = phi i64 [ %i.sz, %.backedge383 ], [ %i.nu, %bb.cx ]
  %.lcssa618 = phi i64 [ %i.ta, %.backedge383 ], [ %i.nv, %bb.cx ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa631, i64 noundef %.lcssa618, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !409
  unreachable

bb.cy:                                            ; preds = %.lr.ph1708
  %i.of = icmp ugt i64 %.pre3343, %i.oc
  br i1 %i.of, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.oc, i64 noundef %.pre3343, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !409
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108: ; preds = %bb.cy
  %i.og = load ptr, ptr %i.cm, align 8, !alias.scope !408, !noalias !406, !nonnull !5, !noundef !5
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.oc
  %i.oi = load i32, ptr %i.oh, align 4, !noalias !409, !noundef !5
  %i.oj = icmp eq i32 %i.oi, %i.ny
  br i1 %i.oj, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit45, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108.thread: ; preds = %.lr.ph1708, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108
  store i64 %i.od, ptr %i.q, align 8, !noalias !410
  %i.ok = icmp ult i64 %.pre3343, 2305843009213693952
  call void @llvm.assume(i1 %i.ok), !noalias !406
  %i.ol = icmp ult i64 %i.od, %.pre3343
  br i1 %i.ol, label %bb.db, label %bb.da, !prof !6

bb.da:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !410
  store i64 %.pre3343, ptr %i.o, align 8, !noalias !410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !410
  store ptr %i.q, ptr %i.n, align 8, !noalias !410
  %.sroa.43.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i41, align 8, !noalias !410
  %i.om = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.om, align 8, !noalias !410
  %.sroa.47.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i42, align 8, !noalias !410
  %i.on = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.r, ptr %i.on, align 8, !noalias !410
  %.sroa.411.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i43, align 8, !noalias !410
  store ptr @66, ptr %i.p, align 8, !noalias !410
  %i.oo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 3, ptr %i.oo, align 8, !noalias !410
  %i.op = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.op, align 8, !noalias !410
  %i.oq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.n, ptr %i.oq, align 8, !noalias !410
  %i.or = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 3, ptr %i.or, align 8, !noalias !410
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !406
  unreachable

bb.db:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit108.thread
  %i.os = and i64 %i.od, 4294967295
  %i.ot = load ptr, ptr %i.cm, align 8, !alias.scope !407, !noalias !406, !nonnull !5, !noundef !5
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.os
  store i32 %i.ny, ptr %i.ou, align 4, !noalias !406
  %i.ov = zext i32 %i.ny to i64                   ; 3 uses
  %i.ow = load i64, ptr %i.cj, align 8, !alias.scope !407, !noalias !406, !noundef !5 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a
  br i1 %.not.i139, label %.thread3485, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.pz = load i8, ptr %i.ds, align 1, !alias.scope !422, !noundef !5
  %i.qa = zext i8 %i.pz to i64
  %i.qb = getelementptr inbounds nuw i8, ptr @79, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !range !12, !noalias !422, !noundef !5 ; 2 uses
  br i1 %i.dv, label %.split300, label %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit60

.thread3485:                                      ; preds = %bb.du
  br i1 %i.dv, label %.thread3485..split300_crit_edge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.thread3485..split300_crit_edge:                  ; preds = %.thread3485
  %i.qd = load i8, ptr %i.dw, align 1, !alias.scope !422, !noundef !5
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw i8, ptr @79, i64 %i.qe
  %i.qg = load i8, ptr %i.qf, align 1, !range !12, !noalias !422, !noundef !5
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.split300:                                        ; preds = %bb.dv
  %i.qi = load i8, ptr %i.dw, align 1, !alias.scope !422, !noundef !5
  %i.qj = zext i8 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr @79, i64 %i.qj
  %i.ql = load i8, ptr %i.qk, align 1, !range !12, !noalias !422, !noundef !5
  %.not4856 = icmp eq i8 %i.qc, %i.ql
  br i1 %.not4856, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %.backedge383

bb.dw:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  br i1 %.not.i139, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %.sroa.0.0.i124 = phi i1 [ %i.qq, %bb.dy ], [ false, %bb.dw ] ; 2 uses
  br i1 %i.dv, label %.split3484, label %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit126

bb.dy:                                            ; preds = %bb.dw
  %i.qm = load i8, ptr %i.ds, align 1, !alias.scope !423, !noundef !5
  %i.qn = zext i8 %i.qm to i64
  %i.qo = getelementptr inbounds nuw i8, ptr @79, i64 %i.qn
  %i.qp = load i8, ptr %i.qo, align 1, !range !12, !noalias !423, !noundef !5
  %i.qq = trunc nuw i8 %i.qp to i1
  br label %bb.dx

.split3484:                                       ; preds = %bb.dx
  %i.qr = load i8, ptr %i.dw, align 1, !alias.scope !423, !noundef !5
  %i.qs = zext i8 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr @79, i64 %i.qs
  %i.qu = load i8, ptr %i.qt, align 1, !range !12, !noalias !423, !noundef !5
  %i.qv = trunc nuw i8 %i.qu to i1
  %i.qw = xor i1 %.sroa.0.0.i124, %i.qv
  br i1 %i.qw, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %.backedge383

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit126: ; preds = %bb.dx
  br i1 %.sroa.0.0.i124, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %.backedge383

.split310:                                        ; preds = %bb.dj
  %i.qx = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.split314:                                        ; preds = %bb.dj
  %i.qz = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.ra = trunc nuw i8 %i.qz to i1
  br i1 %i.ra, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.dz:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  br i1 %.not.i139, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.rb = load i8, ptr %i.bs, align 1, !alias.scope !424, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !424
  %i.rc = zext i8 %i.rb to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !range !12, !noalias !424, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !424
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132

bb.eb:                                            ; preds = %bb.dz
  %i.rf = load i8, ptr %i.ds, align 1, !alias.scope !424, !noundef !5
  %i.rg = zext i8 %i.rf to i64
  %i.rh = getelementptr inbounds nuw i8, ptr @79, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !range !12, !noalias !424, !noundef !5
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.dv, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.ed, %bb.eb
  %.sroa.0.0.i128 = phi i8 [ %i.rn, %bb.ed ], [ 0, %bb.eb ]
  %spec.select.i129 = select i1 %i.rj, i8 0, i8 %.sroa.0.0.i128
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132

bb.ed:                                            ; preds = %bb.eb
  %i.rk = load i8, ptr %i.dw, align 1, !alias.scope !424, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !424
  %i.rl = zext i8 %i.rk to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rl
  %i.rn = load i8, ptr %i.rm, align 1, !range !12, !noalias !424, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !424
  br label %bb.ec

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132: ; preds = %bb.ea, %bb.ec
  %.sroa.0.1.i130 = phi i8 [ %i.re, %bb.ea ], [ %spec.select.i129, %bb.ec ]
  %i.ro = trunc nuw i8 %.sroa.0.1.i130 to i1
  br i1 %i.ro, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.ee:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  br i1 %.not.i139, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.rp = load i8, ptr %i.ds, align 1, !alias.scope !425, !noundef !5
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr @79, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !range !12, !noalias !425, !noundef !5
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.dv, label %bb.eg, label %.split311

.split311:                                        ; preds = %bb.eg, %bb.ef
  %.sroa.02.0.i134 = phi i1 [ %i.rz, %bb.eg ], [ true, %bb.ef ]
  %spec.select.i135 = select i1 %i.rt, i1 %.sroa.02.0.i134, i1 false
  br i1 %spec.select.i135, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.ru = load i8, ptr %i.dw, align 1, !alias.scope !425, !noundef !5
  %i.rv = zext i8 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr @79, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !range !12, !noalias !425, !noundef !5
  %i.ry = trunc nuw i8 %i.rx to i1
  %i.rz = xor i1 %i.ry, true
  br label %.split311

.split313:                                        ; preds = %bb.dj
  %i.sa = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.split312:                                        ; preds = %bb.dj
  %i.sc = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.eh:                                            ; preds = %bb.dj
  call void @llvm.experimental.noalias.scope.decl(metadata !426)
  br i1 %.not.i139, label %.backedge383, label %.split304

.split304:                                        ; preds = %bb.eh
  %i.se = load i8, ptr %i.ds, align 1, !alias.scope !426, !noundef !5
  %i.sf = zext i8 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr @79, i64 %i.sf
  %i.sh = load i8, ptr %i.sg, align 1, !range !12, !noalias !426, !noundef !5
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %.backedge383

bb.ei:                                            ; preds = %bb.dj
  br i1 %i.dv, label %.split308, label %.backedge383

.split309:                                        ; preds = %bb.dj
  %i.sj = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.split303:                                        ; preds = %bb.dj
  %i.sl = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.split305:                                        ; preds = %bb.dk
  %i.sn = load i8, ptr %i.ds, align 1, !alias.scope !419, !noalias !427, !noundef !5
  %i.so = load i8, ptr %i.ce, align 16, !alias.scope !418, !noalias !428, !noundef !5
  %i.sp = icmp eq i8 %i.sn, %i.so
  br i1 %i.sp, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.ej:                                            ; preds = %bb.dl
  br i1 %i.dv, label %.split307, label %bb.ek

.split307:                                        ; preds = %bb.ej
  %i.sq = load i8, ptr %i.dw, align 1, !alias.scope !419, !noalias !427, !noundef !5
  %i.sr = load i8, ptr %i.ce, align 16, !alias.scope !418, !noalias !428, !noundef !5
  %i.ss = icmp eq i8 %i.sq, %i.sr
  br i1 %i.ss, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dt, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !429
  unreachable

.split308:                                        ; preds = %bb.ei
  %i.st = load i8, ptr %i.dw, align 1, !alias.scope !419, !noalias !427, !noundef !5
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @79, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !range !12, !noalias !429, !noundef !5
  %i.sx = trunc nuw i8 %i.sw to i1
  br i1 %i.sx, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %.backedge383

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit60: ; preds = %bb.dv
  %i.sy = trunc nuw i8 %i.qc to i1
  br i1 %i.sy, label %.backedge383, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

.backedge383:                                     ; preds = %.thread3485..split300_crit_edge, %.split3484, %bb.eo, %bb.es, %bb.dr, %bb.dp, %bb.dn, %bb.dm, %bb.dk, %bb.eh, %bb.ei, %bb.do, %bb.dt, %bb.dl, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit60, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit142", %bb.ep, %.split299, %.split300, %.split301, %.split302, %.split303, %.split304, %.split305, %.split306, %.split307, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit126, %.split308, %.split309, %.split310, %.split311, %.split312, %.split313, %.split314, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132
  %.sroa.0.0.i23.i.i.be = phi i32 [ %i.pt, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit60 ], [ %i.tw, %bb.ep ], [ %i.tf, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit142" ], [ %i.pt, %bb.dr ], [ %i.pt, %.split299 ], [ %i.pt, %.split300 ], [ %i.pt, %.split301 ], [ %i.pt, %.split302 ], [ %i.pt, %.split303 ], [ %i.pt, %.split304 ], [ %i.pt, %.split305 ], [ %i.pt, %.split306 ], [ %i.pt, %.split307 ], [ %i.pt, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit126 ], [ %i.pt, %.split308 ], [ %i.pt, %.split309 ], [ %i.pt, %.split310 ], [ %i.pt, %.split311 ], [ %i.pt, %.split312 ], [ %i.pt, %.split313 ], [ %i.pt, %.split314 ], [ %i.pt, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132 ], [ %i.pt, %bb.dl ], [ %i.pt, %bb.dt ], [ %i.pt, %bb.do ], [ %i.pt, %bb.ei ], [ %i.pt, %bb.eh ], [ %i.pt, %bb.dk ], [ %i.pt, %bb.dm ], [ %i.pt, %bb.dn ], [ %i.pt, %bb.dp ], [ %i.tp, %bb.es ], [ %i.tp, %bb.eo ], [ %i.pt, %.split3484 ], [ %i.pt, %.thread3485..split300_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %.sroa.0.0.i23.i.i.be, ptr %i.r, align 4, !noalias !430
  %i.sz = zext i32 %.sroa.0.0.i23.i.i.be to i64   ; 3 uses
  %i.ta = load i64, ptr %i.cj, align 8, !alias.scope !431, !noalias !406, !noundef !5 ; 2 uses
  %i.tb = icmp ugt i64 %i.ta, %i.sz
  br i1 %i.tb, label %.lr.ph1708, label %._crit_edge1709

bb.el:                                            ; preds = %bb.de
  %i.tc = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.td = load i64, ptr %i.tc, align 8, !noalias !406, !noundef !5 ; 2 uses
  %.not11.i25.i.i = icmp eq i64 %i.td, 0
  br i1 %.not11.i25.i.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i, label %bb.ep

bb.em:                                            ; preds = %bb.de
  %i.te = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !noalias !406, !noundef !5
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.th = load i32, ptr %i.tg, align 8, !noalias !406, !noundef !5
  %i.ti = load i64, ptr %i.z, align 8, !alias.scope !432, !noalias !433, !noundef !5 ; 3 uses
  %i.tj = load i64, ptr %2, align 8, !range !18, !alias.scope !432, !noalias !433, !noundef !5
  %i.tk = icmp eq i64 %i.ti, %i.tj
  br i1 %i.tk, label %bb.en, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit142"

bb.en:                                            ; preds = %bb.em
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !433
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit142"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit142": ; preds = %bb.em, %bb.en
  %i.tl = load ptr, ptr %i.bx, align 8, !alias.scope !432, !noalias !433, !nonnull !5, !noundef !5
  %i.tm = getelementptr inbounds nuw [16 x i8], ptr %i.tl, i64 %i.ti ; 2 uses
  store i32 0, ptr %i.tm, align 8, !noalias !406
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 %i.th, ptr %.sroa.4250.0..sroa_idx, align 4, !noalias !406
  %i.tn = add i64 %i.ti, 1
  store i64 %i.tn, ptr %i.z, align 8, !alias.scope !432, !noalias !433
  br label %.backedge383

bb.eo:                                            ; preds = %bb.de
  %i.to = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.tp = load i32, ptr %i.to, align 4, !noalias !406, !noundef !5 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.tr = load i32, ptr %i.tq, align 8, !noalias !406, !noundef !5 ; 2 uses
  %i.ts = zext i32 %i.tr to i64                   ; 2 uses
  %i.tt = icmp ugt i64 %i.mw, %i.ts
  br i1 %i.tt, label %bb.eq, label %.backedge383

bb.ep:                                            ; preds = %bb.el
  %i.tu = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.tv = load ptr, ptr %i.tu, align 8, !noalias !406, !nonnull !5, !noundef !5 ; 3 uses
  %i.tw = load i32, ptr %i.tv, align 4, !noalias !406, !noundef !5
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.ty = getelementptr [4 x i8], ptr %i.tv, i64 %i.td
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.tx, ptr noundef %i.ty), !noalias !406
  br label %.backedge383

bb.eq:                                            ; preds = %bb.eo
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.ts ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !alias.scope !403, !noalias !434, !noundef !5
  %i.ub = load i64, ptr %i.z, align 8, !alias.scope !435, !noalias !436, !noundef !5 ; 3 uses
  %i.uc = load i64, ptr %2, align 8, !range !18, !alias.scope !435, !noalias !436, !noundef !5
  %i.ud = icmp eq i64 %i.ub, %i.uc
  br i1 %i.ud, label %bb.er, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit143"

bb.er:                                            ; preds = %bb.eq
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !436
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit143"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit143": ; preds = %bb.eq, %bb.er
  %i.ue = load ptr, ptr %i.bx, align 8, !alias.scope !435, !noalias !436, !nonnull !5, !noundef !5
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.ue, i64 %i.ub ; 3 uses
  store i32 1, ptr %i.uf, align 8, !noalias !406
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  store i32 %i.tr, ptr %.sroa.4253.0..sroa_idx, align 4, !noalias !406
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  store i64 %i.ua, ptr %.sroa.5254.0..sroa_idx, align 8, !noalias !406
  %i.ug = add i64 %i.ub, 1
  store i64 %i.ug, ptr %i.z, align 8, !alias.scope !435, !noalias !436
  br i1 %.not.i29.i.i, label %bb.et, label %bb.es, !prof !8

bb.es:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit143"
  call void @llvm.assume(i1 %6)
  store i64 %i.du, ptr %i.tz, align 8, !alias.scope !403, !noalias !434
  br label %.backedge383

bb.et:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit143"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !406
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i: ; preds = %.thread3485..split300_crit_edge, %.thread3485, %bb.ee, %bb.dr, %bb.dn, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit60, %bb.el, %.split299, %.split300, %.split301, %.split302, %.split303, %.split304, %.split305, %.split306, %.split307, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit126, %.split308, %.split309, %.split310, %.split311, %.split312, %.split313, %.split314, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit132, %.split3484, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit113", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit45, %bb.eu
  %.pr292 = load i64, ptr %i.z, align 8, !alias.scope !401, !noalias !402 ; 2 uses
  %i.uh = icmp eq i64 %.pr292, 0
  br i1 %i.uh, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1715

bb.eu:                                            ; preds = %bb.cw
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.ns
  store i64 %.sroa.56.0.copyload.i15.i.i, ptr %i.ui, align 8, !alias.scope !397, !noalias !437
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i.i

bb.ev:                                            ; preds = %bb.cw
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ns, i64 noundef %i.mw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !358
  unreachable

bb.ew:                                            ; preds = %bb.x
  %i.uj = load i8, ptr %i.ds, align 1, !noalias !346, !noundef !5
  %i.uk = zext i8 %i.uj to i64                    ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.um = load i64, ptr %i.ul, align 8, !noalias !346, !noundef !5 ; 2 uses
  %i.un = icmp ugt i64 %i.um, %i.uk
  br i1 %i.un, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !noalias !346, !nonnull !5, !noundef !5
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %i.uk
  %i.ur = load i32, ptr %i.uq, align 4, !noalias !346, !noundef !5 ; 2 uses
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.uk, i64 noundef %i.um, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #22, !noalias !346
  unreachable

bb.ez:                                            ; preds = %bb.ex
  call void @llvm.experimental.noalias.scope.decl(metadata !438)
  %i.ut = load i64, ptr %i.cf, align 8, !alias.scope !438, !noalias !349, !noundef !5
  %i.uu = mul i64 %i.ut, %i.ec                    ; 4 uses
  %i.uv = load i64, ptr %i.ac, align 8, !alias.scope !438, !noalias !349, !noundef !5 ; 7 uses
  %i.uw = add i64 %i.uu, %i.uv                    ; 3 uses
  %i.ux = load i64, ptr %i.cg, align 8, !alias.scope !438, !noalias !349, !noundef !5 ; 2 uses
  %i.uy = icmp ult i64 %i.uw, %i.uu
  %.not.i144 = icmp ugt i64 %i.uw, %i.ux
  %or.cond.i145 = or i1 %i.uy, %.not.i144
  br i1 %or.cond.i145, label %bb.fa, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit146, !prof !16

bb.fa:                                            ; preds = %bb.ez
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.uu, i64 noundef %i.uw, i64 noundef %i.ux, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !439
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit146: ; preds = %bb.ez
  %i.uz = load ptr, ptr %i.ch, align 8, !alias.scope !438, !noalias !349, !nonnull !5, !noundef !5
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.uu ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !440)
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.vb = load i64, ptr %i.z, align 8, !alias.scope !442, !noalias !443, !noundef !5 ; 3 uses
  %i.vc = load i64, ptr %2, align 8, !range !18, !alias.scope !442, !noalias !443, !noundef !5
  %i.vd = icmp eq i64 %i.vb, %i.vc
  br i1 %i.vd, label %bb.fb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit147"

bb.fb:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit146
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !443
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit147"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit147": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit146, %bb.fb
  %i.ve = load ptr, ptr %i.bx, align 8, !alias.scope !442, !noalias !443, !nonnull !5, !noundef !5
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.ve, i64 %i.vb ; 2 uses
  store i32 0, ptr %i.vf, align 8, !noalias !444
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  store i32 %i.ur, ptr %.sroa.4235.0..sroa_idx, align 4, !noalias !444
  %i.vg = add i64 %i.vb, 1                        ; 3 uses
  store i64 %i.vg, ptr %i.z, align 8, !alias.scope !442, !noalias !443
  %i.vh = icmp eq i64 %i.vg, 0
  br i1 %i.vh, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i, label %.lr.ph1705.preheader

.lr.ph1705.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit147"
  %i.vi = shl i64 %i.uv, 3
  br label %.lr.ph1705

.lr.ph1705:                                       ; preds = %.lr.ph1705.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i
  %i.vj = phi i64 [ %.pr315, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i ], [ %i.vg, %.lr.ph1705.preheader ] ; 2 uses
  %i.vk = add nsw i64 %i.vj, -1                   ; 3 uses
  store i64 %i.vk, ptr %i.z, align 8, !alias.scope !445, !noalias !446
  %i.vl = load i64, ptr %2, align 8, !range !18, !alias.scope !445, !noalias !446, !noundef !5
  %i.vm = icmp samesign ult i64 %i.vk, %i.vl
  call void @llvm.assume(i1 %i.vm)
  %i.vn = load ptr, ptr %i.bx, align 8, !alias.scope !445, !noalias !446, !nonnull !5, !noundef !5
  %i.vo = icmp samesign ult i64 %i.vj, 576460752303423489
  call void @llvm.assume(i1 %i.vo)
  %i.vp = getelementptr inbounds nuw [16 x i8], ptr %i.vn, i64 %i.vk ; 3 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.vp, align 8, !noalias !358
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 4
  %.sroa.45.0.copyload.i.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i.i.i, align 4, !noalias !358 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %.sroa.56.0.copyload.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !358
  %i.vq = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.vq, label %bb.fc, label %.split1697

bb.fc:                                            ; preds = %.lr.ph1705
  %i.vr = zext i32 %.sroa.45.0.copyload.i.i.i to i64 ; 3 uses
  %i.vs = icmp ugt i64 %i.uv, %i.vr
  br i1 %i.vs, label %bb.gj, label %bb.gk

.split1697:                                       ; preds = %.lr.ph1705
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.45.0.copyload.i.i.i, ptr %i.m, align 4, !noalias !448
  %i.vt = zext i32 %.sroa.45.0.copyload.i.i.i to i64 ; 3 uses
  %i.vu = load i64, ptr %i.cj, align 8, !alias.scope !449, !noalias !450, !noundef !5 ; 2 uses
  %i.vv = icmp ugt i64 %i.vu, %i.vt
  br i1 %i.vv, label %.lr.ph1699, label %.split1697._crit_edge

.lr.ph1699:                                       ; preds = %.split1697, %.backedge384
  %i.vw = phi i64 [ %i.aao, %.backedge384 ], [ %i.vt, %.split1697 ] ; 5 uses
  %i.vx = phi i32 [ %.sroa.0.0.i28.i.i.be, %.backedge384 ], [ %.sroa.45.0.copyload.i.i.i, %.split1697 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.vy = load ptr, ptr %i.ck, align 8, !alias.scope !452, !noalias !450, !nonnull !5, !noundef !5
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.vy, i64 %i.vw
  %i.wa = load i32, ptr %i.vz, align 4, !noalias !453, !noundef !5
  %i.wb = zext i32 %i.wa to i64                   ; 4 uses
  %i.wc = load i64, ptr %i.ae, align 8, !alias.scope !452, !noalias !450, !noundef !5 ; 5 uses
  %i.wd = icmp ugt i64 %i.wc, %i.wb
  %.pre3342 = load i64, ptr %i.cl, align 8, !noalias !450 ; 5 uses
  br i1 %i.wd, label %bb.fd, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149.thread

.split1697._crit_edge:                            ; preds = %.split1697, %.backedge384
  %.lcssa545 = phi i64 [ %i.aao, %.backedge384 ], [ %i.vt, %.split1697 ]
  %.lcssa532 = phi i64 [ %i.aap, %.backedge384 ], [ %i.vu, %.split1697 ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa545, i64 noundef %.lcssa532, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !453
  unreachable

bb.fd:                                            ; preds = %.lr.ph1699
  %i.we = icmp ugt i64 %.pre3342, %i.wb
  br i1 %i.we, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.wb, i64 noundef %.pre3342, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !453
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149: ; preds = %bb.fd
  %i.wf = load ptr, ptr %i.cm, align 8, !alias.scope !452, !noalias !450, !nonnull !5, !noundef !5
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.wf, i64 %i.wb
  %i.wh = load i32, ptr %i.wg, align 4, !noalias !453, !noundef !5
  %i.wi = icmp eq i32 %i.wh, %i.vx
  br i1 %i.wi, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit50, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149.thread: ; preds = %.lr.ph1699, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149
  store i64 %i.wc, ptr %i.l, align 8, !noalias !454
  %i.wj = icmp ult i64 %.pre3342, 2305843009213693952
  call void @llvm.assume(i1 %i.wj), !noalias !450
  %i.wk = icmp ult i64 %i.wc, %.pre3342
  br i1 %i.wk, label %bb.fg, label %bb.ff, !prof !6

bb.ff:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !454
  store i64 %.pre3342, ptr %i.j, align 8, !noalias !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !454
  store ptr %i.l, ptr %i.i, align 8, !noalias !454
  %.sroa.43.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i46, align 8, !noalias !454
  %i.wl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.wl, align 8, !noalias !454
  %.sroa.47.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i47, align 8, !noalias !454
  %i.wm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.wm, align 8, !noalias !454
  %.sroa.411.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i48, align 8, !noalias !454
  store ptr @66, ptr %i.k, align 8, !noalias !454
  %i.wn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 3, ptr %i.wn, align 8, !noalias !454
  %i.wo = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.wo, align 8, !noalias !454
  %i.wp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.wp, align 8, !noalias !454
  %i.wq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 3, ptr %i.wq, align 8, !noalias !454
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !450
  unreachable

bb.fg:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149.thread
  %i.wr = and i64 %i.wc, 4294967295
  %i.ws = load ptr, ptr %i.cm, align 8, !alias.scope !451, !noalias !450, !nonnull !5, !noundef !5
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.ws, i64 %i.wr
  store i32 %i.vx, ptr %i.wt, align 4, !noalias !450
  %i.wu = zext i32 %i.vx to i64                   ; 3 uses
  %i.wv = load i64, ptr %i.cj, align 8, !alias.scope !451, !noalias !450, !noundef !5 ; 2 uses
  %i.ww = icmp ugt i64 %i.wv, %i.wu
  br i1 %i.ww, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.wu, i64 noundef %i.wv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22, !noalias !450
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit50: ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
end_hunk_2
begin_hunk_3_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a
    i32 0, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i
    i32 1, label %.split324
    i32 2, label %.split328
    i32 3, label %bb.fp
    i32 4, label %bb.fq
    i32 5, label %bb.fs
    i32 6, label %bb.fu
    i32 7, label %bb.fv
    i32 8, label %.split333
    i32 9, label %.split337
    i32 10, label %bb.fw
    i32 11, label %bb.fx
    i32 12, label %.split336
    i32 13, label %.split335
    i32 14, label %.split327
    i32 15, label %bb.fz
    i32 16, label %.split332
    i32 17, label %.split326
  ]

.split324:                                        ; preds = %bb.fo
  br i1 %i.dx, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.dx, label %.backedge384, label %.split330

bb.fq:                                            ; preds = %bb.fo
  %i.xu = load i8, ptr %i.ds, align 1, !alias.scope !464, !noundef !5
  switch i8 %i.xu, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i [
    i8 10, label %.backedge384
    i8 13, label %bb.fr
  ]

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.dv, label %.split329, label %.backedge384

.split329:                                        ; preds = %bb.fr
  %i.xv = load i8, ptr %i.dw, align 1, !alias.scope !464, !noundef !5
  %.not377 = icmp eq i8 %i.xv, 10
  br i1 %.not377, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

bb.fs:                                            ; preds = %bb.fo
  br i1 %i.dx, label %.backedge384, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.xw = load i8, ptr %i.dw, align 1, !alias.scope !465, !noundef !5
  switch i8 %i.xw, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i [
    i8 13, label %.backedge384
    i8 10, label %.split325
  ]

.split325:                                        ; preds = %bb.ft
  %i.xx = load i8, ptr %i.ds, align 1, !alias.scope !465, !noundef !5
  %.not376 = icmp eq i8 %i.xx, 13
  br i1 %.not376, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

bb.fu:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.xy = load i8, ptr %i.ds, align 1, !alias.scope !466, !noundef !5
  %i.xz = zext i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr @79, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !range !12, !noalias !466, !noundef !5 ; 2 uses
  br i1 %i.dv, label %.split323, label %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63

.split323:                                        ; preds = %bb.fu
  %i.yc = load i8, ptr %i.dw, align 1, !alias.scope !466, !noundef !5
  %i.yd = zext i8 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr @79, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !range !12, !noalias !466, !noundef !5
  %.not1738 = icmp eq i8 %i.yb, %i.yf
  br i1 %.not1738, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

bb.fv:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.yg = load i8, ptr %i.ds, align 1, !alias.scope !467, !noundef !5
  %i.yh = zext i8 %i.yg to i64
  %i.yi = getelementptr inbounds nuw i8, ptr @79, i64 %i.yh
  %i.yj = load i8, ptr %i.yi, align 1, !range !12, !noalias !467, !noundef !5 ; 2 uses
  br i1 %i.dv, label %.split3490, label %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167

.split3490:                                       ; preds = %bb.fv
  %i.yk = load i8, ptr %i.dw, align 1, !alias.scope !467, !noundef !5
  %i.yl = zext i8 %i.yk to i64
  %i.ym = getelementptr inbounds nuw i8, ptr @79, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1, !range !12, !noalias !467, !noundef !5
  %.not4855 = icmp eq i8 %i.yj, %i.yn
  br i1 %.not4855, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167: ; preds = %bb.fv
  %i.yo = trunc nuw i8 %i.yj to i1
  br i1 %i.yo, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

.split333:                                        ; preds = %bb.fo
  %i.yp = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.yq = trunc nuw i8 %i.yp to i1
  br i1 %i.yq, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split337:                                        ; preds = %bb.fo
  %i.yr = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.ys = trunc nuw i8 %i.yr to i1
  br i1 %i.ys, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

bb.fw:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  br i1 %i.dv, label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173: ; preds = %bb.fw
  %i.yt = load i8, ptr %i.ds, align 1, !alias.scope !468, !noundef !5
  %i.yu = zext i8 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr @79, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !range !12, !noalias !468, !noundef !5
  %i.yx = trunc nuw i8 %i.yw to i1
  %i.yy = load i8, ptr %i.dw, align 1, !alias.scope !468, !noundef !5
  %i.yz = zext i8 %i.yy to i64
  %i.za = getelementptr inbounds nuw i8, ptr @79, i64 %i.yz
  %i.zb = load i8, ptr %i.za, align 1, !range !12, !noalias !468, !noundef !5
  %i.zc = trunc nuw i8 %i.zb to i1
  %not. = xor i1 %i.yx, true
  %i.zd = and i1 %not., %i.zc
  br i1 %i.zd, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

bb.fx:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ze = load i8, ptr %i.ds, align 1, !alias.scope !469, !noundef !5
  %i.zf = zext i8 %i.ze to i64
  %i.zg = getelementptr inbounds nuw i8, ptr @79, i64 %i.zf
  %i.zh = load i8, ptr %i.zg, align 1, !range !12, !noalias !469, !noundef !5
  %i.zi = trunc nuw i8 %i.zh to i1
  br i1 %i.dv, label %bb.fy, label %.split334

.split334:                                        ; preds = %bb.fy, %bb.fx
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
  br label %.split334

.split336:                                        ; preds = %bb.fo
  %i.zp = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split335:                                        ; preds = %bb.fo
  %i.zr = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split327:                                        ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.zt = load i8, ptr %i.ds, align 1, !alias.scope !470, !noundef !5
  %i.zu = zext i8 %i.zt to i64
  %i.zv = getelementptr inbounds nuw i8, ptr @79, i64 %i.zu
  %i.zw = load i8, ptr %i.zv, align 1, !range !12, !noalias !470, !noundef !5
  %i.zx = trunc nuw i8 %i.zw to i1
  br i1 %i.zx, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i, label %.backedge384

bb.fz:                                            ; preds = %bb.fo
  br i1 %i.dv, label %.split331, label %.backedge384

.split332:                                        ; preds = %bb.fo
  %i.zy = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.zz = trunc nuw i8 %i.zy to i1
  br i1 %i.zz, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split326:                                        ; preds = %bb.fo
  %i.aaa = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %i.dt)
  %i.aab = trunc nuw i8 %i.aaa to i1
  br i1 %i.aab, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split328:                                        ; preds = %bb.fo
  %i.aac = load i8, ptr %i.ds, align 1, !alias.scope !463, !noalias !471, !noundef !5
  %i.aad = load i8, ptr %i.ce, align 16, !alias.scope !462, !noalias !472, !noundef !5
  %i.aae = icmp eq i8 %i.aac, %i.aad
  br i1 %i.aae, label %.backedge384, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i

.split330:                                        ; preds = %bb.fp
  %i.aaf = load i8, ptr %i.dw, align 1, !alias.scope !463, !noalias !471, !noundef !5
  %i.aag = load i8, ptr %i.ce, align 16, !alias.scope !462, !noalias !472, !noundef !5
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

.backedge384:                                     ; preds = %.split3490, %bb.gd, %bb.gh, %bb.ft, %bb.fs, %bb.fq, %bb.fz, %bb.fr, %bb.fp, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183", %bb.ge, %.split323, %.split324, %.split325, %.split326, %.split327, %.split328, %.split329, %.split330, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167, %.split331, %.split332, %.split333, %.split334, %.split335, %.split336, %.split337, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173
  %.sroa.0.0.i28.i.i.be = phi i32 [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63 ], [ %i.abl, %bb.ge ], [ %i.aau, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183" ], [ %i.xs, %bb.ft ], [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173 ], [ %i.xs, %.split323 ], [ %i.xs, %.split324 ], [ %i.xs, %.split325 ], [ %i.xs, %.split326 ], [ %i.xs, %.split327 ], [ %i.xs, %.split328 ], [ %i.xs, %.split329 ], [ %i.xs, %.split330 ], [ %i.xs, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167 ], [ %i.xs, %.split331 ], [ %i.xs, %.split332 ], [ %i.xs, %.split333 ], [ %i.xs, %.split334 ], [ %i.xs, %.split335 ], [ %i.xs, %.split336 ], [ %i.xs, %.split337 ], [ %i.xs, %bb.fp ], [ %i.xs, %bb.fr ], [ %i.xs, %bb.fz ], [ %i.xs, %bb.fq ], [ %i.xs, %bb.fs ], [ %i.abe, %bb.gh ], [ %i.abe, %bb.gd ], [ %i.xs, %.split3490 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.0.0.i28.i.i.be, ptr %i.m, align 4, !noalias !474
  %i.aao = zext i32 %.sroa.0.0.i28.i.i.be to i64  ; 3 uses
  %i.aap = load i64, ptr %i.cj, align 8, !alias.scope !475, !noalias !450, !noundef !5 ; 2 uses
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
  br i1 %i.aaz, label %bb.gc, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183"

bb.gc:                                            ; preds = %bb.gb
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !477
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit183": ; preds = %bb.gb, %bb.gc
  %i.aba = load ptr, ptr %i.bx, align 8, !alias.scope !476, !noalias !477, !nonnull !5, !noundef !5
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
  %i.abt = load ptr, ptr %i.bx, align 8, !alias.scope !479, !noalias !480, !nonnull !5, !noundef !5
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
  call void @llvm.assume(i1 %6)
  store i64 %i.du, ptr %i.abo, align 8, !alias.scope !447, !noalias !478
  br label %.backedge384

bb.gi:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit184"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !450
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i.i: ; preds = %bb.fw, %bb.fo, %bb.ft, %bb.fq, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit63, %bb.ga, %.split323, %.split324, %.split325, %.split326, %.split327, %.split328, %.split329, %.split330, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit167, %.split331, %.split332, %.split333, %.split334, %.split335, %.split336, %.split337, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit173, %.split3490, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit154", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit50, %bb.gj
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
  %i.aby = icmp eq ptr %i.dz, %i.dq
  br i1 %i.aby, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit, label %.lr.ph1727

bb.gl:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.em, i64 noundef %i.eo, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !482
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i.thread
  %i.abz = load ptr, ptr %i.ch, align 8, !alias.scope !347, !noalias !344, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %.not.i188 = icmp eq i64 %5, %i.en
  br i1 %.not.i188, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189", label %bb.gm, !prof !6

bb.gm:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %5, i64 noundef %i.en, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #22, !noalias !485
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit187
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.abz, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull readonly align 8 %i.aca, i64 %i.co, i1 false), !alias.scope !486, !noalias !487
  br i1 %.sroa.0.0, label %.outer, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit: ; preds = %.outer, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM4next17h257e8fad9cd00486E.exit.i
  br i1 %.sroa.0.0.i39.ph, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread, label %bb.jg

bb.gn:                                            ; preds = %._crit_edge3345
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.acb = load i64, ptr %i.bv, align 8, !alias.scope !488, !noundef !5 ; 5 uses
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
  %i.acg = load ptr, ptr %i.bw, align 8, !alias.scope !488, !nonnull !5, !noundef !5
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
  %i.acl = load ptr, ptr %i.bx, align 8, !alias.scope !491, !noalias !492, !nonnull !5, !noundef !5
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
  %7 = icmp ne i64 %.sroa.09.1, -1
  %i.acq = icmp ult i64 %.sroa.09.1, %i.an        ; 9 uses
  %i.acr = getelementptr i8, ptr %i.bs, i64 %.sroa.09.1 ; 10 uses
  %.not.i223 = icmp eq i64 %.sroa.09.1, 0         ; 9 uses
  %i.acs = add i64 %.sroa.09.1, -1                ; 9 uses
  %i.act = icmp ult i64 %i.acs, %i.an             ; 7 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.acs ; 7 uses
  %i.acv = icmp eq i64 %.sroa.09.1, %i.an         ; 3 uses
  %i.acw = getelementptr i8, ptr %i.acr, i64 -1
  %i.acx = shl nuw nsw i64 %i.acd, 3
  br label %bb.gq

bb.gq:                                            ; preds = %.lr.ph1696, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit
  %i.acy = phi i64 [ %i.acn, %.lr.ph1696 ], [ %.pr342, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit ] ; 2 uses
  %i.acz = add nsw i64 %i.acy, -1                 ; 3 uses
  store i64 %i.acz, ptr %i.z, align 8, !alias.scope !489, !noalias !493
  %i.ada = load i64, ptr %2, align 8, !range !18, !alias.scope !489, !noalias !493, !noundef !5
  %i.adb = icmp samesign ult i64 %i.acz, %i.ada
  call void @llvm.assume(i1 %i.adb)
  %i.adc = load ptr, ptr %i.bx, align 8, !alias.scope !489, !noalias !493, !nonnull !5, !noundef !5
  %i.add = icmp samesign ult i64 %i.acy, 576460752303423489
  call void @llvm.assume(i1 %i.add)
  %i.ade = getelementptr inbounds nuw [16 x i8], ptr %i.adc, i64 %i.acz ; 3 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.ade, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8
  %i.adf = trunc i32 %.sroa.04.0.copyload.i to i1
  br i1 %i.adf, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.adg = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.adh = icmp ugt i64 %i.acd, %i.adg
  br i1 %i.adh, label %bb.je, label %bb.jf

bb.gs:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.45.0.copyload.i, ptr %i.h, align 4, !noalias !495
  %i.adi = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.adj = load i64, ptr %i.by, align 8, !alias.scope !496, !noalias !497, !noundef !5 ; 2 uses
  %i.adk = icmp ugt i64 %i.adj, %i.adi
  br i1 %i.adk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.gs, %.backedge388
  %i.adl = phi i64 [ %i.ain, %.backedge388 ], [ %i.adi, %bb.gs ] ; 5 uses
  %i.adm = phi i32 [ %.sroa.0.0.i.be, %.backedge388 ], [ %.sroa.45.0.copyload.i, %bb.gs ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.adn = load ptr, ptr %i.bz, align 8, !alias.scope !499, !noalias !497, !nonnull !5, !noundef !5
  %i.ado = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %i.adl
  %i.adp = load i32, ptr %i.ado, align 4, !noalias !500, !noundef !5
  %i.adq = zext i32 %i.adp to i64                 ; 4 uses
  %i.adr = load i64, ptr %i.ab, align 8, !alias.scope !499, !noalias !497, !noundef !5 ; 5 uses
  %i.ads = icmp ugt i64 %i.adr, %i.adq
  %.pre = load i64, ptr %i.ca, align 8, !noalias !497 ; 5 uses
  br i1 %i.ads, label %bb.gt, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread

._crit_edge:                                      ; preds = %bb.gs, %.backedge388
  %.lcssa418 = phi i64 [ %i.ain, %.backedge388 ], [ %i.adi, %bb.gs ]
  %.lcssa398 = phi i64 [ %i.aio, %.backedge388 ], [ %i.adj, %bb.gs ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa418, i64 noundef %.lcssa398, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !500
  unreachable

bb.gt:                                            ; preds = %.lr.ph
  %i.adt = icmp ugt i64 %.pre, %i.adq
  br i1 %i.adt, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.adq, i64 noundef %.pre, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !500
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192: ; preds = %bb.gt
  %i.adu = load ptr, ptr %i.cb, align 8, !alias.scope !499, !noalias !497, !nonnull !5, !noundef !5
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adu, i64 %i.adq
  %i.adw = load i32, ptr %i.adv, align 4, !noalias !500, !noundef !5
  %i.adx = icmp eq i32 %i.adw, %i.adm
  br i1 %i.adx, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit55, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread: ; preds = %.lr.ph, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192
  store i64 %i.adr, ptr %i.g, align 8, !noalias !501
  %i.ady = icmp ult i64 %.pre, 2305843009213693952
  call void @llvm.assume(i1 %i.ady), !noalias !497
  %i.adz = icmp ult i64 %i.adr, %.pre
  br i1 %i.adz, label %bb.gw, label %bb.gv, !prof !6

bb.gv:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !501
  store i64 %.pre, ptr %i.e, align 8, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !501
  store ptr %i.g, ptr %i.d, align 8, !noalias !501
  %.sroa.43.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i51, align 8, !noalias !501
  %i.aea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.aea, align 8, !noalias !501
  %.sroa.47.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i52, align 8, !noalias !501
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.h, ptr %i.aeb, align 8, !noalias !501
  %.sroa.411.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i53, align 8, !noalias !501
  store ptr @66, ptr %i.f, align 8, !noalias !501
  %i.aec = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 3, ptr %i.aec, align 8, !noalias !501
  %i.aed = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.aed, align 8, !noalias !501
  %i.aee = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.aee, align 8, !noalias !501
  %i.aef = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 3, ptr %i.aef, align 8, !noalias !501
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !497
  unreachable

bb.gw:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192.thread
  %i.aeg = and i64 %i.adr, 4294967295
  %i.aeh = load ptr, ptr %i.cb, align 8, !alias.scope !498, !noalias !497, !nonnull !5, !noundef !5
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aeh, i64 %i.aeg
  store i32 %i.adm, ptr %i.aei, align 4, !noalias !497
  %i.aej = zext i32 %i.adm to i64                 ; 3 uses
  %i.aek = load i64, ptr %i.by, align 8, !alias.scope !498, !noalias !497, !noundef !5 ; 2 uses
  %i.ael = icmp ugt i64 %i.aek, %i.aej
  br i1 %i.ael, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aej, i64 noundef %i.aek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22, !noalias !497
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit55: ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.gy:                                            ; preds = %bb.gw
  %i.aem = trunc i64 %i.adr to i32
  %i.aen = load ptr, ptr %i.bz, align 8, !alias.scope !498, !noalias !497, !nonnull !5, !noundef !5
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aen, i64 %i.aej
  store i32 %i.aem, ptr %i.aeo, align 4, !noalias !497
  %i.aep = load i64, ptr %i.ab, align 8, !alias.scope !498, !noalias !497, !noundef !5
  %i.aeq = add i64 %i.aep, 1
  store i64 %i.aeq, ptr %i.ab, align 8, !alias.scope !498, !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.aer = load i64, ptr %i.cc, align 16, !noalias !497, !noundef !5 ; 2 uses
  %i.aes = icmp ugt i64 %i.aer, %i.adl
  br i1 %i.aes, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.aet = load ptr, ptr %i.cd, align 8, !noalias !497, !nonnull !5, !noundef !5
  %i.aeu = getelementptr inbounds nuw [24 x i8], ptr %i.aet, i64 %i.adl ; 9 uses
  %i.aev = load i32, ptr %i.aeu, align 8, !range !17, !noalias !497, !noundef !5
  switch i32 %i.aev, label %default.unreachable [
    i32 0, label %bb.hb
    i32 1, label %bb.hb
    i32 2, label %bb.hb
    i32 3, label %bb.he
    i32 4, label %bb.iv
    i32 5, label %bb.iw
    i32 6, label %bb.iy
    i32 7, label %bb.hb
    i32 8, label %bb.hb
  ]

bb.ha:                                            ; preds = %bb.gy
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.adl, i64 noundef %i.aer, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !noalias !497
  unreachable

bb.hb:                                            ; preds = %bb.gz, %bb.gz, %bb.gz, %bb.gz, %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %i.aew = load i64, ptr %i.cf, align 8, !alias.scope !502, !noalias !497, !noundef !5
  %i.aex = mul i64 %i.aew, %i.adl                 ; 4 uses
  %i.aey = load i64, ptr %i.ac, align 8, !alias.scope !502, !noalias !497, !noundef !5 ; 3 uses
  %i.aez = add i64 %i.aex, %i.aey                 ; 3 uses
  %i.afa = load i64, ptr %i.cg, align 8, !alias.scope !502, !noalias !497, !noundef !5 ; 2 uses
  %i.afb = icmp ult i64 %i.aez, %i.aex
  %.not.i193 = icmp ugt i64 %i.aez, %i.afa
  %or.cond.i194 = or i1 %i.afb, %.not.i193
  br i1 %or.cond.i194, label %bb.hc, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit195, !prof !16

bb.hc:                                            ; preds = %bb.hb
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.aex, i64 noundef %i.aez, i64 noundef %i.afa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !503
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit195: ; preds = %bb.hb
  %i.afc = load ptr, ptr %i.ch, align 8, !alias.scope !502, !noalias !497, !nonnull !5, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %.not.i196 = icmp eq i64 %i.aey, %i.acd
  br i1 %.not.i196, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit197", label %bb.hd, !prof !6

bb.hd:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit195
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.aey, i64 noundef %i.acd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #22, !noalias !506
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit197": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit195
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %i.afc, i64 %i.aex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.afd, ptr nonnull readonly align 8 %i.ach, i64 %i.acx, i1 false), !alias.scope !507, !noalias !508
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

end_hunk_3
begin_hunk_4_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM10search_imp17h437acc90b2686c1fE:bb.a

bb.hy:                                            ; preds = %bb.hw
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acs, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #22, !noalias !514
  unreachable

bb.hz:                                            ; preds = %bb.hw
  %i.aga = load i8, ptr %i.acu, align 1, !alias.scope !514, !noundef !5
  %i.agb = zext i8 %i.aga to i64
  %i.agc = getelementptr inbounds nuw i8, ptr @79, i64 %i.agb
  %i.agd = load i8, ptr %i.agc, align 1, !range !12, !noalias !514, !noundef !5
  %i.age = trunc nuw i8 %i.agd to i1
  br label %bb.hx

.split3496:                                       ; preds = %bb.hx
  %i.agf = load i8, ptr %i.acr, align 1, !alias.scope !514, !noundef !5
  %i.agg = zext i8 %i.agf to i64
  %i.agh = getelementptr inbounds nuw i8, ptr @79, i64 %i.agg
  %i.agi = load i8, ptr %i.agh, align 1, !range !12, !noalias !514, !noundef !5
  %i.agj = trunc nuw i8 %i.agi to i1
  %i.agk = xor i1 %.sroa.0.0.i208, %i.agj
  br i1 %i.agk, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge388

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit210: ; preds = %bb.hx
  br i1 %.sroa.0.0.i208, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge388

.split360:                                        ; preds = %bb.he
  %i.agl = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.agm = trunc nuw i8 %i.agl to i1
  br i1 %i.agm, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.split364:                                        ; preds = %bb.he
  %i.agn = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.ago = trunc nuw i8 %i.agn to i1
  br i1 %i.ago, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.ia:                                            ; preds = %bb.he
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  br i1 %.not.i223, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  br i1 %.not25.i215, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %bb.id

bb.ic:                                            ; preds = %bb.ia
  br i1 %i.act, label %bb.if, label %bb.ie

bb.id:                                            ; preds = %bb.ib
  %i.agp = load i8, ptr %i.bs, align 1, !alias.scope !515, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !515
  %i.agq = zext i8 %i.agp to i64
  %i.agr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agq
  %i.ags = load i8, ptr %i.agr, align 1, !range !12, !noalias !515, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216

bb.ie:                                            ; preds = %bb.ic
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acs, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22, !noalias !515
  unreachable

bb.if:                                            ; preds = %bb.ic
  %i.agt = load i8, ptr %i.acu, align 1, !alias.scope !515, !noundef !5
  %i.agu = zext i8 %i.agt to i64
  %i.agv = getelementptr inbounds nuw i8, ptr @79, i64 %i.agu
  %i.agw = load i8, ptr %i.agv, align 1, !range !12, !noalias !515, !noundef !5
  %i.agx = trunc nuw i8 %i.agw to i1
  br i1 %i.acq, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.ih, %bb.if
  %.sroa.0.0.i212 = phi i8 [ %i.ahb, %bb.ih ], [ 0, %bb.if ]
  %spec.select.i213 = select i1 %i.agx, i8 0, i8 %.sroa.0.0.i212
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216

bb.ih:                                            ; preds = %bb.if
  %i.agy = load i8, ptr %i.acr, align 1, !alias.scope !515, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !515
  %i.agz = zext i8 %i.agy to i64
  %i.aha = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agz
  %i.ahb = load i8, ptr %i.aha, align 1, !range !12, !noalias !515, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !515
  br label %bb.ig

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216: ; preds = %bb.id, %bb.ig
  %.sroa.0.1.i214 = phi i8 [ %i.ags, %bb.id ], [ %spec.select.i213, %bb.ig ]
  %i.ahc = trunc nuw i8 %.sroa.0.1.i214 to i1
  br i1 %i.ahc, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.ii:                                            ; preds = %bb.he
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  br i1 %.not.i223, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  br i1 %i.act, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acs, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !noalias !516
  unreachable

bb.il:                                            ; preds = %bb.ij
  %i.ahd = load i8, ptr %i.acu, align 1, !alias.scope !516, !noundef !5
  %i.ahe = zext i8 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr @79, i64 %i.ahe
  %i.ahg = load i8, ptr %i.ahf, align 1, !range !12, !noalias !516, !noundef !5
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.acq, label %bb.im, label %.split361

.split361:                                        ; preds = %bb.im, %bb.il
  %.sroa.02.0.i218 = phi i1 [ %i.ahn, %bb.im ], [ true, %bb.il ]
  %spec.select.i219 = select i1 %i.ahh, i1 %.sroa.02.0.i218, i1 false
  br i1 %spec.select.i219, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.im:                                            ; preds = %bb.il
  %i.ahi = load i8, ptr %i.acr, align 1, !alias.scope !516, !noundef !5
  %i.ahj = zext i8 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw i8, ptr @79, i64 %i.ahj
  %i.ahl = load i8, ptr %i.ahk, align 1, !range !12, !noalias !516, !noundef !5
  %i.ahm = trunc nuw i8 %i.ahl to i1
  %i.ahn = xor i1 %i.ahm, true
  br label %.split361

.split363:                                        ; preds = %bb.he
  %i.aho = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.ahp = trunc nuw i8 %i.aho to i1
  br i1 %i.ahp, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.split362:                                        ; preds = %bb.he
  %i.ahq = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.ahr = trunc nuw i8 %i.ahq to i1
  br i1 %i.ahr, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.in:                                            ; preds = %bb.he
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  br i1 %.not.i223, label %.backedge388, label %bb.io

bb.io:                                            ; preds = %bb.in
  br i1 %i.act, label %.split354, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acs, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #22, !noalias !517
  unreachable

.split354:                                        ; preds = %bb.io
  %i.ahs = load i8, ptr %i.acu, align 1, !alias.scope !517, !noundef !5
  %i.aht = zext i8 %i.ahs to i64
  %i.ahu = getelementptr inbounds nuw i8, ptr @79, i64 %i.aht
  %i.ahv = load i8, ptr %i.ahu, align 1, !range !12, !noalias !517, !noundef !5
  %i.ahw = trunc nuw i8 %i.ahv to i1
  br i1 %i.ahw, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge388

bb.iq:                                            ; preds = %bb.he
  br i1 %i.acq, label %.split358, label %.backedge388

.split359:                                        ; preds = %bb.he
  %i.ahx = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.split353:                                        ; preds = %bb.he
  %i.ahz = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bs, i64 noundef %i.an, i64 noundef %.sroa.09.1)
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.ir:                                            ; preds = %bb.hf
  br i1 %i.act, label %.split355, label %bb.is

.split355:                                        ; preds = %bb.ir
  %i.aib = load i8, ptr %i.acu, align 1, !alias.scope !510, !noalias !518, !noundef !5
  %i.aic = load i8, ptr %i.ce, align 16, !alias.scope !509, !noalias !519, !noundef !5
  %i.aid = icmp eq i8 %i.aib, %i.aic
  br i1 %i.aid, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.is:                                            ; preds = %bb.ir
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acs, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22, !noalias !520
  unreachable

bb.it:                                            ; preds = %bb.hg
  br i1 %i.acq, label %.split357, label %bb.iu

.split357:                                        ; preds = %bb.it
  %i.aie = load i8, ptr %i.acr, align 1, !alias.scope !510, !noalias !518, !noundef !5
  %i.aif = load i8, ptr %i.ce, align 16, !alias.scope !509, !noalias !519, !noundef !5
  %i.aig = icmp eq i8 %i.aie, %i.aif
  br i1 %i.aig, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.iu:                                            ; preds = %bb.it
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.09.1, i64 noundef %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !520
  unreachable

.split358:                                        ; preds = %bb.iq
  %i.aih = load i8, ptr %i.acr, align 1, !alias.scope !510, !noalias !518, !noundef !5
  %i.aii = zext i8 %i.aih to i64
  %i.aij = getelementptr inbounds nuw i8, ptr @79, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !range !12, !noalias !520, !noundef !5
  %i.ail = trunc nuw i8 %i.aik to i1
  br i1 %i.ail, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge388

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit66: ; preds = %bb.ht
  %i.aim = trunc nuw i8 %i.afq to i1
  br i1 %i.aim, label %.backedge388, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.backedge388:                                     ; preds = %.thread3497..split350_crit_edge, %.split3496, %bb.iy, %bb.jc, %bb.ho, %bb.hm, %bb.hj, %bb.hh, %bb.hf, %bb.in, %bb.iq, %bb.hl, %bb.hq, %bb.hg, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit66, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit226", %bb.iz, %.split349, %.split350, %.split351, %.split352, %.split353, %.split354, %.split355, %.split356, %.split357, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit210, %.split358, %.split359, %.split360, %.split361, %.split362, %.split363, %.split364, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216
  %.sroa.0.0.i.be = phi i32 [ %i.afh, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit66 ], [ %i.ajk, %bb.iz ], [ %i.ait, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit226" ], [ %i.afh, %bb.ho ], [ %i.afh, %.split349 ], [ %i.afh, %.split350 ], [ %i.afh, %.split351 ], [ %i.afh, %.split352 ], [ %i.afh, %.split353 ], [ %i.afh, %.split354 ], [ %i.afh, %.split355 ], [ %i.afh, %.split356 ], [ %i.afh, %.split357 ], [ %i.afh, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit210 ], [ %i.afh, %.split358 ], [ %i.afh, %.split359 ], [ %i.afh, %.split360 ], [ %i.afh, %.split361 ], [ %i.afh, %.split362 ], [ %i.afh, %.split363 ], [ %i.afh, %.split364 ], [ %i.afh, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216 ], [ %i.afh, %bb.hg ], [ %i.afh, %bb.hq ], [ %i.afh, %bb.hl ], [ %i.afh, %bb.iq ], [ %i.afh, %bb.in ], [ %i.afh, %bb.hf ], [ %i.afh, %bb.hh ], [ %i.afh, %bb.hj ], [ %i.afh, %bb.hm ], [ %i.ajd, %bb.jc ], [ %i.ajd, %bb.iy ], [ %i.afh, %.split3496 ], [ %i.afh, %.thread3497..split350_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.0.0.i.be, ptr %i.h, align 4, !noalias !521
  %i.ain = zext i32 %.sroa.0.0.i.be to i64        ; 3 uses
  %i.aio = load i64, ptr %i.by, align 8, !alias.scope !522, !noalias !497, !noundef !5 ; 2 uses
  %i.aip = icmp ugt i64 %i.aio, %i.ain
  br i1 %i.aip, label %.lr.ph, label %._crit_edge

bb.iv:                                            ; preds = %bb.gz
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.air = load i64, ptr %i.aiq, align 8, !noalias !497, !noundef !5 ; 2 uses
  %.not11.i = icmp eq i64 %i.air, 0
  br i1 %.not11.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %bb.iz

bb.iw:                                            ; preds = %bb.gz
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.ait = load i32, ptr %i.ais, align 4, !noalias !497, !noundef !5
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.aiv = load i32, ptr %i.aiu, align 8, !noalias !497, !noundef !5
  %i.aiw = load i64, ptr %i.z, align 8, !alias.scope !523, !noalias !524, !noundef !5 ; 3 uses
  %i.aix = load i64, ptr %2, align 8, !range !18, !alias.scope !523, !noalias !524, !noundef !5
  %i.aiy = icmp eq i64 %i.aiw, %i.aix
  br i1 %i.aiy, label %bb.ix, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit226"

bb.ix:                                            ; preds = %bb.iw
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !524
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit226"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit226": ; preds = %bb.iw, %bb.ix
  %i.aiz = load ptr, ptr %i.bx, align 8, !alias.scope !523, !noalias !524, !nonnull !5, !noundef !5
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.aiz, i64 %i.aiw ; 2 uses
  store i32 0, ptr %i.aja, align 8, !noalias !497
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  store i32 %i.aiv, ptr %.sroa.4229.0..sroa_idx, align 4, !noalias !497
  %i.ajb = add i64 %i.aiw, 1
  store i64 %i.ajb, ptr %i.z, align 8, !alias.scope !523, !noalias !524
  br label %.backedge388

bb.iy:                                            ; preds = %bb.gz
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.ajd = load i32, ptr %i.ajc, align 4, !noalias !497, !noundef !5 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.ajf = load i32, ptr %i.aje, align 8, !noalias !497, !noundef !5 ; 2 uses
  %i.ajg = zext i32 %i.ajf to i64                 ; 2 uses
  %i.ajh = icmp ugt i64 %i.acd, %i.ajg
  br i1 %i.ajh, label %bb.ja, label %.backedge388

bb.iz:                                            ; preds = %bb.iv
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.ajj = load ptr, ptr %i.aji, align 8, !noalias !497, !nonnull !5, !noundef !5 ; 3 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !noalias !497, !noundef !5
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  %i.ajm = getelementptr [4 x i8], ptr %i.ajj, i64 %i.air
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.ajl, ptr noundef %i.ajm), !noalias !497
  br label %.backedge388

bb.ja:                                            ; preds = %bb.iy
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.ajg ; 2 uses
  %i.ajo = load i64, ptr %i.ajn, align 8, !alias.scope !494, !noalias !525, !noundef !5
  %i.ajp = load i64, ptr %i.z, align 8, !alias.scope !526, !noalias !527, !noundef !5 ; 3 uses
  %i.ajq = load i64, ptr %2, align 8, !range !18, !alias.scope !526, !noalias !527, !noundef !5
  %i.ajr = icmp eq i64 %i.ajp, %i.ajq
  br i1 %i.ajr, label %bb.jb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit227"

bb.jb:                                            ; preds = %bb.ja
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !527
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit227"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit227": ; preds = %bb.ja, %bb.jb
  %i.ajs = load ptr, ptr %i.bx, align 8, !alias.scope !526, !noalias !527, !nonnull !5, !noundef !5
  %i.ajt = getelementptr inbounds nuw [16 x i8], ptr %i.ajs, i64 %i.ajp ; 3 uses
  store i32 1, ptr %i.ajt, align 8, !noalias !497
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 4
  store i32 %i.ajf, ptr %.sroa.4232.0..sroa_idx, align 4, !noalias !497
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store i64 %i.ajo, ptr %.sroa.5233.0..sroa_idx, align 8, !noalias !497
  %i.aju = add i64 %i.ajp, 1
  store i64 %i.aju, ptr %i.z, align 8, !alias.scope !526, !noalias !527
  br i1 %.not.i, label %bb.jd, label %bb.jc, !prof !8

bb.jc:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit227"
  call void @llvm.assume(i1 %7)
  store i64 %i.acp, ptr %i.ajn, align 8, !alias.scope !494, !noalias !525
  br label %.backedge388

bb.jd:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit227"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !497
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit: ; preds = %.thread3497..split350_crit_edge, %.thread3497, %bb.ii, %bb.ib, %bb.ho, %bb.hj, %bb.iv, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit66, %.split349, %.split350, %.split351, %.split352, %.split353, %.split354, %.split355, %.split356, %.split357, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit210, %.split358, %.split359, %.split360, %.split361, %.split362, %.split363, %.split364, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit216, %.split3496, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit197", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit55, %bb.je
  %.pr342 = load i64, ptr %i.z, align 8, !alias.scope !489, !noalias !493 ; 2 uses
  %i.ajv = icmp eq i64 %.pr342, 0
  br i1 %i.ajv, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %bb.gq

bb.je:                                            ; preds = %bb.gr
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.ach, i64 %i.adg
  store i64 %.sroa.56.0.copyload.i, ptr %i.ajw, align 8, !alias.scope !490, !noalias !528
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.jf:                                            ; preds = %bb.gr
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.adg, i64 noundef %i.acd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189", %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit
  %.sroa.3.1.i3495 = phi i32 [ %.sroa.3.0.i.ph, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit ], [ %i.ek, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit189" ]
  store i64 %.sroa.09.1, ptr %i.cs, align 8
  store i32 %.sroa.3.1.i3495, ptr %i.ct, align 8
  store i64 1, ptr %0, align 8
  br i1 %i.cr, label %.loopexit, label %bb.jh

bb.jg:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit
  %i.ajx = load i64, ptr %0, align 8, !range !15  ; 2 uses
  %i.ajy = icmp ne i64 %i.ajx, 0
  %or.cond = select i1 %i.cr, i1 %i.ajy, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread
  %i.ajz = phi i64 [ %i.ajx, %bb.jg ], [ 1, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM5nexts17hdcd50bf442ddf02cE.exit.thread ]
  %i.aka = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !529, !noalias !5
  %i.akb = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !530, !noalias !5
  store <2 x i64> %i.aka, ptr %i.aa, align 8, !alias.scope !530, !noalias !5
  store <2 x i64> %i.akb, ptr %i.ad, align 8, !alias.scope !529, !noalias !5
  %i.akc = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !531, !noalias !5
  %i.akd = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !532, !noalias !5
  store <2 x i64> %i.akc, ptr %i.ca, align 8, !alias.scope !532, !noalias !5
  store <2 x i64> %i.akd, ptr %i.cl, align 8, !alias.scope !531, !noalias !5
  %i.ake = load <2 x i64>, ptr %i.ck, align 8, !alias.scope !533, !noalias !5
  %i.akf = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !534, !noalias !5
  store <2 x i64> %i.ake, ptr %i.bz, align 8, !alias.scope !534, !noalias !5
  store <2 x i64> %i.akf, ptr %i.ck, align 8, !alias.scope !533, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.akg = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !536, !noalias !5
  %.sroa.02.0.copyload.i.i.i.6.i.i = load i64, ptr %i.ae, align 8, !alias.scope !537, !noalias !535
  %i.akh = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !538, !noalias !5
  %i.aki = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !539, !noalias !5
  store <2 x i64> %i.akg, ptr %i.ab, align 8, !alias.scope !540, !noalias !5
  store <2 x i64> %i.aki, ptr %i.cu, align 8, !alias.scope !541, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %.sroa.0.0.copyload.i.i.i.11.i.i = load i64, ptr %i.ac, align 8, !alias.scope !542, !noalias !543
  %i.akj = load <2 x i64>, ptr %i.cn, align 8, !alias.scope !544, !noalias !5
  %i.akk = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !545, !noalias !5
  store <2 x i64> %i.akh, ptr %i.ch, align 8, !alias.scope !546, !noalias !5
  store <2 x i64> %i.akk, ptr %i.bv, align 8, !alias.scope !547, !noalias !5
  store <2 x i64> %i.akj, ptr %i.cf, align 8, !alias.scope !548, !noalias !5
  store i64 %.sroa.0.0.copyload.i.i.i.11.i.i, ptr %i.af, align 8, !alias.scope !543, !noalias !542
  store i64 0, ptr %i.ae, align 8
  %.not30 = icmp ugt i64 %i.dt, %i.aj
  br i1 %.not30, label %.loopexit, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM11never_match17hadfa84bc1be768e7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_ZN14regex_automata3nfa8thompson3nfa3NFA11never_match17ha7b912dd52c1fc2dE()
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12new_from_nfa17h2b52529be54f1ddeE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM11reset_cache17h1669149a0110b149E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(216) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i = load ptr, ptr %0, align 8, !alias.scope !552, !noalias !553, !nonnull !5, !noundef !5 ; 2 uses
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h9a448366484052eaE(ptr noalias noundef align 8 dereferenceable(96) %i.a, ptr nonnull %.val1.i), !noalias !552
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates5reset17h9a448366484052eaE(ptr noalias noundef align 8 dereferenceable(96) %i.b, ptr nonnull %.val1.i), !noalias !552
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12always_match17h7e0f7d6736062b0bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_ZN14regex_automata3nfa8thompson3nfa3NFA12always_match17hf9ae2caf469d7a1eE()
  tail call void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12new_from_nfa17h2b52529be54f1ddeE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12create_cache17h28c9fdd131ea2df6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !558
  store i64 0, ptr %i.c, align 8, !noalias !558
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !558
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8, !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !558
  %.val2.i = load ptr, ptr %1, align 8, !alias.scope !557, !noalias !559 ; 2 uses
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates3new17h5e5edeac255e809eE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b, ptr %.val2.i)
          to label %bb.d unwind label %bb.c, !noalias !558

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.f, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..pikevm..FollowEpsilon$GT$$GT$17h202bbf8250195e3eE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #23
          to label %bb.g unwind label %bb.f, !noalias !558

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !558
  invoke fastcc void @_ZN14regex_automata3nfa8thompson6pikevm12ActiveStates3new17h5e5edeac255e809eE(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.a, ptr %.val2.i)
          to label %_ZN14regex_automata3nfa8thompson6pikevm5Cache3new17h2b8dc7029e0f3fdcE.exit unwind label %bb.e, !noalias !558

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$regex_automata..nfa..thompson..pikevm..ActiveStates$GT$17h766ec170700d20cbE"(ptr noalias noundef align 8 dereferenceable(96) %i.b) #23
          to label %bb.b unwind label %bb.f, !noalias !558

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !558
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.i

_ZN14regex_automata3nfa8thompson6pikevm5Cache3new17h2b8dc7029e0f3fdcE.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !557
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !558
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12new_from_nfa17h2b52529be54f1ddeE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [488 x i8], align 8               ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !586
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 2, ptr %i.e, align 8, !noalias !586
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 3, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !586
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %bb.d unwind label %bb.b, !noalias !586

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @"_ZN4core3ptr66drop_in_place$LT$regex_automata..nfa..thompson..pikevm..Config$GT$17h1c26f61b68bc21a5E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #23
          to label %bb.n unwind label %bb.c, !noalias !586

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !586
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.c, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.j = load i8, ptr %i.i, align 8, !range !10, !noalias !587, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.l = load i8, ptr %i.k, align 8, !range !9, !noalias !587, !noundef !5 ; 4 uses
  %switch.not = icmp samesign ult i8 %i.l, 2
  br i1 %switch.not, label %bb.e, label %.fold.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.h, align 8, !noalias !587, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !587
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.f

end_hunk_4
begin_hunk_5_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E:bb.a
  br i1 %i.df, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.de, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !noalias !876
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.hl = load i8, ptr %i.dg, align 1, !alias.scope !876, !noundef !5
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @79, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !range !12, !noalias !876, !noundef !5
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.dc, label %bb.bj, label %.split268

.split268:                                        ; preds = %bb.bj, %bb.bi
  %.sroa.02.0.i = phi i1 [ %i.hv, %bb.bj ], [ true, %bb.bi ]
  %spec.select.i74 = select i1 %i.hp, i1 %.sroa.02.0.i, i1 false
  br i1 %spec.select.i74, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.bj:                                            ; preds = %bb.bi
  %i.hq = load i8, ptr %i.dd, align 1, !alias.scope !876, !noundef !5
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @79, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !range !12, !noalias !876, !noundef !5
  %i.hu = trunc nuw i8 %i.ht to i1
  %i.hv = xor i1 %i.hu, true
  br label %.split268

.split270:                                        ; preds = %bb.ab
  %i.hw = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %.sroa.0.02381422)
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.split269:                                        ; preds = %bb.ab
  %i.hy = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %.sroa.0.02381422)
  %i.hz = trunc nuw i8 %i.hy to i1
  br i1 %i.hz, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.bk:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  br i1 %.not.i76, label %.backedge371, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.df, label %.split261, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.de, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #22, !noalias !877
  unreachable

.split261:                                        ; preds = %bb.bl
  %i.ia = load i8, ptr %i.dg, align 1, !alias.scope !877, !noundef !5
  %i.ib = zext i8 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr @79, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !range !12, !noalias !877, !noundef !5
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge371

bb.bn:                                            ; preds = %bb.ab
  br i1 %i.dc, label %.split265, label %.backedge371

.split266:                                        ; preds = %bb.ab
  %i.if = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %.sroa.0.02381422)
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.split260:                                        ; preds = %bb.ab
  %i.ih = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %.sroa.0.02381422)
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.bo:                                            ; preds = %bb.ac
  br i1 %i.df, label %.split262, label %bb.bp

.split262:                                        ; preds = %bb.bo
  %i.ij = load i8, ptr %i.dg, align 1, !alias.scope !870, !noalias !878, !noundef !5
  %i.ik = load i8, ptr %i.bt, align 16, !alias.scope !869, !noalias !879, !noundef !5
  %i.il = icmp eq i8 %i.ij, %i.ik
  br i1 %i.il, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.de, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22, !noalias !880
  unreachable

bb.bq:                                            ; preds = %bb.ad
  br i1 %i.dc, label %.split264, label %bb.br

.split264:                                        ; preds = %bb.bq
  %i.im = load i8, ptr %i.dd, align 1, !alias.scope !870, !noalias !878, !noundef !5
  %i.in = load i8, ptr %i.bt, align 16, !alias.scope !869, !noalias !879, !noundef !5
  %i.io = icmp eq i8 %i.im, %i.in
  br i1 %i.io, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

bb.br:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !880
  unreachable

.split265:                                        ; preds = %bb.bn
  %i.ip = load i8, ptr %i.dd, align 1, !alias.scope !870, !noalias !878, !noundef !5
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @79, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !range !12, !noalias !880, !noundef !5
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %.backedge371

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit49: ; preds = %bb.aq
  %i.iu = trunc nuw i8 %i.fy to i1
  br i1 %i.iu, label %.backedge371, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit

.backedge371:                                     ; preds = %.thread..split257_crit_edge, %.split2855, %bb.al, %bb.aj, %bb.ag, %bb.ae, %bb.ac, %bb.bk, %bb.bn, %bb.ai, %bb.an, %bb.ad, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit49, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit78", %bb.bw, %bb.bv, %.split, %.split257, %.split258, %.split259, %.split260, %.split261, %.split262, %.split263, %.split264, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit69, %.split265, %.split266, %.split267, %.split268, %.split269, %.split270, %.split271, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit
  %.sroa.0.0.i19.be = phi i32 [ %i.fp, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit49 ], [ %i.jo, %bb.bw ], [ %i.jb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit78" ], [ %i.jl, %bb.bv ], [ %i.fp, %.split ], [ %i.fp, %.split257 ], [ %i.fp, %.split258 ], [ %i.fp, %.split259 ], [ %i.fp, %.split260 ], [ %i.fp, %.split261 ], [ %i.fp, %.split262 ], [ %i.fp, %.split263 ], [ %i.fp, %.split264 ], [ %i.fp, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit69 ], [ %i.fp, %.split265 ], [ %i.fp, %.split266 ], [ %i.fp, %.split267 ], [ %i.fp, %.split268 ], [ %i.fp, %.split269 ], [ %i.fp, %.split270 ], [ %i.fp, %.split271 ], [ %i.fp, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit ], [ %i.fp, %bb.ad ], [ %i.fp, %bb.an ], [ %i.fp, %bb.ai ], [ %i.fp, %bb.bn ], [ %i.fp, %bb.bk ], [ %i.fp, %bb.ac ], [ %i.fp, %bb.ae ], [ %i.fp, %bb.ag ], [ %i.fp, %bb.aj ], [ %i.fp, %bb.al ], [ %i.fp, %.split2855 ], [ %i.fp, %.thread..split257_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %.sroa.0.0.i19.be, ptr %i.h, align 4, !noalias !881
  %i.iv = zext i32 %.sroa.0.0.i19.be to i64       ; 3 uses
  %i.iw = load i64, ptr %i.bn, align 8, !alias.scope !882, !noalias !861, !noundef !5 ; 2 uses
  %i.ix = icmp ugt i64 %i.iw, %i.iv
  br i1 %i.ix, label %.lr.ph, label %._crit_edge

bb.bs:                                            ; preds = %bb.w
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !861, !noundef !5 ; 2 uses
  %.not11.i = icmp eq i64 %i.iz, 0
  br i1 %.not11.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, label %bb.bw

bb.bt:                                            ; preds = %bb.w
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !noalias !861, !noundef !5
  %i.jc = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.jd = load i32, ptr %i.jc, align 8, !noalias !861, !noundef !5
  %i.je = load i64, ptr %i.z, align 8, !alias.scope !883, !noalias !884, !noundef !5 ; 3 uses
  %i.jf = load i64, ptr %1, align 8, !range !18, !alias.scope !883, !noalias !884, !noundef !5
  %i.jg = icmp eq i64 %i.je, %i.jf
  br i1 %i.jg, label %bb.bu, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit78"

bb.bu:                                            ; preds = %bb.bt
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !884
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit78"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit78": ; preds = %bb.bt, %bb.bu
  %i.jh = load ptr, ptr %i.bm, align 8, !alias.scope !883, !noalias !884, !nonnull !5, !noundef !5
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %i.je ; 2 uses
  store i32 0, ptr %i.ji, align 8, !noalias !861
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  store i32 %i.jd, ptr %.sroa.4209.0..sroa_idx, align 4, !noalias !861
  %i.jj = add i64 %i.je, 1
  store i64 %i.jj, ptr %i.z, align 8, !alias.scope !883, !noalias !884
  br label %.backedge371

bb.bv:                                            ; preds = %bb.w
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.jl = load i32, ptr %i.jk, align 4, !noalias !861, !noundef !5
  br label %.backedge371

bb.bw:                                            ; preds = %bb.bs
  %i.jm = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !861, !nonnull !5, !noundef !5 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !861, !noundef !5
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jq = getelementptr [4 x i8], ptr %i.jn, i64 %i.iz
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.jp, ptr noundef %i.jq), !noalias !861
  br label %.backedge371

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit: ; preds = %.thread..split257_crit_edge, %.thread, %bb.bf, %bb.ay, %bb.al, %bb.ag, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit, %.split271, %.split270, %.split269, %.split268, %.split267, %.split266, %.split265, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit69, %.split264, %.split263, %.split262, %.split261, %.split260, %.split259, %.split258, %.split257, %.split, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit49, %bb.bs, %.split2855, %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit, %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit38
  %.pr = load i64, ptr %i.z, align 8, !alias.scope !858, !noalias !857 ; 2 uses
  %i.jr = icmp eq i64 %.pr, 0
  br i1 %i.jr, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit, label %bb.n

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit: ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit, %._crit_edge2734, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit", %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.js = load i8, ptr %i.by, align 2, !range !12, !noalias !886, !noundef !5
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  %i.ju = load i8, ptr %i.bz, align 1, !range !12, !noalias !886, !noundef !5
  %i.jv = trunc nuw i8 %i.ju to i1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit
  %.sroa.0.0.i = phi i1 [ %i.jv, %bb.bx ], [ false, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM15epsilon_closure17h70888e60cc1294a1E.exit ]
  %i.jw = load i64, ptr %i.ab, align 8, !alias.scope !885, !noalias !887, !noundef !5 ; 4 uses
  %i.jx = load i64, ptr %i.bp, align 8, !alias.scope !885, !noalias !887, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i64 %i.jw, %i.jx
  br i1 %.not.i, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.jw, i64 noundef %i.jx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #22, !noalias !886
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.jy = load ptr, ptr %i.bq, align 8, !alias.scope !885, !noalias !887, !nonnull !5, !noundef !5 ; 3 uses
  %.idx = shl nuw nsw i64 %i.jw, 2
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx ; 2 uses
  %i.ka = icmp eq i64 %i.jw, 0
  br i1 %i.ka, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit, label %.lr.ph1419

.lr.ph1419:                                       ; preds = %bb.ca
  %i.kb = icmp ult i64 %.sroa.0.02381422, %i.am   ; 10 uses
  %i.kc = icmp eq i64 %.sroa.0.02381422, %i.am
  %i.kd = getelementptr i8, ptr %i.bv, i64 %.sroa.0.02381422 ; 27 uses
  %i.ke = add i64 %.sroa.0.02381422, 1            ; 27 uses
  %i.kf = add i64 %.sroa.0.02381422, 2            ; 4 uses
  %.not.i29.i = icmp eq i64 %i.kf, 0              ; 3 uses
  %4 = icmp ne i64 %i.ke, -1                      ; 3 uses
  %i.kg = icmp ult i64 %i.ke, %i.am               ; 24 uses
  %i.kh = getelementptr i8, ptr %i.bv, i64 %i.ke  ; 26 uses
  %i.ki = icmp eq i64 %i.ke, %i.am                ; 9 uses
  %.not.i160 = icmp eq i64 %i.ke, 0               ; 18 uses
  %i.kj = load i32, ptr %i.jy, align 4, !noundef !5
  %i.kk = load i64, ptr %i.br, align 16, !noalias !888, !noundef !5 ; 2 uses
  %i.kl = zext i32 %i.kj to i64                   ; 3 uses
  %i.km = icmp ugt i64 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph5003, label %.lr.ph1419._crit_edge

.lr.ph5003:                                       ; preds = %.lr.ph1419, %.backedge1435
  %i.kn = phi i64 [ %i.aif, %.backedge1435 ], [ %i.kl, %.lr.ph1419 ] ; 4 uses
  %.pn = phi ptr [ %i.ko, %.backedge1435 ], [ %i.jy, %.lr.ph1419 ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.kp = load ptr, ptr %i.bs, align 8, !noalias !890, !nonnull !5, !noundef !5
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kn ; 7 uses
  %i.kr = load i32, ptr %i.kq, align 8, !range !17, !noalias !890, !noundef !5
  switch i32 %i.kr, label %default.unreachable [
    i32 0, label %bb.cb
    i32 1, label %bb.cc
    i32 2, label %bb.cd
    i32 3, label %.backedge372
    i32 4, label %.backedge372
    i32 5, label %.backedge372
    i32 6, label %.backedge372
    i32 7, label %.backedge372
    i32 8, label %bb.ir
  ]

.lr.ph1419._crit_edge:                            ; preds = %.lr.ph1419, %.backedge1435
  %.lcssa4707 = phi i64 [ %i.aie, %.backedge1435 ], [ %i.kk, %.lr.ph1419 ]
  %.lcssa4656 = phi i64 [ %i.aif, %.backedge1435 ], [ %i.kl, %.lr.ph1419 ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa4656, i64 noundef %.lcssa4707, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !noalias !890
  unreachable

bb.cb:                                            ; preds = %.lr.ph5003
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 2 uses
  %i.kt = call noundef zeroext i1 @_ZN14regex_automata3nfa8thompson3nfa10Transition7matches17h202f0f9260c3d5bbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ks, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %.sroa.0.02381422), !noalias !890
  br i1 %i.kt, label %bb.ce, label %.backedge372

bb.cc:                                            ; preds = %.lr.ph5003
  br i1 %i.kb, label %bb.ew, label %.backedge372

bb.cd:                                            ; preds = %.lr.ph5003
  br i1 %i.kb, label %bb.hc, label %.backedge372

bb.ce:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.ku = load i64, ptr %i.bw, align 8, !alias.scope !891, !noalias !892, !noundef !5
  %i.kv = mul i64 %i.ku, %i.kn                    ; 4 uses
  %i.kw = load i64, ptr %i.ac, align 8, !alias.scope !891, !noalias !892, !noundef !5 ; 7 uses
  %i.kx = add i64 %i.kv, %i.kw                    ; 3 uses
  %i.ky = load i64, ptr %i.bx, align 8, !alias.scope !891, !noalias !892, !noundef !5 ; 2 uses
  %i.kz = icmp ult i64 %i.kx, %i.kv
  %.not.i79 = icmp ugt i64 %i.kx, %i.ky
  %or.cond.i80 = or i1 %i.kz, %.not.i79
  br i1 %or.cond.i80, label %bb.cf, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit81, !prof !16

bb.cf:                                            ; preds = %bb.ce
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.kv, i64 noundef %i.kx, i64 noundef %i.ky, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !893
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit81: ; preds = %bb.ce
  %i.la = load ptr, ptr %i.cb, align 8, !alias.scope !891, !noalias !892, !nonnull !5, !noundef !5
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kv ; 3 uses
  %i.lc = load i32, ptr %i.ks, align 4, !noalias !892, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !894)
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.ld = load i64, ptr %i.z, align 8, !alias.scope !896, !noalias !897, !noundef !5 ; 3 uses
  %i.le = load i64, ptr %1, align 8, !range !18, !alias.scope !896, !noalias !897, !noundef !5
  %i.lf = icmp eq i64 %i.ld, %i.le
  br i1 %i.lf, label %bb.cg, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit82"

bb.cg:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit81
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !897
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit82"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit82": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit81, %bb.cg
  %i.lg = load ptr, ptr %i.bm, align 8, !alias.scope !896, !noalias !897, !nonnull !5, !noundef !5
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %i.ld ; 2 uses
  store i32 0, ptr %i.lh, align 8, !noalias !898
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 %i.lc, ptr %.sroa.4218.0..sroa_idx, align 4, !noalias !898
  %i.li = add i64 %i.ld, 1                        ; 3 uses
  store i64 %i.li, ptr %i.z, align 8, !alias.scope !896, !noalias !897
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %.backedge372, label %.lr.ph1416.preheader

.lr.ph1416.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit82"
  %i.lk = shl i64 %i.kw, 3
  br label %.lr.ph1416

.lr.ph1416:                                       ; preds = %.lr.ph1416.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i
  %i.ll = phi i64 [ %.pr272, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i ], [ %i.li, %.lr.ph1416.preheader ] ; 2 uses
  %i.lm = add nsw i64 %i.ll, -1                   ; 3 uses
  store i64 %i.lm, ptr %i.z, align 8, !alias.scope !899, !noalias !900
  %i.ln = load i64, ptr %1, align 8, !range !18, !alias.scope !899, !noalias !900, !noundef !5
  %i.lo = icmp samesign ult i64 %i.lm, %i.ln
  call void @llvm.assume(i1 %i.lo)
  %i.lp = load ptr, ptr %i.bm, align 8, !alias.scope !899, !noalias !900, !nonnull !5, !noundef !5
  %i.lq = icmp samesign ult i64 %i.ll, 576460752303423489
  call void @llvm.assume(i1 %i.lq)
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %i.lm ; 3 uses
  %.sroa.04.0.copyload.i17.i = load i32, ptr %i.lr, align 8, !noalias !901
  %.sroa.45.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %.sroa.45.0.copyload.i19.i = load i32, ptr %.sroa.45.0..sroa_idx.i18.i, align 4, !noalias !901 ; 4 uses
  %.sroa.56.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.sroa.56.0.copyload.i21.i = load i64, ptr %.sroa.56.0..sroa_idx.i20.i, align 8, !noalias !901
  %i.ls = trunc i32 %.sroa.04.0.copyload.i17.i to i1
  br i1 %i.ls, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph1416
  %i.lt = zext i32 %.sroa.45.0.copyload.i19.i to i64 ; 3 uses
  %i.lu = icmp ugt i64 %i.kw, %i.lt
  br i1 %i.lu, label %bb.eu, label %bb.ev

bb.ci:                                            ; preds = %.lr.ph1416
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %.sroa.45.0.copyload.i19.i, ptr %i.w, align 4, !noalias !903
  %i.lv = zext i32 %.sroa.45.0.copyload.i19.i to i64 ; 3 uses
  %i.lw = load i64, ptr %i.cc, align 8, !alias.scope !904, !noalias !905, !noundef !5 ; 2 uses
  %i.lx = icmp ugt i64 %i.lw, %i.lv
  br i1 %i.lx, label %.lr.ph1409, label %._crit_edge1410

.lr.ph1409:                                       ; preds = %bb.ci, %.backedge
  %i.ly = phi i64 [ %i.ra, %.backedge ], [ %i.lv, %bb.ci ] ; 5 uses
  %i.lz = phi i32 [ %.sroa.0.0.i.i.be, %.backedge ], [ %.sroa.45.0.copyload.i19.i, %bb.ci ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.ma = load ptr, ptr %i.cd, align 8, !alias.scope !907, !noalias !905, !nonnull !5, !noundef !5
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.ly
  %i.mc = load i32, ptr %i.mb, align 4, !noalias !908, !noundef !5
  %i.md = zext i32 %i.mc to i64                   ; 4 uses
  %i.me = load i64, ptr %i.ae, align 8, !alias.scope !907, !noalias !905, !noundef !5 ; 5 uses
  %i.mf = icmp ugt i64 %i.me, %i.md
  %.pre2733 = load i64, ptr %i.ce, align 8, !noalias !905 ; 5 uses
  br i1 %i.mf, label %bb.cj, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84.thread

._crit_edge1410:                                  ; preds = %bb.ci, %.backedge
  %.lcssa716 = phi i64 [ %i.ra, %.backedge ], [ %i.lv, %bb.ci ]
  %.lcssa696 = phi i64 [ %i.rb, %.backedge ], [ %i.lw, %bb.ci ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa716, i64 noundef %.lcssa696, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !908
  unreachable

bb.cj:                                            ; preds = %.lr.ph1409
  %i.mg = icmp ugt i64 %.pre2733, %i.md
  br i1 %i.mg, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.md, i64 noundef %.pre2733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !908
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84: ; preds = %bb.cj
  %i.mh = load ptr, ptr %i.cf, align 8, !alias.scope !907, !noalias !905, !nonnull !5, !noundef !5
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.md
  %i.mj = load i32, ptr %i.mi, align 4, !noalias !908, !noundef !5
  %i.mk = icmp eq i32 %i.mj, %i.lz
  br i1 %i.mk, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84.thread: ; preds = %.lr.ph1409, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84
  store i64 %i.me, ptr %i.v, align 8, !noalias !909
  %i.ml = icmp ult i64 %.pre2733, 2305843009213693952
  call void @llvm.assume(i1 %i.ml), !noalias !905
  %i.mm = icmp ult i64 %i.me, %.pre2733
  br i1 %i.mm, label %bb.cm, label %bb.cl, !prof !6

bb.cl:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !909
  store i64 %.pre2733, ptr %i.t, align 8, !noalias !909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !909
  store ptr %i.v, ptr %i.s, align 8, !noalias !909
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !909
  %i.mn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.mn, align 8, !noalias !909
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !909
  %i.mo = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.w, ptr %i.mo, align 8, !noalias !909
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !909
  store ptr @66, ptr %i.u, align 8, !noalias !909
  %i.mp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 3, ptr %i.mp, align 8, !noalias !909
  %i.mq = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.mq, align 8, !noalias !909
  %i.mr = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.s, ptr %i.mr, align 8, !noalias !909
  %i.ms = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 3, ptr %i.ms, align 8, !noalias !909
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !905
  unreachable

bb.cm:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit84.thread
  %i.mt = and i64 %i.me, 4294967295
  %i.mu = load ptr, ptr %i.cf, align 8, !alias.scope !906, !noalias !905, !nonnull !5, !noundef !5
end_hunk_5
begin_hunk_6_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E:bb.a

bb.do:                                            ; preds = %bb.dm
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #22, !noalias !922
  unreachable

bb.dp:                                            ; preds = %bb.dm
  %i.on = load i8, ptr %i.kd, align 1, !alias.scope !922, !noundef !5
  %i.oo = zext i8 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr @79, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !range !12, !noalias !922, !noundef !5
  %i.or = trunc nuw i8 %i.oq to i1
  br label %bb.dn

.split2860:                                       ; preds = %bb.dn
  %i.os = load i8, ptr %i.kh, align 1, !alias.scope !922, !noundef !5
  %i.ot = zext i8 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr @79, i64 %i.ot
  %i.ov = load i8, ptr %i.ou, align 1, !range !12, !noalias !922, !noundef !5
  %i.ow = trunc nuw i8 %i.ov to i1
  %i.ox = xor i1 %.sroa.0.0.i100, %i.ow
  br i1 %i.ox, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %.backedge

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit102: ; preds = %bb.dn
  br i1 %.sroa.0.0.i100, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %.backedge

.split290:                                        ; preds = %bb.cu
  %i.oy = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

.split294:                                        ; preds = %bb.cu
  %i.pa = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.dq:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  br i1 %.not.i160, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  br i1 %.not25.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  br i1 %i.kb, label %bb.dv, label %bb.du

bb.dt:                                            ; preds = %bb.dr
  %i.pc = load i8, ptr %i.bv, align 1, !alias.scope !923, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !923
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !range !12, !noalias !923, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !923
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108

bb.du:                                            ; preds = %bb.ds
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22, !noalias !923
  unreachable

bb.dv:                                            ; preds = %bb.ds
  %i.pg = load i8, ptr %i.kd, align 1, !alias.scope !923, !noundef !5
  %i.ph = zext i8 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr @79, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !range !12, !noalias !923, !noundef !5
  %i.pk = trunc nuw i8 %i.pj to i1
  br i1 %i.kg, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.0.0.i104 = phi i8 [ %i.po, %bb.dx ], [ 0, %bb.dv ]
  %spec.select.i105 = select i1 %i.pk, i8 0, i8 %.sroa.0.0.i104
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108

bb.dx:                                            ; preds = %bb.dv
  %i.pl = load i8, ptr %i.kh, align 1, !alias.scope !923, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !923
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !range !12, !noalias !923, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !923
  br label %bb.dw

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108: ; preds = %bb.dt, %bb.dw
  %.sroa.0.1.i106 = phi i8 [ %i.pf, %bb.dt ], [ %spec.select.i105, %bb.dw ]
  %i.pp = trunc nuw i8 %.sroa.0.1.i106 to i1
  br i1 %i.pp, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.dy:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  br i1 %.not.i160, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.kb, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !noalias !924
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.pq = load i8, ptr %i.kd, align 1, !alias.scope !924, !noundef !5
  %i.pr = zext i8 %i.pq to i64
  %i.ps = getelementptr inbounds nuw i8, ptr @79, i64 %i.pr
  %i.pt = load i8, ptr %i.ps, align 1, !range !12, !noalias !924, !noundef !5
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.kg, label %bb.ec, label %.split291

.split291:                                        ; preds = %bb.ec, %bb.eb
  %.sroa.02.0.i110 = phi i1 [ %i.qa, %bb.ec ], [ true, %bb.eb ]
  %spec.select.i111 = select i1 %i.pu, i1 %.sroa.02.0.i110, i1 false
  br i1 %spec.select.i111, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.ec:                                            ; preds = %bb.eb
  %i.pv = load i8, ptr %i.kh, align 1, !alias.scope !924, !noundef !5
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw i8, ptr @79, i64 %i.pw
  %i.py = load i8, ptr %i.px, align 1, !range !12, !noalias !924, !noundef !5
  %i.pz = trunc nuw i8 %i.py to i1
  %i.qa = xor i1 %i.pz, true
  br label %.split291

.split293:                                        ; preds = %bb.cu
  %i.qb = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.qc = trunc nuw i8 %i.qb to i1
  br i1 %i.qc, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

.split292:                                        ; preds = %bb.cu
  %i.qd = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.ed:                                            ; preds = %bb.cu
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  br i1 %.not.i160, label %.backedge, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  br i1 %i.kb, label %.split284, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #22, !noalias !925
  unreachable

.split284:                                        ; preds = %bb.ee
  %i.qf = load i8, ptr %i.kd, align 1, !alias.scope !925, !noundef !5
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @79, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !range !12, !noalias !925, !noundef !5
  %i.qj = trunc nuw i8 %i.qi to i1
  br i1 %i.qj, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %.backedge

bb.eg:                                            ; preds = %bb.cu
  br i1 %i.kg, label %.split288, label %.backedge

.split289:                                        ; preds = %bb.cu
  %i.qk = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

.split283:                                        ; preds = %bb.cu
  %i.qm = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.eh:                                            ; preds = %bb.cv
  br i1 %i.kb, label %.split285, label %bb.ei

.split285:                                        ; preds = %bb.eh
  %i.qo = load i8, ptr %i.kd, align 1, !alias.scope !918, !noalias !926, !noundef !5
  %i.qp = load i8, ptr %i.bt, align 16, !alias.scope !917, !noalias !927, !noundef !5
  %i.qq = icmp eq i8 %i.qo, %i.qp
  br i1 %i.qq, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.ei:                                            ; preds = %bb.eh
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.0.02381422, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #22, !noalias !928
  unreachable

bb.ej:                                            ; preds = %bb.cw
  br i1 %i.kg, label %.split287, label %bb.ek

.split287:                                        ; preds = %bb.ej
  %i.qr = load i8, ptr %i.kh, align 1, !alias.scope !918, !noalias !926, !noundef !5
  %i.qs = load i8, ptr %i.bt, align 16, !alias.scope !917, !noalias !927, !noundef !5
  %i.qt = icmp eq i8 %i.qr, %i.qs
  br i1 %i.qt, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ke, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !928
  unreachable

.split288:                                        ; preds = %bb.eg
  %i.qu = load i8, ptr %i.kh, align 1, !alias.scope !918, !noalias !926, !noundef !5
  %i.qv = zext i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr @79, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !range !12, !noalias !928, !noundef !5
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %.backedge

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit: ; preds = %bb.dj
  %i.qz = trunc nuw i8 %i.od to i1
  br i1 %i.qz, label %.backedge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

.backedge:                                        ; preds = %.thread2861..split280_crit_edge, %.split2860, %bb.eo, %bb.es, %bb.de, %bb.dc, %bb.cz, %bb.cx, %bb.cv, %bb.ed, %bb.eg, %bb.db, %bb.dg, %bb.cw, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit118", %bb.ep, %.split279, %.split280, %.split281, %.split282, %.split283, %.split284, %.split285, %.split286, %.split287, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit102, %.split288, %.split289, %.split290, %.split291, %.split292, %.split293, %.split294, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108
  %.sroa.0.0.i.i.be = phi i32 [ %i.nu, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit ], [ %i.rx, %bb.ep ], [ %i.rg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit118" ], [ %i.nu, %bb.de ], [ %i.nu, %.split279 ], [ %i.nu, %.split280 ], [ %i.nu, %.split281 ], [ %i.nu, %.split282 ], [ %i.nu, %.split283 ], [ %i.nu, %.split284 ], [ %i.nu, %.split285 ], [ %i.nu, %.split286 ], [ %i.nu, %.split287 ], [ %i.nu, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit102 ], [ %i.nu, %.split288 ], [ %i.nu, %.split289 ], [ %i.nu, %.split290 ], [ %i.nu, %.split291 ], [ %i.nu, %.split292 ], [ %i.nu, %.split293 ], [ %i.nu, %.split294 ], [ %i.nu, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108 ], [ %i.nu, %bb.cw ], [ %i.nu, %bb.dg ], [ %i.nu, %bb.db ], [ %i.nu, %bb.eg ], [ %i.nu, %bb.ed ], [ %i.nu, %bb.cv ], [ %i.nu, %bb.cx ], [ %i.nu, %bb.cz ], [ %i.nu, %bb.dc ], [ %i.rq, %bb.es ], [ %i.rq, %bb.eo ], [ %i.nu, %.split2860 ], [ %i.nu, %.thread2861..split280_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 %.sroa.0.0.i.i.be, ptr %i.w, align 4, !noalias !929
  %i.ra = zext i32 %.sroa.0.0.i.i.be to i64       ; 3 uses
  %i.rb = load i64, ptr %i.cc, align 8, !alias.scope !930, !noalias !905, !noundef !5 ; 2 uses
  %i.rc = icmp ugt i64 %i.rb, %i.ra
  br i1 %i.rc, label %.lr.ph1409, label %._crit_edge1410

bb.el:                                            ; preds = %bb.cp
  %i.rd = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.re = load i64, ptr %i.rd, align 8, !noalias !905, !noundef !5 ; 2 uses
  %.not11.i.i = icmp eq i64 %i.re, 0
  br i1 %.not11.i.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i, label %bb.ep

bb.em:                                            ; preds = %bb.cp
  %i.rf = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.rg = load i32, ptr %i.rf, align 4, !noalias !905, !noundef !5
  %i.rh = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.ri = load i32, ptr %i.rh, align 8, !noalias !905, !noundef !5
  %i.rj = load i64, ptr %i.z, align 8, !alias.scope !931, !noalias !932, !noundef !5 ; 3 uses
  %i.rk = load i64, ptr %1, align 8, !range !18, !alias.scope !931, !noalias !932, !noundef !5
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.en, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit118"

bb.en:                                            ; preds = %bb.em
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !932
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit118"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit118": ; preds = %bb.em, %bb.en
  %i.rm = load ptr, ptr %i.bm, align 8, !alias.scope !931, !noalias !932, !nonnull !5, !noundef !5
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %i.rj ; 2 uses
  store i32 0, ptr %i.rn, align 8, !noalias !905
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 %i.ri, ptr %.sroa.4221.0..sroa_idx, align 4, !noalias !905
  %i.ro = add i64 %i.rj, 1
  store i64 %i.ro, ptr %i.z, align 8, !alias.scope !931, !noalias !932
  br label %.backedge

bb.eo:                                            ; preds = %bb.cp
  %i.rp = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.rq = load i32, ptr %i.rp, align 4, !noalias !905, !noundef !5 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.rs = load i32, ptr %i.rr, align 8, !noalias !905, !noundef !5 ; 2 uses
  %i.rt = zext i32 %i.rs to i64                   ; 2 uses
  %i.ru = icmp ugt i64 %i.kw, %i.rt
  br i1 %i.ru, label %bb.eq, label %.backedge

bb.ep:                                            ; preds = %bb.el
  %i.rv = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !905, !nonnull !5, !noundef !5 ; 3 uses
  %i.rx = load i32, ptr %i.rw, align 4, !noalias !905, !noundef !5
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.rz = getelementptr [4 x i8], ptr %i.rw, i64 %i.re
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.ry, ptr noundef %i.rz), !noalias !905
  br label %.backedge

bb.eq:                                            ; preds = %bb.eo
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.rt ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !alias.scope !902, !noalias !933, !noundef !5
  %i.sc = load i64, ptr %i.z, align 8, !alias.scope !934, !noalias !935, !noundef !5 ; 3 uses
  %i.sd = load i64, ptr %1, align 8, !range !18, !alias.scope !934, !noalias !935, !noundef !5
  %i.se = icmp eq i64 %i.sc, %i.sd
  br i1 %i.se, label %bb.er, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit119"

bb.er:                                            ; preds = %bb.eq
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !935
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit119"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit119": ; preds = %bb.eq, %bb.er
  %i.sf = load ptr, ptr %i.bm, align 8, !alias.scope !934, !noalias !935, !nonnull !5, !noundef !5
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.sc ; 3 uses
  store i32 1, ptr %i.sg, align 8, !noalias !905
  %.sroa.4224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  store i32 %i.rs, ptr %.sroa.4224.0..sroa_idx, align 4, !noalias !905
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store i64 %i.sb, ptr %.sroa.5225.0..sroa_idx, align 8, !noalias !905
  %i.sh = add i64 %i.sc, 1
  store i64 %i.sh, ptr %i.z, align 8, !alias.scope !934, !noalias !935
  br i1 %.not.i29.i, label %bb.et, label %bb.es, !prof !8

bb.es:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit119"
  call void @llvm.assume(i1 %4)
  store i64 %i.kf, ptr %i.sa, align 8, !alias.scope !902, !noalias !933
  br label %.backedge

bb.et:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit119"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !905
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i: ; preds = %.thread2861..split280_crit_edge, %.thread2861, %bb.dy, %bb.dr, %bb.de, %bb.cz, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit, %bb.el, %.split279, %.split280, %.split281, %.split282, %.split283, %.split284, %.split285, %.split286, %.split287, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit102, %.split288, %.split289, %.split290, %.split291, %.split292, %.split293, %.split294, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit108, %.split2860, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit89", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit, %bb.eu
  %.pr272 = load i64, ptr %i.z, align 8, !alias.scope !899, !noalias !900 ; 2 uses
  %i.si = icmp eq i64 %.pr272, 0
  br i1 %i.si, label %.backedge372, label %.lr.ph1416

bb.eu:                                            ; preds = %bb.ch
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lt
  store i64 %.sroa.56.0.copyload.i21.i, ptr %i.sj, align 8, !alias.scope !895, !noalias !936
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit.i

bb.ev:                                            ; preds = %bb.ch
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.lt, i64 noundef %i.kw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !901
  unreachable

bb.ew:                                            ; preds = %bb.cc
  %i.sk = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.sl = load i8, ptr %i.kd, align 1, !noalias !890, !noundef !5 ; 2 uses
  %.val52 = load ptr, ptr %i.sk, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.sm = getelementptr i8, ptr %i.kq, i64 16
  %.val53 = load i64, ptr %i.sm, align 8, !noundef !5 ; 2 uses
  %.idx5008 = shl nuw nsw i64 %.val53, 3
  %i.sn = getelementptr inbounds nuw i8, ptr %.val52, i64 %.idx5008
  %i.so = icmp eq i64 %.val53, 0
  br i1 %i.so, label %.backedge372, label %.lr.ph5001

bb.ex:                                            ; preds = %bb.ey
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1204999, i64 8 ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.sn
  br i1 %i.sq, label %.backedge372, label %.lr.ph5001

.lr.ph5001:                                       ; preds = %bb.ew, %bb.ex
  %.sroa.01.0.i1204999 = phi ptr [ %i.sp, %bb.ex ], [ %.val52, %bb.ew ] ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1204999, i64 4
  %i.ss = load i8, ptr %i.sr, align 4, !noundef !5
  %i.st = icmp ugt i8 %i.ss, %i.sl
  br i1 %i.st, label %.backedge372, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph5001
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1204999, i64 5
  %i.sv = load i8, ptr %i.su, align 1, !noundef !5
  %.not.i121 = icmp ugt i8 %i.sl, %i.sv
  br i1 %.not.i121, label %bb.ex, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.sw = load i32, ptr %.sroa.01.0.i1204999, align 4, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.sx = load i64, ptr %i.bw, align 8, !alias.scope !937, !noalias !892, !noundef !5
  %i.sy = mul i64 %i.sx, %i.kn                    ; 4 uses
  %i.sz = load i64, ptr %i.ac, align 8, !alias.scope !937, !noalias !892, !noundef !5 ; 7 uses
  %i.ta = add i64 %i.sy, %i.sz                    ; 3 uses
  %i.tb = load i64, ptr %i.bx, align 8, !alias.scope !937, !noalias !892, !noundef !5 ; 2 uses
  %i.tc = icmp ult i64 %i.ta, %i.sy
  %.not.i124 = icmp ugt i64 %i.ta, %i.tb
  %or.cond.i125 = or i1 %i.tc, %.not.i124
  br i1 %or.cond.i125, label %bb.fa, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit126, !prof !16

bb.fa:                                            ; preds = %bb.ez
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.sy, i64 noundef %i.ta, i64 noundef %i.tb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !938
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit126: ; preds = %bb.ez
  %i.td = load ptr, ptr %i.cb, align 8, !alias.scope !937, !noalias !892, !nonnull !5, !noundef !5
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.sy ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.tf = load i64, ptr %i.z, align 8, !alias.scope !941, !noalias !942, !noundef !5 ; 3 uses
  %i.tg = load i64, ptr %1, align 8, !range !18, !alias.scope !941, !noalias !942, !noundef !5
  %i.th = icmp eq i64 %i.tf, %i.tg
  br i1 %i.th, label %bb.fb, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit127"

bb.fb:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit126
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !942
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit127"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit127": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit126, %bb.fb
  %i.ti = load ptr, ptr %i.bm, align 8, !alias.scope !941, !noalias !942, !nonnull !5, !noundef !5
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.ti, i64 %i.tf ; 2 uses
  store i32 0, ptr %i.tj, align 8, !noalias !943
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  store i32 %i.sw, ptr %.sroa.4215.0..sroa_idx, align 4, !noalias !943
  %i.tk = add i64 %i.tf, 1                        ; 3 uses
  store i64 %i.tk, ptr %i.z, align 8, !alias.scope !941, !noalias !942
  %i.tl = icmp eq i64 %i.tk, 0
  br i1 %i.tl, label %.backedge372, label %.lr.ph1406.preheader

.lr.ph1406.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit127"
  %i.tm = shl i64 %i.sz, 3
  br label %.lr.ph1406

.lr.ph1406:                                       ; preds = %.lr.ph1406.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i
  %i.tn = phi i64 [ %.pr297, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i ], [ %i.tk, %.lr.ph1406.preheader ] ; 2 uses
  %i.to = add nsw i64 %i.tn, -1                   ; 3 uses
  store i64 %i.to, ptr %i.z, align 8, !alias.scope !944, !noalias !945
  %i.tp = load i64, ptr %1, align 8, !range !18, !alias.scope !944, !noalias !945, !noundef !5
  %i.tq = icmp samesign ult i64 %i.to, %i.tp
  call void @llvm.assume(i1 %i.tq)
  %i.tr = load ptr, ptr %i.bm, align 8, !alias.scope !944, !noalias !945, !nonnull !5, !noundef !5
  %i.ts = icmp samesign ult i64 %i.tn, 576460752303423489
  call void @llvm.assume(i1 %i.ts)
  %i.tt = getelementptr inbounds nuw [16 x i8], ptr %i.tr, i64 %i.to ; 3 uses
  %.sroa.04.0.copyload.i11.i = load i32, ptr %i.tt, align 8, !noalias !901
  %.sroa.45.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  %.sroa.45.0.copyload.i13.i = load i32, ptr %.sroa.45.0..sroa_idx.i12.i, align 4, !noalias !901 ; 4 uses
  %.sroa.56.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  %.sroa.56.0.copyload.i15.i = load i64, ptr %.sroa.56.0..sroa_idx.i14.i, align 8, !noalias !901
  %i.tu = trunc i32 %.sroa.04.0.copyload.i11.i to i1
  br i1 %i.tu, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph1406
  %i.tv = zext i32 %.sroa.45.0.copyload.i13.i to i64 ; 3 uses
  %i.tw = icmp ugt i64 %i.sz, %i.tv
  br i1 %i.tw, label %bb.ha, label %bb.hb

bb.fd:                                            ; preds = %.lr.ph1406
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %.sroa.45.0.copyload.i13.i, ptr %i.r, align 4, !noalias !947
  %i.tx = zext i32 %.sroa.45.0.copyload.i13.i to i64 ; 3 uses
  %i.ty = load i64, ptr %i.cc, align 8, !alias.scope !948, !noalias !949, !noundef !5 ; 2 uses
  %i.tz = icmp ugt i64 %i.ty, %i.tx
  br i1 %i.tz, label %.lr.ph1399, label %._crit_edge1400

.lr.ph1399:                                       ; preds = %bb.fd, %.backedge366
  %i.ua = phi i64 [ %i.zc, %.backedge366 ], [ %i.tx, %bb.fd ] ; 5 uses
  %i.ub = phi i32 [ %.sroa.0.0.i23.i.be, %.backedge366 ], [ %.sroa.45.0.copyload.i13.i, %bb.fd ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !950)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.uc = load ptr, ptr %i.cd, align 8, !alias.scope !951, !noalias !949, !nonnull !5, !noundef !5
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.uc, i64 %i.ua
  %i.ue = load i32, ptr %i.ud, align 4, !noalias !952, !noundef !5
  %i.uf = zext i32 %i.ue to i64                   ; 4 uses
  %i.ug = load i64, ptr %i.ae, align 8, !alias.scope !951, !noalias !949, !noundef !5 ; 5 uses
  %i.uh = icmp ugt i64 %i.ug, %i.uf
  %.pre2732 = load i64, ptr %i.ce, align 8, !noalias !949 ; 5 uses
  br i1 %i.uh, label %bb.fe, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129.thread

._crit_edge1400:                                  ; preds = %bb.fd, %.backedge366
  %.lcssa624 = phi i64 [ %i.zc, %.backedge366 ], [ %i.tx, %bb.fd ]
  %.lcssa611 = phi i64 [ %i.zd, %.backedge366 ], [ %i.ty, %bb.fd ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa624, i64 noundef %.lcssa611, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !952
  unreachable

bb.fe:                                            ; preds = %.lr.ph1399
  %i.ui = icmp ugt i64 %.pre2732, %i.uf
  br i1 %i.ui, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.uf, i64 noundef %.pre2732, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !952
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129: ; preds = %bb.fe
  %i.uj = load ptr, ptr %i.cf, align 8, !alias.scope !951, !noalias !949, !nonnull !5, !noundef !5
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.uf
  %i.ul = load i32, ptr %i.uk, align 4, !noalias !952, !noundef !5
  %i.um = icmp eq i32 %i.ul, %i.ub
  br i1 %i.um, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit28, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129.thread: ; preds = %.lr.ph1399, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129
  store i64 %i.ug, ptr %i.q, align 8, !noalias !953
  %i.un = icmp ult i64 %.pre2732, 2305843009213693952
  call void @llvm.assume(i1 %i.un), !noalias !949
  %i.uo = icmp ult i64 %i.ug, %.pre2732
  br i1 %i.uo, label %bb.fh, label %bb.fg, !prof !6

bb.fg:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !953
  store i64 %.pre2732, ptr %i.o, align 8, !noalias !953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !953
  store ptr %i.q, ptr %i.n, align 8, !noalias !953
  %.sroa.43.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i24, align 8, !noalias !953
  %i.up = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.up, align 8, !noalias !953
  %.sroa.47.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i25, align 8, !noalias !953
  %i.uq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.r, ptr %i.uq, align 8, !noalias !953
  %.sroa.411.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i26, align 8, !noalias !953
  store ptr @66, ptr %i.p, align 8, !noalias !953
  %i.ur = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 3, ptr %i.ur, align 8, !noalias !953
  %i.us = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.us, align 8, !noalias !953
  %i.ut = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.n, ptr %i.ut, align 8, !noalias !953
  %i.uu = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 3, ptr %i.uu, align 8, !noalias !953
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !949
  unreachable

bb.fh:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit129.thread
  %i.uv = and i64 %i.ug, 4294967295
  %i.uw = load ptr, ptr %i.cf, align 8, !alias.scope !950, !noalias !949, !nonnull !5, !noundef !5
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %i.uv
  store i32 %i.ub, ptr %i.ux, align 4, !noalias !949
  %i.uy = zext i32 %i.ub to i64                   ; 3 uses
  %i.uz = load i64, ptr %i.cc, align 8, !alias.scope !950, !noalias !949, !noundef !5 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E:bb.a
  br i1 %.not.i160, label %.thread2867, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wc = load i8, ptr %i.kd, align 1, !alias.scope !965, !noundef !5
  %i.wd = zext i8 %i.wc to i64
  %i.we = getelementptr inbounds nuw i8, ptr @79, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !range !12, !noalias !965, !noundef !5 ; 2 uses
  br i1 %i.kg, label %.split305, label %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit43

.thread2867:                                      ; preds = %bb.ga
  br i1 %i.kg, label %.thread2867..split305_crit_edge, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.thread2867..split305_crit_edge:                  ; preds = %.thread2867
  %i.wg = load i8, ptr %i.kh, align 1, !alias.scope !965, !noundef !5
  %i.wh = zext i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr @79, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !range !12, !noalias !965, !noundef !5
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.split305:                                        ; preds = %bb.gb
  %i.wl = load i8, ptr %i.kh, align 1, !alias.scope !965, !noundef !5
  %i.wm = zext i8 %i.wl to i64
  %i.wn = getelementptr inbounds nuw i8, ptr @79, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !range !12, !noalias !965, !noundef !5
  %.not3937 = icmp eq i8 %i.wf, %i.wo
  br i1 %.not3937, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %.backedge366

bb.gc:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  br i1 %.not.i160, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.ge, %bb.gc
  %.sroa.0.0.i145 = phi i1 [ %i.wt, %bb.ge ], [ false, %bb.gc ] ; 2 uses
  br i1 %i.kg, label %.split2866, label %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit147

bb.ge:                                            ; preds = %bb.gc
  %i.wp = load i8, ptr %i.kd, align 1, !alias.scope !966, !noundef !5
  %i.wq = zext i8 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr @79, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !range !12, !noalias !966, !noundef !5
  %i.wt = trunc nuw i8 %i.ws to i1
  br label %bb.gd

.split2866:                                       ; preds = %bb.gd
  %i.wu = load i8, ptr %i.kh, align 1, !alias.scope !966, !noundef !5
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr @79, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !range !12, !noalias !966, !noundef !5
  %i.wy = trunc nuw i8 %i.wx to i1
  %i.wz = xor i1 %.sroa.0.0.i145, %i.wy
  br i1 %i.wz, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %.backedge366

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit147: ; preds = %bb.gd
  br i1 %.sroa.0.0.i145, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %.backedge366

.split315:                                        ; preds = %bb.fp
  %i.xa = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.xb = trunc nuw i8 %i.xa to i1
  br i1 %i.xb, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.split319:                                        ; preds = %bb.fp
  %i.xc = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gf:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  br i1 %.not.i160, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.xe = load i8, ptr %i.bv, align 1, !alias.scope !967, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !967
  %i.xf = zext i8 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !range !12, !noalias !967, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !967
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153

bb.gh:                                            ; preds = %bb.gf
  %i.xi = load i8, ptr %i.kd, align 1, !alias.scope !967, !noundef !5
  %i.xj = zext i8 %i.xi to i64
  %i.xk = getelementptr inbounds nuw i8, ptr @79, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !range !12, !noalias !967, !noundef !5
  %i.xm = trunc nuw i8 %i.xl to i1
  br i1 %i.kg, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %bb.gh
  %.sroa.0.0.i149 = phi i8 [ %i.xq, %bb.gj ], [ 0, %bb.gh ]
  %spec.select.i150 = select i1 %i.xm, i8 0, i8 %.sroa.0.0.i149
  br label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153

bb.gj:                                            ; preds = %bb.gh
  %i.xn = load i8, ptr %i.kh, align 1, !alias.scope !967, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, ptr noundef nonnull align 1 dereferenceable(256) @79, i64 256, i1 false), !noalias !967
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !range !12, !noalias !967, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !967
  br label %bb.gi

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153: ; preds = %bb.gg, %bb.gi
  %.sroa.0.1.i151 = phi i8 [ %i.xh, %bb.gg ], [ %spec.select.i150, %bb.gi ]
  %i.xr = trunc nuw i8 %.sroa.0.1.i151 to i1
  br i1 %i.xr, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gk:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  br i1 %.not.i160, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.xs = load i8, ptr %i.kd, align 1, !alias.scope !968, !noundef !5
  %i.xt = zext i8 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr @79, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !range !12, !noalias !968, !noundef !5
  %i.xw = trunc nuw i8 %i.xv to i1
  br i1 %i.kg, label %bb.gm, label %.split316

.split316:                                        ; preds = %bb.gm, %bb.gl
  %.sroa.02.0.i155 = phi i1 [ %i.yc, %bb.gm ], [ true, %bb.gl ]
  %spec.select.i156 = select i1 %i.xw, i1 %.sroa.02.0.i155, i1 false
  br i1 %spec.select.i156, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gm:                                            ; preds = %bb.gl
  %i.xx = load i8, ptr %i.kh, align 1, !alias.scope !968, !noundef !5
  %i.xy = zext i8 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr @79, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !range !12, !noalias !968, !noundef !5
  %i.yb = trunc nuw i8 %i.ya to i1
  %i.yc = xor i1 %i.yb, true
  br label %.split316

.split318:                                        ; preds = %bb.fp
  %i.yd = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.split317:                                        ; preds = %bb.fp
  %i.yf = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.yg = trunc nuw i8 %i.yf to i1
  br i1 %i.yg, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gn:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  br i1 %.not.i160, label %.backedge366, label %.split309

.split309:                                        ; preds = %bb.gn
  %i.yh = load i8, ptr %i.kd, align 1, !alias.scope !969, !noundef !5
  %i.yi = zext i8 %i.yh to i64
  %i.yj = getelementptr inbounds nuw i8, ptr @79, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !range !12, !noalias !969, !noundef !5
  %i.yl = trunc nuw i8 %i.yk to i1
  br i1 %i.yl, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %.backedge366

bb.go:                                            ; preds = %bb.fp
  br i1 %i.kg, label %.split313, label %.backedge366

.split314:                                        ; preds = %bb.fp
  %i.ym = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.yn = trunc nuw i8 %i.ym to i1
  br i1 %i.yn, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.split308:                                        ; preds = %bb.fp
  %i.yo = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.yp = trunc nuw i8 %i.yo to i1
  br i1 %i.yp, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.split310:                                        ; preds = %bb.fq
  %i.yq = load i8, ptr %i.kd, align 1, !alias.scope !962, !noalias !970, !noundef !5
  %i.yr = load i8, ptr %i.bt, align 16, !alias.scope !961, !noalias !971, !noundef !5
  %i.ys = icmp eq i8 %i.yq, %i.yr
  br i1 %i.ys, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gp:                                            ; preds = %bb.fr
  br i1 %i.kg, label %.split312, label %bb.gq

.split312:                                        ; preds = %bb.gp
  %i.yt = load i8, ptr %i.kh, align 1, !alias.scope !962, !noalias !970, !noundef !5
  %i.yu = load i8, ptr %i.bt, align 16, !alias.scope !961, !noalias !971, !noundef !5
  %i.yv = icmp eq i8 %i.yt, %i.yu
  br i1 %i.yv, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.gq:                                            ; preds = %bb.gp
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ke, i64 noundef %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !noalias !972
  unreachable

.split313:                                        ; preds = %bb.go
  %i.yw = load i8, ptr %i.kh, align 1, !alias.scope !962, !noalias !970, !noundef !5
  %i.yx = zext i8 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr @79, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !range !12, !noalias !972, !noundef !5
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %.backedge366

_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit43: ; preds = %bb.gb
  %i.zb = trunc nuw i8 %i.wf to i1
  br i1 %i.zb, label %.backedge366, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

.backedge366:                                     ; preds = %.thread2867..split305_crit_edge, %.split2866, %bb.gu, %bb.gy, %bb.fx, %bb.fv, %bb.ft, %bb.fs, %bb.fq, %bb.gn, %bb.go, %bb.fu, %bb.fz, %bb.fr, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit43, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit163", %bb.gv, %.split304, %.split305, %.split306, %.split307, %.split308, %.split309, %.split310, %.split311, %.split312, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit147, %.split313, %.split314, %.split315, %.split316, %.split317, %.split318, %.split319, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153
  %.sroa.0.0.i23.i.be = phi i32 [ %i.vw, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit43 ], [ %i.zz, %bb.gv ], [ %i.zi, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit163" ], [ %i.vw, %bb.fx ], [ %i.vw, %.split304 ], [ %i.vw, %.split305 ], [ %i.vw, %.split306 ], [ %i.vw, %.split307 ], [ %i.vw, %.split308 ], [ %i.vw, %.split309 ], [ %i.vw, %.split310 ], [ %i.vw, %.split311 ], [ %i.vw, %.split312 ], [ %i.vw, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit147 ], [ %i.vw, %.split313 ], [ %i.vw, %.split314 ], [ %i.vw, %.split315 ], [ %i.vw, %.split316 ], [ %i.vw, %.split317 ], [ %i.vw, %.split318 ], [ %i.vw, %.split319 ], [ %i.vw, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153 ], [ %i.vw, %bb.fr ], [ %i.vw, %bb.fz ], [ %i.vw, %bb.fu ], [ %i.vw, %bb.go ], [ %i.vw, %bb.gn ], [ %i.vw, %bb.fq ], [ %i.vw, %bb.fs ], [ %i.vw, %bb.ft ], [ %i.vw, %bb.fv ], [ %i.zs, %bb.gy ], [ %i.zs, %bb.gu ], [ %i.vw, %.split2866 ], [ %i.vw, %.thread2867..split305_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %.sroa.0.0.i23.i.be, ptr %i.r, align 4, !noalias !973
  %i.zc = zext i32 %.sroa.0.0.i23.i.be to i64     ; 3 uses
  %i.zd = load i64, ptr %i.cc, align 8, !alias.scope !974, !noalias !949, !noundef !5 ; 2 uses
  %i.ze = icmp ugt i64 %i.zd, %i.zc
  br i1 %i.ze, label %.lr.ph1399, label %._crit_edge1400

bb.gr:                                            ; preds = %bb.fk
  %i.zf = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.zg = load i64, ptr %i.zf, align 8, !noalias !949, !noundef !5 ; 2 uses
  %.not11.i25.i = icmp eq i64 %i.zg, 0
  br i1 %.not11.i25.i, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i, label %bb.gv

bb.gs:                                            ; preds = %bb.fk
  %i.zh = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !noalias !949, !noundef !5
  %i.zj = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.zk = load i32, ptr %i.zj, align 8, !noalias !949, !noundef !5
  %i.zl = load i64, ptr %i.z, align 8, !alias.scope !975, !noalias !976, !noundef !5 ; 3 uses
  %i.zm = load i64, ptr %1, align 8, !range !18, !alias.scope !975, !noalias !976, !noundef !5
  %i.zn = icmp eq i64 %i.zl, %i.zm
  br i1 %i.zn, label %bb.gt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit163"

bb.gt:                                            ; preds = %bb.gs
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !976
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit163"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit163": ; preds = %bb.gs, %bb.gt
  %i.zo = load ptr, ptr %i.bm, align 8, !alias.scope !975, !noalias !976, !nonnull !5, !noundef !5
  %i.zp = getelementptr inbounds nuw [16 x i8], ptr %i.zo, i64 %i.zl ; 2 uses
  store i32 0, ptr %i.zp, align 8, !noalias !949
  %.sroa.4227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  store i32 %i.zk, ptr %.sroa.4227.0..sroa_idx, align 4, !noalias !949
  %i.zq = add i64 %i.zl, 1
  store i64 %i.zq, ptr %i.z, align 8, !alias.scope !975, !noalias !976
  br label %.backedge366

bb.gu:                                            ; preds = %bb.fk
  %i.zr = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.zs = load i32, ptr %i.zr, align 4, !noalias !949, !noundef !5 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  %i.zu = load i32, ptr %i.zt, align 8, !noalias !949, !noundef !5 ; 2 uses
  %i.zv = zext i32 %i.zu to i64                   ; 2 uses
  %i.zw = icmp ugt i64 %i.sz, %i.zv
  br i1 %i.zw, label %bb.gw, label %.backedge366

bb.gv:                                            ; preds = %bb.gr
  %i.zx = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8, !noalias !949, !nonnull !5, !noundef !5 ; 3 uses
  %i.zz = load i32, ptr %i.zy, align 4, !noalias !949, !noundef !5
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 4
  %i.aab = getelementptr [4 x i8], ptr %i.zy, i64 %i.zg
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hbe868cf4c684631dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.aaa, ptr noundef %i.aab), !noalias !949
  br label %.backedge366

bb.gw:                                            ; preds = %bb.gu
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.zv ; 2 uses
  %i.aad = load i64, ptr %i.aac, align 8, !alias.scope !946, !noalias !977, !noundef !5
  %i.aae = load i64, ptr %i.z, align 8, !alias.scope !978, !noalias !979, !noundef !5 ; 3 uses
  %i.aaf = load i64, ptr %1, align 8, !range !18, !alias.scope !978, !noalias !979, !noundef !5
  %i.aag = icmp eq i64 %i.aae, %i.aaf
  br i1 %i.aag, label %bb.gx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit164"

bb.gx:                                            ; preds = %bb.gw
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !979
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit164"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit164": ; preds = %bb.gw, %bb.gx
  %i.aah = load ptr, ptr %i.bm, align 8, !alias.scope !978, !noalias !979, !nonnull !5, !noundef !5
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %i.aah, i64 %i.aae ; 3 uses
  store i32 1, ptr %i.aai, align 8, !noalias !949
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  store i32 %i.zu, ptr %.sroa.4230.0..sroa_idx, align 4, !noalias !949
  %.sroa.5231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  store i64 %i.aad, ptr %.sroa.5231.0..sroa_idx, align 8, !noalias !949
  %i.aaj = add i64 %i.aae, 1
  store i64 %i.aaj, ptr %i.z, align 8, !alias.scope !978, !noalias !979
  br i1 %.not.i29.i, label %bb.gz, label %bb.gy, !prof !8

bb.gy:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit164"
  call void @llvm.assume(i1 %4)
  store i64 %i.kf, ptr %i.aac, align 8, !alias.scope !946, !noalias !977
  br label %.backedge366

bb.gz:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit164"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !949
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i: ; preds = %.thread2867..split305_crit_edge, %.thread2867, %bb.gk, %bb.fx, %bb.ft, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit43, %bb.gr, %.split304, %.split305, %.split306, %.split307, %.split308, %.split309, %.split310, %.split311, %.split312, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit147, %.split313, %.split314, %.split315, %.split316, %.split317, %.split318, %.split319, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit153, %.split2866, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit134", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit28, %bb.ha
  %.pr297 = load i64, ptr %i.z, align 8, !alias.scope !944, !noalias !945 ; 2 uses
  %i.aak = icmp eq i64 %.pr297, 0
  br i1 %i.aak, label %.backedge372, label %.lr.ph1406

bb.ha:                                            ; preds = %bb.fc
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.tv
  store i64 %.sroa.56.0.copyload.i15.i, ptr %i.aal, align 8, !alias.scope !940, !noalias !980
  br label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit27.i

bb.hb:                                            ; preds = %bb.fc
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.tv, i64 noundef %i.sz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #22, !noalias !901
  unreachable

bb.hc:                                            ; preds = %bb.cd
  %i.aam = load i8, ptr %i.kd, align 1, !noalias !890, !noundef !5
  %i.aan = zext i8 %i.aam to i64                  ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !noalias !890, !noundef !5 ; 2 uses
  %i.aaq = icmp ugt i64 %i.aap, %i.aan
  br i1 %i.aaq, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.aar = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.aas = load ptr, ptr %i.aar, align 8, !noalias !890, !nonnull !5, !noundef !5
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %i.aan
  %i.aau = load i32, ptr %i.aat, align 4, !noalias !890, !noundef !5 ; 2 uses
  %i.aav = icmp eq i32 %i.aau, 0
  br i1 %i.aav, label %.backedge372, label %bb.hf

bb.he:                                            ; preds = %bb.hc
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aan, i64 noundef %i.aap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #22, !noalias !890
  unreachable

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.aaw = load i64, ptr %i.bw, align 8, !alias.scope !981, !noalias !892, !noundef !5
  %i.aax = mul i64 %i.aaw, %i.kn                  ; 4 uses
  %i.aay = load i64, ptr %i.ac, align 8, !alias.scope !981, !noalias !892, !noundef !5 ; 7 uses
  %i.aaz = add i64 %i.aax, %i.aay                 ; 3 uses
  %i.aba = load i64, ptr %i.bx, align 8, !alias.scope !981, !noalias !892, !noundef !5 ; 2 uses
  %i.abb = icmp ult i64 %i.aaz, %i.aax
  %.not.i165 = icmp ugt i64 %i.aaz, %i.aba
  %or.cond.i166 = or i1 %i.abb, %.not.i165
  br i1 %or.cond.i166, label %bb.hg, label %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit167, !prof !16

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.aax, i64 noundef %i.aaz, i64 noundef %i.aba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !noalias !982
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit167: ; preds = %bb.hf
  %i.abc = load ptr, ptr %i.cb, align 8, !alias.scope !981, !noalias !892, !nonnull !5, !noundef !5
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.aax ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.abe = load i64, ptr %i.z, align 8, !alias.scope !985, !noalias !986, !noundef !5 ; 3 uses
  %i.abf = load i64, ptr %1, align 8, !range !18, !alias.scope !985, !noalias !986, !noundef !5
  %i.abg = icmp eq i64 %i.abe, %i.abf
  br i1 %i.abg, label %bb.hh, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit168"

bb.hh:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit167
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !986
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit168"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit168": ; preds = %_ZN14regex_automata3nfa8thompson6pikevm9SlotTable9for_state17h90ee8bdde197d973E.exit167, %bb.hh
  %i.abh = load ptr, ptr %i.bm, align 8, !alias.scope !985, !noalias !986, !nonnull !5, !noundef !5
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.abh, i64 %i.abe ; 2 uses
  store i32 0, ptr %i.abi, align 8, !noalias !987
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  store i32 %i.aau, ptr %.sroa.4212.0..sroa_idx, align 4, !noalias !987
  %i.abj = add i64 %i.abe, 1                      ; 3 uses
  store i64 %i.abj, ptr %i.z, align 8, !alias.scope !985, !noalias !986
  %i.abk = icmp eq i64 %i.abj, 0
  br i1 %i.abk, label %.backedge372, label %.lr.ph1396.preheader

.lr.ph1396.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit168"
  %i.abl = shl i64 %i.aay, 3
  br label %.lr.ph1396

.lr.ph1396:                                       ; preds = %.lr.ph1396.preheader, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i
  %i.abm = phi i64 [ %.pr320, %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i ], [ %i.abj, %.lr.ph1396.preheader ] ; 2 uses
  %i.abn = add nsw i64 %i.abm, -1                 ; 3 uses
  store i64 %i.abn, ptr %i.z, align 8, !alias.scope !988, !noalias !989
  %i.abo = load i64, ptr %1, align 8, !range !18, !alias.scope !988, !noalias !989, !noundef !5
  %i.abp = icmp samesign ult i64 %i.abn, %i.abo
  call void @llvm.assume(i1 %i.abp)
  %i.abq = load ptr, ptr %i.bm, align 8, !alias.scope !988, !noalias !989, !nonnull !5, !noundef !5
  %i.abr = icmp samesign ult i64 %i.abm, 576460752303423489
  call void @llvm.assume(i1 %i.abr)
  %i.abs = getelementptr inbounds nuw [16 x i8], ptr %i.abq, i64 %i.abn ; 3 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.abs, align 8, !noalias !901
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %.sroa.45.0.copyload.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !noalias !901 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !901
  %i.abt = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.abt, label %bb.hi, label %.split1388

bb.hi:                                            ; preds = %.lr.ph1396
  %i.abu = zext i32 %.sroa.45.0.copyload.i.i to i64 ; 3 uses
  %i.abv = icmp ugt i64 %i.aay, %i.abu
  br i1 %i.abv, label %bb.ip, label %bb.iq

.split1388:                                       ; preds = %.lr.ph1396
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.45.0.copyload.i.i, ptr %i.m, align 4, !noalias !991
  %i.abw = zext i32 %.sroa.45.0.copyload.i.i to i64 ; 3 uses
  %i.abx = load i64, ptr %i.cc, align 8, !alias.scope !992, !noalias !993, !noundef !5 ; 2 uses
  %i.aby = icmp ugt i64 %i.abx, %i.abw
  br i1 %i.aby, label %.lr.ph1390, label %.split1388._crit_edge

.lr.ph1390:                                       ; preds = %.split1388, %.backedge367
  %i.abz = phi i64 [ %i.agr, %.backedge367 ], [ %i.abw, %.split1388 ] ; 5 uses
  %i.aca = phi i32 [ %.sroa.0.0.i28.i.be, %.backedge367 ], [ %.sroa.45.0.copyload.i.i, %.split1388 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.acb = load ptr, ptr %i.cd, align 8, !alias.scope !995, !noalias !993, !nonnull !5, !noundef !5
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.abz
  %i.acd = load i32, ptr %i.acc, align 4, !noalias !996, !noundef !5
  %i.ace = zext i32 %i.acd to i64                 ; 4 uses
  %i.acf = load i64, ptr %i.ae, align 8, !alias.scope !995, !noalias !993, !noundef !5 ; 5 uses
  %i.acg = icmp ugt i64 %i.acf, %i.ace
  %.pre2731 = load i64, ptr %i.ce, align 8, !noalias !993 ; 5 uses
  br i1 %i.acg, label %bb.hj, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170.thread

.split1388._crit_edge:                            ; preds = %.split1388, %.backedge367
  %.lcssa538 = phi i64 [ %i.agr, %.backedge367 ], [ %i.abw, %.split1388 ]
  %.lcssa525 = phi i64 [ %i.ags, %.backedge367 ], [ %i.abx, %.split1388 ]
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.lcssa538, i64 noundef %.lcssa525, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #22, !noalias !996
  unreachable

bb.hj:                                            ; preds = %.lr.ph1390
  %i.ach = icmp ugt i64 %.pre2731, %i.ace
  br i1 %i.ach, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ace, i64 noundef %.pre2731, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #22, !noalias !996
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170: ; preds = %bb.hj
  %i.aci = load ptr, ptr %i.cf, align 8, !alias.scope !995, !noalias !993, !nonnull !5, !noundef !5
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.ace
  %i.ack = load i32, ptr %i.acj, align 4, !noalias !996, !noundef !5
  %i.acl = icmp eq i32 %i.ack, %i.aca
  br i1 %i.acl, label %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit33, label %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170.thread

_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170.thread: ; preds = %.lr.ph1390, %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170
  store i64 %i.acf, ptr %i.l, align 8, !noalias !997
  %i.acm = icmp ult i64 %.pre2731, 2305843009213693952
  call void @llvm.assume(i1 %i.acm), !noalias !993
  %i.acn = icmp ult i64 %i.acf, %.pre2731
  br i1 %i.acn, label %bb.hm, label %bb.hl, !prof !6

bb.hl:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !997
  store i64 %.pre2731, ptr %i.j, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !997
  store ptr %i.l, ptr %i.i, align 8, !noalias !997
  %.sroa.43.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.43.0..sroa_idx.i29, align 8, !noalias !997
  %i.aco = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.aco, align 8, !noalias !997
  %.sroa.47.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.47.0..sroa_idx.i30, align 8, !noalias !997
  %i.acp = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.m, ptr %i.acp, align 8, !noalias !997
  %.sroa.411.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @"_ZN78_$LT$regex_automata..util..primitives..StateID$u20$as$u20$core..fmt..Debug$GT$3fmt17h8eeb83bedf32084bE", ptr %.sroa.411.0..sroa_idx.i31, align 8, !noalias !997
  store ptr @66, ptr %i.k, align 8, !noalias !997
  %i.acq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 3, ptr %i.acq, align 8, !noalias !997
  %i.acr = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.acr, align 8, !noalias !997
  %i.acs = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.acs, align 8, !noalias !997
  %i.act = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 3, ptr %i.act, align 8, !noalias !997
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #22, !noalias !993
  unreachable

bb.hm:                                            ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170.thread
  %i.acu = and i64 %i.acf, 4294967295
  %i.acv = load ptr, ptr %i.cf, align 8, !alias.scope !994, !noalias !993, !nonnull !5, !noundef !5
  %i.acw = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.acu
  store i32 %i.aca, ptr %i.acw, align 4, !noalias !993
  %i.acx = zext i32 %i.aca to i64                 ; 3 uses
  %i.acy = load i64, ptr %i.cc, align 8, !alias.scope !994, !noalias !993, !noundef !5 ; 2 uses
  %i.acz = icmp ugt i64 %i.acy, %i.acx
  br i1 %i.acz, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.acx, i64 noundef %i.acy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @68) #22, !noalias !993
  unreachable

_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit33: ; preds = %_ZN14regex_automata4util10sparse_set9SparseSet8contains17hf1aecd5fa3010317E.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
end_hunk_7
begin_hunk_8_@_ZN14regex_automata3nfa8thompson6pikevm6PikeVM21which_overlapping_imp17h14a8a19e151bb6b3E:bb.a
    i32 0, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i
    i32 1, label %.split329
    i32 2, label %.split333
    i32 3, label %bb.hv
    i32 4, label %bb.hw
    i32 5, label %bb.hy
    i32 6, label %bb.ia
    i32 7, label %bb.ib
    i32 8, label %.split338
    i32 9, label %.split342
    i32 10, label %bb.ic
    i32 11, label %bb.id
    i32 12, label %.split341
    i32 13, label %.split340
    i32 14, label %.split332
    i32 15, label %bb.if
    i32 16, label %.split337
    i32 17, label %.split331
  ]

.split329:                                        ; preds = %bb.hu
  br i1 %i.ki, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

bb.hv:                                            ; preds = %bb.hu
  br i1 %i.ki, label %.backedge367, label %.split335

bb.hw:                                            ; preds = %bb.hu
  %i.adx = load i8, ptr %i.kd, align 1, !alias.scope !1007, !noundef !5
  switch i8 %i.adx, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i [
    i8 10, label %.backedge367
    i8 13, label %bb.hx
  ]

bb.hx:                                            ; preds = %bb.hw
  br i1 %i.kg, label %.split334, label %.backedge367

.split334:                                        ; preds = %bb.hx
  %i.ady = load i8, ptr %i.kh, align 1, !alias.scope !1007, !noundef !5
  %.not360 = icmp eq i8 %i.ady, 10
  br i1 %.not360, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

bb.hy:                                            ; preds = %bb.hu
  br i1 %i.ki, label %.backedge367, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.adz = load i8, ptr %i.kh, align 1, !alias.scope !1008, !noundef !5
  switch i8 %i.adz, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i [
    i8 13, label %.backedge367
    i8 10, label %.split330
  ]

.split330:                                        ; preds = %bb.hz
  %i.aea = load i8, ptr %i.kd, align 1, !alias.scope !1008, !noundef !5
  %.not359 = icmp eq i8 %i.aea, 13
  br i1 %.not359, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

bb.ia:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.aeb = load i8, ptr %i.kd, align 1, !alias.scope !1009, !noundef !5
  %i.aec = zext i8 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw i8, ptr @79, i64 %i.aec
  %i.aee = load i8, ptr %i.aed, align 1, !range !12, !noalias !1009, !noundef !5 ; 2 uses
  br i1 %i.kg, label %.split328, label %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46

.split328:                                        ; preds = %bb.ia
  %i.aef = load i8, ptr %i.kh, align 1, !alias.scope !1009, !noundef !5
  %i.aeg = zext i8 %i.aef to i64
  %i.aeh = getelementptr inbounds nuw i8, ptr @79, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !range !12, !noalias !1009, !noundef !5
  %.not1428 = icmp eq i8 %i.aee, %i.aei
  br i1 %.not1428, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

bb.ib:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.aej = load i8, ptr %i.kd, align 1, !alias.scope !1010, !noundef !5
  %i.aek = zext i8 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @79, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !range !12, !noalias !1010, !noundef !5 ; 2 uses
  br i1 %i.kg, label %.split2872, label %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188

.split2872:                                       ; preds = %bb.ib
  %i.aen = load i8, ptr %i.kh, align 1, !alias.scope !1010, !noundef !5
  %i.aeo = zext i8 %i.aen to i64
  %i.aep = getelementptr inbounds nuw i8, ptr @79, i64 %i.aeo
  %i.aeq = load i8, ptr %i.aep, align 1, !range !12, !noalias !1010, !noundef !5
  %.not3936 = icmp eq i8 %i.aem, %i.aeq
  br i1 %.not3936, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188: ; preds = %bb.ib
  %i.aer = trunc nuw i8 %i.aem to i1
  br i1 %i.aer, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

.split338:                                        ; preds = %bb.hu
  %i.aes = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher15is_word_unicode17h1336afb4012fdea5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.aet = trunc nuw i8 %i.aes to i1
  br i1 %i.aet, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split342:                                        ; preds = %bb.hu
  %i.aeu = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher22is_word_unicode_negate17h6644be525b4e777eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.aev = trunc nuw i8 %i.aeu to i1
  br i1 %i.aev, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

bb.ic:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  br i1 %i.kg, label %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194: ; preds = %bb.ic
  %i.aew = load i8, ptr %i.kd, align 1, !alias.scope !1011, !noundef !5
  %i.aex = zext i8 %i.aew to i64
  %i.aey = getelementptr inbounds nuw i8, ptr @79, i64 %i.aex
  %i.aez = load i8, ptr %i.aey, align 1, !range !12, !noalias !1011, !noundef !5
  %i.afa = trunc nuw i8 %i.aez to i1
  %i.afb = load i8, ptr %i.kh, align 1, !alias.scope !1011, !noundef !5
  %i.afc = zext i8 %i.afb to i64
  %i.afd = getelementptr inbounds nuw i8, ptr @79, i64 %i.afc
  %i.afe = load i8, ptr %i.afd, align 1, !range !12, !noalias !1011, !noundef !5
  %i.aff = trunc nuw i8 %i.afe to i1
  %not.358 = xor i1 %i.afa, true
  %i.afg = and i1 %not.358, %i.aff
  br i1 %i.afg, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

bb.id:                                            ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.afh = load i8, ptr %i.kd, align 1, !alias.scope !1012, !noundef !5
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr @79, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !range !12, !noalias !1012, !noundef !5
  %i.afl = trunc nuw i8 %i.afk to i1
  br i1 %i.kg, label %bb.ie, label %.split339

.split339:                                        ; preds = %bb.ie, %bb.id
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
  br label %.split339

.split341:                                        ; preds = %bb.hu
  %i.afs = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher21is_word_start_unicode17ha2bae867a3f36797E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.aft = trunc nuw i8 %i.afs to i1
  br i1 %i.aft, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split340:                                        ; preds = %bb.hu
  %i.afu = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher19is_word_end_unicode17hfb43da305037b9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.afv = trunc nuw i8 %i.afu to i1
  br i1 %i.afv, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split332:                                        ; preds = %bb.hu
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.afw = load i8, ptr %i.kd, align 1, !alias.scope !1013, !noundef !5
  %i.afx = zext i8 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr @79, i64 %i.afx
  %i.afz = load i8, ptr %i.afy, align 1, !range !12, !noalias !1013, !noundef !5
  %i.aga = trunc nuw i8 %i.afz to i1
  br i1 %i.aga, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i, label %.backedge367

bb.if:                                            ; preds = %bb.hu
  br i1 %i.kg, label %.split336, label %.backedge367

.split337:                                        ; preds = %bb.hu
  %i.agb = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher26is_word_start_half_unicode17h54b25ac579f92aebE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split331:                                        ; preds = %bb.hu
  %i.agd = call fastcc noundef i8 @_ZN14regex_automata4util4look11LookMatcher24is_word_end_half_unicode17hd32932a9815dce15E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.am, i64 noundef %i.ke)
  %i.age = trunc nuw i8 %i.agd to i1
  br i1 %i.age, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split333:                                        ; preds = %bb.hu
  %i.agf = load i8, ptr %i.kd, align 1, !alias.scope !1006, !noalias !1014, !noundef !5
  %i.agg = load i8, ptr %i.bt, align 16, !alias.scope !1005, !noalias !1015, !noundef !5
  %i.agh = icmp eq i8 %i.agf, %i.agg
  br i1 %i.agh, label %.backedge367, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i

.split335:                                        ; preds = %bb.hv
  %i.agi = load i8, ptr %i.kh, align 1, !alias.scope !1006, !noalias !1014, !noundef !5
  %i.agj = load i8, ptr %i.bt, align 16, !alias.scope !1005, !noalias !1015, !noundef !5
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

.backedge367:                                     ; preds = %.split2872, %bb.ij, %bb.in, %bb.hz, %bb.hy, %bb.hw, %bb.if, %bb.hx, %bb.hv, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204", %bb.ik, %.split328, %.split329, %.split330, %.split331, %.split332, %.split333, %.split334, %.split335, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188, %.split336, %.split337, %.split338, %.split339, %.split340, %.split341, %.split342, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194
  %.sroa.0.0.i28.i.be = phi i32 [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46 ], [ %i.aho, %bb.ik ], [ %i.agx, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204" ], [ %i.adv, %bb.hz ], [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194 ], [ %i.adv, %.split328 ], [ %i.adv, %.split329 ], [ %i.adv, %.split330 ], [ %i.adv, %.split331 ], [ %i.adv, %.split332 ], [ %i.adv, %.split333 ], [ %i.adv, %.split334 ], [ %i.adv, %.split335 ], [ %i.adv, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188 ], [ %i.adv, %.split336 ], [ %i.adv, %.split337 ], [ %i.adv, %.split338 ], [ %i.adv, %.split339 ], [ %i.adv, %.split340 ], [ %i.adv, %.split341 ], [ %i.adv, %.split342 ], [ %i.adv, %bb.hv ], [ %i.adv, %bb.hx ], [ %i.adv, %bb.if ], [ %i.adv, %bb.hw ], [ %i.adv, %bb.hy ], [ %i.ahh, %bb.in ], [ %i.ahh, %bb.ij ], [ %i.adv, %.split2872 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.0.0.i28.i.be, ptr %i.m, align 4, !noalias !1017
  %i.agr = zext i32 %.sroa.0.0.i28.i.be to i64    ; 3 uses
  %i.ags = load i64, ptr %i.cc, align 8, !alias.scope !1018, !noalias !993, !noundef !5 ; 2 uses
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
  br i1 %i.ahc, label %bb.ii, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204"

bb.ii:                                            ; preds = %bb.ih
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hdcd94b498a7541e6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1020
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit204": ; preds = %bb.ih, %bb.ii
  %i.ahd = load ptr, ptr %i.bm, align 8, !alias.scope !1019, !noalias !1020, !nonnull !5, !noundef !5
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
  %i.ahw = load ptr, ptr %i.bm, align 8, !alias.scope !1022, !noalias !1023, !nonnull !5, !noundef !5
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
  call void @llvm.assume(i1 %4)
  store i64 %i.kf, ptr %i.ahr, align 8, !alias.scope !990, !noalias !1021
  br label %.backedge367

bb.io:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17ha59b8aa0743de67cE.exit205"
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #22, !noalias !993
  unreachable

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM23epsilon_closure_explore17h9855dbf54da36f22E.exit32.i: ; preds = %bb.ic, %bb.hu, %bb.hz, %bb.hw, %_ZN14regex_automata4util4look11LookMatcher14matches_inline17h3cf8da5effc7e347E.exit46, %bb.ig, %.split328, %.split329, %.split330, %.split331, %.split332, %.split333, %.split334, %.split335, %_ZN14regex_automata4util4look11LookMatcher13is_word_ascii17hef9e29c2567442d9E.exit188, %.split336, %.split337, %.split338, %.split339, %.split340, %.split341, %.split342, %_ZN14regex_automata4util4look11LookMatcher19is_word_start_ascii17h56099b943c555d75E.exit194, %.split2872, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hca03e678e97ceecbE.exit175", %_ZN14regex_automata4util10sparse_set9SparseSet6insert17h12d8ae89b588d197E.exit33, %bb.ip
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
  %.old = icmp eq ptr %i.ko, %i.jz
  br i1 %.old, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit, label %.backedge1435

.backedge1435:                                    ; preds = %.backedge372, %bb.is
  %i.aid = load i32, ptr %i.ko, align 4, !noundef !5
  %i.aie = load i64, ptr %i.br, align 16, !noalias !1025, !noundef !5 ; 2 uses
  %i.aif = zext i32 %i.aid to i64                 ; 3 uses
  %i.aig = icmp ugt i64 %i.aie, %i.aif
  br i1 %i.aig, label %.lr.ph5003, label %.lr.ph1419._crit_edge

bb.is:                                            ; preds = %bb.iv, %bb.iu, %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !886
  call void @_ZN14regex_automata4util6search10PatternSet10try_insert17h694175b078817df0E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.aic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !886
  %i.aih = icmp ne ptr %i.ko, %i.jz
  %or.cond1426.not = select i1 %.sroa.0.0, i1 %i.aih, i1 false
  br i1 %or.cond1426.not, label %.backedge1435, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit

bb.it:                                            ; preds = %bb.ir
  br i1 %i.kb, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.aii = load i8, ptr %i.kd, align 1, !noundef !5
  %or.cond355 = icmp sgt i8 %i.aii, -65
  br i1 %or.cond355, label %bb.is, label %.backedge372

bb.iv:                                            ; preds = %bb.it
  br i1 %i.kc, label %bb.is, label %.backedge372

_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit: ; preds = %bb.is, %.backedge372, %bb.ca
  %i.aij = load i64, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %i.aik = load i64, ptr %i.cj, align 8, !noundef !5
  %i.ail = icmp eq i64 %i.aij, %i.aik
  %or.cond = select i1 %i.ail, i1 true, i1 %i.cm
  br i1 %or.cond, label %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM12start_config17h89a0c65ecd60c1b6E.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZN14regex_automata3nfa8thompson6pikevm6PikeVM17nexts_overlapping17hdcff15f63f0d3394E.exit
  %i.aim = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !1026, !noalias !5
  %i.ain = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !1027, !noalias !5
  store <2 x i64> %i.aim, ptr %i.aa, align 8, !alias.scope !1027, !noalias !5
  store <2 x i64> %i.ain, ptr %i.ad, align 8, !alias.scope !1026, !noalias !5
  %i.aio = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !1028, !noalias !5
  %i.aip = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !1029, !noalias !5
  store <2 x i64> %i.aio, ptr %i.bp, align 8, !alias.scope !1029, !noalias !5
  store <2 x i64> %i.aip, ptr %i.ce, align 8, !alias.scope !1028, !noalias !5
  %i.aiq = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !1030, !noalias !5
  %i.air = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !1031, !noalias !5
  store <2 x i64> %i.aiq, ptr %i.bo, align 8, !alias.scope !1031, !noalias !5
  store <2 x i64> %i.air, ptr %i.cd, align 8, !alias.scope !1030, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.ais = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !1033, !noalias !5
  %.sroa.02.0.copyload.i.i.i.6.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1034, !noalias !1032
  %i.ait = load <2 x i64>, ptr %i.ci, align 8, !alias.scope !1035, !noalias !5
  %i.aiu = load <2 x i64>, ptr %i.ca, align 8, !alias.scope !1036, !noalias !5
  store <2 x i64> %i.ais, ptr %i.ab, align 8, !alias.scope !1037, !noalias !5
  store <2 x i64> %i.aiu, ptr %i.cn, align 8, !alias.scope !1038, !noalias !5
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  %.sroa.0.0.copyload.i.i.i.11.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1039, !noalias !1040
  %i.aiv = load <2 x i64>, ptr %i.cg, align 8, !alias.scope !1041, !noalias !5
  %i.aiw = load <2 x i64>, ptr %i.bx, align 8, !alias.scope !1042, !noalias !5
  store <2 x i64> %i.ait, ptr %i.cb, align 8, !alias.scope !1043, !noalias !5
  store <2 x i64> %i.aiw, ptr %i.ch, align 8, !alias.scope !1044, !noalias !5
  store <2 x i64> %i.aiv, ptr %i.bw, align 8, !alias.scope !1045, !noalias !5
  store i64 %.sroa.0.0.copyload.i.i.i.11.i.i, ptr %i.af, align 8, !alias.scope !1040, !noalias !1039
  store i64 0, ptr %i.ae, align 8
  %.not.i55 = icmp ugt i64 %spec.select350, %i.aj
  %or.cond365 = select i1 %i.cq, i1 true, i1 %.not.i55
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
end_hunk_8

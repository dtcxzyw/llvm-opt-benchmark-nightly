Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.13?download=true
inline.NumInlined: 491
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs2_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_5EntryINtNtBd_3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDENtNtNtB1x_3dfa8minimize8StateSetE9or_insertB1x_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %1, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 8 uses
  %i.b = alloca [256 x i8], align 1               ; 8 uses
  %i.c = alloca [256 x i8], align 1               ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 33 uses
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  store i64 %5, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 11 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 5 uses
  store i64 %5, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 3 uses
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 33 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 54 uses
  %.not32 = icmp eq i64 %i.aj, -1
  br i1 %.not32, label %bb.d, label %bb.e, !prof !7

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i8, ptr %i.al, align 8, !range !10, !noundef !4 ; 2 uses
  %.not33 = icmp ne i8 %i.am, 2
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  %.sroa.0.0 = and i1 %.not33, %i.ao              ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %.val63 = load i32, ptr %3, align 8, !range !14, !noundef !4
  switch i32 %.val63, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.gy, %bb.gu, %bb.s, %bb.fk, %bb.fg, %bb.dg, %bb.dc, %bb.am, %bb.ai, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.aq = load i32, ptr %i.ap, align 16, !noundef !4
  br label %.lr.ph1641

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val64 = load i32, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = zext i32 %.val64 to i64                 ; 2 uses
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au
  %i.az = load i32, ptr %i.ay, align 4, !noundef !4
  br label %.lr.ph1641

bb.i:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.bb = load i32, ptr %i.ba, align 16, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 372
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !4
  %i.be = icmp eq i32 %i.bb, %i.bd
  br i1 %i.be, label %.lr.ph1641, label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 0, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit, %bb.ja, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread, %bb.q, %bb.j, %bb.c
  ret void

bb.k:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load i8, ptr %i.bf, align 8, !range !5, !noundef !4
  %.not35 = icmp eq i8 %i.bg, -1
  %. = select i1 %.not35, ptr @20, ptr %i.ak      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %., i64 24
  %i.bi = load i8, ptr %i.bh, align 8, !range !10, !noundef !4
  %.not36 = icmp eq i8 %i.bi, 2
  %spec.select = select i1 %.not36, ptr null, ptr %.
  br label %.lr.ph1641

.lr.ph1641:                                       ; preds = %bb.i, %bb.k, %bb.f, %bb.h
  %i.bj = phi i1 [ false, %bb.k ], [ true, %bb.i ], [ true, %bb.f ], [ true, %bb.h ] ; 2 uses
  %.sroa.5.1.i.ph255 = phi i32 [ %i.bb, %bb.k ], [ %i.bb, %bb.i ], [ %i.aq, %bb.f ], [ %i.az, %bb.h ]
  %.sroa.012.0 = phi ptr [ %spec.select, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.h ] ; 3 uses
  store i64 0, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.012.0, null
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %.not19.i202 = icmp eq i64 %i.aj, 0             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.cf = load i8, ptr %i.ce, align 8, !range !3
  %i.cg = trunc nuw i8 %i.cf to i1                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph1641, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit
  %i.cj = phi i64 [ 0, %.lr.ph1641 ], [ %i.ait, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 2 uses
  %.sroa.014.01640 = phi i64 [ %i.ac, %.lr.ph1641 ], [ %i.dh, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 4 uses
  %i.ck = load i64, ptr %i.w, align 8, !noundef !4
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %._crit_edge3159

bb.m:                                             ; preds = %bb.l
  %.not38 = icmp eq i64 %i.cj, 0
  %brmerge2 = or i1 %.sroa.0.0, %.not38
  %brmerge2.not = xor i1 %brmerge2, true
  %i.cm = icmp ugt i64 %.sroa.014.01640, %i.ac
  %or.cond4 = and i1 %i.bj, %i.cm
  %or.cond41 = or i1 %or.cond4, %brmerge2.not
  br i1 %or.cond41, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %._crit_edge3159, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.cn = load ptr, ptr %.sroa.012.0, align 8, !nonnull !4, !noundef !4
  %i.co = load ptr, ptr %i.bk, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !range !18, !invariant.load !4
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = and i64 %i.cr, -16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !invariant.load !4, !nonnull !4
  call void %i.cw(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noundef nonnull %i.cu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, i64 noundef %.sroa.014.01640, i64 noundef %i.ae)
  %i.cx = load i64, ptr %i.t, align 8, !range !6, !noundef !4
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.p, label %bb.q

._crit_edge3159:                                  ; preds = %bb.l, %bb.p, %bb.n
  %.sroa.014.1 = phi i64 [ %i.da, %bb.p ], [ %.sroa.014.01640, %bb.n ], [ %.sroa.014.01640, %bb.l ] ; 28 uses
  %.not39 = icmp eq i64 %i.cj, 0
  %brmerge = or i1 %.sroa.0.0, %.not39
  %brmerge.not = xor i1 %brmerge, true
  %i.cz = icmp ne i64 %.sroa.014.1, %i.ac
  %or.cond7.not = and i1 %i.bj, %i.cz
  %or.cond42 = or i1 %or.cond7.not, %brmerge.not
  br i1 %or.cond42, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %bb.gi

bb.p:                                             ; preds = %bb.o
  %i.da = load i64, ptr %i.bl, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %._crit_edge3159

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit179, %._crit_edge3159
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !953)
  %i.db = load i64, ptr %i.w, align 8, !alias.scope !953, !noalias !954, !noundef !4 ; 3 uses
  %i.dc = load i64, ptr %i.br, align 8, !alias.scope !953, !noalias !954, !noundef !4 ; 2 uses
  %.not.i69 = icmp ugt i64 %i.db, %i.dc
  br i1 %.not.i69, label %bb.r, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit, !prof !12

bb.r:                                             ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.db, i64 noundef %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !955
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit
  %i.dd = load ptr, ptr %i.bs, align 8, !alias.scope !953, !noalias !954, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.db ; 2 uses
  %i.df = icmp ult i64 %.sroa.014.1, %i.aj        ; 9 uses
  %i.dg = getelementptr i8, ptr %i.ah, i64 %.sroa.014.1 ; 26 uses
  %i.dh = add i64 %.sroa.014.1, 1                 ; 28 uses
  %i.di = add i64 %.sroa.014.1, 2                 ; 4 uses
  %.not.i32.i.i = icmp eq i64 %i.di, 0            ; 3 uses
  %i.dj = icmp ult i64 %i.dh, %i.aj               ; 24 uses
  %i.dk = getelementptr i8, ptr %i.ah, i64 %i.dh  ; 26 uses
  %i.dl = icmp eq i64 %i.dh, %i.aj                ; 9 uses
  %.not.i132 = icmp eq i64 %i.dh, 0               ; 18 uses
  br label %.outer

.outer:                                           ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %.sroa.06.0.i.ph = phi ptr [ %i.dn, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178 ], [ %i.dd, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit ] ; 2 uses
  %.sroa.3.0.i.ph = phi i32 [ %i.dy, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178 ], [ undef, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit ]
  %.sroa.0.0.i43.ph = phi i1 [ true, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178 ], [ false, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit ]
  %i.dm = icmp eq ptr %.sroa.06.0.i.ph, %i.de
  br i1 %i.dm, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit, label %.lr.ph1634

.lr.ph1634:                                       ; preds = %.outer, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
  %.sroa.06.0.i1633 = phi ptr [ %i.dn, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i ], [ %.sroa.06.0.i.ph, %.outer ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i1633, i64 4 ; 3 uses
  %i.do = load i32, ptr %.sroa.06.0.i1633, align 4, !noalias !956, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.dp = load i64, ptr %i.bt, align 16, !noalias !958, !noundef !4 ; 2 uses
  %i.dq = zext i32 %i.do to i64                   ; 7 uses
  %i.dr = icmp ugt i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph1634
  %i.ds = load ptr, ptr %i.bu, align 8, !noalias !959, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.dq ; 7 uses
  %i.du = load i32, ptr %i.dt, align 8, !range !16, !noalias !959, !noundef !4
  switch i32 %i.du, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
    i32 4, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
    i32 5, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
    i32 6, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
    i32 7, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
    i32 8, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i.thread
  ]

bb.t:                                             ; preds = %.lr.ph1634
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef %i.dp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !noalias !959
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dw = call noundef zeroext i1 @_RNvMs6_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_10Transition7matches(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj, i64 noundef %.sroa.014.1), !noalias !959
  br i1 %i.dw, label %bb.x, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i

bb.v:                                             ; preds = %bb.s
  br i1 %i.df, label %bb.co, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i

bb.w:                                             ; preds = %bb.s
  br i1 %i.df, label %bb.et, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i.thread: ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !959, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.dz = load i64, ptr %i.bw, align 8, !alias.scope !960, !noalias !956, !noundef !4
  %i.ea = mul i64 %i.dz, %i.dq                    ; 4 uses
  %i.eb = load i64, ptr %i.x, align 8, !alias.scope !960, !noalias !956, !noundef !4 ; 2 uses
  %i.ec = add i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = load i64, ptr %i.bx, align 8, !alias.scope !960, !noalias !956, !noundef !4 ; 2 uses
  %i.ee = icmp ult i64 %i.ec, %i.ea
  %.not.i176 = icmp ugt i64 %i.ec, %i.ed
  %or.cond.i177 = or i1 %i.ee, %.not.i176
  br i1 %or.cond.i177, label %bb.gh, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178, !prof !12

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.ef = load i64, ptr %i.bw, align 8, !alias.scope !961, !noalias !959, !noundef !4
  %i.eg = mul i64 %i.ef, %i.dq                    ; 4 uses
  %i.eh = load i64, ptr %i.x, align 8, !alias.scope !961, !noalias !959, !noundef !4 ; 5 uses
  %i.ei = add i64 %i.eg, %i.eh                    ; 3 uses
  %i.ej = load i64, ptr %i.bx, align 8, !alias.scope !961, !noalias !959, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.ei, %i.eg
  %.not.i70 = icmp ugt i64 %i.ei, %i.ej
  %or.cond.i71 = or i1 %i.ek, %.not.i70
  br i1 %or.cond.i71, label %bb.y, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit, !prof !12

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.eg, i64 noundef %i.ei, i64 noundef %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !962
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit: ; preds = %bb.x
  %i.el = load ptr, ptr %i.by, align 8, !alias.scope !961, !noalias !959, !nonnull !4, !noundef !4
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.eg ; 3 uses
  %i.en = load i32, ptr %i.dv, align 4, !noalias !959, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.eo = load i64, ptr %i.u, align 8, !alias.scope !965, !noalias !966, !noundef !4 ; 3 uses
  %i.ep = load i64, ptr %2, align 8, !range !15, !alias.scope !965, !noalias !966, !noundef !4
  %i.eq = icmp eq i64 %i.eo, %i.ep
  br i1 %i.eq, label %bb.z, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit

bb.z:                                             ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !966
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit, %bb.z
  %i.er = load ptr, ptr %i.bo, align 8, !alias.scope !965, !noalias !966, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eo ; 2 uses
  store i32 0, ptr %i.es, align 8, !noalias !967
  %.sroa.4228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store i32 %i.en, ptr %.sroa.4228.0..sroa_idx, align 4, !noalias !967
  %i.et = add i64 %i.eo, 1                        ; 3 uses
  store i64 %i.et, ptr %i.u, align 8, !alias.scope !965, !noalias !966
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1632

.lr.ph1632:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i
  %i.ev = phi i64 [ %.pr, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i ], [ %i.et, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit ] ; 2 uses
  %i.ew = add nsw i64 %i.ev, -1                   ; 3 uses
  store i64 %i.ew, ptr %i.u, align 8, !alias.scope !968, !noalias !969
  %i.ex = load i64, ptr %2, align 8, !range !15, !alias.scope !968, !noalias !969, !noundef !4
  %i.ey = icmp samesign ult i64 %i.ew, %i.ex
  call void @llvm.assume(i1 %i.ey)
  %i.ez = load ptr, ptr %i.bo, align 8, !alias.scope !968, !noalias !969, !nonnull !4, !noundef !4
  %i.fa = icmp samesign ult i64 %i.ev, 576460752303423489
  call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ew ; 3 uses
  %.sroa.04.0.copyload.i17.i.i = load i32, ptr %i.fb, align 8, !noalias !959
  %.sroa.45.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %.sroa.45.0.copyload.i19.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i18.i.i, align 4, !noalias !959 ; 4 uses
  %.sroa.56.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.sroa.56.0.copyload.i21.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i20.i.i, align 8, !noalias !959
  %i.fc = trunc i32 %.sroa.04.0.copyload.i17.i.i to i1
  br i1 %i.fc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph1632
  %i.fd = zext i32 %.sroa.45.0.copyload.i19.i.i to i64 ; 3 uses
  %i.fe = icmp samesign ugt i64 %i.eh, %i.fd
  br i1 %i.fe, label %bb.cm, label %bb.cn

bb.ab:                                            ; preds = %.lr.ph1632
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.45.0.copyload.i19.i.i, ptr %i.s, align 4, !noalias !971
  %i.ff = zext i32 %.sroa.45.0.copyload.i19.i.i to i64 ; 3 uses
  %i.fg = load i64, ptr %i.bz, align 8, !alias.scope !972, !noalias !973, !noundef !4 ; 2 uses
  %i.fh = icmp ugt i64 %i.fg, %i.ff
  br i1 %i.fh, label %.lr.ph1625, label %._crit_edge1626

.lr.ph1625:                                       ; preds = %bb.ab, %.backedge
  %i.fi = phi i64 [ %i.kg, %.backedge ], [ %i.ff, %bb.ab ] ; 5 uses
  %i.fj = phi i32 [ %.sroa.0.0.i.i.i.be, %.backedge ], [ %.sroa.45.0.copyload.i19.i.i, %bb.ab ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.fk = load ptr, ptr %i.ca, align 8, !alias.scope !975, !noalias !973, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !976, !noundef !4
  %i.fn = zext i32 %i.fm to i64                   ; 4 uses
  %i.fo = load i64, ptr %i.z, align 8, !alias.scope !975, !noalias !973, !noundef !4 ; 5 uses
  %i.fp = icmp ugt i64 %i.fo, %i.fn
  %.pre3158 = load i64, ptr %i.cb, align 8, !noalias !973 ; 5 uses
  br i1 %i.fp, label %bb.ac, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread

._crit_edge1626:                                  ; preds = %bb.ab, %.backedge
  %.lcssa692 = phi i64 [ %i.kg, %.backedge ], [ %i.ff, %bb.ab ]
  %.lcssa672 = phi i64 [ %i.kh, %.backedge ], [ %i.fg, %bb.ab ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa692, i64 noundef %.lcssa672, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !976
  unreachable

bb.ac:                                            ; preds = %.lr.ph1625
  %i.fq = icmp ugt i64 %.pre3158, %i.fn
  br i1 %i.fq, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fn, i64 noundef %.pre3158, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !976
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit: ; preds = %bb.ac
  %i.fr = load ptr, ptr %i.cc, align 8, !alias.scope !975, !noalias !973, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fn
  %i.ft = load i32, ptr %i.fs, align 4, !noalias !976, !noundef !4
  %i.fu = icmp eq i32 %i.ft, %i.fj
  br i1 %i.fu, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread: ; preds = %.lr.ph1625, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !977
  store i64 %i.fo, ptr %i.r, align 8, !noalias !977
  %i.fv = icmp ult i64 %.pre3158, 2305843009213693952
  call void @llvm.assume(i1 %i.fv), !noalias !973
  %i.fw = icmp ult i64 %i.fo, %.pre3158
  br i1 %i.fw, label %bb.af, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !977
  store i64 %.pre3158, ptr %i.q, align 8, !noalias !977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !977
  store ptr %i.r, ptr %i.p, align 8, !noalias !977
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !977
  %i.fx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.fx, align 8, !noalias !977
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !977
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.fy, align 8, !noalias !977
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
end_hunk_0
begin_hunk_1_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp:bb.a
_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit: ; preds = %bb.bl, %bb.bp
  %.sroa.0.2.i = phi i8 [ %i.il, %bb.bl ], [ %spec.select.i, %bb.bp ]
  %i.iv = trunc nuw i8 %.sroa.0.2.i to i1
  br i1 %i.iv, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.bq:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  br i1 %.not.i132, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br i1 %i.df, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.1, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !988
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.iw = load i8, ptr %i.dg, align 1, !alias.scope !988, !noundef !4
  %i.ix = zext i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr @9, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !range !3, !noalias !988, !noundef !4
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.dj, label %bb.bu, label %.split273

bb.bu:                                            ; preds = %bb.bt
  %i.jb = load i8, ptr %i.dk, align 1, !alias.scope !988, !noundef !4
  %i.jc = zext i8 %i.jb to i64
  %i.jd = getelementptr inbounds nuw i8, ptr @9, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !range !3, !noalias !988, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  %i.jg = xor i1 %i.jf, true
  br label %.split273

.split273:                                        ; preds = %bb.bu, %bb.bt
  %.sroa.02.0.i = phi i1 [ %i.jg, %bb.bu ], [ true, %bb.bt ]
  %spec.select.i88 = select i1 %i.ja, i1 %.sroa.02.0.i, i1 false
  br i1 %spec.select.i88, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

.split275:                                        ; preds = %bb.am
  %i.jh = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.ji = trunc nuw i8 %i.jh to i1
  br i1 %i.ji, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

.split274:                                        ; preds = %bb.am
  %i.jj = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.bv:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  br i1 %.not.i132, label %.backedge, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.df, label %.split266, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.1, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !989
  unreachable

.split266:                                        ; preds = %bb.bw
  %i.jl = load i8, ptr %i.dg, align 1, !alias.scope !989, !noundef !4
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @9, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !range !3, !noalias !989, !noundef !4
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i, label %.backedge

bb.by:                                            ; preds = %bb.am
  br i1 %i.dj, label %.split270, label %.backedge

.split271:                                        ; preds = %bb.am
  %i.jq = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

.split265:                                        ; preds = %bb.am
  %i.js = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.bz:                                            ; preds = %bb.an
  br i1 %i.df, label %.split267, label %bb.ca

.split267:                                        ; preds = %bb.bz
  %i.ju = load i8, ptr %i.dg, align 1, !alias.scope !982, !noalias !990, !noundef !4
  %i.jv = load i8, ptr %i.bv, align 16, !alias.scope !981, !noalias !991, !noundef !4
  %i.jw = icmp eq i8 %i.ju, %i.jv
  br i1 %i.jw, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.1, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !992
  unreachable

bb.cb:                                            ; preds = %bb.ao
  br i1 %i.dj, label %.split269, label %bb.cc

.split269:                                        ; preds = %bb.cb
  %i.jx = load i8, ptr %i.dk, align 1, !alias.scope !982, !noalias !990, !noundef !4
  %i.jy = load i8, ptr %i.bv, align 16, !alias.scope !981, !noalias !991, !noundef !4
  %i.jz = icmp eq i8 %i.jx, %i.jy
  br i1 %i.jz, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !992
  unreachable

.split270:                                        ; preds = %bb.by
  %i.ka = load i8, ptr %i.dk, align 1, !alias.scope !982, !noalias !990, !noundef !4
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr @9, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !range !3, !noalias !993, !noundef !4
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i, label %.backedge

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i.i: ; preds = %bb.bb
  %i.kf = trunc nuw i8 %i.hj to i1
  br i1 %i.kf, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

.backedge:                                        ; preds = %.thread3281..split262_crit_edge, %.split3280, %bb.cg, %bb.ck, %bb.aw, %bb.au, %bb.ar, %bb.ap, %bb.an, %bb.bv, %bb.by, %bb.at, %bb.ay, %bb.ao, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit92, %bb.ch, %.split, %.split262, %.split263, %.split264, %.split265, %.split266, %.split267, %.split268, %.split269, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit84, %.split270, %.split271, %.split272, %.split273, %.split274, %.split275, %.split276, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit
  %.sroa.0.0.i.i.i.be = phi i32 [ %i.ha, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i.i ], [ %i.ld, %bb.ch ], [ %i.km, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit92 ], [ %i.ha, %bb.aw ], [ %i.ha, %.split ], [ %i.ha, %.split262 ], [ %i.ha, %.split263 ], [ %i.ha, %.split264 ], [ %i.ha, %.split265 ], [ %i.ha, %.split266 ], [ %i.ha, %.split267 ], [ %i.ha, %.split268 ], [ %i.ha, %.split269 ], [ %i.ha, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit84 ], [ %i.ha, %.split270 ], [ %i.ha, %.split271 ], [ %i.ha, %.split272 ], [ %i.ha, %.split273 ], [ %i.ha, %.split274 ], [ %i.ha, %.split275 ], [ %i.ha, %.split276 ], [ %i.ha, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit ], [ %i.ha, %bb.ao ], [ %i.ha, %bb.ay ], [ %i.ha, %bb.at ], [ %i.ha, %bb.by ], [ %i.ha, %bb.bv ], [ %i.ha, %bb.an ], [ %i.ha, %bb.ap ], [ %i.ha, %bb.ar ], [ %i.ha, %bb.au ], [ %i.kw, %bb.ck ], [ %i.kw, %bb.cg ], [ %i.ha, %.split3280 ], [ %i.ha, %.thread3281..split262_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.0.0.i.i.i.be, ptr %i.s, align 4, !noalias !994
  %i.kg = zext i32 %.sroa.0.0.i.i.i.be to i64     ; 3 uses
  %i.kh = load i64, ptr %i.bz, align 8, !alias.scope !995, !noalias !973, !noundef !4 ; 2 uses
  %i.ki = icmp ugt i64 %i.kh, %i.kg
  br i1 %i.ki, label %.lr.ph1625, label %._crit_edge1626

bb.cd:                                            ; preds = %bb.ai
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !noalias !973, !noundef !4 ; 2 uses
  %.not10.i.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not10.i.i.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i, label %bb.ch

bb.ce:                                            ; preds = %bb.ai
  %i.kl = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !noalias !973, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !noalias !973, !noundef !4
  %i.kp = load i64, ptr %i.u, align 8, !alias.scope !996, !noalias !997, !noundef !4 ; 3 uses
  %i.kq = load i64, ptr %2, align 8, !range !15, !alias.scope !996, !noalias !997, !noundef !4
  %i.kr = icmp eq i64 %i.kp, %i.kq
  br i1 %i.kr, label %bb.cf, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit92

bb.cf:                                            ; preds = %bb.ce
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !997
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit92

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit92: ; preds = %bb.ce, %bb.cf
  %i.ks = load ptr, ptr %i.bo, align 8, !alias.scope !996, !noalias !997, !nonnull !4, !noundef !4
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kp ; 2 uses
  store i32 0, ptr %i.kt, align 8, !noalias !973
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store i32 %i.ko, ptr %.sroa.4231.0..sroa_idx, align 4, !noalias !973
  %i.ku = add i64 %i.kp, 1
  store i64 %i.ku, ptr %i.u, align 8, !alias.scope !996, !noalias !997
  br label %.backedge

bb.cg:                                            ; preds = %bb.ai
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !noalias !973, !noundef !4 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.ky = load i32, ptr %i.kx, align 8, !noalias !973, !noundef !4 ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = icmp samesign ugt i64 %i.eh, %i.kz
  br i1 %i.la, label %bb.ci, label %.backedge

bb.ch:                                            ; preds = %bb.cd
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !973, !nonnull !4, !noundef !4 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !noalias !973, !noundef !4
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lf = getelementptr [4 x i8], ptr %i.lc, i64 %i.kk
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.le, ptr noundef %i.lf), !noalias !973
  br label %.backedge

bb.ci:                                            ; preds = %bb.cg
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.kz ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !970, !noalias !998, !noundef !4
  %i.li = load i64, ptr %i.u, align 8, !alias.scope !999, !noalias !1000, !noundef !4 ; 3 uses
  %i.lj = load i64, ptr %2, align 8, !range !15, !alias.scope !999, !noalias !1000, !noundef !4
  %i.lk = icmp eq i64 %i.li, %i.lj
  br i1 %i.lk, label %bb.cj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit93

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1000
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit93

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit93: ; preds = %bb.ci, %bb.cj
  %i.ll = load ptr, ptr %i.bo, align 8, !alias.scope !999, !noalias !1000, !nonnull !4, !noundef !4
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.li ; 3 uses
  store i32 1, ptr %i.lm, align 8, !noalias !973
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  store i32 %i.ky, ptr %.sroa.4234.0..sroa_idx, align 4, !noalias !973
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.lh, ptr %.sroa.5235.0..sroa_idx, align 8, !noalias !973
  %i.ln = add i64 %i.li, 1
  store i64 %i.ln, ptr %i.u, align 8, !alias.scope !999, !noalias !1000
  br i1 %.not.i32.i.i, label %bb.cl, label %bb.ck, !prof !7

bb.ck:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit93
  store i64 %i.di, ptr %i.lg, align 8, !alias.scope !970, !noalias !998
  br label %.backedge

bb.cl:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit93
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !973
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i: ; preds = %.thread3281..split262_crit_edge, %.thread3281, %bb.bq, %bb.bj, %bb.aw, %bb.ar, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i.i, %bb.cd, %.split, %.split262, %.split263, %.split264, %.split265, %.split266, %.split267, %.split268, %.split269, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit84, %.split270, %.split271, %.split272, %.split273, %.split274, %.split275, %.split276, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit, %.split3280, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit75, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit, %bb.cm
  %.pr = load i64, ptr %i.u, align 8, !alias.scope !968, !noalias !969 ; 2 uses
  %i.lo = icmp eq i64 %.pr, 0
  br i1 %i.lo, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1632

bb.cm:                                            ; preds = %bb.aa
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fd
  store i64 %.sroa.56.0.copyload.i21.i.i, ptr %i.lp, align 8, !alias.scope !964, !noalias !1001
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i

bb.cn:                                            ; preds = %bb.aa
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fd, i64 noundef range(i64 0, 1152921504606846976) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !959
  unreachable

bb.co:                                            ; preds = %bb.v
  %i.lq = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.lr = load i8, ptr %i.dg, align 1, !noalias !959, !noundef !4 ; 2 uses
  %.val65 = load ptr, ptr %i.lq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ls = getelementptr i8, ptr %i.dt, i64 16
  %.val66 = load i64, ptr %i.ls, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %.val66, 3
  %i.lt = getelementptr inbounds nuw i8, ptr %.val65, i64 %.idx
  %i.lu = icmp eq i64 %.val66, 0
  br i1 %i.lu, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph5842

bb.cp:                                            ; preds = %bb.cq
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i945840, i64 8 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, %i.lt
  br i1 %i.lw, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph5842

.lr.ph5842:                                       ; preds = %bb.co, %bb.cp
  %.sroa.01.0.i945840 = phi ptr [ %i.lv, %bb.cp ], [ %.val65, %bb.co ] ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i945840, i64 4
  %i.ly = load i8, ptr %i.lx, align 4, !noundef !4
  %i.lz = icmp ugt i8 %i.ly, %i.lr
  br i1 %i.lz, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph5842
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i945840, i64 5
  %i.mb = load i8, ptr %i.ma, align 1, !noundef !4
  %.not.i95 = icmp ugt i8 %i.lr, %i.mb
  br i1 %.not.i95, label %bb.cp, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mc = load i32, ptr %.sroa.01.0.i945840, align 4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.md = load i64, ptr %i.bw, align 8, !alias.scope !1002, !noalias !959, !noundef !4
  %i.me = mul i64 %i.md, %i.dq                    ; 4 uses
  %i.mf = load i64, ptr %i.x, align 8, !alias.scope !1002, !noalias !959, !noundef !4 ; 5 uses
  %i.mg = add i64 %i.me, %i.mf                    ; 3 uses
  %i.mh = load i64, ptr %i.bx, align 8, !alias.scope !1002, !noalias !959, !noundef !4 ; 2 uses
  %i.mi = icmp ult i64 %i.mg, %i.me
  %.not.i98 = icmp ugt i64 %i.mg, %i.mh
  %or.cond.i99 = or i1 %i.mi, %.not.i98
  br i1 %or.cond.i99, label %bb.cs, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit100, !prof !12

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.me, i64 noundef %i.mg, i64 noundef %i.mh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1003
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit100: ; preds = %bb.cr
  %i.mj = load ptr, ptr %i.by, align 8, !alias.scope !1002, !noalias !959, !nonnull !4, !noundef !4
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.me ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ml = load i64, ptr %i.u, align 8, !alias.scope !1006, !noalias !1007, !noundef !4 ; 3 uses
  %i.mm = load i64, ptr %2, align 8, !range !15, !alias.scope !1006, !noalias !1007, !noundef !4
  %i.mn = icmp eq i64 %i.ml, %i.mm
  br i1 %i.mn, label %bb.ct, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101

bb.ct:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit100
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1007
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit100, %bb.ct
  %i.mo = load ptr, ptr %i.bo, align 8, !alias.scope !1006, !noalias !1007, !nonnull !4, !noundef !4
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.mo, i64 %i.ml ; 2 uses
  store i32 0, ptr %i.mp, align 8, !noalias !1008
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store i32 %i.mc, ptr %.sroa.4225.0..sroa_idx, align 4, !noalias !1008
  %i.mq = add i64 %i.ml, 1                        ; 3 uses
  store i64 %i.mq, ptr %i.u, align 8, !alias.scope !1006, !noalias !1007
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1622

.lr.ph1622:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i
  %i.ms = phi i64 [ %.pr279, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i ], [ %i.mq, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101 ] ; 2 uses
  %i.mt = add nsw i64 %i.ms, -1                   ; 3 uses
  store i64 %i.mt, ptr %i.u, align 8, !alias.scope !1009, !noalias !1010
  %i.mu = load i64, ptr %2, align 8, !range !15, !alias.scope !1009, !noalias !1010, !noundef !4
  %i.mv = icmp samesign ult i64 %i.mt, %i.mu
  call void @llvm.assume(i1 %i.mv)
  %i.mw = load ptr, ptr %i.bo, align 8, !alias.scope !1009, !noalias !1010, !nonnull !4, !noundef !4
  %i.mx = icmp samesign ult i64 %i.ms, 576460752303423489
  call void @llvm.assume(i1 %i.mx)
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.mw, i64 %i.mt ; 3 uses
  %.sroa.04.0.copyload.i11.i.i = load i32, ptr %i.my, align 8, !noalias !959
  %.sroa.45.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %.sroa.45.0.copyload.i13.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i12.i.i, align 4, !noalias !959 ; 4 uses
  %.sroa.56.0..sroa_idx.i14.i.i = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %.sroa.56.0.copyload.i15.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i14.i.i, align 8, !noalias !959
  %i.mz = trunc i32 %.sroa.04.0.copyload.i11.i.i to i1
  br i1 %i.mz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.lr.ph1622
  %i.na = zext i32 %.sroa.45.0.copyload.i13.i.i to i64 ; 3 uses
  %i.nb = icmp samesign ugt i64 %i.mf, %i.na
  br i1 %i.nb, label %bb.er, label %bb.es

bb.cv:                                            ; preds = %.lr.ph1622
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %.sroa.45.0.copyload.i13.i.i, ptr %i.o, align 4, !noalias !1012
  %i.nc = zext i32 %.sroa.45.0.copyload.i13.i.i to i64 ; 3 uses
  %i.nd = load i64, ptr %i.bz, align 8, !alias.scope !1013, !noalias !1014, !noundef !4 ; 2 uses
  %i.ne = icmp ugt i64 %i.nd, %i.nc
  br i1 %i.ne, label %.lr.ph1615, label %._crit_edge1616

.lr.ph1615:                                       ; preds = %bb.cv, %.backedge367
  %i.nf = phi i64 [ %i.sd, %.backedge367 ], [ %i.nc, %bb.cv ] ; 5 uses
  %i.ng = phi i32 [ %.sroa.0.0.i23.i.i.be, %.backedge367 ], [ %.sroa.45.0.copyload.i13.i.i, %bb.cv ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  %i.nh = load ptr, ptr %i.ca, align 8, !alias.scope !1016, !noalias !1014, !nonnull !4, !noundef !4
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nf
  %i.nj = load i32, ptr %i.ni, align 4, !noalias !1017, !noundef !4
  %i.nk = zext i32 %i.nj to i64                   ; 4 uses
  %i.nl = load i64, ptr %i.z, align 8, !alias.scope !1016, !noalias !1014, !noundef !4 ; 5 uses
  %i.nm = icmp ugt i64 %i.nl, %i.nk
  %.pre3157 = load i64, ptr %i.cb, align 8, !noalias !1014 ; 5 uses
  br i1 %i.nm, label %bb.cw, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103.thread

._crit_edge1616:                                  ; preds = %bb.cv, %.backedge367
  %.lcssa605 = phi i64 [ %i.sd, %.backedge367 ], [ %i.nc, %bb.cv ]
  %.lcssa592 = phi i64 [ %i.se, %.backedge367 ], [ %i.nd, %bb.cv ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa605, i64 noundef %.lcssa592, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1017
  unreachable

bb.cw:                                            ; preds = %.lr.ph1615
  %i.nn = icmp ugt i64 %.pre3157, %i.nk
  br i1 %i.nn, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nk, i64 noundef %.pre3157, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1017
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103: ; preds = %bb.cw
  %i.no = load ptr, ptr %i.cc, align 8, !alias.scope !1016, !noalias !1014, !nonnull !4, !noundef !4
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.nk
  %i.nq = load i32, ptr %i.np, align 4, !noalias !1017, !noundef !4
  %i.nr = icmp eq i32 %i.nq, %i.ng
  br i1 %i.nr, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit52, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103.thread: ; preds = %.lr.ph1615, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1018
  store i64 %i.nl, ptr %i.n, align 8, !noalias !1018
  %i.ns = icmp ult i64 %.pre3157, 2305843009213693952
  call void @llvm.assume(i1 %i.ns), !noalias !1014
  %i.nt = icmp ult i64 %i.nl, %.pre3157
  br i1 %i.nt, label %bb.cz, label %bb.cy, !prof !9

bb.cy:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1018
  store i64 %.pre3157, ptr %i.m, align 8, !noalias !1018
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1018
  store ptr %i.n, ptr %i.l, align 8, !noalias !1018
  %.sroa.43.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i48, align 8, !noalias !1018
  %i.nu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.nu, align 8, !noalias !1018
  %.sroa.47.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i49, align 8, !noalias !1018
  %i.nv = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.o, ptr %i.nv, align 8, !noalias !1018
  %.sroa.411.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i50, align 8, !noalias !1018
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1014
  unreachable

bb.cz:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit103.thread
  %i.nw = and i64 %i.nl, 4294967295
  %i.nx = load ptr, ptr %i.cc, align 8, !alias.scope !1015, !noalias !1014, !nonnull !4, !noundef !4
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.nw
  store i32 %i.ng, ptr %i.ny, align 4, !noalias !1014
  %i.nz = zext i32 %i.ng to i64                   ; 3 uses
  %i.oa = load i64, ptr %i.bz, align 8, !alias.scope !1015, !noalias !1014, !noundef !4 ; 2 uses
  %i.ob = icmp ugt i64 %i.oa, %i.nz
  br i1 %i.ob, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.nz, i64 noundef %i.oa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1014
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp:bb.a
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr @9, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !range !3, !noalias !1028, !noundef !4
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.dj, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qo = load i8, ptr %i.dk, align 1, !alias.scope !1028, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, ptr noundef nonnull align 1 dereferenceable(256) @9, i64 256, i1 false), !noalias !1028
  %i.qp = zext i8 %i.qo to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qp
  %i.qr = load i8, ptr %i.qq, align 1, !range !3, !noalias !1028, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1028
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.sroa.0.1.i121 = phi i8 [ %i.qr, %bb.dz ], [ 0, %bb.dy ]
  %spec.select.i122 = select i1 %i.qn, i8 0, i8 %.sroa.0.1.i121
  br label %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit125

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit125: ; preds = %bb.dx, %bb.ea
  %.sroa.0.2.i123 = phi i8 [ %i.qi, %bb.dx ], [ %spec.select.i122, %bb.ea ]
  %i.qs = trunc nuw i8 %.sroa.0.2.i123 to i1
  br i1 %i.qs, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

bb.eb:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  br i1 %.not.i132, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qt = load i8, ptr %i.dg, align 1, !alias.scope !1029, !noundef !4
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw i8, ptr @9, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !range !3, !noalias !1029, !noundef !4
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.dj, label %bb.ed, label %.split298

bb.ed:                                            ; preds = %bb.ec
  %i.qy = load i8, ptr %i.dk, align 1, !alias.scope !1029, !noundef !4
  %i.qz = zext i8 %i.qy to i64
  %i.ra = getelementptr inbounds nuw i8, ptr @9, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !range !3, !noalias !1029, !noundef !4
  %i.rc = trunc nuw i8 %i.rb to i1
  %i.rd = xor i1 %i.rc, true
  br label %.split298

.split298:                                        ; preds = %bb.ed, %bb.ec
  %.sroa.02.0.i127 = phi i1 [ %i.rd, %bb.ed ], [ true, %bb.ec ]
  %spec.select.i128 = select i1 %i.qx, i1 %.sroa.02.0.i127, i1 false
  br i1 %spec.select.i128, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

.split300:                                        ; preds = %bb.dg
  %i.re = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.rf = trunc nuw i8 %i.re to i1
  br i1 %i.rf, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

.split299:                                        ; preds = %bb.dg
  %i.rg = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

bb.ee:                                            ; preds = %bb.dg
  call void @llvm.experimental.noalias.scope.decl(metadata !1030)
  br i1 %.not.i132, label %.backedge367, label %.split291

.split291:                                        ; preds = %bb.ee
  %i.ri = load i8, ptr %i.dg, align 1, !alias.scope !1030, !noundef !4
  %i.rj = zext i8 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr @9, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !range !3, !noalias !1030, !noundef !4
  %i.rm = trunc nuw i8 %i.rl to i1
  br i1 %i.rm, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i, label %.backedge367

bb.ef:                                            ; preds = %bb.dg
  br i1 %i.dj, label %.split295, label %.backedge367

.split296:                                        ; preds = %bb.dg
  %i.rn = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.ro = trunc nuw i8 %i.rn to i1
  br i1 %i.ro, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

.split290:                                        ; preds = %bb.dg
  %i.rp = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

.split292:                                        ; preds = %bb.dh
  %i.rr = load i8, ptr %i.dg, align 1, !alias.scope !1023, !noalias !1031, !noundef !4
  %i.rs = load i8, ptr %i.bv, align 16, !alias.scope !1022, !noalias !1032, !noundef !4
  %i.rt = icmp eq i8 %i.rr, %i.rs
  br i1 %i.rt, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

bb.eg:                                            ; preds = %bb.di
  br i1 %i.dj, label %.split294, label %bb.eh

.split294:                                        ; preds = %bb.eg
  %i.ru = load i8, ptr %i.dk, align 1, !alias.scope !1023, !noalias !1031, !noundef !4
  %i.rv = load i8, ptr %i.bv, align 16, !alias.scope !1022, !noalias !1032, !noundef !4
  %i.rw = icmp eq i8 %i.ru, %i.rv
  br i1 %i.rw, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

bb.eh:                                            ; preds = %bb.eg
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dh, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !1033
  unreachable

.split295:                                        ; preds = %bb.ef
  %i.rx = load i8, ptr %i.dk, align 1, !alias.scope !1023, !noalias !1031, !noundef !4
  %i.ry = zext i8 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr @9, i64 %i.ry
  %i.sa = load i8, ptr %i.rz, align 1, !range !3, !noalias !1034, !noundef !4
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i, label %.backedge367

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i.i: ; preds = %bb.ds
  %i.sc = trunc nuw i8 %i.pg to i1
  br i1 %i.sc, label %.backedge367, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

.backedge367:                                     ; preds = %.thread3287..split287_crit_edge, %.split3286, %bb.el, %bb.ep, %bb.do, %bb.dm, %bb.dk, %bb.dj, %bb.dh, %bb.ee, %bb.ef, %bb.dl, %bb.dq, %bb.di, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit135, %bb.em, %.split286, %.split287, %.split288, %.split289, %.split290, %.split291, %.split292, %.split293, %.split294, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit119, %.split295, %.split296, %.split297, %.split298, %.split299, %.split300, %.split301, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit125
  %.sroa.0.0.i23.i.i.be = phi i32 [ %i.ox, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i.i ], [ %i.ta, %bb.em ], [ %i.sj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit135 ], [ %i.ox, %bb.do ], [ %i.ox, %.split286 ], [ %i.ox, %.split287 ], [ %i.ox, %.split288 ], [ %i.ox, %.split289 ], [ %i.ox, %.split290 ], [ %i.ox, %.split291 ], [ %i.ox, %.split292 ], [ %i.ox, %.split293 ], [ %i.ox, %.split294 ], [ %i.ox, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit119 ], [ %i.ox, %.split295 ], [ %i.ox, %.split296 ], [ %i.ox, %.split297 ], [ %i.ox, %.split298 ], [ %i.ox, %.split299 ], [ %i.ox, %.split300 ], [ %i.ox, %.split301 ], [ %i.ox, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit125 ], [ %i.ox, %bb.di ], [ %i.ox, %bb.dq ], [ %i.ox, %bb.dl ], [ %i.ox, %bb.ef ], [ %i.ox, %bb.ee ], [ %i.ox, %bb.dh ], [ %i.ox, %bb.dj ], [ %i.ox, %bb.dk ], [ %i.ox, %bb.dm ], [ %i.st, %bb.ep ], [ %i.st, %bb.el ], [ %i.ox, %.split3286 ], [ %i.ox, %.thread3287..split287_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %.sroa.0.0.i23.i.i.be, ptr %i.o, align 4, !noalias !1035
  %i.sd = zext i32 %.sroa.0.0.i23.i.i.be to i64   ; 3 uses
  %i.se = load i64, ptr %i.bz, align 8, !alias.scope !1036, !noalias !1014, !noundef !4 ; 2 uses
  %i.sf = icmp ugt i64 %i.se, %i.sd
  br i1 %i.sf, label %.lr.ph1615, label %._crit_edge1616

bb.ei:                                            ; preds = %bb.dc
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.sh = load i64, ptr %i.sg, align 8, !noalias !1014, !noundef !4 ; 2 uses
  %.not10.i25.i.i = icmp eq i64 %i.sh, 0
  br i1 %.not10.i25.i.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i, label %bb.em

bb.ej:                                            ; preds = %bb.dc
  %i.si = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.sj = load i32, ptr %i.si, align 4, !noalias !1014, !noundef !4
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.sl = load i32, ptr %i.sk, align 8, !noalias !1014, !noundef !4
  %i.sm = load i64, ptr %i.u, align 8, !alias.scope !1037, !noalias !1038, !noundef !4 ; 3 uses
  %i.sn = load i64, ptr %2, align 8, !range !15, !alias.scope !1037, !noalias !1038, !noundef !4
  %i.so = icmp eq i64 %i.sm, %i.sn
  br i1 %i.so, label %bb.ek, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit135

bb.ek:                                            ; preds = %bb.ej
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1038
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit135

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit135: ; preds = %bb.ej, %bb.ek
  %i.sp = load ptr, ptr %i.bo, align 8, !alias.scope !1037, !noalias !1038, !nonnull !4, !noundef !4
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sp, i64 %i.sm ; 2 uses
  store i32 0, ptr %i.sq, align 8, !noalias !1014
  %.sroa.4237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  store i32 %i.sl, ptr %.sroa.4237.0..sroa_idx, align 4, !noalias !1014
  %i.sr = add i64 %i.sm, 1
  store i64 %i.sr, ptr %i.u, align 8, !alias.scope !1037, !noalias !1038
  br label %.backedge367

bb.el:                                            ; preds = %bb.dc
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !noalias !1014, !noundef !4 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.sv = load i32, ptr %i.su, align 8, !noalias !1014, !noundef !4 ; 2 uses
  %i.sw = zext i32 %i.sv to i64                   ; 2 uses
  %i.sx = icmp samesign ugt i64 %i.mf, %i.sw
  br i1 %i.sx, label %bb.en, label %.backedge367

bb.em:                                            ; preds = %bb.ei
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1014, !nonnull !4, !noundef !4 ; 3 uses
  %i.ta = load i32, ptr %i.sz, align 4, !noalias !1014, !noundef !4
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.tc = getelementptr [4 x i8], ptr %i.sz, i64 %i.sh
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.tb, ptr noundef %i.tc), !noalias !1014
  br label %.backedge367

bb.en:                                            ; preds = %bb.el
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.sw ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !1011, !noalias !1039, !noundef !4
  %i.tf = load i64, ptr %i.u, align 8, !alias.scope !1040, !noalias !1041, !noundef !4 ; 3 uses
  %i.tg = load i64, ptr %2, align 8, !range !15, !alias.scope !1040, !noalias !1041, !noundef !4
  %i.th = icmp eq i64 %i.tf, %i.tg
  br i1 %i.th, label %bb.eo, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit136

bb.eo:                                            ; preds = %bb.en
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1041
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit136

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit136: ; preds = %bb.en, %bb.eo
  %i.ti = load ptr, ptr %i.bo, align 8, !alias.scope !1040, !noalias !1041, !nonnull !4, !noundef !4
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.ti, i64 %i.tf ; 3 uses
  store i32 1, ptr %i.tj, align 8, !noalias !1014
  %.sroa.4240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tj, i64 4
  store i32 %i.sv, ptr %.sroa.4240.0..sroa_idx, align 4, !noalias !1014
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.te, ptr %.sroa.5241.0..sroa_idx, align 8, !noalias !1014
  %i.tk = add i64 %i.tf, 1
  store i64 %i.tk, ptr %i.u, align 8, !alias.scope !1040, !noalias !1041
  br i1 %.not.i32.i.i, label %bb.eq, label %bb.ep, !prof !7

bb.ep:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit136
  store i64 %i.di, ptr %i.td, align 8, !alias.scope !1011, !noalias !1039
  br label %.backedge367

bb.eq:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit136
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1014
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i: ; preds = %.thread3287..split287_crit_edge, %.thread3287, %bb.eb, %bb.do, %bb.dk, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i.i, %bb.ei, %.split286, %.split287, %.split288, %.split289, %.split290, %.split291, %.split292, %.split293, %.split294, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit119, %.split295, %.split296, %.split297, %.split298, %.split299, %.split300, %.split301, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit125, %.split3286, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit106, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit52, %bb.er
  %.pr279 = load i64, ptr %i.u, align 8, !alias.scope !1009, !noalias !1010 ; 2 uses
  %i.tl = icmp eq i64 %.pr279, 0
  br i1 %i.tl, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1622

bb.er:                                            ; preds = %bb.cu
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %i.na
  store i64 %.sroa.56.0.copyload.i15.i.i, ptr %i.tm, align 8, !alias.scope !1005, !noalias !1042
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i

bb.es:                                            ; preds = %bb.cu
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.na, i64 noundef range(i64 0, 1152921504606846976) %i.mf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !959
  unreachable

bb.et:                                            ; preds = %bb.w
  %i.tn = load i8, ptr %i.dg, align 1, !noalias !959, !noundef !4
  %i.to = zext i8 %i.tn to i64                    ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.tq = load i64, ptr %i.tp, align 8, !noalias !959, !noundef !4 ; 2 uses
  %i.tr = icmp ugt i64 %i.tq, %i.to
  br i1 %i.tr, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ts = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !noalias !959, !nonnull !4, !noundef !4
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %i.to
  %i.tv = load i32, ptr %i.tu, align 4, !noalias !959, !noundef !4 ; 2 uses
  %i.tw = icmp eq i32 %i.tv, 0
  br i1 %i.tw, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %bb.ew

bb.ev:                                            ; preds = %bb.et
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.to, i64 noundef %i.tq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !959
  unreachable

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.tx = load i64, ptr %i.bw, align 8, !alias.scope !1043, !noalias !959, !noundef !4
  %i.ty = mul i64 %i.tx, %i.dq                    ; 4 uses
  %i.tz = load i64, ptr %i.x, align 8, !alias.scope !1043, !noalias !959, !noundef !4 ; 5 uses
  %i.ua = add i64 %i.ty, %i.tz                    ; 3 uses
  %i.ub = load i64, ptr %i.bx, align 8, !alias.scope !1043, !noalias !959, !noundef !4 ; 2 uses
  %i.uc = icmp ult i64 %i.ua, %i.ty
  %.not.i137 = icmp ugt i64 %i.ua, %i.ub
  %or.cond.i138 = or i1 %i.uc, %.not.i137
  br i1 %or.cond.i138, label %bb.ex, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit139, !prof !12

bb.ex:                                            ; preds = %bb.ew
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ty, i64 noundef %i.ua, i64 noundef %i.ub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1044
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit139: ; preds = %bb.ew
  %i.ud = load ptr, ptr %i.by, align 8, !alias.scope !1043, !noalias !959, !nonnull !4, !noundef !4
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %i.ty ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  call void @llvm.experimental.noalias.scope.decl(metadata !1046)
  %i.uf = load i64, ptr %i.u, align 8, !alias.scope !1047, !noalias !1048, !noundef !4 ; 3 uses
  %i.ug = load i64, ptr %2, align 8, !range !15, !alias.scope !1047, !noalias !1048, !noundef !4
  %i.uh = icmp eq i64 %i.uf, %i.ug
  br i1 %i.uh, label %bb.ey, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140

bb.ey:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit139
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1048
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit139, %bb.ey
  %i.ui = load ptr, ptr %i.bo, align 8, !alias.scope !1047, !noalias !1048, !nonnull !4, !noundef !4
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %i.ui, i64 %i.uf ; 2 uses
  store i32 0, ptr %i.uj, align 8, !noalias !1049
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  store i32 %i.tv, ptr %.sroa.4222.0..sroa_idx, align 4, !noalias !1049
  %i.uk = add i64 %i.uf, 1                        ; 3 uses
  store i64 %i.uk, ptr %i.u, align 8, !alias.scope !1047, !noalias !1048
  %i.ul = icmp eq i64 %i.uk, 0
  br i1 %i.ul, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1612

.lr.ph1612:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i
  %i.um = phi i64 [ %.pr302, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i ], [ %i.uk, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140 ] ; 2 uses
  %i.un = add nsw i64 %i.um, -1                   ; 3 uses
  store i64 %i.un, ptr %i.u, align 8, !alias.scope !1050, !noalias !1051
  %i.uo = load i64, ptr %2, align 8, !range !15, !alias.scope !1050, !noalias !1051, !noundef !4
  %i.up = icmp samesign ult i64 %i.un, %i.uo
  call void @llvm.assume(i1 %i.up)
  %i.uq = load ptr, ptr %i.bo, align 8, !alias.scope !1050, !noalias !1051, !nonnull !4, !noundef !4
  %i.ur = icmp samesign ult i64 %i.um, 576460752303423489
  call void @llvm.assume(i1 %i.ur)
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.un ; 3 uses
  %.sroa.04.0.copyload.i.i.i = load i32, ptr %i.us, align 8, !noalias !959
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %.sroa.45.0.copyload.i.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i.i.i, align 4, !noalias !959 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %.sroa.56.0.copyload.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !noalias !959
  %i.ut = trunc i32 %.sroa.04.0.copyload.i.i.i to i1
  br i1 %i.ut, label %bb.ez, label %.split1604

bb.ez:                                            ; preds = %.lr.ph1612
  %i.uu = zext i32 %.sroa.45.0.copyload.i.i.i to i64 ; 3 uses
  %i.uv = icmp samesign ugt i64 %i.tz, %i.uu
  br i1 %i.uv, label %bb.gf, label %bb.gg

.split1604:                                       ; preds = %.lr.ph1612
  call void @llvm.experimental.noalias.scope.decl(metadata !1052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %.sroa.45.0.copyload.i.i.i, ptr %i.k, align 4, !noalias !1053
  %i.uw = zext i32 %.sroa.45.0.copyload.i.i.i to i64 ; 3 uses
  %i.ux = load i64, ptr %i.bz, align 8, !alias.scope !1054, !noalias !1055, !noundef !4 ; 2 uses
  %i.uy = icmp ugt i64 %i.ux, %i.uw
  br i1 %i.uy, label %.lr.ph1606, label %.split1604._crit_edge

.lr.ph1606:                                       ; preds = %.split1604, %.backedge368
  %i.uz = phi i64 [ %i.zn, %.backedge368 ], [ %i.uw, %.split1604 ] ; 5 uses
  %i.va = phi i32 [ %.sroa.0.0.i31.i.i.be, %.backedge368 ], [ %.sroa.45.0.copyload.i.i.i, %.split1604 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.vb = load ptr, ptr %i.ca, align 8, !alias.scope !1057, !noalias !1055, !nonnull !4, !noundef !4
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.uz
  %i.vd = load i32, ptr %i.vc, align 4, !noalias !1058, !noundef !4
  %i.ve = zext i32 %i.vd to i64                   ; 4 uses
  %i.vf = load i64, ptr %i.z, align 8, !alias.scope !1057, !noalias !1055, !noundef !4 ; 5 uses
  %i.vg = icmp ugt i64 %i.vf, %i.ve
  %.pre3156 = load i64, ptr %i.cb, align 8, !noalias !1055 ; 5 uses
  br i1 %i.vg, label %bb.fa, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142.thread

.split1604._crit_edge:                            ; preds = %.split1604, %.backedge368
  %.lcssa524 = phi i64 [ %i.zn, %.backedge368 ], [ %i.uw, %.split1604 ]
  %.lcssa511 = phi i64 [ %i.zo, %.backedge368 ], [ %i.ux, %.split1604 ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa524, i64 noundef %.lcssa511, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1058
  unreachable

bb.fa:                                            ; preds = %.lr.ph1606
  %i.vh = icmp ugt i64 %.pre3156, %i.ve
  br i1 %i.vh, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ve, i64 noundef %.pre3156, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1058
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142: ; preds = %bb.fa
  %i.vi = load ptr, ptr %i.cc, align 8, !alias.scope !1057, !noalias !1055, !nonnull !4, !noundef !4
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.ve
  %i.vk = load i32, ptr %i.vj, align 4, !noalias !1058, !noundef !4
  %i.vl = icmp eq i32 %i.vk, %i.va
  br i1 %i.vl, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit57, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142.thread: ; preds = %.lr.ph1606, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1059
  store i64 %i.vf, ptr %i.j, align 8, !noalias !1059
  %i.vm = icmp ult i64 %.pre3156, 2305843009213693952
  call void @llvm.assume(i1 %i.vm), !noalias !1055
  %i.vn = icmp ult i64 %i.vf, %.pre3156
  br i1 %i.vn, label %bb.fd, label %bb.fc, !prof !9

bb.fc:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1059
  store i64 %.pre3156, ptr %i.i, align 8, !noalias !1059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1059
  store ptr %i.j, ptr %i.h, align 8, !noalias !1059
  %.sroa.43.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i53, align 8, !noalias !1059
  %i.vo = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.vo, align 8, !noalias !1059
  %.sroa.47.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i54, align 8, !noalias !1059
  %i.vp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.k, ptr %i.vp, align 8, !noalias !1059
  %.sroa.411.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i55, align 8, !noalias !1059
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1055
  unreachable

bb.fd:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142.thread
  %i.vq = and i64 %i.vf, 4294967295
  %i.vr = load ptr, ptr %i.cc, align 8, !alias.scope !1056, !noalias !1055, !nonnull !4, !noundef !4
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.vr, i64 %i.vq
  store i32 %i.va, ptr %i.vs, align 4, !noalias !1055
  %i.vt = zext i32 %i.va to i64                   ; 3 uses
  %i.vu = load i64, ptr %i.bz, align 8, !alias.scope !1056, !noalias !1055, !noundef !4 ; 2 uses
  %i.vv = icmp ugt i64 %i.vu, %i.vt
  br i1 %i.vv, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vt, i64 noundef %i.vu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1055
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit57: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

bb.ff:                                            ; preds = %bb.fd
  %i.vw = trunc i64 %i.vf to i32
  %i.vx = load ptr, ptr %i.ca, align 8, !alias.scope !1056, !noalias !1055, !nonnull !4, !noundef !4
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vx, i64 %i.vt
  store i32 %i.vw, ptr %i.vy, align 4, !noalias !1055
  %i.vz = load i64, ptr %i.z, align 8, !alias.scope !1056, !noalias !1055, !noundef !4
end_hunk_2
begin_hunk_3_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp:bb.a
  %i.xk = zext i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @9, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !range !3, !noalias !1068, !noundef !4
  %.not4571 = icmp eq i8 %i.xi, %i.xm
  br i1 %.not4571, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit158: ; preds = %bb.fr
  %i.xn = trunc nuw i8 %i.xi to i1
  br i1 %i.xn, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i, label %.backedge368

.split320:                                        ; preds = %bb.fk
  %i.xo = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher15is_word_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.xp = trunc nuw i8 %i.xo to i1
  br i1 %i.xp, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split324:                                        ; preds = %bb.fk
  %i.xq = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

bb.fs:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  br i1 %i.dj, label %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit164, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit164: ; preds = %bb.fs
  %i.xs = load i8, ptr %i.dg, align 1, !alias.scope !1069, !noundef !4
  %i.xt = zext i8 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr @9, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !range !3, !noalias !1069, !noundef !4
  %i.xw = trunc nuw i8 %i.xv to i1
  %i.xx = load i8, ptr %i.dk, align 1, !alias.scope !1069, !noundef !4
  %i.xy = zext i8 %i.xx to i64
  %i.xz = getelementptr inbounds nuw i8, ptr @9, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !range !3, !noalias !1069, !noundef !4
  %i.yb = trunc nuw i8 %i.ya to i1
  %not. = xor i1 %i.xw, true
  %i.yc = and i1 %not., %i.yb
  br i1 %i.yc, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

bb.ft:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.yd = load i8, ptr %i.dg, align 1, !alias.scope !1070, !noundef !4
  %i.ye = zext i8 %i.yd to i64
  %i.yf = getelementptr inbounds nuw i8, ptr @9, i64 %i.ye
  %i.yg = load i8, ptr %i.yf, align 1, !range !3, !noalias !1070, !noundef !4
  %i.yh = trunc nuw i8 %i.yg to i1
  br i1 %i.dj, label %bb.fu, label %.split321

bb.fu:                                            ; preds = %bb.ft
  %i.yi = load i8, ptr %i.dk, align 1, !alias.scope !1070, !noundef !4
  %i.yj = zext i8 %i.yi to i64
  %i.yk = getelementptr inbounds nuw i8, ptr @9, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !range !3, !noalias !1070, !noundef !4
  %i.ym = trunc nuw i8 %i.yl to i1
  %i.yn = xor i1 %i.ym, true
  br label %.split321

.split321:                                        ; preds = %bb.fu, %bb.ft
  %.sroa.02.0.i166 = phi i1 [ %i.yn, %bb.fu ], [ true, %bb.ft ]
  %spec.select.i167 = select i1 %i.yh, i1 %.sroa.02.0.i166, i1 false
  br i1 %spec.select.i167, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split323:                                        ; preds = %bb.fk
  %i.yo = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.yp = trunc nuw i8 %i.yo to i1
  br i1 %i.yp, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split322:                                        ; preds = %bb.fk
  %i.yq = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.yr = trunc nuw i8 %i.yq to i1
  br i1 %i.yr, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split314:                                        ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.ys = load i8, ptr %i.dg, align 1, !alias.scope !1071, !noundef !4
  %i.yt = zext i8 %i.ys to i64
  %i.yu = getelementptr inbounds nuw i8, ptr @9, i64 %i.yt
  %i.yv = load i8, ptr %i.yu, align 1, !range !3, !noalias !1071, !noundef !4
  %i.yw = trunc nuw i8 %i.yv to i1
  br i1 %i.yw, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i, label %.backedge368

bb.fv:                                            ; preds = %bb.fk
  br i1 %i.dj, label %.split318, label %.backedge368

.split319:                                        ; preds = %bb.fk
  %i.yx = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.yy = trunc nuw i8 %i.yx to i1
  br i1 %i.yy, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split313:                                        ; preds = %bb.fk
  %i.yz = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %i.dh)
  %i.za = trunc nuw i8 %i.yz to i1
  br i1 %i.za, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split315:                                        ; preds = %bb.fk
  %i.zb = load i8, ptr %i.dg, align 1, !alias.scope !1064, !noalias !1072, !noundef !4
  %i.zc = load i8, ptr %i.bv, align 16, !alias.scope !1063, !noalias !1073, !noundef !4
  %i.zd = icmp eq i8 %i.zb, %i.zc
  br i1 %i.zd, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split317:                                        ; preds = %bb.fl
  %i.ze = load i8, ptr %i.dk, align 1, !alias.scope !1064, !noalias !1072, !noundef !4
  %i.zf = load i8, ptr %i.bv, align 16, !alias.scope !1063, !noalias !1073, !noundef !4
  %i.zg = icmp eq i8 %i.ze, %i.zf
  br i1 %i.zg, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.split318:                                        ; preds = %bb.fv
  %i.zh = load i8, ptr %i.dk, align 1, !alias.scope !1064, !noalias !1072, !noundef !4
  %i.zi = zext i8 %i.zh to i64
  %i.zj = getelementptr inbounds nuw i8, ptr @9, i64 %i.zi
  %i.zk = load i8, ptr %i.zj, align 1, !range !3, !noalias !1074, !noundef !4
  %i.zl = trunc nuw i8 %i.zk to i1
  br i1 %i.zl, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i, label %.backedge368

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i.i: ; preds = %bb.fq
  %i.zm = trunc nuw i8 %i.xa to i1
  br i1 %i.zm, label %.backedge368, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

.backedge368:                                     ; preds = %.split3292, %bb.fz, %bb.gd, %bb.fp, %bb.fo, %bb.fm, %bb.fv, %bb.fn, %bb.fl, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit174, %bb.ga, %.split310, %.split311, %.split312, %.split313, %.split314, %.split315, %.split316, %.split317, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit158, %.split318, %.split319, %.split320, %.split321, %.split322, %.split323, %.split324, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit164
  %.sroa.0.0.i31.i.i.be = phi i32 [ %i.wr, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i.i ], [ %i.aak, %bb.ga ], [ %i.zt, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit174 ], [ %i.wr, %bb.fp ], [ %i.wr, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit164 ], [ %i.wr, %.split310 ], [ %i.wr, %.split311 ], [ %i.wr, %.split312 ], [ %i.wr, %.split313 ], [ %i.wr, %.split314 ], [ %i.wr, %.split315 ], [ %i.wr, %.split316 ], [ %i.wr, %.split317 ], [ %i.wr, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit158 ], [ %i.wr, %.split318 ], [ %i.wr, %.split319 ], [ %i.wr, %.split320 ], [ %i.wr, %.split321 ], [ %i.wr, %.split322 ], [ %i.wr, %.split323 ], [ %i.wr, %.split324 ], [ %i.wr, %bb.fl ], [ %i.wr, %bb.fn ], [ %i.wr, %bb.fv ], [ %i.wr, %bb.fm ], [ %i.wr, %bb.fo ], [ %i.aad, %bb.gd ], [ %i.aad, %bb.fz ], [ %i.wr, %.split3292 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %.sroa.0.0.i31.i.i.be, ptr %i.k, align 4, !noalias !1075
  %i.zn = zext i32 %.sroa.0.0.i31.i.i.be to i64   ; 3 uses
  %i.zo = load i64, ptr %i.bz, align 8, !alias.scope !1076, !noalias !1055, !noundef !4 ; 2 uses
  %i.zp = icmp ugt i64 %i.zo, %i.zn
  br i1 %i.zp, label %.lr.ph1606, label %.split1604._crit_edge

bb.fw:                                            ; preds = %bb.fg
  %i.zq = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !1055, !noundef !4 ; 2 uses
  %.not10.i33.i.i = icmp eq i64 %i.zr, 0
  br i1 %.not10.i33.i.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i, label %bb.ga

bb.fx:                                            ; preds = %bb.fg
  %i.zs = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.zt = load i32, ptr %i.zs, align 4, !noalias !1055, !noundef !4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.zv = load i32, ptr %i.zu, align 8, !noalias !1055, !noundef !4
  %i.zw = load i64, ptr %i.u, align 8, !alias.scope !1077, !noalias !1078, !noundef !4 ; 3 uses
  %i.zx = load i64, ptr %2, align 8, !range !15, !alias.scope !1077, !noalias !1078, !noundef !4
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.fy, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit174

bb.fy:                                            ; preds = %bb.fx
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1078
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit174

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit174: ; preds = %bb.fx, %bb.fy
  %i.zz = load ptr, ptr %i.bo, align 8, !alias.scope !1077, !noalias !1078, !nonnull !4, !noundef !4
  %i.aaa = getelementptr inbounds nuw [16 x i8], ptr %i.zz, i64 %i.zw ; 2 uses
  store i32 0, ptr %i.aaa, align 8, !noalias !1055
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  store i32 %i.zv, ptr %.sroa.4243.0..sroa_idx, align 4, !noalias !1055
  %i.aab = add i64 %i.zw, 1
  store i64 %i.aab, ptr %i.u, align 8, !alias.scope !1077, !noalias !1078
  br label %.backedge368

bb.fz:                                            ; preds = %bb.fg
  %i.aac = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !noalias !1055, !noundef !4 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  %i.aaf = load i32, ptr %i.aae, align 8, !noalias !1055, !noundef !4 ; 2 uses
  %i.aag = zext i32 %i.aaf to i64                 ; 2 uses
  %i.aah = icmp samesign ugt i64 %i.tz, %i.aag
  br i1 %i.aah, label %bb.gb, label %.backedge368

bb.ga:                                            ; preds = %bb.fw
  %i.aai = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.aaj = load ptr, ptr %i.aai, align 8, !noalias !1055, !nonnull !4, !noundef !4 ; 3 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !noalias !1055, !noundef !4
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 4
  %i.aam = getelementptr [4 x i8], ptr %i.aaj, i64 %i.zr
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aal, ptr noundef %i.aam), !noalias !1055
  br label %.backedge368

bb.gb:                                            ; preds = %bb.fz
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.aag ; 2 uses
  %i.aao = load i64, ptr %i.aan, align 8, !alias.scope !1052, !noalias !1079, !noundef !4
  %i.aap = load i64, ptr %i.u, align 8, !alias.scope !1080, !noalias !1081, !noundef !4 ; 3 uses
  %i.aaq = load i64, ptr %2, align 8, !range !15, !alias.scope !1080, !noalias !1081, !noundef !4
  %i.aar = icmp eq i64 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.gc, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit175

bb.gc:                                            ; preds = %bb.gb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1081
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit175

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit175: ; preds = %bb.gb, %bb.gc
  %i.aas = load ptr, ptr %i.bo, align 8, !alias.scope !1080, !noalias !1081, !nonnull !4, !noundef !4
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %i.aas, i64 %i.aap ; 3 uses
  store i32 1, ptr %i.aat, align 8, !noalias !1055
  %.sroa.4246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  store i32 %i.aaf, ptr %.sroa.4246.0..sroa_idx, align 4, !noalias !1055
  %.sroa.5247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  store i64 %i.aao, ptr %.sroa.5247.0..sroa_idx, align 8, !noalias !1055
  %i.aau = add i64 %i.aap, 1
  store i64 %i.aau, ptr %i.u, align 8, !alias.scope !1080, !noalias !1081
  br i1 %.not.i32.i.i, label %bb.ge, label %bb.gd, !prof !7

bb.gd:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit175
  store i64 %i.di, ptr %i.aan, align 8, !alias.scope !1052, !noalias !1079
  br label %.backedge368

bb.ge:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit175
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1055
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i: ; preds = %bb.fs, %bb.fk, %bb.fp, %bb.fm, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i.i, %bb.fw, %.split310, %.split311, %.split312, %.split313, %.split314, %.split315, %.split316, %.split317, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit158, %.split318, %.split319, %.split320, %.split321, %.split322, %.split323, %.split324, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit164, %.split3292, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit145, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit57, %bb.gf
  %.pr302 = load i64, ptr %i.u, align 8, !alias.scope !1050, !noalias !1051 ; 2 uses
  %i.aav = icmp eq i64 %.pr302, 0
  br i1 %i.aav, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i, label %.lr.ph1612

bb.gf:                                            ; preds = %bb.ez
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.uu
  store i64 %.sroa.56.0.copyload.i.i.i, ptr %i.aaw, align 8, !alias.scope !1046, !noalias !1082
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i

bb.gg:                                            ; preds = %bb.ez
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.uu, i64 noundef range(i64 0, 1152921504606846976) %i.tz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !959
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i.i, %.lr.ph5842, %bb.cp, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i.i, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i.i, %bb.co, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit140, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit101, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit, %bb.eu, %bb.w, %bb.v, %bb.u, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s
  %i.aax = icmp eq ptr %i.dn, %i.de
  br i1 %i.aax, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit, label %.lr.ph1634

bb.gh:                                            ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i.thread
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ea, i64 noundef %i.ec, i64 noundef %i.ed, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1083
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i.thread
  %i.aay = load ptr, ptr %i.by, align 8, !alias.scope !960, !noalias !956, !nonnull !4, !noundef !4
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aay, i64 %i.ea
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %4, i64 noundef range(i64 0, 1152921504606846976) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.aaz, i64 noundef %i.eb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32), !noalias !956
  br i1 %.sroa.0.0, label %.outer, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit: ; preds = %.outer, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM4next.exit.i
  br i1 %.sroa.0.0.i43.ph, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread, label %bb.ja

bb.gi:                                            ; preds = %._crit_edge3159
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %i.aba = load i64, ptr %i.bm, align 8, !alias.scope !1084, !noundef !4 ; 5 uses
  %i.abb = icmp ult i64 %i.aba, 1152921504606846976
  call void @llvm.assume(i1 %i.abb)
  %i.abc = load i64, ptr %i.aa, align 8, !alias.scope !1084, !noundef !4 ; 6 uses
  %i.abd = sub i64 %i.aba, %i.abc                 ; 2 uses
  %i.abe = icmp ult i64 %i.aba, %i.abc
  br i1 %i.abe, label %bb.gj, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable10all_absent.exit, !prof !7

bb.gj:                                            ; preds = %bb.gi
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.abd, i64 noundef %i.aba, i64 noundef %i.aba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28, !noalias !1084
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable10all_absent.exit: ; preds = %bb.gi
  %i.abf = load ptr, ptr %i.bn, align 8, !alias.scope !1084, !nonnull !4, !noundef !4
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.abd ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.abh = load i64, ptr %i.u, align 8, !alias.scope !1087, !noalias !1088, !noundef !4 ; 3 uses
  %i.abi = load i64, ptr %2, align 8, !range !15, !alias.scope !1087, !noalias !1088, !noundef !4
  %i.abj = icmp eq i64 %i.abh, %i.abi
  br i1 %i.abj, label %bb.gk, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit179

bb.gk:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable10all_absent.exit
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1088
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit179

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit179: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable10all_absent.exit, %bb.gk
  %i.abk = load ptr, ptr %i.bo, align 8, !alias.scope !1087, !noalias !1088, !nonnull !4, !noundef !4
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.abk, i64 %i.abh ; 2 uses
  store i32 0, ptr %i.abl, align 8, !noalias !1089
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  store i32 %.sroa.5.1.i.ph255, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !1089
  %i.abm = add i64 %i.abh, 1                      ; 3 uses
  store i64 %i.abm, ptr %i.u, align 8, !alias.scope !1087, !noalias !1088
  %i.abn = icmp eq i64 %i.abm, 0
  br i1 %i.abn, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %.lr.ph1603

.lr.ph1603:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit179
  %i.abo = add i64 %.sroa.014.1, 1                ; 2 uses
  %.not.i = icmp eq i64 %i.abo, 0
  %i.abp = icmp ult i64 %.sroa.014.1, %i.aj       ; 9 uses
  %i.abq = getelementptr i8, ptr %i.ah, i64 %.sroa.014.1 ; 10 uses
  %.not.i210 = icmp eq i64 %.sroa.014.1, 0        ; 9 uses
  %i.abr = add i64 %.sroa.014.1, -1               ; 9 uses
  %i.abs = icmp ult i64 %i.abr, %i.aj             ; 7 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.abr ; 7 uses
  %i.abu = icmp eq i64 %.sroa.014.1, %i.aj        ; 3 uses
  %i.abv = getelementptr i8, ptr %i.abq, i64 -1
  br label %bb.gl

bb.gl:                                            ; preds = %.lr.ph1603, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit
  %i.abw = phi i64 [ %i.abm, %.lr.ph1603 ], [ %.pr329, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit ] ; 2 uses
  %i.abx = add nsw i64 %i.abw, -1                 ; 3 uses
  store i64 %i.abx, ptr %i.u, align 8, !alias.scope !1085, !noalias !1089
  %i.aby = load i64, ptr %2, align 8, !range !15, !alias.scope !1085, !noalias !1089, !noundef !4
  %i.abz = icmp samesign ult i64 %i.abx, %i.aby
  call void @llvm.assume(i1 %i.abz)
  %i.aca = load ptr, ptr %i.bo, align 8, !alias.scope !1085, !noalias !1089, !nonnull !4, !noundef !4
  %i.acb = icmp samesign ult i64 %i.abw, 576460752303423489
  call void @llvm.assume(i1 %i.acb)
  %i.acc = getelementptr inbounds nuw [16 x i8], ptr %i.aca, i64 %i.abx ; 3 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.acc, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %.sroa.45.0.copyload.i = load i32, ptr %.sroa.45.0..sroa_idx.i, align 4 ; 4 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acc, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8
  %i.acd = trunc i32 %.sroa.04.0.copyload.i to i1
  br i1 %i.acd, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.ace = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.acf = icmp samesign ugt i64 %i.abc, %i.ace
  br i1 %i.acf, label %bb.iy, label %bb.iz

bb.gn:                                            ; preds = %bb.gl
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.45.0.copyload.i, ptr %i.g, align 4, !noalias !1091
  %i.acg = zext i32 %.sroa.45.0.copyload.i to i64 ; 3 uses
  %i.ach = load i64, ptr %i.bp, align 8, !alias.scope !1092, !noalias !1093, !noundef !4 ; 2 uses
  %i.aci = icmp ugt i64 %i.ach, %i.acg
  br i1 %i.aci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.gn, %.backedge372
  %i.acj = phi i64 [ %i.ahh, %.backedge372 ], [ %i.acg, %bb.gn ] ; 5 uses
  %i.ack = phi i32 [ %.sroa.0.0.i.be, %.backedge372 ], [ %.sroa.45.0.copyload.i, %bb.gn ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.acl = load ptr, ptr %i.bq, align 8, !alias.scope !1095, !noalias !1093, !nonnull !4, !noundef !4
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.acj
  %i.acn = load i32, ptr %i.acm, align 4, !noalias !1096, !noundef !4
  %i.aco = zext i32 %i.acn to i64                 ; 4 uses
  %i.acp = load i64, ptr %i.w, align 8, !alias.scope !1095, !noalias !1093, !noundef !4 ; 5 uses
  %i.acq = icmp ugt i64 %i.acp, %i.aco
  %.pre = load i64, ptr %i.br, align 8, !noalias !1093 ; 5 uses
  br i1 %i.acq, label %bb.go, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181.thread

._crit_edge:                                      ; preds = %bb.gn, %.backedge372
  %.lcssa402 = phi i64 [ %i.ahh, %.backedge372 ], [ %i.acg, %bb.gn ]
  %.lcssa382 = phi i64 [ %i.ahi, %.backedge372 ], [ %i.ach, %bb.gn ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa402, i64 noundef %.lcssa382, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1096
  unreachable

bb.go:                                            ; preds = %.lr.ph
  %i.acr = icmp ugt i64 %.pre, %i.aco
  br i1 %i.acr, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aco, i64 noundef %.pre, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1096
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181: ; preds = %bb.go
  %i.acs = load ptr, ptr %i.bs, align 8, !alias.scope !1095, !noalias !1093, !nonnull !4, !noundef !4
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.aco
  %i.acu = load i32, ptr %i.act, align 4, !noalias !1096, !noundef !4
  %i.acv = icmp eq i32 %i.acu, %i.ack
  br i1 %i.acv, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit62, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181.thread: ; preds = %.lr.ph, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1097
  store i64 %i.acp, ptr %i.f, align 8, !noalias !1097
  %i.acw = icmp ult i64 %.pre, 2305843009213693952
  call void @llvm.assume(i1 %i.acw), !noalias !1093
  %i.acx = icmp ult i64 %i.acp, %.pre
  br i1 %i.acx, label %bb.gr, label %bb.gq, !prof !9

bb.gq:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1097
  store i64 %.pre, ptr %i.e, align 8, !noalias !1097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1097
  store ptr %i.f, ptr %i.d, align 8, !noalias !1097
  %.sroa.43.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i58, align 8, !noalias !1097
  %i.acy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.acy, align 8, !noalias !1097
  %.sroa.47.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i59, align 8, !noalias !1097
  %i.acz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.acz, align 8, !noalias !1097
  %.sroa.411.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i60, align 8, !noalias !1097
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1093
  unreachable

bb.gr:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181.thread
  %i.ada = and i64 %i.acp, 4294967295
  %i.adb = load ptr, ptr %i.bs, align 8, !alias.scope !1094, !noalias !1093, !nonnull !4, !noundef !4
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %i.ada
  store i32 %i.ack, ptr %i.adc, align 4, !noalias !1093
  %i.add = zext i32 %i.ack to i64                 ; 3 uses
  %i.ade = load i64, ptr %i.bp, align 8, !alias.scope !1094, !noalias !1093, !noundef !4 ; 2 uses
  %i.adf = icmp ugt i64 %i.ade, %i.add
  br i1 %i.adf, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.add, i64 noundef %i.ade, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1093
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit62: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.gt:                                            ; preds = %bb.gr
  %i.adg = trunc i64 %i.acp to i32
  %i.adh = load ptr, ptr %i.bq, align 8, !alias.scope !1094, !noalias !1093, !nonnull !4, !noundef !4
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %i.add
  store i32 %i.adg, ptr %i.adi, align 4, !noalias !1093
  %i.adj = load i64, ptr %i.w, align 8, !alias.scope !1094, !noalias !1093, !noundef !4
  %i.adk = add i64 %i.adj, 1
  store i64 %i.adk, ptr %i.w, align 8, !alias.scope !1094, !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.adl = load i64, ptr %i.bt, align 16, !noalias !1093, !noundef !4 ; 2 uses
  %i.adm = icmp ugt i64 %i.adl, %i.acj
  br i1 %i.adm, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.adn = load ptr, ptr %i.bu, align 8, !noalias !1093, !nonnull !4, !noundef !4
  %i.ado = getelementptr inbounds nuw [24 x i8], ptr %i.adn, i64 %i.acj ; 9 uses
  %i.adp = load i32, ptr %i.ado, align 8, !range !16, !noalias !1093, !noundef !4
  switch i32 %i.adp, label %default.unreachable [
    i32 0, label %bb.gw
    i32 1, label %bb.gw
    i32 2, label %bb.gw
    i32 3, label %bb.gy
    i32 4, label %bb.ip
    i32 5, label %bb.iq
    i32 6, label %bb.is
    i32 7, label %bb.gw
    i32 8, label %bb.gw
  ]

bb.gv:                                            ; preds = %bb.gt
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.acj, i64 noundef %i.adl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !noalias !1093
  unreachable

bb.gw:                                            ; preds = %bb.gu, %bb.gu, %bb.gu, %bb.gu, %bb.gu
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.adq = load i64, ptr %i.bw, align 8, !alias.scope !1098, !noalias !1093, !noundef !4
  %i.adr = mul i64 %i.adq, %i.acj                 ; 4 uses
  %i.ads = load i64, ptr %i.x, align 8, !alias.scope !1098, !noalias !1093, !noundef !4 ; 2 uses
  %i.adt = add i64 %i.adr, %i.ads                 ; 3 uses
  %i.adu = load i64, ptr %i.bx, align 8, !alias.scope !1098, !noalias !1093, !noundef !4 ; 2 uses
  %i.adv = icmp ult i64 %i.adt, %i.adr
  %.not.i182 = icmp ugt i64 %i.adt, %i.adu
  %or.cond.i183 = or i1 %i.adv, %.not.i182
  br i1 %or.cond.i183, label %bb.gx, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit184, !prof !12

bb.gx:                                            ; preds = %bb.gw
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.adr, i64 noundef %i.adt, i64 noundef %i.adu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1099
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit184: ; preds = %bb.gw
  %i.adw = load ptr, ptr %i.by, align 8, !alias.scope !1098, !noalias !1093, !nonnull !4, !noundef !4
  %i.adx = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.adr
  call void @_RINvNtCs4NRVxsYgnAr_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias noundef nonnull align 8 %i.adx, i64 noundef %i.ads, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.abg, i64 noundef range(i64 0, 1152921504606846976) %i.abc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !1100
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.gy:                                            ; preds = %bb.gu
  %i.ady = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.adz = load i32, ptr %i.ady, align 8, !range !17, !noalias !1093, !noundef !4
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.aeb = load i32, ptr %i.aea, align 4, !noalias !1093, !noundef !4 ; 31 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.aec = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 131073) %i.adz, i1 true)
  switch i32 %i.aec, label %default.unreachable [
    i32 0, label %.split336
    i32 1, label %.split338
    i32 2, label %bb.gz
    i32 3, label %bb.ha
    i32 4, label %bb.hb
    i32 5, label %bb.hg
    i32 6, label %bb.hl
    i32 7, label %bb.hp
    i32 8, label %.split347
    i32 9, label %.split351
    i32 10, label %bb.hu
    i32 11, label %bb.ic
    i32 12, label %.split350
end_hunk_3
begin_hunk_4_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM10search_imp:bb.a
_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit203: ; preds = %bb.hx, %bb.ib
  %.sroa.0.2.i201 = phi i8 [ %i.afm, %bb.hx ], [ %spec.select.i200, %bb.ib ]
  %i.afw = trunc nuw i8 %.sroa.0.2.i201 to i1
  br i1 %i.afw, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.ic:                                            ; preds = %bb.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  br i1 %.not.i210, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  br i1 %i.abs, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abr, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !1108
  unreachable

bb.if:                                            ; preds = %bb.id
  %i.afx = load i8, ptr %i.abt, align 1, !alias.scope !1108, !noundef !4
  %i.afy = zext i8 %i.afx to i64
  %i.afz = getelementptr inbounds nuw i8, ptr @9, i64 %i.afy
  %i.aga = load i8, ptr %i.afz, align 1, !range !3, !noalias !1108, !noundef !4
  %i.agb = trunc nuw i8 %i.aga to i1
  br i1 %i.abp, label %bb.ig, label %.split348

bb.ig:                                            ; preds = %bb.if
  %i.agc = load i8, ptr %i.abq, align 1, !alias.scope !1108, !noundef !4
  %i.agd = zext i8 %i.agc to i64
  %i.age = getelementptr inbounds nuw i8, ptr @9, i64 %i.agd
  %i.agf = load i8, ptr %i.age, align 1, !range !3, !noalias !1108, !noundef !4
  %i.agg = trunc nuw i8 %i.agf to i1
  %i.agh = xor i1 %i.agg, true
  br label %.split348

.split348:                                        ; preds = %bb.ig, %bb.if
  %.sroa.02.0.i205 = phi i1 [ %i.agh, %bb.ig ], [ true, %bb.if ]
  %spec.select.i206 = select i1 %i.agb, i1 %.sroa.02.0.i205, i1 false
  br i1 %spec.select.i206, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split350:                                        ; preds = %bb.gy
  %i.agi = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %.sroa.014.1)
  %i.agj = trunc nuw i8 %i.agi to i1
  br i1 %i.agj, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split349:                                        ; preds = %bb.gy
  %i.agk = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %.sroa.014.1)
  %i.agl = trunc nuw i8 %i.agk to i1
  br i1 %i.agl, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.ih:                                            ; preds = %bb.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  br i1 %.not.i210, label %.backedge372, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  br i1 %i.abs, label %.split341, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abr, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !1109
  unreachable

.split341:                                        ; preds = %bb.ii
  %i.agm = load i8, ptr %i.abt, align 1, !alias.scope !1109, !noundef !4
  %i.agn = zext i8 %i.agm to i64
  %i.ago = getelementptr inbounds nuw i8, ptr @9, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1, !range !3, !noalias !1109, !noundef !4
  %i.agq = trunc nuw i8 %i.agp to i1
  br i1 %i.agq, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %.backedge372

bb.ik:                                            ; preds = %bb.gy
  br i1 %i.abp, label %.split345, label %.backedge372

.split346:                                        ; preds = %bb.gy
  %i.agr = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %.sroa.014.1)
  %i.ags = trunc nuw i8 %i.agr to i1
  br i1 %i.ags, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split340:                                        ; preds = %bb.gy
  %i.agt = call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef range(i64 0, -9223372036854775808) %i.aj, i64 noundef %.sroa.014.1)
  %i.agu = trunc nuw i8 %i.agt to i1
  br i1 %i.agu, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.il:                                            ; preds = %bb.gz
  br i1 %i.abs, label %.split342, label %bb.im

.split342:                                        ; preds = %bb.il
  %i.agv = load i8, ptr %i.abt, align 1, !alias.scope !1102, !noalias !1110, !noundef !4
  %i.agw = load i8, ptr %i.bv, align 16, !alias.scope !1101, !noalias !1111, !noundef !4
  %i.agx = icmp eq i8 %i.agv, %i.agw
  br i1 %i.agx, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.im:                                            ; preds = %bb.il
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abr, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !1112
  unreachable

bb.in:                                            ; preds = %bb.ha
  br i1 %i.abp, label %.split344, label %bb.io

.split344:                                        ; preds = %bb.in
  %i.agy = load i8, ptr %i.abq, align 1, !alias.scope !1102, !noalias !1110, !noundef !4
  %i.agz = load i8, ptr %i.bv, align 16, !alias.scope !1101, !noalias !1111, !noundef !4
  %i.aha = icmp eq i8 %i.agy, %i.agz
  br i1 %i.aha, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.io:                                            ; preds = %bb.in
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.1, i64 noundef range(i64 0, -9223372036854775808) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !1112
  unreachable

.split345:                                        ; preds = %bb.ik
  %i.ahb = load i8, ptr %i.abq, align 1, !alias.scope !1102, !noalias !1110, !noundef !4
  %i.ahc = zext i8 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr @9, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1, !range !3, !noalias !1113, !noundef !4
  %i.ahf = trunc nuw i8 %i.ahe to i1
  br i1 %i.ahf, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %.backedge372

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i: ; preds = %bb.hn
  %i.ahg = trunc nuw i8 %i.aek to i1
  br i1 %i.ahg, label %.backedge372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.backedge372:                                     ; preds = %.thread3299..split337_crit_edge, %.split3298, %bb.is, %bb.iw, %bb.hi, %bb.hg, %bb.hd, %bb.hb, %bb.gz, %bb.ih, %bb.ik, %bb.hf, %bb.hk, %bb.ha, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit213, %bb.it, %.split336, %.split337, %.split338, %.split339, %.split340, %.split341, %.split342, %.split343, %.split344, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit197, %.split345, %.split346, %.split347, %.split348, %.split349, %.split350, %.split351, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit203
  %.sroa.0.0.i.be = phi i32 [ %i.aeb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i ], [ %i.aie, %bb.it ], [ %i.ahn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit213 ], [ %i.aeb, %bb.hi ], [ %i.aeb, %.split336 ], [ %i.aeb, %.split337 ], [ %i.aeb, %.split338 ], [ %i.aeb, %.split339 ], [ %i.aeb, %.split340 ], [ %i.aeb, %.split341 ], [ %i.aeb, %.split342 ], [ %i.aeb, %.split343 ], [ %i.aeb, %.split344 ], [ %i.aeb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit197 ], [ %i.aeb, %.split345 ], [ %i.aeb, %.split346 ], [ %i.aeb, %.split347 ], [ %i.aeb, %.split348 ], [ %i.aeb, %.split349 ], [ %i.aeb, %.split350 ], [ %i.aeb, %.split351 ], [ %i.aeb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit203 ], [ %i.aeb, %bb.ha ], [ %i.aeb, %bb.hk ], [ %i.aeb, %bb.hf ], [ %i.aeb, %bb.ik ], [ %i.aeb, %bb.ih ], [ %i.aeb, %bb.gz ], [ %i.aeb, %bb.hb ], [ %i.aeb, %bb.hd ], [ %i.aeb, %bb.hg ], [ %i.ahx, %bb.iw ], [ %i.ahx, %bb.is ], [ %i.aeb, %.split3298 ], [ %i.aeb, %.thread3299..split337_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.0.0.i.be, ptr %i.g, align 4, !noalias !1114
  %i.ahh = zext i32 %.sroa.0.0.i.be to i64        ; 3 uses
  %i.ahi = load i64, ptr %i.bp, align 8, !alias.scope !1115, !noalias !1093, !noundef !4 ; 2 uses
  %i.ahj = icmp ugt i64 %i.ahi, %i.ahh
  br i1 %i.ahj, label %.lr.ph, label %._crit_edge

bb.ip:                                            ; preds = %bb.gu
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.ahl = load i64, ptr %i.ahk, align 8, !noalias !1093, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i64 %i.ahl, 0
  br i1 %.not10.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %bb.it

bb.iq:                                            ; preds = %bb.gu
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.ahn = load i32, ptr %i.ahm, align 4, !noalias !1093, !noundef !4
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.ahp = load i32, ptr %i.aho, align 8, !noalias !1093, !noundef !4
  %i.ahq = load i64, ptr %i.u, align 8, !alias.scope !1116, !noalias !1117, !noundef !4 ; 3 uses
  %i.ahr = load i64, ptr %2, align 8, !range !15, !alias.scope !1116, !noalias !1117, !noundef !4
  %i.ahs = icmp eq i64 %i.ahq, %i.ahr
  br i1 %i.ahs, label %bb.ir, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit213

bb.ir:                                            ; preds = %bb.iq
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1117
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit213

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit213: ; preds = %bb.iq, %bb.ir
  %i.aht = load ptr, ptr %i.bo, align 8, !alias.scope !1116, !noalias !1117, !nonnull !4, !noundef !4
  %i.ahu = getelementptr inbounds nuw [16 x i8], ptr %i.aht, i64 %i.ahq ; 2 uses
  store i32 0, ptr %i.ahu, align 8, !noalias !1093
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 4
  store i32 %i.ahp, ptr %.sroa.4216.0..sroa_idx, align 4, !noalias !1093
  %i.ahv = add i64 %i.ahq, 1
  store i64 %i.ahv, ptr %i.u, align 8, !alias.scope !1116, !noalias !1117
  br label %.backedge372

bb.is:                                            ; preds = %bb.gu
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ado, i64 4
  %i.ahx = load i32, ptr %i.ahw, align 4, !noalias !1093, !noundef !4 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %i.ahz = load i32, ptr %i.ahy, align 8, !noalias !1093, !noundef !4 ; 2 uses
  %i.aia = zext i32 %i.ahz to i64                 ; 2 uses
  %i.aib = icmp samesign ugt i64 %i.abc, %i.aia
  br i1 %i.aib, label %bb.iu, label %.backedge372

bb.it:                                            ; preds = %bb.ip
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ado, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !noalias !1093, !nonnull !4, !noundef !4 ; 3 uses
  %i.aie = load i32, ptr %i.aid, align 4, !noalias !1093, !noundef !4
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aig = getelementptr [4 x i8], ptr %i.aid, i64 %i.ahl
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.aif, ptr noundef %i.aig), !noalias !1093
  br label %.backedge372

bb.iu:                                            ; preds = %bb.is
  %i.aih = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.aia ; 2 uses
  %i.aii = load i64, ptr %i.aih, align 8, !alias.scope !1090, !noalias !1118, !noundef !4
  %i.aij = load i64, ptr %i.u, align 8, !alias.scope !1119, !noalias !1120, !noundef !4 ; 3 uses
  %i.aik = load i64, ptr %2, align 8, !range !15, !alias.scope !1119, !noalias !1120, !noundef !4
  %i.ail = icmp eq i64 %i.aij, %i.aik
  br i1 %i.ail, label %bb.iv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit214

bb.iv:                                            ; preds = %bb.iu
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2), !noalias !1120
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit214

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit214: ; preds = %bb.iu, %bb.iv
  %i.aim = load ptr, ptr %i.bo, align 8, !alias.scope !1119, !noalias !1120, !nonnull !4, !noundef !4
  %i.ain = getelementptr inbounds nuw [16 x i8], ptr %i.aim, i64 %i.aij ; 3 uses
  store i32 1, ptr %i.ain, align 8, !noalias !1093
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  store i32 %i.ahz, ptr %.sroa.4219.0..sroa_idx, align 4, !noalias !1093
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  store i64 %i.aii, ptr %.sroa.5220.0..sroa_idx, align 8, !noalias !1093
  %i.aio = add i64 %i.aij, 1
  store i64 %i.aio, ptr %i.u, align 8, !alias.scope !1119, !noalias !1120
  br i1 %.not.i, label %bb.ix, label %bb.iw, !prof !7

bb.iw:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit214
  store i64 %i.abo, ptr %i.aih, align 8, !alias.scope !1090, !noalias !1118
  br label %.backedge372

bb.ix:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit214
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1093
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit: ; preds = %.thread3299..split337_crit_edge, %.thread3299, %bb.ic, %bb.hv, %bb.hi, %bb.hd, %bb.ip, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i, %.split336, %.split337, %.split338, %.split339, %.split340, %.split341, %.split342, %.split343, %.split344, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit197, %.split345, %.split346, %.split347, %.split348, %.split349, %.split350, %.split351, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit203, %.split3298, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit184, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit62, %bb.iy
  %.pr329 = load i64, ptr %i.u, align 8, !alias.scope !1085, !noalias !1089 ; 2 uses
  %i.aip = icmp eq i64 %.pr329, 0
  br i1 %i.aip, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %bb.gl

bb.iy:                                            ; preds = %bb.gm
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.ace
  store i64 %.sroa.56.0.copyload.i, ptr %i.aiq, align 8, !alias.scope !1086, !noalias !1121
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.iz:                                            ; preds = %bb.gm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ace, i64 noundef range(i64 0, 1152921504606846976) %i.abc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit
  %.sroa.3.1.i3297 = phi i32 [ %.sroa.3.0.i.ph, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit ], [ %i.dy, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit178 ]
  store i64 %.sroa.014.1, ptr %i.ch, align 8
  store i32 %.sroa.3.1.i3297, ptr %i.ci, align 8
  store i64 1, ptr %0, align 8
  br i1 %i.cg, label %.loopexit, label %bb.jb

bb.ja:                                            ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit
  %i.air = load i64, ptr %0, align 8, !range !6   ; 2 uses
  %i.ais = icmp ne i64 %i.air, 0
  %or.cond = select i1 %i.cg, i1 %i.ais, i1 false
  br i1 %or.cond, label %.loopexit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread
  %i.ait = phi i64 [ %i.air, %bb.ja ], [ 1, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM5nexts.exit.thread ]
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs98D8VPWzHuM_14regex_automata(ptr noundef nonnull %i.v, ptr noundef nonnull %i.y, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit unwind label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.aiu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit: ; preds = %bb.jb
  store i64 0, ptr %i.z, align 8
  %.not37 = icmp ugt i64 %i.dh, %i.ae
  br i1 %.not37, label %.loopexit, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(216) initializes((16, 24), (72, 80), (112, 120), (168, 176), (208, 216)) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 8 uses
  %i.b = alloca [256 x i8], align 1               ; 8 uses
  %i.c = alloca [256 x i8], align 1               ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [8 x i8], align 8                 ; 3 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [4 x i8], align 4                 ; 7 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 3 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [4 x i8], align 4                 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 31 uses
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  store i64 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  store i64 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 11 uses
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 3 uses
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12start_config.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4 ; 54 uses
  %.not = icmp eq i64 %i.ag, -1
  br i1 %.not, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i8, ptr %i.ah, align 8, !range !10, !noundef !4 ; 2 uses
  %.not15 = icmp ne i8 %i.ai, 2
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  %.sroa.0.0 = and i1 %.not15, %i.ak              ; 3 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %.val42 = load i32, ptr %2, align 8, !range !14, !noundef !4
  switch i32 %.val42, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

default.unreachable:                              ; preds = %.lr.ph4742, %bb.ac, %bb.y, %bb.hr, %bb.hn, %bb.fn, %bb.fj, %bb.ct, %bb.cp, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.am = load i32, ptr %i.al, align 16, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 372
  %i.ao = load i32, ptr %i.an, align 4, !noundef !4
  %i.ap = icmp eq i32 %i.am, %i.ao
  br label %.lr.ph1360

bb.f:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 368
  %i.ar = load i32, ptr %i.aq, align 16, !noundef !4
  br label %.lr.ph1360

bb.g:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val43 = load i32, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 360
  %i.au = load i64, ptr %i.at, align 8, !noundef !4
  %i.av = zext i32 %.val43 to i64                 ; 2 uses
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12start_config.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  %i.ba = load i32, ptr %i.az, align 4, !noundef !4
  br label %.lr.ph1360

.lr.ph1360:                                       ; preds = %bb.f, %bb.e, %bb.h
  %.sroa.5.1.i.ph = phi i32 [ %i.ar, %bb.f ], [ %i.am, %bb.e ], [ %i.ba, %bb.h ]
  %.sroa.0.1.i.ph = phi i1 [ true, %bb.f ], [ %i.ap, %bb.e ], [ true, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.0.0.not = xor i1 %.sroa.0.0, true
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 15 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val, i64 336 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val, i64 328 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 384 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !4 ; 32 uses
  %.not19.i = icmp eq i64 %i.ag, 0                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 386
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 387
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = load i8, ptr %i.bz, align 8, !range !3
  %i.cb = trunc nuw i8 %i.ca to i1
  %.pre = load i64, ptr %i.bb, align 8
  br label %bb.i

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12start_config.exit: ; preds = %bb.l, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit, %bb.m, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit, %bb.g, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph1360, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit
  %i.cc = phi i64 [ %.pre, %.lr.ph1360 ], [ %i.aho, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 2 uses
  %.sroa.0.02281358 = phi i64 [ %i.ab, %.lr.ph1360 ], [ %spec.select340, %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit ] ; 29 uses
  %i.cd = icmp uge i64 %.sroa.0.02281358, %i.ad   ; 2 uses
  %not. = xor i1 %i.cd, true
  %i.ce = zext i1 %not. to i64
  %spec.select340 = add nuw i64 %.sroa.0.02281358, %i.ce ; 2 uses
  %i.cf = icmp eq i64 %i.cc, 0                    ; 2 uses
  %i.cg = load i64, ptr %i.v, align 8, !noundef !4
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
end_hunk_4
begin_hunk_5_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
bb.bh:                                            ; preds = %bb.bg
  br i1 %i.ct, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !1358
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gx = load i8, ptr %i.cu, align 1, !alias.scope !1358, !noundef !4
  %i.gy = zext i8 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @9, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !range !3, !noalias !1358, !noundef !4
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.cq, label %bb.bk, label %.split258

bb.bk:                                            ; preds = %bb.bj
  %i.hc = load i8, ptr %i.cr, align 1, !alias.scope !1358, !noundef !4
  %i.hd = zext i8 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @9, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !range !3, !noalias !1358, !noundef !4
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = xor i1 %i.hg, true
  br label %.split258

.split258:                                        ; preds = %bb.bk, %bb.bj
  %.sroa.02.0.i = phi i1 [ %i.hh, %bb.bk ], [ true, %bb.bj ]
  %spec.select.i64 = select i1 %i.hb, i1 %.sroa.02.0.i, i1 false
  br i1 %spec.select.i64, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split260:                                        ; preds = %bb.ac
  %i.hi = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %.sroa.0.02281358)
  %i.hj = trunc nuw i8 %i.hi to i1
  br i1 %i.hj, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split259:                                        ; preds = %bb.ac
  %i.hk = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %.sroa.0.02281358)
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.bl:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  br i1 %.not.i66, label %.backedge360, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.ct, label %.split251, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !1359
  unreachable

.split251:                                        ; preds = %bb.bm
  %i.hm = load i8, ptr %i.cu, align 1, !alias.scope !1359, !noundef !4
  %i.hn = zext i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr @9, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !range !3, !noalias !1359, !noundef !4
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %.backedge360

bb.bo:                                            ; preds = %bb.ac
  br i1 %i.cq, label %.split255, label %.backedge360

.split256:                                        ; preds = %bb.ac
  %i.hr = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %.sroa.0.02281358)
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.split250:                                        ; preds = %bb.ac
  %i.ht = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %.sroa.0.02281358)
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.bp:                                            ; preds = %bb.ad
  br i1 %i.ct, label %.split252, label %bb.bq

.split252:                                        ; preds = %bb.bp
  %i.hv = load i8, ptr %i.cu, align 1, !alias.scope !1352, !noalias !1360, !noundef !4
  %i.hw = load i8, ptr %i.bj, align 16, !alias.scope !1351, !noalias !1361, !noundef !4
  %i.hx = icmp eq i8 %i.hv, %i.hw
  br i1 %i.hx, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.bq:                                            ; preds = %bb.bp
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !1362
  unreachable

bb.br:                                            ; preds = %bb.ae
  br i1 %i.cq, label %.split254, label %bb.bs

.split254:                                        ; preds = %bb.br
  %i.hy = load i8, ptr %i.cr, align 1, !alias.scope !1352, !noalias !1360, !noundef !4
  %i.hz = load i8, ptr %i.bj, align 16, !alias.scope !1351, !noalias !1361, !noundef !4
  %i.ia = icmp eq i8 %i.hy, %i.hz
  br i1 %i.ia, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

bb.bs:                                            ; preds = %bb.br
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.02281358, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !1362
  unreachable

.split255:                                        ; preds = %bb.bo
  %i.ib = load i8, ptr %i.cr, align 1, !alias.scope !1352, !noalias !1360, !noundef !4
  %i.ic = zext i8 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr @9, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !range !3, !noalias !1363, !noundef !4
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %.backedge360

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i: ; preds = %bb.ar
  %i.ig = trunc nuw i8 %i.fk to i1
  br i1 %i.ig, label %.backedge360, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit

.backedge360:                                     ; preds = %.thread..split247_crit_edge, %.split2714, %bb.am, %bb.ak, %bb.ah, %bb.af, %bb.ad, %bb.bl, %bb.bo, %bb.aj, %bb.ao, %bb.ae, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit68, %bb.bx, %bb.bw, %.split, %.split247, %.split248, %.split249, %.split250, %.split251, %.split252, %.split253, %.split254, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit60, %.split255, %.split256, %.split257, %.split258, %.split259, %.split260, %.split261, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit
  %.sroa.0.0.i20.be = phi i32 [ %i.fb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i ], [ %i.ja, %bb.bx ], [ %i.in, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit68 ], [ %i.ix, %bb.bw ], [ %i.fb, %.split ], [ %i.fb, %.split247 ], [ %i.fb, %.split248 ], [ %i.fb, %.split249 ], [ %i.fb, %.split250 ], [ %i.fb, %.split251 ], [ %i.fb, %.split252 ], [ %i.fb, %.split253 ], [ %i.fb, %.split254 ], [ %i.fb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit60 ], [ %i.fb, %.split255 ], [ %i.fb, %.split256 ], [ %i.fb, %.split257 ], [ %i.fb, %.split258 ], [ %i.fb, %.split259 ], [ %i.fb, %.split260 ], [ %i.fb, %.split261 ], [ %i.fb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit ], [ %i.fb, %bb.ae ], [ %i.fb, %bb.ao ], [ %i.fb, %bb.aj ], [ %i.fb, %bb.bo ], [ %i.fb, %bb.bl ], [ %i.fb, %bb.ad ], [ %i.fb, %bb.af ], [ %i.fb, %bb.ah ], [ %i.fb, %bb.ak ], [ %i.fb, %bb.am ], [ %i.fb, %.split2714 ], [ %i.fb, %.thread..split247_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %.sroa.0.0.i20.be, ptr %i.g, align 4, !noalias !1364
  %i.ih = zext i32 %.sroa.0.0.i20.be to i64       ; 3 uses
  %i.ii = load i64, ptr %i.bd, align 8, !alias.scope !1365, !noalias !1343, !noundef !4 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, %i.ih
  br i1 %i.ij, label %.lr.ph, label %._crit_edge

bb.bt:                                            ; preds = %bb.y
  %i.ik = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !noalias !1343, !noundef !4 ; 2 uses
  %.not10.i = icmp eq i64 %i.il, 0
  br i1 %.not10.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, label %bb.bx

bb.bu:                                            ; preds = %bb.y
  %i.im = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.in = load i32, ptr %i.im, align 4, !noalias !1343, !noundef !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ip = load i32, ptr %i.io, align 8, !noalias !1343, !noundef !4
  %i.iq = load i64, ptr %i.t, align 8, !alias.scope !1366, !noalias !1367, !noundef !4 ; 3 uses
  %i.ir = load i64, ptr %1, align 8, !range !15, !alias.scope !1366, !noalias !1367, !noundef !4
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %bb.bv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit68

bb.bv:                                            ; preds = %bb.bu
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1367
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit68

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit68: ; preds = %bb.bu, %bb.bv
  %i.it = load ptr, ptr %i.bc, align 8, !alias.scope !1366, !noalias !1367, !nonnull !4, !noundef !4
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.it, i64 %i.iq ; 2 uses
  store i32 0, ptr %i.iu, align 8, !noalias !1343
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store i32 %i.ip, ptr %.sroa.4199.0..sroa_idx, align 4, !noalias !1343
  %i.iv = add i64 %i.iq, 1
  store i64 %i.iv, ptr %i.t, align 8, !alias.scope !1366, !noalias !1367
  br label %.backedge360

bb.bw:                                            ; preds = %bb.y
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !noalias !1343, !noundef !4
  br label %.backedge360

bb.bx:                                            ; preds = %bb.bt
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !1343, !nonnull !4, !noundef !4 ; 3 uses
  %i.ja = load i32, ptr %i.iz, align 4, !noalias !1343, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jc = getelementptr [4 x i8], ptr %i.iz, i64 %i.il
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.jb, ptr noundef %i.jc), !noalias !1343
  br label %.backedge360

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit: ; preds = %.thread..split247_crit_edge, %.thread, %bb.bg, %bb.az, %bb.am, %bb.ah, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit, %.split261, %.split260, %.split259, %.split258, %.split257, %.split256, %.split255, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit60, %.split254, %.split253, %.split252, %.split251, %.split250, %.split249, %.split248, %.split247, %.split, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i, %bb.bt, %.split2714, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit41, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit
  %.pr = load i64, ptr %i.t, align 8, !alias.scope !1340, !noalias !1339 ; 2 uses
  %i.jd = icmp eq i64 %.pr, 0
  br i1 %i.jd, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit, label %bb.p

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit, %bb.k
  %i.je = load i8, ptr %i.bp, align 2, !range !3, !noalias !1368, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit
  %i.jg = load i8, ptr %i.bq, align 1, !range !3, !noalias !1368, !noundef !4
  %i.jh = trunc nuw i8 %i.jg to i1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit
  %.sroa.0.0.i = phi i1 [ %i.jh, %bb.by ], [ false, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM15epsilon_closure.exit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.ji = load i64, ptr %i.v, align 8, !alias.scope !1369, !noalias !1370, !noundef !4 ; 4 uses
  %i.jj = load i64, ptr %i.bf, align 8, !alias.scope !1369, !noalias !1370, !noundef !4 ; 2 uses
  %.not.i69 = icmp ugt i64 %i.ji, %i.jj
  br i1 %.not.i69, label %bb.ca, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit, !prof !12

bb.ca:                                            ; preds = %bb.bz
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ji, i64 noundef %i.jj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28, !noalias !1371
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit: ; preds = %bb.bz
  %i.jk = load ptr, ptr %i.bg, align 8, !alias.scope !1369, !noalias !1370, !nonnull !4, !noundef !4 ; 3 uses
  %.idx = shl nuw nsw i64 %i.ji, 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.idx ; 2 uses
  %i.jm = icmp eq i64 %i.ji, 0
  br i1 %i.jm, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit, label %.lr.ph1356

.lr.ph1356:                                       ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.jn = icmp ult i64 %.sroa.0.02281358, %i.ag   ; 10 uses
  %i.jo = icmp eq i64 %.sroa.0.02281358, %i.ag
  %i.jp = getelementptr i8, ptr %i.bl, i64 %.sroa.0.02281358 ; 27 uses
  %i.jq = add i64 %.sroa.0.02281358, 1            ; 26 uses
  %i.jr = add i64 %.sroa.0.02281358, 2            ; 4 uses
  %.not.i32.i = icmp eq i64 %i.jr, 0              ; 3 uses
  %i.js = icmp ult i64 %i.jq, %i.ag               ; 24 uses
  %i.jt = getelementptr i8, ptr %i.bl, i64 %i.jq  ; 26 uses
  %i.ju = icmp eq i64 %i.jq, %i.ag                ; 9 uses
  %.not.i147 = icmp eq i64 %i.jq, 0               ; 18 uses
  %i.jv = load i32, ptr %i.jk, align 4, !noundef !4
  %i.jw = load i64, ptr %i.bh, align 16, !noalias !1372, !noundef !4 ; 2 uses
  %i.jx = zext i32 %i.jv to i64                   ; 3 uses
  %i.jy = icmp ugt i64 %i.jw, %i.jx
  br i1 %i.jy, label %.lr.ph4742, label %.lr.ph1356._crit_edge

.lr.ph4742:                                       ; preds = %.lr.ph1356, %.backedge1372
  %i.jz = phi i64 [ %i.ahc, %.backedge1372 ], [ %i.jx, %.lr.ph1356 ] ; 4 uses
  %.pn = phi ptr [ %i.ka, %.backedge1372 ], [ %i.jk, %.lr.ph1356 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.kb = load ptr, ptr %i.bi, align 8, !noalias !1374, !nonnull !4, !noundef !4
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %i.kb, i64 %i.jz ; 7 uses
  %i.kd = load i32, ptr %i.kc, align 8, !range !16, !noalias !1374, !noundef !4
  switch i32 %i.kd, label %default.unreachable [
    i32 0, label %bb.cb
    i32 1, label %bb.cc
    i32 2, label %bb.cd
    i32 3, label %.backedge361
    i32 4, label %.backedge361
    i32 5, label %.backedge361
    i32 6, label %.backedge361
    i32 7, label %.backedge361
    i32 8, label %bb.io
  ]

.lr.ph1356._crit_edge:                            ; preds = %.lr.ph1356, %.backedge1372
  %.lcssa4460 = phi i64 [ %i.ahb, %.backedge1372 ], [ %i.jw, %.lr.ph1356 ]
  %.lcssa4412 = phi i64 [ %i.ahc, %.backedge1372 ], [ %i.jx, %.lr.ph1356 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa4412, i64 noundef %.lcssa4460, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !noalias !1374
  unreachable

bb.cb:                                            ; preds = %.lr.ph4742
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 4 ; 2 uses
  %i.kf = tail call noundef zeroext i1 @_RNvMs6_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson3nfaNtB5_10Transition7matches(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ke, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef %i.ag, i64 noundef %.sroa.0.02281358), !noalias !1374
  br i1 %i.kf, label %bb.ce, label %.backedge361

bb.cc:                                            ; preds = %.lr.ph4742
  br i1 %i.jn, label %bb.ev, label %.backedge361

bb.cd:                                            ; preds = %.lr.ph4742
  br i1 %i.jn, label %bb.ha, label %.backedge361

bb.ce:                                            ; preds = %bb.cb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.kg = load i64, ptr %i.bm, align 8, !alias.scope !1375, !noalias !1374, !noundef !4
  %i.kh = mul i64 %i.kg, %i.jz                    ; 4 uses
  %i.ki = load i64, ptr %i.w, align 8, !alias.scope !1375, !noalias !1374, !noundef !4 ; 5 uses
  %i.kj = add i64 %i.kh, %i.ki                    ; 3 uses
  %i.kk = load i64, ptr %i.bn, align 8, !alias.scope !1375, !noalias !1374, !noundef !4 ; 2 uses
  %i.kl = icmp ult i64 %i.kj, %i.kh
  %.not.i70 = icmp ugt i64 %i.kj, %i.kk
  %or.cond.i71 = or i1 %i.kl, %.not.i70
  br i1 %or.cond.i71, label %bb.cf, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit72, !prof !12

bb.cf:                                            ; preds = %bb.ce
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.kh, i64 noundef %i.kj, i64 noundef %i.kk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1376
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit72: ; preds = %bb.ce
  %i.km = load ptr, ptr %i.bo, align 8, !alias.scope !1375, !noalias !1374, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kh ; 3 uses
  %i.ko = load i32, ptr %i.ke, align 4, !noalias !1374, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %i.kp = load i64, ptr %i.t, align 8, !alias.scope !1379, !noalias !1380, !noundef !4 ; 3 uses
  %i.kq = load i64, ptr %1, align 8, !range !15, !alias.scope !1379, !noalias !1380, !noundef !4
  %i.kr = icmp eq i64 %i.kp, %i.kq
  br i1 %i.kr, label %bb.cg, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73

bb.cg:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit72
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1380
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit72, %bb.cg
  %i.ks = load ptr, ptr %i.bc, align 8, !alias.scope !1379, !noalias !1380, !nonnull !4, !noundef !4
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kp ; 2 uses
  store i32 0, ptr %i.kt, align 8, !noalias !1381
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  store i32 %i.ko, ptr %.sroa.4208.0..sroa_idx, align 4, !noalias !1381
  %i.ku = add i64 %i.kp, 1                        ; 3 uses
  store i64 %i.ku, ptr %i.t, align 8, !alias.scope !1379, !noalias !1380
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %.backedge361, label %.lr.ph1354

.lr.ph1354:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i
  %i.kw = phi i64 [ %.pr262, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i ], [ %i.ku, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73 ] ; 2 uses
  %i.kx = add nsw i64 %i.kw, -1                   ; 3 uses
  store i64 %i.kx, ptr %i.t, align 8, !alias.scope !1382, !noalias !1383
  %i.ky = load i64, ptr %1, align 8, !range !15, !alias.scope !1382, !noalias !1383, !noundef !4
  %i.kz = icmp samesign ult i64 %i.kx, %i.ky
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = load ptr, ptr %i.bc, align 8, !alias.scope !1382, !noalias !1383, !nonnull !4, !noundef !4
  %i.lb = icmp samesign ult i64 %i.kw, 576460752303423489
  tail call void @llvm.assume(i1 %i.lb)
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %i.kx ; 3 uses
  %.sroa.04.0.copyload.i17.i = load i32, ptr %i.lc, align 8, !noalias !1374
  %.sroa.45.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %.sroa.45.0.copyload.i19.i = load i32, ptr %.sroa.45.0..sroa_idx.i18.i, align 4, !noalias !1374 ; 4 uses
  %.sroa.56.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %.sroa.56.0.copyload.i21.i = load i64, ptr %.sroa.56.0..sroa_idx.i20.i, align 8, !noalias !1374
  %i.ld = trunc i32 %.sroa.04.0.copyload.i17.i to i1
  br i1 %i.ld, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.lr.ph1354
  %i.le = zext i32 %.sroa.45.0.copyload.i19.i to i64 ; 3 uses
  %i.lf = icmp samesign ugt i64 %i.ki, %i.le
  br i1 %i.lf, label %bb.et, label %bb.eu

bb.ci:                                            ; preds = %.lr.ph1354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.45.0.copyload.i19.i, ptr %i.s, align 4, !noalias !1385
  %i.lg = zext i32 %.sroa.45.0.copyload.i19.i to i64 ; 3 uses
  %i.lh = load i64, ptr %i.bs, align 8, !alias.scope !1386, !noalias !1387, !noundef !4 ; 2 uses
  %i.li = icmp ugt i64 %i.lh, %i.lg
  br i1 %i.li, label %.lr.ph1347, label %._crit_edge1348

.lr.ph1347:                                       ; preds = %bb.ci, %.backedge
  %i.lj = phi i64 [ %i.qh, %.backedge ], [ %i.lg, %bb.ci ] ; 5 uses
  %i.lk = phi i32 [ %.sroa.0.0.i.i23.be, %.backedge ], [ %.sroa.45.0.copyload.i19.i, %bb.ci ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.ll = load ptr, ptr %i.bt, align 8, !alias.scope !1389, !noalias !1387, !nonnull !4, !noundef !4
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lj
  %i.ln = load i32, ptr %i.lm, align 4, !noalias !1390, !noundef !4
  %i.lo = zext i32 %i.ln to i64                   ; 4 uses
  %i.lp = load i64, ptr %i.y, align 8, !alias.scope !1389, !noalias !1387, !noundef !4 ; 5 uses
  %i.lq = icmp ugt i64 %i.lp, %i.lo
  %.pre2601 = load i64, ptr %i.bu, align 8, !noalias !1387 ; 5 uses
  br i1 %i.lq, label %bb.cj, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75.thread

._crit_edge1348:                                  ; preds = %bb.ci, %.backedge
  %.lcssa689 = phi i64 [ %i.qh, %.backedge ], [ %i.lg, %bb.ci ]
  %.lcssa669 = phi i64 [ %i.qi, %.backedge ], [ %i.lh, %bb.ci ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa689, i64 noundef %.lcssa669, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1390
  unreachable

bb.cj:                                            ; preds = %.lr.ph1347
  %i.lr = icmp ugt i64 %.pre2601, %i.lo
  br i1 %i.lr, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lo, i64 noundef %.pre2601, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1390
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75: ; preds = %bb.cj
  %i.ls = load ptr, ptr %i.bv, align 8, !alias.scope !1389, !noalias !1387, !nonnull !4, !noundef !4
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lo
  %i.lu = load i32, ptr %i.lt, align 4, !noalias !1390, !noundef !4
  %i.lv = icmp eq i32 %i.lu, %i.lk
  br i1 %i.lv, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75.thread: ; preds = %.lr.ph1347, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1391
  store i64 %i.lp, ptr %i.r, align 8, !noalias !1391
  %i.lw = icmp ult i64 %.pre2601, 2305843009213693952
  tail call void @llvm.assume(i1 %i.lw), !noalias !1387
  %i.lx = icmp ult i64 %i.lp, %.pre2601
  br i1 %i.lx, label %bb.cm, label %bb.cl, !prof !9

bb.cl:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1391
  store i64 %.pre2601, ptr %i.q, align 8, !noalias !1391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1391
  store ptr %i.r, ptr %i.p, align 8, !noalias !1391
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1391
  %i.ly = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.ly, align 8, !noalias !1391
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !1391
  %i.lz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.s, ptr %i.lz, align 8, !noalias !1391
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !1391
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1387
  unreachable

bb.cm:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75.thread
  %i.ma = and i64 %i.lp, 4294967295
  %i.mb = load ptr, ptr %i.bv, align 8, !alias.scope !1388, !noalias !1387, !nonnull !4, !noundef !4
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.ma
  store i32 %i.lk, ptr %i.mc, align 4, !noalias !1387
  %i.md = zext i32 %i.lk to i64                   ; 3 uses
  %i.me = load i64, ptr %i.bs, align 8, !alias.scope !1388, !noalias !1387, !noundef !4 ; 2 uses
  %i.mf = icmp ugt i64 %i.me, %i.md
  br i1 %i.mf, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.md, i64 noundef %i.me, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1387
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i
end_hunk_5
begin_hunk_6_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit97: ; preds = %bb.ds, %bb.dw
  %.sroa.0.2.i95 = phi i8 [ %i.om, %bb.ds ], [ %spec.select.i94, %bb.dw ]
  %i.ow = trunc nuw i8 %.sroa.0.2.i95 to i1
  br i1 %i.ow, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.dx:                                            ; preds = %bb.ct
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  br i1 %.not.i147, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.jn, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.02281358, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !1402
  unreachable

bb.ea:                                            ; preds = %bb.dy
  %i.ox = load i8, ptr %i.jp, align 1, !alias.scope !1402, !noundef !4
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr @9, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !range !3, !noalias !1402, !noundef !4
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.js, label %bb.eb, label %.split281

bb.eb:                                            ; preds = %bb.ea
  %i.pc = load i8, ptr %i.jt, align 1, !alias.scope !1402, !noundef !4
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr @9, i64 %i.pd
  %i.pf = load i8, ptr %i.pe, align 1, !range !3, !noalias !1402, !noundef !4
  %i.pg = trunc nuw i8 %i.pf to i1
  %i.ph = xor i1 %i.pg, true
  br label %.split281

.split281:                                        ; preds = %bb.eb, %bb.ea
  %.sroa.02.0.i99 = phi i1 [ %i.ph, %bb.eb ], [ true, %bb.ea ]
  %spec.select.i100 = select i1 %i.pb, i1 %.sroa.02.0.i99, i1 false
  br i1 %spec.select.i100, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

.split283:                                        ; preds = %bb.ct
  %i.pi = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

.split282:                                        ; preds = %bb.ct
  %i.pk = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.ec:                                            ; preds = %bb.ct
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  br i1 %.not.i147, label %.backedge, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.jn, label %.split274, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.02281358, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28, !noalias !1403
  unreachable

.split274:                                        ; preds = %bb.ed
  %i.pm = load i8, ptr %i.jp, align 1, !alias.scope !1403, !noundef !4
  %i.pn = zext i8 %i.pm to i64
  %i.po = getelementptr inbounds nuw i8, ptr @9, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !range !3, !noalias !1403, !noundef !4
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, label %.backedge

bb.ef:                                            ; preds = %bb.ct
  br i1 %i.js, label %.split278, label %.backedge

.split279:                                        ; preds = %bb.ct
  %i.pr = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

.split273:                                        ; preds = %bb.ct
  %i.pt = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.eg:                                            ; preds = %bb.cu
  br i1 %i.jn, label %.split275, label %bb.eh

.split275:                                        ; preds = %bb.eg
  %i.pv = load i8, ptr %i.jp, align 1, !alias.scope !1396, !noalias !1404, !noundef !4
  %i.pw = load i8, ptr %i.bj, align 16, !alias.scope !1395, !noalias !1405, !noundef !4
  %i.px = icmp eq i8 %i.pv, %i.pw
  br i1 %i.px, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.eh:                                            ; preds = %bb.eg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.02281358, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !noalias !1406
  unreachable

bb.ei:                                            ; preds = %bb.cv
  br i1 %i.js, label %.split277, label %bb.ej

.split277:                                        ; preds = %bb.ei
  %i.py = load i8, ptr %i.jt, align 1, !alias.scope !1396, !noalias !1404, !noundef !4
  %i.pz = load i8, ptr %i.bj, align 16, !alias.scope !1395, !noalias !1405, !noundef !4
  %i.qa = icmp eq i8 %i.py, %i.pz
  br i1 %i.qa, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.ej:                                            ; preds = %bb.ei
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jq, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !1406
  unreachable

.split278:                                        ; preds = %bb.ef
  %i.qb = load i8, ptr %i.jt, align 1, !alias.scope !1396, !noalias !1404, !noundef !4
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr @9, i64 %i.qc
  %i.qe = load i8, ptr %i.qd, align 1, !range !3, !noalias !1407, !noundef !4
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, label %.backedge

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i: ; preds = %bb.di
  %i.qg = trunc nuw i8 %i.nk to i1
  br i1 %i.qg, label %.backedge, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

.backedge:                                        ; preds = %.thread2720..split270_crit_edge, %.split2719, %bb.en, %bb.er, %bb.dd, %bb.db, %bb.cy, %bb.cw, %bb.cu, %bb.ec, %bb.ef, %bb.da, %bb.df, %bb.cv, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit107, %bb.eo, %.split269, %.split270, %.split271, %.split272, %.split273, %.split274, %.split275, %.split276, %.split277, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit91, %.split278, %.split279, %.split280, %.split281, %.split282, %.split283, %.split284, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit97
  %.sroa.0.0.i.i23.be = phi i32 [ %i.nb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i ], [ %i.re, %bb.eo ], [ %i.qn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit107 ], [ %i.nb, %bb.dd ], [ %i.nb, %.split269 ], [ %i.nb, %.split270 ], [ %i.nb, %.split271 ], [ %i.nb, %.split272 ], [ %i.nb, %.split273 ], [ %i.nb, %.split274 ], [ %i.nb, %.split275 ], [ %i.nb, %.split276 ], [ %i.nb, %.split277 ], [ %i.nb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit91 ], [ %i.nb, %.split278 ], [ %i.nb, %.split279 ], [ %i.nb, %.split280 ], [ %i.nb, %.split281 ], [ %i.nb, %.split282 ], [ %i.nb, %.split283 ], [ %i.nb, %.split284 ], [ %i.nb, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit97 ], [ %i.nb, %bb.cv ], [ %i.nb, %bb.df ], [ %i.nb, %bb.da ], [ %i.nb, %bb.ef ], [ %i.nb, %bb.ec ], [ %i.nb, %bb.cu ], [ %i.nb, %bb.cw ], [ %i.nb, %bb.cy ], [ %i.nb, %bb.db ], [ %i.qx, %bb.er ], [ %i.qx, %bb.en ], [ %i.nb, %.split2719 ], [ %i.nb, %.thread2720..split270_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %.sroa.0.0.i.i23.be, ptr %i.s, align 4, !noalias !1408
  %i.qh = zext i32 %.sroa.0.0.i.i23.be to i64     ; 3 uses
  %i.qi = load i64, ptr %i.bs, align 8, !alias.scope !1409, !noalias !1387, !noundef !4 ; 2 uses
  %i.qj = icmp ugt i64 %i.qi, %i.qh
  br i1 %i.qj, label %.lr.ph1347, label %._crit_edge1348

bb.ek:                                            ; preds = %bb.cp
  %i.qk = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !1387, !noundef !4 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.ql, 0
  br i1 %.not10.i.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, label %bb.eo

bb.el:                                            ; preds = %bb.cp
  %i.qm = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.qn = load i32, ptr %i.qm, align 4, !noalias !1387, !noundef !4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.qp = load i32, ptr %i.qo, align 8, !noalias !1387, !noundef !4
  %i.qq = load i64, ptr %i.t, align 8, !alias.scope !1410, !noalias !1411, !noundef !4 ; 3 uses
  %i.qr = load i64, ptr %1, align 8, !range !15, !alias.scope !1410, !noalias !1411, !noundef !4
  %i.qs = icmp eq i64 %i.qq, %i.qr
  br i1 %i.qs, label %bb.em, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit107

bb.em:                                            ; preds = %bb.el
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1411
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit107

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit107: ; preds = %bb.el, %bb.em
  %i.qt = load ptr, ptr %i.bc, align 8, !alias.scope !1410, !noalias !1411, !nonnull !4, !noundef !4
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qt, i64 %i.qq ; 2 uses
  store i32 0, ptr %i.qu, align 8, !noalias !1387
  %.sroa.4211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store i32 %i.qp, ptr %.sroa.4211.0..sroa_idx, align 4, !noalias !1387
  %i.qv = add i64 %i.qq, 1
  store i64 %i.qv, ptr %i.t, align 8, !alias.scope !1410, !noalias !1411
  br label %.backedge

bb.en:                                            ; preds = %bb.cp
  %i.qw = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !noalias !1387, !noundef !4 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.qz = load i32, ptr %i.qy, align 8, !noalias !1387, !noundef !4 ; 2 uses
  %i.ra = zext i32 %i.qz to i64                   ; 2 uses
  %i.rb = icmp samesign ugt i64 %i.ki, %i.ra
  br i1 %i.rb, label %bb.ep, label %.backedge

bb.eo:                                            ; preds = %bb.ek
  %i.rc = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !1387, !nonnull !4, !noundef !4 ; 3 uses
  %i.re = load i32, ptr %i.rd, align 4, !noalias !1387, !noundef !4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rg = getelementptr [4 x i8], ptr %i.rd, i64 %i.ql
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.rf, ptr noundef %i.rg), !noalias !1387
  br label %.backedge

bb.ep:                                            ; preds = %bb.en
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ra ; 2 uses
  %i.ri = load i64, ptr %i.rh, align 8, !alias.scope !1384, !noalias !1412, !noundef !4
  %i.rj = load i64, ptr %i.t, align 8, !alias.scope !1413, !noalias !1414, !noundef !4 ; 3 uses
  %i.rk = load i64, ptr %1, align 8, !range !15, !alias.scope !1413, !noalias !1414, !noundef !4
  %i.rl = icmp eq i64 %i.rj, %i.rk
  br i1 %i.rl, label %bb.eq, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit108

bb.eq:                                            ; preds = %bb.ep
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1414
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit108

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit108: ; preds = %bb.ep, %bb.eq
  %i.rm = load ptr, ptr %i.bc, align 8, !alias.scope !1413, !noalias !1414, !nonnull !4, !noundef !4
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.rm, i64 %i.rj ; 3 uses
  store i32 1, ptr %i.rn, align 8, !noalias !1387
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 %i.qz, ptr %.sroa.4214.0..sroa_idx, align 4, !noalias !1387
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i64 %i.ri, ptr %.sroa.5215.0..sroa_idx, align 8, !noalias !1387
  %i.ro = add i64 %i.rj, 1
  store i64 %i.ro, ptr %i.t, align 8, !alias.scope !1413, !noalias !1414
  br i1 %.not.i32.i, label %bb.es, label %bb.er, !prof !7

bb.er:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit108
  store i64 %i.jr, ptr %i.rh, align 8, !alias.scope !1384, !noalias !1412
  br label %.backedge

bb.es:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit108
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1387
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i: ; preds = %.thread2720..split270_crit_edge, %.thread2720, %bb.dx, %bb.dq, %bb.dd, %bb.cy, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i.i, %bb.ek, %.split269, %.split270, %.split271, %.split272, %.split273, %.split274, %.split275, %.split276, %.split277, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit91, %.split278, %.split279, %.split280, %.split281, %.split282, %.split283, %.split284, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit97, %.split2719, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit78, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit, %bb.et
  %.pr262 = load i64, ptr %i.t, align 8, !alias.scope !1382, !noalias !1383 ; 2 uses
  %i.rp = icmp eq i64 %.pr262, 0
  br i1 %i.rp, label %.backedge361, label %.lr.ph1354

bb.et:                                            ; preds = %bb.ch
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.le
  store i64 %.sroa.56.0.copyload.i21.i, ptr %i.rq, align 8, !alias.scope !1378, !noalias !1415
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i

bb.eu:                                            ; preds = %bb.ch
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.le, i64 noundef range(i64 0, 1152921504606846976) %i.ki, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !1374
  unreachable

bb.ev:                                            ; preds = %bb.cc
  %i.rr = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.rs = load i8, ptr %i.jp, align 1, !noalias !1374, !noundef !4 ; 2 uses
  %.val44 = load ptr, ptr %i.rr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.rt = getelementptr i8, ptr %i.kc, i64 16
  %.val45 = load i64, ptr %i.rt, align 8, !noundef !4 ; 2 uses
  %.idx4747 = shl nuw nsw i64 %.val45, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %.val44, i64 %.idx4747
  %i.rv = icmp eq i64 %.val45, 0
  br i1 %i.rv, label %.backedge361, label %.lr.ph4740

bb.ew:                                            ; preds = %bb.ex
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1094738, i64 8 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.ru
  br i1 %i.rx, label %.backedge361, label %.lr.ph4740

.lr.ph4740:                                       ; preds = %bb.ev, %bb.ew
  %.sroa.01.0.i1094738 = phi ptr [ %i.rw, %bb.ew ], [ %.val44, %bb.ev ] ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1094738, i64 4
  %i.rz = load i8, ptr %i.ry, align 4, !noundef !4
  %i.sa = icmp ugt i8 %i.rz, %i.rs
  br i1 %i.sa, label %.backedge361, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph4740
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i1094738, i64 5
  %i.sc = load i8, ptr %i.sb, align 1, !noundef !4
  %.not.i110 = icmp ugt i8 %i.rs, %i.sc
  br i1 %.not.i110, label %bb.ew, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.sd = load i32, ptr %.sroa.01.0.i1094738, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.se = load i64, ptr %i.bm, align 8, !alias.scope !1416, !noalias !1374, !noundef !4
  %i.sf = mul i64 %i.se, %i.jz                    ; 4 uses
  %i.sg = load i64, ptr %i.w, align 8, !alias.scope !1416, !noalias !1374, !noundef !4 ; 5 uses
  %i.sh = add i64 %i.sf, %i.sg                    ; 3 uses
  %i.si = load i64, ptr %i.bn, align 8, !alias.scope !1416, !noalias !1374, !noundef !4 ; 2 uses
  %i.sj = icmp ult i64 %i.sh, %i.sf
  %.not.i113 = icmp ugt i64 %i.sh, %i.si
  %or.cond.i114 = or i1 %i.sj, %.not.i113
  br i1 %or.cond.i114, label %bb.ez, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit115, !prof !12

bb.ez:                                            ; preds = %bb.ey
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.sf, i64 noundef %i.sh, i64 noundef %i.si, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1417
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit115: ; preds = %bb.ey
  %i.sk = load ptr, ptr %i.bo, align 8, !alias.scope !1416, !noalias !1374, !nonnull !4, !noundef !4
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sf ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1419)
  %i.sm = load i64, ptr %i.t, align 8, !alias.scope !1420, !noalias !1421, !noundef !4 ; 3 uses
  %i.sn = load i64, ptr %1, align 8, !range !15, !alias.scope !1420, !noalias !1421, !noundef !4
  %i.so = icmp eq i64 %i.sm, %i.sn
  br i1 %i.so, label %bb.fa, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116

bb.fa:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit115
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1421
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit115, %bb.fa
  %i.sp = load ptr, ptr %i.bc, align 8, !alias.scope !1420, !noalias !1421, !nonnull !4, !noundef !4
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sp, i64 %i.sm ; 2 uses
  store i32 0, ptr %i.sq, align 8, !noalias !1422
  %.sroa.4205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  store i32 %i.sd, ptr %.sroa.4205.0..sroa_idx, align 4, !noalias !1422
  %i.sr = add i64 %i.sm, 1                        ; 3 uses
  store i64 %i.sr, ptr %i.t, align 8, !alias.scope !1420, !noalias !1421
  %i.ss = icmp eq i64 %i.sr, 0
  br i1 %i.ss, label %.backedge361, label %.lr.ph1344

.lr.ph1344:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i
  %i.st = phi i64 [ %.pr287, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i ], [ %i.sr, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116 ] ; 2 uses
  %i.su = add nsw i64 %i.st, -1                   ; 3 uses
  store i64 %i.su, ptr %i.t, align 8, !alias.scope !1423, !noalias !1424
  %i.sv = load i64, ptr %1, align 8, !range !15, !alias.scope !1423, !noalias !1424, !noundef !4
  %i.sw = icmp samesign ult i64 %i.su, %i.sv
  tail call void @llvm.assume(i1 %i.sw)
  %i.sx = load ptr, ptr %i.bc, align 8, !alias.scope !1423, !noalias !1424, !nonnull !4, !noundef !4
  %i.sy = icmp samesign ult i64 %i.st, 576460752303423489
  tail call void @llvm.assume(i1 %i.sy)
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.sx, i64 %i.su ; 3 uses
  %.sroa.04.0.copyload.i11.i = load i32, ptr %i.sz, align 8, !noalias !1374
  %.sroa.45.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %.sroa.45.0.copyload.i13.i = load i32, ptr %.sroa.45.0..sroa_idx.i12.i, align 4, !noalias !1374 ; 4 uses
  %.sroa.56.0..sroa_idx.i14.i = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %.sroa.56.0.copyload.i15.i = load i64, ptr %.sroa.56.0..sroa_idx.i14.i, align 8, !noalias !1374
  %i.ta = trunc i32 %.sroa.04.0.copyload.i11.i to i1
  br i1 %i.ta, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %.lr.ph1344
  %i.tb = zext i32 %.sroa.45.0.copyload.i13.i to i64 ; 3 uses
  %i.tc = icmp samesign ugt i64 %i.sg, %i.tb
  br i1 %i.tc, label %bb.gy, label %bb.gz

bb.fc:                                            ; preds = %.lr.ph1344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %.sroa.45.0.copyload.i13.i, ptr %i.o, align 4, !noalias !1426
  %i.td = zext i32 %.sroa.45.0.copyload.i13.i to i64 ; 3 uses
  %i.te = load i64, ptr %i.bs, align 8, !alias.scope !1427, !noalias !1428, !noundef !4 ; 2 uses
  %i.tf = icmp ugt i64 %i.te, %i.td
  br i1 %i.tf, label %.lr.ph1337, label %._crit_edge1338

.lr.ph1337:                                       ; preds = %bb.fc, %.backedge355
  %i.tg = phi i64 [ %i.ye, %.backedge355 ], [ %i.td, %bb.fc ] ; 5 uses
  %i.th = phi i32 [ %.sroa.0.0.i23.i.be, %.backedge355 ], [ %.sroa.45.0.copyload.i13.i, %bb.fc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.ti = load ptr, ptr %i.bt, align 8, !alias.scope !1430, !noalias !1428, !nonnull !4, !noundef !4
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tg
  %i.tk = load i32, ptr %i.tj, align 4, !noalias !1431, !noundef !4
  %i.tl = zext i32 %i.tk to i64                   ; 4 uses
  %i.tm = load i64, ptr %i.y, align 8, !alias.scope !1430, !noalias !1428, !noundef !4 ; 5 uses
  %i.tn = icmp ugt i64 %i.tm, %i.tl
  %.pre2600 = load i64, ptr %i.bu, align 8, !noalias !1428 ; 5 uses
  br i1 %i.tn, label %bb.fd, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118.thread

._crit_edge1338:                                  ; preds = %bb.fc, %.backedge355
  %.lcssa602 = phi i64 [ %i.ye, %.backedge355 ], [ %i.td, %bb.fc ]
  %.lcssa589 = phi i64 [ %i.yf, %.backedge355 ], [ %i.te, %bb.fc ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa602, i64 noundef %.lcssa589, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1431
  unreachable

bb.fd:                                            ; preds = %.lr.ph1337
  %i.to = icmp ugt i64 %.pre2600, %i.tl
  br i1 %i.to, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.tl, i64 noundef %.pre2600, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1431
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118: ; preds = %bb.fd
  %i.tp = load ptr, ptr %i.bv, align 8, !alias.scope !1430, !noalias !1428, !nonnull !4, !noundef !4
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.tl
  %i.tr = load i32, ptr %i.tq, align 4, !noalias !1431, !noundef !4
  %i.ts = icmp eq i32 %i.tr, %i.th
  br i1 %i.ts, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit31, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118.thread: ; preds = %.lr.ph1337, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1432
  store i64 %i.tm, ptr %i.n, align 8, !noalias !1432
  %i.tt = icmp ult i64 %.pre2600, 2305843009213693952
  tail call void @llvm.assume(i1 %i.tt), !noalias !1428
  %i.tu = icmp ult i64 %i.tm, %.pre2600
  br i1 %i.tu, label %bb.fg, label %bb.ff, !prof !9

bb.ff:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1432
  store i64 %.pre2600, ptr %i.m, align 8, !noalias !1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1432
  store ptr %i.n, ptr %i.l, align 8, !noalias !1432
  %.sroa.43.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i27, align 8, !noalias !1432
  %i.tv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.tv, align 8, !noalias !1432
  %.sroa.47.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i28, align 8, !noalias !1432
  %i.tw = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.o, ptr %i.tw, align 8, !noalias !1432
  %.sroa.411.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i29, align 8, !noalias !1432
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1428
  unreachable

bb.fg:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit118.thread
  %i.tx = and i64 %i.tm, 4294967295
  %i.ty = load ptr, ptr %i.bv, align 8, !alias.scope !1429, !noalias !1428, !nonnull !4, !noundef !4
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tx
  store i32 %i.th, ptr %i.tz, align 4, !noalias !1428
  %i.ua = zext i32 %i.th to i64                   ; 3 uses
  %i.ub = load i64, ptr %i.bs, align 8, !alias.scope !1429, !noalias !1428, !noundef !4 ; 2 uses
  %i.uc = icmp ugt i64 %i.ub, %i.ua
  br i1 %i.uc, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ua, i64 noundef %i.ub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1428
  unreachable

end_hunk_6
begin_hunk_7_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr @9, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !range !3, !noalias !1442, !noundef !4
  %i.wo = trunc nuw i8 %i.wn to i1
  br i1 %i.js, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.wp = load i8, ptr %i.jt, align 1, !alias.scope !1442, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, ptr noundef nonnull align 1 dereferenceable(256) @9, i64 256, i1 false), !noalias !1442
  %i.wq = zext i8 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.wq
  %i.ws = load i8, ptr %i.wr, align 1, !range !3, !noalias !1442, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1442
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.0.1.i136 = phi i8 [ %i.ws, %bb.gg ], [ 0, %bb.gf ]
  %spec.select.i137 = select i1 %i.wo, i8 0, i8 %.sroa.0.1.i136
  br label %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit140

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit140: ; preds = %bb.ge, %bb.gh
  %.sroa.0.2.i138 = phi i8 [ %i.wj, %bb.ge ], [ %spec.select.i137, %bb.gh ]
  %i.wt = trunc nuw i8 %.sroa.0.2.i138 to i1
  br i1 %i.wt, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

bb.gi:                                            ; preds = %bb.fn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  br i1 %.not.i147, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.wu = load i8, ptr %i.jp, align 1, !alias.scope !1443, !noundef !4
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr @9, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !range !3, !noalias !1443, !noundef !4
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.js, label %bb.gk, label %.split306

bb.gk:                                            ; preds = %bb.gj
  %i.wz = load i8, ptr %i.jt, align 1, !alias.scope !1443, !noundef !4
  %i.xa = zext i8 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr @9, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !range !3, !noalias !1443, !noundef !4
  %i.xd = trunc nuw i8 %i.xc to i1
  %i.xe = xor i1 %i.xd, true
  br label %.split306

.split306:                                        ; preds = %bb.gk, %bb.gj
  %.sroa.02.0.i142 = phi i1 [ %i.xe, %bb.gk ], [ true, %bb.gj ]
  %spec.select.i143 = select i1 %i.wy, i1 %.sroa.02.0.i142, i1 false
  br i1 %spec.select.i143, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

.split308:                                        ; preds = %bb.fn
  %i.xf = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

.split307:                                        ; preds = %bb.fn
  %i.xh = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.xi = trunc nuw i8 %i.xh to i1
  br i1 %i.xi, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

bb.gl:                                            ; preds = %bb.fn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  br i1 %.not.i147, label %.backedge355, label %.split299

.split299:                                        ; preds = %bb.gl
  %i.xj = load i8, ptr %i.jp, align 1, !alias.scope !1444, !noundef !4
  %i.xk = zext i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr @9, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !range !3, !noalias !1444, !noundef !4
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i, label %.backedge355

bb.gm:                                            ; preds = %bb.fn
  br i1 %i.js, label %.split303, label %.backedge355

.split304:                                        ; preds = %bb.fn
  %i.xo = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.xp = trunc nuw i8 %i.xo to i1
  br i1 %i.xp, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

.split298:                                        ; preds = %bb.fn
  %i.xq = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.xr = trunc nuw i8 %i.xq to i1
  br i1 %i.xr, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

.split300:                                        ; preds = %bb.fo
  %i.xs = load i8, ptr %i.jp, align 1, !alias.scope !1437, !noalias !1445, !noundef !4
  %i.xt = load i8, ptr %i.bj, align 16, !alias.scope !1436, !noalias !1446, !noundef !4
  %i.xu = icmp eq i8 %i.xs, %i.xt
  br i1 %i.xu, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

bb.gn:                                            ; preds = %bb.fp
  br i1 %i.js, label %.split302, label %bb.go

.split302:                                        ; preds = %bb.gn
  %i.xv = load i8, ptr %i.jt, align 1, !alias.scope !1437, !noalias !1445, !noundef !4
  %i.xw = load i8, ptr %i.bj, align 16, !alias.scope !1436, !noalias !1446, !noundef !4
  %i.xx = icmp eq i8 %i.xv, %i.xw
  br i1 %i.xx, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

bb.go:                                            ; preds = %bb.gn
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jq, i64 noundef range(i64 0, -9223372036854775808) %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !1447
  unreachable

.split303:                                        ; preds = %bb.gm
  %i.xy = load i8, ptr %i.jt, align 1, !alias.scope !1437, !noalias !1445, !noundef !4
  %i.xz = zext i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr @9, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !range !3, !noalias !1448, !noundef !4
  %i.yc = trunc nuw i8 %i.yb to i1
  br i1 %i.yc, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i, label %.backedge355

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i: ; preds = %bb.fz
  %i.yd = trunc nuw i8 %i.vh to i1
  br i1 %i.yd, label %.backedge355, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

.backedge355:                                     ; preds = %.thread2726..split295_crit_edge, %.split2725, %bb.gs, %bb.gw, %bb.fv, %bb.ft, %bb.fr, %bb.fq, %bb.fo, %bb.gl, %bb.gm, %bb.fs, %bb.fx, %bb.fp, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit150, %bb.gt, %.split294, %.split295, %.split296, %.split297, %.split298, %.split299, %.split300, %.split301, %.split302, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit134, %.split303, %.split304, %.split305, %.split306, %.split307, %.split308, %.split309, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit140
  %.sroa.0.0.i23.i.be = phi i32 [ %i.uy, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i ], [ %i.zb, %bb.gt ], [ %i.yk, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit150 ], [ %i.uy, %bb.fv ], [ %i.uy, %.split294 ], [ %i.uy, %.split295 ], [ %i.uy, %.split296 ], [ %i.uy, %.split297 ], [ %i.uy, %.split298 ], [ %i.uy, %.split299 ], [ %i.uy, %.split300 ], [ %i.uy, %.split301 ], [ %i.uy, %.split302 ], [ %i.uy, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit134 ], [ %i.uy, %.split303 ], [ %i.uy, %.split304 ], [ %i.uy, %.split305 ], [ %i.uy, %.split306 ], [ %i.uy, %.split307 ], [ %i.uy, %.split308 ], [ %i.uy, %.split309 ], [ %i.uy, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit140 ], [ %i.uy, %bb.fp ], [ %i.uy, %bb.fx ], [ %i.uy, %bb.fs ], [ %i.uy, %bb.gm ], [ %i.uy, %bb.gl ], [ %i.uy, %bb.fo ], [ %i.uy, %bb.fq ], [ %i.uy, %bb.fr ], [ %i.uy, %bb.ft ], [ %i.yu, %bb.gw ], [ %i.yu, %bb.gs ], [ %i.uy, %.split2725 ], [ %i.uy, %.thread2726..split295_crit_edge ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i32 %.sroa.0.0.i23.i.be, ptr %i.o, align 4, !noalias !1449
  %i.ye = zext i32 %.sroa.0.0.i23.i.be to i64     ; 3 uses
  %i.yf = load i64, ptr %i.bs, align 8, !alias.scope !1450, !noalias !1428, !noundef !4 ; 2 uses
  %i.yg = icmp ugt i64 %i.yf, %i.ye
  br i1 %i.yg, label %.lr.ph1337, label %._crit_edge1338

bb.gp:                                            ; preds = %bb.fj
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.yi = load i64, ptr %i.yh, align 8, !noalias !1428, !noundef !4 ; 2 uses
  %.not10.i25.i = icmp eq i64 %i.yi, 0
  br i1 %.not10.i25.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i, label %bb.gt

bb.gq:                                            ; preds = %bb.fj
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.yk = load i32, ptr %i.yj, align 4, !noalias !1428, !noundef !4
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.ym = load i32, ptr %i.yl, align 8, !noalias !1428, !noundef !4
  %i.yn = load i64, ptr %i.t, align 8, !alias.scope !1451, !noalias !1452, !noundef !4 ; 3 uses
  %i.yo = load i64, ptr %1, align 8, !range !15, !alias.scope !1451, !noalias !1452, !noundef !4
  %i.yp = icmp eq i64 %i.yn, %i.yo
  br i1 %i.yp, label %bb.gr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit150

bb.gr:                                            ; preds = %bb.gq
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1452
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit150

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit150: ; preds = %bb.gq, %bb.gr
  %i.yq = load ptr, ptr %i.bc, align 8, !alias.scope !1451, !noalias !1452, !nonnull !4, !noundef !4
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.yq, i64 %i.yn ; 2 uses
  store i32 0, ptr %i.yr, align 8, !noalias !1428
  %.sroa.4217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  store i32 %i.ym, ptr %.sroa.4217.0..sroa_idx, align 4, !noalias !1428
  %i.ys = add i64 %i.yn, 1
  store i64 %i.ys, ptr %i.t, align 8, !alias.scope !1451, !noalias !1452
  br label %.backedge355

bb.gs:                                            ; preds = %bb.fj
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !noalias !1428, !noundef !4 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.yw = load i32, ptr %i.yv, align 8, !noalias !1428, !noundef !4 ; 2 uses
  %i.yx = zext i32 %i.yw to i64                   ; 2 uses
  %i.yy = icmp samesign ugt i64 %i.sg, %i.yx
  br i1 %i.yy, label %bb.gu, label %.backedge355

bb.gt:                                            ; preds = %bb.gp
  %i.yz = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !noalias !1428, !nonnull !4, !noundef !4 ; 3 uses
  %i.zb = load i32, ptr %i.za, align 4, !noalias !1428, !noundef !4
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 4
  %i.zd = getelementptr [4 x i8], ptr %i.za, i64 %i.yi
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.zc, ptr noundef %i.zd), !noalias !1428
  br label %.backedge355

bb.gu:                                            ; preds = %bb.gs
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.yx ; 2 uses
  %i.zf = load i64, ptr %i.ze, align 8, !alias.scope !1425, !noalias !1453, !noundef !4
  %i.zg = load i64, ptr %i.t, align 8, !alias.scope !1454, !noalias !1455, !noundef !4 ; 3 uses
  %i.zh = load i64, ptr %1, align 8, !range !15, !alias.scope !1454, !noalias !1455, !noundef !4
  %i.zi = icmp eq i64 %i.zg, %i.zh
  br i1 %i.zi, label %bb.gv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit151

bb.gv:                                            ; preds = %bb.gu
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1455
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit151

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit151: ; preds = %bb.gu, %bb.gv
  %i.zj = load ptr, ptr %i.bc, align 8, !alias.scope !1454, !noalias !1455, !nonnull !4, !noundef !4
  %i.zk = getelementptr inbounds nuw [16 x i8], ptr %i.zj, i64 %i.zg ; 3 uses
  store i32 1, ptr %i.zk, align 8, !noalias !1428
  %.sroa.4220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  store i32 %i.yw, ptr %.sroa.4220.0..sroa_idx, align 4, !noalias !1428
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store i64 %i.zf, ptr %.sroa.5221.0..sroa_idx, align 8, !noalias !1428
  %i.zl = add i64 %i.zg, 1
  store i64 %i.zl, ptr %i.t, align 8, !alias.scope !1454, !noalias !1455
  br i1 %.not.i32.i, label %bb.gx, label %bb.gw, !prof !7

bb.gw:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit151
  store i64 %i.jr, ptr %i.ze, align 8, !alias.scope !1425, !noalias !1453
  br label %.backedge355

bb.gx:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit151
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1428
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i: ; preds = %.thread2726..split295_crit_edge, %.thread2726, %bb.gi, %bb.fv, %bb.fr, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i26.i, %bb.gp, %.split294, %.split295, %.split296, %.split297, %.split298, %.split299, %.split300, %.split301, %.split302, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit134, %.split303, %.split304, %.split305, %.split306, %.split307, %.split308, %.split309, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit140, %.split2725, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit121, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit31, %bb.gy
  %.pr287 = load i64, ptr %i.t, align 8, !alias.scope !1423, !noalias !1424 ; 2 uses
  %i.zm = icmp eq i64 %.pr287, 0
  br i1 %i.zm, label %.backedge361, label %.lr.ph1344

bb.gy:                                            ; preds = %bb.fb
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.tb
  store i64 %.sroa.56.0.copyload.i15.i, ptr %i.zn, align 8, !alias.scope !1419, !noalias !1456
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i

bb.gz:                                            ; preds = %bb.fb
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.tb, i64 noundef range(i64 0, 1152921504606846976) %i.sg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !1374
  unreachable

bb.ha:                                            ; preds = %bb.cd
  %i.zo = load i8, ptr %i.jp, align 1, !noalias !1374, !noundef !4
  %i.zp = zext i8 %i.zo to i64                    ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !noalias !1374, !noundef !4 ; 2 uses
  %i.zs = icmp ugt i64 %i.zr, %i.zp
  br i1 %i.zs, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  %i.zt = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.zu = load ptr, ptr %i.zt, align 8, !noalias !1374, !nonnull !4, !noundef !4
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %i.zu, i64 %i.zp
  %i.zw = load i32, ptr %i.zv, align 4, !noalias !1374, !noundef !4 ; 2 uses
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %.backedge361, label %bb.hd

bb.hc:                                            ; preds = %bb.ha
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.zp, i64 noundef %i.zr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !1374
  unreachable

bb.hd:                                            ; preds = %bb.hb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.zy = load i64, ptr %i.bm, align 8, !alias.scope !1457, !noalias !1374, !noundef !4
  %i.zz = mul i64 %i.zy, %i.jz                    ; 4 uses
  %i.aaa = load i64, ptr %i.w, align 8, !alias.scope !1457, !noalias !1374, !noundef !4 ; 5 uses
  %i.aab = add i64 %i.zz, %i.aaa                  ; 3 uses
  %i.aac = load i64, ptr %i.bn, align 8, !alias.scope !1457, !noalias !1374, !noundef !4 ; 2 uses
  %i.aad = icmp ult i64 %i.aab, %i.zz
  %.not.i152 = icmp ugt i64 %i.aab, %i.aac
  %or.cond.i153 = or i1 %i.aad, %.not.i152
  br i1 %or.cond.i153, label %bb.he, label %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit154, !prof !12

bb.he:                                            ; preds = %bb.hd
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.zz, i64 noundef %i.aab, i64 noundef %i.aac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28, !noalias !1458
  unreachable

_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit154: ; preds = %bb.hd
  %i.aae = load ptr, ptr %i.bo, align 8, !alias.scope !1457, !noalias !1374, !nonnull !4, !noundef !4
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %i.zz ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.aag = load i64, ptr %i.t, align 8, !alias.scope !1461, !noalias !1462, !noundef !4 ; 3 uses
  %i.aah = load i64, ptr %1, align 8, !range !15, !alias.scope !1461, !noalias !1462, !noundef !4
  %i.aai = icmp eq i64 %i.aag, %i.aah
  br i1 %i.aai, label %bb.hf, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155

bb.hf:                                            ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit154
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1462
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155: ; preds = %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit154, %bb.hf
  %i.aaj = load ptr, ptr %i.bc, align 8, !alias.scope !1461, !noalias !1462, !nonnull !4, !noundef !4
  %i.aak = getelementptr inbounds nuw [16 x i8], ptr %i.aaj, i64 %i.aag ; 2 uses
  store i32 0, ptr %i.aak, align 8, !noalias !1463
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aak, i64 4
  store i32 %i.zw, ptr %.sroa.4202.0..sroa_idx, align 4, !noalias !1463
  %i.aal = add i64 %i.aag, 1                      ; 3 uses
  store i64 %i.aal, ptr %i.t, align 8, !alias.scope !1461, !noalias !1462
  %i.aam = icmp eq i64 %i.aal, 0
  br i1 %i.aam, label %.backedge361, label %.lr.ph1334

.lr.ph1334:                                       ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i
  %i.aan = phi i64 [ %.pr310, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i ], [ %i.aal, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155 ] ; 2 uses
  %i.aao = add nsw i64 %i.aan, -1                 ; 3 uses
  store i64 %i.aao, ptr %i.t, align 8, !alias.scope !1464, !noalias !1465
  %i.aap = load i64, ptr %1, align 8, !range !15, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.aaq = icmp samesign ult i64 %i.aao, %i.aap
  tail call void @llvm.assume(i1 %i.aaq)
  %i.aar = load ptr, ptr %i.bc, align 8, !alias.scope !1464, !noalias !1465, !nonnull !4, !noundef !4
  %i.aas = icmp samesign ult i64 %i.aan, 576460752303423489
  tail call void @llvm.assume(i1 %i.aas)
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %i.aar, i64 %i.aao ; 3 uses
  %.sroa.04.0.copyload.i.i = load i32, ptr %i.aat, align 8, !noalias !1374
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %.sroa.45.0.copyload.i.i = load i32, ptr %.sroa.45.0..sroa_idx.i.i, align 4, !noalias !1374 ; 4 uses
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %.sroa.56.0.copyload.i.i = load i64, ptr %.sroa.56.0..sroa_idx.i.i, align 8, !noalias !1374
  %i.aau = trunc i32 %.sroa.04.0.copyload.i.i to i1
  br i1 %i.aau, label %bb.hg, label %.split1326

bb.hg:                                            ; preds = %.lr.ph1334
  %i.aav = zext i32 %.sroa.45.0.copyload.i.i to i64 ; 3 uses
  %i.aaw = icmp samesign ugt i64 %i.aaa, %i.aav
  br i1 %i.aaw, label %bb.im, label %bb.in

.split1326:                                       ; preds = %.lr.ph1334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %.sroa.45.0.copyload.i.i, ptr %i.k, align 4, !noalias !1467
  %i.aax = zext i32 %.sroa.45.0.copyload.i.i to i64 ; 3 uses
  %i.aay = load i64, ptr %i.bs, align 8, !alias.scope !1468, !noalias !1469, !noundef !4 ; 2 uses
  %i.aaz = icmp ugt i64 %i.aay, %i.aax
  br i1 %i.aaz, label %.lr.ph1328, label %.split1326._crit_edge

.lr.ph1328:                                       ; preds = %.split1326, %.backedge356
  %i.aba = phi i64 [ %i.afo, %.backedge356 ], [ %i.aax, %.split1326 ] ; 5 uses
  %i.abb = phi i32 [ %.sroa.0.0.i31.i.be, %.backedge356 ], [ %.sroa.45.0.copyload.i.i, %.split1326 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.abc = load ptr, ptr %i.bt, align 8, !alias.scope !1471, !noalias !1469, !nonnull !4, !noundef !4
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.abc, i64 %i.aba
  %i.abe = load i32, ptr %i.abd, align 4, !noalias !1472, !noundef !4
  %i.abf = zext i32 %i.abe to i64                 ; 4 uses
  %i.abg = load i64, ptr %i.y, align 8, !alias.scope !1471, !noalias !1469, !noundef !4 ; 5 uses
  %i.abh = icmp ugt i64 %i.abg, %i.abf
  %.pre2599 = load i64, ptr %i.bu, align 8, !noalias !1469 ; 5 uses
  br i1 %i.abh, label %bb.hh, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157.thread

.split1326._crit_edge:                            ; preds = %.split1326, %.backedge356
  %.lcssa521 = phi i64 [ %i.afo, %.backedge356 ], [ %i.aax, %.split1326 ]
  %.lcssa508 = phi i64 [ %i.afp, %.backedge356 ], [ %i.aay, %.split1326 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa521, i64 noundef %.lcssa508, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28, !noalias !1472
  unreachable

bb.hh:                                            ; preds = %.lr.ph1328
  %i.abi = icmp ugt i64 %.pre2599, %i.abf
  br i1 %i.abi, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abf, i64 noundef %.pre2599, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28, !noalias !1472
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157: ; preds = %bb.hh
  %i.abj = load ptr, ptr %i.bv, align 8, !alias.scope !1471, !noalias !1469, !nonnull !4, !noundef !4
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abj, i64 %i.abf
  %i.abl = load i32, ptr %i.abk, align 4, !noalias !1472, !noundef !4
  %i.abm = icmp eq i32 %i.abl, %i.abb
  br i1 %i.abm, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit36, label %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157.thread

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157.thread: ; preds = %.lr.ph1328, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1473
  store i64 %i.abg, ptr %i.j, align 8, !noalias !1473
  %i.abn = icmp ult i64 %.pre2599, 2305843009213693952
  tail call void @llvm.assume(i1 %i.abn), !noalias !1469
  %i.abo = icmp ult i64 %i.abg, %.pre2599
  br i1 %i.abo, label %bb.hk, label %bb.hj, !prof !9

bb.hj:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1473
  store i64 %.pre2599, ptr %i.i, align 8, !noalias !1473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1473
  store ptr %i.j, ptr %i.h, align 8, !noalias !1473
  %.sroa.43.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i32, align 8, !noalias !1473
  %i.abp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.abp, align 8, !noalias !1473
  %.sroa.47.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i33, align 8, !noalias !1473
  %i.abq = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.k, ptr %i.abq, align 8, !noalias !1473
  %.sroa.411.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr @_RNvXs1s_NtNtCs98D8VPWzHuM_14regex_automata4util10primitivesNtB6_7StateIDNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.411.0..sroa_idx.i34, align 8, !noalias !1473
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @42, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28, !noalias !1469
  unreachable

bb.hk:                                            ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157.thread
  %i.abr = and i64 %i.abg, 4294967295
  %i.abs = load ptr, ptr %i.bv, align 8, !alias.scope !1470, !noalias !1469, !nonnull !4, !noundef !4
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abs, i64 %i.abr
  store i32 %i.abb, ptr %i.abt, align 4, !noalias !1469
  %i.abu = zext i32 %i.abb to i64                 ; 3 uses
  %i.abv = load i64, ptr %i.bs, align 8, !alias.scope !1470, !noalias !1469, !noundef !4 ; 2 uses
  %i.abw = icmp ugt i64 %i.abv, %i.abu
  br i1 %i.abw, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.abu, i64 noundef %i.abv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28, !noalias !1469
  unreachable

_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit36: ; preds = %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet8contains.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

bb.hm:                                            ; preds = %bb.hk
  %i.abx = trunc i64 %i.abg to i32
  %i.aby = load ptr, ptr %i.bt, align 8, !alias.scope !1470, !noalias !1469, !nonnull !4, !noundef !4
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %i.aby, i64 %i.abu
  store i32 %i.abx, ptr %i.abz, align 4, !noalias !1469
  %i.aca = load i64, ptr %i.y, align 8, !alias.scope !1470, !noalias !1469, !noundef !4
end_hunk_7
begin_hunk_8_@_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp:bb.a
  %i.adl = zext i8 %i.adk to i64
  %i.adm = getelementptr inbounds nuw i8, ptr @9, i64 %i.adl
  %i.adn = load i8, ptr %i.adm, align 1, !range !3, !noalias !1482, !noundef !4
  %.not3735 = icmp eq i8 %i.adj, %i.adn
  br i1 %.not3735, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit173: ; preds = %bb.hy
  %i.ado = trunc nuw i8 %i.adj to i1
  br i1 %i.ado, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i, label %.backedge356

.split328:                                        ; preds = %bb.hr
  %i.adp = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher15is_word_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.adq = trunc nuw i8 %i.adp to i1
  br i1 %i.adq, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split332:                                        ; preds = %bb.hr
  %i.adr = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher22is_word_unicode_negate(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.ads = trunc nuw i8 %i.adr to i1
  br i1 %i.ads, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

bb.hz:                                            ; preds = %bb.hr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  br i1 %i.js, label %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit179, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit179: ; preds = %bb.hz
  %i.adt = load i8, ptr %i.jp, align 1, !alias.scope !1483, !noundef !4
  %i.adu = zext i8 %i.adt to i64
  %i.adv = getelementptr inbounds nuw i8, ptr @9, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !range !3, !noalias !1483, !noundef !4
  %i.adx = trunc nuw i8 %i.adw to i1
  %i.ady = load i8, ptr %i.jt, align 1, !alias.scope !1483, !noundef !4
  %i.adz = zext i8 %i.ady to i64
  %i.aea = getelementptr inbounds nuw i8, ptr @9, i64 %i.adz
  %i.aeb = load i8, ptr %i.aea, align 1, !range !3, !noalias !1483, !noundef !4
  %i.aec = trunc nuw i8 %i.aeb to i1
  %not.347 = xor i1 %i.adx, true
  %i.aed = and i1 %not.347, %i.aec
  br i1 %i.aed, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

bb.ia:                                            ; preds = %bb.hr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.aee = load i8, ptr %i.jp, align 1, !alias.scope !1484, !noundef !4
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr @9, i64 %i.aef
  %i.aeh = load i8, ptr %i.aeg, align 1, !range !3, !noalias !1484, !noundef !4
  %i.aei = trunc nuw i8 %i.aeh to i1
  br i1 %i.js, label %bb.ib, label %.split329

bb.ib:                                            ; preds = %bb.ia
  %i.aej = load i8, ptr %i.jt, align 1, !alias.scope !1484, !noundef !4
  %i.aek = zext i8 %i.aej to i64
  %i.ael = getelementptr inbounds nuw i8, ptr @9, i64 %i.aek
  %i.aem = load i8, ptr %i.ael, align 1, !range !3, !noalias !1484, !noundef !4
  %i.aen = trunc nuw i8 %i.aem to i1
  %i.aeo = xor i1 %i.aen, true
  br label %.split329

.split329:                                        ; preds = %bb.ib, %bb.ia
  %.sroa.02.0.i181 = phi i1 [ %i.aeo, %bb.ib ], [ true, %bb.ia ]
  %spec.select.i182 = select i1 %i.aei, i1 %.sroa.02.0.i181, i1 false
  br i1 %spec.select.i182, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split331:                                        ; preds = %bb.hr
  %i.aep = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher21is_word_start_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split330:                                        ; preds = %bb.hr
  %i.aer = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_end_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split322:                                        ; preds = %bb.hr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.aet = load i8, ptr %i.jp, align 1, !alias.scope !1485, !noundef !4
  %i.aeu = zext i8 %i.aet to i64
  %i.aev = getelementptr inbounds nuw i8, ptr @9, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !range !3, !noalias !1485, !noundef !4
  %i.aex = trunc nuw i8 %i.aew to i1
  br i1 %i.aex, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i, label %.backedge356

bb.ic:                                            ; preds = %bb.hr
  br i1 %i.js, label %.split326, label %.backedge356

.split327:                                        ; preds = %bb.hr
  %i.aey = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher26is_word_start_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.aez = trunc nuw i8 %i.aey to i1
  br i1 %i.aez, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split321:                                        ; preds = %bb.hr
  %i.afa = tail call fastcc noundef i8 @_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher24is_word_end_half_unicode(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, -9223372036854775808) %i.ag, i64 noundef %i.jq)
  %i.afb = trunc nuw i8 %i.afa to i1
  br i1 %i.afb, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split323:                                        ; preds = %bb.hr
  %i.afc = load i8, ptr %i.jp, align 1, !alias.scope !1478, !noalias !1486, !noundef !4
  %i.afd = load i8, ptr %i.bj, align 16, !alias.scope !1477, !noalias !1487, !noundef !4
  %i.afe = icmp eq i8 %i.afc, %i.afd
  br i1 %i.afe, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split325:                                        ; preds = %bb.hs
  %i.aff = load i8, ptr %i.jt, align 1, !alias.scope !1478, !noalias !1486, !noundef !4
  %i.afg = load i8, ptr %i.bj, align 16, !alias.scope !1477, !noalias !1487, !noundef !4
  %i.afh = icmp eq i8 %i.aff, %i.afg
  br i1 %i.afh, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.split326:                                        ; preds = %bb.ic
  %i.afi = load i8, ptr %i.jt, align 1, !alias.scope !1478, !noalias !1486, !noundef !4
  %i.afj = zext i8 %i.afi to i64
  %i.afk = getelementptr inbounds nuw i8, ptr @9, i64 %i.afj
  %i.afl = load i8, ptr %i.afk, align 1, !range !3, !noalias !1488, !noundef !4
  %i.afm = trunc nuw i8 %i.afl to i1
  br i1 %i.afm, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i, label %.backedge356

_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i: ; preds = %bb.hx
  %i.afn = trunc nuw i8 %i.adb to i1
  br i1 %i.afn, label %.backedge356, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

.backedge356:                                     ; preds = %.split2731, %bb.ig, %bb.ik, %bb.hw, %bb.hv, %bb.ht, %bb.ic, %bb.hu, %bb.hs, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit189, %bb.ih, %.split318, %.split319, %.split320, %.split321, %.split322, %.split323, %.split324, %.split325, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit173, %.split326, %.split327, %.split328, %.split329, %.split330, %.split331, %.split332, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit179
  %.sroa.0.0.i31.i.be = phi i32 [ %i.acs, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i ], [ %i.agl, %bb.ih ], [ %i.afu, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit189 ], [ %i.acs, %bb.hw ], [ %i.acs, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit179 ], [ %i.acs, %.split318 ], [ %i.acs, %.split319 ], [ %i.acs, %.split320 ], [ %i.acs, %.split321 ], [ %i.acs, %.split322 ], [ %i.acs, %.split323 ], [ %i.acs, %.split324 ], [ %i.acs, %.split325 ], [ %i.acs, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit173 ], [ %i.acs, %.split326 ], [ %i.acs, %.split327 ], [ %i.acs, %.split328 ], [ %i.acs, %.split329 ], [ %i.acs, %.split330 ], [ %i.acs, %.split331 ], [ %i.acs, %.split332 ], [ %i.acs, %bb.hs ], [ %i.acs, %bb.hu ], [ %i.acs, %bb.ic ], [ %i.acs, %bb.ht ], [ %i.acs, %bb.hv ], [ %i.age, %bb.ik ], [ %i.age, %bb.ig ], [ %i.acs, %.split2731 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %.sroa.0.0.i31.i.be, ptr %i.k, align 4, !noalias !1489
  %i.afo = zext i32 %.sroa.0.0.i31.i.be to i64    ; 3 uses
  %i.afp = load i64, ptr %i.bs, align 8, !alias.scope !1490, !noalias !1469, !noundef !4 ; 2 uses
  %i.afq = icmp ugt i64 %i.afp, %i.afo
  br i1 %i.afq, label %.lr.ph1328, label %.split1326._crit_edge

bb.id:                                            ; preds = %bb.hn
  %i.afr = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.afs = load i64, ptr %i.afr, align 8, !noalias !1469, !noundef !4 ; 2 uses
  %.not10.i33.i = icmp eq i64 %i.afs, 0
  br i1 %.not10.i33.i, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i, label %bb.ih

bb.ie:                                            ; preds = %bb.hn
  %i.aft = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  %i.afu = load i32, ptr %i.aft, align 4, !noalias !1469, !noundef !4
  %i.afv = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.afw = load i32, ptr %i.afv, align 8, !noalias !1469, !noundef !4
  %i.afx = load i64, ptr %i.t, align 8, !alias.scope !1491, !noalias !1492, !noundef !4 ; 3 uses
  %i.afy = load i64, ptr %1, align 8, !range !15, !alias.scope !1491, !noalias !1492, !noundef !4
  %i.afz = icmp eq i64 %i.afx, %i.afy
  br i1 %i.afz, label %bb.if, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit189

bb.if:                                            ; preds = %bb.ie
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1492
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit189

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit189: ; preds = %bb.ie, %bb.if
  %i.aga = load ptr, ptr %i.bc, align 8, !alias.scope !1491, !noalias !1492, !nonnull !4, !noundef !4
  %i.agb = getelementptr inbounds nuw [16 x i8], ptr %i.aga, i64 %i.afx ; 2 uses
  store i32 0, ptr %i.agb, align 8, !noalias !1469
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agb, i64 4
  store i32 %i.afw, ptr %.sroa.4223.0..sroa_idx, align 4, !noalias !1469
  %i.agc = add i64 %i.afx, 1
  store i64 %i.agc, ptr %i.t, align 8, !alias.scope !1491, !noalias !1492
  br label %.backedge356

bb.ig:                                            ; preds = %bb.hn
  %i.agd = getelementptr inbounds nuw i8, ptr %i.acf, i64 4
  %i.age = load i32, ptr %i.agd, align 4, !noalias !1469, !noundef !4 ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.agg = load i32, ptr %i.agf, align 8, !noalias !1469, !noundef !4 ; 2 uses
  %i.agh = zext i32 %i.agg to i64                 ; 2 uses
  %i.agi = icmp samesign ugt i64 %i.aaa, %i.agh
  br i1 %i.agi, label %bb.ii, label %.backedge356

bb.ih:                                            ; preds = %bb.id
  %i.agj = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  %i.agk = load ptr, ptr %i.agj, align 8, !noalias !1469, !nonnull !4, !noundef !4 ; 3 uses
  %i.agl = load i32, ptr %i.agk, align 4, !noalias !1469, !noundef !4
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 4
  %i.agn = getelementptr [4 x i8], ptr %i.agk, i64 %i.afs
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtB2c_6copied6CopiedINtNtNtB2g_5slice4iter4IterNtNtNtBN_4util10primitives7StateIDEEENcNtBF_7Explore0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.agm, ptr noundef %i.agn), !noalias !1469
  br label %.backedge356

bb.ii:                                            ; preds = %bb.ig
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.agh ; 2 uses
  %i.agp = load i64, ptr %i.ago, align 8, !alias.scope !1466, !noalias !1493, !noundef !4
  %i.agq = load i64, ptr %i.t, align 8, !alias.scope !1494, !noalias !1495, !noundef !4 ; 3 uses
  %i.agr = load i64, ptr %1, align 8, !range !15, !alias.scope !1494, !noalias !1495, !noundef !4
  %i.ags = icmp eq i64 %i.agq, %i.agr
  br i1 %i.ags, label %bb.ij, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit190

bb.ij:                                            ; preds = %bb.ii
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1495
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit190

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit190: ; preds = %bb.ii, %bb.ij
  %i.agt = load ptr, ptr %i.bc, align 8, !alias.scope !1494, !noalias !1495, !nonnull !4, !noundef !4
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.agt, i64 %i.agq ; 3 uses
  store i32 1, ptr %i.agu, align 8, !noalias !1469
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  store i32 %i.agg, ptr %.sroa.4226.0..sroa_idx, align 4, !noalias !1469
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store i64 %i.agp, ptr %.sroa.5227.0..sroa_idx, align 8, !noalias !1469
  %i.agv = add i64 %i.agq, 1
  store i64 %i.agv, ptr %i.t, align 8, !alias.scope !1494, !noalias !1495
  br i1 %.not.i32.i, label %bb.il, label %bb.ik, !prof !7

bb.ik:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit190
  store i64 %i.jr, ptr %i.ago, align 8, !alias.scope !1466, !noalias !1493
  br label %.backedge356

bb.il:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit190
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28, !noalias !1469
  unreachable

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i: ; preds = %bb.hz, %bb.hr, %bb.hw, %bb.ht, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher14matches_inline.exit.i34.i, %bb.id, %.split318, %.split319, %.split320, %.split321, %.split322, %.split323, %.split324, %.split325, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher13is_word_ascii.exit173, %.split326, %.split327, %.split328, %.split329, %.split330, %.split331, %.split332, %_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata4util4lookNtB5_11LookMatcher19is_word_start_ascii.exit179, %.split2731, %_RNvMs8_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_9SlotTable9for_state.exit160, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet6insert.exit36, %bb.im
  %.pr310 = load i64, ptr %i.t, align 8, !alias.scope !1464, !noalias !1465 ; 2 uses
  %i.agw = icmp eq i64 %.pr310, 0
  br i1 %i.agw, label %.backedge361, label %.lr.ph1334

bb.im:                                            ; preds = %bb.hg
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.aaf, i64 %i.aav
  store i64 %.sroa.56.0.copyload.i.i, ptr %i.agx, align 8, !alias.scope !1460, !noalias !1496
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i

bb.in:                                            ; preds = %bb.hg
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aav, i64 noundef range(i64 0, 1152921504606846976) %i.aaa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !1374
  unreachable

bb.io:                                            ; preds = %.lr.ph4742
  %i.agy = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.agz = load i32, ptr %i.agy, align 4, !noalias !1374, !noundef !4
  br i1 %.sroa.0.0.i, label %bb.is, label %bb.ip

.backedge361:                                     ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit38.i, %bb.ew, %.lr.ph4740, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit30.i, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM23epsilon_closure_explore.exit.i, %bb.ev, %bb.iu, %.lr.ph4742, %.lr.ph4742, %.lr.ph4742, %.lr.ph4742, %.lr.ph4742, %bb.cb, %bb.cc, %bb.hb, %bb.cd, %bb.it, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit73, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit116, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm13FollowEpsilonE8push_mutBM_.exit155
  %.old = icmp eq ptr %i.ka, %i.jl
  br i1 %.old, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit, label %.backedge1372

.backedge1372:                                    ; preds = %.backedge361, %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit
  %i.aha = load i32, ptr %i.ka, align 4, !noundef !4
  %i.ahb = load i64, ptr %i.bh, align 16, !noalias !1497, !noundef !4 ; 2 uses
  %i.ahc = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahd = icmp ugt i64 %i.ahb, %i.ahc
  br i1 %i.ahd, label %.lr.ph4742, label %.lr.ph1356._crit_edge

bb.ip:                                            ; preds = %bb.iu, %bb.it, %bb.io
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  %i.ahe = zext i32 %i.agz to i64                 ; 2 uses
  %i.ahf = load i64, ptr %i.br, align 8, !alias.scope !1498, !noalias !1499, !noundef !4
  %.not.i191 = icmp ugt i64 %i.ahf, %i.ahe
  br i1 %.not.i191, label %bb.iq, label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit

bb.iq:                                            ; preds = %bb.ip
  %i.ahg = load ptr, ptr %3, align 8, !alias.scope !1498, !noalias !1499, !nonnull !4, !noundef !4
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 %i.ahe ; 2 uses
  %i.ahi = load i8, ptr %i.ahh, align 1, !range !3, !noalias !1500, !noundef !4
  %i.ahj = trunc nuw i8 %i.ahi to i1
  br i1 %i.ahj, label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ahk = load i64, ptr %i.bb, align 8, !alias.scope !1498, !noalias !1499, !noundef !4
  %i.ahl = add i64 %i.ahk, 1
  store i64 %i.ahl, ptr %i.bb, align 8, !alias.scope !1498, !noalias !1499
  store i8 1, ptr %i.ahh, align 1, !noalias !1500
  br label %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit

_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit: ; preds = %bb.iq, %bb.ip, %bb.ir
  %i.ahm = icmp ne ptr %i.ka, %i.jl
  %or.cond1363.not = select i1 %.sroa.0.0, i1 %i.ahm, i1 false
  br i1 %or.cond1363.not, label %.backedge1372, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit

bb.is:                                            ; preds = %bb.io
  br i1 %i.jn, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.ahn = load i8, ptr %i.jp, align 1, !noundef !4
  %or.cond344 = icmp sgt i8 %i.ahn, -65
  br i1 %or.cond344, label %bb.ip, label %.backedge361

bb.iu:                                            ; preds = %bb.is
  br i1 %i.jo, label %bb.ip, label %.backedge361

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit: ; preds = %.backedge361, %_RNvMsc_NtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit
  %.pre2602 = load i64, ptr %i.bb, align 8
  br label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit

_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit: ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit
  %i.aho = phi i64 [ %.pre2602, %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit.loopexit ], [ %i.cc, %_RNvMs_NtNtCs98D8VPWzHuM_14regex_automata4util10sparse_setNtB4_9SparseSet4iter.exit ] ; 2 uses
  %i.ahp = load i64, ptr %i.br, align 8, !noundef !4
  %i.ahq = icmp eq i64 %i.aho, %i.ahp
  %or.cond = select i1 %i.ahq, i1 true, i1 %i.cb
  br i1 %or.cond, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12start_config.exit, label %bb.iv

bb.iv:                                            ; preds = %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM17nexts_overlapping.exit
  invoke void @_RINvNvNtCs4NRVxsYgnAr_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs98D8VPWzHuM_14regex_automata(ptr noundef nonnull %i.u, ptr noundef nonnull %i.x, i64 noundef 12)
          to label %_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit unwind label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ahr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19panic_cannot_unwind() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core10intrinsics25typed_swap_nonoverlappingNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesEB18_.exit: ; preds = %bb.iv
  store i64 0, ptr %i.y, align 8
  %.not.i47 = icmp ugt i64 %spec.select340, %i.ad
  %or.cond354 = select i1 %i.cd, i1 true, i1 %.not.i47
  br i1 %or.cond354, label %_RNvMs3_NtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12start_config.exit, label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBd_3vec3VecNtB1k_9PatternIDEE12insert_entryB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = invoke { ptr, i64 } @_RINvMs8_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBc_3vec3VecNtB1t_9PatternIDENtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1x_()
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  store ptr %i.i, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.j, ptr %i.l, align 8
  store ptr %i.i, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i32, ptr %i.m, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvMsu_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBb_3vec3VecNtB1q_9PatternIDENtB18_4LeafE16push_with_handleB1u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.u = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  store ptr %i.t, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x i64>, ptr %i.s, align 8
  store <2 x i64> %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.u, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i32, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @_RINvMsN_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDINtNtBc_3vec3VecNtB1E_9PatternIDENtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4g_11VacantEntryB1C_B2B_E12insert_entry0EB1I_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i32 noundef %i.y, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load ptr, ptr %1, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %2) #26
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB9_7set_val9SetValZSTE12insert_entryB1o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
end_hunk_8

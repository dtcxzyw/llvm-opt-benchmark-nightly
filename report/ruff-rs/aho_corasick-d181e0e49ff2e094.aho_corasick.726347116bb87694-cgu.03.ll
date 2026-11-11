Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.03?download=true
inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0_@_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_:bb.a
  %i.aw = load i64, ptr %i.ab, align 8, !alias.scope !52, !noundef !4 ; 2 uses
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ac, align 8, !alias.scope !52, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !52
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i: ; preds = %bb.k, %bb.m
  %.sroa.0.0.i.i.in = phi ptr [ %i.az, %bb.m ], [ %.sroa.4.0..sroa_idx.i.i, %bb.k ]
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.i.i.in, align 1, !noalias !51 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.i.i, 1
  br i1 %.not.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread: ; preds = %bb.j, %bb.f, %bb.k, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !51, !noundef !4
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = icmp ugt i64 %i.t, %i.bc
  br i1 %i.bd, label %bb.e, label %._crit_edge

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i, %bb.b
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ %.sroa.0.0.i.i, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !align !50, !noundef !4
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, %i.a             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4 ; 2 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bk
  store i32 %.sroa.0.0, ptr %i.bq, align 4
  br label %bb.q

bb.p:                                             ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bk, i64 noundef %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #13
  unreachable

bb.q:                                             ; preds = %bb.t, %bb.o
  ret void

bb.r:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.m
  store i32 %3, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !align !50, !noundef !4
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !4
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, %i.a             ; 3 uses
  %i.bz = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.ca = icmp ult i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by
  store i32 %3, ptr %i.cc, align 4
  br label %bb.q

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(440) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(424) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !94 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 17 uses
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1A_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_3nfa13noncontiguous5StateEE3newBa_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h)
  %i.i = call { i32, ptr } @_RNvXs1B_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_3nfa13noncontiguous5StateEENtNtNtNtB1n_4iter6traits8iterator8Iterator4nextBa_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.j = extractvalue { i32, ptr } %i.i, 1        ; 2 uses
  %.not164 = icmp eq ptr %i.j, null
  %.pre = and i64 %i.c, 63                        ; 9 uses
  br i1 %.not164, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8              ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.u = load i64, ptr %i.q, align 8              ; 8 uses
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !4 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit
  %i.w = phi ptr [ %i.j, %.lr.ph ], [ %i.io, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit ] ; 4 uses
  %i.x = phi { i32, ptr } [ %i.i, %.lr.ph ], [ %i.in, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit ]
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = zext i32 %i.y to i64                     ; 7 uses
  %i.aa = shl i64 %i.z, %.pre                     ; 4 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !4
  %.not5 = icmp eq i32 %i.ad, 0
  br i1 %.not5, label %bb.c, label %bb.bm

._crit_edge:                                      ; preds = %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.af = load i32, ptr %i.ae, align 8, !noundef !4
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl i64 %i.ag, %.pre
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.al = load i32, ptr %i.ak, align 4, !noundef !4
  %i.am = zext i32 %i.al to i64
  %i.an = shl i64 %i.am, %.pre
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 404
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = shl i64 %i.as, %.pre
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl i64 %i.ax, %.pre
  %i.az = trunc i64 %i.ay to i32
  %.sink282 = select i1 %0, i32 0, i32 %i.az
  %.sink = select i1 %0, i32 %i.au, i32 0
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 408
  store i32 %.sink282, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 412
  store i32 %.sink, ptr %i.bb, align 4
  ret void

bb.c:                                             ; preds = %bb.bn, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.bc = icmp ugt i64 %i.g, %i.z
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.z
  %i.be = load i32, ptr %i.bd, align 4, !noalias !96, !noundef !4 ; 2 uses
  %.not253.i = icmp eq i32 %i.be, 0
  br i1 %.not253.i, label %.lr.ph150.preheader.thread.i, label %.lr.ph142.i

.lr.ph150.preheader.thread.i:                     ; preds = %bb.d
  %i.bf = load i8, ptr %i.k, align 8, !alias.scope !95, !noundef !4
  br label %bb.f

.lr.ph142.i:                                      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.bh = and i64 %i.aa, 4294967295               ; 4 uses
  %i.bi = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.t, align 8, !nonnull !4
  %i.bk = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bl = load ptr, ptr %i.t, align 8, !nonnull !4
  %i.bm = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.t, align 8, !nonnull !4
  %i.bo = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.t, align 8, !nonnull !4
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !96
  unreachable

.preheader.i:                                     ; preds = %bb.az
  %.not.i146.i = icmp ugt i64 %i.fw, 255
  br i1 %.not.i146.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.preheader.i

.lr.ph150.preheader.i:                            ; preds = %.preheader.i
  %i.bq = icmp eq i64 %i.fw, 255                  ; 3 uses
  %i.br = add nsw i64 %.sroa.08.1.lcssa.i, 2
  %spec.select58.peel.i = select i1 %i.bq, i64 255, i64 %i.br ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fw
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !95, !noundef !4 ; 2 uses
  %.not45.peel.i = icmp eq i8 %.sroa.9.4.i, %i.bt
  br i1 %.not45.peel.i, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.lr.ph150.preheader.i, %.lr.ph150.preheader.thread.i
  %i.bu = phi i8 [ %i.bf, %.lr.ph150.preheader.thread.i ], [ %i.bt, %.lr.ph150.preheader.i ] ; 2 uses
  %spec.select58.peel223.i = phi i64 [ 1, %.lr.ph150.preheader.thread.i ], [ %spec.select58.peel.i, %.lr.ph150.preheader.i ]
  %3 = phi i1 [ false, %.lr.ph150.preheader.thread.i ], [ %i.bq, %.lr.ph150.preheader.i ]
  %.sroa.08.0.lcssa215222.i = phi i64 [ 0, %.lr.ph150.preheader.thread.i ], [ %i.fw, %.lr.ph150.preheader.i ] ; 2 uses
  %i.bv = trunc nuw i64 %.sroa.08.0.lcssa215222.i to i8 ; 2 uses
  br i1 %0, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !97, !noundef !4 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !98), !noalias !99
  %i.bz = zext i32 %i.bx to i64                   ; 3 uses
  %i.ca = icmp ugt i64 %i.g, %i.bz
  br i1 %i.ca, label %.lr.ph23.i31, label %._crit_edge.i29

.lr.ph23.i31:                                     ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.08.0.lcssa215222.i
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, %.lr.ph23.i31
  %i.cc = phi i64 [ %i.bz, %.lr.ph23.i31 ], [ %i.cv, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !100), !noalias !99
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !101, !noundef !4 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.j, label %bb.o

._crit_edge.i29:                                  ; preds = %bb.h, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38
  %.lcssa17.i30 = phi i64 [ %i.cv, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38 ], [ %i.bz, %bb.h ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i30, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !101
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.i.i21.i39 = load i32, ptr %i.cd, align 4, !noalias !102 ; 2 uses
  %i.ch = icmp eq i32 %.sroa.05.0.i.i21.i39, 0
  br i1 %i.ch, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.j, %bb.m
  %.sroa.05.0.i.i22.i41 = phi i32 [ %.sroa.05.0.i.i.i46, %bb.m ], [ %.sroa.05.0.i.i21.i39, %bb.j ]
  %i.ci = zext i32 %.sroa.05.0.i.i22.i41 to i64   ; 3 uses
  %i.cj = icmp ugt i64 %i.m, %i.ci
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i40
  %i.ck = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.ci ; 3 uses
  %.sroa.02.0.copyload.i.i.i42 = load i8, ptr %i.ck, align 1, !noalias !102 ; 2 uses
  %.not.i.i.i43 = icmp ult i8 %.sroa.02.0.copyload.i.i.i42, %i.bv
  br i1 %.not.i.i.i43, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i40
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !102
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.53.0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %.sroa.05.0.i.i.i46 = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i45, align 1, !noalias !102 ; 2 uses
  %i.cl = icmp eq i32 %.sroa.05.0.i.i.i46, 0
  br i1 %i.cl, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %.lr.ph.i40

bb.n:                                             ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i.i44 = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = icmp eq i8 %.sroa.02.0.copyload.i.i.i42, %i.bv
  br i1 %i.cm, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38

bb.o:                                             ; preds = %bb.i
  %i.cn = load i8, ptr %i.cb, align 1, !alias.scope !103, !noalias !97, !noundef !4
  %i.co = zext i8 %i.cn to i64
  %i.cp = zext i32 %i.cf to i64
  %i.cq = add nuw nsw i64 %i.co, %i.cp            ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.u
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cq
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !101
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32: ; preds = %bb.p, %bb.n
  %.sroa.0.0.i.i.in.i33 = phi ptr [ %i.cs, %bb.p ], [ %.sroa.4.0..sroa_idx.i.i.i44, %bb.n ]
  %.sroa.0.0.i.i.i34 = load i32, ptr %.sroa.0.0.i.i.in.i33, align 1, !noalias !104 ; 2 uses
  %.not.i.i35 = icmp eq i32 %.sroa.0.0.i.i.i34, 1
  br i1 %.not.i.i35, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36.loopexit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38: ; preds = %bb.m, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32, %bb.n, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !noalias !104, !noundef !4
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = icmp ugt i64 %i.g, %i.cv
  br i1 %i.cw, label %bb.i, label %._crit_edge.i29

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36.loopexit: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32
  %i.cx = zext i32 %.sroa.0.0.i.i.i34 to i64
  br label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36.loopexit, %bb.g, %bb.f
  %.sroa.0.0.i37 = phi i64 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.cx, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36.loopexit ]
  %i.cy = and i64 %i.aa, 4294967295
  %i.cz = zext i8 %i.bu to i64
  %i.da = add nuw nsw i64 %i.cy, %i.cz            ; 3 uses
  %i.db = load i64, ptr %i.s, align 8, !noalias !97, !noundef !4 ; 2 uses
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47, label %bb.r

bb.r:                                             ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !97
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36
  %i.dd = load ptr, ptr %i.t, align 8, !noalias !97, !nonnull !4, !noundef !4
  %i.de = shl i64 %.sroa.0.0.i37, %.pre
  %i.df = trunc i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.da
  store i32 %i.df, ptr %i.dg, align 4, !noalias !97
  br label %bb.s

bb.s:                                             ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47, %.lr.ph150.preheader.i
  %spec.select58.peel224.i = phi i64 [ %spec.select58.peel223.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %spec.select58.peel.i, %.lr.ph150.preheader.i ] ; 2 uses
  %4 = phi i1 [ %3, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %i.bq, %.lr.ph150.preheader.i ]
  %.sroa.9.2.peel.i = phi i8 [ %i.bu, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %.sroa.9.4.i, %.lr.ph150.preheader.i ]
  %.not.i.peel.i = icmp samesign ugt i64 %spec.select58.peel224.i, 255
  %or.cond59.peel.i = select i1 %4, i1 true, i1 %.not.i.peel.i
  br i1 %or.cond59.peel.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.i.preheader

.lr.ph150.i.preheader:                            ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.di = and i64 %i.aa, 4294967295
  %i.dj = load i64, ptr %i.s, align 8             ; 2 uses
  %i.dk = load ptr, ptr %i.t, align 8, !nonnull !4
  br label %.lr.ph150.i

bb.t:                                             ; preds = %bb.az, %.lr.ph142.i
  %.sroa.0.0140.i = phi i1 [ false, %.lr.ph142.i ], [ true, %bb.az ] ; 3 uses
  %.sroa.9.0139.i = phi i8 [ undef, %.lr.ph142.i ], [ %.sroa.9.4.i, %bb.az ] ; 4 uses
  %.sroa.08.0138.i = phi i64 [ 0, %.lr.ph142.i ], [ %i.fw, %bb.az ] ; 5 uses
  %.sroa.034.0137.i = phi i32 [ %i.be, %.lr.ph142.i ], [ %.sroa.532.0.copyload.i, %bb.az ]
  %i.dl = zext i32 %.sroa.034.0137.i to i64       ; 3 uses
  %i.dm = icmp ugt i64 %i.m, %i.dl
  br i1 %i.dm, label %bb.ai, label %bb.al

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader, %bb.ah
  %.sroa.9.1148.i = phi i8 [ %.sroa.9.2.i, %bb.ah ], [ %.sroa.9.2.peel.i, %.lr.ph150.i.preheader ] ; 2 uses
  %.sroa.0.049147.i = phi i64 [ %spec.select58.i, %bb.ah ], [ %spec.select58.peel224.i, %.lr.ph150.i.preheader ] ; 5 uses
  %i.dn = icmp eq i64 %.sroa.0.049147.i, 255      ; 2 uses
  %i.do = add nuw nsw i64 %.sroa.0.049147.i, 1
  %spec.select58.i = select i1 %i.dn, i64 255, i64 %i.do ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.049147.i
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !95, !noundef !4 ; 3 uses
  %.not45.i = icmp eq i8 %.sroa.9.1148.i, %i.dq
  br i1 %.not45.i, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %.lr.ph150.i
  %i.dr = trunc nuw i64 %.sroa.0.049147.i to i8   ; 2 uses
  br i1 %0, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = load i32, ptr %i.dh, align 4, !noalias !105, !noundef !4 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !106), !noalias !99
  %i.du = zext i32 %i.ds to i64                   ; 3 uses
  %i.dv = icmp ugt i64 %i.g, %i.du
  br i1 %i.dv, label %.lr.ph23.i12, label %._crit_edge.i10

.lr.ph23.i12:                                     ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.049147.i
  br label %bb.x

bb.x:                                             ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, %.lr.ph23.i12
  %i.dx = phi i64 [ %i.du, %.lr.ph23.i12 ], [ %i.eq, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !107), !noalias !99
  %i.dy = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !108, !noundef !4 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.y, label %bb.ad

._crit_edge.i10:                                  ; preds = %bb.w, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19
  %.lcssa17.i11 = phi i64 [ %i.eq, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19 ], [ %i.du, %bb.w ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i11, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !108
  unreachable

bb.y:                                             ; preds = %bb.x
  %.sroa.05.0.i.i21.i20 = load i32, ptr %i.dy, align 4, !noalias !109 ; 2 uses
  %i.ec = icmp eq i32 %.sroa.05.0.i.i21.i20, 0
  br i1 %i.ec, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.y, %bb.ab
  %.sroa.05.0.i.i22.i22 = phi i32 [ %.sroa.05.0.i.i.i27, %bb.ab ], [ %.sroa.05.0.i.i21.i20, %bb.y ]
  %i.ed = zext i32 %.sroa.05.0.i.i22.i22 to i64   ; 3 uses
  %i.ee = icmp ugt i64 %i.m, %i.ed
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i21
  %i.ef = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.ed ; 3 uses
  %.sroa.02.0.copyload.i.i.i23 = load i8, ptr %i.ef, align 1, !noalias !109 ; 2 uses
  %.not.i.i.i24 = icmp ult i8 %.sroa.02.0.copyload.i.i.i23, %i.dr
  br i1 %.not.i.i.i24, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i21
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !109
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.sroa.53.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %.sroa.05.0.i.i.i27 = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i26, align 1, !noalias !109 ; 2 uses
  %i.eg = icmp eq i32 %.sroa.05.0.i.i.i27, 0
  br i1 %i.eg, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %.lr.ph.i21

bb.ac:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = icmp eq i8 %.sroa.02.0.copyload.i.i.i23, %i.dr
  br i1 %i.eh, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19

bb.ad:                                            ; preds = %bb.x
  %i.ei = load i8, ptr %i.dw, align 1, !alias.scope !110, !noalias !105, !noundef !4
  %i.ej = zext i8 %i.ei to i64
  %i.ek = zext i32 %i.ea to i64
  %i.el = add nuw nsw i64 %i.ej, %i.ek            ; 3 uses
  %i.em = icmp ult i64 %i.el, %i.u
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.el
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !108
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13: ; preds = %bb.ae, %bb.ac
  %.sroa.0.0.i.i.in.i14 = phi ptr [ %i.en, %bb.ae ], [ %.sroa.4.0..sroa_idx.i.i.i25, %bb.ac ]
  %.sroa.0.0.i.i.i15 = load i32, ptr %.sroa.0.0.i.i.in.i14, align 1, !noalias !111 ; 2 uses
  %.not.i.i16 = icmp eq i32 %.sroa.0.0.i.i.i15, 1
  br i1 %.not.i.i16, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17.loopexit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19: ; preds = %bb.ab, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13, %bb.ac, %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !111, !noundef !4
  %i.eq = zext i32 %i.ep to i64                   ; 3 uses
  %i.er = icmp ugt i64 %i.g, %i.eq
  br i1 %i.er, label %bb.x, label %._crit_edge.i10

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17.loopexit: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13
  %i.es = zext i32 %.sroa.0.0.i.i.i15 to i64
  br label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17.loopexit, %bb.v, %bb.u
  %.sroa.0.0.i18 = phi i64 [ 0, %bb.v ], [ 0, %bb.u ], [ %i.es, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17.loopexit ]
  %i.et = zext i8 %i.dq to i64
  %i.eu = add nuw nsw i64 %i.di, %i.et            ; 3 uses
  %i.ev = icmp ult i64 %i.eu, %i.dj
  br i1 %i.ev, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28, label %bb.ag

bb.ag:                                            ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !105
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17
  %i.ew = shl i64 %.sroa.0.0.i18, %.pre
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.eu
  store i32 %i.ex, ptr %i.ey, align 4, !noalias !105
  br label %bb.ah

bb.ah:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28, %.lr.ph150.i
  %.sroa.9.2.i = phi i8 [ %i.dq, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28 ], [ %.sroa.9.1148.i, %.lr.ph150.i ]
  %.not.i.i = icmp ugt i64 %spec.select58.i, 255
  %or.cond59.i = select i1 %i.dn, i1 true, i1 %.not.i.i
  br i1 %or.cond59.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.i, !llvm.loop !76

bb.ai:                                            ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.dl ; 3 uses
  %.sroa.030.0.copyload.i = load i8, ptr %i.ez, align 1, !noalias !96 ; 3 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %.sroa.431.0.copyload.i = load i32, ptr %.sroa.431.0..sroa_idx.i, align 1, !noalias !96 ; 2 uses
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %.sroa.532.0.copyload.i = load i32, ptr %.sroa.532.0..sroa_idx.i, align 1, !noalias !96 ; 2 uses
  %i.fa = zext i8 %.sroa.030.0.copyload.i to i64  ; 9 uses
  %i.fb = icmp ult i64 %.sroa.08.0138.i, %i.fa
  br i1 %i.fb, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.ai
  br i1 %0, label %.lr.ph.i.us.preheader, label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.0138.i
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !95, !noundef !4 ; 3 uses
  %i.fe = add nuw nsw i64 %.sroa.08.0138.i, 1     ; 2 uses
  %.not44.i.us.peel = icmp eq i8 %.sroa.9.0139.i, %i.fd
  %or.cond47.i.us.peel = select i1 %.sroa.0.0140.i, i1 %.not44.i.us.peel, i1 false
  br i1 %or.cond47.i.us.peel, label %bb.aj, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel: ; preds = %.lr.ph.i.us.preheader
  %i.ff = zext i8 %i.fd to i64
  %i.fg = add nuw nsw i64 %i.bh, %i.ff            ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.bk
  br i1 %i.fh, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel, label %.split.us

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fg
  store i32 0, ptr %i.fi, align 4, !noalias !112
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel, %.lr.ph.i.us.preheader
  %.sroa.9.5.i.us.peel = phi i8 [ %i.fd, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel ], [ %.sroa.9.0139.i, %.lr.ph.i.us.preheader ] ; 2 uses
  %exitcond.not.i.us.peel = icmp eq i64 %i.fe, %i.fa
  br i1 %exitcond.not.i.us.peel, label %._crit_edge.i, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.aj, %bb.ak
  %.sroa.9.3132.i.us = phi i8 [ %.sroa.9.5.i.us, %bb.ak ], [ %.sroa.9.5.i.us.peel, %bb.aj ] ; 2 uses
  %.sroa.08.1131.i.us = phi i64 [ %i.fl, %bb.ak ], [ %i.fe, %bb.aj ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.1131.i.us
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !95, !noundef !4 ; 3 uses
  %i.fl = add nuw nsw i64 %.sroa.08.1131.i.us, 1  ; 2 uses
  %.not44.i.us = icmp eq i8 %.sroa.9.3132.i.us, %i.fk
  br i1 %.not44.i.us, label %bb.ak, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us: ; preds = %.lr.ph.i.us
  %i.fm = zext i8 %i.fk to i64
  %i.fn = add nuw nsw i64 %i.bh, %i.fm            ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.bm
  br i1 %i.fo, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us, label %.split.us

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fn
  store i32 0, ptr %i.fp, align 4, !noalias !112
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us, %.lr.ph.i.us
  %.sroa.9.5.i.us = phi i8 [ %i.fk, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us ], [ %.sroa.9.3132.i.us, %.lr.ph.i.us ] ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.fl, %i.fa
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.lr.ph.i.us, !llvm.loop !79

bb.al:                                            ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !96
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bl
  %.sroa.0.3133.i = phi i1 [ true, %bb.bl ], [ %.sroa.0.0140.i, %.lr.ph.i.preheader ]
  %.sroa.9.3132.i = phi i8 [ %.sroa.9.5.i, %bb.bl ], [ %.sroa.9.0139.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.08.1131.i = phi i64 [ %i.ft, %bb.bl ], [ %.sroa.08.0138.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.fq = trunc nuw i64 %.sroa.08.1131.i to i8    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.1131.i
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !95, !noundef !4 ; 3 uses
  %i.ft = add nuw nsw i64 %.sroa.08.1131.i, 1     ; 2 uses
  %.not44.i = icmp eq i8 %.sroa.9.3132.i, %i.fs
  %or.cond47.i = select i1 %.sroa.0.3133.i, i1 %.not44.i, i1 false
  br i1 %or.cond47.i, label %bb.bl, label %bb.ba

._crit_edge.i:                                    ; preds = %bb.bl, %bb.ak, %bb.aj, %bb.ai
  %.sroa.08.1.lcssa.i = phi i64 [ %.sroa.08.0138.i, %bb.ai ], [ %i.fa, %bb.aj ], [ %i.fa, %bb.ak ], [ %i.fa, %bb.bl ] ; 2 uses
  %.sroa.9.3.lcssa.i = phi i8 [ %.sroa.9.0139.i, %bb.ai ], [ %.sroa.9.5.i.us.peel, %bb.aj ], [ %.sroa.9.5.i.us, %bb.ak ], [ %.sroa.9.5.i, %bb.bl ] ; 2 uses
  %.sroa.0.3.lcssa.i = phi i1 [ %.sroa.0.0140.i, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.bl ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fa
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !95, !noundef !4 ; 3 uses
  %i.fw = add i64 %.sroa.08.1.lcssa.i, 1          ; 5 uses
  %.not.i = icmp eq i8 %.sroa.9.3.lcssa.i, %i.fv
  %or.cond46.i = select i1 %.sroa.0.3.lcssa.i, i1 %.not.i, i1 false
  br i1 %or.cond46.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.fx = icmp ne i32 %.sroa.431.0.copyload.i, 1  ; 2 uses
  %brmerge = or i1 %0, %i.fx
  %.sroa.431.0.copyload.i.mux = select i1 %i.fx, i32 %.sroa.431.0.copyload.i, i32 0
  br i1 %brmerge, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = load i32, ptr %i.bg, align 4, !noalias !113, !noundef !4 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !114), !noalias !99
  %i.ga = zext i32 %i.fy to i64                   ; 3 uses
  %i.gb = icmp ugt i64 %i.g, %i.ga
  br i1 %i.gb, label %.lr.ph23.i, label %._crit_edge.i6

.lr.ph23.i:                                       ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fa
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, %.lr.ph23.i
  %i.gd = phi i64 [ %i.ga, %.lr.ph23.i ], [ %i.gw, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !115), !noalias !99
  %i.ge = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !116, !noundef !4 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.aq, label %bb.av

._crit_edge.i6:                                   ; preds = %bb.ao, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i
  %.lcssa17.i = phi i64 [ %i.gw, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i ], [ %i.ga, %bb.ao ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !116
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %.sroa.05.0.i.i21.i = load i32, ptr %i.ge, align 4, !noalias !117 ; 2 uses
  %i.gi = icmp eq i32 %.sroa.05.0.i.i21.i, 0
  br i1 %i.gi, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.aq, %bb.at
  %.sroa.05.0.i.i22.i = phi i32 [ %.sroa.05.0.i.i.i, %bb.at ], [ %.sroa.05.0.i.i21.i, %bb.aq ]
  %i.gj = zext i32 %.sroa.05.0.i.i22.i to i64     ; 3 uses
  %i.gk = icmp ugt i64 %i.m, %i.gj
  br i1 %i.gk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i8
  %i.gl = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.gj ; 3 uses
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.gl, align 1, !noalias !117 ; 2 uses
  %.not.i.i.i9 = icmp ugt i8 %.sroa.030.0.copyload.i, %.sroa.02.0.copyload.i.i.i
  br i1 %.not.i.i.i9, label %bb.at, label %bb.au

bb.as:                                            ; preds = %.lr.ph.i8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !117
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  %.sroa.05.0.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i, align 1, !noalias !117 ; 2 uses
  %i.gm = icmp eq i32 %.sroa.05.0.i.i.i, 0
  br i1 %i.gm, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %.lr.ph.i8

bb.au:                                            ; preds = %bb.ar
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = icmp eq i8 %.sroa.030.0.copyload.i, %.sroa.02.0.copyload.i.i.i
  br i1 %i.gn, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i

bb.av:                                            ; preds = %bb.ap
  %i.go = load i8, ptr %i.gc, align 1, !alias.scope !118, !noalias !113, !noundef !4
  %i.gp = zext i8 %i.go to i64
  %i.gq = zext i32 %i.gg to i64
  %i.gr = add nuw nsw i64 %i.gp, %i.gq            ; 3 uses
  %i.gs = icmp ult i64 %i.gr, %i.u
  br i1 %i.gs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.gr
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i

bb.ax:                                            ; preds = %bb.av
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gr, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !116
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i: ; preds = %bb.aw, %bb.au
  %.sroa.0.0.i.i.in.i = phi ptr [ %i.gt, %bb.aw ], [ %.sroa.4.0..sroa_idx.i.i.i, %bb.au ]
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.i.i.in.i, align 1, !noalias !119 ; 2 uses
  %.not.i.i7 = icmp eq i32 %.sroa.0.0.i.i.i, 1
  br i1 %.not.i.i7, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i: ; preds = %bb.at, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i, %bb.au, %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !noalias !119, !noundef !4
  %i.gw = zext i32 %i.gv to i64                   ; 3 uses
  %i.gx = icmp ugt i64 %i.g, %i.gw
  br i1 %i.gx, label %bb.ap, label %._crit_edge.i6

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i, %bb.am, %bb.an
  %.sroa.0.0.i = phi i32 [ %.sroa.431.0.copyload.i.mux, %bb.am ], [ 0, %bb.an ], [ %.sroa.0.0.i.i.i, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i ]
  %i.gy = zext i8 %i.fv to i64
  %i.gz = add nuw nsw i64 %i.bh, %i.gy            ; 3 uses
  %i.ha = icmp ult i64 %i.gz, %i.bo
  br i1 %i.ha, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit, label %bb.ay

bb.ay:                                            ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gz, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !113
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i
  %i.hb = zext i32 %.sroa.0.0.i to i64
  %i.hc = shl i64 %i.hb, %.pre
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.gz
  store i32 %i.hd, ptr %i.he, align 4, !noalias !113
  br label %bb.az

bb.az:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit, %._crit_edge.i
  %.sroa.9.4.i = phi i8 [ %i.fv, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit ], [ %.sroa.9.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.hf = icmp eq i32 %.sroa.532.0.copyload.i, 0
  br i1 %i.hf, label %.preheader.i, label %bb.t

bb.ba:                                            ; preds = %.lr.ph.i
  %i.hg = load i32, ptr %i.bg, align 4, !noalias !112, !noundef !4 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.hi = zext i32 %i.hg to i64                   ; 3 uses
  %i.hj = icmp ugt i64 %i.g, %i.hi
  br i1 %i.hj, label %.lr.ph23.i.i, label %._crit_edge.i.i

.lr.ph23.i.i:                                     ; preds = %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.08.1131.i
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, %.lr.ph23.i.i
  %i.hl = phi i64 [ %i.hi, %.lr.ph23.i.i ], [ %i.ie, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.hm = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !noalias !122, !noundef !4 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bd, label %bb.bi

._crit_edge.i.i:                                  ; preds = %bb.bb, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i
  %.lcssa17.i.i = phi i64 [ %i.ie, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ], [ %i.hi, %bb.bb ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !122
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %.sroa.05.0.i.i21.i.i = load i32, ptr %i.hm, align 4, !noalias !123 ; 2 uses
  %i.hq = icmp eq i32 %.sroa.05.0.i.i21.i.i, 0
  br i1 %i.hq, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.bg
  %.sroa.05.0.i.i22.i.i = phi i32 [ %.sroa.05.0.i.i.i.i, %bb.bg ], [ %.sroa.05.0.i.i21.i.i, %bb.bd ]
  %i.hr = zext i32 %.sroa.05.0.i.i22.i.i to i64   ; 3 uses
  %i.hs = icmp ugt i64 %i.m, %i.hr
  br i1 %i.hs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i
  %i.ht = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.hr ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i = load i8, ptr %i.ht, align 1, !noalias !123 ; 2 uses
  %.not.i.i.i.i = icmp ult i8 %.sroa.02.0.copyload.i.i.i.i, %i.fq
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !123
  unreachable

bb.bg:                                            ; preds = %bb.be
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 5
  %.sroa.05.0.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 1, !noalias !123 ; 2 uses
  %i.hu = icmp eq i32 %.sroa.05.0.i.i.i.i, 0
  br i1 %i.hu, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

bb.bh:                                            ; preds = %bb.be
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hv = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i, %i.fq
  br i1 %i.hv, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i

bb.bi:                                            ; preds = %bb.bc
  %i.hw = load i8, ptr %i.hk, align 1, !alias.scope !124, !noalias !112, !noundef !4
  %i.hx = zext i8 %i.hw to i64
  %i.hy = zext i32 %i.ho to i64
  %i.hz = add nuw nsw i64 %i.hx, %i.hy            ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.u
  br i1 %i.ia, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.hz
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !122
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous:bb.a
          to label %_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit unwind label %bb.ef

bb.bw:                                            ; preds = %bb.bj
  %i.ge = load ptr, ptr %i.dp, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sroa.011.0208.i
  %i.gg = load i8, ptr %i.gf, align 1, !range !160, !noundef !4
  %i.gh = trunc nuw i8 %i.gg to i1
  %i.gi = load i64, ptr %i.eo, align 8, !alias.scope !165, !noundef !4 ; 7 uses
  %i.gj = icmp ugt i64 %i.fe, %i.gi               ; 2 uses
  br i1 %i.gh, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.gj, label %.invoke.i, label %bb.bz, !prof !5

bb.by:                                            ; preds = %bb.bw
  br i1 %i.gj, label %.invoke.i, label %bb.cb, !prof !5

bb.bz:                                            ; preds = %bb.bx
  %i.gk = sub nuw i64 %i.gi, %i.fe                ; 2 uses
  %.not71.i = icmp ugt i64 %i.cw, %i.gk
  br i1 %.not71.i, label %.invoke.i, label %.lr.ph.preheader.i, !prof !169

.lr.ph.preheader.i:                               ; preds = %bb.bz
  %i.gl = load ptr, ptr %i.ep, align 8, !alias.scope !165, !nonnull !4, !noundef !4
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.fe ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ca, %.lr.ph.preheader.i
  %.sroa.08.0205.i = phi ptr [ %i.gt, %bb.ca ], [ %i.gm, %.lr.ph.preheader.i ] ; 3 uses
  %i.go = load i32, ptr %.sroa.08.0205.i, align 4, !noundef !4
  %i.gp = zext i32 %i.go to i64                   ; 3 uses
  %i.gq = load i64, ptr %i.dz, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.gr = icmp ugt i64 %i.gq, %i.gp
  br i1 %i.gr, label %bb.ca, label %.loopexit.i.invoke.i

bb.ca:                                            ; preds = %.lr.ph.i
  %i.gs = load ptr, ptr %i.ea, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.08.0205.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gp
  %i.gv = load i32, ptr %i.gu, align 4, !noundef !4
  store i32 %i.gv, ptr %.sroa.08.0205.i, align 4
  %i.gw = icmp eq ptr %i.gt, %i.gn
  br i1 %i.gw, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.ca, %bb.cc
  %exitcond.not.i = icmp eq i64 %i.fd, %i.ex
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bj

bb.cb:                                            ; preds = %bb.by
  %i.gx = sub nuw i64 %i.gi, %i.fe                ; 2 uses
  %.not72.i = icmp ugt i64 %i.cw, %i.gx
  br i1 %.not72.i, label %.invoke.i, label %.lr.ph207.preheader.i, !prof !169

.invoke.i:                                        ; preds = %bb.cb, %bb.bz, %bb.by, %bb.bx
  %i.gy = phi i64 [ %i.fe, %bb.by ], [ 0, %bb.bz ], [ %i.fe, %bb.bx ], [ 0, %bb.cb ]
  %i.gz = phi i64 [ %i.gi, %bb.by ], [ %i.cw, %bb.bz ], [ %i.gi, %bb.bx ], [ %i.cw, %bb.cb ]
  %i.ha = phi i64 [ %i.gi, %bb.by ], [ %i.gk, %bb.bz ], [ %i.gi, %bb.bx ], [ %i.gx, %bb.cb ]
  %i.hb = phi ptr [ @32, %bb.by ], [ @28, %bb.bz ], [ @29, %bb.bx ], [ @31, %bb.cb ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.gy, i64 noundef %i.gz, i64 noundef %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hb) #13
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.lr.ph207.preheader.i:                            ; preds = %bb.cb
  %i.hc = load ptr, ptr %i.ep, align 8, !alias.scope !165, !nonnull !4, !noundef !4
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.fe ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.cc, %.lr.ph207.preheader.i
  %.sroa.06.0206.i = phi ptr [ %i.hk, %bb.cc ], [ %i.hd, %.lr.ph207.preheader.i ] ; 3 uses
  %i.hf = load i32, ptr %.sroa.06.0206.i, align 4, !noundef !4
  %i.hg = zext i32 %i.hf to i64                   ; 3 uses
  %i.hh = load i64, ptr %i.eb, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.hi = icmp ugt i64 %i.hh, %i.hg
  br i1 %i.hi, label %bb.cc, label %.loopexit.i.invoke.i

bb.cc:                                            ; preds = %.lr.ph207.i
  %i.hj = load ptr, ptr %i.ec, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.06.0206.i, i64 4 ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hg
  %i.hm = load i32, ptr %i.hl, align 4, !noundef !4
  store i32 %i.hm, ptr %.sroa.06.0206.i, align 4
  %i.hn = icmp eq ptr %i.hk, %i.he
  br i1 %i.hn, label %.loopexit.i, label %.lr.ph207.i

bb.cd:                                            ; preds = %bb.bh
  %i.ho = zext nneg i32 %i.ev to i64              ; 6 uses
  %i.hp = load i64, ptr %i.dz, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.hq = icmp ugt i64 %i.hp, %i.ho
  br i1 %i.hq, label %bb.cf, label %.loopexit.i.invoke.i

bb.ce:                                            ; preds = %bb.bh
  %i.hr = icmp eq i32 %i.ev, %i.dv
  br i1 %i.hr, label %bb.ci, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.hs = load ptr, ptr %i.ea, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.ho
  store i32 %.sroa.0.0.i, ptr %i.ht, align 4
  %i.hu = load i64, ptr %i.eb, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.hv = icmp ugt i64 %i.hu, %i.ho
  br i1 %i.hv, label %bb.cg, label %.loopexit.i.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.hw = load ptr, ptr %i.ec, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ho
  store i32 %.sroa.0.0.i, ptr %i.hx, align 4
  br label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i

_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i: ; preds = %bb.dt, %bb.dq, %.preheader.i125.i, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, %bb.cg
  %.sroa.0.0.pn.i = phi i32 [ %.sroa.0.0.i, %bb.cg ], [ %i.ib, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i ], [ %.sroa.0.0.i, %.preheader.i125.i ], [ %.sroa.0.0.i, %bb.dq ], [ %.sroa.0.0.i, %bb.dt ]
  %.sroa.0.1.i = add i32 %.sroa.0.0.pn.i, %i.dy
  br label %bb.bf

bb.ch:                                            ; preds = %bb.ce
  %i.hy = icmp eq i32 %i.ev, %i.dx
  br i1 %i.hy, label %bb.ck, label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.hz = load i64, ptr %i.dz, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.ia = icmp ugt i64 %i.hz, %i.et
  br i1 %i.ia, label %bb.dm, label %.loopexit.i.invoke.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !166
  store i32 %.sroa.0.0.i, ptr %i.d, align 4, !noalias !166
  %i.ib = add i32 %.sroa.0.0.i, %i.dy             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !166
  store i32 %i.ib, ptr %i.c, align 4, !noalias !166
  %i.ic = zext i32 %i.ev to i64                   ; 12 uses
  %i.id = load i64, ptr %i.dz, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.ie = icmp ugt i64 %i.id, %i.ic
  br i1 %i.ie, label %bb.cl, label %.loopexit.i.invoke.i

bb.ck:                                            ; preds = %bb.ch
  %i.if = load i64, ptr %i.dz, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.ig = icmp ugt i64 %i.if, %i.es
  br i1 %i.ig, label %bb.di, label %.loopexit.i.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.ih = load ptr, ptr %i.ea, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ic
  store i32 %.sroa.0.0.i, ptr %i.ii, align 4
  %i.ij = load i64, ptr %i.eb, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, %i.ic
  br i1 %i.ik, label %bb.cm, label %.loopexit.i.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.il = load ptr, ptr %i.ec, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.ic
  %i.in = load i32, ptr %i.c, align 4, !noalias !166, !noundef !4 ; 2 uses
  store i32 %i.in, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = lshr i64 %i.io, %i.cv                   ; 3 uses
  %i.iq = load i64, ptr %i.dq, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.ir = icmp ult i64 %i.ip, %i.iq
  br i1 %i.ir, label %bb.cn, label %.loopexit.i.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.is = load ptr, ptr %i.dp, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ip
  store i8 1, ptr %i.it, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.iv = load i32, ptr %i.iu, align 4, !noundef !4
  %.not73.i = icmp eq i32 %i.iv, 0
  br i1 %.not73.i, label %bb.co, label %bb.df

bb.co:                                            ; preds = %bb.dh, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !166
  store ptr %i.ew, ptr %i.b, align 8, !noalias !166
  store ptr %2, ptr %i.ed, align 8, !noalias !166
  store ptr %i.p, ptr %i.ee, align 8, !noalias !166
  store ptr %i.d, ptr %i.ef, align 8, !noalias !166
  store ptr %i.c, ptr %i.eg, align 8, !noalias !166
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.iw = icmp ugt i64 %i.da, %i.ic
  br i1 %i.iw, label %bb.cp, label %.loopexit.i.invoke.i

bb.cp:                                            ; preds = %bb.co
  %i.ix = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.ic
  %i.iy = load i32, ptr %i.ix, align 4, !noalias !171, !noundef !4 ; 2 uses
  %.not253.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not253.i.i, label %.lr.ph150.preheader.thread.i.i, label %.lr.ph142.i.i

.lr.ph150.preheader.thread.i.i:                   ; preds = %bb.cp
  %i.iz = load i8, ptr %i.ci, align 8, !alias.scope !172, !noundef !4
  br label %bb.cq

.lr.ph142.i.i:                                    ; preds = %bb.cp
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  br label %bb.cr

.preheader.i.i:                                   ; preds = %.noexc102.i
  %.not.i146.i.i = icmp ugt i64 %i.jx, 255
  br i1 %.not.i146.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.preheader.i.i

.lr.ph150.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.jb = icmp eq i64 %i.jx, 255                  ; 3 uses
  %i.jc = add nsw i64 %.sroa.08.1.lcssa.i.i, 2
  %spec.select58.peel.i.i = select i1 %i.jb, i64 255, i64 %i.jc ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.jx
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !172, !noundef !4 ; 2 uses
  %.not45.peel.i.i = icmp eq i8 %.sroa.9.4.i.i, %i.je
  br i1 %.not45.peel.i.i, label %.noexc99.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph150.preheader.i.i, %.lr.ph150.preheader.thread.i.i
  %i.jf = phi i8 [ %i.iz, %.lr.ph150.preheader.thread.i.i ], [ %i.je, %.lr.ph150.preheader.i.i ] ; 2 uses
  %spec.select58.peel223.i.i = phi i64 [ 1, %.lr.ph150.preheader.thread.i.i ], [ %spec.select58.peel.i.i, %.lr.ph150.preheader.i.i ]
  %3 = phi i1 [ false, %.lr.ph150.preheader.thread.i.i ], [ %i.jb, %.lr.ph150.preheader.i.i ]
  %.sroa.08.0.lcssa215222.i.i = phi i64 [ 0, %.lr.ph150.preheader.thread.i.i ], [ %i.jx, %.lr.ph150.preheader.i.i ]
  %i.jg = trunc nuw i64 %.sroa.08.0.lcssa215222.i.i to i8
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %i.jg, i8 noundef %i.jf, i32 noundef 1)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99.i:                                       ; preds = %bb.cq, %.lr.ph150.preheader.i.i
  %spec.select58.peel224.i.i = phi i64 [ %spec.select58.peel.i.i, %.lr.ph150.preheader.i.i ], [ %spec.select58.peel223.i.i, %bb.cq ] ; 2 uses
  %4 = phi i1 [ %i.jb, %.lr.ph150.preheader.i.i ], [ %3, %bb.cq ]
  %.sroa.9.2.peel.i.i = phi i8 [ %.sroa.9.4.i.i, %.lr.ph150.preheader.i.i ], [ %i.jf, %bb.cq ]
  %.not.i.peel.i.i = icmp samesign ugt i64 %spec.select58.peel224.i.i, 255
  %or.cond59.peel.i.i = select i1 %4, i1 true, i1 %.not.i.peel.i.i
  br i1 %or.cond59.peel.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.i.i

bb.cr:                                            ; preds = %.noexc102.i, %.lr.ph142.i.i
  %.sroa.0.0140.i.i = phi i1 [ false, %.lr.ph142.i.i ], [ true, %.noexc102.i ] ; 2 uses
  %.sroa.9.0139.i.i = phi i8 [ undef, %.lr.ph142.i.i ], [ %.sroa.9.4.i.i, %.noexc102.i ] ; 2 uses
  %.sroa.08.0138.i.i = phi i64 [ 0, %.lr.ph142.i.i ], [ %i.jx, %.noexc102.i ] ; 3 uses
  %.sroa.034.0137.i.i = phi i32 [ %i.iy, %.lr.ph142.i.i ], [ %.sroa.532.0.copyload.i.i, %.noexc102.i ]
  %i.jh = zext i32 %.sroa.034.0137.i.i to i64     ; 3 uses
  %i.ji = icmp ugt i64 %i.ei, %i.jh
  br i1 %i.ji, label %bb.ct, label %.loopexit.i.invoke.i

.lr.ph150.i.i:                                    ; preds = %.noexc99.i, %.noexc100.i
  %.sroa.9.1148.i.i = phi i8 [ %.sroa.9.2.i.i, %.noexc100.i ], [ %.sroa.9.2.peel.i.i, %.noexc99.i ] ; 2 uses
  %.sroa.0.049147.i.i = phi i64 [ %spec.select58.i.i, %.noexc100.i ], [ %spec.select58.peel224.i.i, %.noexc99.i ] ; 4 uses
  %i.jj = icmp eq i64 %.sroa.0.049147.i.i, 255    ; 2 uses
  %i.jk = add nuw nsw i64 %.sroa.0.049147.i.i, 1
  %spec.select58.i.i = select i1 %i.jj, i64 255, i64 %i.jk ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.049147.i.i
  %i.jm = load i8, ptr %i.jl, align 1, !alias.scope !172, !noundef !4 ; 3 uses
  %.not45.i.i = icmp eq i8 %.sroa.9.1148.i.i, %i.jm
  br i1 %.not45.i.i, label %.noexc100.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph150.i.i
  %i.jn = trunc nuw i64 %.sroa.0.049147.i.i to i8
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %i.jn, i8 noundef %i.jm, i32 noundef 1)
          to label %.noexc100.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100.i:                                      ; preds = %bb.cs, %.lr.ph150.i.i
  %.sroa.9.2.i.i = phi i8 [ %.sroa.9.1148.i.i, %.lr.ph150.i.i ], [ %i.jm, %bb.cs ]
  %.not.i.i.i = icmp ugt i64 %spec.select58.i.i, 255
  %or.cond59.i.i = select i1 %i.jj, i1 true, i1 %.not.i.i.i
  br i1 %or.cond59.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.i.i, !llvm.loop !143

bb.ct:                                            ; preds = %bb.cr
  %i.jo = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.jh ; 3 uses
  %.sroa.030.0.copyload.i.i = load i8, ptr %i.jo, align 1, !noalias !171 ; 2 uses
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 1
  %.sroa.431.0.copyload.i.i = load i32, ptr %.sroa.431.0..sroa_idx.i.i, align 1, !noalias !171
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jo, i64 5
  %.sroa.532.0.copyload.i.i = load i32, ptr %.sroa.532.0..sroa_idx.i.i, align 1, !noalias !171 ; 2 uses
  %i.jp = zext i8 %.sroa.030.0.copyload.i.i to i64 ; 4 uses
  %i.jq = icmp ult i64 %.sroa.08.0138.i.i, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct, %bb.de
  %.sroa.0.3133.i.i = phi i1 [ true, %bb.de ], [ %.sroa.0.0140.i.i, %bb.ct ]
  %.sroa.9.3132.i.i = phi i8 [ %.sroa.9.5.i.i, %bb.de ], [ %.sroa.9.0139.i.i, %bb.ct ] ; 2 uses
  %.sroa.08.1131.i.i = phi i64 [ %i.ju, %bb.de ], [ %.sroa.08.0138.i.i, %bb.ct ] ; 4 uses
  %i.jr = trunc nuw i64 %.sroa.08.1131.i.i to i8  ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.1131.i.i
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !172, !noundef !4 ; 3 uses
  %i.ju = add nuw nsw i64 %.sroa.08.1131.i.i, 1   ; 2 uses
  %.not44.i.i = icmp eq i8 %.sroa.9.3132.i.i, %i.jt
  %or.cond47.i.i = select i1 %.sroa.0.3133.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond47.i.i, label %bb.de, label %bb.cv

._crit_edge.i.i:                                  ; preds = %bb.de, %bb.ct
  %.sroa.08.1.lcssa.i.i = phi i64 [ %.sroa.08.0138.i.i, %bb.ct ], [ %i.jp, %bb.de ] ; 2 uses
  %.sroa.9.3.lcssa.i.i = phi i8 [ %.sroa.9.0139.i.i, %bb.ct ], [ %.sroa.9.5.i.i, %bb.de ] ; 2 uses
  %.sroa.0.3.lcssa.i.i = phi i1 [ %.sroa.0.0140.i.i, %bb.ct ], [ true, %bb.de ]
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.jp
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !172, !noundef !4 ; 3 uses
  %i.jx = add i64 %.sroa.08.1.lcssa.i.i, 1        ; 5 uses
  %.not.i.i = icmp eq i8 %.sroa.9.3.lcssa.i.i, %i.jw
  %or.cond46.i.i = select i1 %.sroa.0.3.lcssa.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond46.i.i, label %.noexc102.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %.sroa.030.0.copyload.i.i, i8 noundef %i.jw, i32 noundef %.sroa.431.0.copyload.i.i)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102.i:                                      ; preds = %bb.cu, %._crit_edge.i.i
  %.sroa.9.4.i.i = phi i8 [ %.sroa.9.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.jw, %bb.cu ] ; 3 uses
  %i.jy = icmp eq i32 %.sroa.532.0.copyload.i.i, 0
  br i1 %i.jy, label %.preheader.i.i, label %bb.cr

bb.cv:                                            ; preds = %.lr.ph.i.i
  %i.jz = zext i8 %i.jt to i64
  %i.ka = load i32, ptr %i.ja, align 4, !noalias !173, !noundef !4 ; 2 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.kc = zext i32 %i.ka to i64                   ; 3 uses
  %i.kd = icmp ugt i64 %i.da, %i.kc
  br i1 %i.kd, label %.lr.ph28.i.i.i, label %.loopexit.i.invoke.i

.lr.ph28.i.i.i:                                   ; preds = %bb.cw
  %i.ke = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.08.1131.i.i
  br label %bb.cx

bb.cx:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, %.lr.ph28.i.i.i
  %i.kf = phi i64 [ %i.kc, %.lr.ph28.i.i.i ], [ %i.ky, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.kg = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.kf ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !noalias !176, !noundef !4 ; 2 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %.sroa.05.0.i.i26.i.i.i = load i32, ptr %i.kg, align 4, !noalias !177 ; 2 uses
  %i.kk = icmp eq i32 %.sroa.05.0.i.i26.i.i.i, 0
  br i1 %i.kk, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cy, %bb.da
  %.sroa.05.0.i.i27.i.i.i = phi i32 [ %.sroa.05.0.i.i.i.i.i, %bb.da ], [ %.sroa.05.0.i.i26.i.i.i, %bb.cy ]
  %i.kl = zext i32 %.sroa.05.0.i.i27.i.i.i to i64 ; 3 uses
  %i.km = icmp ugt i64 %i.ei, %i.kl
  br i1 %i.km, label %bb.cz, label %.loopexit.i.invoke.i

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  %i.kn = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.kl ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i8, ptr %i.kn, align 1, !noalias !177 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i8 %.sroa.02.0.copyload.i.i.i.i.i, %i.jr
  br i1 %.not.i.i.i.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kn, i64 5
  %.sroa.05.0.i.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 1, !noalias !177 ; 2 uses
  %i.ko = icmp eq i32 %.sroa.05.0.i.i.i.i.i, 0
  br i1 %i.ko, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %.lr.ph.i.i.i

bb.db:                                            ; preds = %bb.cz
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.kp = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i.i, %i.jr
  br i1 %i.kp, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i

bb.dc:                                            ; preds = %bb.cx
  %i.kq = load i8, ptr %i.ke, align 1, !alias.scope !178, !noalias !173, !noundef !4
  %i.kr = zext i8 %i.kq to i64
  %i.ks = zext i32 %i.ki to i64
  %i.kt = add nuw nsw i64 %i.kr, %i.ks            ; 3 uses
  %i.ku = icmp ult i64 %i.kt, %i.eq
  br i1 %i.ku, label %bb.dd, label %.loopexit.i.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kt
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i: ; preds = %bb.dd, %bb.db
  %.sroa.0.0.i.i.in.i.i.i = phi ptr [ %i.kv, %bb.dd ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i, %bb.db ]
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.in.i.i.i, align 1, !noalias !179 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i: ; preds = %bb.da, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, %bb.db, %bb.cy
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !noalias !179, !noundef !4
  %i.ky = zext i32 %i.kx to i64                   ; 3 uses
  %i.kz = icmp ugt i64 %i.da, %i.ky
  br i1 %i.kz, label %bb.cx, label %.loopexit.i.invoke.i

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, %bb.cv
  %.sroa.0.0.i48.i.i = phi i32 [ 0, %bb.cv ], [ %.sroa.0.0.i.i.i.i.i, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i ]
  %i.la = load i32, ptr %i.d, align 4, !noalias !180, !noundef !4
  %i.lb = zext i32 %i.la to i64
  %i.lc = add nuw nsw i64 %i.lb, %i.jz            ; 3 uses
  %i.ld = load i64, ptr %i.eo, align 8, !alias.scope !165, !noalias !173, !noundef !4 ; 2 uses
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i, label %.loopexit.i.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i
  %i.lf = load ptr, ptr %i.ep, align 8, !alias.scope !165, !noalias !173, !nonnull !4, !noundef !4
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.lc
  store i32 %.sroa.0.0.i48.i.i, ptr %i.lg, align 4, !noalias !173
  br label %bb.de

bb.de:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i, %.lr.ph.i.i
  %.sroa.9.5.i.i = phi i8 [ %i.jt, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i ], [ %.sroa.9.3132.i.i, %.lr.ph.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ju, %i.jp
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.df:                                            ; preds = %bb.cn
  %i.lh = icmp ugt i64 %i.da, %i.ic
  br i1 %i.lh, label %bb.dg, label %.loopexit.i.invoke.i

bb.dg:                                            ; preds = %bb.df
  %i.li = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.ic
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !noundef !4
  %i.ll = load i32, ptr %i.d, align 4, !noalias !166, !noundef !4
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %i.ll, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.lk)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dg
  %i.lm = load i32, ptr %i.lj, align 4, !noundef !4
  %i.ln = load i32, ptr %i.c, align 4, !noalias !166, !noundef !4
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %i.ln, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.lm)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i: ; preds = %.noexc100.i, %.noexc99.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !166
  br label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i

bb.di:                                            ; preds = %bb.ck
  %i.lo = load ptr, ptr %i.ea, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.es
  store i32 0, ptr %i.lp, align 4
  %i.lq = load i64, ptr %i.eb, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.lr = icmp ugt i64 %i.lq, %i.es
  br i1 %i.lr, label %bb.dj, label %.loopexit.i.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.ls = load ptr, ptr %i.ec, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.es
  store i32 %.sroa.0.0.i, ptr %i.lt, align 4
  %i.lu = zext i32 %.sroa.0.0.i to i64
  %i.lv = lshr i64 %i.lu, %i.cv                   ; 3 uses
  %i.lw = load i64, ptr %i.dq, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.lx = icmp ult i64 %i.lv, %i.lw
  br i1 %i.lx, label %bb.dk, label %.loopexit.i.invoke.i

bb.dk:                                            ; preds = %bb.dj
  %i.ly = load ptr, ptr %i.dp, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lv
  store i8 1, ptr %i.lz, align 1
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.mb = load i32, ptr %i.ma, align 4, !noundef !4
  %.not74.i = icmp eq i32 %i.mb, 0
  %.pre402.i = zext i32 %i.ev to i64              ; 6 uses
  br i1 %.not74.i, label %._crit_edge401.i, label %bb.eb

bb.dm:                                            ; preds = %bb.ci
  %i.mc = load ptr, ptr %i.ea, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.et
  store i32 %.sroa.0.0.i, ptr %i.md, align 4
  %i.me = load i64, ptr %i.eb, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.mf = icmp ugt i64 %i.me, %i.et
  br i1 %i.mf, label %bb.dn, label %.loopexit.i.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.mg = load ptr, ptr %i.ec, align 8, !noalias !166, !nonnull !4, !noundef !4
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.et
  store i32 0, ptr %i.mh, align 4
  br label %bb.dl

._crit_edge401.i:                                 ; preds = %bb.ec, %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.mi = icmp ugt i64 %i.da, %.pre402.i
  br i1 %i.mi, label %bb.do, label %.loopexit.i.invoke.i

bb.do:                                            ; preds = %._crit_edge401.i
  %i.mj = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %.pre402.i
  %i.mk = load i32, ptr %i.mj, align 4, !noalias !183, !noundef !4 ; 2 uses
  %.not9.i = icmp eq i32 %i.mk, 0
  %i.ml = zext i32 %.sroa.0.0.i to i64            ; 5 uses
  br i1 %.not9.i, label %.lr.ph117.i.thread.i, label %.lr.ph109.i.i

.lr.ph117.i.thread.i:                             ; preds = %bb.do
  %i.mm = load i8, ptr %i.ci, align 8, !alias.scope !184, !noundef !4
  %.pre.i = load i64, ptr %i.eo, align 8, !alias.scope !185
  br label %bb.dp

.lr.ph109.i.i:                                    ; preds = %bb.do
  %i.mn = load i64, ptr %i.eo, align 8, !alias.scope !185 ; 8 uses
  %i.mo = load ptr, ptr %i.ep, align 8, !alias.scope !185, !nonnull !4 ; 4 uses
  br label %bb.dr

.preheader.i125.i:                                ; preds = %bb.dy
  %.not.i113.i.i = icmp ugt i64 %i.ob, 255
  br i1 %.not.i113.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader.i125.i
  %i.mp = icmp eq i64 %i.ob, 255                  ; 3 uses
  %i.mq = add nsw i64 %.sroa.08.1.lcssa.i119.i, 2
  %spec.select.peel.i.i = select i1 %i.mp, i64 255, i64 %i.mq ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ob
  %i.ms = load i8, ptr %i.mr, align 1, !alias.scope !184, !noundef !4 ; 2 uses
  %.not45.peel.i107.i = icmp eq i8 %.sroa.9.4.i124.i, %i.ms
  br i1 %.not45.peel.i107.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph117.i.i, %.lr.ph117.i.thread.i
  %i.mt = phi i64 [ %.pre.i, %.lr.ph117.i.thread.i ], [ %i.mn, %.lr.ph117.i.i ] ; 3 uses
  %i.mu = phi i8 [ %i.mm, %.lr.ph117.i.thread.i ], [ %i.ms, %.lr.ph117.i.i ] ; 2 uses
  %spec.select.peel.i7.i = phi i64 [ 1, %.lr.ph117.i.thread.i ], [ %spec.select.peel.i.i, %.lr.ph117.i.i ]
  %5 = phi i1 [ false, %.lr.ph117.i.thread.i ], [ %i.mp, %.lr.ph117.i.i ]
  %i.mv = zext i8 %i.mu to i64
  %i.mw = add nuw nsw i64 %i.mv, %i.ml            ; 3 uses
  %i.mx = icmp ult i64 %i.mw, %i.mt
  br i1 %i.mx, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i, label %.loopexit.i.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i: ; preds = %bb.dp
  %i.my = load ptr, ptr %i.ep, align 8, !alias.scope !185, !nonnull !4, !noundef !4 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.mw
  store i32 0, ptr %i.mz, align 4, !noalias !183
  br label %bb.dq

bb.dq:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i, %.lr.ph117.i.i
  %i.na = phi ptr [ %i.my, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.mo, %.lr.ph117.i.i ]
  %i.nb = phi i64 [ %i.mt, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.mn, %.lr.ph117.i.i ] ; 2 uses
  %spec.select.peel.i8.i = phi i64 [ %spec.select.peel.i7.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %spec.select.peel.i.i, %.lr.ph117.i.i ] ; 2 uses
  %6 = phi i1 [ %5, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.mp, %.lr.ph117.i.i ]
  %.sroa.9.2.peel.i108.i = phi i8 [ %i.mu, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %.sroa.9.4.i124.i, %.lr.ph117.i.i ]
  %.not.i.peel.i109.i = icmp samesign ugt i64 %spec.select.peel.i8.i, 255
  %or.cond65.peel.i.i = select i1 %6, i1 true, i1 %.not.i.peel.i109.i
  br i1 %or.cond65.peel.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.peel.next.i.i

bb.dr:                                            ; preds = %bb.dy, %.lr.ph109.i.i
  %.sroa.0.0107.i.i = phi i1 [ false, %.lr.ph109.i.i ], [ true, %bb.dy ] ; 2 uses
  %.sroa.9.0106.i.i = phi i8 [ undef, %.lr.ph109.i.i ], [ %.sroa.9.4.i124.i, %bb.dy ] ; 3 uses
  %.sroa.08.0105.i.i = phi i64 [ 0, %.lr.ph109.i.i ], [ %i.ob, %bb.dy ] ; 4 uses
  %.sroa.034.0104.i.i = phi i32 [ %i.mk, %.lr.ph109.i.i ], [ %.sroa.532.0.copyload.i117.i, %bb.dy ]
  %i.nc = zext i32 %.sroa.034.0104.i.i to i64     ; 3 uses
  %i.nd = icmp ugt i64 %i.ei, %i.nc
  br i1 %i.nd, label %bb.du, label %.loopexit.i.invoke.i

.peel.next.i.i:                                   ; preds = %bb.dq, %bb.dt
  %.sroa.9.1115.i.i = phi i8 [ %.sroa.9.2.i111.i, %bb.dt ], [ %.sroa.9.2.peel.i108.i, %bb.dq ] ; 2 uses
  %.sroa.056.0114.i.i = phi i64 [ %spec.select.i.i, %bb.dt ], [ %spec.select.peel.i8.i, %bb.dq ] ; 3 uses
  %i.ne = icmp eq i64 %.sroa.056.0114.i.i, 255    ; 2 uses
  %i.nf = add nuw nsw i64 %.sroa.056.0114.i.i, 1
  %spec.select.i.i = select i1 %i.ne, i64 255, i64 %i.nf ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.056.0114.i.i
  %i.nh = load i8, ptr %i.ng, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %.not45.i110.i = icmp eq i8 %.sroa.9.1115.i.i, %i.nh
  br i1 %.not45.i110.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.peel.next.i.i
  %i.ni = zext i8 %i.nh to i64
  %i.nj = add nuw nsw i64 %i.ni, %i.ml            ; 3 uses
  %i.nk = icmp ult i64 %i.nj, %i.nb
  br i1 %i.nk, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i, label %.loopexit.i.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i: ; preds = %bb.ds
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.nj
  store i32 0, ptr %i.nl, align 4, !noalias !183
  br label %bb.dt

bb.dt:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i, %.peel.next.i.i
  %.sroa.9.2.i111.i = phi i8 [ %i.nh, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i ], [ %.sroa.9.1115.i.i, %.peel.next.i.i ]
  %.not.i.i112.i = icmp ugt i64 %spec.select.i.i, 255
  %or.cond65.i.i = select i1 %i.ne, i1 true, i1 %.not.i.i112.i
  br i1 %or.cond65.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.peel.next.i.i, !llvm.loop !157

bb.du:                                            ; preds = %bb.dr
  %i.nm = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.nc ; 3 uses
  %.sroa.030.0.copyload.i113.i = load i8, ptr %i.nm, align 1, !noalias !183
  %.sroa.431.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  %.sroa.431.0.copyload.i115.i = load i32, ptr %.sroa.431.0..sroa_idx.i114.i, align 1, !noalias !183 ; 2 uses
  %.sroa.532.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.nm, i64 5
  %.sroa.532.0.copyload.i117.i = load i32, ptr %.sroa.532.0..sroa_idx.i116.i, align 1, !noalias !183 ; 2 uses
  %i.nn = zext i8 %.sroa.030.0.copyload.i113.i to i64 ; 6 uses
  %i.no = icmp ult i64 %.sroa.08.0105.i.i, %i.nn
  br i1 %i.no, label %.lr.ph.preheader.i.i, label %._crit_edge.i118.i

.lr.ph.preheader.i.i:                             ; preds = %bb.du
  %i.np = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.0105.i.i
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %i.nr = add nuw nsw i64 %.sroa.08.0105.i.i, 1   ; 2 uses
  %.not44.peel.i.i = icmp eq i8 %.sroa.9.0106.i.i, %i.nq
  %or.cond47.peel.i.i = select i1 %.sroa.0.0107.i.i, i1 %.not44.peel.i.i, i1 false
  br i1 %or.cond47.peel.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.preheader.i.i
  %i.ns = zext i8 %i.nq to i64
  %i.nt = add nuw nsw i64 %i.ns, %i.ml            ; 3 uses
  %i.nu = icmp ult i64 %i.nt, %i.mn
  br i1 %i.nu, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i, label %.loopexit.i.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i: ; preds = %bb.dv
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.nt
  store i32 0, ptr %i.nv, align 4, !noalias !183
  br label %bb.dw

bb.dw:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i, %.lr.ph.preheader.i.i
  %.sroa.9.5.peel.i.i = phi i8 [ %i.nq, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i ], [ %.sroa.9.0106.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i64 %i.nr, %i.nn
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %bb.dw, %bb.ea
  %.sroa.9.399.i.i = phi i8 [ %.sroa.9.5.i128.i, %bb.ea ], [ %.sroa.9.5.peel.i.i, %bb.dw ] ; 2 uses
  %.sroa.08.198.i.i = phi i64 [ %i.ny, %bb.ea ], [ %i.nr, %bb.dw ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.198.i.i
  %i.nx = load i8, ptr %i.nw, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %i.ny = add nuw nsw i64 %.sroa.08.198.i.i, 1    ; 2 uses
  %.not44.i127.i = icmp eq i8 %.sroa.9.399.i.i, %i.nx
  br i1 %.not44.i127.i, label %bb.ea, label %bb.dz

._crit_edge.i118.i:                               ; preds = %bb.ea, %bb.dw, %bb.du
  %.sroa.08.1.lcssa.i119.i = phi i64 [ %.sroa.08.0105.i.i, %bb.du ], [ %i.nn, %bb.dw ], [ %i.nn, %bb.ea ] ; 2 uses
  %.sroa.9.3.lcssa.i120.i = phi i8 [ %.sroa.9.0106.i.i, %bb.du ], [ %.sroa.9.5.peel.i.i, %bb.dw ], [ %.sroa.9.5.i128.i, %bb.ea ] ; 2 uses
  %.sroa.0.3.lcssa.i121.i = phi i1 [ %.sroa.0.0107.i.i, %bb.du ], [ true, %bb.dw ], [ true, %bb.ea ]
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.nn
  %i.oa = load i8, ptr %i.nz, align 1, !alias.scope !184, !noundef !4 ; 3 uses
  %i.ob = add i64 %.sroa.08.1.lcssa.i119.i, 1     ; 4 uses
  %.not.i122.i = icmp eq i8 %.sroa.9.3.lcssa.i120.i, %i.oa
  %or.cond46.i123.i = select i1 %.sroa.0.3.lcssa.i121.i, i1 %.not.i122.i, i1 false
  br i1 %or.cond46.i123.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i118.i
  %i.oc = zext i8 %i.oa to i64
  %i.od = icmp eq i32 %.sroa.431.0.copyload.i115.i, 1 ; 2 uses
  %i.oe = add nuw nsw i64 %i.oc, %i.ml            ; 3 uses
  %i.of = icmp ult i64 %i.oe, %i.mn
  br i1 %i.of, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, label %.loopexit.i.invoke.i.loopexit129.split.loop.exit184

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i: ; preds = %bb.dx
  %..sroa.431.0.copyload.i115.i = select i1 %i.od, i32 0, i32 %.sroa.431.0.copyload.i115.i
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.oe
  store i32 %..sroa.431.0.copyload.i115.i, ptr %i.og, align 4, !noalias !183
  br label %bb.dy

bb.dy:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, %._crit_edge.i118.i
  %.sroa.9.4.i124.i = phi i8 [ %i.oa, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i ], [ %.sroa.9.3.lcssa.i120.i, %._crit_edge.i118.i ] ; 3 uses
  %i.oh = icmp eq i32 %.sroa.532.0.copyload.i117.i, 0
  br i1 %i.oh, label %.preheader.i125.i, label %bb.dr

bb.dz:                                            ; preds = %.lr.ph.i126.i
  %i.oi = zext i8 %i.nx to i64
  %i.oj = add nuw nsw i64 %i.oi, %i.ml            ; 3 uses
  %i.ok = icmp ult i64 %i.oj, %i.mn
  br i1 %i.ok, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, label %.loopexit.i.invoke.i

.loopexit.i.invoke.i.loopexit129.split.loop.exit184: ; preds = %bb.dx
  %..i.le = select i1 %i.od, ptr @12, ptr @13
  br label %.loopexit.i.invoke.i

.loopexit.i.invoke.i:                             ; preds = %bb.eb, %bb.dp, %._crit_edge401.i, %bb.dm, %bb.dj, %bb.di, %bb.df, %bb.co, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.cf, %bb.cd, %bb.cr, %bb.dr, %bb.dv, %bb.ds, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i, %bb.cw, %bb.dz, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, %bb.dc, %.lr.ph.i.i.i, %bb.bj, %.lr.ph.i, %.lr.ph207.i, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184, %bb.bm, %bb.bl, %bb.bk, %._crit_edge.i
  %i.ol = phi i64 [ %i.et, %bb.bl ], [ %i.fm, %bb.bk ], [ %i.fa, %._crit_edge.i ], [ %.sroa.011.0208.i, %bb.bj ], [ %i.oj, %bb.dz ], [ %i.gp, %.lr.ph.i ], [ %i.nj, %bb.ds ], [ %i.kl, %.lr.ph.i.i.i ], [ %i.hg, %.lr.ph207.i ], [ %i.jh, %bb.cr ], [ %i.oe, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ %i.kt, %bb.dc ], [ %i.kc, %bb.cw ], [ %i.es, %bb.bm ], [ %i.nt, %bb.dv ], [ %i.ky, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ %i.lc, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ %i.nc, %bb.dr ], [ %i.ho, %bb.cd ], [ %i.ho, %bb.cf ], [ %i.ic, %bb.cj ], [ %i.ic, %bb.cl ], [ %i.ic, %bb.df ], [ %i.es, %bb.ck ], [ %i.es, %bb.di ], [ %i.lv, %bb.dj ], [ %i.et, %bb.ci ], [ %i.ip, %bb.cm ], [ %i.ic, %bb.co ], [ %i.mw, %bb.dp ], [ %.pre402.i, %._crit_edge401.i ], [ %.pre402.i, %bb.eb ], [ %i.et, %bb.dm ]
  %i.om = phi i64 [ %i.fq, %bb.bl ], [ %i.fb, %bb.bk ], [ %i.fb, %._crit_edge.i ], [ %i.ff, %bb.bj ], [ %i.mn, %bb.dz ], [ %i.gq, %.lr.ph.i ], [ %i.nb, %bb.ds ], [ %i.ei, %.lr.ph.i.i.i ], [ %i.hh, %.lr.ph207.i ], [ %i.ei, %bb.cr ], [ %i.mn, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ %i.eq, %bb.dc ], [ %i.da, %bb.cw ], [ %i.fb, %bb.bm ], [ %i.mn, %bb.dv ], [ %i.da, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ %i.ld, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ %i.ei, %bb.dr ], [ %i.hp, %bb.cd ], [ %i.hu, %bb.cf ], [ %i.id, %bb.cj ], [ %i.ij, %bb.cl ], [ %i.da, %bb.df ], [ %i.if, %bb.ck ], [ %i.lq, %bb.di ], [ %i.lw, %bb.dj ], [ %i.hz, %bb.ci ], [ %i.iq, %bb.cm ], [ %i.da, %bb.co ], [ %i.mt, %bb.dp ], [ %i.da, %._crit_edge401.i ], [ %i.da, %bb.eb ], [ %i.me, %bb.dm ]
  %i.on = phi ptr [ @24, %bb.bl ], [ @23, %bb.bk ], [ @22, %._crit_edge.i ], [ @26, %bb.bj ], [ @12, %bb.dz ], [ @27, %.lr.ph.i ], [ @12, %bb.ds ], [ @7, %.lr.ph.i.i.i ], [ @30, %.lr.ph207.i ], [ @7, %bb.cr ], [ %..i.le, %.loopexit.i.invoke.i.loopexit129.split.loop.exit184 ], [ @44, %bb.dc ], [ @43, %bb.cw ], [ @25, %bb.bm ], [ @12, %bb.dv ], [ @43, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ], [ @9, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i ], [ @7, %bb.dr ], [ @33, %bb.cd ], [ @34, %bb.cf ], [ @35, %bb.cj ], [ @36, %bb.cl ], [ @16, %bb.df ], [ @38, %bb.ck ], [ @39, %bb.di ], [ @40, %bb.dj ], [ @41, %bb.ci ], [ @37, %bb.cm ], [ @6, %bb.co ], [ @12, %bb.dp ], [ @6, %._crit_edge401.i ], [ @16, %bb.eb ], [ @42, %bb.dm ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ol, i64 noundef %i.om, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.on) #13
          to label %.loopexit.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.i.cont.i:                               ; preds = %.loopexit.i.invoke.i
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i: ; preds = %bb.dz
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.oj
  store i32 0, ptr %i.oo, align 4, !noalias !183
  br label %bb.ea

bb.ea:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, %.lr.ph.i126.i
  %.sroa.9.5.i128.i = phi i8 [ %i.nx, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i ], [ %.sroa.9.399.i.i, %.lr.ph.i126.i ] ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %i.ny, %i.nn
  br i1 %exitcond.not.i129.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i, !llvm.loop !158

bb.eb:                                            ; preds = %bb.dl
  %i.op = icmp ugt i64 %i.da, %.pre402.i
  br i1 %i.op, label %bb.ec, label %.loopexit.i.invoke.i

bb.ec:                                            ; preds = %bb.eb
  %i.oq = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %.pre402.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load i32, ptr %i.or, align 4, !noundef !4
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.os)
          to label %._crit_edge401.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ed:                                            ; preds = %bb.bc, %bb.ax, %bb.ar
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ed, %bb.bb, %bb.aw, %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.eg

.invoke:                                          ; preds = %bb.ao, %bb.ee
  %i.ou = phi i1 [ true, %bb.ee ], [ false, %bb.ao ]
  invoke fastcc void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start(i1 noundef zeroext %i.ou, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, ptr noalias noundef align 8 dereferenceable(424) %i.p)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ao
  br label %.invoke

bb.ef:                                            ; preds = %.invoke451, %.invoke, %bb.em, %bb.ek, %bb.eh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i, %bb.ap
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.bu, %bb.ef
  %eh.lpad-body = phi { ptr, i32 } [ %i.ov, %bb.ef ], [ %i.gc, %bb.bu ], [ %.pn.pn.i, %bb.ar ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFAEBF_(ptr noalias noundef align 8 dereferenceable(424) %i.p) #15
          to label %bb.eq unwind label %bb.ep

bb.eg:                                            ; preds = %.invoke, %_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit
  %i.ow = load i64, ptr %i.p, align 8, !range !6, !noundef !4
  %i.ox = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noundef !4 ; 2 uses
  %i.oz = icmp ugt i64 %i.ow, %i.oy
  br i1 %i.oz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pa = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef range(i64 0, 9223372036854775807) %i.oy, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit unwind label %bb.ef ; 2 uses

bb.ei:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit, %bb.eg
  %i.pb = load i64, ptr %i.cm, align 8, !range !6, !noundef !4
  %i.pc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.pd = load i64, ptr %i.pc, align 8, !noundef !4 ; 2 uses
  %i.pe = icmp ugt i64 %i.pb, %i.pd
  br i1 %i.pe, label %bb.ek, label %bb.el

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit: ; preds = %bb.eh
  %i.pf = extractvalue { i64, i64 } %i.pa, 0      ; 2 uses
  %.not97 = icmp eq i64 %i.pf, -1
  br i1 %.not97, label %bb.ei, label %.invoke451, !prof !186

bb.ej:                                            ; preds = %bb.ac
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.pg = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm, i64 noundef range(i64 0, 9223372036854775807) %i.pd, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 unwind label %bb.ef ; 2 uses

bb.el:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %bb.ei
  %i.ph = load i64, ptr %i.ck, align 8, !range !6, !noundef !4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !noundef !4 ; 2 uses
  %i.pk = icmp ugt i64 %i.ph, %i.pj
  br i1 %i.pk, label %bb.em, label %bb.en

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111: ; preds = %bb.ek
  %i.pl = extractvalue { i64, i64 } %i.pg, 0      ; 2 uses
  %.not98 = icmp eq i64 %i.pl, -1
  br i1 %.not98, label %bb.el, label %.invoke451, !prof !186

bb.em:                                            ; preds = %bb.el
  %i.pm = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ck, i64 noundef range(i64 0, 9223372036854775807) %i.pj, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 unwind label %bb.ef ; 2 uses

bb.en:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115, %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(424) %i.p, i64 424, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.eo

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115: ; preds = %bb.em
  %i.pn = extractvalue { i64, i64 } %i.pm, 0      ; 2 uses
  %.not99 = icmp eq i64 %i.pn, -1
  br i1 %.not99, label %bb.en, label %.invoke451, !prof !186

.invoke451:                                       ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit
  %.sink452 = phi { i64, i64 } [ %i.pg, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pa, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pm, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.po = phi i64 [ %i.pl, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pf, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pn, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.pp = extractvalue { i64, i64 } %.sink452, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.po, i64 %i.pp) #13
          to label %.cont unwind label %bb.ef

.cont:                                            ; preds = %.invoke451
  unreachable

bb.eo:                                            ; preds = %bb.en, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.ep:                                            ; preds = %bb.an, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit, %.body, %bb.z, %bb.w
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.eq:                                            ; preds = %.body, %bb.w
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn.pn.pn

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit: ; preds = %bb.am, %bb.al, %bb.an
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives10SmallIndexEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.l) #15
          to label %bb.z unwind label %bb.ep
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !207 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
end_hunk_1

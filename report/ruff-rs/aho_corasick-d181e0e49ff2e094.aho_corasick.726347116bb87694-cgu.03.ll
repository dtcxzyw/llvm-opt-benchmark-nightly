Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/aho_corasick-d181e0e49ff2e094.aho_corasick.726347116bb87694-cgu.03?download=true
inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0_@_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_:bb.a
  %i.aw = load i64, ptr %i.ab, align 8, !alias.scope !45, !noundef !3 ; 2 uses
  %i.ax = icmp ult i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.ac, align 8, !alias.scope !45, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %i.aw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !45
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i: ; preds = %bb.k, %bb.m
  %.sroa.0.0.i.i.in = phi ptr [ %i.az, %bb.m ], [ %.sroa.4.0..sroa_idx.i.i, %bb.k ]
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.i.i.in, align 1, !noalias !44 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.i.i, 1
  br i1 %.not.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread: ; preds = %bb.j, %bb.f, %bb.k, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !44, !noundef !3
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = icmp ugt i64 %i.t, %i.bc
  br i1 %i.bd, label %bb.e, label %._crit_edge

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i, %bb.b
  %.sroa.0.0 = phi i32 [ 0, %bb.b ], [ %.sroa.0.0.i.i, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !3, !align !43, !noundef !3
  %i.bi = load i32, ptr %i.bh, align 4, !noundef !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, %i.a             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !3 ; 2 uses
  %i.bn = icmp ult i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !3, !noundef !3
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
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !noundef !3
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.m
  store i32 %3, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !3, !align !43, !noundef !3
  %i.bw = load i32, ptr %i.bv, align 4, !noundef !3
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, %i.a             ; 3 uses
  %i.bz = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.ca = icmp ult i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.br, align 8, !nonnull !3, !noundef !3
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by
  store i32 %3, ptr %i.cc, align 4
  br label %bb.q

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.by, i64 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start(i1 noundef zeroext %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(440) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(424) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.c = load i64, ptr %i.b, align 8, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 17 uses
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
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.u = load i64, ptr %i.q, align 8              ; 8 uses
  %i.v = load ptr, ptr %i.r, align 8, !nonnull !3 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit
  %i.w = phi ptr [ %i.j, %.lr.ph ], [ %i.io, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit ] ; 4 uses
  %i.x = phi { i32, ptr } [ %i.i, %.lr.ph ], [ %i.in, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit ]
  %i.y = extractvalue { i32, ptr } %i.x, 0
  %i.z = zext i32 %i.y to i64                     ; 7 uses
  %i.aa = shl i64 %i.z, %.pre                     ; 4 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !3
  %.not5 = icmp eq i32 %i.ad, 0
  br i1 %.not5, label %bb.c, label %bb.bm

._crit_edge:                                      ; preds = %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.af = load i32, ptr %i.ae, align 8, !noundef !3
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl i64 %i.ag, %.pre
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 400
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.al = load i32, ptr %i.ak, align 4, !noundef !3
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
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.bc = icmp ugt i64 %i.g, %i.z
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.z
  %i.be = load i32, ptr %i.bd, align 4, !noalias !88, !noundef !3 ; 2 uses
  %.not253.i = icmp eq i32 %i.be, 0
  br i1 %.not253.i, label %.lr.ph150.preheader.thread.i, label %.lr.ph142.i

.lr.ph150.preheader.thread.i:                     ; preds = %bb.d
  %i.bf = load i8, ptr %i.k, align 8, !alias.scope !87, !noalias !89, !noundef !3
  br label %bb.f

.lr.ph142.i:                                      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %i.bh = and i64 %i.aa, 4294967295               ; 4 uses
  %i.bi = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bj = load ptr, ptr %i.t, align 8, !nonnull !3
  %i.bk = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bl = load ptr, ptr %i.t, align 8, !nonnull !3
  %i.bm = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bn = load ptr, ptr %i.t, align 8, !nonnull !3
  %i.bo = load i64, ptr %i.s, align 8             ; 2 uses
  %i.bp = load ptr, ptr %i.t, align 8, !nonnull !3
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !noalias !88
  unreachable

.preheader.i:                                     ; preds = %bb.az
  %.not.i146.i = icmp ugt i64 %i.fw, 255
  br i1 %.not.i146.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.preheader.i

.lr.ph150.preheader.i:                            ; preds = %.preheader.i
  %i.bq = icmp eq i64 %i.fw, 255
  %i.br = add nsw i64 %.sroa.08.1.lcssa.fr.i, 2
  %spec.select58.peel.i = select i1 %i.bq, i64 255, i64 %i.br ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fw
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 2 uses
  %.not45.peel.i = icmp eq i8 %.sroa.9.4.i, %i.bt
  br i1 %.not45.peel.i, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.lr.ph150.preheader.i, %.lr.ph150.preheader.thread.i
  %i.bu = phi i8 [ %i.bf, %.lr.ph150.preheader.thread.i ], [ %i.bt, %.lr.ph150.preheader.i ] ; 2 uses
  %spec.select58.peel223.i = phi i64 [ 1, %.lr.ph150.preheader.thread.i ], [ %spec.select58.peel.i, %.lr.ph150.preheader.i ]
  %.sroa.08.0.lcssa215222.i = phi i64 [ 0, %.lr.ph150.preheader.thread.i ], [ %i.fw, %.lr.ph150.preheader.i ] ; 3 uses
  %i.bv = trunc nuw i64 %.sroa.08.0.lcssa215222.i to i8 ; 2 uses
  br i1 %0, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !90, !noundef !3 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !91), !noalias !92
  %i.bz = zext i32 %i.bx to i64                   ; 3 uses
  %i.ca = icmp ugt i64 %i.g, %i.bz
  br i1 %i.ca, label %.lr.ph23.i31, label %._crit_edge.i29

.lr.ph23.i31:                                     ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.08.0.lcssa215222.i
  br label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, %.lr.ph23.i31
  %i.cc = phi i64 [ %i.bz, %.lr.ph23.i31 ], [ %i.cv, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !93), !noalias !92
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !94, !noundef !3 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.j, label %bb.o

._crit_edge.i29:                                  ; preds = %bb.h, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38
  %.lcssa17.i30 = phi i64 [ %i.cv, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38 ], [ %i.bz, %bb.h ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i30, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !94
  unreachable

bb.j:                                             ; preds = %bb.i
  %.sroa.05.0.i.i21.i39 = load i32, ptr %i.cd, align 4, !noalias !95 ; 2 uses
  %i.ch = icmp eq i32 %.sroa.05.0.i.i21.i39, 0
  br i1 %i.ch, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.j, %bb.m
  %.sroa.05.0.i.i22.i41 = phi i32 [ %.sroa.05.0.i.i.i46, %bb.m ], [ %.sroa.05.0.i.i21.i39, %bb.j ]
  %i.ci = zext i32 %.sroa.05.0.i.i22.i41 to i64   ; 3 uses
  %i.cj = icmp ugt i64 %i.m, %i.ci
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i40
  %i.ck = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.ci ; 3 uses
  %.sroa.02.0.copyload.i.i.i42 = load i8, ptr %i.ck, align 1, !noalias !95 ; 2 uses
  %.not.i.i.i43 = icmp ult i8 %.sroa.02.0.copyload.i.i.i42, %i.bv
  br i1 %.not.i.i.i43, label %bb.m, label %bb.n

bb.l:                                             ; preds = %.lr.ph.i40
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !95
  unreachable

bb.m:                                             ; preds = %bb.k
  %.sroa.53.0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %.sroa.05.0.i.i.i46 = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i45, align 1, !noalias !95 ; 2 uses
  %i.cl = icmp eq i32 %.sroa.05.0.i.i.i46, 0
  br i1 %i.cl, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %.lr.ph.i40

bb.n:                                             ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i.i44 = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = icmp eq i8 %.sroa.02.0.copyload.i.i.i42, %i.bv
  br i1 %i.cm, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38

bb.o:                                             ; preds = %bb.i
  %i.cn = load i8, ptr %i.cb, align 1, !alias.scope !96, !noalias !90, !noundef !3
  %i.co = zext i8 %i.cn to i64
  %i.cp = zext i32 %i.cf to i64
  %i.cq = add nuw nsw i64 %i.co, %i.cp            ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %i.u
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cq
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !94
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32: ; preds = %bb.p, %bb.n
  %.sroa.0.0.i.i.in.i33 = phi ptr [ %i.cs, %bb.p ], [ %.sroa.4.0..sroa_idx.i.i.i44, %bb.n ]
  %.sroa.0.0.i.i.i34 = load i32, ptr %.sroa.0.0.i.i.in.i33, align 1, !noalias !97 ; 2 uses
  %.not.i.i35 = icmp eq i32 %.sroa.0.0.i.i.i34, 1
  br i1 %.not.i.i35, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36.loopexit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i38: ; preds = %bb.m, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i32, %bb.n, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !noalias !97, !noundef !3
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
  %i.db = load i64, ptr %i.s, align 8, !noalias !90, !noundef !3 ; 2 uses
  %i.dc = icmp ult i64 %i.da, %i.db
  br i1 %i.dc, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47, label %bb.r

bb.r:                                             ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !90
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i36
  %i.dd = load ptr, ptr %i.t, align 8, !noalias !90, !nonnull !3, !noundef !3
  %i.de = shl i64 %.sroa.0.0.i37, %.pre
  %i.df = trunc i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.da
  store i32 %i.df, ptr %i.dg, align 4, !noalias !90
  br label %bb.s

bb.s:                                             ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47, %.lr.ph150.preheader.i
  %spec.select58.peel224.i = phi i64 [ %spec.select58.peel223.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %spec.select58.peel.i, %.lr.ph150.preheader.i ]
  %.sroa.08.0.lcssa215221227.i = phi i64 [ %.sroa.08.0.lcssa215222.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %i.fw, %.lr.ph150.preheader.i ]
  %.sroa.9.2.peel.i = phi i8 [ %i.bu, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit47 ], [ %.sroa.9.4.i, %.lr.ph150.preheader.i ]
  %.not.i.peel.i = icmp eq i64 %.sroa.08.0.lcssa215221227.i, 255
  br i1 %.not.i.peel.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.i.preheader

.lr.ph150.i.preheader:                            ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.di = and i64 %i.aa, 4294967295
  %i.dj = load i64, ptr %i.s, align 8             ; 2 uses
  %i.dk = load ptr, ptr %i.t, align 8, !nonnull !3
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
  %.sroa.0.049147.i = phi i64 [ %spec.select58.i, %bb.ah ], [ %spec.select58.peel224.i, %.lr.ph150.i.preheader ] ; 6 uses
  %i.dn = icmp eq i64 %.sroa.0.049147.i, 255
  %i.do = add nuw nsw i64 %.sroa.0.049147.i, 1
  %spec.select58.i = select i1 %i.dn, i64 255, i64 %i.do
  %i.dp = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.049147.i
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 3 uses
  %.not45.i = icmp eq i8 %.sroa.9.1148.i, %i.dq
  br i1 %.not45.i, label %bb.ah, label %bb.u

bb.u:                                             ; preds = %.lr.ph150.i
  %i.dr = trunc nuw i64 %.sroa.0.049147.i to i8   ; 2 uses
  br i1 %0, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = load i32, ptr %i.dh, align 4, !noalias !98, !noundef !3 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !99), !noalias !92
  %i.du = zext i32 %i.ds to i64                   ; 3 uses
  %i.dv = icmp ugt i64 %i.g, %i.du
  br i1 %i.dv, label %.lr.ph23.i12, label %._crit_edge.i10

.lr.ph23.i12:                                     ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.0.049147.i
  br label %bb.x

bb.x:                                             ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, %.lr.ph23.i12
  %i.dx = phi i64 [ %i.du, %.lr.ph23.i12 ], [ %i.eq, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !100), !noalias !92
  %i.dy = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !noalias !101, !noundef !3 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.y, label %bb.ad

._crit_edge.i10:                                  ; preds = %bb.w, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19
  %.lcssa17.i11 = phi i64 [ %i.eq, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19 ], [ %i.du, %bb.w ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i11, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !101
  unreachable

bb.y:                                             ; preds = %bb.x
  %.sroa.05.0.i.i21.i20 = load i32, ptr %i.dy, align 4, !noalias !102 ; 2 uses
  %i.ec = icmp eq i32 %.sroa.05.0.i.i21.i20, 0
  br i1 %i.ec, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.y, %bb.ab
  %.sroa.05.0.i.i22.i22 = phi i32 [ %.sroa.05.0.i.i.i27, %bb.ab ], [ %.sroa.05.0.i.i21.i20, %bb.y ]
  %i.ed = zext i32 %.sroa.05.0.i.i22.i22 to i64   ; 3 uses
  %i.ee = icmp ugt i64 %i.m, %i.ed
  br i1 %i.ee, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i21
  %i.ef = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.ed ; 3 uses
  %.sroa.02.0.copyload.i.i.i23 = load i8, ptr %i.ef, align 1, !noalias !102 ; 2 uses
  %.not.i.i.i24 = icmp ult i8 %.sroa.02.0.copyload.i.i.i23, %i.dr
  br i1 %.not.i.i.i24, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i21
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !102
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.sroa.53.0..sroa_idx.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.ef, i64 5
  %.sroa.05.0.i.i.i27 = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i26, align 1, !noalias !102 ; 2 uses
  %i.eg = icmp eq i32 %.sroa.05.0.i.i.i27, 0
  br i1 %i.eg, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %.lr.ph.i21

bb.ac:                                            ; preds = %bb.z
  %.sroa.4.0..sroa_idx.i.i.i25 = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = icmp eq i8 %.sroa.02.0.copyload.i.i.i23, %i.dr
  br i1 %i.eh, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19

bb.ad:                                            ; preds = %bb.x
  %i.ei = load i8, ptr %i.dw, align 1, !alias.scope !103, !noalias !98, !noundef !3
  %i.ej = zext i8 %i.ei to i64
  %i.ek = zext i32 %i.ea to i64
  %i.el = add nuw nsw i64 %i.ej, %i.ek            ; 3 uses
  %i.em = icmp ult i64 %i.el, %i.u
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.el
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13

bb.af:                                            ; preds = %bb.ad
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !101
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13: ; preds = %bb.ae, %bb.ac
  %.sroa.0.0.i.i.in.i14 = phi ptr [ %i.en, %bb.ae ], [ %.sroa.4.0..sroa_idx.i.i.i25, %bb.ac ]
  %.sroa.0.0.i.i.i15 = load i32, ptr %.sroa.0.0.i.i.in.i14, align 1, !noalias !104 ; 2 uses
  %.not.i.i16 = icmp eq i32 %.sroa.0.0.i.i.i15, 1
  br i1 %.not.i.i16, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17.loopexit

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i19: ; preds = %bb.ab, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i13, %bb.ac, %bb.y
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !noalias !104, !noundef !3
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
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eu, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !98
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i17
  %i.ew = shl i64 %.sroa.0.0.i18, %.pre
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.eu
  store i32 %i.ex, ptr %i.ey, align 4, !noalias !98
  br label %bb.ah

bb.ah:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28, %.lr.ph150.i
  %.sroa.9.2.i = phi i8 [ %i.dq, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit28 ], [ %.sroa.9.1148.i, %.lr.ph150.i ]
  %.not.i.i = icmp ugt i64 %.sroa.0.049147.i, 254
  br i1 %.not.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit, label %.lr.ph150.i, !llvm.loop !69

bb.ai:                                            ; preds = %bb.t
  %i.ez = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.dl ; 3 uses
  %.sroa.030.0.copyload.i = load i8, ptr %i.ez, align 1, !noalias !88 ; 3 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %.sroa.431.0.copyload.i = load i32, ptr %.sroa.431.0..sroa_idx.i, align 1, !noalias !88 ; 2 uses
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %.sroa.532.0.copyload.i = load i32, ptr %.sroa.532.0..sroa_idx.i, align 1, !noalias !88 ; 2 uses
  %i.fa = zext i8 %.sroa.030.0.copyload.i to i64  ; 9 uses
  %i.fb = icmp ult i64 %.sroa.08.0138.i, %i.fa
  br i1 %i.fb, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.ai
  br i1 %0, label %.lr.ph.i.us.preheader, label %.lr.ph.i

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.i.preheader
  %i.fc = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.0138.i
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 3 uses
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
  store i32 0, ptr %i.fi, align 4, !noalias !105
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel, %.lr.ph.i.us.preheader
  %.sroa.9.5.i.us.peel = phi i8 [ %i.fd, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us.peel ], [ %.sroa.9.0139.i, %.lr.ph.i.us.preheader ] ; 2 uses
  %exitcond.not.i.us.peel = icmp eq i64 %i.fe, %i.fa
  br i1 %exitcond.not.i.us.peel, label %._crit_edge.i, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.aj, %bb.ak
  %.sroa.9.3132.i.us = phi i8 [ %.sroa.9.5.i.us, %bb.ak ], [ %.sroa.9.5.i.us.peel, %bb.aj ] ; 2 uses
  %.sroa.08.1131.i.us = phi i64 [ %i.fl, %bb.ak ], [ %i.fe, %bb.aj ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.1131.i.us
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 3 uses
  %i.fl = add i64 %.sroa.08.1131.i.us, 1          ; 2 uses
  %.not44.i.us = icmp eq i8 %.sroa.9.3132.i.us, %i.fk
  br i1 %.not44.i.us, label %bb.ak, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us: ; preds = %.lr.ph.i.us
  %i.fm = zext i8 %i.fk to i64
  %i.fn = add nuw nsw i64 %i.bh, %i.fm            ; 3 uses
  %i.fo = icmp ult i64 %i.fn, %i.bm
  br i1 %i.fo, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us, label %.split.us

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.fn
  store i32 0, ptr %i.fp, align 4, !noalias !105
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us, %.lr.ph.i.us
  %.sroa.9.5.i.us = phi i8 [ %i.fk, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i.us ], [ %.sroa.9.3132.i.us, %.lr.ph.i.us ] ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.fl, %i.fa
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.lr.ph.i.us, !llvm.loop !72

bb.al:                                            ; preds = %bb.t
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !88
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.bl
  %.sroa.0.3133.i = phi i1 [ true, %bb.bl ], [ %.sroa.0.0140.i, %.lr.ph.i.preheader ]
  %.sroa.9.3132.i = phi i8 [ %.sroa.9.5.i, %bb.bl ], [ %.sroa.9.0139.i, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.08.1131.i = phi i64 [ %i.ft, %bb.bl ], [ %.sroa.08.0138.i, %.lr.ph.i.preheader ] ; 4 uses
  %i.fq = trunc nuw i64 %.sroa.08.1131.i to i8    ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.08.1131.i
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 3 uses
  %i.ft = add i64 %.sroa.08.1131.i, 1             ; 2 uses
  %.not44.i = icmp eq i8 %.sroa.9.3132.i, %i.fs
  %or.cond47.i = select i1 %.sroa.0.3133.i, i1 %.not44.i, i1 false
  br i1 %or.cond47.i, label %bb.bl, label %bb.ba

._crit_edge.i:                                    ; preds = %bb.bl, %bb.ak, %bb.aj, %bb.ai
  %.sroa.08.1.lcssa.i = phi i64 [ %.sroa.08.0138.i, %bb.ai ], [ %i.fa, %bb.aj ], [ %i.fa, %bb.ak ], [ %i.fa, %bb.bl ]
  %.sroa.9.3.lcssa.i = phi i8 [ %.sroa.9.0139.i, %bb.ai ], [ %.sroa.9.5.i.us.peel, %bb.aj ], [ %.sroa.9.5.i.us, %bb.ak ], [ %.sroa.9.5.i, %bb.bl ] ; 2 uses
  %.sroa.0.3.lcssa.i = phi i1 [ %.sroa.0.0140.i, %bb.ai ], [ true, %bb.aj ], [ true, %bb.ak ], [ true, %bb.bl ]
  %.sroa.08.1.lcssa.fr.i = freeze i64 %.sroa.08.1.lcssa.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.fa
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !87, !noalias !89, !noundef !3 ; 3 uses
  %i.fw = add i64 %.sroa.08.1.lcssa.fr.i, 1       ; 6 uses
  %.not.i = icmp eq i8 %.sroa.9.3.lcssa.i, %i.fv
  %or.cond46.i = select i1 %.sroa.0.3.lcssa.i, i1 %.not.i, i1 false
  br i1 %or.cond46.i, label %bb.az, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %i.fx = icmp ne i32 %.sroa.431.0.copyload.i, 1  ; 2 uses
  %brmerge = or i1 %0, %i.fx
  %.sroa.431.0.copyload.i.mux = select i1 %i.fx, i32 %.sroa.431.0.copyload.i, i32 0
  br i1 %brmerge, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fy = load i32, ptr %i.bg, align 4, !noalias !106, !noundef !3 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !107), !noalias !92
  %i.ga = zext i32 %i.fy to i64                   ; 3 uses
  %i.gb = icmp ugt i64 %i.g, %i.ga
  br i1 %i.gb, label %.lr.ph23.i, label %._crit_edge.i6

.lr.ph23.i:                                       ; preds = %bb.ao
  %i.gc = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fa
  br label %bb.ap

bb.ap:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, %.lr.ph23.i
  %i.gd = phi i64 [ %i.ga, %.lr.ph23.i ], [ %i.gw, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !108), !noalias !92
  %i.ge = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i32, ptr %i.gf, align 4, !noalias !109, !noundef !3 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.aq, label %bb.av

._crit_edge.i6:                                   ; preds = %bb.ao, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i
  %.lcssa17.i = phi i64 [ %i.gw, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i ], [ %i.ga, %bb.ao ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !109
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %.sroa.05.0.i.i21.i = load i32, ptr %i.ge, align 4, !noalias !110 ; 2 uses
  %i.gi = icmp eq i32 %.sroa.05.0.i.i21.i, 0
  br i1 %i.gi, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.aq, %bb.at
  %.sroa.05.0.i.i22.i = phi i32 [ %.sroa.05.0.i.i.i, %bb.at ], [ %.sroa.05.0.i.i21.i, %bb.aq ]
  %i.gj = zext i32 %.sroa.05.0.i.i22.i to i64     ; 3 uses
  %i.gk = icmp ugt i64 %i.m, %i.gj
  br i1 %i.gk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i8
  %i.gl = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.gj ; 3 uses
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.gl, align 1, !noalias !110 ; 2 uses
  %.not.i.i.i9 = icmp ugt i8 %.sroa.030.0.copyload.i, %.sroa.02.0.copyload.i.i.i
  br i1 %.not.i.i.i9, label %bb.at, label %bb.au

bb.as:                                            ; preds = %.lr.ph.i8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !110
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  %.sroa.05.0.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i, align 1, !noalias !110 ; 2 uses
  %i.gm = icmp eq i32 %.sroa.05.0.i.i.i, 0
  br i1 %i.gm, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %.lr.ph.i8

bb.au:                                            ; preds = %bb.ar
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = icmp eq i8 %.sroa.030.0.copyload.i, %.sroa.02.0.copyload.i.i.i
  br i1 %i.gn, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i

bb.av:                                            ; preds = %bb.ap
  %i.go = load i8, ptr %i.gc, align 1, !alias.scope !111, !noalias !106, !noundef !3
  %i.gp = zext i8 %i.go to i64
  %i.gq = zext i32 %i.gg to i64
  %i.gr = add nuw nsw i64 %i.gp, %i.gq            ; 3 uses
  %i.gs = icmp ult i64 %i.gr, %i.u
  br i1 %i.gs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.gr
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i

bb.ax:                                            ; preds = %bb.av
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gr, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !109
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i: ; preds = %bb.aw, %bb.au
  %.sroa.0.0.i.i.in.i = phi ptr [ %i.gt, %bb.aw ], [ %.sroa.4.0..sroa_idx.i.i.i, %bb.au ]
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.i.i.in.i, align 1, !noalias !112 ; 2 uses
  %.not.i.i7 = icmp eq i32 %.sroa.0.0.i.i.i, 1
  br i1 %.not.i.i7, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i: ; preds = %bb.at, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i, %bb.au, %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !noalias !112, !noundef !3
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
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gz, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !106
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i
  %i.hb = zext i32 %.sroa.0.0.i to i64
  %i.hc = shl i64 %i.hb, %.pre
  %i.hd = trunc i64 %i.hc to i32
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.gz
  store i32 %i.hd, ptr %i.he, align 4, !noalias !106
  br label %bb.az

bb.az:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit, %._crit_edge.i
  %.sroa.9.4.i = phi i8 [ %i.fv, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit ], [ %.sroa.9.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.hf = icmp eq i32 %.sroa.532.0.copyload.i, 0
  br i1 %i.hf, label %.preheader.i, label %bb.t

bb.ba:                                            ; preds = %.lr.ph.i
  %i.hg = load i32, ptr %i.bg, align 4, !noalias !105, !noundef !3 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.hi = zext i32 %i.hg to i64                   ; 3 uses
  %i.hj = icmp ugt i64 %i.g, %i.hi
  br i1 %i.hj, label %.lr.ph23.i.i, label %._crit_edge.i.i

.lr.ph23.i.i:                                     ; preds = %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.08.1131.i
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, %.lr.ph23.i.i
  %i.hl = phi i64 [ %i.hi, %.lr.ph23.i.i ], [ %i.ie, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.hm = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.hl ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ho = load i32, ptr %i.hn, align 4, !noalias !115, !noundef !3 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bd, label %bb.bi

._crit_edge.i.i:                                  ; preds = %bb.bb, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i
  %.lcssa17.i.i = phi i64 [ %i.ie, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ], [ %i.hi, %bb.bb ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !115
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %.sroa.05.0.i.i21.i.i = load i32, ptr %i.hm, align 4, !noalias !116 ; 2 uses
  %i.hq = icmp eq i32 %.sroa.05.0.i.i21.i.i, 0
  br i1 %i.hq, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.bg
  %.sroa.05.0.i.i22.i.i = phi i32 [ %.sroa.05.0.i.i.i.i, %bb.bg ], [ %.sroa.05.0.i.i21.i.i, %bb.bd ]
  %i.hr = zext i32 %.sroa.05.0.i.i22.i.i to i64   ; 3 uses
  %i.hs = icmp ugt i64 %i.m, %i.hr
  br i1 %i.hs, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i
  %i.ht = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.hr ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i = load i8, ptr %i.ht, align 1, !noalias !116 ; 2 uses
  %.not.i.i.i.i = icmp ult i8 %.sroa.02.0.copyload.i.i.i.i, %i.fq
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hr, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !116
  unreachable

bb.bg:                                            ; preds = %bb.be
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 5
  %.sroa.05.0.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 1, !noalias !116 ; 2 uses
  %i.hu = icmp eq i32 %.sroa.05.0.i.i.i.i, 0
  br i1 %i.hu, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

bb.bh:                                            ; preds = %bb.be
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hv = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i, %i.fq
  br i1 %i.hv, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i

bb.bi:                                            ; preds = %bb.bc
  %i.hw = load i8, ptr %i.hk, align 1, !alias.scope !117, !noalias !105, !noundef !3
  %i.hx = zext i8 %i.hw to i64
  %i.hy = zext i32 %i.ho to i64
  %i.hz = add nuw nsw i64 %i.hx, %i.hy            ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.u
  br i1 %i.ia, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.hz
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !115
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous:bb.a
          to label %_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit unwind label %bb.ef

bb.bw:                                            ; preds = %bb.bj
  %i.gh = load ptr, ptr %i.dp, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.sroa.011.0208.i
  %i.gj = load i8, ptr %i.gi, align 1, !range !152, !noundef !3
  %i.gk = trunc nuw i8 %i.gj to i1
  %i.gl = load i64, ptr %i.eo, align 8, !alias.scope !157, !noalias !156, !noundef !3 ; 7 uses
  %i.gm = icmp ugt i64 %i.fe, %i.gl               ; 2 uses
  br i1 %i.gk, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.gm, label %.invoke690.i, label %bb.bz, !prof !4

bb.by:                                            ; preds = %bb.bw
  br i1 %i.gm, label %.invoke690.i, label %bb.cb, !prof !4

bb.bz:                                            ; preds = %bb.bx
  %i.gn = sub nuw i64 %i.gl, %i.fe                ; 2 uses
  %.not71.i = icmp ugt i64 %i.cw, %i.gn
  br i1 %.not71.i, label %.invoke690.i, label %.lr.ph.preheader.i, !prof !161

.invoke690.i:                                     ; preds = %bb.cb, %bb.bz, %bb.by, %bb.bx
  %i.go = phi i64 [ %i.fe, %bb.by ], [ %i.fe, %bb.bx ], [ 0, %bb.bz ], [ 0, %bb.cb ]
  %i.gp = phi i64 [ %i.gl, %bb.by ], [ %i.gl, %bb.bx ], [ %i.cw, %bb.bz ], [ %i.cw, %bb.cb ]
  %i.gq = phi i64 [ %i.gl, %bb.by ], [ %i.gl, %bb.bx ], [ %i.gn, %bb.bz ], [ %i.he, %bb.cb ]
  %i.gr = phi ptr [ @32, %bb.by ], [ @29, %bb.bx ], [ @28, %bb.bz ], [ @31, %bb.cb ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.go, i64 noundef %i.gp, i64 noundef %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gr) #13
          to label %.cont691.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont691.i:                                       ; preds = %.invoke690.i
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.bz
  %i.gs = load ptr, ptr %i.ep, align 8, !alias.scope !157, !noalias !156, !nonnull !3, !noundef !3
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.fe ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ca, %.lr.ph.preheader.i
  %.sroa.08.0205.i = phi ptr [ %i.ha, %bb.ca ], [ %i.gt, %.lr.ph.preheader.i ] ; 3 uses
  %i.gv = load i32, ptr %.sroa.08.0205.i, align 4, !noundef !3
  %i.gw = zext i32 %i.gv to i64                   ; 3 uses
  %i.gx = load i64, ptr %i.dz, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.gy = icmp ugt i64 %i.gx, %i.gw
  br i1 %i.gy, label %bb.ca, label %.invoke.i

bb.ca:                                            ; preds = %.lr.ph.i
  %i.gz = load ptr, ptr %i.ea, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.08.0205.i, i64 4 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.gw
  %i.hc = load i32, ptr %i.hb, align 4, !noundef !3
  store i32 %i.hc, ptr %.sroa.08.0205.i, align 4
  %i.hd = icmp eq ptr %i.ha, %i.gu
  br i1 %i.hd, label %.loopexit.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.ca, %bb.cc
  %exitcond.not.i = icmp eq i64 %i.fd, %i.ex
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.bj

bb.cb:                                            ; preds = %bb.by
  %i.he = sub nuw i64 %i.gl, %i.fe                ; 2 uses
  %.not72.i = icmp ugt i64 %i.cw, %i.he
  br i1 %.not72.i, label %.invoke690.i, label %.lr.ph207.preheader.i, !prof !161

.lr.ph207.preheader.i:                            ; preds = %bb.cb
  %i.hf = load ptr, ptr %i.ep, align 8, !alias.scope !157, !noalias !156, !nonnull !3, !noundef !3
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.fe ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %bb.cc, %.lr.ph207.preheader.i
  %.sroa.06.0206.i = phi ptr [ %i.hn, %bb.cc ], [ %i.hg, %.lr.ph207.preheader.i ] ; 3 uses
  %i.hi = load i32, ptr %.sroa.06.0206.i, align 4, !noundef !3
  %i.hj = zext i32 %i.hi to i64                   ; 3 uses
  %i.hk = load i64, ptr %i.eb, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.hl = icmp ugt i64 %i.hk, %i.hj
  br i1 %i.hl, label %bb.cc, label %.invoke.i

bb.cc:                                            ; preds = %.lr.ph207.i
  %i.hm = load ptr, ptr %i.ec, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.06.0206.i, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hj
  %i.hp = load i32, ptr %i.ho, align 4, !noundef !3
  store i32 %i.hp, ptr %.sroa.06.0206.i, align 4
  %i.hq = icmp eq ptr %i.hn, %i.hh
  br i1 %i.hq, label %.loopexit.i, label %.lr.ph207.i

bb.cd:                                            ; preds = %bb.bh
  %i.hr = zext nneg i32 %i.ev to i64              ; 6 uses
  %i.hs = load i64, ptr %i.dz, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.ht = icmp ugt i64 %i.hs, %i.hr
  br i1 %i.ht, label %bb.cf, label %.invoke.i

bb.ce:                                            ; preds = %bb.bh
  %i.hu = icmp eq i32 %i.ev, %i.dv
  br i1 %i.hu, label %bb.ci, label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.hv = load ptr, ptr %i.ea, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hr
  store i32 %.sroa.0.0.i, ptr %i.hw, align 4
  %i.hx = load i64, ptr %i.eb, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, %i.hr
  br i1 %i.hy, label %bb.cg, label %.invoke.i

bb.cg:                                            ; preds = %bb.cf
  %i.hz = load ptr, ptr %i.ec, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hr
  store i32 %.sroa.0.0.i, ptr %i.ia, align 4
  br label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i

_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i: ; preds = %bb.dt, %bb.dq, %.preheader.i125.i, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, %bb.cg
  %.sroa.0.0.pn.i = phi i32 [ %.sroa.0.0.i, %bb.cg ], [ %i.ie, %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i ], [ %.sroa.0.0.i, %.preheader.i125.i ], [ %.sroa.0.0.i, %bb.dq ], [ %.sroa.0.0.i, %bb.dt ]
  %.sroa.0.1.i = add i32 %.sroa.0.0.pn.i, %i.dy
  br label %bb.bf

bb.ch:                                            ; preds = %bb.ce
  %i.ib = icmp eq i32 %i.ev, %i.dx
  br i1 %i.ib, label %bb.ck, label %bb.cj

bb.ci:                                            ; preds = %bb.ce
  %i.ic = load i64, ptr %i.dz, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.id = icmp ugt i64 %i.ic, %i.et
  br i1 %i.id, label %bb.dm, label %.invoke.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158
  store i32 %.sroa.0.0.i, ptr %i.d, align 4, !noalias !158
  %i.ie = add i32 %.sroa.0.0.i, %i.dy             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !158
  store i32 %i.ie, ptr %i.c, align 4, !noalias !158
  %i.if = zext i32 %i.ev to i64                   ; 12 uses
  %i.ig = load i64, ptr %i.dz, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.ih = icmp ugt i64 %i.ig, %i.if
  br i1 %i.ih, label %bb.cl, label %.invoke.i

bb.ck:                                            ; preds = %bb.ch
  %i.ii = load i64, ptr %i.dz, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.ij = icmp ugt i64 %i.ii, %i.es
  br i1 %i.ij, label %bb.di, label %.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.ik = load ptr, ptr %i.ea, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.if
  store i32 %.sroa.0.0.i, ptr %i.il, align 4
  %i.im = load i64, ptr %i.eb, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.in = icmp ugt i64 %i.im, %i.if
  br i1 %i.in, label %bb.cm, label %.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.io = load ptr, ptr %i.ec, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.if
  %i.iq = load i32, ptr %i.c, align 4, !noalias !158, !noundef !3 ; 2 uses
  store i32 %i.iq, ptr %i.ip, align 4
  %i.ir = zext i32 %i.iq to i64
  %i.is = lshr i64 %i.ir, %i.cv                   ; 3 uses
  %i.it = load i64, ptr %i.dq, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.iu = icmp ult i64 %i.is, %i.it
  br i1 %i.iu, label %bb.cn, label %.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.iv = load ptr, ptr %i.dp, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.is
  store i8 1, ptr %i.iw, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.iy = load i32, ptr %i.ix, align 4, !noundef !3
  %.not73.i = icmp eq i32 %i.iy, 0
  br i1 %.not73.i, label %bb.co, label %bb.df

bb.co:                                            ; preds = %bb.dh, %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !158
  store ptr %i.ew, ptr %i.b, align 8, !noalias !158
  store ptr %2, ptr %i.ed, align 8, !noalias !158
  store ptr %i.p, ptr %i.ee, align 8, !noalias !158
  store ptr %i.d, ptr %i.ef, align 8, !noalias !158
  store ptr %i.c, ptr %i.eg, align 8, !noalias !158
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.iz = icmp ugt i64 %i.da, %i.if
  br i1 %i.iz, label %bb.cp, label %.invoke.i

bb.cp:                                            ; preds = %bb.co
  %i.ja = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.if
  %i.jb = load i32, ptr %i.ja, align 4, !noalias !163, !noundef !3 ; 2 uses
  %.not253.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not253.i.i, label %.lr.ph150.preheader.thread.i.i, label %.lr.ph142.i.i

.lr.ph150.preheader.thread.i.i:                   ; preds = %bb.cp
  %i.jc = load i8, ptr %i.ci, align 8, !alias.scope !164, !noalias !165, !noundef !3
  br label %bb.cq

.lr.ph142.i.i:                                    ; preds = %bb.cp
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  br label %bb.cr

.preheader.i.i:                                   ; preds = %.noexc102.i
  %.not.i146.i.i = icmp ugt i64 %i.ka, 255
  br i1 %.not.i146.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.preheader.i.i

.lr.ph150.preheader.i.i:                          ; preds = %.preheader.i.i
  %i.je = icmp eq i64 %i.ka, 255
  %i.jf = add nsw i64 %.sroa.08.1.lcssa.i.i, 2
  %spec.select58.peel.i.i = select i1 %i.je, i64 255, i64 %i.jf ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ka
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !164, !noalias !165, !noundef !3 ; 2 uses
  %.not45.peel.i.i = icmp eq i8 %.sroa.9.4.i.i, %i.jh
  br i1 %.not45.peel.i.i, label %.noexc99.i, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph150.preheader.i.i, %.lr.ph150.preheader.thread.i.i
  %i.ji = phi i8 [ %i.jc, %.lr.ph150.preheader.thread.i.i ], [ %i.jh, %.lr.ph150.preheader.i.i ] ; 2 uses
  %spec.select58.peel223.i.i = phi i64 [ 1, %.lr.ph150.preheader.thread.i.i ], [ %spec.select58.peel.i.i, %.lr.ph150.preheader.i.i ]
  %.sroa.08.0.lcssa215222.i.i = phi i64 [ 0, %.lr.ph150.preheader.thread.i.i ], [ %i.ka, %.lr.ph150.preheader.i.i ] ; 2 uses
  %i.jj = trunc nuw i64 %.sroa.08.0.lcssa215222.i.i to i8
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %i.jj, i8 noundef %i.ji, i32 noundef 1)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc99.i:                                       ; preds = %bb.cq, %.lr.ph150.preheader.i.i
  %spec.select58.peel224.i.i = phi i64 [ %spec.select58.peel.i.i, %.lr.ph150.preheader.i.i ], [ %spec.select58.peel223.i.i, %bb.cq ]
  %.sroa.08.0.lcssa215221227.i.i = phi i64 [ %i.ka, %.lr.ph150.preheader.i.i ], [ %.sroa.08.0.lcssa215222.i.i, %bb.cq ]
  %.sroa.9.2.peel.i.i = phi i8 [ %.sroa.9.4.i.i, %.lr.ph150.preheader.i.i ], [ %i.ji, %bb.cq ]
  %.not.i.peel.i.i = icmp eq i64 %.sroa.08.0.lcssa215221227.i.i, 255
  br i1 %.not.i.peel.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.i.i

bb.cr:                                            ; preds = %.noexc102.i, %.lr.ph142.i.i
  %.sroa.0.0140.i.i = phi i1 [ false, %.lr.ph142.i.i ], [ true, %.noexc102.i ] ; 2 uses
  %.sroa.9.0139.i.i = phi i8 [ undef, %.lr.ph142.i.i ], [ %.sroa.9.4.i.i, %.noexc102.i ] ; 2 uses
  %.sroa.08.0138.i.i = phi i64 [ 0, %.lr.ph142.i.i ], [ %i.ka, %.noexc102.i ] ; 3 uses
  %.sroa.034.0137.i.i = phi i32 [ %i.jb, %.lr.ph142.i.i ], [ %.sroa.532.0.copyload.i.i, %.noexc102.i ]
  %i.jk = zext i32 %.sroa.034.0137.i.i to i64     ; 3 uses
  %i.jl = icmp ugt i64 %i.ei, %i.jk
  br i1 %i.jl, label %bb.ct, label %.invoke.i

.lr.ph150.i.i:                                    ; preds = %.noexc99.i, %.noexc100.i
  %.sroa.9.1148.i.i = phi i8 [ %.sroa.9.2.i.i, %.noexc100.i ], [ %.sroa.9.2.peel.i.i, %.noexc99.i ] ; 2 uses
  %.sroa.0.049147.i.i = phi i64 [ %spec.select58.i.i, %.noexc100.i ], [ %spec.select58.peel224.i.i, %.noexc99.i ] ; 5 uses
  %i.jm = icmp eq i64 %.sroa.0.049147.i.i, 255
  %i.jn = add nuw nsw i64 %.sroa.0.049147.i.i, 1
  %spec.select58.i.i = select i1 %i.jm, i64 255, i64 %i.jn
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0.049147.i.i
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !164, !noalias !165, !noundef !3 ; 3 uses
  %.not45.i.i = icmp eq i8 %.sroa.9.1148.i.i, %i.jp
  br i1 %.not45.i.i, label %.noexc100.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph150.i.i
  %i.jq = trunc nuw i64 %.sroa.0.049147.i.i to i8
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %i.jq, i8 noundef %i.jp, i32 noundef 1)
          to label %.noexc100.i unwind label %.loopexit13.i

.noexc100.i:                                      ; preds = %bb.cs, %.lr.ph150.i.i
  %.sroa.9.2.i.i = phi i8 [ %.sroa.9.1148.i.i, %.lr.ph150.i.i ], [ %i.jp, %bb.cs ]
  %.not.i.i.i = icmp ugt i64 %.sroa.0.049147.i.i, 254
  br i1 %.not.i.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i, label %.lr.ph150.i.i, !llvm.loop !136

bb.ct:                                            ; preds = %bb.cr
  %i.jr = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.jk ; 3 uses
  %.sroa.030.0.copyload.i.i = load i8, ptr %i.jr, align 1, !noalias !163
  %.sroa.030.0.copyload.i.fr.i = freeze i8 %.sroa.030.0.copyload.i.i ; 2 uses
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %.sroa.431.0.copyload.i.i = load i32, ptr %.sroa.431.0..sroa_idx.i.i, align 1, !noalias !163
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 5
  %.sroa.532.0.copyload.i.i = load i32, ptr %.sroa.532.0..sroa_idx.i.i, align 1, !noalias !163 ; 2 uses
  %i.js = zext i8 %.sroa.030.0.copyload.i.fr.i to i64 ; 4 uses
  %i.jt = icmp ult i64 %.sroa.08.0138.i.i, %i.js
  br i1 %i.jt, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ct, %bb.de
  %.sroa.0.3133.i.i = phi i1 [ true, %bb.de ], [ %.sroa.0.0140.i.i, %bb.ct ]
  %.sroa.9.3132.i.i = phi i8 [ %.sroa.9.5.i.i, %bb.de ], [ %.sroa.9.0139.i.i, %bb.ct ] ; 2 uses
  %.sroa.08.1131.i.i = phi i64 [ %i.jx, %bb.de ], [ %.sroa.08.0138.i.i, %bb.ct ] ; 4 uses
  %i.ju = trunc nuw i64 %.sroa.08.1131.i.i to i8  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.1131.i.i
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !164, !noalias !165, !noundef !3 ; 3 uses
  %i.jx = add nuw nsw i64 %.sroa.08.1131.i.i, 1   ; 2 uses
  %.not44.i.i = icmp eq i8 %.sroa.9.3132.i.i, %i.jw
  %or.cond47.i.i = select i1 %.sroa.0.3133.i.i, i1 %.not44.i.i, i1 false
  br i1 %or.cond47.i.i, label %bb.de, label %bb.cv

._crit_edge.i.i:                                  ; preds = %bb.de, %bb.ct
  %.sroa.08.1.lcssa.i.i = phi i64 [ %.sroa.08.0138.i.i, %bb.ct ], [ %i.js, %bb.de ] ; 2 uses
  %.sroa.9.3.lcssa.i.i = phi i8 [ %.sroa.9.0139.i.i, %bb.ct ], [ %.sroa.9.5.i.i, %bb.de ] ; 2 uses
  %.sroa.0.3.lcssa.i.i = phi i1 [ %.sroa.0.0140.i.i, %bb.ct ], [ true, %bb.de ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.js
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !164, !noalias !165, !noundef !3 ; 3 uses
  %i.ka = add i64 %.sroa.08.1.lcssa.i.i, 1        ; 6 uses
  %.not.i.i = icmp eq i8 %.sroa.9.3.lcssa.i.i, %i.jz
  %or.cond46.i.i = select i1 %.sroa.0.3.lcssa.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond46.i.i, label %.noexc102.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i
  invoke fastcc void @_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.b, i8 noundef %.sroa.030.0.copyload.i.fr.i, i8 noundef %i.jz, i32 noundef %.sroa.431.0.copyload.i.i)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.i

.noexc102.i:                                      ; preds = %bb.cu, %._crit_edge.i.i
  %.sroa.9.4.i.i = phi i8 [ %.sroa.9.3.lcssa.i.i, %._crit_edge.i.i ], [ %i.jz, %bb.cu ] ; 3 uses
  %i.kb = icmp eq i32 %.sroa.532.0.copyload.i.i, 0
  br i1 %i.kb, label %.preheader.i.i, label %bb.cr

bb.cv:                                            ; preds = %.lr.ph.i.i
  %i.kc = zext i8 %i.jw to i64
  %i.kd = load i32, ptr %i.jd, align 4, !noalias !166, !noundef !3 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.kf = zext i32 %i.kd to i64                   ; 3 uses
  %i.kg = icmp ugt i64 %i.da, %i.kf
  br i1 %i.kg, label %.lr.ph28.i.i.i, label %.invoke.i

.lr.ph28.i.i.i:                                   ; preds = %bb.cw
  %i.kh = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.08.1131.i.i
  br label %bb.cx

bb.cx:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, %.lr.ph28.i.i.i
  %i.ki = phi i64 [ %i.kf, %.lr.ph28.i.i.i ], [ %i.lb, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.kj = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.ki ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4, !noalias !169, !noundef !3 ; 2 uses
  %i.km = icmp eq i32 %i.kl, 0
  br i1 %i.km, label %bb.cy, label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  %.sroa.05.0.i.i26.i.i.i = load i32, ptr %i.kj, align 4, !noalias !170 ; 2 uses
  %i.kn = icmp eq i32 %.sroa.05.0.i.i26.i.i.i, 0
  br i1 %i.kn, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cy, %bb.da
  %.sroa.05.0.i.i27.i.i.i = phi i32 [ %.sroa.05.0.i.i.i.i.i, %bb.da ], [ %.sroa.05.0.i.i26.i.i.i, %bb.cy ]
  %i.ko = zext i32 %.sroa.05.0.i.i27.i.i.i to i64 ; 3 uses
  %i.kp = icmp ugt i64 %i.ei, %i.ko
  br i1 %i.kp, label %bb.cz, label %.invoke.i

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  %i.kq = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.ko ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i8, ptr %i.kq, align 1, !noalias !170 ; 2 uses
  %.not.i.i.i.i.i = icmp ult i8 %.sroa.02.0.copyload.i.i.i.i.i, %i.ju
  br i1 %.not.i.i.i.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 5
  %.sroa.05.0.i.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 1, !noalias !170 ; 2 uses
  %i.kr = icmp eq i32 %.sroa.05.0.i.i.i.i.i, 0
  br i1 %i.kr, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %.lr.ph.i.i.i

bb.db:                                            ; preds = %bb.cz
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 1
  %i.ks = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i.i, %i.ju
  br i1 %i.ks, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i

bb.dc:                                            ; preds = %bb.cx
  %i.kt = load i8, ptr %i.kh, align 1, !alias.scope !171, !noalias !172, !noundef !3
  %i.ku = zext i8 %i.kt to i64
  %i.kv = zext i32 %i.kl to i64
  %i.kw = add nuw nsw i64 %i.ku, %i.kv            ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %i.eq
  br i1 %i.kx, label %bb.dd, label %.invoke.i

bb.dd:                                            ; preds = %bb.dc
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kw
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i: ; preds = %bb.dd, %bb.db
  %.sroa.0.0.i.i.in.i.i.i = phi ptr [ %i.ky, %bb.dd ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i, %bb.db ]
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.in.i.i.i, align 1, !noalias !173 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i, 1
  br i1 %.not.i.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i.i: ; preds = %bb.da, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, %bb.db, %bb.cy
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !noalias !173, !noundef !3
  %i.lb = zext i32 %i.la to i64                   ; 3 uses
  %i.lc = icmp ugt i64 %i.da, %i.lb
  br i1 %i.lc, label %bb.cx, label %.invoke.i

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i, %bb.cv
  %.sroa.0.0.i48.i.i = phi i32 [ 0, %bb.cv ], [ %.sroa.0.0.i.i.i.i.i, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i.i ]
  %i.ld = load i32, ptr %i.d, align 4, !noalias !174, !noundef !3
  %i.le = zext i32 %i.ld to i64
  %i.lf = add nuw nsw i64 %i.le, %i.kc            ; 3 uses
  %i.lg = load i64, ptr %i.eo, align 8, !alias.scope !157, !noalias !175, !noundef !3 ; 2 uses
  %i.lh = icmp ult i64 %i.lf, %i.lg
  br i1 %i.lh, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i, label %.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.i
  %i.li = load ptr, ptr %i.ep, align 8, !alias.scope !157, !noalias !175, !nonnull !3, !noundef !3
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.lf
  store i32 %.sroa.0.0.i48.i.i, ptr %i.lj, align 4, !noalias !166
  br label %bb.de

bb.de:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i, %.lr.ph.i.i
  %.sroa.9.5.i.i = phi i8 [ %i.jw, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss0_0B9_.exit.i.i ], [ %.sroa.9.3132.i.i, %.lr.ph.i.i ] ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jx, %i.js
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.df:                                            ; preds = %bb.cn
  %i.lk = icmp ugt i64 %i.da, %i.if
  br i1 %i.lk, label %bb.dg, label %.invoke.i

bb.dg:                                            ; preds = %bb.df
  %i.ll = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %i.if
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !noundef !3
  %i.lo = load i32, ptr %i.d, align 4, !noalias !158, !noundef !3
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %i.lo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.ln)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.dh:                                            ; preds = %bb.dg
  %i.lp = load i32, ptr %i.lm, align 4, !noundef !3
  %i.lq = load i32, ptr %i.c, align 4, !noalias !158, !noundef !3
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %i.lq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.lp)
          to label %bb.co unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss0_0EB4_.exit.i: ; preds = %.noexc100.i, %.noexc99.i, %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !158
  br label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i

bb.di:                                            ; preds = %bb.ck
  %i.lr = load ptr, ptr %i.ea, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.es
  store i32 0, ptr %i.ls, align 4
  %i.lt = load i64, ptr %i.eb, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.lu = icmp ugt i64 %i.lt, %i.es
  br i1 %i.lu, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.lv = load ptr, ptr %i.ec, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.es
  store i32 %.sroa.0.0.i, ptr %i.lw, align 4
  %i.lx = zext i32 %.sroa.0.0.i to i64
  %i.ly = lshr i64 %i.lx, %i.cv                   ; 3 uses
  %i.lz = load i64, ptr %i.dq, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.ma = icmp ult i64 %i.ly, %i.lz
  br i1 %i.ma, label %bb.dk, label %.invoke.i

bb.dk:                                            ; preds = %bb.dj
  %i.mb = load ptr, ptr %i.dp, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.ly
  store i8 1, ptr %i.mc, align 1
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dn, %bb.dk
  %i.md = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.me = load i32, ptr %i.md, align 4, !noundef !3
  %.not74.i = icmp eq i32 %i.me, 0
  %.pre396.i = zext i32 %i.ev to i64              ; 6 uses
  br i1 %.not74.i, label %._crit_edge395.i, label %bb.eb

bb.dm:                                            ; preds = %bb.ci
  %i.mf = load ptr, ptr %i.ea, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.et
  store i32 %.sroa.0.0.i, ptr %i.mg, align 4
  %i.mh = load i64, ptr %i.eb, align 8, !noalias !158, !noundef !3 ; 2 uses
  %i.mi = icmp ugt i64 %i.mh, %i.et
  br i1 %i.mi, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %bb.dm
  %i.mj = load ptr, ptr %i.ec, align 8, !noalias !158, !nonnull !3, !noundef !3
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.et
  store i32 0, ptr %i.mk, align 4
  br label %bb.dl

._crit_edge395.i:                                 ; preds = %bb.ec, %bb.dl
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.ml = icmp ugt i64 %i.da, %.pre396.i
  br i1 %i.ml, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %._crit_edge395.i
  %i.mm = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %.pre396.i
  %i.mn = load i32, ptr %i.mm, align 4, !noalias !178, !noundef !3 ; 2 uses
  %.not9.i = icmp eq i32 %i.mn, 0
  %i.mo = zext i32 %.sroa.0.0.i to i64            ; 5 uses
  br i1 %.not9.i, label %.lr.ph117.i.thread.i, label %.lr.ph109.i.i

.lr.ph117.i.thread.i:                             ; preds = %bb.do
  %i.mp = load i8, ptr %i.ci, align 8, !alias.scope !179, !noalias !180, !noundef !3
  %.pre.i = load i64, ptr %i.eo, align 8, !alias.scope !181, !noalias !182
  br label %bb.dp

.lr.ph109.i.i:                                    ; preds = %bb.do
  %i.mq = load i64, ptr %i.eo, align 8, !alias.scope !181, !noalias !182 ; 8 uses
  %i.mr = load ptr, ptr %i.ep, align 8, !alias.scope !181, !noalias !182, !nonnull !3 ; 4 uses
  br label %bb.dr

.preheader.i125.i:                                ; preds = %bb.dy
  %.not.i113.i.i = icmp ugt i64 %i.oe, 255
  br i1 %.not.i113.i.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.lr.ph117.i.i

.lr.ph117.i.i:                                    ; preds = %.preheader.i125.i
  %i.ms = icmp eq i64 %i.oe, 255
  %i.mt = add nsw i64 %.sroa.08.1.lcssa.fr.i116.i, 2
  %spec.select.peel.i.i = select i1 %i.ms, i64 255, i64 %i.mt ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.oe
  %i.mv = load i8, ptr %i.mu, align 1, !alias.scope !179, !noalias !180, !noundef !3 ; 2 uses
  %.not45.peel.i107.i = icmp eq i8 %.sroa.9.4.i124.i, %i.mv
  br i1 %.not45.peel.i107.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph117.i.i, %.lr.ph117.i.thread.i
  %i.mw = phi i64 [ %.pre.i, %.lr.ph117.i.thread.i ], [ %i.mq, %.lr.ph117.i.i ] ; 3 uses
  %i.mx = phi i8 [ %i.mp, %.lr.ph117.i.thread.i ], [ %i.mv, %.lr.ph117.i.i ] ; 2 uses
  %spec.select.peel.i7.i = phi i64 [ 1, %.lr.ph117.i.thread.i ], [ %spec.select.peel.i.i, %.lr.ph117.i.i ]
  %.sroa.08.0.lcssa168174179.i.i = phi i64 [ 0, %.lr.ph117.i.thread.i ], [ %i.oe, %.lr.ph117.i.i ]
  %i.my = zext i8 %i.mx to i64
  %i.mz = add nuw nsw i64 %i.my, %i.mo            ; 3 uses
  %i.na = icmp ult i64 %i.mz, %i.mw
  br i1 %i.na, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i, label %.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i: ; preds = %bb.dp
  %i.nb = load ptr, ptr %i.ep, align 8, !alias.scope !181, !noalias !182, !nonnull !3, !noundef !3 ; 2 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.mz
  store i32 0, ptr %i.nc, align 4, !noalias !178
  br label %bb.dq

bb.dq:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i, %.lr.ph117.i.i
  %i.nd = phi ptr [ %i.nb, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.mr, %.lr.ph117.i.i ]
  %i.ne = phi i64 [ %i.mw, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.mq, %.lr.ph117.i.i ] ; 2 uses
  %spec.select.peel.i8.i = phi i64 [ %spec.select.peel.i7.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %spec.select.peel.i.i, %.lr.ph117.i.i ]
  %.sroa.08.0.lcssa168174180.i.i = phi i64 [ %.sroa.08.0.lcssa168174179.i.i, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %i.oe, %.lr.ph117.i.i ]
  %.sroa.9.2.peel.i108.i = phi i8 [ %i.mx, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.peel.i.i ], [ %.sroa.9.4.i124.i, %.lr.ph117.i.i ]
  %.not.i.peel.i123.i = icmp eq i64 %.sroa.08.0.lcssa168174180.i.i, 255
  br i1 %.not.i.peel.i123.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.peel.next.i.i

bb.dr:                                            ; preds = %bb.dy, %.lr.ph109.i.i
  %.sroa.0.0107.i.i = phi i1 [ false, %.lr.ph109.i.i ], [ true, %bb.dy ] ; 2 uses
  %.sroa.9.0106.i.i = phi i8 [ undef, %.lr.ph109.i.i ], [ %.sroa.9.4.i124.i, %bb.dy ] ; 3 uses
  %.sroa.08.0105.i.i = phi i64 [ 0, %.lr.ph109.i.i ], [ %i.oe, %bb.dy ] ; 4 uses
  %.sroa.034.0104.i.i = phi i32 [ %i.mn, %.lr.ph109.i.i ], [ %.sroa.532.0.copyload.i117.i, %bb.dy ]
  %i.nf = zext i32 %.sroa.034.0104.i.i to i64     ; 3 uses
  %i.ng = icmp ugt i64 %i.ei, %i.nf
  br i1 %i.ng, label %bb.du, label %.invoke.i

.peel.next.i.i:                                   ; preds = %bb.dq, %bb.dt
  %.sroa.9.1115.i.i = phi i8 [ %.sroa.9.2.i111.i, %bb.dt ], [ %.sroa.9.2.peel.i108.i, %bb.dq ] ; 2 uses
  %.sroa.056.0114.i.i = phi i64 [ %spec.select.i.i, %bb.dt ], [ %spec.select.peel.i8.i, %bb.dq ] ; 4 uses
  %i.nh = icmp eq i64 %.sroa.056.0114.i.i, 255
  %i.ni = add nuw nsw i64 %.sroa.056.0114.i.i, 1
  %spec.select.i.i = select i1 %i.nh, i64 255, i64 %i.ni
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.056.0114.i.i
  %i.nk = load i8, ptr %i.nj, align 1, !alias.scope !179, !noalias !180, !noundef !3 ; 3 uses
  %.not45.i110.i = icmp eq i8 %.sroa.9.1115.i.i, %i.nk
  br i1 %.not45.i110.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.peel.next.i.i
  %i.nl = zext i8 %i.nk to i64
  %i.nm = add nuw nsw i64 %i.nl, %i.mo            ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.ne
  br i1 %i.nn, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i, label %.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i: ; preds = %bb.ds
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.nm
  store i32 0, ptr %i.no, align 4, !noalias !178
  br label %bb.dt

bb.dt:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i, %.peel.next.i.i
  %.sroa.9.2.i111.i = phi i8 [ %i.nk, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit.i.i ], [ %.sroa.9.1115.i.i, %.peel.next.i.i ]
  %.not.i.i112.i = icmp ugt i64 %.sroa.056.0114.i.i, 254
  br i1 %.not.i.i112.i, label %_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder24finish_build_both_startss_0EB4_.exit.i, label %.peel.next.i.i, !llvm.loop !150

bb.du:                                            ; preds = %bb.dr
  %i.np = getelementptr inbounds nuw [9 x i8], ptr %i.ek, i64 %i.nf ; 3 uses
  %.sroa.030.0.copyload.i113.i = load i8, ptr %i.np, align 1, !noalias !178
  %.sroa.431.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %.sroa.431.0.copyload.i115.i = load i32, ptr %.sroa.431.0..sroa_idx.i114.i, align 1, !noalias !178 ; 2 uses
  %.sroa.532.0..sroa_idx.i116.i = getelementptr inbounds nuw i8, ptr %i.np, i64 5
  %.sroa.532.0.copyload.i117.i = load i32, ptr %.sroa.532.0..sroa_idx.i116.i, align 1, !noalias !178 ; 2 uses
  %i.nq = zext i8 %.sroa.030.0.copyload.i113.i to i64 ; 6 uses
  %i.nr = icmp ult i64 %.sroa.08.0105.i.i, %i.nq
  br i1 %i.nr, label %.lr.ph.preheader.i.i, label %._crit_edge.i118.i

.lr.ph.preheader.i.i:                             ; preds = %bb.du
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.0105.i.i
  %i.nt = load i8, ptr %i.ns, align 1, !alias.scope !179, !noalias !180, !noundef !3 ; 3 uses
  %i.nu = add nuw nsw i64 %.sroa.08.0105.i.i, 1   ; 2 uses
  %.not44.peel.i.i = icmp eq i8 %.sroa.9.0106.i.i, %i.nt
  %or.cond47.peel.i.i = select i1 %.sroa.0.0107.i.i, i1 %.not44.peel.i.i, i1 false
  br i1 %or.cond47.peel.i.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.preheader.i.i
  %i.nv = zext i8 %i.nt to i64
  %i.nw = add nuw nsw i64 %i.nv, %i.mo            ; 3 uses
  %i.nx = icmp ult i64 %i.nw, %i.mq
  br i1 %i.nx, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i, label %.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i: ; preds = %bb.dv
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.nw
  store i32 0, ptr %i.ny, align 4, !noalias !178
  br label %bb.dw

bb.dw:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i, %.lr.ph.preheader.i.i
  %.sroa.9.5.peel.i.i = phi i8 [ %i.nt, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.peel.i.i ], [ %.sroa.9.0106.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i64 %i.nu, %i.nq
  br i1 %exitcond.peel.not.i.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i

.lr.ph.i126.i:                                    ; preds = %bb.dw, %bb.ea
  %.sroa.9.399.i.i = phi i8 [ %.sroa.9.5.i128.i, %bb.ea ], [ %.sroa.9.5.peel.i.i, %bb.dw ] ; 2 uses
  %.sroa.08.198.i.i = phi i64 [ %i.ob, %bb.ea ], [ %i.nu, %bb.dw ] ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.08.198.i.i
  %i.oa = load i8, ptr %i.nz, align 1, !alias.scope !179, !noalias !180, !noundef !3 ; 3 uses
  %i.ob = add nuw nsw i64 %.sroa.08.198.i.i, 1    ; 2 uses
  %.not44.i127.i = icmp eq i8 %.sroa.9.399.i.i, %i.oa
  br i1 %.not44.i127.i, label %bb.ea, label %bb.dz

._crit_edge.i118.i:                               ; preds = %bb.ea, %bb.dw, %bb.du
  %.sroa.08.1.lcssa.i119.i = phi i64 [ %.sroa.08.0105.i.i, %bb.du ], [ %i.nq, %bb.dw ], [ %i.nq, %bb.ea ]
  %.sroa.9.3.lcssa.i120.i = phi i8 [ %.sroa.9.0106.i.i, %bb.du ], [ %.sroa.9.5.peel.i.i, %bb.dw ], [ %.sroa.9.5.i128.i, %bb.ea ] ; 2 uses
  %.sroa.0.3.lcssa.i121.i = phi i1 [ %.sroa.0.0107.i.i, %bb.du ], [ true, %bb.dw ], [ true, %bb.ea ]
  %.sroa.08.1.lcssa.fr.i116.i = freeze i64 %.sroa.08.1.lcssa.i119.i ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.nq
  %i.od = load i8, ptr %i.oc, align 1, !alias.scope !179, !noalias !180, !noundef !3 ; 3 uses
  %i.oe = add i64 %.sroa.08.1.lcssa.fr.i116.i, 1  ; 6 uses
  %.not.i122.i = icmp eq i8 %.sroa.9.3.lcssa.i120.i, %i.od
  %or.cond46.i123.i = select i1 %.sroa.0.3.lcssa.i121.i, i1 %.not.i122.i, i1 false
  br i1 %or.cond46.i123.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %._crit_edge.i118.i
  %i.of = zext i8 %i.od to i64
  %i.og = icmp eq i32 %.sroa.431.0.copyload.i115.i, 1 ; 2 uses
  %i.oh = add nuw nsw i64 %i.of, %i.mo            ; 3 uses
  %i.oi = icmp ult i64 %i.oh, %i.mq
  br i1 %i.oi, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, label %.invoke.i.loopexit129.split.loop.exit179

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i: ; preds = %bb.dx
  %..sroa.431.0.copyload.i115.i = select i1 %i.og, i32 0, i32 %.sroa.431.0.copyload.i115.i
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.oh
  store i32 %..sroa.431.0.copyload.i115.i, ptr %i.oj, align 4, !noalias !178
  br label %bb.dy

bb.dy:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i, %._crit_edge.i118.i
  %.sroa.9.4.i124.i = phi i8 [ %i.od, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit53.i.i ], [ %.sroa.9.3.lcssa.i120.i, %._crit_edge.i118.i ] ; 3 uses
  %i.ok = icmp eq i32 %.sroa.532.0.copyload.i117.i, 0
  br i1 %i.ok, label %.preheader.i125.i, label %bb.dr

bb.dz:                                            ; preds = %.lr.ph.i126.i
  %i.ol = zext i8 %i.oa to i64
  %i.om = add nuw nsw i64 %i.ol, %i.mo            ; 3 uses
  %i.on = icmp ult i64 %i.om, %i.mq
  br i1 %i.on, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, label %.invoke.i

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i: ; preds = %bb.dz
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.om
  store i32 0, ptr %i.oo, align 4, !noalias !178
  br label %bb.ea

bb.ea:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i, %.lr.ph.i126.i
  %.sroa.9.5.i128.i = phi i8 [ %i.oa, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder24finish_build_both_startss_0B9_.exit55.i.i ], [ %.sroa.9.399.i.i, %.lr.ph.i126.i ] ; 2 uses
  %exitcond.not.i129.i = icmp eq i64 %i.ob, %i.nq
  br i1 %exitcond.not.i129.i, label %._crit_edge.i118.i, label %.lr.ph.i126.i, !llvm.loop !151

bb.eb:                                            ; preds = %bb.dl
  %i.op = icmp ugt i64 %i.da, %.pre396.i
  br i1 %i.op, label %bb.ec, label %.invoke.i

bb.ec:                                            ; preds = %bb.eb
  %i.oq = getelementptr inbounds nuw [20 x i8], ptr %i.cy, i64 %.pre396.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load i32, ptr %i.or, align 4, !noundef !3
  invoke fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef nonnull align 8 dereferenceable(424) %i.p, i32 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, i32 noundef %i.os)
          to label %._crit_edge395.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

bb.ed:                                            ; preds = %bb.bc, %bb.ax, %bb.ar
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.ed, %bb.bb, %bb.aw, %bb.aq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.eg

.invoke:                                          ; preds = %bb.ao, %bb.ee
  %i.ou = phi i1 [ true, %bb.ee ], [ false, %bb.ao ]
  invoke fastcc void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start(i1 noundef zeroext %i.ou, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %2, ptr noalias noundef align 8 dereferenceable(424) %i.p)
          to label %bb.eg unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ao
  br label %.invoke

bb.ef:                                            ; preds = %.invoke440, %.invoke, %bb.em, %bb.ek, %bb.eh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_.exit97.i, %bb.ap
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ar, %bb.bu, %bb.ef
  %eh.lpad-body = phi { ptr, i32 } [ %i.ov, %bb.ef ], [ %i.gf, %bb.bu ], [ %.pn.pn.i, %bb.ar ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs9OSMwK5JXHk_12aho_corasick3dfa3DFAEBF_(ptr noalias noundef align 8 dereferenceable(424) %i.p) #15
          to label %bb.eq unwind label %bb.ep

bb.eg:                                            ; preds = %.invoke, %_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24finish_build_both_starts.exit
  %i.ow = load i64, ptr %i.p, align 8, !range !5, !noundef !3
  %i.ox = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !noundef !3 ; 2 uses
  %i.oz = icmp ugt i64 %i.ow, %i.oy
  br i1 %i.oz, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.pa = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef range(i64 0, 9223372036854775807) %i.oy, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit unwind label %bb.ef ; 2 uses

bb.ei:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit, %bb.eg
  %i.pb = load i64, ptr %i.cm, align 8, !range !5, !noundef !3
  %i.pc = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.pd = load i64, ptr %i.pc, align 8, !noundef !3 ; 2 uses
  %i.pe = icmp ugt i64 %i.pb, %i.pd
  br i1 %i.pe, label %bb.ek, label %bb.el

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit: ; preds = %bb.eh
  %i.pf = extractvalue { i64, i64 } %i.pa, 0      ; 2 uses
  %.not97 = icmp eq i64 %i.pf, -1
  br i1 %.not97, label %bb.ei, label %.invoke440, !prof !183

bb.ej:                                            ; preds = %bb.ac
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.pg = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cm, i64 noundef range(i64 0, 9223372036854775807) %i.pd, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 unwind label %bb.ef ; 2 uses

bb.el:                                            ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %bb.ei
  %i.ph = load i64, ptr %i.ck, align 8, !range !5, !noundef !3
  %i.pi = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.pj = load i64, ptr %i.pi, align 8, !noundef !3 ; 2 uses
  %i.pk = icmp ugt i64 %i.ph, %i.pj
  br i1 %i.pk, label %bb.em, label %bb.en

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111: ; preds = %bb.ek
  %i.pl = extractvalue { i64, i64 } %i.pg, 0      ; 2 uses
  %.not98 = icmp eq i64 %i.pl, -1
  br i1 %.not98, label %bb.el, label %.invoke440, !prof !183

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
  br i1 %.not99, label %bb.en, label %.invoke440, !prof !183

.invoke440:                                       ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit
  %.sink441 = phi { i64, i64 } [ %i.pg, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pa, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pm, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.po = phi i64 [ %i.pl, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit111 ], [ %i.pf, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit ], [ %i.pn, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9OSMwK5JXHk_12aho_corasick.exit115 ]
  %i.pp = extractvalue { i64, i64 } %.sink441, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.po, i64 %i.pp) #13
          to label %.cont unwind label %bb.ef

.cont:                                            ; preds = %.invoke440
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
define noundef zeroext i1 @_RNvXs1_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFANtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(424) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [1 x i8], align 1                 ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [1 x i8], align 1                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [8 x i8], align 8                 ; 3 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
end_hunk_1

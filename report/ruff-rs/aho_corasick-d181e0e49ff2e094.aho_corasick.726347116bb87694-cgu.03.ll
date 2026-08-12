inline.NumInlined: 59
inline.NumDeleted: 34
begin_hunk_0_@_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder22finish_build_one_start:bb.a
  br i1 %i.hc, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit, label %bb.ay

bb.ay:                                            ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hb, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !91
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i
  %i.hd = zext i32 %.sroa.0.0.i to i64
  %i.he = shl i64 %i.hd, %.pre
  %i.hf = trunc i64 %i.he to i32
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.hb
  store i32 %i.hf, ptr %i.hg, align 4, !noalias !91
  br label %bb.az

bb.az:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit, %._crit_edge.i
  %.sroa.9.4.i = phi i8 [ %i.fx, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit ], [ %.sroa.9.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.hh = icmp eq i32 %.sroa.532.0.copyload.i, 0
  br i1 %i.hh, label %.preheader.i, label %bb.t

bb.ba:                                            ; preds = %.lr.ph.i
  %i.hi = load i32, ptr %i.bg, align 4, !noalias !87, !noundef !3 ; 2 uses
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.hk = zext i32 %i.hi to i64                   ; 3 uses
  %i.hl = icmp ugt i64 %i.g, %i.hk
  br i1 %i.hl, label %.lr.ph23.i.i, label %._crit_edge.i.i

.lr.ph23.i.i:                                     ; preds = %bb.bb
  %i.hm = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.08.1131.i
  br label %bb.bc

bb.bc:                                            ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, %.lr.ph23.i.i
  %i.hn = phi i64 [ %i.hk, %.lr.ph23.i.i ], [ %i.ig, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.ho = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !noalias !112, !noundef !3 ; 2 uses
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %bb.bd, label %bb.bi

._crit_edge.i.i:                                  ; preds = %bb.bb, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i
  %.lcssa17.i.i = phi i64 [ %i.ig, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i ], [ %i.hk, %bb.bb ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.lcssa17.i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #13, !noalias !112
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %.sroa.05.0.i.i21.i.i = load i32, ptr %i.ho, align 4, !noalias !113 ; 2 uses
  %i.hs = icmp eq i32 %.sroa.05.0.i.i21.i.i, 0
  br i1 %i.hs, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.bg
  %.sroa.05.0.i.i22.i.i = phi i32 [ %.sroa.05.0.i.i.i.i, %bb.bg ], [ %.sroa.05.0.i.i21.i.i, %bb.bd ]
  %i.ht = zext i32 %.sroa.05.0.i.i22.i.i to i64   ; 3 uses
  %i.hu = icmp ugt i64 %i.m, %i.ht
  br i1 %i.hu, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph.i.i
  %i.hv = getelementptr inbounds nuw [9 x i8], ptr %i.o, i64 %i.ht ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i = load i8, ptr %i.hv, align 1, !noalias !113 ; 2 uses
  %.not.i.i.i.i = icmp ult i8 %.sroa.02.0.copyload.i.i.i.i, %i.fs
  br i1 %.not.i.i.i.i, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ht, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #13, !noalias !113
  unreachable

bb.bg:                                            ; preds = %bb.be
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 5
  %.sroa.05.0.i.i.i.i = load i32, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 1, !noalias !113 ; 2 uses
  %i.hw = icmp eq i32 %.sroa.05.0.i.i.i.i, 0
  br i1 %i.hw, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %.lr.ph.i.i

bb.bh:                                            ; preds = %bb.be
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = icmp eq i8 %.sroa.02.0.copyload.i.i.i.i, %i.fs
  br i1 %i.hx, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i

bb.bi:                                            ; preds = %bb.bc
  %i.hy = load i8, ptr %i.hm, align 1, !alias.scope !116, !noalias !87, !noundef !3
  %i.hz = zext i8 %i.hy to i64
  %i.ia = zext i32 %i.hq to i64
  %i.ib = add nuw nsw i64 %i.hz, %i.ia            ; 3 uses
  %i.ic = icmp ult i64 %i.ib, %i.u
  br i1 %i.ic, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ib
  br label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i

bb.bk:                                            ; preds = %bb.bi
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #13, !noalias !112
  unreachable

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i: ; preds = %bb.bj, %bb.bh
  %.sroa.0.0.i.i.in.i.i = phi ptr [ %i.id, %bb.bj ], [ %.sroa.4.0..sroa_idx.i.i.i.i, %bb.bh ]
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.in.i.i, align 1, !noalias !117 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i, 1
  br i1 %.not.i.i.i, label %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i, label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.loopexit.i

_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.thread.i.i: ; preds = %bb.bg, %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i, %bb.bh, %bb.bd
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !noalias !117, !noundef !3
  %i.ig = zext i32 %i.if to i64                   ; 3 uses
  %i.ih = icmp ugt i64 %i.g, %i.ig
  br i1 %i.ih, label %bb.bc, label %._crit_edge.i.i

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.loopexit.i: ; preds = %_RNvMs_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB4_3NFA17follow_transition.exit.i.i.i
  %i.ii = zext i32 %.sroa.0.0.i.i.i.i to i64
  br label %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i

_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.loopexit.i, %bb.ba
  %.sroa.0.0.i48.i = phi i64 [ 0, %bb.ba ], [ %i.ii, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.loopexit.i ]
  %i.ij = zext i8 %i.fu to i64
  %i.ik = add nuw nsw i64 %i.bh, %i.ij            ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.bi
  br i1 %i.il, label %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i, label %.split.us

.split.us:                                        ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us
  %.us-phi = phi i64 [ %i.fp, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us ], [ %i.ik, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i ], [ %i.fi, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel ]
  %.us-phi162 = phi i64 [ %i.bm, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us ], [ %i.bi, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i ], [ %i.bk, %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i.us.peel ]
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %.us-phi162, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #13, !noalias !87
  unreachable

_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i: ; preds = %_RNvXs0_NtNtCs9OSMwK5JXHk_12aho_corasick3nfa13noncontiguousNtB5_3NFANtNtB9_9automaton9Automaton10next_state.exit.i.i
  %i.im = shl i64 %.sroa.0.0.i48.i, %.pre
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ik
  store i32 %i.in, ptr %i.io, align 4, !noalias !87
  br label %bb.bl

bb.bl:                                            ; preds = %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i, %.lr.ph.i
  %.sroa.9.5.i = phi i8 [ %i.fu, %_RNCNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB7_7Builder22finish_build_one_starts_0B9_.exit.i ], [ %.sroa.9.3132.i, %.lr.ph.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fv, %i.fc
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

_RINvNtCs9OSMwK5JXHk_12aho_corasick3dfa11sparse_iterNCNvMs3_B2_NtB2_7Builder22finish_build_one_starts_0EB4_.exit: ; preds = %bb.ah, %.preheader.i, %bb.s
  %i.ip = call { i32, ptr } @_RNvXs1B_NtNtCs9OSMwK5JXHk_12aho_corasick4util10primitivesINtB6_15WithStateIDIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtBa_3nfa13noncontiguous5StateEENtNtNtNtB1n_4iter6traits8iterator8Iterator4nextBa_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.iq = extractvalue { i32, ptr } %i.ip, 1      ; 2 uses
  %.not = icmp eq ptr %i.iq, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.bm:                                            ; preds = %bb.b
  %i.ir = icmp ugt i64 %i.g, %i.z
  br i1 %i.ir, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.is = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.z
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i32, ptr %i.it, align 4, !noundef !3
  call fastcc void @_RINvMs_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_3DFA11set_matchesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources7from_fn6FromFnNCNvMs_NtNtB7_3nfa13noncontiguousNtB20_3NFA12iter_matches0EEB7_(ptr noalias noundef align 8 dereferenceable(424) %2, i32 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %1, i32 noundef %i.iu)
  br label %bb.c

bb.bo:                                            ; preds = %bb.bm
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCs9OSMwK5JXHk_12aho_corasick3dfaNtB5_7Builder24build_from_noncontiguous(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([424 x i8]) align 8 captures(none) dereferenceable(424) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(440) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [424 x i8], align 8               ; 31 uses
  %i.q = alloca [256 x i8], align 1               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.s = load i8, ptr %i.r, align 1, !range !118, !noundef !3
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses10singletons(ptr noalias noundef nonnull sret([256 x i8]) align 1 captures(none) dereferenceable(256) %i.q)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.q, ptr noundef nonnull align 8 dereferenceable(256) %i.u, i64 256, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !119, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !3 ; 3 uses
  br i1 %i.x, label %bb.e, label %bb.j

default.unreachable374:                           ; preds = %bb.ao
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.aa = shl i64 %i.z, 1                         ; 2 uses
  %i.ab = icmp slt i64 %i.z, 0
  br i1 %i.ab, label %bb.g, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp ult i64 %i.aa, 4
  br i1 %i.ac, label %bb.i, label %bb.h, !prof !4

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ad = add i64 %i.aa, -4
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13
  unreachable

bb.j:                                             ; preds = %bb.d, %bb.h
  %.sroa.034.0 = phi i64 [ %i.ad, %bb.h ], [ %i.z, %bb.d ] ; 2 uses
  %i.ae = call noundef i64 @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses7stride2(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.q) ; 2 uses
  %i.af = and i64 %i.ae, 4294967232
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = and i64 %i.ae, 63
  %i.ai = shl i64 %.sroa.034.0, %i.ah             ; 3 uses
  %i.aj = call noundef i64 @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses6stride(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.q) ; 2 uses
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.n, label %bb.m, !prof !4

bb.l:                                             ; preds = %bb.j, %bb.m
  %.sink = phi i64 [ %i.am, %bb.m ], [ -1, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.al, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2147483646, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink, ptr %.sroa.668.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.eo

bb.m:                                             ; preds = %bb.k
  %i.am = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %i.an = icmp ugt i64 %i.am, 2147483646
  br i1 %i.an, label %bb.l, label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !3 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  br i1 %i.x, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.aq, label %bb.r, label %bb.s, !prof !4

bb.q:                                             ; preds = %bb.o
  br i1 %i.aq, label %bb.v, label %bb.u, !prof !4

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #13
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ar = zext i32 %i.ap to i64
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = add nsw i64 %i.as, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.022.0 = phi i64 [ %i.at, %bb.s ], [ %i.ax, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBQ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i32 noundef 0, i64 noundef %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %i.av, align 8
  invoke void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB10_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, i64 noundef %.sroa.022.0)
          to label %bb.y unwind label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.aw = zext i32 %i.ap to i64
  %i.ax = add nsw i64 %i.aw, -1
  br label %bb.t

bb.v:                                             ; preds = %bb.q
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #13
  unreachable

bb.w:                                             ; preds = %bb.z, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.z ], [ %i.ay, %bb.x ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives7StateIDEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.o) #15
          to label %bb.eq unwind label %bb.ep

bb.x:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !3, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9OSMwK5JXHk_12aho_corasick(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.bc, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.aa ], [ %i.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9OSMwK5JXHk_12aho_corasick4util9prefilter9PrefilterEEB13_.exit ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCs9OSMwK5JXHk_12aho_corasick4util10primitives9PatternIDEEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.n) #15
          to label %bb.w unwind label %bb.ep

bb.aa:                                            ; preds = %bb.ac, %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  %i.be = load i64, ptr %i.j, align 8, !range !120, !noundef !3
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !121, !noundef !3 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.ac, label %bb.ad, !prof !4

bb.ac:                                            ; preds = %bb.ab
  %i.bj = load i64, ptr %i.bi, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bh, i64 %i.bj) #13
          to label %bb.ej unwind label %bb.aa

bb.ad:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %i.bi, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.bl = icmp ule i64 %i.bc, %i.bh
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.bh, ptr %i.l, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.bn, align 8
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.af, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !3 ; 5 uses
  %.not96 = icmp eq ptr %i.bp, null
  br i1 %.not96, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.bq = shl i64 %i.bc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.ba, i64 %i.bq, i1 false)
  store i64 %i.bc, ptr %i.bn, align 8
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !3, !align !35, !noundef !3
  %i.bt = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.ak, label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  store ptr null, ptr %i.k, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.bw = load i8, ptr %i.bv, align 8, !range !119, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 255
  %i.by = load i8, ptr %i.bx, align 1, !noundef !3
  %i.bz = invoke noundef i64 @_RNvMNtNtCs9OSMwK5JXHk_12aho_corasick4util8alphabetNtB2_11ByteClasses7stride2(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %i.q)
          to label %bb.ao unwind label %bb.al     ; 2 uses

bb.aj:                                            ; preds = %bb.ag
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !3
  store ptr %i.bp, ptr %i.k, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bs, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.cb, ptr %.sroa.571.0..sroa_idx, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.ai
  %i.cc = landingpad { ptr, i32 }
          cleanup
end_hunk_0

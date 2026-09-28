Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/regex_automata-11449060322bc37b.regex_automata.6a733967971a138a-cgu.15?download=true
inline.NumInlined: 268
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs2_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_3DFARShE10from_bytes:bb.a
  %i.o = load i32, ptr %i.n, align 16, !alias.scope !297, !noalias !300, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 644
  %i.q = load i32, ptr %i.p, align 4, !alias.scope !297, !noalias !300 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 648
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !297, !noalias !300 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 652
  %i.u = load i32, ptr %i.t, align 4, !alias.scope !297, !noalias !300 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 664
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !297, !noalias !300
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 668
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !297, !noalias !300
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 656
  %i.aa = load i32, ptr %i.z, align 16, !alias.scope !297, !noalias !300 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 660
  %i.ac = load i32, ptr %i.ab, align 4, !alias.scope !297, !noalias !300 ; 3 uses
  br label %bb.d

.loopexit337.i:                                   ; preds = %.lr.ph444.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.as
  %lpad.loopexit341.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke.i, %bb.j, %.invoke630.i
  %lpad.loopexit.split-lp342.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit337.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit337.i ], [ %lpad.loopexit341.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp342.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.au, !noalias !298

bb.d:                                             ; preds = %bb.at, %.lr.ph.i
  %i.ad = phi i64 [ 0, %.lr.ph.i ], [ %i.eh, %bb.at ] ; 3 uses
  %.sroa.0.0440.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %bb.at ]
  %.sroa.068.0439.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ej, %bb.at ] ; 19 uses
  %.not200.i = icmp ugt i32 %.sroa.068.0439.i, %i.o
  br i1 %.not200.i, label %bb.p, label %bb.o

.loopexit.i:                                      ; preds = %bb.n, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.i
  %.not.i.i = icmp ult i64 %i.bk, %.val215.i
  br i1 %.not.i.i, label %.lr.ph447.i, label %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i

.lr.ph447.i:                                      ; preds = %bb.at, %.loopexit.i
  %.sroa.5.0446.i = phi i64 [ %i.bk, %.loopexit.i ], [ 0, %bb.at ] ; 2 uses
  %i.ae = and i64 %.sroa.5.0446.i, 4294967295     ; 4 uses
  %i.af = icmp ult i64 %.val215.i, %i.ae
  br i1 %i.af, label %.invoke.i, label %bb.e, !prof !6

bb.e:                                             ; preds = %.lr.ph447.i
  %i.ag = sub nuw nsw i64 %.val215.i, %i.ae       ; 3 uses
  %i.ah = icmp samesign ugt i64 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %.invoke.i, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ae ; 2 uses
  %.sroa.02.0.copyload.i.i.i = load i16, ptr %i.ai, align 1, !alias.scope !301, !noalias !302 ; 2 uses
  %i.aj = and i16 %.sroa.02.0.copyload.i.i.i, 32767 ; 2 uses
  %i.ak = zext nneg i16 %i.aj to i64              ; 3 uses
  %i.al = icmp slt i16 %.sroa.02.0.copyload.i.i.i, 0
  %i.am = add nsw i64 %i.ag, -2                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.ak, 1                ; 4 uses
  %.not.i8.i.i = icmp ugt i64 %i.an, %i.am
  br i1 %.not.i8.i.i, label %.invoke630.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i.i, !prof !6

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = sub nuw nsw i64 %i.am, %i.an            ; 2 uses
  %i.ar = shl nuw nsw i64 %i.ak, 2                ; 4 uses
  %.not.i9.i.i = icmp ugt i64 %i.ar, %i.aq
  br i1 %.not.i9.i.i, label %.invoke630.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i, !prof !6

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar ; 3 uses
  %i.at = sub nuw nsw i64 %i.aq, %i.ar            ; 4 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i
  %i.au = icmp samesign ugt i64 %i.at, 3
  br i1 %i.au, label %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i.i, label %.invoke.i, !prof !8

bb.h:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i
  %i.av = phi i64 [ %i.bd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i ]
  %.sroa.1130.0.i.i = phi i64 [ %i.bc, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i ], [ %i.at, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i ] ; 3 uses
  %.sroa.829.0.i.i = phi ptr [ %i.bb, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i ], [ %i.as, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit13.i.i ]
  %.not.i.i.i = icmp eq i64 %.sroa.1130.0.i.i, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i.i: ; preds = %bb.g
  %.sroa.02.0.copyload.i2.i.i = load i32, ptr %i.as, align 1, !alias.scope !303, !noalias !302
  %i.aw = zext i32 %.sroa.02.0.copyload.i2.i.i to i64
  %i.ax = add nsw i64 %i.at, -4                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.aw, 2                ; 4 uses
  %.not.i14.i.i = icmp ugt i64 %i.ay, %i.ax
  br i1 %.not.i14.i.i, label %.invoke630.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i, !prof !6

.invoke630.i:                                     ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i.i, %bb.f
  %i.az = phi ptr [ @61, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i.i ], [ @60, %bb.f ], [ @62, %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @24, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az) #21
          to label %.cont631.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !298

.cont631.i:                                       ; preds = %.invoke630.i
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit18.i.i: ; preds = %_RNvNtNtCs98D8VPWzHuM_14regex_automata4util4wire8read_u32.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  %i.bc = sub nuw nsw i64 %i.ax, %i.ay
  %i.bd = add nuw nsw i64 %i.ay, 4
  br label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.be = load i8, ptr %.sroa.829.0.i.i, align 1, !noalias !302, !noundef !3
  %i.bf = zext i8 %i.be to i64                    ; 3 uses
  %.not20.not.i.i.i = icmp ugt i64 %.sroa.1130.0.i.i, %i.bf
  br i1 %.not20.not.i.i.i, label %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.i, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #21
          to label %.noexc223.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !298

.noexc223.i:                                      ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bf, 1
  br label %.invoke.i

_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.i: ; preds = %bb.i
  %i.bh = add i64 %.sroa.5.0446.i, 3
  %i.bi = add i64 %i.bh, %i.an
  %i.bj = add i64 %i.bi, %i.ar
  %.sroa.0.0.i.i = add i64 %i.bj, %i.av
  %i.bk = add i64 %.sroa.0.0.i.i, %i.bf           ; 2 uses
  %.not449.i = icmp eq i16 %i.aj, 0
  br i1 %.not449.i, label %.loopexit.i, label %.lr.ph444.i

_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i: ; preds = %.loopexit.i, %bb.c
  %.sroa.0.0.lcssa554.i = phi i64 [ 0, %bb.c ], [ %i.ek, %.loopexit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  %i.bm = load i64, ptr %i.bl, align 16, !alias.scope !296, !noalias !299, !noundef !3
  %.not199.i = icmp eq i64 %.sroa.0.0.lcssa554.i, %i.bm
  br i1 %.not199.i, label %bb.l, label %.loopexit338.i

bb.l:                                             ; preds = %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i
  %.sroa.12.8.copyload47 = load i64, ptr %i.d, align 8, !noalias !304
  %.sroa.19.8..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.19.8.copyload49 = load i64, ptr %.sroa.19.8..sroa_idx48, align 8, !noalias !304
  %.sroa.24.8.copyload51 = load i64, ptr %.sroa.585.0..sroa_idx.i, align 8, !noalias !304
  br label %bb.av

.loopexit338.i:                                   ; preds = %bb.p, %bb.q, %bb.s, %bb.t, %bb.u, %._crit_edge, %bb.z, %.loopexit.i.i, %bb.aa, %bb.ab, %bb.ae, %bb.af, %bb.ag, %bb.aj, %bb.ak, %bb.al, %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i, %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i, %bb.ar, %.lr.ph, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i, %bb.ao, %bb.m, %bb.an, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i
  %.sroa.0.0 = phi ptr [ null, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i ], [ null, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ao ], [ null, %.lr.ph ], [ inttoptr (i64 9 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i ], [ null, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %._crit_edge ], [ inttoptr (i64 1 to ptr), %bb.z ], [ null, %bb.aa ], [ null, %bb.ae ], [ null, %.loopexit.i.i ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %bb.ag ], [ inttoptr (i64 1 to ptr), %bb.ak ], [ null, %bb.al ], [ inttoptr (i64 1 to ptr), %bb.u ], [ null, %bb.t ], [ null, %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i ], [ null, %bb.ar ], [ null, %bb.q ], [ inttoptr (i64 9 to ptr), %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i ]
  %.sroa.24.0 = phi i64 [ undef, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i ], [ undef, %bb.m ], [ 30, %bb.an ], [ 28, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i ], [ undef, %.lr.ph ], [ 28, %bb.ao ], [ 20, %bb.ar ], [ 20, %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i ], [ 20, %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i ], [ 20, %bb.al ], [ 20, %bb.ak ], [ 20, %bb.aj ], [ 20, %bb.ag ], [ 20, %bb.af ], [ 20, %bb.ae ], [ 20, %bb.ab ], [ 20, %bb.aa ], [ 20, %.loopexit.i.i ], [ 20, %bb.z ], [ 20, %._crit_edge ], [ 20, %bb.u ], [ 20, %bb.t ], [ 20, %bb.s ], [ 20, %bb.q ], [ 20, %bb.p ]
  %.sroa.19.0 = phi i64 [ 31, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i ], [ 52, %bb.m ], [ ptrtoint (ptr @83 to i64), %bb.an ], [ 23, %bb.ao ], [ 19, %.lr.ph ], [ ptrtoint (ptr @85 to i64), %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i ], [ 53, %bb.s ], [ 23, %bb.p ], [ 22, %._crit_edge ], [ 17, %bb.z ], [ 51, %bb.aa ], [ 47, %bb.ae ], [ 55, %.loopexit.i.i ], [ 18, %bb.ab ], [ 21, %bb.af ], [ 57, %bb.aj ], [ 33, %bb.ag ], [ 33, %bb.ak ], [ 54, %bb.al ], [ 17, %bb.u ], [ 47, %bb.t ], [ 50, %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i ], [ 64, %bb.ar ], [ 25, %bb.q ], [ ptrtoint (ptr @69 to i64), %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i ]
  %.sroa.12.0 = phi i64 [ ptrtoint (ptr @66 to i64), %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.thread.i ], [ ptrtoint (ptr @67 to i64), %bb.m ], [ %.sroa.28.8.insert.ext299.i, %bb.an ], [ ptrtoint (ptr @86 to i64), %bb.ao ], [ ptrtoint (ptr @88 to i64), %.lr.ph ], [ %.sroa.28.8.insert.ext.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i ], [ ptrtoint (ptr @71 to i64), %bb.s ], [ ptrtoint (ptr @70 to i64), %bb.p ], [ ptrtoint (ptr @87 to i64), %._crit_edge ], [ ptrtoint (ptr @73 to i64), %bb.z ], [ ptrtoint (ptr @74 to i64), %bb.aa ], [ ptrtoint (ptr @82 to i64), %bb.ae ], [ ptrtoint (ptr @75 to i64), %.loopexit.i.i ], [ ptrtoint (ptr @84 to i64), %bb.ab ], [ ptrtoint (ptr @76 to i64), %bb.af ], [ ptrtoint (ptr @77 to i64), %bb.aj ], [ ptrtoint (ptr @81 to i64), %bb.ag ], [ ptrtoint (ptr @80 to i64), %bb.ak ], [ ptrtoint (ptr @78 to i64), %bb.al ], [ ptrtoint (ptr @89 to i64), %bb.u ], [ ptrtoint (ptr @72 to i64), %bb.t ], [ ptrtoint (ptr @79 to i64), %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i ], [ ptrtoint (ptr @68 to i64), %bb.ar ], [ ptrtoint (ptr @90 to i64), %bb.q ], [ %i.eh, %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.av unwind label %.thread109

.lr.ph444.i:                                      ; preds = %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.i, %bb.n
  %.sroa.0173.0443.i = phi i64 [ %i.bn, %bb.n ], [ 0, %_RNvXsf_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseINtB5_9StateIterRShENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB9_.exit.i ] ; 2 uses
  %i.bn = add nuw nsw i64 %.sroa.0173.0443.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !298
  %i.bo = shl nuw nsw i64 %.sroa.0173.0443.i, 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bo
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.bp, align 1, !noalias !305
  store i32 %.sroa.02.0.copyload.i.i, ptr %i.c, align 4, !noalias !298
  %i.bq = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB8_7set_val9SetValZSTE3getB17_EB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %bb.m unwind label %.loopexit337.i, !noalias !298

bb.m:                                             ; preds = %.lr.ph444.i
  %.not.i = icmp eq ptr %i.bq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !298
  br i1 %.not.i, label %.loopexit338.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %exitcond525.not.i = icmp eq i64 %i.bn, %i.ak
  br i1 %exitcond525.not.i, label %.loopexit.i, label %.lr.ph444.i

bb.o:                                             ; preds = %bb.d
  %i.br = icmp eq i32 %.sroa.068.0439.i, 0
  %i.bs = icmp eq i32 %i.q, %.sroa.068.0439.i
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond.i, label %bb.p, label %bb.ap

bb.p:                                             ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.o, %bb.d
  %i.bt = sub nuw nsw i64 %.val215.i, %i.ad       ; 2 uses
  %i.bu = icmp samesign ult i64 %i.bt, 2
  br i1 %i.bu, label %.loopexit338.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ad ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i = load i16, ptr %i.bv, align 1, !alias.scope !306, !noalias !307 ; 2 uses
  %i.bw = icmp slt i16 %.sroa.02.0.copyload.i.i.i.i.i, 0 ; 4 uses
  %i.bx = and i16 %.sroa.02.0.copyload.i.i.i.i.i, 32767 ; 2 uses
  %i.by = zext nneg i16 %i.bx to i64              ; 3 uses
  %i.bz = add nsw i64 %i.bt, -2                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 2 ; 2 uses
  %i.cb = add nsw i16 %i.bx, -258
  %or.cond4.i.i = icmp ult i16 %i.cb, -257
  br i1 %or.cond4.i.i, label %.loopexit338.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.sroa.068.0439.i, 0        ; 4 uses
  %.not624.i.i = icmp ugt i32 %i.s, %.sroa.068.0439.i
  %or.cond646.i.i = select i1 %i.cc, i1 true, i1 %.not624.i.i
  %.not625.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.u
  %or.cond648.i.i = select i1 %or.cond646.i.i, i1 true, i1 %.not625.i.i ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond648.i.i, label %bb.u, label %.loopexit338.i

bb.t:                                             ; preds = %bb.r
  br i1 %or.cond648.i.i, label %.loopexit338.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cd = shl nuw nsw i64 %i.by, 1                ; 4 uses
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i: ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd ; 3 uses
  %i.cg = sub nuw nsw i64 %i.bz, %i.cd            ; 2 uses
  br label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i323, i64 2
  %i.ci = add nsw i64 %.sroa.65.0.i.i322, -2      ; 2 uses
  %cond.i.i = icmp eq i64 %i.ci, 0
  br i1 %cond.i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v
  %i.cj = shl nuw nsw i64 %i.by, 2                ; 8 uses
  %i.ck = icmp ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i: ; preds = %._crit_edge
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cj ; 3 uses
  %i.cm = sub nuw nsw i64 %i.cg, %i.cj            ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ao, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i
  %.sroa.612.0.i.i = phi i64 [ %i.cj, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i ], [ %i.cp, %bb.ao ] ; 4 uses
  %.sroa.011.0.i.i = phi ptr [ %i.cf, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit671.i.i ], [ %i.co, %bb.ao ] ; 2 uses
  %i.cn = icmp eq i64 %.sroa.612.0.i.i, 0
  br i1 %i.cn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i673.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.612.0.i.i, i64 4) ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 %.sroa.0.0.i.i673.i.i
  %i.cp = sub nuw nsw i64 %.sroa.612.0.i.i, %.sroa.0.0.i.i673.i.i
  %i.cq = icmp ugt i64 %.sroa.612.0.i.i, 3
  br i1 %i.cq, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i, label %.invoke.i, !prof !8

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i: ; preds = %bb.x
  %.sroa.018.0.copyload.i.i.i = load i32, ptr %.sroa.011.0.i.i, align 1, !alias.scope !308, !noalias !309 ; 2 uses
  %i.cr = icmp ugt i32 %.sroa.018.0.copyload.i.i.i, 2147483646
  %.sroa.28.8.insert.ext.i = zext i32 %.sroa.018.0.copyload.i.i.i to i64 ; 2 uses
  br i1 %i.cr, label %.loopexit338.i, label %bb.ao

bb.y:                                             ; preds = %bb.w
  br i1 %i.bw, label %bb.z, label %.loopexit.i.i

bb.z:                                             ; preds = %bb.y
  %i.cs = icmp samesign ult i64 %i.cm, 4
  br i1 %i.cs, label %.loopexit338.i, label %bb.aa

.loopexit.i.i:                                    ; preds = %bb.ac, %bb.y
  %.sroa.8123.0.i.i = phi i64 [ %i.cm, %bb.y ], [ %i.db, %bb.ac ] ; 2 uses
  %.sroa.0117.0.i.i = phi ptr [ %i.cl, %bb.y ], [ %i.da, %bb.ac ]
  %.sroa.6113.0.i.i = phi i64 [ 0, %bb.y ], [ %i.cy, %bb.ac ] ; 2 uses
  %.not630.i.i = icmp ule i32 %i.s, %.sroa.068.0439.i
  %not..i.i = xor i1 %i.cc, true
  %or.cond650.i.i = select i1 %not..i.i, i1 %.not630.i.i, i1 false
  %.not631.i.i = icmp ule i32 %.sroa.068.0439.i, %i.u
  %or.cond652.i.i = select i1 %or.cond650.i.i, i1 %.not631.i.i, i1 false ; 2 uses
  %i.ct = icmp eq i64 %.sroa.6113.0.i.i, 0
  %or.cond653.i.i = and i1 %or.cond652.i.i, %i.ct
  br i1 %or.cond653.i.i, label %.loopexit338.i, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %.sroa.02.0.copyload.i.i.i678.i.i = load i32, ptr %i.cl, align 1, !alias.scope !310, !noalias !311 ; 2 uses
  %i.cu = add i64 %i.cm, -4                       ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cw = icmp eq i32 %.sroa.02.0.copyload.i.i.i678.i.i, 0
  br i1 %i.cw, label %.loopexit338.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = zext i32 %.sroa.02.0.copyload.i.i.i678.i.i to i64
  %i.cy = shl nuw nsw i64 %i.cx, 2                ; 5 uses
  %i.cz = icmp ult i64 %i.cu, %i.cy
  br i1 %i.cz, label %.loopexit338.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i: ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.db = sub nuw nsw i64 %i.cu, %i.cy
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i
  %.sroa.631.0.i.i = phi i64 [ %i.cy, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i ], [ %i.de, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i ] ; 4 uses
  %.sroa.030.0.i.i = phi ptr [ %i.cv, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit686.i.i ], [ %i.df, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.sroa.631.0.i.i, 0
  br i1 %i.dc, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.0.i.i688.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.631.0.i.i, i64 4) ; 3 uses
  %i.dd = icmp ugt i64 %.sroa.631.0.i.i, 3
  br i1 %i.dd, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i, label %.invoke.i, !prof !8

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i: ; preds = %bb.ad
  %i.de = sub nuw nsw i64 %.sroa.631.0.i.i, %.sroa.0.0.i.i688.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i, i64 %.sroa.0.0.i.i688.i.i
  %.sroa.018.0.copyload.i693.i.i = load i32, ptr %.sroa.030.0.i.i, align 1, !alias.scope !312, !noalias !313 ; 2 uses
  %i.dg = icmp ugt i32 %.sroa.018.0.copyload.i693.i.i, 2147483646
  br i1 %i.dg, label %bb.an, label %bb.ac

bb.ae:                                            ; preds = %.loopexit.i.i
  %.sroa.0159.0.i.i = xor i1 %or.cond652.i.i, %i.bw
  br i1 %.sroa.0159.0.i.i, label %.loopexit338.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = icmp eq i64 %.sroa.8123.0.i.i, 0
  br i1 %i.dh, label %.loopexit338.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i8, ptr %.sroa.0117.0.i.i, align 1, !noalias !314, !noundef !3 ; 3 uses
  %i.dj = zext i8 %i.di to i64                    ; 2 uses
  %i.dk = add i64 %.sroa.8123.0.i.i, -1
  %i.dl = icmp ugt i8 %i.di, 3
  br i1 %i.dl, label %.loopexit338.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = icmp eq i8 %i.di, 0
  br i1 %i.dm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cc, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not635.i.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %.not636.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond657.i.i = select i1 %.not635.i.i, i1 true, i1 %.not636.i.i
  br i1 %or.cond657.i.i, label %bb.ak, label %.loopexit338.i

bb.ak:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %i.dn = icmp ult i64 %i.dk, %i.dj
  br i1 %i.dn, label %.loopexit338.i, label %bb.am

bb.al:                                            ; preds = %bb.ah
  %.not633.i.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %or.cond659.i.i = select i1 %i.cc, i1 true, i1 %.not633.i.i
  %.not634.i.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond661.i.i = select i1 %or.cond659.i.i, i1 true, i1 %.not634.i.i
  br i1 %or.cond661.i.i, label %.loopexit338.i, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.do = add nsw i64 %i.cj, -4                   ; 3 uses
  %i.dp = or disjoint i64 %i.do, 3
  %or.cond.not.i.i.i = icmp ult i64 %i.dp, %i.cj
  br i1 %or.cond.not.i.i.i, label %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i, label %.invoke.i, !prof !9

.invoke.i:                                        ; preds = %bb.am, %bb.x, %bb.ad, %bb.g, %bb.e, %.lr.ph447.i, %bb.k
  %i.dq = phi i64 [ 1, %bb.k ], [ 0, %bb.ad ], [ 0, %bb.x ], [ 0, %bb.g ], [ 0, %bb.e ], [ %i.ae, %.lr.ph447.i ], [ %i.do, %bb.am ]
  %i.dr = phi i64 [ %i.bg, %bb.k ], [ 4, %bb.ad ], [ 4, %bb.x ], [ 4, %bb.g ], [ 2, %bb.e ], [ %.val215.i, %.lr.ph447.i ], [ %i.cj, %bb.am ]
  %i.ds = phi i64 [ %.sroa.1130.0.i.i, %bb.k ], [ %.sroa.0.0.i.i688.i.i, %bb.ad ], [ %.sroa.0.0.i.i673.i.i, %bb.x ], [ %i.at, %bb.g ], [ %i.ag, %bb.e ], [ %.val215.i, %.lr.ph447.i ], [ %i.cj, %bb.am ]
  %i.dt = phi ptr [ @64, %bb.k ], [ @130, %bb.ad ], [ @129, %bb.x ], [ @139, %bb.g ], [ @138, %bb.e ], [ @65, %.lr.ph447.i ], [ @118, %bb.am ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.dq, i64 noundef %i.dr, i64 noundef %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt) #21
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !298

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i: ; preds = %bb.am
  %i.du = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.do
  %.sroa.02.0.copyload.i.i229.i = load i32, ptr %i.du, align 1, !noalias !315 ; 2 uses
  %i.dv = icmp ne i32 %.sroa.02.0.copyload.i.i229.i, 0
  %i.dw = icmp eq i32 %i.q, %.sroa.02.0.copyload.i.i229.i
  %or.cond.i.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i.i, label %.loopexit338.i, label %bb.as

bb.an:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i692.i.i
  %.sroa.28.8.insert.ext299.i = zext i32 %.sroa.018.0.copyload.i693.i.i to i64
  br label %.loopexit338.i

bb.ao:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCs98D8VPWzHuM_14regex_automata.exit.i.i.i
  %i.dx = icmp ult i64 %.val215.i, %.sroa.28.8.insert.ext.i
  br i1 %i.dx, label %.loopexit338.i, label %bb.w

.lr.ph:                                           ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i, %bb.v
  %.sroa.04.0.i.i323 = phi ptr [ %i.ca, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i ], [ %i.ch, %bb.v ] ; 3 uses
  %.sroa.65.0.i.i322 = phi i64 [ %i.cd, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSh8split_atCs98D8VPWzHuM_14regex_automata.exit.i228.i ], [ %i.ci, %bb.v ]
  %i.dy = load i8, ptr %.sroa.04.0.i.i323, align 1, !noalias !314, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i323, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !314, !noundef !3
  %i.eb = icmp ugt i8 %i.dy, %i.ea
  br i1 %i.eb, label %.loopexit338.i, label %bb.v

bb.ap:                                            ; preds = %bb.o
  %.not201.i = icmp ugt i32 %i.s, %.sroa.068.0439.i
  %.not202.i = icmp ugt i32 %.sroa.068.0439.i, %i.u
  %or.cond210.i = select i1 %.not201.i, i1 true, i1 %.not202.i
  br i1 %or.cond210.i, label %bb.aq, label %bb.p

bb.aq:                                            ; preds = %bb.ap
  %.not203.i = icmp ugt i32 %i.w, %.sroa.068.0439.i
  %.not204.i = icmp ugt i32 %.sroa.068.0439.i, %i.y
  %or.cond212.i = select i1 %.not203.i, i1 true, i1 %.not204.i
  br i1 %or.cond212.i, label %bb.ar, label %bb.p

bb.ar:                                            ; preds = %bb.aq
  %.not205.i = icmp ugt i32 %i.aa, %.sroa.068.0439.i
  %.not206.i = icmp ugt i32 %.sroa.068.0439.i, %i.ac
  %or.cond214.i = select i1 %.not205.i, i1 true, i1 %.not206.i
  br i1 %or.cond214.i, label %.loopexit338.i, label %bb.p

bb.as:                                            ; preds = %_RNvMsh_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_5State7next_at.exit.i.i
  %i.ec = invoke noundef zeroext i1 @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB7_7set_val9SetValZSTE6insertB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef range(i32 0, 2147483647) %.sroa.068.0439.i)
          to label %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !298 ; 0 uses

_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i: ; preds = %bb.as
  %i.ed = add nuw nsw i64 %.sroa.6113.0.i.i, 4
  %i.ee = select i1 %i.bw, i64 %i.ed, i64 0
  %reass.mul.i = mul nuw nsw i64 %i.by, 6
  %i.ef = add nuw nsw i64 %i.ad, 3
  %i.eg = add nuw nsw i64 %i.ef, %reass.mul.i
  %.sroa.058.0.i = add nuw nsw i64 %i.eg, %i.ee
  %i.eh = add nuw nsw i64 %.sroa.058.0.i, %i.dj   ; 5 uses
  %i.ei = icmp samesign ugt i64 %i.eh, 2147483646
  br i1 %i.ei, label %.loopexit338.i, label %bb.at

bb.at:                                            ; preds = %_RNvMsl_NtNtCs98D8VPWzHuM_14regex_automata3dfa6sparseNtB5_4Seen6insert.exit.i
  %i.ej = trunc nuw nsw i64 %i.eh to i32
  %i.ek = add i64 %.sroa.0.0440.i, 1              ; 2 uses
  %i.el = icmp ugt i64 %.val215.i, %i.eh
  br i1 %i.el, label %bb.d, label %.lr.ph447.i

bb.au:                                            ; preds = %.loopexit.split-lp.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !298
  unreachable

.thread109:                                       ; preds = %bb.bh, %.loopexit338.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.av:                                            ; preds = %bb.l, %.loopexit338.i
  %.sroa.0.1 = phi ptr [ inttoptr (i64 4294967295 to ptr), %bb.l ], [ %.sroa.0.0, %.loopexit338.i ]
  %.sroa.24.1 = phi i64 [ %.sroa.24.8.copyload51, %bb.l ], [ %.sroa.24.0, %.loopexit338.i ] ; 2 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.8.copyload49, %bb.l ], [ %.sroa.19.0, %.loopexit338.i ] ; 2 uses
  %.sroa.12.1 = phi i64 [ %.sroa.12.8.copyload47, %bb.l ], [ %.sroa.12.0, %.loopexit338.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !298
  %i.en = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.eo = and i64 %i.en, 4294967295
  %.not = icmp eq i64 %i.eo, 4294967295
  br i1 %.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.en, ptr %i.ep, align 8
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.1, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx, align 16
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.19.1, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.24.1, ptr %.sroa.423.sroa.6.0..sroa.423.0..sroa_idx.sroa_idx, align 16
  store i64 2, ptr %0, align 16
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit42

bb.ax:                                            ; preds = %bb.av
  store i64 %.sroa.12.1, ptr %i.e, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.19.1, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.24.1, ptr %.sroa.577.0..sroa_idx, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.g, i64 648
  %.val = load i32, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.g, i64 652
  %.val30 = load i32, ptr %i.er, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.es = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  %.val25.i.i = load ptr, ptr %i.es, align 16, !alias.scope !316, !noalias !317, !nonnull !3, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %.val26.i.i = load i64, ptr %i.et, align 8, !alias.scope !316, !noalias !317, !noundef !3 ; 3 uses
  %i.eu = lshr i64 %.val26.i.i, 2                 ; 2 uses
  %.not.i18.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i18.not.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.ax
  %i.ev = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  %i.ew = load i64, ptr %i.ev, align 16, !alias.scope !316, !noalias !317, !noundef !3 ; 5 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = shl i64 %i.ew, 1                        ; 2 uses
  br i1 %i.ex, label %bb.ay, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i31
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ey)
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.bf, %.lr.ph.split.preheader.i
  %.sroa.5.019.i = phi i64 [ %i.ez, %bb.bf ], [ 0, %.lr.ph.split.preheader.i ] ; 5 uses
  %i.ez = add nuw nsw i64 %.sroa.5.019.i, 1       ; 2 uses
  %i.fa = urem i64 %.sroa.5.019.i, %i.ew
  %i.fb = icmp samesign ult i64 %i.fa, 6
  br i1 %i.fb, label %switch.lookup.i.i, label %bb.az, !prof !318

bb.ay:                                            ; preds = %.lr.ph.i31
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #21
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.lr.ph.split.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #21
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.az
  unreachable

switch.lookup.i.i:                                ; preds = %.lr.ph.split.i
  %or.cond21.i = icmp ult i64 %.sroa.5.019.i, %invariant.umax.i
  br i1 %or.cond21.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %switch.lookup.i.i
  %i.fc = sub nuw nsw i64 %.sroa.5.019.i, %i.ey
  %i.fd = udiv i64 %i.fc, %i.ew                   ; 2 uses
  %i.fe = icmp samesign ugt i64 %i.fd, 2147483646
  br i1 %i.fe, label %bb.bb, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !319
  store i64 %i.fd, ptr %i.a, align 8, !noalias !319
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #21
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.bb
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i: ; preds = %bb.ba, %switch.lookup.i.i
  %i.ff = shl nuw nsw i64 %.sroa.5.019.i, 2       ; 3 uses
  %i.fg = add nuw nsw i64 %i.ff, 4                ; 2 uses
  %.not23.i.i = icmp ugt i64 %i.fg, %.val26.i.i
  br i1 %.not23.i.i, label %bb.bc, label %bb.bd, !prof !6

bb.bc:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.ff, i64 noundef %i.fg, i64 noundef %.val26.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #21
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives9PatternIDNtBJ_14PatternIDErrorE6unwrapBN_.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.val25.i.i, i64 %i.ff
  %.sroa.013.0.copyload.i.i = load i32, ptr %i.fh, align 1, !noalias !320 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !321
  store i32 %.sroa.013.0.copyload.i.i, ptr %i.b, align 4, !noalias !321
  %i.fi = invoke noundef ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB8_7set_val9SetValZSTE3getB17_EB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %bb.bd
  %.not.i32 = icmp eq ptr %i.fi, null
  br i1 %.not.i32, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.noexc39
  %i.fj = icmp eq i32 %.sroa.013.0.copyload.i.i, 0
  %.not16.i = icmp ugt i32 %.val, %.sroa.013.0.copyload.i.i
  %or.cond.i33 = select i1 %i.fj, i1 true, i1 %.not16.i
  %.not17.i = icmp ugt i32 %.sroa.013.0.copyload.i.i, %.val30
  %or.cond20.i = select i1 %or.cond.i33, i1 true, i1 %.not17.i
  br i1 %or.cond20.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  %exitcond.not.i34 = icmp eq i64 %i.ez, %i.eu
  br i1 %exitcond.not.i34, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata3dfa6sparse4SeenEBH_.exit44, label %.lr.ph.split.i

.loopexit:                                        ; preds = %bb.bd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.ay, %bb.az, %bb.bb, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives7StateIDNtNtB4_7set_val9SetValZSTENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
end_hunk_0

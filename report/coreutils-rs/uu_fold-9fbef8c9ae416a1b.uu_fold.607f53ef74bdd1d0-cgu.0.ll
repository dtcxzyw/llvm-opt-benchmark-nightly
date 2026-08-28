Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fold-9fbef8c9ae416a1b.uu_fold.607f53ef74bdd1d0-cgu.0?download=true
inline.NumInlined: 349
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_:bb.a
    i8 8, label %bb.aj
  ]

bb.aj:                                            ; preds = %.lr.ph28.i.epil.preheader
  %i.fp = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.326.i.epil.init, i64 1)
  br label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit

bb.ak:                                            ; preds = %.lr.ph28.i.epil.preheader
  %i.fq = and i64 %.sroa.0.326.i.epil.init, -8
  %i.fr = add i64 %i.fq, 8
  br label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit

bb.al:                                            ; preds = %.lr.ph28.i.epil.preheader
  %i.fs = add i64 %.sroa.0.326.i.epil.init, 1
  br label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit

_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit: ; preds = %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa, %bb.al, %bb.ak, %bb.aj, %.lr.ph28.i.epil.preheader, %bb.k, %._crit_edge.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.k ], [ %.sroa.0.4.i.1, %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa ], [ %i.fs, %bb.al ], [ %i.fp, %bb.aj ], [ %i.fr, %bb.ak ], [ 0, %.lr.ph28.i.epil.preheader ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !4, !align !5, !noundef !4
  store i64 %.sroa.0.1.i, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fw = load i8, ptr %i.fv, align 8, !range !17, !noundef !4
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit
  store i64 0, ptr %i.c, align 8
  br label %bb.ao

bb.an:                                            ; preds = %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit
  %i.fy = trunc nuw i64 %i.as to i1
  %i.fz = icmp uge i64 %i.au, %.sroa.01.0
  %or.cond.not = select i1 %i.fy, i1 %i.fz, i1 false ; 2 uses
  %i.ga = sub nuw i64 %i.au, %.sroa.01.0
  %.sroa.6.0 = select i1 %or.cond.not, i64 %i.ga, i64 undef
  %.sroa.016.0 = zext i1 %or.cond.not to i64
  store i64 %.sroa.016.0, ptr %i.c, align 8
  store i64 %.sroa.6.0, ptr %i.at, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ap
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %bb.ap ], [ undef, %bb.an ], [ undef, %bb.am ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %bb.ap ], [ null, %bb.an ], [ null, %bb.am ]
  %i.gb = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.gc = insertvalue { ptr, ptr } %i.gb, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.gc

bb.ap:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24
  %.sink = phi ptr [ %i.ar, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit24 ], [ %i.ac, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs8hEv8bFEvN4_7uu_fold.exit ]
  %i.gd = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sink) #19 ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, ptr } %i.gd, 0
  %.sroa.4.1 = extractvalue { ptr, ptr } %i.gd, 1
  br label %bb.ao
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold17process_utf8_lineINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 64
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 9223372036854775744
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.d = and i64 %1, 63                           ; 2 uses
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.b
  %.sroa.01.028.i.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.b ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !71, !noalias !76
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.g, align 1, !alias.scope !71, !noalias !79
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.h, align 1, !alias.scope !71, !noalias !82
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !71, !noalias !85
  %i.j = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i
  %i.k = or <2 x i64> %i.j, %.sroa.0.0.copyload.i10.i.i
  %i.l = or <2 x i64> %i.k, %.sroa.0.0.copyload.i11.i.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.c, label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.r = icmp samesign eq i64 %i.d, 0
  br i1 %i.r, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph.a

bb.d:                                             ; preds = %.lr.ph.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %._crit_edge.i.i, %bb.d
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !71, !noalias !88, !noundef !4
  %i.v = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.v, label %bb.d, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.w = and i64 %1, 56                           ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = and i64 %1, 7                            ; 7 uses
  %.not.i299 = icmp eq i64 %i.w, 0
  br i1 %.not.i299, label %._crit_edge, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i301, i64 8
  %i.aa = add nsw i64 %.sroa.6.0.i300, -8         ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %._crit_edge, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.ab = icmp samesign eq i64 %i.y, 0
  br i1 %i.ab, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303

bb.g:                                             ; preds = %.lr.ph303
  %i.ac = icmp samesign eq i64 %i.y, 1
  br i1 %i.ac, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.1

.lr.ph303.1:                                      ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.val.i.i.1 = load i8, ptr %i.ad, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.ae = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.ae, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph303.1
  %i.af = icmp samesign eq i64 %i.y, 2
  br i1 %i.af, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.2

.lr.ph303.2:                                      ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i.i.2 = load i8, ptr %i.ag, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.ah = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.ah, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph303.2
  %i.ai = icmp samesign eq i64 %i.y, 3
  br i1 %i.ai, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.3

.lr.ph303.3:                                      ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %.val.i.i.3 = load i8, ptr %i.aj, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.ak = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.ak, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph303.3
  %i.al = icmp samesign eq i64 %i.y, 4
  br i1 %i.al, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.4

.lr.ph303.4:                                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val.i.i.4 = load i8, ptr %i.am, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.an = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph303.4
  %i.ao = icmp samesign eq i64 %i.y, 5
  br i1 %i.ao, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.5

.lr.ph303.5:                                      ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %.val.i.i.5 = load i8, ptr %i.ap, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.aq = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.aq, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph303.5
  %i.ar = icmp samesign eq i64 %i.y, 6
  br i1 %i.ar, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph303.6

.lr.ph303.6:                                      ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %.val.i.i.6 = load i8, ptr %i.as, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.at = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.at, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph303:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.x, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.au = icmp sgt i8 %.val.i.i, -1
  br i1 %i.au, label %bb.g, label %.loopexit

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.e, %bb.f
  %.sroa.0.017.i301 = phi ptr [ %i.z, %bb.f ], [ %0, %bb.e ] ; 2 uses
  %.sroa.6.0.i300 = phi i64 [ %i.aa, %bb.f ], [ %i.w, %bb.e ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i301, align 1, !alias.scope !91
  %i.av = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.a, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i, %.lr.ph303, %.lr.ph303.1, %.lr.ph303.2, %.lr.ph303.3, %.lr.ph303.4, %.lr.ph303.5, %.lr.ph303.6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.az = load i8, ptr %i.ay, align 1, !range !17, !alias.scope !98, !noalias !95 ; 2 uses
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !98, !noalias !95, !nonnull !4, !align !5 ; 7 uses
  %i.bd = load i64, ptr %2, align 8, !alias.scope !98, !noalias !95 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !98, !noalias !95, !nonnull !4, !align !5
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load i8, ptr %i.bh, align 8, !range !17, !alias.scope !98, !noalias !95
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !98, !noalias !95, !nonnull !4, !align !5 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = trunc nuw i8 %i.az to i1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.loopexit
  %.sroa.38.0.i = phi i64 [ undef, %.loopexit ], [ %.val.i207.i, %.backedge.i.backedge ] ; 2 uses
  %.sroa.42.0.i = phi i32 [ -2, %.loopexit ], [ %.sroa.42.3140.i, %.backedge.i.backedge ] ; 2 uses
  %.sroa.29.0.i = phi i64 [ 0, %.loopexit ], [ %.sroa.29.7142.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.0.0122.i = phi ptr [ %0, %.loopexit ], [ %.sroa.0.9144.i, %.backedge.i.backedge ] ; 8 uses
  switch i32 %.sroa.42.0.i, label %bb.p [
    i32 -2, label %bb.m
    i32 -1, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit
  ]

bb.m:                                             ; preds = %.backedge.i
  %i.bo = ptrtoint ptr %.sroa.0.0122.i to i64
  %i.bp = icmp eq ptr %.sroa.0.0122.i, %i.ax
  br i1 %i.bp, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 1 ; 3 uses
  %i.br = load i8, ptr %.sroa.0.0122.i, align 1, !alias.scope !95, !noalias !100, !noundef !4 ; 5 uses
  %i.bs = icmp sgt i8 %i.br, -1
  br i1 %i.bs, label %bb.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i: ; preds = %bb.n
  %i.bt = and i8 %i.br, 31
  %i.bu = zext nneg i8 %i.bt to i32               ; 3 uses
  %i.bv = icmp ne ptr %i.bq, %i.ax
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 2 ; 3 uses
  %i.bx = load i8, ptr %i.bq, align 1, !alias.scope !95, !noalias !100, !noundef !4
  %i.by = shl nuw nsw i32 %i.bu, 6
  %i.bz = and i8 %i.bx, 63
  %i.ca = zext nneg i8 %i.bz to i32               ; 2 uses
  %i.cb = or disjoint i32 %i.by, %i.ca
  %i.cc = icmp samesign ugt i8 %i.br, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

bb.o:                                             ; preds = %bb.n
  %i.cd = zext nneg i8 %i.br to i32
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i
  %i.ce = icmp ne ptr %i.bw, %i.ax
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 3 ; 3 uses
  %i.cg = load i8, ptr %i.bw, align 1, !alias.scope !95, !noalias !100, !noundef !4
  %i.ch = shl nuw nsw i32 %i.ca, 6
  %i.ci = and i8 %i.cg, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj            ; 2 uses
  %i.cl = shl nuw nsw i32 %i.bu, 12
  %i.cm = or disjoint i32 %i.ck, %i.cl
  %i.cn = icmp samesign ugt i8 %i.br, -17
  br i1 %i.cn, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i
  %i.co = icmp ne ptr %i.cf, %i.ax
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 4
  %i.cq = load i8, ptr %i.cf, align 1, !alias.scope !95, !noalias !100, !noundef !4
  %i.cr = shl nuw nsw i32 %i.bu, 18
  %i.cs = and i32 %i.cr, 1835008
  %i.ct = shl nuw nsw i32 %i.ck, 6
  %i.cu = and i8 %i.cq, 63
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.ct, %i.cv
  %i.cx = or disjoint i32 %i.cw, %i.cs
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i, %bb.o, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i
  %.sroa.0.5.i = phi ptr [ %i.bq, %bb.o ], [ %i.cp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i ], [ %i.cf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.cd, %bb.o ], [ %i.cx, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i ], [ %i.cm, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i ], [ %i.cb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i ] ; 2 uses
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = ptrtoint ptr %.sroa.0.5.i to i64
  %i.da = sub i64 %.sroa.29.0.i, %i.bo
  %i.db = add i64 %i.da, %i.cz
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i, %.backedge.i
  %.sroa.04.0326.i = phi i64 [ %.sroa.29.0.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.38.0.i, %.backedge.i ] ; 16 uses
  %.sroa.9.0325.i = phi i32 [ %.sroa.4.0.i.ph.i.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.42.0.i, %.backedge.i ] ; 7 uses
  %.sroa.0.1123324.i = phi ptr [ %.sroa.0.5.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.0.0122.i, %.backedge.i ] ; 12 uses
  %.sroa.29.1323.i = phi i64 [ %i.db, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.29.0.i, %.backedge.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1123324.i) ]
  br i1 %i.ba, label %.preheader161.i.preheader, label %bb.q

.preheader161.i.preheader:                        ; preds = %bb.p
  %3 = icmp eq ptr %.sroa.0.1123324.i, %i.ax
  br i1 %3, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.dc = ptrtoint ptr %.sroa.0.1123324.i to i64
  %i.dd = icmp eq ptr %.sroa.0.1123324.i, %i.ax
  br i1 %i.dd, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 1 ; 3 uses
  %i.df = load i8, ptr %.sroa.0.1123324.i, align 1, !alias.scope !95, !noalias !105, !noundef !4 ; 5 uses
  %i.dg = icmp sgt i8 %i.df, -1
  br i1 %i.dg, label %bb.s, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i: ; preds = %bb.r
  %i.dh = and i8 %i.df, 31
  %i.di = zext nneg i8 %i.dh to i32               ; 3 uses
  %i.dj = icmp ne ptr %i.de, %i.ax
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 2 ; 3 uses
  %i.dl = load i8, ptr %i.de, align 1, !alias.scope !95, !noalias !105, !noundef !4
  %i.dm = shl nuw nsw i32 %i.di, 6
  %i.dn = and i8 %i.dl, 63
  %i.do = zext nneg i8 %i.dn to i32               ; 2 uses
  %i.dp = or disjoint i32 %i.dm, %i.do
  %i.dq = icmp samesign ugt i8 %i.df, -33
  br i1 %i.dq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dr = zext nneg i8 %i.df to i32
  br label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i
  %i.ds = icmp ne ptr %i.dk, %i.ax
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 3 ; 3 uses
  %i.du = load i8, ptr %i.dk, align 1, !alias.scope !95, !noalias !105, !noundef !4
  %i.dv = shl nuw nsw i32 %i.do, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx            ; 2 uses
  %i.dz = shl nuw nsw i32 %i.di, 12
  %i.ea = or disjoint i32 %i.dy, %i.dz
  %i.eb = icmp samesign ugt i8 %i.df, -17
  br i1 %i.eb, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i, label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i
  %i.ec = icmp ne ptr %i.dt, %i.ax
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 4
  %i.ee = load i8, ptr %i.dt, align 1, !alias.scope !95, !noalias !105, !noundef !4
  %i.ef = shl nuw nsw i32 %i.di, 18
  %i.eg = and i32 %i.ef, 1835008
  %i.eh = shl nuw nsw i32 %i.dy, 6
  %i.ei = and i8 %i.ee, 63
  %i.ej = zext nneg i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eh, %i.ej
  %i.el = or disjoint i32 %i.ek, %i.eg
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i, %bb.s, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i
  %.sroa.0.7.i = phi ptr [ %i.de, %bb.s ], [ %i.ed, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i ], [ %i.dt, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i ], [ %i.dk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.dr, %bb.s ], [ %i.el, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i ], [ %i.ea, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i ], [ %i.dp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i ] ; 2 uses
  %i.em = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.em)
  %i.en = ptrtoint ptr %.sroa.0.7.i to i64
  %i.eo = sub i64 %.sroa.29.1323.i, %i.dc
  %i.ep = add i64 %i.eo, %i.en
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i: ; preds = %.preheader205.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i, %bb.v, %.preheader161.i.preheader, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i, %bb.t, %bb.q
  %.val.i207.i = phi i64 [ %.sroa.29.3.i70, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ undef, %bb.q ], [ %.sroa.29.1323.i, %bb.t ], [ %.sroa.38.0.i, %.preheader161.i.preheader ], [ %.sroa.29.3.i70, %bb.v ], [ %.sroa.29.3.i70, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ], [ %.sroa.29.3.i70, %.preheader205.i ]
  %.sroa.0.9144.i = phi ptr [ %i.es, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %.sroa.0.1123324.i, %bb.q ], [ %.sroa.0.7.i, %bb.t ], [ %.sroa.0.1123324.i, %.preheader161.i.preheader ], [ %.sroa.0.10.i, %bb.v ], [ %.sroa.0.10.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ], [ %.sroa.0.10.i, %.preheader205.i ]
  %.sroa.29.7142.i = phi i64 [ %i.fg, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %.sroa.29.1323.i, %bb.q ], [ %i.ep, %bb.t ], [ %.sroa.29.1323.i, %.preheader161.i.preheader ], [ %i.ge, %bb.v ], [ %i.ge, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ], [ %i.ge, %.preheader205.i ]
  %.sroa.42.3140.i = phi i32 [ %i.ff, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ -1, %bb.q ], [ %.sroa.4.0.i.ph.i.i.i.i, %bb.t ], [ -1, %.preheader161.i.preheader ], [ -1, %.preheader205.i ], [ %.sroa.4.0.i.ph.i.i.i93.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ], [ %.sroa.4.0.i.ph.i.i.i93.i, %bb.v ]
  %.sroa.02.0.i.i = phi i64 [ %.sroa.29.3.i70, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %1, %bb.q ], [ %.sroa.29.1323.i, %bb.t ], [ %1, %.preheader161.i.preheader ], [ %1, %.preheader205.i ], [ %.sroa.29.3.i70, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ], [ %.sroa.29.3.i70, %bb.v ] ; 16 uses
  %i.eq = icmp eq i32 %.sroa.9.0325.i, 10
  br i1 %i.eq, label %bb.w, label %bb.x

.preheader205.i:                                  ; preds = %bb.v
  %i.er = icmp eq ptr %.sroa.0.10.i, %i.ax
  br i1 %i.er, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i, label %bb.u

bb.u:                                             ; preds = %.preheader161.i.preheader, %.preheader205.i
  %.sroa.0.3.i71 = phi ptr [ %.sroa.0.10.i, %.preheader205.i ], [ %.sroa.0.1123324.i, %.preheader161.i.preheader ] ; 6 uses
  %.sroa.29.3.i70 = phi i64 [ %i.ge, %.preheader205.i ], [ %.sroa.29.1323.i, %.preheader161.i.preheader ] ; 9 uses
  %4 = ptrtoint ptr %.sroa.0.3.i71 to i64
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i71, i64 1 ; 3 uses
  %i.et = load i8, ptr %.sroa.0.3.i71, align 1, !alias.scope !95, !noalias !115, !noundef !4 ; 5 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i: ; preds = %bb.u
  %i.ev = and i8 %i.et, 31
  %i.ew = zext nneg i8 %i.ev to i32               ; 3 uses
  %i.ex = icmp ne ptr %i.es, %i.ax
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i71, i64 2 ; 3 uses
  %i.ez = load i8, ptr %i.es, align 1, !alias.scope !95, !noalias !115, !noundef !4
  %i.fa = shl nuw nsw i32 %i.ew, 6
  %i.fb = and i8 %i.ez, 63
  %i.fc = zext nneg i8 %i.fb to i32               ; 2 uses
  %i.fd = or disjoint i32 %i.fa, %i.fc
  %i.fe = icmp samesign ugt i8 %i.et, -33
  br i1 %i.fe, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i: ; preds = %bb.u
  %i.ff = zext nneg i8 %i.et to i32
  %i.fg = add i64 %.sroa.29.3.i70, 1
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i
  %i.fh = icmp ne ptr %i.ey, %i.ax
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i71, i64 3 ; 3 uses
  %i.fj = load i8, ptr %i.ey, align 1, !alias.scope !95, !noalias !115, !noundef !4
  %i.fk = shl nuw nsw i32 %i.fc, 6
  %i.fl = and i8 %i.fj, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fk, %i.fm            ; 2 uses
  %i.fo = shl nuw nsw i32 %i.ew, 12
  %i.fp = or disjoint i32 %i.fn, %i.fo
  %i.fq = icmp samesign ugt i8 %i.et, -17
  br i1 %i.fq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i98.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i98.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i
  %i.fr = icmp ne ptr %i.fi, %i.ax
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i71, i64 4
  %i.ft = load i8, ptr %i.fi, align 1, !alias.scope !95, !noalias !115, !noundef !4
  %i.fu = shl nuw nsw i32 %i.ew, 18
  %i.fv = and i32 %i.fu, 1835008
  %i.fw = shl nuw nsw i32 %i.fn, 6
  %i.fx = and i8 %i.ft, 63
  %i.fy = zext nneg i8 %i.fx to i32
  %i.fz = or disjoint i32 %i.fw, %i.fy
  %i.ga = or disjoint i32 %i.fz, %i.fv
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i98.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i
  %.sroa.0.10.i = phi ptr [ %i.ey, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i ], [ %i.fs, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i98.i ], [ %i.fi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i93.i = phi i32 [ %i.fd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i ], [ %i.ga, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i98.i ], [ %i.fp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i97.i ] ; 5 uses
  %i.gb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i93.i, 1114112
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = ptrtoint ptr %.sroa.0.10.i to i64
  %i.gd = sub i64 %i.gc, %4
  %i.ge = add i64 %i.gd, %.sroa.29.3.i70          ; 4 uses
  %i.gf = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i93.i, 159
  br i1 %i.gf, label %bb.v, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i

bb.v:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i
  %i.gg = tail call fastcc i8 @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12lookup_width(i32 noundef %.sroa.4.0.i.ph.i.i.i93.i) #22
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %.preheader205.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i

bb.w:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i
  store i64 0, ptr %i.bl, align 8, !noalias !98
  %i.gi = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2) #19 ; 2 uses
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  %.not83.i = icmp eq ptr %i.gj, null
  br i1 %.not83.i, label %.backedge.i.backedge, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.x:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i
  %i.gk = load i64, ptr %i.bc, align 8, !noalias !98, !noundef !4
  %.not71.i = icmp ult i64 %i.gk, %i.bd
  br i1 %.not71.i, label %bb.z, label %bb.y

.backedge.sink.split.i:                           ; preds = %bb.bc, %bb.ag, %bb.ac
  %.sink369.i = phi i64 [ %i.ik, %bb.bc ], [ %i.gy, %bb.ag ], [ 0, %bb.ac ]
  store i64 %.sink369.i, ptr %i.bc, align 8, !noalias !98
  br label %.backedge.i.backedge

bb.y:                                             ; preds = %bb.x
  %i.gl = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2) #19 ; 2 uses
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0      ; 2 uses
  %.not72.i = icmp eq ptr %i.gm, null
  br i1 %.not72.i, label %bb.z, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.z:                                             ; preds = %bb.y, %bb.x
  switch i32 %.sroa.9.0325.i, label %bb.ah [
    i32 13, label %bb.aa
    i32 8, label %bb.ad
    i32 9, label %.preheader.i
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gn = icmp ult i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %.not78.i = icmp ugt i64 %.sroa.02.0.i.i, %1
  %or.cond85.i = or i1 %i.gn, %.not78.i
  br i1 %or.cond85.i, label %bb.ab, label %bb.ac, !prof !32

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0326.i, i64 noundef %.sroa.02.0.i.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21, !noalias !98
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.go = sub nuw i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0326.i
  %i.gq = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold10push_bytesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gp, i64 noundef %i.go) #19 ; 2 uses
  %i.gr = extractvalue { ptr, ptr } %i.gq, 0      ; 2 uses
  %.not79.i = icmp eq ptr %i.gr, null
  br i1 %.not79.i, label %.backedge.sink.split.i, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.ad:                                            ; preds = %bb.z
  %i.gs = icmp ult i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %.not76.i = icmp ugt i64 %.sroa.02.0.i.i, %1
  %or.cond86.i = or i1 %i.gs, %.not76.i
  br i1 %or.cond86.i, label %bb.ae, label %bb.af, !prof !32

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0326.i, i64 noundef %.sroa.02.0.i.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21, !noalias !98
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.gt = sub nuw i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0326.i
  %i.gv = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold10push_bytesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gu, i64 noundef %i.gt) #19 ; 2 uses
  %i.gw = extractvalue { ptr, ptr } %i.gv, 0      ; 2 uses
  %.not77.i = icmp eq ptr %i.gw, null
  br i1 %.not77.i, label %bb.ag, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.gx = load i64, ptr %i.bc, align 8, !noalias !98, !noundef !4
  %i.gy = tail call i64 @llvm.usub.sat.i64(i64 %i.gx, i64 1)
  br label %.backedge.sink.split.i

.preheader.i:                                     ; preds = %bb.z, %bb.ak
  %i.gz = load i64, ptr %i.bc, align 8, !noalias !98, !noundef !4
  %i.ha = and i64 %i.gz, -8
  %i.hb = add i64 %i.ha, 8                        ; 2 uses
  %i.hc = icmp ugt i64 %i.hb, %i.bd
  br i1 %i.hc, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.z
  br i1 %i.bn, label %.thread188.i, label %bb.ap

bb.ai:                                            ; preds = %.preheader.i
  %i.hd = load i64, ptr %i.bg, align 8, !noalias !98, !noundef !4 ; 2 uses
  %i.he = icmp sgt i64 %i.hd, -1
  tail call void @llvm.assume(i1 %i.he)
  %i.hf = icmp eq i64 %i.hd, 0
  br i1 %i.hf, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %.preheader.i
  store i64 %i.hb, ptr %i.bc, align 8, !noalias !98
  br i1 %i.bj, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.hg = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2) #19 ; 2 uses
  %i.hh = extractvalue { ptr, ptr } %i.hg, 0      ; 2 uses
  %.not73.i = icmp eq ptr %i.hh, null
  br i1 %.not73.i, label %.preheader.i, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.hi = load i64, ptr %i.bg, align 8, !noalias !98, !noundef !4 ; 2 uses
  %i.hj = icmp sgt i64 %i.hi, -1
  tail call void @llvm.assume(i1 %i.hj)
  store i64 %i.hi, ptr %i.bm, align 8, !noalias !98
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.sink.i = phi i64 [ 1, %bb.al ], [ 0, %bb.aj ]
  store i64 %.sink.i, ptr %i.bl, align 8, !noalias !98
  %i.hk = icmp ult i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %.not74.i = icmp ugt i64 %.sroa.02.0.i.i, %1
  %or.cond87.i = or i1 %i.hk, %.not74.i
  br i1 %or.cond87.i, label %bb.an, label %bb.ao, !prof !32

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.04.0326.i, i64 noundef %.sroa.02.0.i.i, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !98
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.hl = sub nuw i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.0326.i
  %i.hn = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold10push_bytesINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hm, i64 noundef %i.hl) #19 ; 2 uses
  %i.ho = extractvalue { ptr, ptr } %i.hn, 0      ; 2 uses
  %.not75.i = icmp eq ptr %i.ho, null
  br i1 %.not75.i, label %.backedge.i.backedge, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

.backedge.i.backedge:                             ; preds = %bb.ao, %.backedge.sink.split.i, %bb.w
  br label %.backedge.i

bb.ap:                                            ; preds = %bb.ah
  %i.hp = icmp ult i32 %.sroa.9.0325.i, 127
  br i1 %i.hp, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hq = icmp ugt i32 %.sroa.9.0325.i, 159
  br i1 %i.hq, label %bb.as, label %.thread188.i

bb.ar:                                            ; preds = %bb.ap
  %i.hr = icmp samesign ugt i32 %.sroa.9.0325.i, 31
  %spec.select.i = zext i1 %i.hr to i64
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.hs = tail call fastcc i8 @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12lookup_width(i32 noundef %.sroa.9.0325.i) #22
  %i.ht = zext nneg i8 %i.hs to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.046.1.i = phi i64 [ %spec.select.i, %bb.ar ], [ %i.ht, %bb.as ] ; 5 uses
  %.not203.i = icmp eq i64 %.sroa.046.1.i, 0
  br i1 %.not203.i, label %.thread188.i, label %bb.au

.thread188.i:                                     ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.aq, %bb.ah
  %.sroa.046.1191.i = phi i64 [ 0, %bb.at ], [ %.sroa.046.1.i, %bb.aw ], [ %.sroa.046.1.i, %bb.au ], [ %.sroa.046.1.i, %bb.av ], [ 0, %bb.aq ], [ 1, %bb.ah ]
  br i1 %i.bj, label %bb.ay, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.hu = load i64, ptr %i.bc, align 8, !noalias !98, !noundef !4
  %i.hv = add i64 %i.hu, %.sroa.046.1.i
  %i.hw = icmp ugt i64 %i.hv, %i.bd
  br i1 %i.hw, label %bb.av, label %.thread188.i

bb.av:                                            ; preds = %bb.au
  %i.hx = load i64, ptr %i.bg, align 8, !noalias !98, !noundef !4 ; 2 uses
  %i.hy = icmp sgt i64 %i.hx, -1
  tail call void @llvm.assume(i1 %i.hy)
  %i.hz = icmp eq i64 %i.hx, 0
  br i1 %i.hz, label %.thread188.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ia = tail call fastcc { ptr, ptr } @_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %2) #19 ; 2 uses
  %i.ib = extractvalue { ptr, ptr } %i.ia, 0      ; 2 uses
  %.not80.i = icmp eq ptr %i.ib, null
  br i1 %.not80.i, label %.thread188.i, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit.sink.split

bb.ax:                                            ; preds = %bb.az, %bb.ay, %.thread188.i
  %i.ic = icmp ult i64 %.sroa.02.0.i.i, %.sroa.04.0326.i
  %.not81.i = icmp ugt i64 %.sroa.02.0.i.i, %1
  %or.cond88.i = or i1 %i.ic, %.not81.i
  br i1 %or.cond88.i, label %bb.ba, label %bb.bb, !prof !32

bb.ay:                                            ; preds = %.thread188.i
  switch i32 %.sroa.9.0325.i, label %bb.ax [
    i32 9, label %bb.az
    i32 10, label %bb.az
    i32 12, label %bb.az
    i32 13, label %bb.az
    i32 32, label %bb.az
  ]

bb.az:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.ay
  %i.id = load i64, ptr %i.bg, align 8, !noalias !98, !noundef !4 ; 2 uses
  %i.ie = icmp sgt i64 %i.id, -1
end_hunk_0

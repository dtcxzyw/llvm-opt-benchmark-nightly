Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fold-9fbef8c9ae416a1b.uu_fold.607f53ef74bdd1d0-cgu.0?download=true
inline.NumInlined: 349
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvCs8hEv8bFEvN4_7uu_fold11emit_outputINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_:bb.a

bb.x:                                             ; preds = %bb.ab, %bb.w, %bb.v, %bb.t
  %.sroa.0.2.i = phi i64 [ %i.fb, %bb.ab ], [ %i.ev, %bb.w ], [ %i.eu, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.117.ph.i, %i.bt
  br i1 %i.ew, label %._crit_edge.i, label %.lr.ph.split.i

bb.y:                                             ; preds = %bb.u
  %i.ex = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, 159
  br i1 %i.ex, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.u
  %i.ey = icmp samesign ugt i32 %.sroa.4.0.i.ph.i, 31
  %spec.select.i = zext i1 %i.ey to i64
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ez = tail call fastcc i8 @_RNvNtCs7Zx3WTHCDWk_13unicode_width6tables12lookup_width(i32 noundef %.sroa.4.0.i.ph.i) #22
  %i.fa = zext nneg i8 %i.ez to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.010.1.i = phi i64 [ %i.fa, %bb.aa ], [ 0, %bb.y ], [ %spec.select.i, %bb.z ]
  %i.fb = add i64 %.sroa.010.1.i, %.sroa.0.024.i
  br label %bb.x

.lr.ph28.i:                                       ; preds = %bb.ai, %.lr.ph28.i.preheader.new
  %.sroa.0.326.i = phi i64 [ 0, %.lr.ph28.i.preheader.new ], [ %.sroa.0.4.i.1, %bb.ai ] ; 3 uses
  %.sroa.012.025.i = phi ptr [ %i.bh, %.lr.ph28.i.preheader.new ], [ %i.fi, %bb.ai ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph28.i.preheader.new ], [ %niter.next.1, %bb.ai ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 1
  %i.fd = load i8, ptr %.sroa.012.025.i, align 1, !alias.scope !60, !noundef !4
  switch i8 %i.fd, label %bb.ac [
    i8 13, label %.lr.ph28.i.1
    i8 9, label %bb.ad
    i8 8, label %bb.ae
  ]

bb.ac:                                            ; preds = %.lr.ph28.i
  %i.fe = add i64 %.sroa.0.326.i, 1
  br label %.lr.ph28.i.1

bb.ad:                                            ; preds = %.lr.ph28.i
  %i.ff = and i64 %.sroa.0.326.i, -8
  %i.fg = add i64 %i.ff, 8
  br label %.lr.ph28.i.1

bb.ae:                                            ; preds = %.lr.ph28.i
  %i.fh = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.326.i, i64 1)
  br label %.lr.ph28.i.1

.lr.ph28.i.1:                                     ; preds = %bb.ae, %bb.ad, %bb.ac, %.lr.ph28.i
  %.sroa.0.4.i = phi i64 [ %i.fe, %bb.ac ], [ %i.fh, %bb.ae ], [ %i.fg, %bb.ad ], [ 0, %.lr.ph28.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.012.025.i, i64 2 ; 2 uses
  %i.fj = load i8, ptr %i.fc, align 1, !alias.scope !60, !noundef !4
  switch i8 %i.fj, label %bb.ah [
    i8 13, label %bb.ai
    i8 9, label %bb.ag
    i8 8, label %bb.af
  ]

bb.af:                                            ; preds = %.lr.ph28.i.1
  %i.fk = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.0.4.i, i64 1)
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph28.i.1
  %i.fl = and i64 %.sroa.0.4.i, -8
  %i.fm = add i64 %i.fl, 8
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph28.i.1
  %i.fn = add i64 %.sroa.0.4.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %.lr.ph28.i.1
  %.sroa.0.4.i.1 = phi i64 [ %i.fn, %bb.ah ], [ %i.fk, %bb.af ], [ %i.fm, %bb.ag ], [ 0, %.lr.ph28.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa, label %.lr.ph28.i

_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit, label %.lr.ph28.i.epil.preheader

.lr.ph28.i.epil.preheader:                        ; preds = %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa, %.lr.ph28.i.preheader
  %.sroa.0.326.i.epil.init = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %.sroa.0.4.i.1, %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.012.025.i.epil.init = phi ptr [ %i.bh, %.lr.ph28.i.preheader ], [ %i.fi, %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.fo = load i8, ptr %.sroa.012.025.i.epil.init, align 1, !alias.scope !60, !noundef !4
  switch i8 %i.fo, label %bb.al [
    i8 13, label %_RNvCs8hEv8bFEvN4_7uu_fold17compute_col_count.exit
    i8 9, label %bb.ak
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
  %i.fw = load i8, ptr %i.fv, align 8, !range !8, !noundef !4
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
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !alias.scope !143, !noalias !144
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.g, align 1, !alias.scope !143, !noalias !145
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.h, align 1, !alias.scope !143, !noalias !146
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.i, align 1, !alias.scope !143, !noalias !147
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
  br i1 %i.r, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.q
  br i1 %i.t, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i, %bb.d
  %i.u = phi ptr [ %i.s, %bb.d ], [ %i.c, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !143, !noalias !148, !noundef !4
  %i.v = icmp sgt i8 %.val.i.i.i, -1
  br i1 %i.v, label %bb.d, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.w = and i64 %1, 56                           ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 7 uses
  %i.y = and i64 %1, 7                            ; 7 uses
  %.not.i267 = icmp eq i64 %i.w, 0
  br i1 %.not.i267, label %._crit_edge, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i269, i64 8
  %3 = add nsw i64 %.sroa.6.0.i268, -8            ; 2 uses
  %.not.i.a = icmp eq i64 %3, 0
  br i1 %.not.i.a, label %._crit_edge, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %i.aa = icmp samesign eq i64 %i.y, 0
  br i1 %i.aa, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271

bb.g:                                             ; preds = %.lr.ph271
  %i.ab = icmp samesign eq i64 %i.y, 1
  br i1 %i.ab, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.1

.lr.ph271.1:                                      ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.val.i.i.1 = load i8, ptr %i.ac, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.ad = icmp sgt i8 %.val.i.i.1, -1
  br i1 %i.ad, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph271.1
  %i.ae = icmp samesign eq i64 %i.y, 2
  br i1 %i.ae, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.2

.lr.ph271.2:                                      ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.val.i.i.2 = load i8, ptr %i.af, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.ag = icmp sgt i8 %.val.i.i.2, -1
  br i1 %i.ag, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph271.2
  %i.ah = icmp samesign eq i64 %i.y, 3
  br i1 %i.ah, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.3

.lr.ph271.3:                                      ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %.val.i.i.3 = load i8, ptr %i.ai, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.aj = icmp sgt i8 %.val.i.i.3, -1
  br i1 %i.aj, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph271.3
  %i.ak = icmp samesign eq i64 %i.y, 4
  br i1 %i.ak, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.4

.lr.ph271.4:                                      ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val.i.i.4 = load i8, ptr %i.al, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.am = icmp sgt i8 %.val.i.i.4, -1
  br i1 %i.am, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph271.4
  %i.an = icmp samesign eq i64 %i.y, 5
  br i1 %i.an, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.5

.lr.ph271.5:                                      ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %.val.i.i.5 = load i8, ptr %i.ao, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.ap = icmp sgt i8 %.val.i.i.5, -1
  br i1 %i.ap, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph271.5
  %i.aq = icmp samesign eq i64 %i.y, 6
  br i1 %i.aq, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph271.6

.lr.ph271.6:                                      ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %.val.i.i.6 = load i8, ptr %i.ar, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.as = icmp sgt i8 %.val.i.i.6, -1
  br i1 %i.as, label %_RNvNvNtNtCs6JMX4GRUq9U_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit

.lr.ph271:                                        ; preds = %._crit_edge
  %.val.i.i = load i8, ptr %i.x, align 1, !alias.scope !149, !noalias !150, !noundef !4
  %i.at = icmp sgt i8 %.val.i.i, -1
  br i1 %i.at, label %bb.g, label %.loopexit

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i: ; preds = %bb.e, %bb.f
  %.sroa.0.017.i269 = phi ptr [ %i.z, %bb.f ], [ %0, %bb.e ] ; 2 uses
  %.sroa.6.0.i268 = phi i64 [ %3, %bb.f ], [ %i.w, %bb.e ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i269, align 1, !alias.scope !149
  %i.au = and i64 %.sroa.012.0.copyload.i, -9187201950435737472
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs8hEv8bFEvN4_7uu_fold.exit.i, %.lr.ph271, %.lr.ph271.1, %.lr.ph271.2, %.lr.ph271.3, %.lr.ph271.4, %.lr.ph271.5, %.lr.ph271.6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.ay = load i8, ptr %i.ax, align 1, !range !8, !alias.scope !152 ; 2 uses
  %i.az = icmp eq i8 %i.ay, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !152, !nonnull !4, !align !5 ; 7 uses
  %i.bc = load i64, ptr %2, align 8, !alias.scope !152 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !152, !nonnull !4, !align !5
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !range !8, !alias.scope !152
  %i.bi = trunc nuw i8 %i.bh to i1                ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !152, !nonnull !4, !align !5 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = trunc nuw i8 %i.ay to i1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %.loopexit
  %.sroa.38.0.i = phi i64 [ undef, %.loopexit ], [ %.sroa.38.3143.i, %.backedge.i.backedge ]
  %.sroa.42.0.i = phi i32 [ -2, %.loopexit ], [ %.sroa.42.3145.i, %.backedge.i.backedge ] ; 2 uses
  %.sroa.29.0.i = phi i64 [ 0, %.loopexit ], [ %.sroa.29.7147.i, %.backedge.i.backedge ] ; 3 uses
  %.sroa.0.0122.i = phi ptr [ %0, %.loopexit ], [ %.sroa.0.9149.i, %.backedge.i.backedge ] ; 8 uses
  switch i32 %.sroa.42.0.i, label %bb.p [
    i32 -2, label %bb.m
    i32 -1, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit
  ]

bb.m:                                             ; preds = %.backedge.i
  %i.bn = ptrtoint ptr %.sroa.0.0122.i to i64
  %i.bo = icmp eq ptr %.sroa.0.0122.i, %i.aw
  br i1 %i.bo, label %_RINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEEB2_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 1 ; 3 uses
  %i.bq = load i8, ptr %.sroa.0.0122.i, align 1, !alias.scope !151, !noalias !153, !noundef !4 ; 5 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i: ; preds = %bb.n
  %i.bs = and i8 %i.bq, 31
  %i.bt = zext nneg i8 %i.bs to i32               ; 3 uses
  %i.bu = icmp ne ptr %i.bp, %i.aw
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 2 ; 3 uses
  %i.bw = load i8, ptr %i.bp, align 1, !alias.scope !151, !noalias !153, !noundef !4
  %i.bx = shl nuw nsw i32 %i.bt, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32               ; 2 uses
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp samesign ugt i8 %i.bq, -33
  br i1 %i.cb, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

bb.o:                                             ; preds = %bb.n
  %i.cc = zext nneg i8 %i.bq to i32
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i
  %i.cd = icmp ne ptr %i.bv, %i.aw
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 3 ; 3 uses
  %i.cf = load i8, ptr %i.bv, align 1, !alias.scope !151, !noalias !153, !noundef !4
  %i.cg = shl nuw nsw i32 %i.bz, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = shl nuw nsw i32 %i.bt, 12
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = icmp samesign ugt i8 %i.bq, -17
  br i1 %i.cm, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i
  %i.cn = icmp ne ptr %i.ce, %i.aw
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i, i64 4
  %i.cp = load i8, ptr %i.ce, align 1, !alias.scope !151, !noalias !153, !noundef !4
  %i.cq = shl nuw nsw i32 %i.bt, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cj, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i, %bb.o, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i
  %.sroa.0.5.i = phi ptr [ %i.bp, %bb.o ], [ %i.co, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i ], [ %i.ce, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i ], [ %i.bv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.cc, %bb.o ], [ %i.cw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i ], [ %i.cl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i ], [ %i.ca, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i ] ; 2 uses
  %i.cx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = ptrtoint ptr %.sroa.0.5.i to i64
  %i.cz = sub i64 %.sroa.29.0.i, %i.bn
  %i.da = add i64 %i.cz, %i.cy
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i, %.backedge.i
  %.sroa.04.0326.i = phi i64 [ %.sroa.29.0.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.38.0.i, %.backedge.i ] ; 16 uses
  %.sroa.9.0325.i = phi i32 [ %.sroa.4.0.i.ph.i.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.42.0.i, %.backedge.i ] ; 7 uses
  %.sroa.0.1123324.i = phi ptr [ %.sroa.0.5.i, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.0.0122.i, %.backedge.i ] ; 10 uses
  %.sroa.29.1323.i = phi i64 [ %i.da, %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread317.i ], [ %.sroa.29.0.i, %.backedge.i ] ; 5 uses
  br i1 %i.az, label %.preheader205.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1123324.i) ]
  %i.db = ptrtoint ptr %.sroa.0.1123324.i to i64
  %i.dc = icmp eq ptr %.sroa.0.1123324.i, %i.aw
  br i1 %i.dc, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 1 ; 3 uses
  %i.de = load i8, ptr %.sroa.0.1123324.i, align 1, !alias.scope !151, !noalias !154, !noundef !4 ; 5 uses
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %bb.s, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i: ; preds = %bb.r
  %i.dg = and i8 %i.de, 31
  %i.dh = zext nneg i8 %i.dg to i32               ; 3 uses
  %i.di = icmp ne ptr %i.dd, %i.aw
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 2 ; 3 uses
  %i.dk = load i8, ptr %i.dd, align 1, !alias.scope !151, !noalias !154, !noundef !4
  %i.dl = shl nuw nsw i32 %i.dh, 6
  %i.dm = and i8 %i.dk, 63
  %i.dn = zext nneg i8 %i.dm to i32               ; 2 uses
  %i.do = or disjoint i32 %i.dl, %i.dn
  %i.dp = icmp samesign ugt i8 %i.de, -33
  br i1 %i.dp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = zext nneg i8 %i.de to i32
  br label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i
  %i.dr = icmp ne ptr %i.dj, %i.aw
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 3 ; 3 uses
  %i.dt = load i8, ptr %i.dj, align 1, !alias.scope !151, !noalias !154, !noundef !4
  %i.du = shl nuw nsw i32 %i.dn, 6
  %i.dv = and i8 %i.dt, 63
  %i.dw = zext nneg i8 %i.dv to i32
  %i.dx = or disjoint i32 %i.du, %i.dw            ; 2 uses
  %i.dy = shl nuw nsw i32 %i.dh, 12
  %i.dz = or disjoint i32 %i.dx, %i.dy
  %i.ea = icmp samesign ugt i8 %i.de, -17
  br i1 %i.ea, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i, label %bb.t

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i
  %i.eb = icmp ne ptr %i.ds, %i.aw
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.1123324.i, i64 4
  %i.ed = load i8, ptr %i.ds, align 1, !alias.scope !151, !noalias !154, !noundef !4
  %i.ee = shl nuw nsw i32 %i.dh, 18
  %i.ef = and i32 %i.ee, 1835008
  %i.eg = shl nuw nsw i32 %i.dx, 6
  %i.eh = and i8 %i.ed, 63
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = or disjoint i32 %i.eg, %i.ei
  %i.ek = or disjoint i32 %i.ej, %i.ef
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i, %bb.s, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i
  %.sroa.0.7.i = phi ptr [ %i.dd, %bb.s ], [ %i.ec, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i ], [ %i.ds, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i ], [ %i.dj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.dq, %bb.s ], [ %i.ek, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit16.i.i.i.i.i ], [ %i.dz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit14.i.i.i.i.i ], [ %i.do, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i.i ] ; 2 uses
  %i.el = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.el)
  %i.em = ptrtoint ptr %.sroa.0.7.i to i64
  %i.en = sub i64 %.sroa.29.1323.i, %i.db
  %i.eo = add i64 %i.en, %i.em
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i: ; preds = %bb.v, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i, %.preheader205.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i, %bb.t, %bb.q
  %.sroa.0.9149.i = phi ptr [ %.sroa.0.7.i, %bb.t ], [ %i.es, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %.sroa.0.1123324.i, %bb.q ], [ %.sroa.0.3.i, %.preheader205.i ], [ %.sroa.0.10.i, %bb.v ], [ %.sroa.0.10.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ]
  %.sroa.29.7147.i = phi i64 [ %i.eo, %bb.t ], [ %i.fg, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %.sroa.29.1323.i, %bb.q ], [ %.sroa.29.3.i, %.preheader205.i ], [ %i.ge, %bb.v ], [ %i.ge, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ]
  %.sroa.42.3145.i = phi i32 [ %.sroa.4.0.i.ph.i.i.i.i, %bb.t ], [ %i.ff, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ -1, %bb.q ], [ -1, %.preheader205.i ], [ %.sroa.4.0.i.ph.i.i.i93.i, %bb.v ], [ %.sroa.4.0.i.ph.i.i.i93.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ]
  %.sroa.38.3143.i = phi i64 [ %.sroa.29.1323.i, %bb.t ], [ %.sroa.29.3.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ undef, %bb.q ], [ undef, %.preheader205.i ], [ %.sroa.29.3.i, %bb.v ], [ %.sroa.29.3.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ]
  %.sroa.02.0.i.i = phi i64 [ %.sroa.29.1323.i, %bb.t ], [ %.sroa.29.3.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i ], [ %1, %bb.q ], [ %1, %.preheader205.i ], [ %.sroa.29.3.i, %bb.v ], [ %.sroa.29.3.i, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.i ] ; 16 uses
  %i.ep = icmp eq i32 %.sroa.9.0325.i, 10
  br i1 %i.ep, label %bb.w, label %bb.x

.preheader205.i:                                  ; preds = %bb.p, %bb.v
  %.sroa.29.3.i = phi i64 [ %i.ge, %bb.v ], [ %.sroa.29.1323.i, %bb.p ] ; 9 uses
  %.sroa.0.3.i = phi ptr [ %.sroa.0.10.i, %bb.v ], [ %.sroa.0.1123324.i, %bb.p ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.3.i) ]
  %i.eq = ptrtoint ptr %.sroa.0.3.i to i64
  %i.er = icmp eq ptr %.sroa.0.3.i, %i.aw
  br i1 %i.er, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRTjcEE6map_orjNCINvCs8hEv8bFEvN4_7uu_fold18process_utf8_charsINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutEE0EB11_.exit.i, label %bb.u

bb.u:                                             ; preds = %.preheader205.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i, i64 1 ; 3 uses
  %i.et = load i8, ptr %.sroa.0.3.i, align 1, !alias.scope !151, !noalias !155, !noundef !4 ; 5 uses
  %i.eu = icmp sgt i8 %i.et, -1
  br i1 %i.eu, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECs8hEv8bFEvN4_7uu_fold.exit99.thread183.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8hEv8bFEvN4_7uu_fold.exit12.i.i.i.i92.i: ; preds = %bb.u
  %i.ev = and i8 %i.et, 31
  %i.ew = zext nneg i8 %i.ev to i32               ; 3 uses
  %i.ex = icmp ne ptr %i.es, %i.aw
end_hunk_0

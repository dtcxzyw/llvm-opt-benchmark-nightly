Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_printf-586dc4926e3bfb0c.fish_printf.13e6199442f2e81f-cgu.0?download=true
inline.NumInlined: 123
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal26round_to_fractional_digits:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal15should_round_up.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  call void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0)
  %i.eh = load ptr, ptr %i.ef, align 8, !alias.scope !103, !noalias !102, !nonnull !5, !noundef !5 ; 2 uses
  %i.ei = load ptr, ptr %i.ee, align 8, !alias.scope !103, !noalias !102, !nonnull !5, !noundef !5
  %i.ej = icmp eq ptr %i.ei, %i.eh
  br i1 %i.ej, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ek = load ptr, ptr %i.a, align 8, !alias.scope !103, !noalias !102, !nonnull !5, !noundef !5
  %i.el = load ptr, ptr %i.eg, align 8, !alias.scope !103, !noalias !102, !nonnull !5, !noundef !5 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i, label %bb.am

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink12.i.i = phi ptr [ %i.el, %bb.al ], [ %i.eh, %bb.ak ]
  %i.en = getelementptr inbounds i8, ptr %.sink12.i.i, i64 -4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  %i.eo = load i32, ptr %i.en, align 4, !noundef !5
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.an, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit

bb.an:                                            ; preds = %bb.am
  %i.eq = tail call { i32, i32 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8pop_backCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) ; 0 uses
  br label %bb.ak

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit: ; preds = %bb.am, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal22fractional_digit_count.exit
  ret void

bb.ao:                                            ; preds = %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit39
  %i.er = tail call noundef nonnull align 4 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE14push_front_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 0) ; 0 uses
  %i.es = load i32, ptr %i.c, align 8, !alias.scope !104, !noundef !5
  %i.et = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.es, i32 1) ; 2 uses
  %i.eu = extractvalue { i32, i1 } %i.et, 1
  br i1 %i.eu, label %bb.ap, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit40

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #19
  unreachable

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit40: ; preds = %bb.ao
  %i.ev = extractvalue { i32, i1 } %i.et, 0
  store i32 %i.ev, ptr %i.c, align 8, !alias.scope !104
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit39, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit40
  %.sroa.0.3 = phi i32 [ 0, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit40 ], [ %i.eb, %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit39 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ew = zext nneg i32 %.sroa.0.3 to i64         ; 4 uses
  %i.ex = load i64, ptr %i.b, align 8, !alias.scope !105, !noundef !5
  %i.ey = icmp ugt i64 %i.ex, %i.ew
  br i1 %i.ey, label %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit43, label %bb.ar, !prof !6

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #19, !noalias !105
  unreachable

_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit43: ; preds = %bb.aq
  %i.ez = load i64, ptr %i.az, align 8, !alias.scope !105, !noundef !5
  %i.fa = add i64 %i.ez, %i.ew                    ; 2 uses
  %i.fb = load i64, ptr %0, align 8, !range !4, !alias.scope !105, !noundef !5 ; 2 uses
  %.not.i41 = icmp ult i64 %i.fa, %i.fb
  %i.fc = select i1 %.not.i41, i64 0, i64 %i.fb
  %.sroa.0.0.i42 = sub nuw i64 %i.fa, %i.fc
  %i.fd = load ptr, ptr %i.ba, align 8, !alias.scope !105, !nonnull !5, !noundef !5
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.sroa.0.0.i42 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !noundef !5 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit43
  %i.fh = add nuw i32 %i.ff, 1
  store i32 %i.fh, ptr %i.fe, align 4
  %i.fi = load i64, ptr %i.b, align 8, !alias.scope !106, !noundef !5
  %i.fj = icmp ugt i64 %i.fi, %i.ew
  br i1 %i.fj, label %_RNvXs_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB4_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexlE5index.exit36, label %._crit_edge61, !prof !107

bb.at:                                            ; preds = %_RNvXs0_NtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB5_7DecimalINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutlE9index_mut.exit43
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, double noundef %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 19 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = bitcast double %1 to i64
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = tail call { double, i32 } @_RNvNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp5frexp(double noundef %i.g) ; 2 uses
  %i.i = extractvalue { double, i32 } %i.h, 0     ; 3 uses
  %i.j = extractvalue { double, i32 } %i.h, 1     ; 2 uses
  %i.k = fcmp une double %i.i, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.j, i32 -29) ; 2 uses
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.05.0 = phi i32 [ %i.q, %bb.d ], [ %i.j, %bb.a ] ; 5 uses
  %.sroa.0.0 = phi double [ %i.r, %bb.d ], [ %i.i, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %i.p = fcmp une double %.sroa.0.0, 0.000000e+00
  br i1 %i.p, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.q = extractvalue { i32, i1 } %i.l, 0
  %i.r = fmul double %i.i, f0x41C0000000000000
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #19
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.aj
  %.sroa.011.0.copyload.pre = load i64, ptr %i.e, align 8
  %.sroa.412.0.copyload.pre = load ptr, ptr %i.n, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.sroa.513.0.copyload = phi i64 [ %i.el, %._crit_edge.loopexit ], [ 0, %bb.c ] ; 2 uses
  %.sroa.412.0.copyload = phi ptr [ %.sroa.412.0.copyload.pre, %._crit_edge.loopexit ], [ inttoptr (i64 4 to ptr), %bb.c ]
  %.sroa.011.0.copyload = phi i64 [ %.sroa.011.0.copyload.pre, %._crit_edge.loopexit ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = icmp ult i64 %.sroa.513.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.s)
  store i64 %.sroa.011.0.copyload, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %.sroa.412.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  store i64 %.sroa.513.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  store i32 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %.lobit = lshr i64 %i.f, 63
  %i.v = trunc nuw nsw i64 %.lobit to i8
  store i8 %i.v, ptr %i.u, align 4
  %i.w = icmp sgt i32 %.sroa.05.0, -1
  br i1 %i.w, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %bb.c, %bb.aj
  %i.x = phi i64 [ %i.el, %bb.aj ], [ 0, %bb.c ]  ; 3 uses
  %.sroa.0.150 = phi double [ %i.eo, %bb.aj ], [ %.sroa.0.0, %bb.c ] ; 2 uses
  %i.y = call i32 @llvm.fptoui.sat.i32.f64(double %.sroa.0.150) ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !range !4, !alias.scope !122, !noundef !5
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %bb.f, label %bb.aj

bb.f:                                             ; preds = %.lr.ph
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCslLGyqsphxMB_10widestring(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %bb.aj unwind label %.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ab = icmp eq i32 %.sroa.05.0, -2147483648
  br i1 %i.ab, label %bb.ag, label %bb.r

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %.not19.i = icmp eq i32 %.sroa.05.0, 0
  br i1 %.not19.i, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10shift_left.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ac = zext nneg i32 %.sroa.05.0 to i64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit.i, %.lr.ph.i
  %.sroa.0.020.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %i.ay, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit.i ] ; 2 uses
  %..i.i = call noundef range(i64 0, 30) i64 @llvm.umin.i64(i64 %.sroa.0.020.i, i64 29) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !123
  invoke void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8iter_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.i
  %.sroa.012.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !123
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !123
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !123
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !123
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %.noexc18
  %.sroa.10.0.i = phi i64 [ %.sroa.4.0.copyload.i, %.noexc18 ], [ %4, %bb.q ] ; 4 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.3.0.copyload.i, %.noexc18 ], [ %.sroa.7.1.i, %bb.q ] ; 2 uses
  %.sroa.5.0.i = phi i64 [ %.sroa.2.0.copyload.i, %.noexc18 ], [ %.sroa.5.1.i, %bb.q ] ; 3 uses
  %.sroa.0.013.i = phi i64 [ %.sroa.012.0.copyload.i, %.noexc18 ], [ %.sroa.0.1.i, %bb.q ] ; 3 uses
  %.sroa.03.0.i = phi i32 [ 0, %.noexc18 ], [ %i.bi, %bb.q ] ; 3 uses
  %i.ag = icmp eq i64 %.sroa.7.0.i, %.sroa.10.0.i
  br i1 %i.ag, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i64 %.sroa.0.013.i, %.sroa.5.0.i
  br i1 %i.ah, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp eq i32 %.sroa.03.0.i, 0
  br i1 %i.ai, label %.noexc22.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef nonnull align 4 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE14push_front_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %.sroa.03.0.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc19:                                         ; preds = %bb.m
  %i.ak = load i32, ptr %i.t, align 8, !alias.scope !124, !noundef !5
  %i.al = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ak, i32 1) ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.al, 1
  br i1 %i.am, label %.invoke79, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit.i

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit.i: ; preds = %.noexc19
  %i.an = extractvalue { i32, i1 } %i.al, 0
  store i32 %i.an, ptr %i.t, align 8, !alias.scope !124
  br label %.noexc22.preheader

.noexc22.preheader:                               ; preds = %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10push_front.exit.i, %bb.l
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc22.preheader, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125
  invoke void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE4iterCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc22
  %i.ao = load ptr, ptr %i.ae, align 8, !alias.scope !126, !noalias !125, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = load ptr, ptr %i.ad, align 8, !alias.scope !126, !noalias !125, !nonnull !5, !noundef !5
  %i.aq = icmp eq ptr %i.ap, %i.ao
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc21
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !126, !noalias !125, !nonnull !5, !noundef !5
  %i.as = load ptr, ptr %i.af, align 8, !alias.scope !126, !noalias !125, !nonnull !5, !noundef !5 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i, label %bb.o

_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !125
  br label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit.i

bb.o:                                             ; preds = %bb.n, %.noexc21
  %.sink12.i.i.i = phi ptr [ %i.as, %bb.n ], [ %i.ao, %.noexc21 ]
  %i.au = getelementptr inbounds i8, ptr %.sink12.i.i.i, i64 -4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !125
  %i.av = load i32, ptr %i.au, align 4, !noundef !5
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ax = invoke { i32, i32 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8pop_backCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal19trim_trailing_zeros.exit.i: ; preds = %bb.o, %_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4ItermENtNtNtNtCs3oUPovFnLWP_4core4iter6traits12double_ended19DoubleEndedIterator9next_backCs1HV6ixfL8cZ_11fish_printf.exit.thread.i.i
  %i.ay = sub nuw nsw i64 %.sroa.0.020.i, %..i.i  ; 2 uses
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10shift_left.exit, label %bb.i

bb.q:                                             ; preds = %bb.k, %bb.j
  %.sroa.7.1.i = phi i64 [ %.sroa.0.013.i, %bb.k ], [ %.sroa.7.0.i, %bb.j ]
  %.sroa.5.1.i = phi i64 [ %.sroa.10.0.i, %bb.k ], [ %.sroa.5.0.i, %bb.j ]
  %.sroa.0.1.i = phi i64 [ %.sroa.10.0.i, %bb.k ], [ %.sroa.0.013.i, %bb.j ]
  %.sink12.i.in.i = phi i64 [ %.sroa.5.0.i, %bb.k ], [ %.sroa.10.0.i, %bb.j ]
  %.sink12.i.i = inttoptr i64 %.sink12.i.in.i to ptr
  %i.az = getelementptr inbounds i8, ptr %.sink12.i.i, i64 -4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !noundef !5
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, %..i.i
  %i.bd = zext i32 %.sroa.03.0.i to i64
  %i.be = add nuw nsw i64 %i.bc, %i.bd            ; 2 uses
  %4 = ptrtoint ptr %i.az to i64
  %i.bf = urem i64 %i.be, 1000000000
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.az, align 4
  %i.bh = udiv i64 %i.be, 1000000000
  %i.bi = trunc nuw i64 %i.bh to i32
  br label %bb.j

bb.r:                                             ; preds = %bb.g
  %i.bj = sub nsw i32 0, %.sroa.05.0
  %i.bk = zext nneg i32 %i.bj to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bo = trunc nuw i64 %2 to i1
  br label %bb.s

bb.s:                                             ; preds = %.noexc34, %bb.r
  %.sroa.0.031.i = phi i64 [ %i.bk, %bb.r ], [ %i.dt, %.noexc34 ] ; 2 uses
  %..i.i23 = call noundef range(i64 0, 30) i64 @llvm.umin.i64(i64 %.sroa.0.031.i, i64 9) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.bp = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !127, !noundef !5
  invoke void @_RINvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB6_8VecDequemE12slice_rangesNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullECs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, i64 noundef %i.bp)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.s
  %i.bq = load i64, ptr %i.a, align 8, !noalias !127, !noundef !5 ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !noalias !127, !noundef !5 ; 2 uses
  %i.bs = load i64, ptr %i.bm, align 8, !noalias !127, !noundef !5 ; 2 uses
  %i.bt = load i64, ptr %i.bn, align 8, !noalias !127, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  %i.bu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !127, !nonnull !5, !noundef !5 ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.br
  %i.bx = icmp samesign eq i64 %i.bq, %i.br
  br i1 %i.bx, label %._crit_edge.i, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.noexc26
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bq
  %i.bz = trunc nuw nsw i64 %..i.i23 to i32       ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.bz
  %i.ca = xor i32 %notmask.i, -1
  %i.cb = lshr i32 1000000000, %i.bz
  br label %bb.t

._crit_edge.i:                                    ; preds = %bb.v, %.noexc26
  %.sroa.06.0.lcssa.i = phi i32 [ 0, %.noexc26 ], [ %i.cp, %bb.v ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bt
  %i.cd = icmp samesign eq i64 %i.bs, %i.bt
  br i1 %i.cd, label %._crit_edge29.i, label %.lr.ph28.i

.lr.ph28.i:                                       ; preds = %._crit_edge.i
  %i.ce = trunc nuw nsw i64 %..i.i23 to i32       ; 3 uses
  %notmask17.i = shl nsw i32 -1, %i.ce
  %i.cf = xor i32 %notmask17.i, -1
  %i.cg = lshr i32 1000000000, %i.ce
  br label %bb.y

bb.t:                                             ; preds = %bb.v, %.lr.ph.i24
  %.sroa.06.024.i = phi i32 [ 0, %.lr.ph.i24 ], [ %i.cp, %bb.v ]
  %.sroa.010.023.i = phi ptr [ %i.by, %.lr.ph.i24 ], [ %i.ch, %bb.v ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i, i64 4 ; 2 uses
  %i.ci = load i32, ptr %.sroa.010.023.i, align 4, !noundef !5 ; 2 uses
  %i.cj = lshr i32 %i.ci, %i.bz                   ; 2 uses
  %i.ck = add i32 %i.cj, %.sroa.06.024.i          ; 2 uses
  %i.cl = icmp ult i32 %i.ck, %i.cj
  br i1 %i.cl, label %.invoke79, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = and i32 %i.ci, %i.ca
  store i32 %i.ck, ptr %.sroa.010.023.i, align 4
  %i.cn = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cb, i32 %i.cm) ; 2 uses
  %i.co = extractvalue { i32, i1 } %i.cn, 1
  br i1 %i.co, label %.invoke77, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = extractvalue { i32, i1 } %i.cn, 0       ; 2 uses
  %i.cq = icmp eq ptr %i.ch, %i.bw
  br i1 %i.cq, label %._crit_edge.i, label %bb.t

._crit_edge29.i:                                  ; preds = %bb.aa, %._crit_edge.i
  %.sroa.06.1.lcssa.i = phi i32 [ %.sroa.06.0.lcssa.i, %._crit_edge.i ], [ %i.dp, %bb.aa ] ; 2 uses
  %i.cr = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !128, !noundef !5
  %.not8.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not8.i.i, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge29.i, %bb.x
  %i.cs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !128, !noundef !5 ; 2 uses
  %i.ct = load i64, ptr %i.d, align 8, !range !4, !alias.scope !128, !noundef !5 ; 2 uses
  %.not7.i.i = icmp ult i64 %i.cs, %i.ct
  %i.cu = select i1 %.not7.i.i, i64 0, i64 %i.ct
  %.sroa.05.0.i.i = sub nuw i64 %i.cs, %i.cu
  %i.cv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !128, !nonnull !5, !noundef !5
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.05.0.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !noundef !5
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.w, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cz = invoke { i32, i32 } @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE9pop_frontCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc29:                                         ; preds = %bb.w
  %i.da = load i32, ptr %i.t, align 8, !alias.scope !128, !noundef !5
  %i.db = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.da, i32 -1) ; 2 uses
  %i.dc = extractvalue { i32, i1 } %i.db, 1
  br i1 %i.dc, label %.invoke, label %bb.x

bb.x:                                             ; preds = %.noexc29
  %i.dd = extractvalue { i32, i1 } %i.db, 0
  store i32 %i.dd, ptr %i.t, align 8, !alias.scope !128
  %i.de = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !128, !noundef !5
  %.not.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i, label %.lr.ph.i.i

_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i: ; preds = %bb.x, %.lr.ph.i.i, %._crit_edge29.i
  %i.df = icmp eq i32 %.sroa.06.1.lcssa.i, 0
  br i1 %i.df, label %.noexc33, label %bb.ab

bb.y:                                             ; preds = %bb.aa, %.lr.ph28.i
  %.sroa.012.026.i = phi ptr [ %i.bv, %.lr.ph28.i ], [ %i.dg, %bb.aa ] ; 3 uses
  %.sroa.06.125.i = phi i32 [ %.sroa.06.0.lcssa.i, %.lr.ph28.i ], [ %i.dp, %bb.aa ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i, i64 4 ; 2 uses
  %i.dh = load i32, ptr %.sroa.012.026.i, align 4, !noundef !5 ; 2 uses
  %i.di = lshr i32 %i.dh, %i.ce                   ; 2 uses
  %i.dj = add i32 %i.di, %.sroa.06.125.i          ; 2 uses
  %i.dk = icmp ult i32 %i.dj, %i.di
  br i1 %i.dk, label %.invoke79, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = and i32 %i.dh, %i.cf
  store i32 %i.dj, ptr %.sroa.012.026.i, align 4
  %i.dm = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.cg, i32 %i.dl) ; 2 uses
  %i.dn = extractvalue { i32, i1 } %i.dm, 1
  br i1 %i.dn, label %.invoke77, label %bb.aa

.invoke79:                                        ; preds = %bb.t, %bb.y, %.noexc19
  %i.do = phi ptr [ @10, %.noexc19 ], [ @13, %bb.y ], [ @11, %bb.t ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.do) #19
          to label %.cont80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont80:                                          ; preds = %.invoke79
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.dp = extractvalue { i32, i1 } %i.dm, 0       ; 2 uses
  %i.dq = icmp eq ptr %i.dg, %i.cc
  br i1 %i.dq, label %._crit_edge29.i, label %bb.y

.invoke77:                                        ; preds = %bb.u, %bb.z
  %i.dr = phi ptr [ @14, %bb.z ], [ @12, %bb.u ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr) #19
          to label %.cont78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont78:                                          ; preds = %.invoke77
  unreachable

bb.ab:                                            ; preds = %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i
  %i.ds = invoke noundef nonnull align 4 ptr @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE13push_back_mutCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %.sroa.06.1.lcssa.i)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc33:                                         ; preds = %bb.ab, %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal18trim_leading_zeros.exit.i
  %i.dt = sub nuw nsw i64 %.sroa.0.031.i, %..i.i23 ; 2 uses
  br i1 %i.bo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc33
  %i.du = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !127, !noundef !5 ; 2 uses
  %i.dv = trunc i64 %i.du to i32
  %i.dw = load i32, ptr %i.t, align 8, !alias.scope !127, !noundef !5
  %i.dx = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.dv, i32 %i.dw) ; 2 uses
  %i.dy = extractvalue { i32, i1 } %i.dx, 1
  br i1 %i.dy, label %.invoke, label %bb.ae

bb.ad:                                            ; preds = %bb.af, %.noexc33
  %.sink.i = phi i64 [ %i.ef, %bb.af ], [ %3, %.noexc33 ]
  invoke void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequemE8truncateCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d, i64 noundef %.sink.i)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.ad
  %.not.i25 = icmp eq i64 %i.dt, 0
  br i1 %.not.i25, label %_RNvMNtNtCs1HV6ixfL8cZ_11fish_printf6fmt_fp7decimalNtB2_7Decimal10shift_left.exit, label %bb.s

bb.ae:                                            ; preds = %bb.ac
  %i.dz = extractvalue { i32, i1 } %i.dx, 0
  %i.ea = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dz, i32 -1) ; 2 uses
  %i.eb = extractvalue { i32, i1 } %i.ea, 1
  br i1 %i.eb, label %.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = extractvalue { i32, i1 } %i.ea, 0
  %..i18.i = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %i.ec, i32 0)
  %i.ed = zext nneg i32 %..i18.i to i64
  %i.ee = call i64 @llvm.usub.sat.i64(i64 %i.ed, i64 %3)
  %i.ef = call i64 @llvm.usub.sat.i64(i64 %i.du, i64 %i.ee)
  br label %bb.ad

.invoke:                                          ; preds = %bb.ae, %bb.ac, %.noexc29
  %i.eg = phi ptr [ @21, %.noexc29 ], [ @16, %bb.ae ], [ @15, %bb.ac ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eg) #19
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_testing-22188766dc9253b7.lance_testing.a0c385b76fa0ab66-cgu.0?download=true
inline.NumInlined: 1871
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5color5colorQNCNvNtB4_4rand10thread_rng0ECsdNJZa1e9V4g_13lance_testing:bb.a
  %.sroa.012.0 = phi float [ %i.dd, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs4PgLcKbjAJM_7inferno10flamegraph4rand10thread_rng0INtB7_5FnMutuE8call_mutCsdNJZa1e9V4g_13lance_testing.exit41 ], [ %i.fx, %._crit_edge ], [ %i.ar, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevNtNtNtBc_3str4iter5BytesENtNtNtBa_6traits8iterator8Iterator3anyNCINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5color8namehashB3_E0ECsdNJZa1e9V4g_13lance_testing.exit.i ], [ 1.000000e+00, %bb.c ]
  %i.dy = phi <2 x float> [ %i.dv, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvNtNtCs4PgLcKbjAJM_7inferno10flamegraph4rand10thread_rng0INtB7_5FnMutuE8call_mutCsdNJZa1e9V4g_13lance_testing.exit41 ], [ %i.ge, %._crit_edge ], [ %i.bh, %_RINvYINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevNtNtNtBc_3str4iter5BytesENtNtNtBa_6traits8iterator8Iterator3anyNCINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5color8namehashB3_E0ECsdNJZa1e9V4g_13lance_testing.exit.i ], [ splat (float 1.000000e+00), %bb.c ] ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = extractelement <2 x float> %i.dy, i64 1
  %i.eb = tail call noundef i24 @_RNvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5color26rgb_components_for_palette(i1 noundef zeroext %0, i8 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, float noundef %.sroa.012.0, float noundef %i.dz, float noundef %i.ea)
  ret i24 %i.eb

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.01.046 = phi i64 [ -3750763034362895579, %.lr.ph.preheader.new ], [ %i.fp, %.lr.ph ]
  %.sroa.010.045 = phi ptr [ %4, %.lr.ph.preheader.new ], [ %i.fl, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 1
  %i.ed = load i8, ptr %.sroa.010.045, align 1, !noundef !3
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %.sroa.01.046, %i.ee
  %i.eg = mul i64 %i.ef, 1099511628211
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 2
  %i.ei = load i8, ptr %i.ec, align 1, !noundef !3
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = mul i64 %i.ek, 1099511628211
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 3
  %i.en = load i8, ptr %i.eh, align 1, !noundef !3
  %i.eo = zext i8 %i.en to i64
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = mul i64 %i.ep, 1099511628211
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 4
  %i.es = load i8, ptr %i.em, align 1, !noundef !3
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = mul i64 %i.eu, 1099511628211
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 5
  %i.ex = load i8, ptr %i.er, align 1, !noundef !3
  %i.ey = zext i8 %i.ex to i64
  %i.ez = xor i64 %i.ev, %i.ey
  %i.fa = mul i64 %i.ez, 1099511628211
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 6
  %i.fc = load i8, ptr %i.ew, align 1, !noundef !3
  %i.fd = zext i8 %i.fc to i64
  %i.fe = xor i64 %i.fa, %i.fd
  %i.ff = mul i64 %i.fe, 1099511628211
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 7
  %i.fh = load i8, ptr %i.fb, align 1, !noundef !3
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %i.ff, %i.fi
  %i.fk = mul i64 %i.fj, 1099511628211
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 8 ; 2 uses
  %i.fm = load i8, ptr %i.fg, align 1, !noundef !3
  %i.fn = zext i8 %i.fm to i64
  %i.fo = xor i64 %i.fk, %i.fn
  %i.fp = mul i64 %i.fo, 1099511628211            ; 3 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.01.046.epil.init = phi i64 [ -3750763034362895579, %.lr.ph.preheader ], [ %i.fp, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.010.045.epil.init = phi ptr [ %4, %.lr.ph.preheader ], [ %i.fl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod12 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.01.046.epil = phi i64 [ %i.fu, %.lr.ph.epil ], [ %.sroa.01.046.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.010.045.epil = phi ptr [ %i.fq, %.lr.ph.epil ], [ %.sroa.010.045.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.010.045.epil, i64 1
  %i.fr = load i8, ptr %.sroa.010.045.epil, align 1, !noundef !3
  %i.fs = zext i8 %i.fr to i64
  %i.ft = xor i64 %.sroa.01.046.epil, %i.fs
  %i.fu = mul i64 %i.ft, 1099511628211            ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !2002

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.v
  %.sroa.01.0.lcssa = phi i64 [ -3750763034362895579, %bb.v ], [ %i.fp, %._crit_edge.loopexit.unr-lcssa ], [ %i.fu, %.lr.ph.epil ] ; 3 uses
  %i.fv = uitofp i64 %.sroa.01.0.lcssa to double
  %i.fw = fmul nnan double %i.fv, f0x3BF0000000000000
  %i.fx = fptrunc double %i.fw to float
  %i.fy = mul i64 %.sroa.01.0.lcssa, 1099511628211
  %i.fz = mul i64 %.sroa.01.0.lcssa, 956575116354345
  %i.ga = insertelement <2 x i64> poison, i64 %i.fy, i64 0
  %i.gb = insertelement <2 x i64> %i.ga, i64 %i.fz, i64 1
  %i.gc = uitofp <2 x i64> %i.gb to <2 x double>
  %i.gd = fmul nnan <2 x double> %i.gc, splat (double f0x3BF0000000000000)
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float>
  br label %_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5color8namehashINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3rev3RevNtNtNtB12_3str4iter5BytesEECsdNJZa1e9V4g_13lance_testing.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge4flowINtNtCscI6d9CVNmLh_4core6option6OptionReEINtNtNtNtBU_4iter8adapters5chain5ChainINtNtNtB1B_7sources4once4OnceB1r_EINtNtNtBU_3str4iter5SplitcEEECsdNJZa1e9V4g_13lance_testing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality {
_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [120 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !2025
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  store i64 0, ptr %i.g, align 8, !alias.scope !2026, !noalias !2024
  %.sroa.4.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.h = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f), !noalias !2027 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 3 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i59, align 8, !alias.scope !2027, !noalias !2028
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i60, align 8, !alias.scope !2027, !noalias !2028
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = trunc nuw i64 %3 to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not511 = icmp eq ptr %i.i, null
  br i1 %.not511, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69._crit_edge, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit73

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69._crit_edge: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit73: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69
  %.sroa.08.03 = phi i64 [ %i.u, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69 ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit ] ; 2 uses
  %.pr212 = phi ptr [ %i.q, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69 ], [ %i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit ]
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i60, align 8
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.pr212, ptr %i.e, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.k, align 8
  store i64 %.sroa.08.03, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  %i.p = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.f), !noalias !2029 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx.i60, align 8, !alias.scope !2029, !noalias !2030
  %.not53 = icmp ne ptr %i.q, null
  %or.cond = and i1 %.not53, %i.m                 ; 2 uses
  %.sroa.3.0 = select i1 %or.cond, i64 0, i64 %4
  %.sroa.016.0 = select i1 %or.cond, i64 1, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.n, align 8
  store i64 %.sroa.016.0, ptr %i.d, align 8
  store i64 %.sroa.3.0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge5FrameNtBP_9FrameTimeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.d)
  %i.s = load i64, ptr %i.c, align 8, !range !28, !noundef !3
  %.not54 = icmp eq i64 %i.s, -1
  br i1 %.not54, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69, label %bb.a, !prof !13

bb.a:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.t, ptr %i.a, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #38
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = add i64 %.sroa.08.03, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not51 = icmp eq ptr %i.q, null
  br i1 %.not51, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit69._crit_edge, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit73
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge4flowINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtNtBW_7sources4once4OnceReEINtNtNtBY_3str4iter5SplitcEEBP_ECsdNJZa1e9V4g_13lance_testing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [128 x i8], align 8               ; 8 uses
  %i.j = alloca [120 x i8], align 8               ; 7 uses
  %i.k = alloca [120 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.k, ptr noundef nonnull readonly align 8 dereferenceable(96) %3, i64 96, i1 false), !alias.scope !2053
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 3 uses
  store i64 0, ptr %i.l, align 8, !alias.scope !2054, !noalias !2052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(96) %2, i64 96, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 4 uses
  store i64 0, ptr %i.m, align 8
  %.sroa.0.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 2 uses
  %.sroa.4.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %.sroa.5.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 5 uses
  %i.n = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.j) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0        ; 3 uses
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  store i64 1, ptr %i.m, align 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.p, ptr %.sroa.0.0.i.sroa.gep, align 8
  %.not96 = icmp eq ptr %i.o, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2055)
  %i.q = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.k), !noalias !2055 ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i60, align 8, !alias.scope !2055, !noalias !2056
  %.not4697 = icmp eq ptr %i.r, null
  %brmerge98 = select i1 %.not4697, i1 true, i1 %.not96
  br i1 %brmerge98, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62
  %i.t = phi ptr [ %i.bn, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62 ], [ %i.r, %bb.a ] ; 3 uses
  %i.u = phi ptr [ %i.bk, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62 ], [ %i.o, %bb.a ]
  %.sroa.0.099 = phi i64 [ %i.bi, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62 ], [ 0, %bb.a ] ; 3 uses
  %..val57 = load i64, ptr %.sroa.0.0.i.sroa.gep, align 8, !noundef !3 ; 2 uses
  %.val58 = load i64, ptr %.sroa.5.0..sroa_idx.i60, align 8, !noundef !3
  %i.v = icmp eq i64 %..val57, %.val58
  br i1 %i.v, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %.lr.ph
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.u, ptr nonnull readonly %i.t, i64 %..val57), !alias.scope !2057
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread

_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread: ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit, %.lr.ph, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.0.099, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit ], [ %.sroa.0.099, %.lr.ph ], [ %i.bi, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62 ] ; 2 uses
  %.lcssa = phi ptr [ %i.r, %bb.a ], [ %i.t, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit ], [ %i.t, %.lr.ph ], [ %i.bn, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62 ] ; 3 uses
  store ptr %.lcssa, ptr %.sroa.4.0..sroa_idx.i59, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.j, i64 120, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.x, align 8, !alias.scope !2058, !noalias !2059
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2058, !noalias !2059
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2058, !noalias !2059
  store i64 0, ptr %i.x, align 8, !alias.scope !2058, !noalias !2059
  %i.ae = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = insertvalue { ptr, i64 } poison, ptr %.sroa.4.0.copyload.i.i, 0
  %i.ag = insertvalue { ptr, i64 } %i.af, i64 %.sroa.5.0.copyload.i.i, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ah = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.i), !noalias !2059
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %bb.d, %bb.c
  %.merged.i.i = phi { ptr, i64 } [ %i.ag, %bb.c ], [ %i.ah, %bb.d ] ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i
  %i.aj = extractvalue { ptr, i64 } %.merged.i.i, 1
  %i.ak = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2060, !noalias !2059, !noundef !3 ; 2 uses
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2060, !noalias !2059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.am = add i64 %i.ak, %.sroa.0.0.lcssa
  store ptr %i.ai, ptr %i.h, align 8
  store i64 %i.aj, ptr %i.y, align 8
  store i64 %i.am, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge5FrameNtBQ_9FrameTimeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6removeBO_ECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  %i.an = load i64, ptr %i.g, align 8, !range !28, !noundef !3 ; 2 uses
  %.not55 = icmp eq i64 %i.an, -1
  br i1 %.not55, label %bb.j, label %bb.h, !prof !9

bb.f:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aq = trunc nuw i64 %5 to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.not51105 = icmp eq ptr %.lcssa, null
  br i1 %.not51105, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70._crit_edge, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit74

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70._crit_edge: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit74: ; preds = %bb.f, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70
  %.sroa.08.0107 = phi i64 [ %i.az, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70 ], [ 0, %bb.f ] ; 2 uses
  %.pr84106 = phi ptr [ %i.av, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70 ], [ %.lcssa, %bb.f ]
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i60, align 8
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.at = add i64 %.sroa.08.0107, %.sroa.0.0.lcssa
  store ptr %.pr84106, ptr %i.f, align 8
  store i64 %.sroa.5.0.copyload, ptr %i.ao, align 8
  store i64 %i.at, ptr %i.ap, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.au = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.k), !noalias !2061 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 3 uses
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx.i60, align 8, !alias.scope !2061, !noalias !2062
  %.not53 = icmp ne ptr %i.av, null
  %or.cond = and i1 %.not53, %i.aq                ; 2 uses
  %.sroa.3.0 = select i1 %or.cond, i64 0, i64 %6
  %.sroa.016.0 = select i1 %or.cond, i64 1, i64 %5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %4, ptr %i.ar, align 8
  store i64 %.sroa.016.0, ptr %i.e, align 8
  store i64 %.sroa.3.0, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge5FrameNtBP_9FrameTimeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.e)
  %i.ax = load i64, ptr %i.d, align 8, !range !28, !noundef !3
  %.not54 = icmp eq i64 %i.ax, -1
  br i1 %.not54, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70, label %bb.g, !prof !13

bb.g:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ay, ptr %i.b, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @125, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #38
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.az = add i64 %.sroa.08.0107, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not51 = icmp eq ptr %i.av, null
  br i1 %.not51, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit70._crit_edge, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit74

bb.h:                                             ; preds = %bb.e
  %i.ba = load i64, ptr %i.aa, align 8, !noundef !3
  %i.bb = load i64, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2063)
  %i.bc = load i64, ptr %i.ac, align 8, !alias.scope !2063, !noalias !2064, !noundef !3 ; 3 uses
  %i.bd = load i64, ptr %1, align 8, !range !14, !alias.scope !2063, !noalias !2064, !noundef !3
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8grow_oneCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2064
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.h, %bb.i
  %i.bf = load ptr, ptr %i.ad, align 8, !alias.scope !2063, !noalias !2064, !nonnull !3, !noundef !3
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %i.bc ; 5 uses
  store i64 %i.an, ptr %i.bg, align 8, !noalias !2063
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bb, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2063
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.576.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.ba, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2063
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store i64 %4, ptr %.sroa.777.0..sroa_idx, align 8, !noalias !2063
  %i.bh = add i64 %i.bc, 1
  store i64 %i.bh, ptr %i.ac, align 8, !alias.scope !2063, !noalias !2064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCs4PgLcKbjAJM_7inferno10flamegraph5mergeNtB2_5FrameNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #38
  unreachable

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_5chain5ChainINtNtNtB1m_7sources4once4OnceBM_EINtNtNtB5_3str4iter5SplitcEEE4peek0ECsdNJZa1e9V4g_13lance_testing.exit62: ; preds = %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit
  store i64 0, ptr %i.m, align 8
  store i64 0, ptr %i.l, align 8
  %i.bi = add i64 %.sroa.0.099, 1                 ; 2 uses
  %i.bj = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.j) ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0      ; 3 uses
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  store i64 1, ptr %i.m, align 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.bl, ptr %.sroa.0.0.i.sroa.gep, align 8
  %.not = icmp eq ptr %i.bk, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  %i.bm = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.k), !noalias !2065 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0      ; 3 uses
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx.i60, align 8, !alias.scope !2065, !noalias !2056
  %.not46 = icmp eq ptr %i.bn, null
  %brmerge = select i1 %.not46, i1 true, i1 %.not
  br i1 %brmerge, label %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge4flowINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain5ChainINtNtNtBW_7sources4once4OnceReEINtNtNtBY_3str4iter5SplitcEEINtNtBY_6option6OptionB29_EECsdNJZa1e9V4g_13lance_testing(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(96) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [128 x i8], align 8               ; 8 uses
  %i.e = alloca [120 x i8], align 8               ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(96) %2, i64 96, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  store i64 0, ptr %i.f, align 8
  %.sroa.0.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store i64 1, ptr %i.f, align 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8
  store i64 %i.i, ptr %.sroa.0.0.i.sroa.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.a

bb.a:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit, %_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsReNtB7_9PartialEq2eqCsdNJZa1e9V4g_13lance_testing.exit.thread
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.j, align 8, !alias.scope !2074, !noalias !2075
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2074, !noalias !2075
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2074, !noalias !2075
  store i64 0, ptr %i.j, align 8, !alias.scope !2074, !noalias !2075
  %i.q = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = insertvalue { ptr, i64 } poison, ptr %.sroa.4.0.copyload.i.i, 0
  %i.s = insertvalue { ptr, i64 } %i.r, i64 %.sroa.5.0.copyload.i.i, 1
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i

bb.c:                                             ; preds = %bb.a
  %i.t = call fastcc { ptr, i64 } @_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters5chainINtB4_5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.d), !noalias !2075
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i

_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i: ; preds = %bb.c, %bb.b
  %.merged.i.i = phi { ptr, i64 } [ %i.s, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.split26.us, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i
  %i.v = extractvalue { ptr, i64 } %.merged.i.i, 1
  %i.w = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2076, !noalias !2075, !noundef !3 ; 2 uses
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2076, !noalias !2075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  store i64 %i.v, ptr %i.k, align 8
  store i64 %i.w, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge5FrameNtBQ_9FrameTimeNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6removeBO_ECsdNJZa1e9V4g_13lance_testing(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.y = load i64, ptr %i.b, align 8, !range !28, !noundef !3 ; 2 uses
  %.not55 = icmp eq i64 %i.y, -1
  br i1 %.not55, label %bb.g, label %bb.e, !prof !9

.split26.us:                                      ; preds = %_RNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_5chain5ChainINtNtNtB8_7sources4once4OnceReEINtNtNtBa_3str4iter5SplitcEEENtNtNtB8_6traits8iterator8Iterator4nextCsdNJZa1e9V4g_13lance_testing.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.z = load i64, ptr %i.m, align 8, !noundef !3
  %i.aa = load i64, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.ab = load i64, ptr %i.o, align 8, !alias.scope !2077, !noalias !2078, !noundef !3 ; 3 uses
  %i.ac = load i64, ptr %1, align 8, !range !14, !alias.scope !2077, !noalias !2078, !noundef !3
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.f, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8grow_oneCsdNJZa1e9V4g_13lance_testing(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2078
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameE8push_mutCsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.e, %bb.f
  %i.ae = load ptr, ptr %i.p, align 8, !alias.scope !2077, !noalias !2078, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.ab ; 5 uses
  store i64 %i.y, ptr %i.af, align 8, !noalias !2077
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2077
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2077
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i64 %3, ptr %.sroa.73.0..sroa_idx, align 8, !noalias !2077
  %i.ag = add i64 %i.ab, 1
  store i64 %i.ag, ptr %i.o, align 8, !alias.scope !2077, !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.a

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtNtCs4PgLcKbjAJM_7inferno10flamegraph5mergeNtB2_5FrameNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge6framesINtNtCs40k4W9msRzi_5alloc3vec3VecReEECsdNJZa1e9V4g_13lance_testing(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 16 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 17 uses
  %i.d = alloca [16 x i8], align 8                ; 15 uses
  %i.e = alloca [1 x i8], align 1                 ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !6, !noalias !2106, !noundef !3
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdNJZa1e9V4g_13lance_testing.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdNJZa1e9V4g_13lance_testing.exit.i.i, !prof !13

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdNJZa1e9V4g_13lance_testing.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.h, align 8, !noalias !2107
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !2107
  br label %bb.d

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdNJZa1e9V4g_13lance_testing.exit.i.i: ; preds = %bb.a
  %i.l = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc unwind label %bb.ad    ; 2 uses

.noexc:                                           ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdNJZa1e9V4g_13lance_testing.exit.i.i
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !2108
  store i8 1, ptr %i.i, align 8, !noalias !2108
  br label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterReEECsdNJZa1e9V4g_13lance_testing.exit: ; preds = %bb.k, %.loopexit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %lpad.phi, %.loopexit ], [ %lpad.phi, %bb.k ]
  %.val86 = load i64, ptr %i.f, align 8           ; 2 uses
  %i.p = icmp eq i64 %.val86, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameEECsdNJZa1e9V4g_13lance_testing.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterReEECsdNJZa1e9V4g_13lance_testing.exit
  %.val87 = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.q = mul nuw i64 %.val86, 56
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val87, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4PgLcKbjAJM_7inferno10flamegraph5merge10TimedFrameEECsdNJZa1e9V4g_13lance_testing.exit

bb.c:                                             ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterReEECsdNJZa1e9V4g_13lance_testing.exit

bb.d:                                             ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdNJZa1e9V4g_13lance_testing.exit_crit_edge.i.i, %.noexc
  %.pre-phi295 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdNJZa1e9V4g_13lance_testing.exit_crit_edge.i.i ], [ %i.n, %.noexc ]
  %i.s = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdNJZa1e9V4g_13lance_testing.exit_crit_edge.i.i ], [ %i.m, %.noexc ] ; 2 uses
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.h, align 8, !noalias !2107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.s, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.pre-phi295, ptr %.sroa.551.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.e, align 1
  %.sroa.0111.0.copyload = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx112, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5113.0.copyload = load i64, ptr %.sroa.5113.0..sroa_idx, align 8 ; 3 uses
  %i.w = icmp ult i64 %.sroa.5113.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.w)
  %.idx = shl nuw nsw i64 %.sroa.5113.0.copyload, 4
end_hunk_0

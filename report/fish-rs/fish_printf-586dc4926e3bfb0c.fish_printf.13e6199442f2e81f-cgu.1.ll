Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_printf-586dc4926e3bfb0c.fish_printf.13e6199442f2e81f-cgu.1?download=true
inline.NumInlined: 102
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString10advance_by:bb.a
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString12take_literal(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c ; 8 uses
  br label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i: ; preds = %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, %bb.a
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.an, %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.ar, %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i ] ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.e, align 1, !noalias !86, !noundef !4 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i: ; preds = %bb.b
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !86, !noundef !4
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.d
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !86, !noundef !4
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i, label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.d
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !86, !noundef !4
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i ], [ %i.f, %bb.c ]
  %spec.select.i.ph.i.i.i = phi i32 [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i ], [ %i.s, %bb.c ] ; 4 uses
  %.not.i9.i.i.i = icmp eq i32 %spec.select.i.ph.i.i.i, 37
  br i1 %.not.i9.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 128
  br i1 %i.ao, label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 2048
  br i1 %i.ap, label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp samesign ult i32 %spec.select.i.ph.i.i.i, 65536
  %..i.i.i.i.i.i.i = select i1 %i.aq, i64 3, i64 4
  br label %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i

_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i.i.i.i, %bb.g ], [ 1, %bb.e ]
  %i.ar = add i64 %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.01.0.i.i.i ; 2 uses
  %i.as = icmp ult i64 %i.ar, %.sroa.01.0.i.i.i
  br i1 %i.as, label %bb.h, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i

bb.h:                                             ; preds = %_RNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB7_12FormatString12take_literals_0B9_.exit.i.i.i.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18, !noalias !87
  unreachable

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literal0NCINvMB2a_B27_10wrap_mut_2jcNCINvNtBc_3map8map_foldcjjNCB2S_s_0NCINvXsK_NtB1m_5accumjNtB5p_3Sum3sumINtB4M_3MapIB10_NtNtNtBg_3str4iter5CharsB2Q_EB57_EE0E0E0E0B30_.exit.i.i.i, %bb.d
  %i.at = icmp eq i64 %.sroa.01.0.i.i.i, 0
  br i1 %i.at, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit
  %.not.i = icmp ult i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %.not.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.au = icmp eq i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %i.au, label %bb.k, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !alias.scope !88, !noundef !4
  %i.ax = icmp sgt i8 %i.aw, -65
  br i1 %i.ax, label %bb.k, label %bb.p

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literal0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvNtB8_3map8map_foldcjjNCB1B_s_0NCINvXsK_NtB33_5accumjNtB4l_3Sum3sumINtB3I_3MapBV_B43_EE0E0EB1J_.exit, %.split.i, %bb.j
  %.not.i19.i.i.i = icmp samesign eq i64 %.sroa.01.0.i.i.i, %i.c
  br i1 %.not.i19.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.cl, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.az = phi ptr [ %i.ci, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 3 uses
  %i.bb = load i8, ptr %i.az, align 1, !noalias !89, !noundef !4 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11: ; preds = %.lr.ph.i.i.i
  %i.bd = and i8 %i.bb, 31
  %i.be = zext nneg i8 %i.bd to i32               ; 3 uses
  %i.bf = icmp ne ptr %i.ba, %i.d
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 3 uses
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !89, !noundef !4
  %i.bi = shl nuw nsw i32 %i.be, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11
  %i.bo = icmp ne ptr %i.bg, %i.d
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.az, i64 3 ; 3 uses
  %i.bq = load i8, ptr %i.bg, align 1, !noalias !89, !noundef !4
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.be, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i16, label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i16: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15
  %i.by = icmp ne ptr %i.bp, %i.d
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.ca = load i8, ptr %i.bp, align 1, !noalias !89, !noundef !4
  %i.cb = shl nuw nsw i32 %i.be, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i16, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15, %bb.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11
  %i.ci = phi ptr [ %i.bp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15 ], [ %i.bz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i16 ], [ %i.bg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11 ], [ %i.ba, %bb.l ] ; 2 uses
  %spec.select.i.ph.i.i.i12 = phi i32 [ %i.bw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i.i.i.i.i15 ], [ %i.ch, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i.i.i.i.i16 ], [ %i.bl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i.i.i.i.i11 ], [ %i.bn, %bb.l ]
  %i.cj = icmp eq i32 %spec.select.i.ph.i.i.i12, 37
  br i1 %i.cj, label %bb.n, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp eq i64 %.sroa.01.020.i.i.i, -1
  br i1 %i.ck, label %bb.o, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18, !noalias !90
  unreachable

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i: ; preds = %bb.n
  %i.cl = add nuw i64 %.sroa.01.020.i.i.i, 1      ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.ci, %i.d
  br i1 %.not.i.i.i.i14, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit, label %.lr.ph.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit: ; preds = %bb.m, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i, %bb.k
  %.sroa.0.1.i.i13 = phi i64 [ 0, %bb.k ], [ %i.cl, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB2Y_12FormatString12take_literals0_0NCINvMB2a_B27_10wrap_mut_2jcNCNvYIB10_NtNtNtBg_3str4iter5CharsB2Q_EB1i_5count0E0E0B30_.exit.i.i.i ], [ %.sroa.01.020.i.i.i, %bb.m ] ; 2 uses
  %i.cm = lshr i64 %.sroa.0.1.i.i13, 1            ; 4 uses
  %i.cn = and i64 %.sroa.0.1.i.i13, -2
  %i.co = add i64 %i.cn, %.sroa.01.0.i.i.i        ; 12 uses
  %i.cp = icmp ult i64 %i.co, %.sroa.01.0.i.i.i
  br i1 %i.cp, label %bb.t, label %bb.q

bb.p:                                             ; preds = %bb.j, %.split.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef %.sroa.01.0.i.i.i, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18
  unreachable

bb.q:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit
  %i.cq = icmp eq i64 %i.co, 0
  br i1 %i.cq, label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i17 = icmp ult i64 %i.co, %i.c
  br i1 %.not.i17, label %bb.s, label %.split3.i

.split3.i:                                        ; preds = %bb.r
  %i.cr = icmp eq i64 %i.co, %i.c
  br i1 %i.cr, label %.split.i18, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !91, !noalias !92, !noundef !4
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %.split.i18, label %bb.u

.split.i18:                                       ; preds = %bb.s, %.split3.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  %i.cw = sub i64 %i.c, %i.co
  br label %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtBc_3str4iter5CharsNCNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB1H_12FormatString12take_literals0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B32_5count0EB1J_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18
  unreachable

_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit: ; preds = %.split.i18, %bb.q
  %.sroa.7.0 = phi ptr [ %i.a, %bb.q ], [ %i.cv, %.split.i18 ]
  %.sroa.9.0 = phi i64 [ %i.c, %bb.q ], [ %i.cw, %.split.i18 ]
  store ptr %.sroa.7.0, ptr %0, align 8, !captures !8
  store i64 %.sroa.9.0, ptr %i.b, align 8
  %i.cx = sub nuw i64 %i.co, %i.cm                ; 3 uses
  %i.cy = icmp ult i64 %i.co, %i.cm
  br i1 %i.cy, label %bb.x, label %bb.v

bb.u:                                             ; preds = %bb.s, %.split3.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef 0, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18
  unreachable

bb.v:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit
  %i.cz = icmp ne i64 %i.co, %i.cm
  %.not.i19 = icmp ne i64 %i.cm, 0
  %or.cond = and i1 %i.cz, %.not.i19
  br i1 %or.cond, label %bb.w, label %.split.i20

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !93, !noundef !4
  %i.dc = icmp sgt i8 %i.db, -65
  br i1 %i.dc, label %.split.i20, label %bb.y

bb.x:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #18
  unreachable

.split.i20:                                       ; preds = %bb.w, %bb.v
  %i.dd = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.de = insertvalue { ptr, i64 } %i.dd, i64 %i.cx, 1
  ret { ptr, i64 } %i.de

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.co, i64 noundef 0, i64 noundef %i.cx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #18
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef range(i32 -1, 1114112) i32 @_RNvXs1_NtCs1HV6ixfL8cZ_11fish_printf11printf_implReNtB5_12FormatString2at(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c     ; 8 uses
  %i.e = icmp ugt i64 %1, 31
  br i1 %i.e, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %bb.a
  %.idx.i = and i64 %i.c, -32                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %i.g = icmp eq i64 %1, 32
  %i.h = icmp samesign eq i64 %.idx.i, 0
  %or.cond40.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond40.i, label %._crit_edge.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i

.loopexit.i:                                      ; preds = %bb.c, %.lr.ph49.i, %bb.a
  %.sroa.0.0 = phi ptr [ %i.a, %bb.a ], [ %.sroa.0.2, %.lr.ph49.i ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.1.lcssa.i, %.lr.ph49.i ], [ %.sroa.0.1.lcssa.i, %bb.c ] ; 2 uses
  %.not2952.i = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not2952.i, label %.loopexit, label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %._crit_edge.i, %.loopexit.i
  %.sroa.0.0.i12 = phi i64 [ %.sroa.0.0.i, %.loopexit.i ], [ %.sroa.0.1.lcssa.i, %._crit_edge.i ]
  %.sroa.0.011 = phi ptr [ %.sroa.0.0, %.loopexit.i ], [ %i.j, %._crit_edge.i ]
  %i.i = ptrtoint ptr %i.d to i64
  br label %bb.d

._crit_edge.i:                                    ; preds = %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i, %bb.b
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.l, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i ] ; 3 uses
  %.sroa.0.1.lcssa.i = phi i64 [ %1, %bb.b ], [ %op.rdx, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.07.0.lcssa.i ; 2 uses
  %.not.i = icmp ule i64 %.sroa.07.0.lcssa.i, %i.c
  tail call void @llvm.assume(i1 %.not.i)
  %.not2747.i = icmp samesign eq i64 %i.c, %.sroa.07.0.lcssa.i
  br i1 %.not2747.i, label %.lr.ph55.i, label %.lr.ph49.i

_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i: ; preds = %bb.b, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i
  %.sroa.0.143.i = phi i64 [ %op.rdx, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i ], [ %1, %bb.b ]
  %.sroa.06.042.i = phi ptr [ %i.k, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.07.041.i = phi i64 [ %i.l, %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i ], [ 0, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.042.i, i64 32 ; 2 uses
  %i.l = add i64 %.sroa.07.041.i, 32              ; 2 uses
  %i.m = load <32 x i8>, ptr %.sroa.06.042.i, align 1, !noalias !98
  %i.n = icmp sgt <32 x i8> %i.m, splat (i8 -65)
  %i.o = bitcast <32 x i1> %i.n to i32
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.q = zext nneg i32 %i.p to i64
  %op.rdx = sub i64 %.sroa.0.143.i, %i.q          ; 3 uses
  %i.r = icmp ult i64 %op.rdx, 33
  %i.s = icmp eq ptr %i.k, %i.f
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i, label %._crit_edge.i, label %_RINvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB6_8IntoIterbKj20_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldhNCINvNtNtB16_8adapters3map8map_foldbhhNCNvXNtNtBa_3str4iterNtB2s_5CharsB10_10advance_by0NCINvXsq_NtB14_5accumhNtB3k_3Sum3sumINtB1Q_3MapBE_B2n_EE0E0ECs1HV6ixfL8cZ_11fish_printf.exit.i

.lr.ph49.i:                                       ; preds = %._crit_edge.i, %bb.c
  %.sroa.0.2 = phi ptr [ %i.v, %bb.c ], [ %i.j, %._crit_edge.i ] ; 3 uses
  %i.t = load i8, ptr %.sroa.0.2, align 1, !noalias !98, !noundef !4
  %i.u = icmp slt i8 %i.t, -64
  br i1 %i.u, label %bb.c, label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph49.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 1 ; 2 uses
  %.not27.i = icmp eq ptr %i.d, %i.v
  br i1 %.not27.i, label %.loopexit.i, label %.lr.ph49.i

bb.d:                                             ; preds = %bb.e, %.lr.ph55.i
  %.sroa.0.17 = phi ptr [ %.sroa.0.011, %.lr.ph55.i ], [ %i.ae, %bb.e ] ; 4 uses
  %.sroa.0.253.i = phi i64 [ %.sroa.0.0.i12, %.lr.ph55.i ], [ %i.y, %bb.e ]
  %.not30.i = icmp eq ptr %i.d, %.sroa.0.17
  br i1 %.not30.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %.sroa.0.17 to i64
  %i.x = sub nuw i64 %i.i, %i.w
  %i.y = add i64 %.sroa.0.253.i, -1               ; 2 uses
  %i.z = load i8, ptr %.sroa.0.17, align 1, !noalias !98, !noundef !4
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @9, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !98, !noundef !4
  %i.ad = zext i8 %i.ac to i64                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.17, i64 %i.ad ; 2 uses
  %.not32.i = icmp uge i64 %i.x, %i.ad
  tail call void @llvm.assume(i1 %.not32.i)
  %.not29.i = icmp eq i64 %i.y, 0
  br i1 %.not29.i, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.e, %.loopexit.i
  %.sroa.0.3.ph = phi ptr [ %.sroa.0.0, %.loopexit.i ], [ %i.ae, %bb.e ] ; 5 uses
  %.not = icmp eq ptr %.sroa.0.3.ph, %i.d
  br i1 %.not, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.af = load i8, ptr %.sroa.0.3.ph, align 1, !noalias !99, !noundef !4 ; 5 uses
  %i.ag = icmp sgt i8 %i.af, -1
  br i1 %i.ag, label %bb.g, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.3.ph, i64 1 ; 2 uses
  %i.ai = and i8 %i.af, 31
  %i.aj = zext nneg i8 %i.ai to i32               ; 3 uses
  %i.ak = icmp ne ptr %i.ah, %i.d
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ah, align 1, !noalias !99, !noundef !4
  %i.am = shl nuw nsw i32 %i.aj, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32               ; 2 uses
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = icmp samesign ugt i8 %i.af, -33
  br i1 %i.aq, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = zext nneg i8 %i.af to i32
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.3.ph, i64 2 ; 2 uses
  %i.at = icmp ne ptr %i.as, %i.d
  tail call void @llvm.assume(i1 %i.at)
  %i.au = load i8, ptr %i.as, align 1, !noalias !99, !noundef !4
  %i.av = shl nuw nsw i32 %i.ao, 6
  %i.aw = and i8 %i.au, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax            ; 2 uses
  %i.az = shl nuw nsw i32 %i.aj, 12
  %i.ba = or disjoint i32 %i.ay, %i.az
  %i.bb = icmp samesign ugt i8 %i.af, -17
  br i1 %i.bb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.3.ph, i64 3 ; 2 uses
  %i.bd = icmp ne ptr %i.bc, %i.d
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bc, align 1, !noalias !99, !noundef !4
  %i.bf = shl nuw nsw i32 %i.aj, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.ay, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit

_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator10advance_by.exit: ; preds = %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i, %bb.g, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i, %.loopexit
  %.sroa.0.1 = phi i32 [ -1, %.loopexit ], [ %i.ar, %bb.g ], [ %i.ap, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit12.i ], [ %i.bl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit16.i ], [ %i.ba, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1HV6ixfL8cZ_11fish_printf.exit14.i ], [ -1, %bb.d ]
  ret i32 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRmNtB6_5Debug3fmtCs1HV6ixfL8cZ_11fish_printf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !103, !noalias !104, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCs3oUPovFnLWP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
end_hunk_0

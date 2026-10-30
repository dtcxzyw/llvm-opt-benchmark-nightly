Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_fluent-00438254a5c347c5.fish_fluent.2fecca2cb517425c-cgu.3?download=true
inline.NumInlined: 223
inline.NumDeleted: 128
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs476pBYQK2Ku_11fish_fluent:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.d, align 1, !alias.scope !197, !noalias !198
  %wide.load6 = load <2 x i64>, ptr %i.f, align 1, !alias.scope !197, !noalias !198
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load7 = load <2 x i64>, ptr %i.e, align 1, !alias.scope !199
  %wide.load8 = load <2 x i64>, ptr %i.g, align 1, !alias.scope !199
  store <2 x i64> %wide.load7, ptr %i.d, align 1, !alias.scope !197, !noalias !198
  store <2 x i64> %wide.load8, ptr %i.f, align 1, !alias.scope !197, !noalias !198
  store <2 x i64> %wide.load, ptr %i.e, align 1, !alias.scope !199
  store <2 x i64> %wide.load6, ptr %i.g, align 1, !alias.scope !199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %.sroa.0.04.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.04.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.i = or disjoint i64 %.sroa.0.04.ph, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04.ph ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.sroa.0.0.copyload.i.prol = load i64, ptr %i.j, align 1, !alias.scope !195
  %.sroa.02.0.copyload.i.prol = load i64, ptr %i.k, align 1, !alias.scope !196
  store i64 %.sroa.02.0.copyload.i.prol, ptr %i.j, align 1, !alias.scope !195
  store i64 %.sroa.0.0.copyload.i.prol, ptr %i.k, align 1, !alias.scope !196
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.04.unr = phi i64 [ %.sroa.0.04.ph, %scalar.ph.preheader ], [ %i.i, %scalar.ph.prol ]
  %i.l = icmp eq i64 %2, %.neg
  br i1 %i.l, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.0.04 = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.0.04.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.m = add nuw i64 %.sroa.0.04, 1               ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.04 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.0.04 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 1, !alias.scope !195
  %.sroa.02.0.copyload.i = load i64, ptr %i.o, align 1, !alias.scope !196
  store i64 %.sroa.02.0.copyload.i, ptr %i.n, align 1, !alias.scope !195
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1, !alias.scope !196
  %i.p = add nuw i64 %.sroa.0.04, 2               ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %.sroa.0.0.copyload.i.1 = load i64, ptr %i.q, align 1, !alias.scope !202
  %.sroa.02.0.copyload.i.1 = load i64, ptr %i.r, align 1, !alias.scope !203
  store i64 %.sroa.02.0.copyload.i.1, ptr %i.q, align 1, !alias.scope !202
  store i64 %.sroa.0.0.copyload.i.1, ptr %i.r, align 1, !alias.scope !203
  %exitcond.not.1 = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !194
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB5_10FluentArgsINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorTReNtNtB7_5types11FluentValueEE9from_iterINtNtNtB13_8adapters3map3MapINtNtNtB15_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentB1X_EENCNvMNtNtB7_8resolver5scopeINtB4w_5ScopeNtNtB7_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0EECs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 9 uses
  %i.b = alloca [120 x i8], align 8               ; 5 uses
  %i.c = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.9 = alloca [112 x i8], align 8           ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.0.0.copyload5 = load ptr, ptr %1, align 8, !alias.scope !245, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8, !alias.scope !245, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload10 = load i64, ptr %.sroa.6.0..sroa_idx9, align 8, !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = ptrtoint ptr %.sroa.5.0.copyload8 to i64
  %i.f = ptrtoint ptr %.sroa.0.0.copyload5 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 96
  call void @_RNvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB2_10FluentArgs13with_capacity(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.h)
  %i.i = icmp eq ptr %.sroa.0.0.copyload5, %.sroa.5.0.copyload8
  br i1 %i.i, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = inttoptr i64 %.sroa.6.0.copyload10 to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.724.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit
  %.sroa.015.070 = phi ptr [ %.sroa.0.0.copyload5, %.lr.ph ], [ %i.p, %_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.015.070, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !246
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.070, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !248, !noalias !246, !nonnull !4, !noundef !4 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.070, i64 88
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !248, !noalias !246, !noundef !4 ; 8 uses
  invoke void @_RINvXs_NtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver17inline_expressionINtNtCscScUiD58tfT_13fluent_syntax3ast16InlineExpressionReENtB7_12ResolveValue7resolveNtNtB9_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.015.070, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j)
          to label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.o, %bb.t, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.bh, %bb.t ], [ %eh.lpad-body.i, %bb.l ], [ %i.ba, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle4args10FluentArgsECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #23
          to label %bb.y unwind label %bb.x

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b
  store ptr %i.r, ptr %i.c, align 8, !alias.scope !247, !noalias !246
  store i64 %i.t, ptr %i.l, align 8, !alias.scope !247, !noalias !246
  %.sroa.619.0.copyload = load i64, ptr %i.k, align 8, !noalias !249 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !246
  %.not = icmp eq i64 %.sroa.619.0.copyload, -1
  br i1 %.not, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.v = load ptr, ptr %i.m, align 8, !alias.scope !250, !nonnull !4, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %i.n, align 8, !alias.scope !250, !noundef !4 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  switch i64 %i.w, label %.lr.ph.i.i.i [
    i64 0, label %bb.q
    i64 1, label %._crit_edge.i.i.i
  ]

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.v, i64 %.sroa.05.0.lcssa.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %.sroa.0.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8, !alias.scope !255, !noalias !256, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %.sroa.3.0.i.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i.i, align 8, !alias.scope !255, !noalias !256, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i, i64 %i.t)
  %i.y = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i.i, ptr nonnull readonly %i.r, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !257, !noalias !258 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %.sroa.3.0.i.i.i.i.i.i, %i.t
  %spec.select.i.i.i.i.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z ; 2 uses
  %i.ac = icmp eq i64 %spec.select.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %bb.f, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.01.025.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  %.sroa.05.024.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.ad = lshr i64 %.sroa.01.025.i.i.i, 1         ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, %.sroa.05.024.i.i.i ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.w
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr %i.v, i64 %i.ae ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %.sroa.0.0.in.i.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0.i.i.i15.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i.i, align 8, !alias.scope !261, !noalias !256, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.3.0.i.i.i17.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i.i, align 8, !alias.scope !261, !noalias !256, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i.i, i64 %i.t)
  %i.ah = call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i.i, ptr nonnull readonly %i.r, i64 %spec.store.select.i.i.i.i22.i.i.i), !alias.scope !262, !noalias !263 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub i64 %.sroa.3.0.i.i.i17.i.i.i, %i.t
  %spec.select.i.i.i.i23.i.i.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = icmp sgt i64 %spec.select.i.i.i.i23.i.i.i, 0
  %i.am = select i1 %i.al, i64 %.sroa.05.024.i.i.i, i64 %i.ae, !unpredictable !4 ; 2 uses
  %i.an = sub nuw nsw i64 %.sroa.01.025.i.i.i, %i.ad ; 2 uses
  %i.ao = icmp ugt i64 %i.an, 1
  br i1 %i.ao, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %spec.select.i.i.i.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i.i.i.i, 63
  %i.ap = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i.i, %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.aq = icmp ule i64 %i.ap, %i.w
  call void @llvm.assume(i1 %i.aq)
  %2 = icmp samesign ult i64 %i.ap, %i.w
  br label %bb.q

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256
  store i64 %.sroa.619.0.copyload, ptr %i.b, align 8, !noalias !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.724.0..sroa_idx25, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9, i64 112, i1 false)
  %i.ar = icmp ult i64 %.sroa.05.0.lcssa.i.i.i, %i.w
  br i1 %i.ar, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %i.x, align 8, !range !7, !alias.scope !265, !noalias !266, !noundef !4
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.x)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit.i.i unwind label %bb.i, !noalias !266

bb.i:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(120) %i.av) #23
          to label %bb.l unwind label %bb.j, !noalias !266

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit.i.i: ; preds = %bb.h, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(120) %i.aw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent.exit.i unwind label %bb.n, !noalias !266

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !266
  unreachable

bb.k:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i.i, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
          to label %bb.m unwind label %bb.o, !noalias !266

bb.l:                                             ; preds = %bb.n, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.az, %bb.n ], [ %i.au, %bb.i ]
  store i64 -1, ptr %i.x, align 8, !noalias !266
  store ptr %i.r, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8, !noalias !266
  store i64 %i.t, ptr %.sroa.3.0.in.i.i.i.i.i.i, align 8, !noalias !266
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.sroa.619.0.copyload, ptr %i.ay, align 8, !noalias !250
  %.sroa.724.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.724.0..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9, i64 112, i1 false)
  br label %.body

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs476pBYQK2Ku_11fish_fluent.exit.i.i
  store i64 -1, ptr %i.x, align 8, !noalias !266
  store ptr %i.r, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8, !noalias !266
  store i64 %i.t, ptr %.sroa.3.0.in.i.i.i.i.i.i, align 8, !noalias !266
  store i64 %.sroa.619.0.copyload, ptr %i.aw, align 8, !noalias !250
  %.sroa.724.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.724.0..sroa_idx27, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256
  br label %_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit

bb.o:                                             ; preds = %bb.k
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(120) %i.b) #23
          to label %.body unwind label %bb.p, !noalias !266

bb.p:                                             ; preds = %bb.o
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !266
  unreachable

bb.q:                                             ; preds = %bb.e, %bb.d
  %.sroa.4.0.i.i.ph.i = phi i1 [ %2, %bb.e ], [ false, %bb.d ]
  %.sroa.4.0.i.i.ph.i.a = phi i64 [ %i.ap, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !256
  store i64 %.sroa.619.0.copyload, ptr %i.o, align 8, !noalias !264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.724.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.9, i64 112, i1 false)
  store i64 -1, ptr %i.a, align 8, !noalias !256
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !256
  store i64 %i.t, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !256
  %i.bc = icmp ult i64 %i.w, 64051194700380388
  call void @llvm.assume(i1 %i.bc)
  %i.bd = load i64, ptr %i.d, align 8, !range !8, !alias.scope !267, !noundef !4
  %i.be = icmp eq i64 %i.w, %i.bd
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE8grow_oneCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %._crit_edge.i unwind label %bb.t, !noalias !268

._crit_edge.i:                                    ; preds = %bb.r
  %.pre.i = load ptr, ptr %i.m, align 8, !alias.scope !267
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.q
  %i.bf = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.q ]
  %i.bg = getelementptr inbounds nuw [144 x i8], ptr %i.bf, i64 %.sroa.4.0.i.i.ph.i.a ; 3 uses
  br i1 %.sroa.4.0.i.i.ph.i, label %bb.u, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.a) #23
          to label %.body unwind label %bb.v, !noalias !269

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  %i.bj = sub nuw nsw i64 %i.w, %.sroa.4.0.i.i.ph.i.a
  %i.bk = mul nuw nsw i64 %i.bj, 144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bg, i64 %i.bk, i1 false), !noalias !268
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !269
  unreachable

bb.w:                                             ; preds = %bb.u, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bg, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !269
  %i.bm = add nuw nsw i64 %i.w, 1
  store i64 %i.bm, ptr %i.n, align 8, !alias.scope !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !256
  br label %_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit.thread: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit, %_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs476pBYQK2Ku_11fish_fluent.exit.i
  %i.bn = icmp eq ptr %i.p, %.sroa.5.0.copyload8
  br i1 %i.bn, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast13NamedArgumentReEENCNvMNtNtCs3zOvCg6Ax1K_13fluent_bundle8resolver5scopeINtB2m_5ScopeNtNtB2q_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_argumentss_0ENtNtNtB9_6traits8iterator8Iterator4nextCs476pBYQK2Ku_11fish_fluent.exit.thread, label %bb.b

bb.x:                                             ; preds = %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsl7C8v4LflD_16unic_langid_impl7subtags7variant7VariantE16into_boxed_sliceCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 8)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 1152921504606846976
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsl7C8v4LflD_16unic_langid_impl7subtags7variant7VariantENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsl7C8v4LflD_16unic_langid_impl7subtags7variant7VariantEECs476pBYQK2Ku_11fish_fluent.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit._crit_edge, label %bb.e, !prof !12

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs476pBYQK2Ku_11fish_fluent.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #21
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsl7C8v4LflD_16unic_langid_impl7subtags7variant7VariantEECs476pBYQK2Ku_11fish_fluent.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE8truncateCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtCslSwhfOFuxKz_17fish_localization8LanguageINtB2_10EquivalentBq_E10equivalentCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !4
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXsc_CslSwhfOFuxKz_17fish_localizationNtB5_8LanguageNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1), !alias.scope !273
  %i.d = icmp eq i32 %bcmp.i.i, 0
  br label %_RNvXsc_CslSwhfOFuxKz_17fish_localizationNtB5_8LanguageNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXsc_CslSwhfOFuxKz_17fish_localizationNtB5_8LanguageNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrowneINtB2_10EquivalentNtNtCs1xwejQucwHj_5alloc6string6StringE10equivalentCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !277
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2h_5slice4iter4IterINtNtCscScUiD58tfT_13fluent_syntax3ast16InlineExpressionReEENCNvMNtNtBY_8resolver5scopeINtB4q_5ScopeNtNtBY_8resource14FluentResourceNtNtCslLbkFNisIfk_13intl_memoizer10concurrent16IntlLangMemoizerE13get_arguments0EE9from_iterCs476pBYQK2Ku_11fish_fluent(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !288
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !287, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2.i = load ptr, ptr %i.d, align 8, !alias.scope !287, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %.val2.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 80                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !288
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120), !noalias !288
  %i.i = load i64, ptr %i.b, align 8, !range !13, !noalias !288, !noundef !4
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !16, !noalias !288, !noundef !4 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
end_hunk_0

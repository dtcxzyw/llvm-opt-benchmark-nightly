inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VeclE14extend_trustedBN_E0E0EB1J_:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, -4                       ; 4 uses
  %2 = load i64, ptr %i.b, align 8, !alias.scope !11408, !noalias !11411, !noundef !4
  %broadcast.splatinsert7 = insertelement <2 x i64> poison, i64 %2, i64 0
  %broadcast.splat8 = shufflevector <2 x i64> %broadcast.splatinsert7, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %3 = add i64 %.sroa.42.0.copyload, %n.vec       ; 2 uses
  %4 = add i64 %.sroa.0.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.sroa.0.0.copyload, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VeclE14extend_trustedBN_E0E0EB1J_:bb.a
  br i1 %cmp.n, label %._crit_edge19.i.i, label %.lr.ph.i.i.preheader10

.lr.ph.i.i.preheader10:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.i.preheader ], [ %3, %middle.block ] ; 2 uses
  %.ph11 = phi i64 [ %.sroa.0.0.copyload, %vector.memcheck ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %4, %middle.block ] ; 4 uses
  %i.r = sub i64 %.sroa.4.0.copyload, %.ph11
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2V_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VeclE14extend_trustedBN_E0E0EB1J_:bb.a
  br i1 %i.ab, label %._crit_edge19.i.i, label %.lr.ph.i.i

._crit_edge19.i.i:                                ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.sroa.5.0.i = phi i64 [ %.sroa.42.0.copyload, %.preheader.i.i ], [ %3, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bg, %.lr.ph.i.i ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 8, !noalias !11433, !noundef !4
  %i.ad = mul i64 %i.ac, %.sroa.4.0.copyload
  %i.ae = trunc i64 %i.ad to i32
end_hunk_2

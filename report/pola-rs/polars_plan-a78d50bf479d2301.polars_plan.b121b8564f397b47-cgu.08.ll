Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.08?download=true
inline.NumInlined: 7193
inline.NumDeleted: 1889
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal8duration:bb.a
.noexc38:                                         ; preds = %bb.h
  %i.cl = load i8, ptr %i.a, align 16, !dbg !144165, !range !2478, !noalias !144144, !noundef !2281
  switch i8 %i.cl, label %.thread.i.i.6.i [
    i8 12, label %.split.i.6.i
    i8 6, label %.split3.i.6.i
    i8 7, label %.split4.i.6.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i
  ], !dbg !144166

.split4.i.6.i:                                    ; preds = %.noexc38
  %i.cm = load i128, ptr %i.r, align 16, !dbg !144159, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc39 unwind label %bb.q, !dbg !144167

.noexc39:                                         ; preds = %.split4.i.6.i
  %i.cn = icmp ugt i128 %i.cm, 9223372036854775807, !dbg !144171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !144170

.split3.i.6.i:                                    ; preds = %.noexc38
  %i.co = load i64, ptr %i.s, align 8, !dbg !144160, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc40 unwind label %bb.q, !dbg !144167

.noexc40:                                         ; preds = %.split3.i.6.i
  %i.cp = icmp slt i64 %i.co, 0, !dbg !144168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %i.cp, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !144170

.split.i.6.i:                                     ; preds = %.noexc38
  %i.cq = load i128, ptr %i.r, align 16, !dbg !144172, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc41 unwind label %bb.q, !dbg !144167

.noexc41:                                         ; preds = %.split.i.6.i
  %i.cr = add i128 %i.cq, -9223372036854775808, !dbg !144173
  %spec.select.i.i.6.i = icmp ult i128 %i.cr, -18446744073709551616, !dbg !144173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %spec.select.i.i.6.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !144170

.thread.i.i.6.i:                                  ; preds = %.noexc38
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i unwind label %bb.q, !dbg !144167

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i: ; preds = %.thread.i.i.6.i, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i, !dbg !144174

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.6.i, %.noexc41, %.noexc40, %.noexc39, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.5.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1120, !dbg !144161
  %i.ct = load i64, ptr %i.cs, align 16, !dbg !144161, !range !2799, !noalias !144144, !noundef !2281 ; 2 uses
  %i.cu = icmp ne i64 %i.ct, -9223372036854775795, !dbg !144161
  call void @llvm.assume(i1 %i.cu), !dbg !144161
  %i.cv = icmp eq i64 %i.ct, -9223372036854775804, !dbg !144162
  br i1 %i.cv, label %bb.i, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !144162

bb.i:                                             ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144163, !noalias !144144
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.q)
          to label %.noexc43 unwind label %bb.q, !dbg !144164

.noexc43:                                         ; preds = %bb.i
  %i.cw = load i8, ptr %i.a, align 16, !dbg !144165, !range !2478, !noalias !144144, !noundef !2281
  switch i8 %i.cw, label %.thread.i.i.7.i [
    i8 12, label %.split.i.7.i
    i8 6, label %.split3.i.7.i
    i8 7, label %.split4.i.7.i
    i8 35, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i
  ], !dbg !144166

.split4.i.7.i:                                    ; preds = %.noexc43
  %i.cx = load i128, ptr %i.r, align 16, !dbg !144159, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc44 unwind label %bb.q, !dbg !144167

.noexc44:                                         ; preds = %.split4.i.7.i
  %i.cy = icmp ugt i128 %i.cx, 9223372036854775807, !dbg !144171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !144170

.split3.i.7.i:                                    ; preds = %.noexc43
  %i.cz = load i64, ptr %i.s, align 8, !dbg !144160, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc45 unwind label %bb.q, !dbg !144167

.noexc45:                                         ; preds = %.split3.i.7.i
  %i.da = icmp slt i64 %i.cz, 0, !dbg !144168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %i.da, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !144170

.split.i.7.i:                                     ; preds = %.noexc43
  %i.db = load i128, ptr %i.r, align 16, !dbg !144172, !noalias !144144, !noundef !2281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %.noexc46 unwind label %bb.q, !dbg !144167

.noexc46:                                         ; preds = %.split.i.7.i
  %i.dc = add i128 %i.db, -9223372036854775808, !dbg !144173
  %spec.select.i.i.7.i = icmp ult i128 %i.dc, -18446744073709551616, !dbg !144173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br i1 %spec.select.i.i.7.i, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !144170

.thread.i.i.7.i:                                  ; preds = %.noexc43
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.a)
          to label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i unwind label %bb.q, !dbg !144167

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i: ; preds = %.thread.i.i.7.i, %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144169, !noalias !144144
  br label %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, !dbg !144174

_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i: ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.sink.split.i.7.i, %.noexc46, %.noexc45, %.noexc44, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !144175, !noalias !144145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !144175, !noalias !144145
  store <8 x ptr> %i.j, ptr %i.c, align 8, !dbg !144175, !noalias !144145
  invoke void @_RINvNtCs2mZqlW55729_12polars_utils5array7try_mapRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprnKj8_NCNvMs1_NtNtBP_9functions8temporalNtB1J_12DurationArgs10as_literal0EBR_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
          to label %.noexc48 unwind label %bb.q, !dbg !144175

.noexc48:                                         ; preds = %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !144175, !noalias !144145
  %i.dd = load i128, ptr %i.g, align 16, !dbg !144175, !range !2716, !noalias !144145, !noundef !2281
  %i.de = trunc nuw i128 %i.dd to i1, !dbg !144176
  br i1 %i.de, label %bb.j, label %bb.k, !dbg !144176

bb.j:                                             ; preds = %.noexc48
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !144177
  %.sroa.01.0.copyload.i = load i128, ptr %i.df, align 16, !dbg !144177, !noalias !144145
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !144177
  %.sroa.4.0.copyload.i = load i128, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !144177
  %.sroa.5.0.copyload.i = load i128, ptr %.sroa.5.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64, !dbg !144177
  %.sroa.6.0.copyload.i = load i128, ptr %.sroa.6.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80, !dbg !144177
  %.sroa.7.0.copyload.i = load i128, ptr %.sroa.7.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !144177
  %.sroa.8.0.copyload.i = load i128, ptr %.sroa.8.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112, !dbg !144177
  %.sroa.9.0.copyload.i = load i128, ptr %.sroa.9.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !144177
  %.sroa.10.0.copyload.i = load i128, ptr %.sroa.10.0..sroa_idx.i, align 16, !dbg !144177, !noalias !144145
  %i.dg = mul i128 %.sroa.01.0.copyload.i, 604800000000000, !dbg !144178
  %i.dh = mul i128 %.sroa.4.0.copyload.i, 86400000000000, !dbg !144179
  %i.di = add i128 %i.dh, %i.dg, !dbg !144178
  %i.dj = mul i128 %.sroa.5.0.copyload.i, 3600000000000, !dbg !144180
  %i.dk = add i128 %i.di, %i.dj, !dbg !144178
  %i.dl = mul i128 %.sroa.6.0.copyload.i, 60000000000, !dbg !144181
  %i.dm = add i128 %i.dk, %i.dl, !dbg !144178
  %i.dn = mul i128 %.sroa.7.0.copyload.i, 1000000000, !dbg !144182
  %i.do = add i128 %i.dm, %i.dn, !dbg !144178
  %i.dp = mul i128 %.sroa.8.0.copyload.i, 1000000, !dbg !144183
  %i.dq = add i128 %i.do, %i.dp, !dbg !144178
  %i.dr = mul i128 %.sroa.9.0.copyload.i, 1000, !dbg !144184
  %i.ds = add i128 %i.dq, %i.dr, !dbg !144178
  %i.dt = add i128 %i.ds, %.sroa.10.0.copyload.i, !dbg !144178 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !144185
  %i.dv = load i8, ptr %i.du, align 16, !dbg !144185, !range !2513, !noalias !144145, !noundef !2281 ; 2 uses
  %extract.t.i = trunc i128 %i.dt to i64, !dbg !144186
  switch i8 %i.dv, label %default.unreachable [
    i8 1, label %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i
    i8 2, label %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i
    i8 0, label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i
  ], !dbg !144186

default.unreachable:                              ; preds = %bb.l, %bb.j
  unreachable

_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i: ; preds = %bb.j
  %i.dw = sdiv i128 %i.dt, 1000, !dbg !144187
  %extract.t45.i = trunc i128 %i.dw to i64, !dbg !144188
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !144188

_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i: ; preds = %bb.j
  %i.dx = sdiv i128 %i.dt, 1000000, !dbg !144189
  %extract.t44.i = trunc i128 %i.dx to i64, !dbg !144190
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !144190

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i, %bb.j
  %.sroa.0.0.i.off0.i = phi i64 [ %extract.t.i, %bb.j ], [ %extract.t44.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit9.i.i ], [ %extract.t45.i, %_RNvXs3f_NtNtCscgRAwXFJnXP_4core3ops5arithnNtB6_3Div3div.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !144191, !noalias !144145
  br label %bb.p, !dbg !144192

bb.k:                                             ; preds = %.noexc48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !144191, !noalias !144145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !144193, !noalias !144145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !144193, !noalias !144145
  store <8 x ptr> %i.i, ptr %i.b, align 8, !dbg !144193, !noalias !144145
  invoke void @_RINvNtCs2mZqlW55729_12polars_utils5array7try_mapRNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprdKj8_NCNvMs1_NtNtBP_9functions8temporalNtB1J_12DurationArgs10as_literals_0EBR_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %.noexc49 unwind label %bb.q, !dbg !144193

.noexc49:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !144193, !noalias !144145
  %i.dy = load i64, ptr %i.f, align 8, !dbg !144193, !range !2305, !noalias !144145, !noundef !2281
  %i.dz = trunc nuw i64 %i.dy to i1, !dbg !144194
  br i1 %i.dz, label %bb.l, label %bb.o, !dbg !144194

bb.l:                                             ; preds = %.noexc49
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !144195
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !144195
  %.sroa.76.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !144195
  %.sroa.98.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56, !dbg !144195
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64, !dbg !144195
  %i.eb = load <2 x double>, ptr %i.ea, align 8, !dbg !144195, !noalias !144145
  %i.ec = fmul <2 x double> %i.eb, <double 7.000000e+00, double 1.000000e+00>, !dbg !144196
  %i.ed = load <2 x double>, ptr %.sroa.54.0..sroa_idx.i, align 8, !dbg !144195, !noalias !144145
  %i.ee = load <2 x double>, ptr %.sroa.76.0..sroa_idx.i, align 8, !dbg !144195, !noalias !144145
  %.sroa.109.0.copyload.i = load double, ptr %.sroa.109.0..sroa_idx.i, align 8, !dbg !144195, !noalias !144145
  %i.ef = load <2 x double>, ptr %.sroa.98.0..sroa_idx.i, align 8, !dbg !144195, !noalias !144145
  %i.eg = fmul <2 x double> %i.ed, <double 3.600000e+03, double 6.000000e+01>, !dbg !144197
  %2 = shufflevector <2 x double> %i.ec, <2 x double> %i.ef, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 2, i32 poison>, !dbg !144196
  %i.eh = shufflevector <2 x double> %i.ee, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !144196
  %i.ei = shufflevector <8 x double> %2, <8 x double> %i.eh, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 8, i32 9, i32 6, i32 poison>, !dbg !144196
  %i.ej = shufflevector <2 x double> %i.eg, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, !dbg !144196
  %i.ek = shufflevector <8 x double> %i.ei, <8 x double> %i.ej, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 6, i32 poison>, !dbg !144196
  %i.el = fmul <8 x double> %i.ek, <double 8.640000e+13, double 8.640000e+13, double 1.000000e+09, double 1.000000e+09, double 1.000000e+09, double 1.000000e+06, double 1.000000e+03, double poison>, !dbg !144196 ; 7 uses
  %i.em = extractelement <8 x double> %i.el, i64 0, !dbg !144196
  %i.en = extractelement <8 x double> %i.el, i64 1, !dbg !144196
  %i.eo = fadd double %i.em, %i.en, !dbg !144196
  %i.ep = extractelement <8 x double> %i.el, i64 2, !dbg !144196
  %i.eq = fadd double %i.eo, %i.ep, !dbg !144196
  %i.er = extractelement <8 x double> %i.el, i64 3, !dbg !144196
  %i.es = fadd double %i.eq, %i.er, !dbg !144196
  %i.et = extractelement <8 x double> %i.el, i64 4, !dbg !144196
  %i.eu = fadd double %i.et, %i.es, !dbg !144196
  %i.ev = extractelement <8 x double> %i.el, i64 5, !dbg !144196
  %i.ew = fadd double %i.ev, %i.eu, !dbg !144196
  %i.ex = extractelement <8 x double> %i.el, i64 6, !dbg !144196
  %i.ey = fadd double %i.ex, %i.ew, !dbg !144196
  %i.ez = fadd double %.sroa.109.0.copyload.i, %i.ey, !dbg !144196 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !144198
  %i.fb = load i8, ptr %i.fa, align 16, !dbg !144198, !range !2513, !noalias !144145, !noundef !2281 ; 2 uses
  switch i8 %i.fb, label %default.unreachable [
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 0, label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i
  ], !dbg !144199

bb.m:                                             ; preds = %bb.l
  %i.fc = fdiv double %i.ez, 1.000000e+03, !dbg !144200
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !144201

bb.n:                                             ; preds = %bb.l
  %i.fd = fdiv double %i.ez, 1.000000e+06, !dbg !144202
  br label %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !144203

_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i31.i = phi double [ %i.ez, %bb.l ], [ %i.fd, %bb.n ], [ %i.fc, %bb.m ], !dbg !144204
  %i.fe = call i64 @llvm.fptosi.sat.i64.f64(double %.sroa.0.0.i31.i), !dbg !144205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !144206, !noalias !144145
  br label %bb.p, !dbg !144207

bb.o:                                             ; preds = %.noexc49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !144206, !noalias !144145
  br label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, !dbg !144208

bb.p:                                             ; preds = %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i
  %i.ff = phi i8 [ %i.dv, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.fb, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !144209 ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.i.off0.i, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsnECsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.fe, %_RINvNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_unit18convert_time_unitsdECsfcROwRM8ZtH_11polars_plan.exit.i ], !dbg !144210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !144211, !noalias !144145
  store i8 20, ptr %i.e, align 16, !dbg !144211, !noalias !144145
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1, !dbg !144211
  store i8 %i.ff, ptr %.sroa.418.0..sroa_idx.i, align 1, !dbg !144211, !noalias !144145
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48, !dbg !144211
  store i8 19, ptr %.sroa.620.0..sroa_idx.i, align 16, !dbg !144211, !noalias !144145
  %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 49, !dbg !144211
  store i8 %i.ff, ptr %.sroa.620.sroa.4.0..sroa.620.0..sroa_idx.sroa_idx.i, align 1, !dbg !144211, !noalias !144145
  %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56, !dbg !144211
  store i64 %.sroa.0.0.i, ptr %.sroa.620.sroa.6.0..sroa.620.0..sroa_idx.sroa_idx.i, align 8, !dbg !144211, !noalias !144145
  %i.fg = getelementptr inbounds nuw i8, ptr %i.e, i64 112, !dbg !144211
  store i64 -9223372036854775804, ptr %i.fg, align 16, !dbg !144211, !noalias !144145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !144212, !noalias !144145
  %.sroa.040.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !144213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %.sroa.040.sroa.4.0..sroa_idx.i, i8 0, i64 15, i1 false), !dbg !144214, !noalias !144145
  store i64 7957695015158969700, ptr %i.d, align 8, !dbg !144213, !noalias !144145
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 23, !dbg !144213
  store i8 -56, ptr %.sroa.441.0..sroa_idx.i, align 1, !dbg !144213, !noalias !144145
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr5aliasNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB5_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(144) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit unwind label %bb.q, !dbg !144215

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.k, %_RNCNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB7_12DurationArgs10as_literals0_0Bd_.exit.backedge.i.7.i, %.thread.i.i.7.i, %.split.i.7.i, %.split3.i.7.i, %.split4.i.7.i, %bb.i, %.thread.i.i.6.i, %.split.i.6.i, %.split3.i.6.i, %.split4.i.6.i, %bb.h, %.thread.i.i.5.i, %.split.i.5.i, %.split3.i.5.i, %.split4.i.5.i, %bb.g, %.thread.i.i.4.i, %.split.i.4.i, %.split3.i.4.i, %.split4.i.4.i, %bb.f, %.thread.i.i.3.i, %.split.i.3.i, %.split3.i.3.i, %.split4.i.3.i, %bb.e, %.thread.i.i.2.i, %.split.i.2.i, %.split3.i.2.i, %.split4.i.2.i, %bb.d, %.thread.i.i.1.i, %.split.i.1.i, %.split3.i.1.i, %.split4.i.1.i, %bb.c, %.thread.i.i.i, %.split.i.i, %.split4.i.i, %.split3.i.i, %bb.b
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %1) #53
          to label %bb.v unwind label %bb.u, !dbg !144216

_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !144217, !noalias !144145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !144217, !noalias !144145
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !dbg !144151, !range !2623
  %i.fi = icmp eq i64 %.pre, -9223372036854775780, !dbg !144151
  br i1 %i.fi, label %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread, label %bb.r, !dbg !144218

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.h, i64 144, i1 false), !dbg !144219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !144220
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporal12DurationArgsEBO_(ptr noalias noundef align 16 dereferenceable(1168) %1), !dbg !144216
  br label %bb.t, !dbg !144216

_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread: ; preds = %.noexc9, %.noexc10, %.noexc11, %.noexc14, %.noexc15, %.noexc16, %.noexc19, %.noexc20, %.noexc21, %.noexc24, %.noexc25, %.noexc26, %.noexc29, %.noexc30, %.noexc31, %.noexc34, %.noexc35, %.noexc36, %.noexc39, %.noexc40, %.noexc41, %.noexc44, %.noexc45, %.noexc46, %bb.o, %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !144220
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !dbg !144221
  %i.fj = call noundef align 16 dereferenceable_or_null(1152) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 1152, i64 noundef range(i64 1, 17) 16) #51, !dbg !144222 ; 10 uses
  %i.fk = icmp eq ptr %i.fj, null, !dbg !144223
  br i1 %i.fk, label %bb.s, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !144224, !prof !2307

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 1152) #50
          to label %.noexc51 unwind label %bb.q, !dbg !144225

.noexc51:                                         ; preds = %bb.s
  unreachable, !dbg !144225

bb.t:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, %bb.r
  ret void, !dbg !144226

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMs1_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9functions8temporalNtB5_12DurationArgs10as_literal.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fj, ptr noundef nonnull align 16 dereferenceable(144) %1, i64 144, i1 false), !dbg !144227
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 144, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fl, ptr noundef nonnull align 16 dereferenceable(144) %i.k, i64 144, i1 false), !dbg !144229
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 288, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fm, ptr noundef nonnull align 16 dereferenceable(144) %i.l, i64 144, i1 false), !dbg !144230
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 432, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fn, ptr noundef nonnull align 16 dereferenceable(144) %i.m, i64 144, i1 false), !dbg !144231
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 576, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fo, ptr noundef nonnull align 16 dereferenceable(144) %i.n, i64 144, i1 false), !dbg !144232
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 720, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fp, ptr noundef nonnull align 16 dereferenceable(144) %i.o, i64 144, i1 false), !dbg !144233
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 864, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fq, ptr noundef nonnull align 16 dereferenceable(144) %i.p, i64 144, i1 false), !dbg !144234
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 1008, !dbg !144228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.fr, ptr noundef nonnull align 16 dereferenceable(144) %i.q, i64 144, i1 false), !dbg !144235
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 1152, !dbg !144236
  %i.ft = load i8, ptr %i.fs, align 16, !dbg !144236, !range !2513, !noundef !2281
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !144237
  store i64 8, ptr %i.fu, align 16, !dbg !144237
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !144237
  store ptr %i.fj, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !144237
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !144237
  store i64 8, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !144237
  store i8 7, ptr %0, align 16, !dbg !144237
  %.sroa.42.sroa.3.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !144237
  store i8 15, ptr %.sroa.42.sroa.3.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !dbg !144237
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !144237
  store i8 %i.ft, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 1, !dbg !144237
  br label %bb.t, !dbg !144216

bb.u:                                             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.q
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #52, !dbg !144238
  unreachable, !dbg !144238

bb.v:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.k) #53
          to label %bb.w unwind label %bb.u, !dbg !144216

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.l) #53
          to label %bb.x unwind label %bb.u, !dbg !144216

bb.x:                                             ; preds = %bb.w
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.m) #53
          to label %bb.y unwind label %bb.u, !dbg !144216

bb.y:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.n) #53
          to label %bb.z unwind label %bb.u, !dbg !144216

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.o) #53
          to label %bb.aa unwind label %bb.u, !dbg !144216

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.p) #53
          to label %bb.ab unwind label %bb.u, !dbg !144216

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.q) #53
          to label %bb.ac unwind label %bb.u, !dbg !144216

bb.ac:                                            ; preds = %bb.ab
  resume { ptr, i32 } %i.fh, !dbg !144238
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion11materialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 16 captures(address, read_provenance) %1) unnamed_addr #1 !dbg !144239 !guid !144241 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !144242
  %i.c = load i64, ptr %i.b, align 16, !dbg !144242, !range !2471, !noundef !2281 ; 2 uses
  %i.d = icmp ne i64 %i.c, -9223372036854775791, !dbg !144242
  tail call void @llvm.assume(i1 %i.d), !dbg !144242
  %i.e = icmp eq i64 %i.c, -9223372036854775804, !dbg !144243
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !144243

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !144244
  call fastcc void @_RNvXsw_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValueNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(96) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %1) #56, !dbg !144245
  call void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue11materialize(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(96) %i.a), !dbg !144246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !144247
  br label %bb.c, !dbg !144248

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i64 [ -9223372036854775804, %bb.b ], [ -9223372036854775786, %bb.a ], !dbg !144249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !144249
  store i64 %.sink, ptr %i.f, align 16, !dbg !144249
  ret void, !dbg !144250
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion13type_coercion12cast_expr_ir(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 16 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull align 8 dereferenceable(32) %4, i8 noundef range(i8 0, 2) %5) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !144251 !guid !144315 {
end_hunk_0

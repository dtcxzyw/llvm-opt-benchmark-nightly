inline.NumInlined: 7428
inline.NumDeleted: 3031
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesxECs2g09Ig8GZd6_13polars_stream:bb.a
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18157
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !dbg !18157, !noalias !18118
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18157
  store ptr %i.i, ptr %i.v, align 8, !dbg !18157, !noalias !18118
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !18157
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !dbg !18157, !noalias !18118
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @61, ptr noundef nonnull %i.d), !dbg !18160, !noalias !18166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18167, !noalias !18118
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !dbg !18168, !noalias !18172
  br label %bb.e, !dbg !18173

._crit_edge.i:                                    ; preds = %bb.f, %bb.c, %bb.a
  store i64 18, ptr %0, align 8, !dbg !18175, !alias.scope !18177, !noalias !18180
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRxINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesxE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !18181

bb.e:                                             ; preds = %.split.i.i.i, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18111, !noalias !18118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18112, !noalias !18117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18112, !noalias !18117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18112, !noalias !18117
  store i64 2, ptr %0, align 8, !dbg !18182, !alias.scope !18186, !noalias !18180
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !dbg !18182, !noalias !18180
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRxINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesxE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !18190

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18111, !noalias !18118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18112, !noalias !18117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18112, !noalias !18117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18112, !noalias !18117
  %i.w = icmp eq ptr %i.r, %i.j, !dbg !18071
  br i1 %i.w, label %._crit_edge.i, label %.peel.next, !dbg !18078, !llvm.loop !18191

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterxENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRxINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesxE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18192
  ret void, !dbg !18193
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesyECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !18194 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 15 uses
  %i.c = alloca [8 x i8], align 8                 ; 20 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.e, align 8
  %.idx = shl nuw nsw i64 %2, 3, !dbg !18195      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !18195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18204), !dbg !18207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.h = icmp eq i64 %2, 0, !dbg !18210
  br i1 %i.h, label %._crit_edge.i, label %.lr.ph.i, !dbg !18217

.lr.ph.i:                                         ; preds = %bb.a
  %.val5.i2 = load i64, ptr %1, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i2, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i3 = icmp ult i64 %.val5.i2, %3, !dbg !18236
  br i1 %.not.i.i.i3, label %.lr.ph.preheader, label %._crit_edge, !dbg !18236, !prof !17246

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %i.i = icmp eq i64 %2, 1, !dbg !18210
  br i1 %i.i, label %._crit_edge.i, label %.lr.ph5, !dbg !18217

.lr.ph5:                                          ; preds = %.lr.ph.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18240 ; 2 uses
  %i.k = add nsw i64 %.idx, -16, !dbg !18217      ; 2 uses
  %i.l = lshr exact i64 %i.k, 3, !dbg !18217
  %i.m = add nuw nsw i64 %i.l, 1, !dbg !18217
  %xtraiter = and i64 %i.m, 3, !dbg !18217        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18217
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader, !dbg !18217

.prol.preheader:                                  ; preds = %.lr.ph5, %.lr.ph.prol
  %i.n = phi ptr [ %i.o, %.lr.ph.prol ], [ %i.j, %.lr.ph5 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph5 ]
  %.val5.i.prol = load i64, ptr %i.n, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i.prol, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i.prol = icmp ult i64 %.val5.i.prol, %3, !dbg !18236
  br i1 %.not.i.i.i.prol, label %.lr.ph.prol, label %._crit_edge, !dbg !18236, !prof !17251

.lr.ph.prol:                                      ; preds = %.prol.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !18240 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !18217 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !18217
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !dbg !18217, !llvm.loop !18242

.prol.loopexit:                                   ; preds = %.lr.ph.prol, %.lr.ph5
  %.unr = phi ptr [ %i.j, %.lr.ph5 ], [ %i.o, %.lr.ph.prol ]
  %i.p = icmp ult i64 %i.k, 24, !dbg !18217
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph5.new, !dbg !18217

.lr.ph5.new:                                      ; preds = %.prol.loopexit, %.lr.ph.3
  %i.q = phi ptr [ %i.v, %.lr.ph.3 ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.val5.i = load i64, ptr %i.q, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i = icmp ult i64 %.val5.i, %3, !dbg !18236
  br i1 %.not.i.i.i, label %.lr.ph, label %._crit_edge, !dbg !18236, !prof !17251

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.3, %.lr.ph.preheader, %bb.a
  store i64 18, ptr %0, align 8, !dbg !18243, !alias.scope !18245, !noalias !18248
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRyINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesyE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !18249

._crit_edge:                                      ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph, %.lr.ph5.new, %.prol.preheader, %.lr.ph.i
  store i64 18, ptr %i.d, align 8, !dbg !18250, !noalias !18219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18251, !noalias !18230
  store ptr %i.c, ptr %i.a, align 8, !dbg !18251, !noalias !18230
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !18251
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8, !dbg !18251, !noalias !18230
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18251
  store ptr %i.e, ptr %i.r, align 8, !dbg !18251, !noalias !18230
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !18251
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !dbg !18251, !noalias !18230
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @61, ptr noundef nonnull %i.a), !dbg !18254, !noalias !18260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18261, !noalias !18230
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !dbg !18262, !noalias !18266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  store i64 2, ptr %0, align 8, !dbg !18267, !alias.scope !18271, !noalias !18248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !dbg !18267, !noalias !18248
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRyINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesyE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit, !dbg !18275

.lr.ph:                                           ; preds = %.lr.ph5.new
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !18240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %.val5.i.1 = load i64, ptr %i.s, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i.1, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i.1 = icmp ult i64 %.val5.i.1, %3, !dbg !18236
  br i1 %.not.i.i.i.1, label %.lr.ph.1, label %._crit_edge, !dbg !18236, !prof !17251

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !18240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %.val5.i.2 = load i64, ptr %i.t, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i.2, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i.2 = icmp ult i64 %.val5.i.2, %3, !dbg !18236
  br i1 %.not.i.i.i.2, label %.lr.ph.2, label %._crit_edge, !dbg !18236, !prof !17251

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24, !dbg !18240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %.val5.i.3 = load i64, ptr %i.u, align 8, !dbg !18218, !noalias !18219, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18222, !noalias !18227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18222, !noalias !18230
  store i64 %.val5.i.3, ptr %i.c, align 8, !dbg !18233, !noalias !18230
  %.not.i.i.i.3 = icmp ult i64 %.val5.i.3, %3, !dbg !18236
  br i1 %.not.i.i.i.3, label %.lr.ph.3, label %._crit_edge, !dbg !18236, !prof !17251

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 32, !dbg !18240 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18238, !noalias !18230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18239, !noalias !18227
  %i.w = icmp eq ptr %i.v, %i.f, !dbg !18210
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph5.new, !dbg !18217

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IteryENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_12try_for_each4callRyINtNtBa_6result6ResultuNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification13check_indexesyE0E0B25_ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %._crit_edge.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18276
  ret void, !dbg !18277
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 4 captures(address) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !18278 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ], !dbg !18279, !prof !18280

bb.b:                                             ; preds = %bb.a
  store i64 18, ptr %0, align 8, !dbg !18281
  br label %bb.c, !dbg !18282

bb.c:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, %bb.z, %bb.u, %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, %.critedge, %bb.f, %bb.b
  ret void, !dbg !18284

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #58, !dbg !18285
  unreachable, !dbg !18285

bb.e:                                             ; preds = %bb.a
  %.idx87 = shl nuw nsw i64 %2, 2, !dbg !18286
  %i.b = getelementptr i8, ptr %1, i64 %.idx87, !dbg !18286 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -4, !dbg !18286
  %.val26 = load i32, ptr %i.c, align 4, !dbg !18290, !noundef !13 ; 2 uses
  %i.d = sext i32 %.val26 to i64, !dbg !18291     ; 3 uses
  %.val = load i32, ptr %1, align 4, !dbg !18298, !noundef !13 ; 2 uses
  %i.e = sext i32 %.val to i64, !dbg !18300       ; 3 uses
  %i.f = icmp ult i64 %4, %i.d, !dbg !18302
  br i1 %i.f, label %bb.f, label %bb.g, !dbg !18302

bb.f:                                             ; preds = %bb.e
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18306
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @65, i64 8), i64 64, i1 false), !dbg !18313
  store i64 2, ptr %0, align 8, !dbg !18306
  br label %bb.c, !dbg !18314

bb.g:                                             ; preds = %bb.e
  %i.g = icmp ult i32 %.val26, %.val, !dbg !18316
  br i1 %i.g, label %bb.h, label %bb.i, !dbg !18316, !prof !243

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %i.d, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #58, !dbg !18324
  unreachable, !dbg !18324

bb.i:                                             ; preds = %bb.g
  %i.h = sub nuw nsw i64 %i.d, %i.e, !dbg !18325  ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.e, !dbg !18326 ; 6 uses
  %i.j = icmp samesign ult i64 %i.h, 64, !dbg !18330 ; 2 uses
  br i1 %i.j, label %bb.m, label %bb.j, !dbg !18330

bb.j:                                             ; preds = %bb.i
  %i.k = and i64 %i.h, 9223372036854775744, !dbg !18345
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k, !dbg !18350 ; 3 uses
  %i.m = and i64 %i.h, 63, !dbg !18358            ; 2 uses
  br label %.lr.ph.i.i, !dbg !18359

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64, !dbg !18365 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l, !dbg !18373
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !18376

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.j
  %.sroa.01.028.i.i = phi ptr [ %i.n, %bb.k ], [ %i.i, %bb.j ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !dbg !18377, !alias.scope !18380, !noalias !18385
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16, !dbg !18388
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.p, align 1, !dbg !18392, !alias.scope !18380, !noalias !18395
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32, !dbg !18398
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.q, align 1, !dbg !18401, !alias.scope !18380, !noalias !18404
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48, !dbg !18407
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.r, align 1, !dbg !18410, !alias.scope !18380, !noalias !18413
  %i.s = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i, !dbg !18416
  %i.t = or <2 x i64> %i.s, %.sroa.0.0.copyload.i10.i.i, !dbg !18420
  %i.u = or <2 x i64> %i.t, %.sroa.0.0.copyload.i11.i.i, !dbg !18422
  %i.v = bitcast <2 x i64> %i.u to <16 x i8>, !dbg !18424
  %i.w = icmp slt <16 x i8> %i.v, zeroinitializer, !dbg !18427
  %i.x = bitcast <16 x i1> %i.w to i16, !dbg !18427
  %i.y = icmp eq i16 %i.x, 0, !dbg !18359
  br i1 %i.y, label %bb.k, label %.loopexit, !dbg !18359

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m, !dbg !18428
  %i.aa = icmp samesign eq i64 %i.m, 0, !dbg !18439
  br i1 %i.aa, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph77, !dbg !18449

bb.l:                                             ; preds = %.lr.ph77
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ad, i64 1, !dbg !18450 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.z, !dbg !18439
  br i1 %i.ac, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph77, !dbg !18449

.lr.ph77:                                         ; preds = %._crit_edge.i.i, %bb.l
  %i.ad = phi ptr [ %i.ab, %bb.l ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ad, align 1, !dbg !18453, !alias.scope !18380, !noalias !18454, !noundef !13
  %i.ae = icmp sgt i8 %.val.i.i.i, -1, !dbg !18457
  br i1 %i.ae, label %bb.l, label %.loopexit, !dbg !18453

bb.m:                                             ; preds = %bb.i
  %i.af = and i64 %i.h, 56, !dbg !18464           ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.af, !dbg !18471 ; 7 uses
  %i.ah = and i64 %i.h, 7, !dbg !18475            ; 7 uses
  %.not.i2778 = icmp eq i64 %i.af, 0, !dbg !18476
  br i1 %.not.i2778, label %._crit_edge81, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !18476

bb.n:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i80, i64 8, !dbg !18486
  %i.aj = add nsw i64 %.sroa.6.0.i79, -8, !dbg !18489 ; 2 uses
  %.not.i27 = icmp eq i64 %i.aj, 0, !dbg !18476
  br i1 %.not.i27, label %._crit_edge81, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !18476

._crit_edge81:                                    ; preds = %bb.n, %bb.m
  %i.ak = icmp samesign eq i64 %i.ah, 0, !dbg !18490
  br i1 %i.ak, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83, !dbg !18500

bb.o:                                             ; preds = %.lr.ph83
  %i.al = icmp samesign eq i64 %i.ah, 1, !dbg !18490
  br i1 %i.al, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.1, !dbg !18500

.lr.ph83.1:                                       ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 1, !dbg !18501
  %.val.i.i.1 = load i8, ptr %i.am, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.an = icmp sgt i8 %.val.i.i.1, -1, !dbg !18509
  br i1 %i.an, label %bb.p, label %.loopexit, !dbg !18504

bb.p:                                             ; preds = %.lr.ph83.1
  %i.ao = icmp samesign eq i64 %i.ah, 2, !dbg !18490
  br i1 %i.ao, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.2, !dbg !18500

.lr.ph83.2:                                       ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 2, !dbg !18501
  %.val.i.i.2 = load i8, ptr %i.ap, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.aq = icmp sgt i8 %.val.i.i.2, -1, !dbg !18509
  br i1 %i.aq, label %bb.q, label %.loopexit, !dbg !18504

bb.q:                                             ; preds = %.lr.ph83.2
  %i.ar = icmp samesign eq i64 %i.ah, 3, !dbg !18490
  br i1 %i.ar, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.3, !dbg !18500

.lr.ph83.3:                                       ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 3, !dbg !18501
  %.val.i.i.3 = load i8, ptr %i.as, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.at = icmp sgt i8 %.val.i.i.3, -1, !dbg !18509
  br i1 %i.at, label %bb.r, label %.loopexit, !dbg !18504

bb.r:                                             ; preds = %.lr.ph83.3
  %i.au = icmp samesign eq i64 %i.ah, 4, !dbg !18490
  br i1 %i.au, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.4, !dbg !18500

.lr.ph83.4:                                       ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4, !dbg !18501
  %.val.i.i.4 = load i8, ptr %i.av, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.aw = icmp sgt i8 %.val.i.i.4, -1, !dbg !18509
  br i1 %i.aw, label %bb.s, label %.loopexit, !dbg !18504

bb.s:                                             ; preds = %.lr.ph83.4
  %i.ax = icmp samesign eq i64 %i.ah, 5, !dbg !18490
  br i1 %i.ax, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.5, !dbg !18500

.lr.ph83.5:                                       ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 5, !dbg !18501
  %.val.i.i.5 = load i8, ptr %i.ay, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.az = icmp sgt i8 %.val.i.i.5, -1, !dbg !18509
  br i1 %i.az, label %bb.t, label %.loopexit, !dbg !18504

bb.t:                                             ; preds = %.lr.ph83.5
  %i.ba = icmp samesign eq i64 %i.ah, 6, !dbg !18490
  br i1 %i.ba, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph83.6, !dbg !18500

.lr.ph83.6:                                       ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 6, !dbg !18501
  %.val.i.i.6 = load i8, ptr %i.bb, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.bc = icmp sgt i8 %.val.i.i.6, -1, !dbg !18509
  br i1 %i.bc, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit, !dbg !18504

.lr.ph83:                                         ; preds = %._crit_edge81
  %.val.i.i = load i8, ptr %i.ag, align 1, !dbg !18504, !alias.scope !18505, !noalias !18506, !noundef !13
  %i.bd = icmp sgt i8 %.val.i.i, -1, !dbg !18509
  br i1 %i.bd, label %bb.o, label %.loopexit, !dbg !18504

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.m, %bb.n
  %.sroa.0.017.i80 = phi ptr [ %i.ai, %bb.n ], [ %i.i, %bb.m ] ; 2 uses
  %.sroa.6.0.i79 = phi i64 [ %i.aj, %bb.n ], [ %i.af, %bb.m ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i80, align 1, !dbg !18515, !alias.scope !18505
  %i.be = and i64 %.sroa.012.0.copyload.i, -9187201950435737472, !dbg !18524
  %i.bf = icmp eq i64 %i.be, 0, !dbg !18524
  br i1 %i.bf, label %bb.n, label %.loopexit, !dbg !18524

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph77, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, %.lr.ph83, %.lr.ph83.1, %.lr.ph83.2, %.lr.ph83.3, %.lr.ph83.4, %.lr.ph83.5, %.lr.ph83.6
  br i1 %i.j, label %.split, label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, !dbg !18526

.split:                                           ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18540, !noalias !18543
  call void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !dbg !18540
  %i.bg = load i64, ptr %i.a, align 8, !dbg !18540, !range !2646, !noalias !18543, !noundef !13
  %i.bh = trunc nuw i64 %i.bg to i1, !dbg !18546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18547, !noalias !18543
  br i1 %i.bh, label %bb.u, label %bb.v, !dbg !18548

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %.loopexit
  %i.bi = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !18552, !noalias !18543, !nonnull !13, !noundef !13
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !dbg !18557, !inline_history !18559
  br i1 %i.bj, label %bb.u, label %bb.v, !dbg !18548

_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.lr.ph83.6, %._crit_edge.i.i, %._crit_edge81
  store i64 18, ptr %0, align 8, !dbg !18560
  br label %bb.c, !dbg !18561

bb.u:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  tail call void @_RNvXs9_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsh1AXECKMxZe_8simdutf85basic9Utf8ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0), !dbg !18562
  br label %bb.c, !dbg !18569

bb.v:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  %.not.i29 = icmp samesign ugt i64 %2, 1, !dbg !18571
  br i1 %.not.i29, label %.lr.ph85, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !18571

.lr.ph85:                                         ; preds = %bb.v
  %i.bk = add nsw i64 %2, -1, !dbg !18585
  br label %bb.x, !dbg !18600

bb.w:                                             ; preds = %bb.x
  %i.bl = icmp eq ptr %1, %i.bp, !dbg !18618
  br i1 %i.bl, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.x, !dbg !18600

bb.x:                                             ; preds = %.lr.ph85, %bb.w
  %i.bm = phi ptr [ %i.b, %.lr.ph85 ], [ %i.bp, %bb.w ]
  %i.bn = phi i64 [ %2, %.lr.ph85 ], [ %i.bq, %bb.w ]
  %i.bo = phi i64 [ %i.bk, %.lr.ph85 ], [ %i.br, %bb.w ]
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -4, !dbg !18622 ; 3 uses
  %.val.i.i.i31 = load i32, ptr %i.bp, align 4, !dbg !18633, !noalias !18634, !noundef !13
  %i.bq = add nsw i64 %i.bn, -1, !dbg !18643      ; 3 uses
  %i.br = add nsw i64 %i.bo, -1, !dbg !18648      ; 2 uses
  %i.bs = sext i32 %.val.i.i.i31 to i64, !dbg !18653
  %i.bt = icmp ugt i64 %4, %i.bs, !dbg !18663     ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = zext i1 %i.bt to i64, !dbg !18664
  %i.bu = icmp eq i64 %i.br, 0, !dbg !18665
  %spec.select.i.i.i.i.i = select i1 %i.bt, i64 1, i64 2
  %spec.select3.i.i.i.i.i = select i1 %i.bu, i64 %.sroa.0.0.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i, !dbg !18665
  switch i64 %spec.select3.i.i.i.i.i, label %bb.y [
    i64 2, label %bb.w
    i64 0, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread
  ], !dbg !18633

bb.y:                                             ; preds = %bb.x
  %.idx.mask = and i64 %i.bq, 4611686018427387903, !dbg !18667
  %i.bv = icmp eq i64 %.idx.mask, 4611686018427387903, !dbg !18667
  br i1 %i.bv, label %.critedge, label %.lr.ph.preheader, !dbg !18669

.lr.ph.preheader:                                 ; preds = %bb.y
  %5 = and i64 %i.bq, 4611686018427387903, !dbg !18669 ; 2 uses
  %i.bw = add nuw nsw i64 %5, 1, !dbg !18669      ; 2 uses
  %xtraiter = and i64 %i.bw, 3, !dbg !18669       ; 3 uses
  %i.bx = icmp samesign ult i64 %5, 3, !dbg !18669
  br i1 %i.bx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !18669

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bw, 9223372036854775804, !dbg !18669
  br label %.lr.ph, !dbg !18669

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterlEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRlEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8lE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.w, %bb.x, %bb.v
  store i64 18, ptr %0, align 8, !dbg !18680
  br label %bb.c, !dbg !18681

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.019.052 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.ct, %.lr.ph ] ; 5 uses
  %.sroa.011.051 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cz, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 4, !dbg !18682
  %.sroa.019.0.val = load i32, ptr %.sroa.019.052, align 4, !dbg !18685, !noundef !13
  %i.bz = sext i32 %.sroa.019.0.val to i64, !dbg !18687 ; 2 uses
  %i.ca = icmp ugt i64 %4, %i.bz, !dbg !18689
  tail call void @llvm.assume(i1 %i.ca), !dbg !18696
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 %i.bz, !dbg !18697
  %i.cc = load i8, ptr %i.cb, align 1, !dbg !18698, !noundef !13
  %i.cd = icmp slt i8 %i.cc, -64, !dbg !18699
  %i.ce = or i1 %.sroa.011.051, %i.cd, !dbg !18701
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 8, !dbg !18682
  %.sroa.019.0.val.1 = load i32, ptr %i.by, align 4, !dbg !18685, !noundef !13
  %i.cg = sext i32 %.sroa.019.0.val.1 to i64, !dbg !18687 ; 2 uses
  %i.ch = icmp ugt i64 %4, %i.cg, !dbg !18689
  tail call void @llvm.assume(i1 %i.ch), !dbg !18696
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 %i.cg, !dbg !18697
  %i.cj = load i8, ptr %i.ci, align 1, !dbg !18698, !noundef !13
  %i.ck = icmp slt i8 %i.cj, -64, !dbg !18699
  %i.cl = or i1 %i.ce, %i.ck, !dbg !18701
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 12, !dbg !18682
  %.sroa.019.0.val.2 = load i32, ptr %i.cf, align 4, !dbg !18685, !noundef !13
  %i.cn = sext i32 %.sroa.019.0.val.2 to i64, !dbg !18687 ; 2 uses
  %i.co = icmp ugt i64 %4, %i.cn, !dbg !18689
  tail call void @llvm.assume(i1 %i.co), !dbg !18696
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn, !dbg !18697
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !18698, !noundef !13
  %i.cr = icmp slt i8 %i.cq, -64, !dbg !18699
  %i.cs = or i1 %i.cl, %i.cr, !dbg !18701
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 16, !dbg !18682 ; 2 uses
  %.sroa.019.0.val.3 = load i32, ptr %i.cm, align 4, !dbg !18685, !noundef !13
  %i.cu = sext i32 %.sroa.019.0.val.3 to i64, !dbg !18687 ; 2 uses
  %i.cv = icmp ugt i64 %4, %i.cu, !dbg !18689
  tail call void @llvm.assume(i1 %i.cv), !dbg !18696
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %i.cu, !dbg !18697
  %i.cx = load i8, ptr %i.cw, align 1, !dbg !18698, !noundef !13
  %i.cy = icmp slt i8 %i.cx, -64, !dbg !18699
  %i.cz = or i1 %i.cs, %i.cy, !dbg !18701         ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !18669  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !18669
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !dbg !18669

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18669
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !18669

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.019.052.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.ct, %._crit_edge.unr-lcssa ]
  %.sroa.011.051.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cz, %._crit_edge.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0, !dbg !18669
  tail call void @llvm.assume(i1 %lcmp.mod95), !dbg !18669
  br label %.lr.ph.epil, !dbg !18669

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.019.052.epil = phi ptr [ %i.da, %.lr.ph.epil ], [ %.sroa.019.052.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.011.051.epil = phi i1 [ %i.dg, %.lr.ph.epil ], [ %.sroa.011.051.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.019.052.epil, i64 4, !dbg !18682
  %.sroa.019.0.val.epil = load i32, ptr %.sroa.019.052.epil, align 4, !dbg !18685, !noundef !13
  %i.db = sext i32 %.sroa.019.0.val.epil to i64, !dbg !18687 ; 2 uses
  %i.dc = icmp ugt i64 %4, %i.db, !dbg !18689
  tail call void @llvm.assume(i1 %i.dc), !dbg !18696
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 %i.db, !dbg !18697
  %i.de = load i8, ptr %i.dd, align 1, !dbg !18698, !noundef !13
  %i.df = icmp slt i8 %i.de, -64, !dbg !18699
  %i.dg = or i1 %.sroa.011.051.epil, %i.df, !dbg !18701 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !18669 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !18669
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !dbg !18669, !llvm.loop !18702

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.cz, %._crit_edge.unr-lcssa ], [ %i.dg, %.lr.ph.epil ], !dbg !18701
  br i1 %.lcssa, label %bb.z, label %.critedge, !dbg !18703

.critedge:                                        ; preds = %bb.y, %._crit_edge
  store i64 18, ptr %0, align 8, !dbg !18704
  br label %bb.c, !dbg !18561

bb.z:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @59, i64 72, i1 false), !dbg !18705
  br label %bb.c, !dbg !18706
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !18708 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ], !dbg !18709, !prof !18280

bb.b:                                             ; preds = %bb.a
  store i64 18, ptr %0, align 8, !dbg !18710
  br label %bb.c, !dbg !18711

bb.c:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterxEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRxEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, %bb.z, %bb.u, %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, %.critedge, %bb.f, %bb.b
  ret void, !dbg !18713

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #58, !dbg !18714
  unreachable, !dbg !18714

bb.e:                                             ; preds = %bb.a
  %.idx86 = shl nuw nsw i64 %2, 3, !dbg !18715
  %i.b = getelementptr i8, ptr %1, i64 %.idx86, !dbg !18715 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8, !dbg !18715
  %.val26 = load i64, ptr %i.c, align 8, !dbg !18719, !noundef !13 ; 4 uses
  %.val = load i64, ptr %1, align 8, !dbg !18720, !noundef !13 ; 4 uses
  %i.d = icmp ugt i64 %.val26, %4, !dbg !18722
  br i1 %i.d, label %bb.f, label %bb.g, !dbg !18722

bb.f:                                             ; preds = %bb.e
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18726
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.241.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @65, i64 8), i64 64, i1 false), !dbg !18733
  store i64 2, ptr %0, align 8, !dbg !18726
  br label %bb.c, !dbg !18734

bb.g:                                             ; preds = %bb.e
  %i.e = icmp ult i64 %.val26, %.val, !dbg !18736
  br i1 %i.e, label %bb.h, label %bb.i, !dbg !18736, !prof !243

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %.val26, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #58, !dbg !18743
  unreachable, !dbg !18743

bb.i:                                             ; preds = %bb.g
  %i.f = sub nuw nsw i64 %.val26, %.val, !dbg !18744 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %.val, !dbg !18745 ; 6 uses
  %i.h = icmp samesign ult i64 %i.f, 64, !dbg !18749 ; 2 uses
  br i1 %i.h, label %bb.m, label %bb.j, !dbg !18749

bb.j:                                             ; preds = %bb.i
  %i.i = and i64 %i.f, 9223372036854775744, !dbg !18757
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i, !dbg !18760 ; 3 uses
  %i.k = and i64 %i.f, 63, !dbg !18763            ; 2 uses
  br label %.lr.ph.i.i, !dbg !18764

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 64, !dbg !18765 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.j, !dbg !18768
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !18770

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.j
  %.sroa.01.028.i.i = phi ptr [ %i.l, %bb.k ], [ %i.g, %bb.j ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i64>, ptr %.sroa.01.028.i.i, align 1, !dbg !18771, !alias.scope !18774, !noalias !18779
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 16, !dbg !18782
  %.sroa.0.0.copyload.i9.i.i = load <2 x i64>, ptr %i.n, align 1, !dbg !18784, !alias.scope !18774, !noalias !18787
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 32, !dbg !18790
  %.sroa.0.0.copyload.i10.i.i = load <2 x i64>, ptr %i.o, align 1, !dbg !18792, !alias.scope !18774, !noalias !18795
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.028.i.i, i64 48, !dbg !18798
  %.sroa.0.0.copyload.i11.i.i = load <2 x i64>, ptr %i.p, align 1, !dbg !18800, !alias.scope !18774, !noalias !18803
  %i.q = or <2 x i64> %.sroa.0.0.copyload.i9.i.i, %.sroa.0.0.copyload.i.i.i, !dbg !18806
  %i.r = or <2 x i64> %i.q, %.sroa.0.0.copyload.i10.i.i, !dbg !18808
  %i.s = or <2 x i64> %i.r, %.sroa.0.0.copyload.i11.i.i, !dbg !18810
  %i.t = bitcast <2 x i64> %i.s to <16 x i8>, !dbg !18812
  %i.u = icmp slt <16 x i8> %i.t, zeroinitializer, !dbg !18814
  %i.v = bitcast <16 x i1> %i.u to i16, !dbg !18814
  %i.w = icmp eq i16 %i.v, 0, !dbg !18764
  br i1 %i.w, label %bb.k, label %.loopexit, !dbg !18764

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k, !dbg !18815
  %i.y = icmp samesign eq i64 %i.k, 0, !dbg !18819
  br i1 %i.y, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph76, !dbg !18823

bb.l:                                             ; preds = %.lr.ph76
  %i.z = getelementptr inbounds nuw i8, ptr %i.ab, i64 1, !dbg !18824 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.x, !dbg !18819
  br i1 %i.aa, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph76, !dbg !18823

.lr.ph76:                                         ; preds = %._crit_edge.i.i, %bb.l
  %i.ab = phi ptr [ %i.z, %bb.l ], [ %i.j, %._crit_edge.i.i ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ab, align 1, !dbg !18826, !alias.scope !18774, !noalias !18827, !noundef !13
  %i.ac = icmp sgt i8 %.val.i.i.i, -1, !dbg !18830
  br i1 %i.ac, label %bb.l, label %.loopexit, !dbg !18826

bb.m:                                             ; preds = %bb.i
  %i.ad = and i64 %i.f, 56, !dbg !18833           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ad, !dbg !18836 ; 7 uses
  %i.af = and i64 %i.f, 7, !dbg !18839            ; 7 uses
  %.not.i2777 = icmp eq i64 %i.ad, 0, !dbg !18840
  br i1 %.not.i2777, label %._crit_edge80, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !18840

bb.n:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i79, i64 8, !dbg !18843
  %i.ah = add nsw i64 %.sroa.6.0.i78, -8, !dbg !18846 ; 2 uses
  %.not.i27 = icmp eq i64 %i.ah, 0, !dbg !18840
  br i1 %.not.i27, label %._crit_edge80, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !18840

._crit_edge80:                                    ; preds = %bb.n, %bb.m
  %i.ai = icmp samesign eq i64 %i.af, 0, !dbg !18847
  br i1 %i.ai, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82, !dbg !18851

bb.o:                                             ; preds = %.lr.ph82
  %i.aj = icmp samesign eq i64 %i.af, 1, !dbg !18847
  br i1 %i.aj, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.1, !dbg !18851

.lr.ph82.1:                                       ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !18852
  %.val.i.i.1 = load i8, ptr %i.ak, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.al = icmp sgt i8 %.val.i.i.1, -1, !dbg !18859
  br i1 %i.al, label %bb.p, label %.loopexit, !dbg !18854

bb.p:                                             ; preds = %.lr.ph82.1
  %i.am = icmp samesign eq i64 %i.af, 2, !dbg !18847
  br i1 %i.am, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.2, !dbg !18851

.lr.ph82.2:                                       ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 2, !dbg !18852
  %.val.i.i.2 = load i8, ptr %i.an, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.ao = icmp sgt i8 %.val.i.i.2, -1, !dbg !18859
  br i1 %i.ao, label %bb.q, label %.loopexit, !dbg !18854

bb.q:                                             ; preds = %.lr.ph82.2
  %i.ap = icmp samesign eq i64 %i.af, 3, !dbg !18847
  br i1 %i.ap, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.3, !dbg !18851

.lr.ph82.3:                                       ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 3, !dbg !18852
  %.val.i.i.3 = load i8, ptr %i.aq, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.ar = icmp sgt i8 %.val.i.i.3, -1, !dbg !18859
  br i1 %i.ar, label %bb.r, label %.loopexit, !dbg !18854

bb.r:                                             ; preds = %.lr.ph82.3
  %i.as = icmp samesign eq i64 %i.af, 4, !dbg !18847
  br i1 %i.as, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.4, !dbg !18851

.lr.ph82.4:                                       ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !18852
  %.val.i.i.4 = load i8, ptr %i.at, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.au = icmp sgt i8 %.val.i.i.4, -1, !dbg !18859
  br i1 %i.au, label %bb.s, label %.loopexit, !dbg !18854

bb.s:                                             ; preds = %.lr.ph82.4
  %i.av = icmp samesign eq i64 %i.af, 5, !dbg !18847
  br i1 %i.av, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.5, !dbg !18851

.lr.ph82.5:                                       ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 5, !dbg !18852
  %.val.i.i.5 = load i8, ptr %i.aw, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.ax = icmp sgt i8 %.val.i.i.5, -1, !dbg !18859
  br i1 %i.ax, label %bb.t, label %.loopexit, !dbg !18854

bb.t:                                             ; preds = %.lr.ph82.5
  %i.ay = icmp samesign eq i64 %i.af, 6, !dbg !18847
  br i1 %i.ay, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.lr.ph82.6, !dbg !18851

.lr.ph82.6:                                       ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 6, !dbg !18852
  %.val.i.i.6 = load i8, ptr %i.az, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.ba = icmp sgt i8 %.val.i.i.6, -1, !dbg !18859
  br i1 %i.ba, label %_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit, label %.loopexit, !dbg !18854

.lr.ph82:                                         ; preds = %._crit_edge80
  %.val.i.i = load i8, ptr %i.ae, align 1, !dbg !18854, !alias.scope !18855, !noalias !18856, !noundef !13
  %i.bb = icmp sgt i8 %.val.i.i, -1, !dbg !18859
  br i1 %i.bb, label %bb.o, label %.loopexit, !dbg !18854

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.m, %bb.n
  %.sroa.0.017.i79 = phi ptr [ %i.ag, %bb.n ], [ %i.g, %bb.m ] ; 2 uses
  %.sroa.6.0.i78 = phi i64 [ %i.ah, %bb.n ], [ %i.ad, %bb.m ]
  %.sroa.012.0.copyload.i = load i64, ptr %.sroa.0.017.i79, align 1, !dbg !18862, !alias.scope !18855
  %i.bc = and i64 %.sroa.012.0.copyload.i, -9187201950435737472, !dbg !18866
  %i.bd = icmp eq i64 %i.bc, 0, !dbg !18866
  br i1 %i.bd, label %bb.n, label %.loopexit, !dbg !18866

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph76, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i, %.lr.ph82, %.lr.ph82.1, %.lr.ph82.2, %.lr.ph82.3, %.lr.ph82.4, %.lr.ph82.5, %.lr.ph82.6
  br i1 %i.h, label %.split, label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, !dbg !18867

.split:                                           ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18873, !noalias !18875
  call void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f), !dbg !18873
  %i.be = load i64, ptr %i.a, align 8, !dbg !18873, !range !2646, !noalias !18875, !noundef !13
  %i.bf = trunc nuw i64 %i.be to i1, !dbg !18878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18879, !noalias !18875
  br i1 %i.bf, label %bb.u, label %bb.v, !dbg !18880

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %.loopexit
  %i.bg = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !18884, !noalias !18875, !nonnull !13, !noundef !13
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f), !dbg !18887, !inline_history !18559
  br i1 %i.bh, label %bb.u, label %bb.v, !dbg !18880

_RNvNvNtNtCscgRAwXFJnXP_4core5slice5ascii8is_ascii7runtime.exit: ; preds = %bb.l, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %.lr.ph82.6, %._crit_edge.i.i, %._crit_edge80
  store i64 18, ptr %0, align 8, !dbg !18888
  br label %bb.c, !dbg !18889

bb.u:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  tail call void @_RNvXs9_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsh1AXECKMxZe_8simdutf85basic9Utf8ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0), !dbg !18890
  br label %bb.c, !dbg !18897

bb.v:                                             ; preds = %.split, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit
  %.not.i29 = icmp samesign ugt i64 %2, 1, !dbg !18899
  br i1 %.not.i29, label %.lr.ph84, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterxEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRxEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !18899

.lr.ph84:                                         ; preds = %bb.v
  %i.bi = add nsw i64 %2, -1, !dbg !18907
  br label %bb.x, !dbg !18917

bb.w:                                             ; preds = %bb.x
  %i.bj = icmp eq ptr %1, %i.bn, !dbg !18928
  br i1 %i.bj, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterxEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRxEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread, label %bb.x, !dbg !18917

bb.x:                                             ; preds = %.lr.ph84, %bb.w
  %i.bk = phi ptr [ %i.b, %.lr.ph84 ], [ %i.bn, %bb.w ]
  %i.bl = phi i64 [ %2, %.lr.ph84 ], [ %i.bo, %bb.w ]
  %i.bm = phi i64 [ %i.bi, %.lr.ph84 ], [ %i.bp, %bb.w ]
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -8, !dbg !18932 ; 3 uses
  %.val.i.i.i31 = load i64, ptr %i.bn, align 8, !dbg !18943, !noalias !18944, !noundef !13
  %i.bo = add nsw i64 %i.bl, -1, !dbg !18953      ; 3 uses
  %i.bp = add nsw i64 %i.bm, -1, !dbg !18956      ; 2 uses
  %i.bq = icmp ult i64 %.val.i.i.i31, %4, !dbg !18959 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = zext i1 %i.bq to i64, !dbg !18965
  %i.br = icmp eq i64 %i.bp, 0, !dbg !18966
  %spec.select.i.i.i.i.i = select i1 %i.bq, i64 1, i64 2
  %spec.select3.i.i.i.i.i = select i1 %i.br, i64 %.sroa.0.0.i.i.i.i.i.i, i64 %spec.select.i.i.i.i.i, !dbg !18966
  switch i64 %spec.select3.i.i.i.i.i, label %bb.y [
    i64 2, label %bb.w
    i64 0, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterxEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRxEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread
  ], !dbg !18943

bb.y:                                             ; preds = %bb.x
  %.idx.mask = and i64 %i.bo, 2305843009213693951, !dbg !18968
  %i.bs = icmp eq i64 %.idx.mask, 2305843009213693951, !dbg !18968
  br i1 %i.bs, label %.critedge, label %.lr.ph.preheader, !dbg !18970

.lr.ph.preheader:                                 ; preds = %bb.y
  %5 = and i64 %i.bo, 2305843009213693951, !dbg !18970 ; 2 uses
  %i.bt = add nuw nsw i64 %5, 1, !dbg !18970      ; 2 uses
  %xtraiter = and i64 %i.bt, 3, !dbg !18970       ; 3 uses
  %i.bu = icmp samesign ult i64 %5, 3, !dbg !18970
  br i1 %i.bu, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new, !dbg !18970

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bt, 4611686018427387900, !dbg !18970
  br label %.lr.ph, !dbg !18970

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters4skipINtB6_4SkipINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterxEEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1Z_8iterator8Iterator8find_map5checkTjRxEjNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification14try_check_utf8xE0E0INtNtNtBc_3ops12control_flow11ControlFlowjEECs2g09Ig8GZd6_13polars_stream.exit.thread: ; preds = %bb.w, %bb.x, %bb.v
  store i64 18, ptr %0, align 8, !dbg !18981
  br label %bb.c, !dbg !18982

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.019.052 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %i.cn, %.lr.ph ] ; 5 uses
  %.sroa.011.051 = phi i1 [ false, %.lr.ph.preheader.new ], [ %i.cs, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 8, !dbg !18983
  %.sroa.019.0.val = load i64, ptr %.sroa.019.052, align 8, !dbg !18986, !noundef !13 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.019.0.val, %4, !dbg !18988
  tail call void @llvm.assume(i1 %i.bw), !dbg !18995
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.019.0.val, !dbg !18996
  %i.by = load i8, ptr %i.bx, align 1, !dbg !18997, !noundef !13
  %i.bz = icmp slt i8 %i.by, -64, !dbg !18998
  %i.ca = or i1 %.sroa.011.051, %i.bz, !dbg !19000
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 16, !dbg !18983
  %.sroa.019.0.val.1 = load i64, ptr %i.bv, align 8, !dbg !18986, !noundef !13 ; 2 uses
  %i.cc = icmp ult i64 %.sroa.019.0.val.1, %4, !dbg !18988
  tail call void @llvm.assume(i1 %i.cc), !dbg !18995
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.019.0.val.1, !dbg !18996
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !18997, !noundef !13
  %i.cf = icmp slt i8 %i.ce, -64, !dbg !18998
  %i.cg = or i1 %i.ca, %i.cf, !dbg !19000
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 24, !dbg !18983
  %.sroa.019.0.val.2 = load i64, ptr %i.cb, align 8, !dbg !18986, !noundef !13 ; 2 uses
  %i.ci = icmp ult i64 %.sroa.019.0.val.2, %4, !dbg !18988
  tail call void @llvm.assume(i1 %i.ci), !dbg !18995
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.019.0.val.2, !dbg !18996
  %i.ck = load i8, ptr %i.cj, align 1, !dbg !18997, !noundef !13
  %i.cl = icmp slt i8 %i.ck, -64, !dbg !18998
  %i.cm = or i1 %i.cg, %i.cl, !dbg !19000
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 32, !dbg !18983 ; 2 uses
  %.sroa.019.0.val.3 = load i64, ptr %i.ch, align 8, !dbg !18986, !noundef !13 ; 2 uses
  %i.co = icmp ult i64 %.sroa.019.0.val.3, %4, !dbg !18988
  tail call void @llvm.assume(i1 %i.co), !dbg !18995
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.019.0.val.3, !dbg !18996
  %i.cq = load i8, ptr %i.cp, align 1, !dbg !18997, !noundef !13
  %i.cr = icmp slt i8 %i.cq, -64, !dbg !18998
  %i.cs = or i1 %i.cm, %i.cr, !dbg !19000         ; 3 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !18970  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !18970
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !dbg !18970

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18970
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader, !dbg !18970

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.sroa.019.052.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %i.cn, %._crit_edge.unr-lcssa ]
  %.sroa.011.051.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %i.cs, %._crit_edge.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0, !dbg !18970
  tail call void @llvm.assume(i1 %lcmp.mod94), !dbg !18970
  br label %.lr.ph.epil, !dbg !18970

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.019.052.epil = phi ptr [ %i.ct, %.lr.ph.epil ], [ %.sroa.019.052.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.sroa.011.051.epil = phi i1 [ %i.cy, %.lr.ph.epil ], [ %.sroa.011.051.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.019.052.epil, i64 8, !dbg !18983
  %.sroa.019.0.val.epil = load i64, ptr %.sroa.019.052.epil, align 8, !dbg !18986, !noundef !13 ; 2 uses
  %i.cu = icmp ult i64 %.sroa.019.0.val.epil, %4, !dbg !18988
  tail call void @llvm.assume(i1 %i.cu), !dbg !18995
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.019.0.val.epil, !dbg !18996
  %i.cw = load i8, ptr %i.cv, align 1, !dbg !18997, !noundef !13
  %i.cx = icmp slt i8 %i.cw, -64, !dbg !18998
  %i.cy = or i1 %.sroa.011.051.epil, %i.cx, !dbg !19000 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !18970 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !18970
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !dbg !18970, !llvm.loop !19001

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa = phi i1 [ %i.cs, %._crit_edge.unr-lcssa ], [ %i.cy, %.lr.ph.epil ], !dbg !19000
  br i1 %.lcssa, label %bb.z, label %.critedge, !dbg !19002

.critedge:                                        ; preds = %bb.y, %._crit_edge
  store i64 18, ptr %0, align 8, !dbg !19003
  br label %bb.c, !dbg !18889

bb.z:                                             ; preds = %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) @59, i64 72, i1 false), !dbg !19004
  br label %bb.c, !dbg !19005
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaECs2g09Ig8GZd6_13polars_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !19007 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !19008
  %i.f = icmp samesign eq i64 %2, 0, !dbg !19018
  br i1 %i.f, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.thread, label %.lr.ph.i.preheader, !dbg !19028

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %2, 7, !dbg !19028          ; 3 uses
  %i.g = icmp samesign ult i64 %2, 8, !dbg !19028
  br i1 %i.g, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new, !dbg !19028

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, 9223372036854775800, !dbg !19028
  br label %.lr.ph.i, !dbg !19028

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.04.i = phi ptr [ %1, %.lr.ph.i.preheader.new ], [ %i.av, %.lr.ph.i ] ; 9 uses
  %i.h = phi i1 [ false, %.lr.ph.i.preheader.new ], [ %i.au, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %.sroa.0.0.val.i = load i8, ptr %.sroa.0.04.i, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.i = zext nneg i8 %.sroa.0.0.val.i to i64, !dbg !19034
  %i.j = icmp sgt i8 %.sroa.0.0.val.i, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.j), !dbg !19045
  %i.k = icmp ult i64 %3, %i.i, !dbg !19046
  %i.l = or i1 %i.h, %i.k, !dbg !19047
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 1, !dbg !19048
  %.sroa.0.0.val.i.1 = load i8, ptr %i.m, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.n = zext nneg i8 %.sroa.0.0.val.i.1 to i64, !dbg !19034
  %i.o = icmp sgt i8 %.sroa.0.0.val.i.1, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.o), !dbg !19045
  %i.p = icmp ult i64 %3, %i.n, !dbg !19046
  %i.q = or i1 %i.l, %i.p, !dbg !19047
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 2, !dbg !19048
  %.sroa.0.0.val.i.2 = load i8, ptr %i.r, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.s = zext nneg i8 %.sroa.0.0.val.i.2 to i64, !dbg !19034
  %i.t = icmp sgt i8 %.sroa.0.0.val.i.2, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.t), !dbg !19045
  %i.u = icmp ult i64 %3, %i.s, !dbg !19046
  %i.v = or i1 %i.q, %i.u, !dbg !19047
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 3, !dbg !19048
  %.sroa.0.0.val.i.3 = load i8, ptr %i.w, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.x = zext nneg i8 %.sroa.0.0.val.i.3 to i64, !dbg !19034
  %i.y = icmp sgt i8 %.sroa.0.0.val.i.3, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.y), !dbg !19045
  %i.z = icmp ult i64 %3, %i.x, !dbg !19046
  %i.aa = or i1 %i.v, %i.z, !dbg !19047
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4, !dbg !19048
  %.sroa.0.0.val.i.4 = load i8, ptr %i.ab, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.ac = zext nneg i8 %.sroa.0.0.val.i.4 to i64, !dbg !19034
  %i.ad = icmp sgt i8 %.sroa.0.0.val.i.4, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.ad), !dbg !19045
  %i.ae = icmp ult i64 %3, %i.ac, !dbg !19046
  %i.af = or i1 %i.aa, %i.ae, !dbg !19047
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 5, !dbg !19048
  %.sroa.0.0.val.i.5 = load i8, ptr %i.ag, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.ah = zext nneg i8 %.sroa.0.0.val.i.5 to i64, !dbg !19034
  %i.ai = icmp sgt i8 %.sroa.0.0.val.i.5, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.ai), !dbg !19045
  %i.aj = icmp ult i64 %3, %i.ah, !dbg !19046
  %i.ak = or i1 %i.af, %i.aj, !dbg !19047
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 6, !dbg !19048
  %.sroa.0.0.val.i.6 = load i8, ptr %i.al, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.am = zext nneg i8 %.sroa.0.0.val.i.6 to i64, !dbg !19034
  %i.an = icmp sgt i8 %.sroa.0.0.val.i.6, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.an), !dbg !19045
  %i.ao = icmp ult i64 %3, %i.am, !dbg !19046
  %i.ap = or i1 %i.ak, %i.ao, !dbg !19047
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 7, !dbg !19048
  %.sroa.0.0.val.i.7 = load i8, ptr %i.aq, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.ar = zext nneg i8 %.sroa.0.0.val.i.7 to i64, !dbg !19034
  %i.as = icmp sgt i8 %.sroa.0.0.val.i.7, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.as), !dbg !19045
  %i.at = icmp ult i64 %3, %i.ar, !dbg !19046
  %i.au = or i1 %i.ap, %i.at, !dbg !19047         ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8, !dbg !19048 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8, !dbg !19028 ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter, !dbg !19028
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa, label %.lr.ph.i, !dbg !19028

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !19028
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i.epil.preheader, !dbg !19028

.lr.ph.i.epil.preheader:                          ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.04.i.epil.init = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.av, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa ]
  %.epil.init = phi i1 [ false, %.lr.ph.i.preheader ], [ %i.au, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0, !dbg !19028
  tail call void @llvm.assume(i1 %lcmp.mod24), !dbg !19028
  br label %.lr.ph.i.epil, !dbg !19028

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.04.i.epil = phi ptr [ %i.bb, %.lr.ph.i.epil ], [ %.sroa.0.04.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.aw = phi i1 [ %i.ba, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %.sroa.0.0.val.i.epil = load i8, ptr %.sroa.0.04.i.epil, align 1, !dbg !19029, !noalias !19030, !noundef !13 ; 2 uses
  %i.ax = zext nneg i8 %.sroa.0.0.val.i.epil to i64, !dbg !19034
  %i.ay = icmp sgt i8 %.sroa.0.0.val.i.epil, -1, !dbg !19045
  tail call void @llvm.assume(i1 %i.ay), !dbg !19045
  %i.az = icmp ult i64 %3, %i.ax, !dbg !19046
  %i.ba = or i1 %i.aw, %i.az, !dbg !19047         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.epil, i64 1, !dbg !19048
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !19028 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !19028
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit, label %.lr.ph.i.epil, !dbg !19028, !llvm.loop !19051

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %.lr.ph.i.epil, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa
  %.lcssa = phi i1 [ %i.au, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil ], !dbg !19047
  br i1 %.lcssa, label %.split, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvNtNtCs8774dFTUdNv_12polars_arrow5array13specification23check_indexes_uncheckedaE0ECs2g09Ig8GZd6_13polars_stream.exit.thread, !dbg !19052, !prof !19053
end_hunk_0

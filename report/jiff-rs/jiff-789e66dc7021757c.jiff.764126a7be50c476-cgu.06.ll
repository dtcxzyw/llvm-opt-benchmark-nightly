Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.06?download=true
inline.NumInlined: 211
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser5parse:bb.a
  %i.bf = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 11, i8 %i.bd) #18, !noalias !267
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.w:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.pre-phi43.i, i64 noundef %.sroa.13.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !248
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bg = add nsw i64 %.sroa.8117.0.lcssa.i, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.lcssa.i, i64 1
  store ptr %i.ay, ptr %.sroa.19, align 8, !alias.scope !248
  %.sroa.19.8..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 8
  store i32 %i.ba, ptr %.sroa.19.8..sroa_idx699, align 8
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit

bb.y:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !262
  call void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(6) @32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.13.0.i), !noalias !248
  %i.bi = load i32, ptr %i.c, align 8, !range !268, !noalias !262, !noundef !5 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !262, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !262
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.aa:                                            ; preds = %bb.y
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.499.0.copyload.i = load i32, ptr %.sroa.499.0..sroa_idx.i, align 4, !noalias !262
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5100.0.copyload.i = load ptr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !noalias !262
  %.sroa.6101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6101.0.copyload.i = load ptr, ptr %.sroa.6101.0..sroa_idx.i, align 8, !noalias !262, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.7102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7102.0.copyload.i = load i64, ptr %.sroa.7102.0..sroa_idx.i, align 8, !noalias !262 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %.not.i153.i = icmp eq i64 %.sroa.7102.0.copyload.i, 0
  br i1 %.not.i153.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bm = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 5, i8 undef) #18, !noalias !270
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.bn = load i8, ptr %.sroa.6101.0.copyload.i, align 1, !alias.scope !269, !noalias !248, !noundef !5 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 93
  br i1 %i.bo, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 11, i8 %i.bn) #18, !noalias !270
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.ae:                                            ; preds = %bb.ac
  %i.bq = add nsw i64 %.sroa.7102.0.copyload.i, -1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.copyload.i, i64 1
  store i32 %.sroa.499.0.copyload.i, ptr %.sroa.19, align 8, !alias.scope !248
  %.sroa.19.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 4
  store ptr %.sroa.5100.0.copyload.i, ptr %.sroa.19.4..sroa_idx, align 4, !alias.scope !248
  %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload.pre = load ptr, ptr %.sroa.19, align 8
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i: ; preds = %bb.ab, %bb.ad, %bb.v, %bb.t, %bb.l, %bb.o, %bb.f, %bb.i, %bb.z
  %.sroa.19.0..sroa.19.0..sroa.19.8. = phi ptr [ %i.bl, %bb.z ], [ %i.bc, %bb.t ], [ %i.m, %bb.f ], [ %i.af, %bb.l ], [ %i.q, %bb.i ], [ %i.aj, %bb.o ], [ %i.bf, %bb.v ], [ %i.bp, %bb.ad ], [ %i.bm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.8., ptr %i.bs, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.bc

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit: ; preds = %bb.ae, %bb.x, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i
  %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload = phi ptr [ %i.ay, %bb.x ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload.pre, %bb.ae ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.39.0 = phi i64 [ %i.bg, %bb.x ], [ %i.bq, %bb.ae ], [ %3, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.33.0 = phi ptr [ %i.bh, %bb.x ], [ %i.br, %bb.ae ], [ %2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.31.0 = phi i32 [ %i.bb, %bb.x ], [ undef, %bb.ae ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.1859.0 = phi i32 [ undef, %bb.x ], [ %i.bi, %bb.ae ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.ae ], [ 2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i ] ; 2 uses
  %.sroa.19.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 8
  %.sroa.19.8..sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56 = load i32, ptr %.sroa.19.8..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  %.not.i33213 = icmp eq i64 %.sroa.39.0, 0
  br i1 %.not.i33213, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit
  %.sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56378 = phi i32 [ %.sroa.19.8..sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56369, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.19.8..sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  %.sroa.0.0377 = phi i8 [ 2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.0.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  %.sroa.15.0376 = phi i8 [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.029.0.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  %.sroa.1859.0375 = phi i32 [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.1859.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  %.sroa.31.0374 = phi i32 [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.31.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  %.sroa.33.0373 = phi ptr [ %2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.33.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ]
  %.sroa.39.0372 = phi i64 [ %3, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.39.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ]
  %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload371 = phi ptr [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread360 ], [ %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit
  %.sroa.431.0215 = phi i64 [ %i.ei, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.39.0372, %.lr.ph.preheader ] ; 2 uses
  %.sroa.029.0214 = phi ptr [ %i.eh, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.33.0373, %.lr.ph.preheader ] ; 3 uses
  %i.bt = load i8, ptr %.sroa.029.0214, align 1, !alias.scope !271, !noundef !5
  %i.bu = icmp eq i8 %i.bt, 91
  br i1 %i.bu, label %bb.af, label %._crit_edge

bb.af:                                            ; preds = %.lr.ph
  %i.bv = add nsw i64 %.sroa.431.0215, -1         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.029.0214, i64 1 ; 2 uses
  %i.bx = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @22), !noalias !272 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0      ; 2 uses
  %.not42.not.i = icmp eq ptr %i.by, null         ; 3 uses
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %spec.select.i = select i1 %.not42.not.i, i64 %i.bv, i64 %i.bz ; 5 uses
  %spec.select43.i = select i1 %.not42.not.i, ptr %i.bw, ptr %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.not.i.i.i34 = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i.i.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ca = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 2, i8 undef) #18, !noalias !275
  br label %bb.bb

bb.ah:                                            ; preds = %bb.af
  %i.cb = load i8, ptr %spec.select43.i, align 1, !alias.scope !276, !noalias !272, !noundef !5 ; 3 uses
  %i.cc = icmp eq i8 %i.cb, 95
  %i.cd = add i8 %i.cb, -97
  %or.cond.i.i.i35 = icmp ult i8 %i.cd, 26
  %or.cond5.i.i.i36 = or i1 %i.cc, %or.cond.i.i.i35
  br i1 %or.cond5.i.i.i36, label %.preheader.i.i, label %bb.ai

.preheader.i.i:                                   ; preds = %bb.ah
  %.sroa.03.08.i.i38 = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 1 ; 2 uses
  %.sroa.56.09.i.i39 = add nsw i64 %spec.select.i, -1 ; 2 uses
  %.not.i1010.i.i40 = icmp eq i64 %.sroa.56.09.i.i39, 0
  br i1 %.not.i1010.i.i40, label %._crit_edge.i.i49, label %.lr.ph.preheader.i.i41

.lr.ph.preheader.i.i41:                           ; preds = %.preheader.i.i
  %scevgep.i.i42 = getelementptr i8, ptr %spec.select43.i, i64 %spec.select.i
  br label %.lr.ph.i.i43

bb.ai:                                            ; preds = %bb.ah
  %i.ce = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 8, i8 %i.cb) #18, !noalias !275
  br label %bb.bb

.lr.ph.i.i43:                                     ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i, %.lr.ph.preheader.i.i41
  %.sroa.56.012.i.i44 = phi i64 [ %.sroa.56.0.i.i47, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ], [ %.sroa.56.09.i.i39, %.lr.ph.preheader.i.i41 ] ; 2 uses
  %.sroa.03.011.i.i45 = phi ptr [ %.sroa.03.0.i.i46, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ], [ %.sroa.03.08.i.i38, %.lr.ph.preheader.i.i41 ] ; 3 uses
  %i.cf = load i8, ptr %.sroa.03.011.i.i45, align 1, !alias.scope !277, !noalias !272, !noundef !5 ; 3 uses
  switch i8 %i.cf, label %bb.aj [
    i8 95, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i
    i8 45, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i
  ]

bb.aj:                                            ; preds = %.lr.ph.i.i43
  %i.cg = add i8 %i.cf, -48
  %or.cond.i11.i.i = icmp ult i8 %i.cg, 10
  %i.ch = add i8 %i.cf, -97
  %or.cond2.i.i.i = icmp ult i8 %i.ch, 26
  %or.cond5.i12.i.i = or i1 %or.cond.i11.i.i, %or.cond2.i.i.i
  br i1 %or.cond5.i12.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i, label %._crit_edge.i.i49

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i: ; preds = %bb.aj, %.lr.ph.i.i43, %.lr.ph.i.i43
  %.sroa.03.0.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i.i45, i64 1
  %.sroa.56.0.i.i47 = add nsw i64 %.sroa.56.012.i.i44, -1 ; 2 uses
  %.not.i10.i.i48 = icmp eq i64 %.sroa.56.0.i.i47, 0
  br i1 %.not.i10.i.i48, label %._crit_edge.i.i49, label %.lr.ph.i.i43

._crit_edge.i.i49:                                ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i, %bb.aj, %.preheader.i.i
  %.sroa.03.0.lcssa.i.i50 = phi ptr [ %.sroa.03.08.i.i38, %.preheader.i.i ], [ %.sroa.03.011.i.i45, %bb.aj ], [ %scevgep.i.i42, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ] ; 5 uses
  %.sroa.56.0.lcssa.i.i51 = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.56.012.i.i44, %bb.aj ], [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ] ; 4 uses
  %i.ci = ptrtoint ptr %.sroa.03.0.lcssa.i.i50 to i64
  %i.cj = ptrtoint ptr %spec.select43.i to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  %.not.i.i52 = icmp ugt i64 %i.ck, %spec.select.i
  br i1 %.not.i.i52, label %bb.ak, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i, !prof !17

bb.ak:                                            ; preds = %._crit_edge.i.i49
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ck, i64 noundef range(i64 0, -9223372036854775808) %spec.select.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !278
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i: ; preds = %._crit_edge.i.i49
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i.i50) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %.not.i44.i = icmp eq i64 %.sroa.56.0.lcssa.i.i51, 0
  br i1 %.not.i44.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i
  %i.cl = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 3, i8 undef) #18, !noalias !280
  br label %bb.bb

bb.am:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i
  %i.cm = load i8, ptr %.sroa.03.0.lcssa.i.i50, align 1, !alias.scope !279, !noalias !272, !noundef !5 ; 2 uses
  switch i8 %i.cm, label %.loopexit [
    i8 61, label %bb.an
    i8 47, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.am
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %.loopexit.loopexit
  %.sroa.01.0.i.i = phi i8 [ 12, %.loopexit.loopexit ], [ 10, %bb.am ]
  %i.cn = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef %.sroa.01.0.i.i, i8 %i.cm) #18, !noalias !280
  br label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.co = add nsw i64 %.sroa.56.0.lcssa.i.i51, -1 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i50, i64 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %.not.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cq = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 4, i8 undef) #18, !noalias !284
  br label %bb.bb

bb.ap:                                            ; preds = %bb.an
  %i.cr = load i8, ptr %i.cp, align 1, !alias.scope !285, !noalias !272, !noundef !5 ; 3 uses
  %i.cs = add i8 %i.cr, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.cs, 10
  %i.ct = and i8 %i.cr, -33
  %i.cu = add i8 %i.ct, -65
  %i.cv = icmp ult i8 %i.cu, 26
  %or.cond7.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.cv
  br i1 %or.cond7.i.i.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i, label %bb.aq

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i: ; preds = %bb.ap
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i50, i64 %.sroa.56.0.lcssa.i.i51 ; 2 uses
  %.sroa.56.0.i.i.i580 = add nsw i64 %.sroa.56.0.lcssa.i.i51, -2 ; 3 uses
  %.not.i10.i.i.i581 = icmp eq i64 %.sroa.56.0.i.i.i580, 0
  br i1 %.not.i10.i.i.i581, label %._crit_edge585, label %.lr.ph584

bb.aq:                                            ; preds = %bb.ap
  %i.cw = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 9, i8 %i.cr) #18, !noalias !284
  br label %bb.bb

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i: ; preds = %.lr.ph584
  %.sroa.56.0.i.i.i = add nsw i64 %.sroa.56.0.i.i.i583, -1 ; 3 uses
  %.not.i10.i.i.i = icmp eq i64 %.sroa.56.0.i.i.i, 0
  br i1 %.not.i10.i.i.i, label %._crit_edge585, label %.lr.ph584

.lr.ph584:                                        ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i
  %.sroa.56.0.i.i.i583 = phi i64 [ %.sroa.56.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.56.0.i.i.i580, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ] ; 2 uses
  %.pn.i.i.i582 = phi ptr [ %.sroa.03.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %i.cp, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ]
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i582, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.sroa.03.0.i.i.i, align 1, !alias.scope !286, !noalias !272, !noundef !5 ; 2 uses
  %i.cy = add i8 %i.cx, -48
  %or.cond.i11.i.i.i = icmp ult i8 %i.cy, 10
  %i.cz = and i8 %i.cx, -33
  %i.da = add i8 %i.cz, -65
  %i.db = icmp ult i8 %i.da, 26
  %or.cond7.i12.i.i.i = or i1 %or.cond.i11.i.i.i, %i.db
  br i1 %or.cond7.i12.i.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i, label %._crit_edge585

._crit_edge585:                                   ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i, %.lr.ph584, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i
  %.sroa.56.0.i.i.i.lcssa = phi i64 [ %.sroa.56.0.i.i.i580, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ], [ %.sroa.56.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.56.0.i.i.i583, %.lr.ph584 ] ; 2 uses
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ], [ %scevgep.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %.lr.ph584 ] ; 4 uses
  %i.dc = ptrtoint ptr %.sroa.03.0.lcssa.i.i.i to i64
  %i.dd = ptrtoint ptr %i.cp to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %.not.i.i45.i = icmp ugt i64 %i.de, %i.co
  br i1 %.not.i.i45.i, label %bb.ar, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i, !prof !17

bb.ar:                                            ; preds = %._crit_edge585
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.de, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !287
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i: ; preds = %._crit_edge585
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i.i.i) ]
  %i.df = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i.i.i, i64 noundef %.sroa.56.0.i.i.i.lcssa, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @25), !noalias !288 ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %.not26.i.i = icmp eq ptr %i.dg, null
  br i1 %.not26.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i
  %i.dh = phi ptr [ %i.ea, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ], [ %i.dg, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ] ; 4 uses
  %i.di = phi { ptr, i64 } [ %i.dz, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ], [ %i.df, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ]
  %i.dj = extractvalue { ptr, i64 } %i.di, 1      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %.not.i.i22.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i22.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i46.i
  %i.dk = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 4, i8 undef) #18, !noalias !291
  br label %bb.bb

bb.at:                                            ; preds = %.lr.ph.i46.i
  %i.dl = load i8, ptr %i.dh, align 1, !alias.scope !292, !noalias !288, !noundef !5 ; 3 uses
  %i.dm = add i8 %i.dl, -48
  %or.cond.i.i23.i.i = icmp ult i8 %i.dm, 10
  %i.dn = and i8 %i.dl, -33
  %i.do = add i8 %i.dn, -65
  %i.dp = icmp ult i8 %i.do, 26
  %or.cond7.i.i24.i.i = or i1 %or.cond.i.i23.i.i, %i.dp
  br i1 %or.cond7.i.i24.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i, label %bb.au

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i: ; preds = %bb.at
  %scevgep.i27.i.i = getelementptr i8, ptr %i.dh, i64 %i.dj ; 2 uses
  %.sroa.56.0.i31.i.i589 = add nsw i64 %i.dj, -1  ; 3 uses
  %.not.i10.i32.i.i590 = icmp eq i64 %.sroa.56.0.i31.i.i589, 0
  br i1 %.not.i10.i32.i.i590, label %._crit_edge594, label %.lr.ph593

bb.au:                                            ; preds = %bb.at
  %i.dq = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 9, i8 %i.dl) #18, !noalias !291
  br label %bb.bb

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i: ; preds = %.lr.ph593
  %.sroa.56.0.i31.i.i = add nsw i64 %.sroa.56.0.i31.i.i592, -1 ; 3 uses
  %.not.i10.i32.i.i = icmp eq i64 %.sroa.56.0.i31.i.i, 0
  br i1 %.not.i10.i32.i.i, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i
  %.sroa.56.0.i31.i.i592 = phi i64 [ %.sroa.56.0.i31.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %.sroa.56.0.i31.i.i589, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ] ; 2 uses
  %.pn.i29.i.i591 = phi ptr [ %.sroa.03.0.i33.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %i.dh, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ]
  %.sroa.03.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn.i29.i.i591, i64 1 ; 3 uses
  %i.dr = load i8, ptr %.sroa.03.0.i33.i.i, align 1, !alias.scope !293, !noalias !288, !noundef !5 ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %or.cond.i11.i34.i.i = icmp ult i8 %i.ds, 10
  %i.dt = and i8 %i.dr, -33
  %i.du = add i8 %i.dt, -65
  %i.dv = icmp ult i8 %i.du, 26
  %or.cond7.i12.i35.i.i = or i1 %or.cond.i11.i34.i.i, %i.dv
  br i1 %or.cond7.i12.i35.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i, label %._crit_edge594

._crit_edge594:                                   ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i, %.lr.ph593, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i
  %.sroa.56.0.i31.i.i.lcssa = phi i64 [ %.sroa.56.0.i31.i.i589, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ], [ %.sroa.56.0.i31.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %.sroa.56.0.i31.i.i592, %.lr.ph593 ] ; 2 uses
  %.sroa.03.0.lcssa.i36.i.i = phi ptr [ %scevgep.i27.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ], [ %scevgep.i27.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %.sroa.03.0.i33.i.i, %.lr.ph593 ] ; 4 uses
  %i.dw = ptrtoint ptr %.sroa.03.0.lcssa.i36.i.i to i64
  %i.dx = ptrtoint ptr %i.dh to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %.not.i37.i.i = icmp ugt i64 %i.dy, %i.dj
  br i1 %.not.i37.i.i, label %bb.av, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i, !prof !17

bb.av:                                            ; preds = %._crit_edge594
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dy, i64 noundef range(i64 0, -9223372036854775808) %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !294
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i: ; preds = %._crit_edge594
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i36.i.i) ]
  %i.dz = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i36.i.i, i64 noundef %.sroa.56.0.i31.i.i.lcssa, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @25), !noalias !288 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %.not.i47.i = icmp eq ptr %i.ea, null
  br i1 %.not.i47.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i, label %.lr.ph.i46.i

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i: ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i
  %.sroa.73.0.i = phi i64 [ %.sroa.56.0.i.i.i.lcssa, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ], [ %.sroa.56.0.i31.i.i.lcssa, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.03.0.lcssa.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ], [ %.sroa.03.0.lcssa.i36.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %.not.i49.i = icmp eq i64 %.sroa.73.0.i, 0
  br i1 %.not.i49.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i
  %i.eb = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 1, i8 undef) #18, !noalias !296
  br label %bb.bb

bb.ax:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i
  %i.ec = load i8, ptr %.sroa.02.0.i, align 1, !alias.scope !295, !noalias !272, !noundef !5 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 93
  br i1 %i.ed, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ee = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 7, i8 %i.ec) #18, !noalias !296
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  br i1 %.not42.not.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ef = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 13, i8 undef) #18, !noalias !272
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ag, %bb.ao, %bb.ba, %bb.al, %bb.ai, %.loopexit, %bb.au, %bb.as, %bb.aq, %bb.ay, %bb.aw
  %.sroa.062.0.ph = phi ptr [ %i.eb, %bb.aw ], [ %i.ee, %bb.ay ], [ %i.dq, %bb.au ], [ %i.cw, %bb.aq ], [ %i.cq, %bb.ao ], [ %i.cn, %.loopexit ], [ %i.ce, %bb.ai ], [ %i.ef, %bb.ba ], [ %i.dk, %bb.as ], [ %i.cl, %bb.al ], [ %i.ca, %bb.ag ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.062.0.ph, ptr %i.eg, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.bc

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit: ; preds = %bb.az
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 1 ; 2 uses
  %i.ei = add nsw i64 %.sroa.73.0.i, -1           ; 2 uses
  %.not.i33 = icmp eq i64 %i.ei, 0
  br i1 %.not.i33, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit
  %.sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56359 = phi i32 [ %.sroa.19.8..sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ %.sroa.19.8..sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56352, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56378, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56378, %.lr.ph ]
  %.sroa.0.0358 = phi i8 [ %.sroa.0.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ 2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.0.0377, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.0.0377, %.lr.ph ]
  %.sroa.15.0357 = phi i8 [ %.sroa.029.0.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.15.0376, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.15.0376, %.lr.ph ]
  %.sroa.1859.0356 = phi i32 [ %.sroa.1859.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.1859.0375, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.1859.0375, %.lr.ph ]
  %.sroa.31.0355 = phi i32 [ %.sroa.31.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.31.0374, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.31.0374, %.lr.ph ]
  %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload354 = phi ptr [ %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ undef, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload371, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ], [ %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload371, %.lr.ph ]
  %.sroa.029.0.lcssa = phi ptr [ %.sroa.33.0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ %2, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.029.0214, %.lr.ph ], [ %i.eh, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ]
  %.sroa.431.0.lcssa = phi i64 [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit ], [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit.thread ], [ %.sroa.431.0215, %.lr.ph ], [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit ]
  store i8 %.sroa.0.0358, ptr %0, align 8
  %.sroa.012.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.15.0357, ptr %.sroa.012.sroa.4.0..sroa_idx, align 1
  %.sroa.012.sroa.4.sroa.5.0..sroa.012.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.1859.0356, ptr %.sroa.012.sroa.4.sroa.5.0..sroa.012.sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.012.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.8..sroa.515.0.copyload354, ptr %.sroa.012.sroa.5.0..sroa_idx, align 8
  %.sroa.012.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.19.8..sroa.19.8..sroa.19.16..sroa.616.0.copyload56359, ptr %.sroa.012.sroa.6.0..sroa_idx, align 8
  %.sroa.012.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.31.0355, ptr %.sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.029.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.431.0.lcssa, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge, %bb.bb, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheE3newB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !299
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !299
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !299
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !302
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !302
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner11CachedZonesE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !305
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !305
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !305
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner18ZoneInfoNamesInnerE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !308
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !308
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !308
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsa9sSWSfjDbm_4jiff4util2fs23last_modified_from_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [176 x i8], align 8               ; 7 uses
  %i.x = alloca [176 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RNvMs2_NtCsaL1QbXo9JQH_3std2fsNtB5_4File8metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %3)
  %i.y = load i64, ptr %i.w, align 8, !range !351, !noundef !5
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.x, ptr noundef nonnull align 8 dereferenceable(176) %i.w, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !range !18, !noundef !5 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  store i64 %i.ad, ptr %i.r, align 8
end_hunk_0

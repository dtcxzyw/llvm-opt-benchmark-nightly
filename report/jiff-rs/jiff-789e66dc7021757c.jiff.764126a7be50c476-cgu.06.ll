Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.06?download=true
inline.NumInlined: 211
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser5parse:bb.a
  %scevgep.i.i = getelementptr i8, ptr %.sroa.0.0.i, i64 %.sroa.13.0.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.56.012.i.i = phi i64 [ %.sroa.56.0.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i ], [ %.sroa.56.09.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.03.011.i.i = phi ptr [ %.sroa.03.0.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i ], [ %.sroa.03.08.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.r = load i8, ptr %.sroa.03.011.i.i, align 1, !alias.scope !194, !noalias !197, !noundef !7 ; 3 uses
  switch i8 %i.r, label %bb.j [
    i8 95, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i
    i8 46, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i
    i8 43, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i
    i8 45, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i
  ]

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.s = add i8 %i.r, -48
  %or.cond.i.i.i = icmp ult i8 %i.s, 10
  %i.t = and i8 %i.r, -33
  %i.u = add i8 %i.t, -65
  %i.v = icmp ult i8 %i.u, 26
  %or.cond7.i.i.i = or i1 %or.cond.i.i.i, %i.v
  br i1 %or.cond7.i.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i, label %._crit_edge.i.i

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i: ; preds = %bb.j, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %.sroa.03.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i.i, i64 1
  %.sroa.56.0.i.i = add nsw i64 %.sroa.56.012.i.i, -1 ; 2 uses
  %.not.i10.i.i = icmp eq i64 %.sroa.56.0.i.i, 0
  br i1 %.not.i10.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i, %bb.j, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i.i
  %.sroa.03.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i.i ], [ %.sroa.03.011.i.i, %bb.j ], [ %scevgep.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i ] ; 5 uses
  %.sroa.56.0.lcssa.i.i = phi i64 [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i.i ], [ %.sroa.56.012.i.i, %bb.j ], [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i.i ] ; 3 uses
  %i.w = ptrtoint ptr %.sroa.03.0.lcssa.i.i to i64
  %i.x = ptrtoint ptr %.sroa.0.0.i to i64         ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %.not.i.i = icmp ugt i64 %i.y, %.sroa.13.0.i
  br i1 %.not.i.i, label %bb.k, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i, !prof !199

bb.k:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) %.sroa.13.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !200
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i: ; preds = %._crit_edge.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i.i) ]
  %i.z = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i.i, i64 noundef %.sroa.56.0.lcssa.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 1), !noalias !178
  br i1 %i.z, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit.i
  %i.aa = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i.i, i64 noundef %.sroa.56.0.lcssa.i.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !178 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  %.not12531.i = icmp eq ptr %i.ab, null
  br i1 %.not12531.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i
  %i.ac = phi ptr [ %i.at, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i ], [ %i.ab, %.preheader.i ] ; 4 uses
  %i.ad = phi { ptr, i64 } [ %i.as, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i ], [ %i.aa, %.preheader.i ]
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %.not.i.i127.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i127.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.af = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 0, i8 undef) #18, !noalias !207
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.ag = load i8, ptr %i.ac, align 1, !alias.scope !210, !noalias !211, !noundef !7 ; 3 uses
  switch i8 %i.ag, label %bb.n [
    i8 95, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i
    i8 46, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.ah = and i8 %i.ag, -33
  %i.ai = add i8 %i.ah, -65
  %or.cond5.i.i150.i = icmp ult i8 %i.ai, 26
  br i1 %or.cond5.i.i150.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 6, i8 %i.ag) #18, !noalias !207
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i: ; preds = %bb.n, %bb.m, %bb.m
  %.sroa.03.08.i129.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %.sroa.56.09.i130.i = add nsw i64 %i.ae, -1     ; 2 uses
  %.not.i1010.i131.i = icmp eq i64 %.sroa.56.09.i130.i, 0
  br i1 %.not.i1010.i131.i, label %._crit_edge.i141.i, label %.lr.ph.preheader.i132.i

.lr.ph.preheader.i132.i:                          ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i
  %scevgep.i133.i = getelementptr i8, ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i134.i

.lr.ph.i134.i:                                    ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i, %.lr.ph.preheader.i132.i
  %.sroa.56.012.i135.i = phi i64 [ %.sroa.56.0.i139.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i ], [ %.sroa.56.09.i130.i, %.lr.ph.preheader.i132.i ] ; 2 uses
  %.sroa.03.011.i136.i = phi ptr [ %.sroa.03.0.i138.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i ], [ %.sroa.03.08.i129.i, %.lr.ph.preheader.i132.i ] ; 3 uses
  %i.ak = load i8, ptr %.sroa.03.011.i136.i, align 1, !alias.scope !212, !noalias !215, !noundef !7 ; 3 uses
  switch i8 %i.ak, label %bb.p [
    i8 95, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i
    i8 46, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i
    i8 43, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i
    i8 45, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i
  ]

bb.p:                                             ; preds = %.lr.ph.i134.i
  %i.al = add i8 %i.ak, -48
  %or.cond.i.i148.i = icmp ult i8 %i.al, 10
  %i.am = and i8 %i.ak, -33
  %i.an = add i8 %i.am, -65
  %i.ao = icmp ult i8 %i.an, 26
  %or.cond7.i.i149.i = or i1 %or.cond.i.i148.i, %i.ao
  br i1 %or.cond7.i.i149.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i, label %._crit_edge.i141.i

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i: ; preds = %bb.p, %.lr.ph.i134.i, %.lr.ph.i134.i, %.lr.ph.i134.i, %.lr.ph.i134.i
  %.sroa.03.0.i138.i = getelementptr inbounds nuw i8, ptr %.sroa.03.011.i136.i, i64 1
  %.sroa.56.0.i139.i = add nsw i64 %.sroa.56.012.i135.i, -1 ; 2 uses
  %.not.i10.i140.i = icmp eq i64 %.sroa.56.0.i139.i, 0
  br i1 %.not.i10.i140.i, label %._crit_edge.i141.i, label %.lr.ph.i134.i

._crit_edge.i141.i:                               ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i, %bb.p, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i
  %.sroa.03.0.lcssa.i142.i = phi ptr [ %.sroa.03.08.i129.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i ], [ %.sroa.03.011.i136.i, %bb.p ], [ %scevgep.i133.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i ] ; 4 uses
  %.sroa.56.0.lcssa.i143.i = phi i64 [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser32parse_tz_annotation_leading_char.exit.i128.i ], [ %.sroa.56.012.i135.i, %bb.p ], [ 0, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser24parse_tz_annotation_char.exit.i137.i ] ; 2 uses
  %i.ap = ptrtoint ptr %.sroa.03.0.lcssa.i142.i to i64 ; 2 uses
  %i.aq = ptrtoint ptr %i.ac to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %.not.i144.i = icmp ugt i64 %i.ar, %i.ae
  br i1 %.not.i144.i, label %bb.q, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i, !prof !199

bb.q:                                             ; preds = %._crit_edge.i141.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !217
  unreachable

._crit_edge.loopexit.i:                           ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i
  %.pre.i = sub i64 %i.ap, %i.x
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.pre-phi43.i = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.y, %.preheader.i ] ; 3 uses
  %.sroa.0112.0.lcssa.i = phi ptr [ %.sroa.03.0.lcssa.i142.i, %._crit_edge.loopexit.i ], [ %.sroa.03.0.lcssa.i.i, %.preheader.i ] ; 2 uses
  %.sroa.8117.0.lcssa.i = phi i64 [ %.sroa.56.0.lcssa.i143.i, %._crit_edge.loopexit.i ], [ %.sroa.56.0.lcssa.i.i, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !218
  %.not126.i = icmp ugt i64 %.pre-phi43.i, %.sroa.13.0.i
  br i1 %.not126.i, label %bb.w, label %bb.r, !prof !199

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.i: ; preds = %._crit_edge.i141.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i142.i) ]
  %i.as = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i142.i, i64 noundef %.sroa.56.0.lcssa.i143.i, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @28), !noalias !178 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 2 uses
  %.not125.i = icmp eq ptr %i.at, null
  br i1 %.not125.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

bb.r:                                             ; preds = %._crit_edge.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.pre-phi43.i), !noalias !178
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.au = load i64, ptr %i.b, align 8, !range !47, !alias.scope !219, !noalias !218, !noundef !7
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %bb.s, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsa9sSWSfjDbm_4jiff.exit.i, !prof !20

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !noalias !218
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #21, !noalias !223
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsa9sSWSfjDbm_4jiff.exit.i: ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !219, !noalias !218, !nonnull !7, !noundef !7 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ba = load i32, ptr %i.az, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bb = load i32, ptr %.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %.not.i55 = icmp eq i64 %.sroa.8117.0.lcssa.i, 0
  br i1 %.not.i55, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsa9sSWSfjDbm_4jiff.exit.i
  %i.bc = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 5, i8 undef) #18, !noalias !227
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.u:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCsa9sSWSfjDbm_4jiff.exit.i
  %i.bd = load i8, ptr %.sroa.0112.0.lcssa.i, align 1, !alias.scope !224, !noalias !229, !noundef !7 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 93
  br i1 %i.be, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 11, i8 %i.bd) #18, !noalias !227
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.w:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.pre-phi43.i, i64 noundef %.sroa.13.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !178
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.bg = add nsw i64 %.sroa.8117.0.lcssa.i, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0112.0.lcssa.i, i64 1
  store ptr %i.ay, ptr %.sroa.19, align 8, !alias.scope !178, !noalias !181
  %.sroa.19.8..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 8
  store i32 %i.ba, ptr %.sroa.19.8..sroa_idx699, align 8
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser26parse_time_zone_annotation.exit

bb.y:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  call void @_RNvMs3_NtNtCsa9sSWSfjDbm_4jiff3fmt6offsetNtB5_6Parser5parse(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(6) @32, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.13.0.i), !noalias !178
  %i.bi = load i32, ptr %i.c, align 8, !range !230, !noalias !218, !noundef !7 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !218, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.aa:                                            ; preds = %bb.y
  %.sroa.499.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.499.0.copyload.i = load i32, ptr %.sroa.499.0..sroa_idx.i, align 4, !noalias !218
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5100.0.copyload.i = load ptr, ptr %.sroa.5100.0..sroa_idx.i, align 8, !noalias !218
  %.sroa.6101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6101.0.copyload.i = load ptr, ptr %.sroa.6101.0..sroa_idx.i, align 8, !noalias !218, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.7102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7102.0.copyload.i = load i64, ptr %.sroa.7102.0..sroa_idx.i, align 8, !noalias !218 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %.not.i153.i = icmp eq i64 %.sroa.7102.0.copyload.i, 0
  br i1 %.not.i153.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bm = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 5, i8 undef) #18, !noalias !234
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.ac:                                            ; preds = %bb.aa
  %i.bn = load i8, ptr %.sroa.6101.0.copyload.i, align 1, !alias.scope !231, !noalias !236, !noundef !7 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 93
  br i1 %i.bo, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 11, i8 %i.bn) #18, !noalias !234
  br label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser29parse_tz_annotation_iana_name.exit152.thread.i

bb.ae:                                            ; preds = %bb.ac
  %i.bq = add nsw i64 %.sroa.7102.0.copyload.i, -1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.6101.0.copyload.i, i64 1
  store i32 %.sroa.499.0.copyload.i, ptr %.sroa.19, align 8, !alias.scope !178, !noalias !181
  %.sroa.19.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.19, i64 4
  store ptr %.sroa.5100.0.copyload.i, ptr %.sroa.19.4..sroa_idx, align 4, !alias.scope !178, !noalias !181
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
  %i.bt = load i8, ptr %.sroa.029.0214, align 1, !alias.scope !237, !noalias !240, !noundef !7
  %i.bu = icmp eq i8 %i.bt, 91
  br i1 %i.bu, label %bb.af, label %._crit_edge

bb.af:                                            ; preds = %.lr.ph
  %i.bv = add nsw i64 %.sroa.431.0215, -1         ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.029.0214, i64 1 ; 2 uses
  %i.bx = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 noundef %i.bv, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @22), !noalias !240 ; 2 uses
  %i.by = extractvalue { ptr, i64 } %i.bx, 0      ; 2 uses
  %.not42.not.i = icmp eq ptr %i.by, null         ; 3 uses
  %i.bz = extractvalue { ptr, i64 } %i.bx, 1
  %spec.select.i = select i1 %.not42.not.i, i64 %i.bv, i64 %i.bz ; 5 uses
  %spec.select43.i = select i1 %.not42.not.i, ptr %i.bw, ptr %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %.not.i.i.i34 = icmp eq i64 %spec.select.i, 0
  br i1 %.not.i.i.i34, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ca = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 2, i8 undef) #18, !noalias !248
  br label %bb.bb

bb.ah:                                            ; preds = %bb.af
  %i.cb = load i8, ptr %spec.select43.i, align 1, !alias.scope !251, !noalias !252, !noundef !7 ; 3 uses
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
  %i.ce = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 8, i8 %i.cb) #18, !noalias !248
  br label %bb.bb

.lr.ph.i.i43:                                     ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i, %.lr.ph.preheader.i.i41
  %.sroa.56.012.i.i44 = phi i64 [ %.sroa.56.0.i.i47, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ], [ %.sroa.56.09.i.i39, %.lr.ph.preheader.i.i41 ] ; 2 uses
  %.sroa.03.011.i.i45 = phi ptr [ %.sroa.03.0.i.i46, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser25parse_annotation_key_char.exit.i.i ], [ %.sroa.03.08.i.i38, %.lr.ph.preheader.i.i41 ] ; 3 uses
  %i.cf = load i8, ptr %.sroa.03.011.i.i45, align 1, !alias.scope !253, !noalias !256, !noundef !7 ; 3 uses
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
  br i1 %.not.i.i52, label %bb.ak, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i, !prof !199

bb.ak:                                            ; preds = %._crit_edge.i.i49
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ck, i64 noundef range(i64 0, -9223372036854775808) %spec.select.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !258
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i: ; preds = %._crit_edge.i.i49
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i.i50) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %.not.i44.i = icmp eq i64 %.sroa.56.0.lcssa.i.i51, 0
  br i1 %.not.i44.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i
  %i.cl = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 3, i8 undef) #18, !noalias !262
  br label %bb.bb

bb.am:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser20parse_annotation_key.exit.i
  %i.cm = load i8, ptr %.sroa.03.0.lcssa.i.i50, align 1, !alias.scope !259, !noalias !264, !noundef !7 ; 2 uses
  switch i8 %i.cm, label %.loopexit [
    i8 61, label %bb.an
    i8 47, label %.loopexit.loopexit
  ]

.loopexit.loopexit:                               ; preds = %bb.am
  br label %.loopexit

.loopexit:                                        ; preds = %bb.am, %.loopexit.loopexit
  %.sroa.01.0.i.i = phi i8 [ 12, %.loopexit.loopexit ], [ 10, %bb.am ]
  %i.cn = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef %.sroa.01.0.i.i, i8 %i.cm) #18, !noalias !262
  br label %bb.bb

bb.an:                                            ; preds = %bb.am
  %i.co = add nsw i64 %.sroa.56.0.lcssa.i.i51, -1 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i50, i64 1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %.not.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i.i.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cq = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 4, i8 undef) #18, !noalias !274
  br label %bb.bb

bb.ap:                                            ; preds = %bb.an
  %i.cr = load i8, ptr %i.cp, align 1, !alias.scope !278, !noalias !279, !noundef !7 ; 3 uses
  %i.cs = add i8 %i.cr, -48
  %or.cond.i.i.i.i = icmp ult i8 %i.cs, 10
  %i.ct = and i8 %i.cr, -33
  %i.cu = add i8 %i.ct, -65
  %i.cv = icmp ult i8 %i.cu, 26
  %or.cond7.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.cv
  br i1 %or.cond7.i.i.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i, label %bb.aq

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i: ; preds = %bb.ap
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.03.0.lcssa.i.i50, i64 %.sroa.56.0.lcssa.i.i51 ; 2 uses
  %.sroa.56.0.i.i.i580.a = add nsw i64 %.sroa.56.0.lcssa.i.i51, -2 ; 3 uses
  %.not.i10.i.i.i581 = icmp eq i64 %.sroa.56.0.i.i.i580.a, 0
  br i1 %.not.i10.i.i.i581, label %._crit_edge585, label %.lr.ph584

bb.aq:                                            ; preds = %bb.ap
  %i.cw = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 9, i8 %i.cr) #18, !noalias !274
  br label %bb.bb

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i: ; preds = %.lr.ph584
  %.sroa.56.0.i.i.i = add nsw i64 %.sroa.56.0.i.i.i583, -1 ; 3 uses
  %.not.i10.i.i.i = icmp eq i64 %.sroa.56.0.i.i.i, 0
  br i1 %.not.i10.i.i.i, label %._crit_edge585, label %.lr.ph584

.lr.ph584:                                        ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i
  %.sroa.56.0.i.i.i583 = phi i64 [ %.sroa.56.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.56.0.i.i.i580.a, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ] ; 2 uses
  %.pn.i.i.i582 = phi ptr [ %.sroa.03.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %i.cp, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ]
  %.sroa.03.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i582, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.sroa.03.0.i.i.i, align 1, !alias.scope !280, !noalias !283, !noundef !7 ; 2 uses
  %i.cy = add i8 %i.cx, -48
  %or.cond.i11.i.i.i = icmp ult i8 %i.cy, 10
  %i.cz = and i8 %i.cx, -33
  %i.da = add i8 %i.cz, -65
  %i.db = icmp ult i8 %i.da, 26
  %or.cond7.i12.i.i.i = or i1 %or.cond.i11.i.i.i, %i.db
  br i1 %or.cond7.i12.i.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i, label %._crit_edge585

._crit_edge585:                                   ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i, %.lr.ph584, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i
  %.sroa.56.0.i.i.i.lcssa = phi i64 [ %.sroa.56.0.i.i.i580.a, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ], [ %.sroa.56.0.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.56.0.i.i.i583, %.lr.ph584 ] ; 2 uses
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i.i.i ], [ %scevgep.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %.lr.ph584 ] ; 4 uses
  %i.dc = ptrtoint ptr %.sroa.03.0.lcssa.i.i.i to i64
  %i.dd = ptrtoint ptr %i.cp to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %.not.i.i45.i = icmp ugt i64 %i.de, %i.co
  br i1 %.not.i.i45.i, label %bb.ar, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i, !prof !199

bb.ar:                                            ; preds = %._crit_edge585
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.de, i64 noundef range(i64 0, -9223372036854775808) %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !285
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i: ; preds = %._crit_edge585
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i.i.i) ]
  %i.df = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i.i.i, i64 noundef %.sroa.56.0.i.i.i.lcssa, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @25), !noalias !286 ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %.not26.i.i = icmp eq ptr %i.dg, null
  br i1 %.not26.i.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i, label %.lr.ph.i46.i

.lr.ph.i46.i:                                     ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i
  %i.dh = phi ptr [ %i.ea, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ], [ %i.dg, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ] ; 4 uses
  %i.di = phi { ptr, i64 } [ %i.dz, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ], [ %i.df, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ]
  %i.dj = extractvalue { ptr, i64 } %i.di, 1      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %.not.i.i22.i.i = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i22.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i46.i
  %i.dk = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 4, i8 undef) #18, !noalias !293
  br label %bb.bb

bb.at:                                            ; preds = %.lr.ph.i46.i
  %i.dl = load i8, ptr %i.dh, align 1, !alias.scope !296, !noalias !297, !noundef !7 ; 3 uses
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
  %i.dq = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 9, i8 %i.dl) #18, !noalias !293
  br label %bb.bb

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i: ; preds = %.lr.ph593
  %.sroa.56.0.i31.i.i = add nsw i64 %.sroa.56.0.i31.i.i592, -1 ; 3 uses
  %.not.i10.i32.i.i = icmp eq i64 %.sroa.56.0.i31.i.i, 0
  br i1 %.not.i10.i32.i.i, label %._crit_edge594, label %.lr.ph593

.lr.ph593:                                        ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i
  %.sroa.56.0.i31.i.i592 = phi i64 [ %.sroa.56.0.i31.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %.sroa.56.0.i31.i.i589, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ] ; 2 uses
  %.pn.i29.i.i591 = phi ptr [ %.sroa.03.0.i33.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.i28.i.i ], [ %i.dh, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser27parse_annotation_value_char.exit.preheader.i26.i.i ]
  %.sroa.03.0.i33.i.i = getelementptr inbounds nuw i8, ptr %.pn.i29.i.i591, i64 1 ; 3 uses
  %i.dr = load i8, ptr %.sroa.03.0.i33.i.i, align 1, !alias.scope !298, !noalias !301, !noundef !7 ; 2 uses
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
  br i1 %.not.i37.i.i, label %bb.av, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i, !prof !199

bb.av:                                            ; preds = %._crit_edge594
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.dy, i64 noundef range(i64 0, -9223372036854775808) %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21, !noalias !303
  unreachable

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i: ; preds = %._crit_edge594
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.lcssa.i36.i.i) ]
  %i.dz = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj1_ECsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0.lcssa.i36.i.i, i64 noundef %.sroa.56.0.i31.i.i.lcssa, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @25), !noalias !286 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %.not.i47.i = icmp eq ptr %i.ea, null
  br i1 %.not.i47.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i, label %.lr.ph.i46.i

_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i: ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i
  %.sroa.73.0.i = phi i64 [ %.sroa.56.0.i.i.i.lcssa, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ], [ %.sroa.56.0.i31.i.i.lcssa, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %.sroa.03.0.lcssa.i.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit.i.i ], [ %.sroa.03.0.lcssa.i36.i.i, %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser22parse_annotation_value.exit41.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %.not.i49.i = icmp eq i64 %.sroa.73.0.i, 0
  br i1 %.not.i49.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i
  %i.eb = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 1, i8 undef) #18, !noalias !307
  br label %bb.bb

bb.ax:                                            ; preds = %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser23parse_annotation_values.exit.i
  %i.ec = load i8, ptr %.sroa.02.0.i, align 1, !alias.scope !304, !noalias !309, !noundef !7 ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 93
  br i1 %i.ed, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ee = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 7, i8 %i.ec) #18, !noalias !307
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  br i1 %.not42.not.i, label %_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser16parse_annotation.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ef = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt7rfc9557NtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 13, i8 undef) #18, !noalias !240
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

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtCsa9sSWSfjDbm_4jiff2tz6system5CacheE3newB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !310
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !310
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !310
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db12concatenated5inner11CachedZonesE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !313
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !313
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !313
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner11CachedZonesE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !316
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !316
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !316
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMsd_NtNtNtCsaL1QbXo9JQH_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtNtNtNtCsa9sSWSfjDbm_4jiff2tz2db8zoneinfo5inner18ZoneInfoNamesInnerE3newB1j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load atomic i8, ptr %i.a monotonic, align 8
  %.not = icmp ne i8 %i.b, 0
  %spec.select.i = zext i1 %.not to i64
  %.sink.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.c, align 8, !alias.scope !319
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !alias.scope !319
  store i64 %spec.select.i, ptr %0, align 8, !alias.scope !319
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
  %i.y = load i64, ptr %i.w, align 8, !range !322, !noundef !7
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.x, ptr noundef nonnull align 8 dereferenceable(176) %i.w, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMsm_NtCsaL1QbXo9JQH_3std2fsNtB5_8Metadata8modified(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !range !323, !noundef !7 ; 3 uses
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.ak, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i64, ptr %i.q, align 8, !noundef !7 ; 2 uses
  store i64 %i.ad, ptr %i.r, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.ab, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !324
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !324
  store i64 %i.ad, ptr %i.g, align 8, !noalias !330
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !330
  call void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 0, i32 noundef 0), !noalias !330
  %i.ag = load i64, ptr %i.f, align 8, !range !47, !noalias !330, !noundef !7
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !330, !noundef !7 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !range !331, !noalias !330, !noundef !7 ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aj, i32 noundef %i.al), !noalias !330
  %i.am = load i64, ptr %i.e, align 8, !range !47, !noalias !330, !noundef !7
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.p

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.aj, i32 noundef %i.al), !noalias !324
  %i.ap = load i64, ptr %i.h, align 8, !range !47, !alias.scope !327, !noalias !324, !noundef !7
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  br i1 %i.aq, label %bb.f, label %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i_crit_edge

._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i_crit_edge: ; preds = %bb.e
  %.pre = load i64, ptr %i.ar, align 8, !noalias !324
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre41 = load i32, ptr %.phi.trans.insert40, align 8, !noalias !324
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !327, !noalias !324, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !330
  store ptr %i.as, ptr %i.d, align 8, !noalias !330
  %i.at = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i unwind label %bb.g, !noalias !330

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = icmp eq ptr %i.as, null
  br i1 %i.av, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !332
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %common.resume unwind label %bb.j, !noalias !330

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !330
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.aj, %bb.aa, %bb.y, %bb.z, %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bc, %bb.l ], [ %i.au, %bb.g ], [ %i.au, %bb.i ], [ %i.au, %bb.h ], [ %i.bc, %bb.n ], [ %i.bc, %bb.m ], [ %i.ds, %bb.aq ], [ %i.da, %bb.aj ], [ %i.cg, %bb.aa ], [ %i.cg, %bb.y ], [ %i.cg, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i: ; preds = %bb.f
  %i.az = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.as, ptr noundef %i.at), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !330
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

end_hunk_0

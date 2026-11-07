Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.06?download=true
inline.NumInlined: 211
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs2_NtNtCsa9sSWSfjDbm_4jiff3fmt7rfc9557NtB5_6Parser5parse:bb.a

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
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
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
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.ab, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !352
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !352
  store i64 %i.ad, ptr %i.g, align 8, !noalias !354
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !354
  call void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, i64 noundef 0, i32 noundef 0), !noalias !354
  %i.ag = load i64, ptr %i.f, align 8, !range !10, !noalias !354, !noundef !5
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !354, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !range !355, !noalias !354, !noundef !5 ; 2 uses
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.aj, i32 noundef %i.al), !noalias !354
  %i.am = load i64, ptr %i.e, align 8, !range !10, !noalias !354, !noundef !5
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.p

bb.e:                                             ; preds = %bb.c
  call void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.aj, i32 noundef %i.al), !noalias !352
  %i.ap = load i64, ptr %i.h, align 8, !range !10, !noalias !352, !noundef !5
  %i.aq = trunc nuw i64 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i_crit_edge

._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i_crit_edge: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.a = load i64, ptr %.phi.trans.insert.i, align 8, !noalias !352
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre41 = load i32, ptr %.phi.trans.insert40, align 8, !noalias !352
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

bb.f:                                             ; preds = %bb.e
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ar = load ptr, ptr %4, align 8, !alias.scope !353, !noalias !352, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !354
  store ptr %i.ar, ptr %i.d, align 8, !noalias !354
  %i.as = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i unwind label %bb.g, !noalias !354

bb.g:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.au = icmp eq ptr %i.ar, null
  br i1 %i.au, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = atomicrmw add ptr %i.ar, i64 -1 release, align 8, !noalias !356
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %common.resume unwind label %bb.j, !noalias !354

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !354
  unreachable

common.resume:                                    ; preds = %bb.aq, %bb.aj, %bb.aa, %bb.y, %bb.z, %bb.g, %bb.h, %bb.i, %bb.l, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.at, %bb.g ], [ %i.at, %bb.i ], [ %i.at, %bb.h ], [ %i.bb, %bb.n ], [ %i.bb, %bb.m ], [ %i.dq, %bb.aq ], [ %i.cy, %bb.aj ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.y ], [ %i.ce, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i: ; preds = %bb.f
  %i.ay = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.ar, ptr noundef %i.as), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !354
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i

bb.k:                                             ; preds = %bb.d
  %i.az = load ptr, ptr %i.ao, align 8, !noalias !354, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !354
  store ptr %i.az, ptr %i.c, align 8, !noalias !354
  %i.ba = invoke noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error15signed_durationNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef 11)
          to label %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i unwind label %bb.l, !noalias !354

bb.l:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bc = icmp eq ptr %i.az, null
  br i1 %i.bc, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !357
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.n, label %common.resume

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %common.resume unwind label %bb.o, !noalias !354

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17, !noalias !354
  unreachable

_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i: ; preds = %bb.k
  %i.bg = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef %i.az, ptr noundef %i.ba), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !354
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i

bb.p:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.ao, align 8, !noalias !354, !noundef !5 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, -9223372036854775808
  br i1 %i.bi, label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread7.i, label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i, !prof !9

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread7.i: ; preds = %bb.p
  %i.bj = call fastcc noundef ptr @_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtNtNtBa_4util1b11BoundsErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_() #23
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i: ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bl = load i32, ptr %i.bk, align 8, !noalias !354, !noundef !5
  %i.bm = sub nsw i64 0, %i.bh
  %i.bn = sub i32 0, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  br label %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i: ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread7.i, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i
  %i.bo = phi ptr [ %i.bg, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit8.i.i ], [ %i.bj, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread7.i ], [ %i.ay, %_RNCINvXsk_NtCsa9sSWSfjDbm_4jiff5errorINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBa_15signed_duration14SignedDurationNtB8_5ErrorEINtB8_12ErrorContextB1b_B1P_E7contextNtNtB8_15signed_duration5ErrorE0Ba_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !352
  br label %bb.ab

_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i: ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i, %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i_crit_edge
  %i.bp = phi i32 [ %.pre41, %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i_crit_edge ], [ %i.bn, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i ] ; 7 uses
  %i.bq = phi i64 [ %.pre.a, %._RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i_crit_edge ], [ %i.bm, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.i ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !352
  %i.br = add i64 %i.bq, 377705023201
  %or.cond.i.i.i = icmp ult i64 %i.br, 631107230402
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i
  %i.bs = add i32 %i.bp, 999999999
  %or.cond1.i.i.i = icmp ult i32 %i.bs, 1999999999
  br i1 %or.cond1.i.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp eq i64 %i.bq, -377705023201
  %i.bu = icmp slt i32 %i.bp, 0
  %or.cond3.i.i.i = and i1 %i.bt, %i.bu
  br i1 %or.cond3.i.i.i, label %bb.v, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.bv = icmp eq i32 %i.bp, 0
  %i.bw = icmp eq i64 %i.bq, 0
  %or.cond5.i.i.i = or i1 %i.bw, %i.bv
  br i1 %or.cond5.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = call i64 @llvm.scmp.i64.i64(i64 %i.bq, i64 0)
  %i.by = call i64 @llvm.scmp.i64.i32(i32 %i.bp, i32 0)
  %i.bz = icmp eq i64 %i.bx, %i.by
  br i1 %i.bz, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = icmp slt i64 %i.bq, 0                   ; 2 uses
  %.sroa.07.0.v.i.i.i = select i1 %i.ca, i64 1, i64 -1
  %.sroa.07.0.i.i.i = add nsw i64 %.sroa.07.0.v.i.i.i, %i.bq
  %.sroa.021.0.v.i.i.i = select i1 %i.ca, i32 -1000000000, i32 1000000000
  %.sroa.021.0.i.i.i = add nsw i32 %.sroa.021.0.v.i.i.i, %i.bp
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i
  %.sroa.5.0.ph.i.i = phi i32 [ 7167, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread6.i ], [ 7167, %bb.r ], [ 5887, %bb.q ]
  %i.cb = call noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32 %.sroa.5.0.ph.i.i) #18, !noalias !358
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.10.0.ph = phi i32 [ %.sroa.021.0.i.i.i, %bb.u ], [ %i.bp, %bb.t ], [ %i.bp, %bb.s ]
  %.sroa.5.0.ph = phi i64 [ %.sroa.07.0.i.i.i, %bb.u ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.ph, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.10.0.ph, ptr %i.cd, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.x:                                             ; preds = %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa9sSWSfjDbm_4jiff.exit34, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.y:                                             ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.cf = load ptr, ptr %i.l, align 8, !alias.scope !361, !noundef !5 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = atomicrmw add ptr %i.cf, i64 -1 release, align 8, !noalias !362
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.aa, label %common.resume

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #18
          to label %common.resume unwind label %bb.ai

bb.ab:                                            ; preds = %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i, %bb.v
  %.sroa.5.0.in = phi ptr [ %i.bo, %_RNvMs0_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDuration12system_until.exit.thread.i ], [ %i.cb, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.5.0.in, ptr %i.l, align 8
  %i.cj = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ck = icmp ult i64 %i.cj, 6
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i64 %i.cj, 1
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %1, ptr %i.k, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %2, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.r, ptr %i.j, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsa_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.cn, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %i.l, ptr %i.co, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr @_RNvXs1_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @39, ptr %i.i, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 14, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @39, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 14, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @38, ptr %i.cs, align 8
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @36, ptr noundef nonnull %i.j, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.ag unwind label %bb.y

bb.ad:                                            ; preds = %bb.ab, %bb.ag
  %i.ct = phi ptr [ %.sroa.5.0.in, %bb.ab ], [ %.pr, %bb.ag ] ; 2 uses
  store i64 0, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit32, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cv = atomicrmw add ptr %i.ct, i64 -1 release, align 8, !noalias !365
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit32

bb.af:                                            ; preds = %bb.ae
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsa9sSWSfjDbm_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit32

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit32: ; preds = %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pr = load ptr, ptr %i.l, align 8, !alias.scope !366
  br label %bb.ad

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa9sSWSfjDbm_4jiff.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsa9sSWSfjDbm_4jiff5error5ErrorEBF_.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.x

bb.ai:                                            ; preds = %bb.aa, %bb.aj, %bb.aq
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aj:                                            ; preds = %bb.al
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %.val31 = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa9sSWSfjDbm_4jiff(ptr nonnull %.val31) #20
          to label %common.resume unwind label %bb.ai

bb.ak:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cz = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cz, ptr %i.p, align 8
  %i.da = load atomic i64, ptr @_RNvCs609xDM2Krl3_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.db = icmp ult i64 %i.da, 6
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp samesign ugt i64 %i.da, 1
  br i1 %i.dc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %1, ptr %i.o, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %2, ptr %i.dd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.o, ptr %i.n, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1b_NtCsaL1QbXo9JQH_3std4pathNtB6_7DisplayNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.p, ptr %i.de, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @39, ptr %i.m, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 14, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr @39, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 14, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr @41, ptr %i.di, align 8
  invoke void @_RINvNtCs609xDM2Krl3_3log13___private_api3loguNtB2_12GlobalLoggerECsa9sSWSfjDbm_4jiff(ptr noundef nonnull @40, ptr noundef nonnull %i.n, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m)
          to label %bb.ap unwind label %bb.aj

bb.am:                                            ; preds = %bb.ak, %bb.ap
  %.val30 = phi ptr [ %i.cz, %bb.ak ], [ %.val30.pre, %bb.ap ] ; 3 uses
  store i64 0, ptr %0, align 8
end_hunk_0
begin_hunk_1_@_RNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB4_10SpanParser14parse_duration3imp:bb.a
    i8 10, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34
    i8 13, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34
    i8 12, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34
  ]

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34: ; preds = %.lr.ph351, %.lr.ph351, %.lr.ph351, %.lr.ph351, %.lr.ph351
  %i.wm = add nsw i64 %.sroa.6.0.i.i349, -1       ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i350, i64 1
  %.not.i42.i = icmp eq i64 %i.wm, 0
  br i1 %.not.i42.i, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i.loopexit, label %.lr.ph351

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i.loopexit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34, %.lr.ph351
  %.sroa.6.0.i.i.lcssa.ph = phi i64 [ %.sroa.6.0.i.i349, %.lr.ph351 ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34 ]
  %.sroa.0.0.i41.i.lcssa.ph = phi ptr [ %.sroa.0.0.i41.i350, %.lr.ph351 ], [ %scevgep, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit34 ]
  %i.wo = freeze i64 %.sroa.6.0.i.i.lcssa.ph
  br label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i: ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i.loopexit, %.preheader
  %.sroa.6.0.i.i.lcssa = phi i64 [ 0, %.preheader ], [ %i.wo, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i.loopexit ] ; 6 uses
  %.sroa.0.0.i41.i.lcssa = phi ptr [ %.sroa.0.3.i.i, %.preheader ], [ %.sroa.0.0.i41.i.lcssa.ph, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i.loopexit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %invariant.umin356 = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i.i.lcssa, i64 21) ; 3 uses
  %exitcond457.not765 = icmp eq i64 %.sroa.6.0.i.i.lcssa, 0
  br i1 %exitcond457.not765, label %._crit_edge769, label %.lr.ph768

bb.gr:                                            ; preds = %bb.gv
  %i.wp = add nuw nsw i64 %.sroa.0.0.i9767, 1     ; 2 uses
  %exitcond457.not = icmp eq i64 %i.wp, %invariant.umin356
  br i1 %exitcond457.not, label %._crit_edge769, label %.lr.ph768

._crit_edge769:                                   ; preds = %bb.gr, %.lr.ph768, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i
  %.sroa.019.0.i.lcssa = phi i64 [ 0, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i ], [ %i.wz, %bb.gr ], [ %.sroa.019.0.i766, %.lr.ph768 ]
  %.sroa.0.0.i9.lcssa = phi i64 [ %invariant.umin356, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i ], [ %invariant.umin356, %bb.gr ], [ %.sroa.0.0.i9767, %.lr.ph768 ] ; 5 uses
  %i.wq = icmp eq i64 %.sroa.0.0.i9.lcssa, 0
  br i1 %i.wq, label %.thread185, label %bb.gt

.lr.ph768:                                        ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i, %bb.gr
  %.sroa.0.0.i9767 = phi i64 [ %i.wp, %bb.gr ], [ 0, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i ] ; 3 uses
  %.sroa.019.0.i766 = phi i64 [ %i.wz, %bb.gr ], [ 0, %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser25parse_optional_whitespace.exit.i ] ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.lcssa, i64 %.sroa.0.0.i9767
  %i.ws = load i8, ptr %i.wr, align 1, !alias.scope !565, !noalias !566, !noundef !5
  %i.wt = add i8 %i.ws, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.wt, 10
  br i1 %or.cond.i, label %bb.gs, label %._crit_edge769

bb.gs:                                            ; preds = %.lr.ph768
  %i.wu = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i766, i64 10) ; 2 uses
  %i.wv = extractvalue { i64, i1 } %i.wu, 1
  br i1 %i.wv, label %bb.gx, label %bb.gv, !prof !9

bb.gt:                                            ; preds = %._crit_edge769
  %i.ww = icmp samesign ugt i64 %.sroa.0.0.i9.lcssa, %.sroa.6.0.i.i.lcssa
  br i1 %i.ww, label %bb.gu, label %bb.gy, !prof !9

bb.gu:                                            ; preds = %bb.gt
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i9.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i.i.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i.i.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21, !noalias !567
  unreachable

bb.gv:                                            ; preds = %bb.gs
  %i.wx = extractvalue { i64, i1 } %i.wu, 0       ; 2 uses
  %i.wy = zext nneg i8 %i.wt to i64
  %i.wz = add i64 %i.wx, %i.wy                    ; 3 uses
  %i.xa = icmp ult i64 %i.wz, %i.wx
  br i1 %i.xa, label %bb.gx, label %bb.gr, !prof !9

bb.gw:                                            ; preds = %bb.gq
  %i.xb = extractvalue { i64, ptr } %i.wj, 1
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

bb.gx:                                            ; preds = %bb.gs, %bb.gv
  %i.xc = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #18, !noalias !566
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

bb.gy:                                            ; preds = %bb.gt
  %i.xd = sub nuw nsw i64 %.sroa.6.0.i.i.lcssa, %.sroa.0.0.i9.lcssa ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.lcssa, i64 %.sroa.0.0.i9.lcssa
  %.not.i89.i.i = icmp eq i64 %i.xd, 0
  br i1 %.not.i89.i.i, label %.thread155, label %bb.m

bb.gz:                                            ; preds = %.thread185
  %i.xf = call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8friendlyNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 4, i8 undef) #18, !noalias !554
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

bb.ha:                                            ; preds = %._crit_edge
  %i.xg = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8friendlyNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 2, i8 undef) #18, !noalias !545
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser20parse_duration_units.exit.i: ; preds = %bb.p, %.thread185
  %.sroa.14.0 = phi i64 [ %.sroa.16.3.i.i, %.thread185 ], [ %.sroa.829.0.copyload.i.i.i, %bb.p ] ; 3 uses
  %.sroa.049.0 = phi ptr [ %.sroa.0.3.i.i, %.thread185 ], [ %.sroa.7.0.copyload.i.i.i, %bb.p ] ; 3 uses
  %.not.i = icmp eq i64 %.sroa.14.0, 0
  br i1 %.not.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser20parse_duration_units.exit.i
  %.val.i36 = load i8, ptr %.sroa.049.0, align 1, !alias.scope !568, !noalias !569, !noundef !5
  switch i8 %.val.i36, label %bb.hc [
    i8 32, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
    i8 9, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
    i8 10, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
    i8 13, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
    i8 12, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
  ]

bb.hc:                                            ; preds = %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser20parse_duration_units.exit.i, %bb.hb
  %.not37.i = icmp eq i8 %.sroa.08.0.i, -2
  %..sroa.08.0.i = select i1 %.not37.i, i8 1, i8 %.sroa.08.0.i
  br label %bb.hf

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38: ; preds = %bb.hb, %bb.hb, %bb.hb, %bb.hb, %bb.hb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !546
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser17parse_suffix_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, i8 noundef %.sroa.08.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.049.0, i64 noundef %.sroa.14.0) #18
  %i.xh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.xi = load i8, ptr %i.xh, align 8, !range !20, !noalias !546, !noundef !5 ; 2 uses
  %i.xj = icmp eq i8 %i.xi, -2
  %i.xk = load ptr, ptr %i.f, align 8, !noalias !546, !noundef !5 ; 2 uses
  br i1 %i.xj, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !546
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

bb.he:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNvNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parser13is_whitespaceEB11_.exit38
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.423.0.copyload.i = load i64, ptr %.sroa.423.0..sroa_idx.i, align 8, !noalias !546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !546
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hc
  %i.xl = phi i8 [ %i.xi, %bb.he ], [ %..sroa.08.0.i, %bb.hc ] ; 2 uses
  %.sroa.029.0.i = phi ptr [ %i.xk, %bb.he ], [ %.sroa.049.0, %bb.hc ] ; 2 uses
  %.sroa.633.0.i = phi i64 [ %.sroa.423.0.copyload.i, %bb.he ], [ %.sroa.14.0, %bb.hc ] ; 3 uses
  store i8 %i.xl, ptr %i.k, align 1, !alias.scope !544
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !571
  %i.xm = load i32, ptr %i.i, align 8, !range !15, !alias.scope !572, !noundef !5
  %.not.i.i.i39 = icmp eq i32 %i.xm, 0
  br i1 %.not.i.i.i39, label %bb.hg, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, !prof !16

bb.hg:                                            ; preds = %bb.hf
  %.val.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xn = icmp ugt i64 %.val.i.i.i, 999
  br i1 %i.xn, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val.i.1.i.i = load i64, ptr %.ptr.1.i.i, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xo = icmp ugt i64 %.val.i.1.i.i, 999
  br i1 %i.xo, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.val.i.2.i.i = load i64, ptr %.ptr.2.i.i, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xp = icmp ugt i64 %.val.i.2.i.i, 999
  br i1 %i.xp, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.val.i.3.i.i = load i64, ptr %.ptr.3.i.i, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xq = icmp ugt i64 %.val.i.3.i.i, 999
  br i1 %i.xq, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.val.i.4.i.i = load i64, ptr %.ptr.4.i.i, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xr = icmp ugt i64 %.val.i.4.i.i, 999
  br i1 %i.xr, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.val.i.5.i.i = load i64, ptr %.ptr.5.i.i, align 8, !alias.scope !573, !noalias !574, !noundef !5 ; 2 uses
  %i.xs = icmp ugt i64 %.val.i.5.i.i, 999
  %i.xt = load i8, ptr %i.m, align 1, !range !22, !alias.scope !573
  %spec.select.i.i.i = icmp ugt i8 %i.xt, 5
  %or.cond.i.i = select i1 %i.xs, i1 true, i1 %spec.select.i.i.i, !prof !23
  br i1 %or.cond.i.i, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.thread.i, !prof !23

_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.thread.i: ; preds = %bb.hl
  %i.xu = trunc nuw nsw i64 %.val.i.2.i.i to i32
  %i.xv = trunc nuw nsw i64 %.val.i.1.i.i to i32
  %i.xw = trunc nuw nsw i64 %.val.i.i.i to i32
  %i.xx = mul nuw nsw i64 %.val.i.5.i.i, 3600
  %i.xy = mul nuw nsw i64 %.val.i.4.i.i, 60
  %i.xz = add nuw nsw i64 %i.xy, %.val.i.3.i.i
  %i.ya = add nuw nsw i64 %i.xz, %i.xx            ; 2 uses
  %i.yb = mul nuw nsw i32 %i.xu, 1000000
  %i.yc = mul nuw nsw i32 %i.xv, 1000
  %i.yd = add nuw nsw i32 %i.yc, %i.xw
  %i.ye = add nuw nsw i32 %i.yd, %i.yb            ; 2 uses
  %i.yf = load i8, ptr %i.n, align 8, !range !14, !alias.scope !572, !noundef !5
  %i.yg = trunc nuw i8 %i.yf to i1
  %i.yh = icmp eq i8 %i.xl, -1
  %or.cond.i.i.i41 = and i1 %i.yh, %i.yg          ; 2 uses
  %i.yi = sub nsw i64 0, %i.ya
  %i.yj = sub nsw i32 0, %i.ye
  %.sroa.4.0.i.i.i = select i1 %or.cond.i.i.i41, i32 %i.yj, i32 %i.ye
  %.sroa.0.0.i.i.i42 = select i1 %or.cond.i.i.i41, i64 %i.yi, i64 %i.ya
  br label %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit

_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i: ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.hh, %bb.hg, %bb.hf
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits26to_signed_duration_general(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i) #18, !noalias !575
  %.pre.i.a = load i64, ptr %i.b, align 8, !noalias !571
  %i.yk = trunc nuw i64 %.pre.i.a to i1
  %i.yl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.yk, label %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit.thread, label %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i._RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit_crit_edge

_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i._RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit_crit_edge: ; preds = %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i
  %.pre481 = load i64, ptr %i.yl, align 8, !noalias !571
  %.phi.trans.insert482 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre483 = load i32, ptr %.phi.trans.insert482, align 8, !noalias !571
  br label %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit

_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit.thread: ; preds = %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i
  %i.ym = load ptr, ptr %i.yl, align 8, !noalias !571, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !571
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit: ; preds = %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.thread.i, %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i._RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit_crit_edge
  %i.yn = phi i32 [ %.pre483, %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i._RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit_crit_edge ], [ %.sroa.4.0.i.i.i, %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.thread.i ] ; 2 uses
  %i.yo = phi i64 [ %.pre481, %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.i._RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit_crit_edge ], [ %.sroa.0.0.i.i.i42, %_RNCNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB6_10SpanParser14parse_duration3imp0Bc_.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !571
  %i.yp = inttoptr i64 %.sroa.633.0.i to ptr
  store ptr %.sroa.029.0.i, ptr %i.h, align 8
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.yp, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.8.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 %i.yo, ptr %.sroa.8.0..sroa_idx6, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %i.yn, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx6.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.yq = icmp eq i64 %.sroa.633.0.i, 0
  br i1 %i.yq, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !577
  call void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB2_5Error15into_full_error(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull readonly %.sroa.8.0..sroa_idx6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.029.0.i, i64 noundef %.sroa.633.0.i), !noalias !576
  %i.yr = call noundef ptr @_RNvXs0_NtNtCsa9sSWSfjDbm_4jiff5error3fmtNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) #18, !noalias !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !577
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

bb.hn:                                            ; preds = %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit
  %i.ys = inttoptr i64 %i.yo to ptr
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.yn, ptr %i.yt, align 8, !alias.scope !576
  br label %_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit

_RNvMs_NtCsa9sSWSfjDbm_4jiff3fmtINtB4_6ParsedNtNtB6_15signed_duration14SignedDurationE9into_fullB6_.exit: ; preds = %bb.hn, %bb.hm, %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit.thread, %bb.gx, %bb.gz, %bb.q, %bb.gw, %bb.go, %bb.gm, %.thread155, %bb.gf, %bb.o, %bb.b, %bb.k, %bb.hd, %bb.ha
  %.sink661.sink = phi ptr [ %i.at, %bb.o ], [ %i.ym, %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit.thread ], [ %i.xg, %bb.ha ], [ %i.xk, %bb.hd ], [ %i.p, %bb.b ], [ %i.ai, %bb.k ], [ %i.xc, %bb.gx ], [ %i.xf, %bb.gz ], [ %i.az, %bb.q ], [ %i.xb, %bb.gw ], [ %i.wd, %bb.go ], [ %i.wb, %bb.gm ], [ %i.vs, %.thread155 ], [ %.sroa.567.0.copyload.i.i.pre, %bb.gf ], [ %i.ys, %bb.hn ], [ %i.yr, %bb.hm ]
  %.sink = phi i64 [ 1, %bb.o ], [ 1, %_RINvMNtCsa9sSWSfjDbm_4jiff3fmtINtB3_6ParseduE8and_thenNtNtB5_15signed_duration14SignedDurationNCNvNvMNtNtB3_8friendly6parserNtB1B_10SpanParser14parse_duration3imp0EB5_.exit.thread ], [ 1, %bb.ha ], [ 1, %bb.hd ], [ 1, %bb.b ], [ 1, %bb.k ], [ 1, %bb.gx ], [ 1, %bb.gz ], [ 1, %bb.q ], [ 1, %bb.gw ], [ 1, %bb.go ], [ 1, %bb.gm ], [ 1, %.thread155 ], [ 1, %bb.gf ], [ 0, %bb.hn ], [ 1, %bb.hm ]
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink661.sink, ptr %i.yu, align 8
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB4_10SpanParser23parse_unsigned_duration3imp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [96 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  call void @_RNvXsV_NtCs3oUPovFnLWP_4core5arrayAyja_NtNtB7_7default7Default7defaultCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.l)
  store i32 0, ptr %i.k, align 8, !alias.scope !640
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 89
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 90 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 91 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 3 uses
  store <4 x i8> <i8 0, i8 0, i8 -1, i8 -1>, ptr %i.p, align 8, !alias.scope !640
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.q = icmp eq i64 %3, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = tail call noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error3fmt8friendlyNtB8_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB4_5ErrorE4from(i8 noundef 0, i8 undef) #18, !noalias !642
  br label %bb.hr

bb.c:                                             ; preds = %bb.a
  %.val = load i8, ptr %2, align 1, !noundef !5
  %i.s = add i8 %.val, -43
  %switch.and.i.i = and i8 %i.s, -3
  %switch.selectcmp.i.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !643
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser17parse_prefix_sign(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #18
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !20, !noalias !643, !noundef !5
  %i.v = load ptr, ptr %i.h, align 8, !noalias !643, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noalias !643, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !643
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.08.0.i = phi i8 [ %i.u, %bb.d ], [ -2, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ %i.x, %bb.d ], [ %3, %bb.c ] ; 6 uses
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.d ], [ %2, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %invariant.umin = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0.i, i64 21) ; 3 uses
  %exitcond.not766 = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %exitcond.not766, label %._crit_edge, label %.lr.ph769

bb.f:                                             ; preds = %bb.j
  %i.y = add nuw nsw i64 %.sroa.0.0.i19768, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %invariant.umin
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph769

._crit_edge:                                      ; preds = %bb.f, %.lr.ph769, %bb.e
  %.sroa.019.0.i18.lcssa = phi i64 [ 0, %bb.e ], [ %i.ai, %bb.f ], [ %.sroa.019.0.i18767, %.lr.ph769 ]
  %.sroa.0.0.i19.lcssa = phi i64 [ %invariant.umin, %bb.e ], [ %invariant.umin, %bb.f ], [ %.sroa.0.0.i19768, %.lr.ph769 ] ; 5 uses
  %i.z = icmp eq i64 %.sroa.0.0.i19.lcssa, 0
  br i1 %i.z, label %bb.ha, label %bb.h

.lr.ph769:                                        ; preds = %bb.e, %bb.f
  %.sroa.0.0.i19768 = phi i64 [ %i.y, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %.sroa.019.0.i18767 = phi i64 [ %i.ai, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.0.i19768
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !644, !noalias !645, !noundef !5
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %or.cond.i26 = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i26, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph769
  %i.ad = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.019.0.i18767, i64 10) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.k, label %bb.j, !prof !9

bb.h:                                             ; preds = %._crit_edge
  %i.af = icmp samesign ugt i64 %.sroa.0.0.i19.lcssa, %.sroa.6.0.i
  br i1 %i.af, label %bb.i, label %bb.l, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0.i19.lcssa, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.6.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21, !noalias !646
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.ag = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ah = zext nneg i8 %i.ac to i64
  %i.ai = add i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = icmp ult i64 %i.ai, %i.ag
  br i1 %i.aj, label %bb.k, label %bb.f, !prof !9

bb.k:                                             ; preds = %bb.g, %bb.j
  %i.ak = tail call noundef ptr @_RNvXs1_NtNtCsa9sSWSfjDbm_4jiff5error4utilNtB7_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ParseIntErrorE4from(i8 noundef 2, i8 0) #18, !noalias !645
  br label %bb.hr

bb.l:                                             ; preds = %bb.h
  %i.al = sub nuw nsw i64 %.sroa.6.0.i, %.sroa.0.0.i19.lcssa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %.sroa.5.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.not.i89.i.i784 = icmp eq i64 %i.al, 0
  br i1 %.not.i89.i.i784, label %.thread170, label %.lr.ph789

.lr.ph789:                                        ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.0.0.i19.lcssa
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph789, %bb.gy
  %.sroa.0.0.i.i787 = phi ptr [ %i.an, %.lr.ph789 ], [ %i.xg, %bb.gy ] ; 6 uses
  %.sroa.16.0.i.i786 = phi i64 [ %i.al, %.lr.ph789 ], [ %i.xf, %bb.gy ] ; 4 uses
  %.sroa.017.0.i.i785 = phi i64 [ %.sroa.019.0.i18.lcssa, %.lr.ph789 ], [ %.sroa.019.0.i.lcssa, %bb.gy ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.ao = load i8, ptr %.sroa.0.0.i.i787, align 1, !alias.scope !648, !noalias !649, !noundef !5 ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 58
  br i1 %i.ap, label %bb.n, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtBY_10SpanParser20parse_duration_units0EB14_.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i64 %.sroa.16.0.i.i786, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i787, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !650
  call fastcc void @_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser9parse_hms(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.aq, i64 noundef %.sroa.017.0.i.i785) #18
  %i.as = load i32, ptr %i.d, align 8, !range !21, !noalias !650, !noundef !5 ; 2 uses
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !650, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !650
  br label %bb.hr

bb.p:                                             ; preds = %bb.n
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.426.0.copyload.i.i.i = load i32, ptr %.sroa.426.0..sroa_idx.i.i.i, align 4, !noalias !650
  %.sroa.527.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.527.0.copyload.i.i.i = load ptr, ptr %.sroa.527.0..sroa_idx.i.i.i, align 8, !noalias !650
  %.sroa.628.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.628.i.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx.i.i.i, align 8, !noalias !650
  %.sroa.628.i.i.i.sroa.4.0..sroa.628.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.628.i.i.i.sroa.4.0.copyload = load i64, ptr %.sroa.628.i.i.i.sroa.4.0..sroa.628.0..sroa_idx.i.i.i.sroa_idx, align 8, !noalias !650
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !650, !nonnull !5, !noundef !5
  %.sroa.829.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.829.0.copyload.i.i.i = load i64, ptr %.sroa.829.0..sroa_idx.i.i.i, align 8, !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !650
  %i.aw = ptrtoint ptr %.sroa.527.0.copyload.i.i.i to i64
  %i.ax = call { i64, ptr } @_RNvMNtNtCsa9sSWSfjDbm_4jiff3fmt4utilNtB2_13DurationUnits7set_hms(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.k, i64 noundef %i.aw, i64 noundef %.sroa.628.i.i.i.sroa.0.0.copyload, i64 noundef %.sroa.628.i.i.i.sroa.4.0.copyload, i32 noundef %i.as, i32 %.sroa.426.0.copyload.i.i.i), !noalias !651 ; 2 uses
  %i.ay = extractvalue { i64, ptr } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.q, label %_RNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtB2_10SpanParser20parse_duration_units.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRhE6map_orbNCNvMNtNtNtCsa9sSWSfjDbm_4jiff3fmt8friendly6parserNtBY_10SpanParser20parse_duration_units0EB14_.exit: ; preds = %bb.m
  %i.ba = and i8 %i.ao, -3
end_hunk_1

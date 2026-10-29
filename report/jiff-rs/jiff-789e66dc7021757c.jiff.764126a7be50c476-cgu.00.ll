Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff-789e66dc7021757c.jiff.764126a7be50c476-cgu.00?download=true
inline.NumInlined: 734
inline.NumDeleted: 227
begin_hunk_0_@_RNvXs1c_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSetNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt:bb.a
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff, ptr %.sroa.437.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @74, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.r, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit
  %i.s = call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 2) #25
  br i1 %i.s, label %.loopexit, label %switch.lookup

bb.e:                                             ; preds = %switch.lookup
  %i.t = add i32 %.sroa.02.080, 1                 ; 2 uses
  %i.u = zext nneg i8 %switch.offset.i to i16
  %i.v = shl nuw nsw i16 1, %i.u
  %i.w = xor i16 %i.v, -1
  %i.x = and i16 %.sroa.09.079, %i.w              ; 2 uses
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread, label %bb.c

_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread.thread: ; preds = %bb.b, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread
  %i.z = call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 3) #25
  br i1 %i.z, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %switch.lookup, %bb.d, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread.thread, %bb.a, %bb.f
  %.sroa.0.1 = phi i1 [ %i.aa, %bb.f ], [ true, %bb.a ], [ true, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread.thread ], [ true, %bb.d ], [ true, %switch.lookup ]
  ret i1 %.sroa.0.1

bb.f:                                             ; preds = %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread.thread, %_RNvMs1b_NtCsa9sSWSfjDbm_4jiff4spanNtB6_7UnitSet12largest_unit.exit.thread
  %i.aa = call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 1) #25
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCsa9sSWSfjDbm_4jiff4span4UnitNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615)
  %i.b = load i8, ptr %i.a, align 1, !range !10, !alias.scope !1615, !noundef !5 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.85, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext), !noalias !1615
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !10, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1y_NtCsa9sSWSfjDbm_4jiff4spanNtB6_4UnitNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt.85, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXsi_NtCsa9sSWSfjDbm_4jiff4spanRNtB5_13SpanFieldwiseINtNtCs3oUPovFnLWP_4core3cmp9PartialEqBw_E2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !19, !noundef !5 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !18, !alias.scope !1619, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load i8, ptr %i.d, align 4, !range !18, !alias.scope !1620, !noundef !5
  %i.f = icmp eq i8 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.h = load i16, ptr %i.g, align 2, !alias.scope !1619, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.j = load i16, ptr %i.i, align 2, !alias.scope !1620, !noundef !5
  %i.k = icmp eq i16 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !1619, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !alias.scope !1620, !noundef !5
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.d, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.r = load i32, ptr %i.q, align 4, !alias.scope !1619, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !1620, !noundef !5
  %i.u = icmp eq i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !1619, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !alias.scope !1620, !noundef !5
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !1619, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !1620, !noundef !5
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.a, align 8, !alias.scope !1619, !noundef !5
  %i.ag = load i64, ptr %1, align 8, !alias.scope !1620, !noundef !5
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1619, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !1620, !noundef !5
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !1619, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1620, !noundef !5
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !1619, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1620, !noundef !5
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %bb.k, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !1619, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1620, !noundef !5
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i1 [ %i.bb, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsj_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseINtNtCs3oUPovFnLWP_4core3cmp9PartialEqNtB5_4SpanE2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #6 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 58
  %.sroa.122.0.copyload = load i16, ptr %.sroa.122.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !18, !alias.scope !1626, !noalias !1627, !noundef !5
  %i.c = icmp eq i8 %i.b, %.sroa.13.0.copyload
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %i.e, %.sroa.122.0.copyload
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load <4 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = load <4 x i32>, ptr %i.g, align 8
  %i.j = icmp eq <4 x i32> %i.i, %i.h
  %i.k = load i64, ptr %0, align 8
  %i.l = icmp eq i64 %i.k, %.sroa.01.0.copyload
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, %.sroa.4.0.copyload
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, %.sroa.5.0.copyload
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, %.sroa.6.0.copyload
  %i.v = freeze <4 x i1> %i.j
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  %.fr = freeze i1 %i.l
  %op.rdx = and i1 %i.x, %.fr
  %2 = freeze i1 %i.o
  %3 = freeze i1 %i.u
  %4 = and i1 %op.rdx, %2
  %.fr33 = freeze i1 %i.r
  %op.rdx30 = and i1 %4, %.fr33
  %5 = and i1 %i.c, %3
  %i.y = select i1 %op.rdx30, i1 %5, i1 false
  %op.rdx32 = select i1 %i.y, i1 %i.f, i1 false
  br i1 %op.rdx32, label %bb.b, label %_RNvXsi_NtCsa9sSWSfjDbm_4jiff4spanRNtB5_13SpanFieldwiseINtNtCs3oUPovFnLWP_4core3cmp9PartialEqBw_E2eq.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1626, !noalias !1627, !noundef !5
  %i.ab = icmp eq i64 %i.aa, %.sroa.7.0.copyload
  br label %_RNvXsi_NtCsa9sSWSfjDbm_4jiff4spanRNtB5_13SpanFieldwiseINtNtCs3oUPovFnLWP_4core3cmp9PartialEqBw_E2eq.exit

_RNvXsi_NtCsa9sSWSfjDbm_4jiff4spanRNtB5_13SpanFieldwiseINtNtCs3oUPovFnLWP_4core3cmp9PartialEqBw_E2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.ab, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvXsk_NtCsa9sSWSfjDbm_4jiff4spanNtB5_4SpanINtNtCs3oUPovFnLWP_4core3cmp9PartialEqNtB5_13SpanFieldwiseE2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #6 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 58
  %.sroa.121.0.copyload = load i16, ptr %.sroa.121.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !18, !alias.scope !1630, !noundef !5
  %i.c = icmp eq i8 %.sroa.13.0.copyload, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.e = load i16, ptr %i.d, align 2
  %i.f = icmp eq i16 %.sroa.121.0.copyload, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load <4 x i32>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = load <4 x i32>, ptr %i.g, align 8
  %i.j = icmp eq <4 x i32> %i.h, %i.i
  %i.k = load i64, ptr %1, align 8
  %i.l = icmp eq i64 %.sroa.0.0.copyload, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %.sroa.4.0.copyload, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %.sroa.5.0.copyload, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %.sroa.6.0.copyload, %i.t
  %i.v = freeze <4 x i1> %i.j
  %i.w = bitcast <4 x i1> %i.v to i4
  %i.x = icmp eq i4 %i.w, -1
  %.fr = freeze i1 %i.l
  %op.rdx = and i1 %i.x, %.fr
  %2 = freeze i1 %i.o
  %3 = freeze i1 %i.u
  %4 = and i1 %op.rdx, %2
  %.fr32 = freeze i1 %i.r
  %op.rdx29 = and i1 %4, %.fr32
  %5 = and i1 %i.c, %3
  %i.y = select i1 %op.rdx29, i1 %5, i1 false
  %op.rdx31 = select i1 %i.y, i1 %i.f, i1 false
  br i1 %op.rdx31, label %bb.b, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1630, !noundef !5
  %i.ab = icmp eq i64 %.sroa.7.0.copyload, %i.aa
  br label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.ab, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXsl_NtCsa9sSWSfjDbm_4jiff4spanRNtB5_4SpanINtNtCs3oUPovFnLWP_4core3cmp9PartialEqNtB5_13SpanFieldwiseE2eq(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !19, !noundef !5 ; 8 uses
  %.sroa.02.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.43.0.copyload = load i64, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.65.0.copyload = load i64, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.1312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %.sroa.1312.0.copyload = load i16, ptr %.sroa.1312.0..sroa_idx, align 2
  %.sroa.1413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.sroa.1413.0.copyload = load i8, ptr %.sroa.1413.0..sroa_idx, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.c = load i8, ptr %i.b, align 4, !range !18, !alias.scope !1633, !noundef !5
  %i.d = icmp eq i8 %.sroa.1413.0.copyload, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %.sroa.1312.0.copyload, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load <4 x i32>, ptr %.sroa.87.0..sroa_idx, align 8
  %i.j = load <4 x i32>, ptr %i.h, align 8
  %i.k = icmp eq <4 x i32> %i.i, %i.j
  %i.l = load i64, ptr %1, align 8
  %i.m = icmp eq i64 %.sroa.02.0.copyload, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %.sroa.43.0.copyload, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %.sroa.54.0.copyload, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %.sroa.65.0.copyload, %i.u
  %i.w = freeze <4 x i1> %i.k
  %i.x = bitcast <4 x i1> %i.w to i4
  %i.y = icmp eq i4 %i.x, -1
  %.fr = freeze i1 %i.m
  %op.rdx = and i1 %i.y, %.fr
  %2 = freeze i1 %i.p
  %3 = freeze i1 %i.v
  %4 = and i1 %op.rdx, %2
  %.fr44 = freeze i1 %i.s
  %op.rdx41 = and i1 %4, %.fr44
  %5 = and i1 %i.d, %3
  %i.z = select i1 %op.rdx41, i1 %5, i1 false
  %op.rdx43 = select i1 %i.z, i1 %i.g, i1 false
  br i1 %op.rdx43, label %bb.b, label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.76.0.copyload = load i64, ptr %.sroa.76.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1633, !noundef !5
  %i.ac = icmp eq i64 %.sroa.76.0.copyload, %i.ab
  br label %_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit

_RNvXsh_NtCsa9sSWSfjDbm_4jiff4spanNtB5_13SpanFieldwiseNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.ac, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff4util1bNtNtB6_5error5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_11BoundsErrorE4from(i8 noundef range(i8 0, 52)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsS_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_10SpanMonthsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs10_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanMinutesNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs12_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_11SpanSecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs1g_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_13UnixEpochDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs1a_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_15SpanNanosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs16_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_16SpanMicrosecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXs14_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB6_16SpanMillisecondsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsW_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_8SpanDaysNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsY_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanHoursNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsU_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanWeeksNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 52) i8 @_RNvXsQ_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB5_9SpanYearsNtNtCsb09rMIQFAXO_9jiff_core6bounds6Bounds5error() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error8durationNtB4_5ErrorNtB6_9IntoError10into_error(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error12context_impl(ptr noundef, ptr noundef) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error4spanNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 12), i8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 18)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error9timestampNtB4_5ErrorNtB6_9IntoError10into_error(i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtNtCsa9sSWSfjDbm_4jiff5error2tz6offsetNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff5error5civilNtB4_5ErrorNtB6_9IntoError10into_error(i8 noundef range(i8 0, 10)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtNtCsa9sSWSfjDbm_4jiff4util1bNtB4_11BoundsErrorNtNtB8_5error9IntoError10into_error(i8 noundef range(i8 0, 52)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #13

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCsa9sSWSfjDbm_4jiff5errorNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCsa9sSWSfjDbm_4jiff15signed_durationNtB5_14SignedDurationINtNtCs3oUPovFnLWP_4core7convert7TryFromNtNtB17_4time8DurationE8try_from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvMs_NtCsa9sSWSfjDbm_4jiff5errorNtB4_5Error11jcore_range(i32) unnamed_addr #12

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error9timestampNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i1 noundef zeroext) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone22to_ambiguous_timestamp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone22to_ambiguous_timestamp(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 4 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif5queryNtB4_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs0_NtNtCsb09rMIQFAXO_9jiff_core2tz5posixNtB5_8TimeZone9to_offset(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i8, i16 } @_RNvNtNtCsa9sSWSfjDbm_4jiff5civil4date21month_add_overflowing(i8 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil4timeNtB2_4Time32overflowing_add_duration_general(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64, i64 noundef, i32 noundef) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_RNvMNtNtCsa9sSWSfjDbm_4jiff5civil8datetimeNtB2_8DateTime24checked_add_span_general(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment8for_span(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), i8 noundef range(i8 0, 10), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error4unitNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_15UnitConfigErrorE4from(i24) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsa9sSWSfjDbm_4jiff4util5roundNtB5_9RoundMode17round_by_duration(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 9), i64 noundef, i32 noundef, i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtCsa9sSWSfjDbm_4jiff4util5roundNtB2_9Increment5round(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 9), i64 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef ptr @_RNvXNtNtCsa9sSWSfjDbm_4jiff5error5zonedNtB4_5ErrorINtNtCs3oUPovFnLWP_4core7convert4FromNtB2_5ErrorE4from(i8 noundef range(i8 0, 18)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz4tzif18MaybeNamedTimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCsb09rMIQFAXO_9jiff_core2tz5posix8TimeZoneECsa9sSWSfjDbm_4jiff(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsa9sSWSfjDbm_4jiff5civil4date13month_add_one(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), i16 noundef, i8 noundef, i8 noundef range(i8 -1, 2)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCsa9sSWSfjDbm_4jiff15signed_duration14SignedDurationBM_EBQ_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsa9sSWSfjDbm_4jiff(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.06?download=true
inline.NumInlined: 2075
inline.NumDeleted: 841
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RNvMs2_NtCslFlrwjHoTci_14polars_compute7decimalNtB5_16DecimalFmtBuffer13format_dec128:bb.a
thread-pre-split:                                 ; preds = %bb.n, %bb.e
  %i.q = phi i64 [ %i.ap, %bb.n ], [ %i.p, %bb.e ], !dbg !23599 ; 3 uses
  %i.r = icmp ult i64 %i.q, 42
  br i1 %i.r, label %thread-pre-split.thread, label %bb.o, !dbg !23600, !prof !23532

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull %i.l, i64 noundef %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96), !dbg !23601
  %i.s = load i64, ptr %0, align 8, !dbg !23602, !noundef !1573 ; 2 uses
  %i.t = add i64 %i.s, %i.i, !dbg !23602          ; 3 uses
  %i.u = icmp ult i64 %i.t, 41, !dbg !23603
  br i1 %i.u, label %bb.k, label %bb.l, !dbg !23603

bb.g:                                             ; preds = %bb.d
  store i8 48, ptr %i.l, align 1, !dbg !23604
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 1, !dbg !23605
  store i8 %., ptr %i.v, align 1, !dbg !23605
  %i.w = or disjoint i64 %i.g, 2, !dbg !23606     ; 4 uses
  %i.x = sub i64 %2, %i.j, !dbg !23607            ; 2 uses
  %i.y = add i64 %i.x, %i.w, !dbg !23607          ; 3 uses
  %i.z = icmp uge i64 %i.y, %i.w, !dbg !23608
  %i.aa = icmp ult i64 %i.y, 42
  %or.cond29 = and i1 %i.z, %i.aa, !dbg !23608
  br i1 %or.cond29, label %bb.i, label %bb.h, !dbg !23608, !prof !1600

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.w, i64 noundef %i.y, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #43, !dbg !23609
  unreachable, !dbg !23609

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.w, !dbg !23610
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 48, i64 %i.x, i1 false), !dbg !23611
  %i.ac = add i64 %2, 2, !dbg !23612
  %i.ad = sub i64 %i.ac, %i.j, !dbg !23612
  %i.ae = add i64 %i.ad, %i.g, !dbg !23613
  br label %bb.j, !dbg !23614

bb.j:                                             ; preds = %bb.k, %bb.i
  %storemerge28 = phi i64 [ %i.al, %bb.k ], [ %i.ae, %bb.i ], !dbg !23593 ; 5 uses
  store i64 %storemerge28, ptr %0, align 8, !dbg !23593
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23615 ; 3 uses
  %i.ag = add i64 %storemerge28, %i.j, !dbg !23616 ; 3 uses
  %i.ah = icmp uge i64 %i.ag, %storemerge28, !dbg !23617
  %i.ai = icmp ult i64 %i.ag, 42
  %or.cond31 = and i1 %i.ah, %i.ai, !dbg !23617
  br i1 %or.cond31, label %bb.n, label %bb.m, !dbg !23617, !prof !1600

bb.k:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t, !dbg !23603
  store i8 %., ptr %i.aj, align 1, !dbg !23603
  %i.ak = add nuw nsw i64 %i.i, 1, !dbg !23618
  %i.al = add i64 %i.ak, %i.s, !dbg !23619
  br label %bb.j, !dbg !23614

bb.l:                                             ; preds = %bb.f
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.t, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #43, !dbg !23603
  unreachable, !dbg !23603

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %storemerge28, i64 noundef %i.ag, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #43, !dbg !23620
  unreachable, !dbg !23620

bb.n:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %storemerge28, !dbg !23621
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i, !dbg !23622
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull %i.am, i64 noundef %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98), !dbg !23623
  %i.ao = load i64, ptr %0, align 8, !dbg !23624, !noundef !1573
  %i.ap = add i64 %i.ao, %i.j, !dbg !23624        ; 4 uses
  store i64 %i.ap, ptr %0, align 8, !dbg !23624
  %i.aq = add i64 %i.ap, -1                       ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 41
  %or.cond = select i1 %3, i1 %i.ar, i1 false, !dbg !23625
  br i1 %or.cond, label %.lr.ph.preheader, label %thread-pre-split, !dbg !23625

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aq, !dbg !23626
  %i.at = load i8, ptr %i.as, align 1, !dbg !23627, !noundef !1573 ; 2 uses
  %i.au = icmp eq i8 %i.at, 48, !dbg !23627
  br i1 %i.au, label %.lr.ph53, label %.lr.ph._crit_edge, !dbg !23571

.lr.ph:                                           ; preds = %.lr.ph53
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.az, !dbg !23626
  %i.aw = load i8, ptr %i.av, align 1, !dbg !23627, !noundef !1573 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 48, !dbg !23627
  br i1 %i.ax, label %.lr.ph53, label %.lr.ph._crit_edge, !dbg !23571

.lr.ph53:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ay = phi i64 [ %i.az, %.lr.ph ], [ %i.aq, %.lr.ph.preheader ] ; 3 uses
  store i64 %i.ay, ptr %0, align 8, !dbg !23628
  %i.az = add nsw i64 %i.ay, -1, !dbg !23629      ; 4 uses
  %i.ba = icmp ult i64 %i.az, 41, !dbg !23630
  br i1 %i.ba, label %.lr.ph, label %thread-pre-split.thread, !dbg !23630

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.pr36.lcssa = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %i.ay, %.lr.ph ]
  %.lcssa50 = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %i.az, %.lr.ph ] ; 2 uses
  %.lcssa = phi i8 [ %i.at, %.lr.ph.preheader ], [ %i.aw, %.lr.ph ], !dbg !23627
  %i.bb = icmp eq i8 %.lcssa, %., !dbg !23631
  br i1 %i.bb, label %.thread, label %thread-pre-split.thread, !dbg !23576

.thread:                                          ; preds = %.lr.ph._crit_edge
  store i64 %.lcssa50, ptr %0, align 8, !dbg !23632
  br label %thread-pre-split.thread, !dbg !23600

bb.o:                                             ; preds = %thread-pre-split
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef 41, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #43, !dbg !23633
  unreachable, !dbg !23633

thread-pre-split.thread:                          ; preds = %.lr.ph53, %.lr.ph._crit_edge, %.thread, %thread-pre-split
  %i.bc = phi i64 [ %.lcssa50, %.thread ], [ %i.q, %thread-pre-split ], [ %.pr36.lcssa, %.lr.ph._crit_edge ], [ 0, %.lr.ph53 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23635
  %i.be = insertvalue { ptr, i64 } poison, ptr %i.bd, 0, !dbg !23636
  %i.bf = insertvalue { ptr, i64 } %i.be, i64 %i.bc, 1, !dbg !23636
  ret { ptr, i64 } %i.bf, !dbg !23636
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23637 !guid !23668 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !dbg !23673, !alias.scope !23669, !noalias !23670, !noundef !1573
  %i.b = tail call fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %i.a) #44, !dbg !23674 ; 2 uses
  %i.c = and i16 %i.b, 32767, !dbg !23675
  %i.d = icmp samesign ugt i16 %i.c, 31744, !dbg !23675
  %spec.store.select.i.i.i = select i1 %i.d, i16 32256, i16 %i.b, !dbg !23676
  %i.e = zext i16 %spec.store.select.i.i.i to i64, !dbg !23677
  %i.f = xor i64 %i.e, 589684135938649225, !dbg !23678
  %i.g = zext nneg i64 %i.f to i128, !dbg !23679
  %i.h = mul nuw nsw i128 %i.g, 13883517620612518109, !dbg !23680 ; 2 uses
  %i.i = lshr i128 %i.h, 64, !dbg !23681
  %.masked.i = and i128 %i.h, 18446744073709551615, !dbg !23682
  %i.j = xor i128 %.masked.i, %i.i, !dbg !23682
  %i.k = mul nuw nsw i128 %i.j, 2611923443488327891, !dbg !23683 ; 2 uses
  %i.l = lshr i128 %i.k, 64, !dbg !23684
  %i.m = xor i128 %i.l, %i.k, !dbg !23685
  %i.n = trunc i128 %i.m to i64, !dbg !23685      ; 2 uses
  %i.o = lshr i64 %i.n, 14, !dbg !23686
  %i.p = or disjoint i64 %i.o, 1125899906842624, !dbg !23687
  %i.q = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.p, i1 true), !dbg !23688
  %i.r = trunc nuw nsw i64 %i.q to i8, !dbg !23688
  %i.s = add nuw nsw i8 %i.r, 1, !dbg !23687
  %i.t = and i64 %i.n, 16383, !dbg !23689
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t, !dbg !23690 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !dbg !23690, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.s, i8 %i.v), !dbg !23691
  store i8 %.sroa.0.0.i, ptr %i.u, align 1, !dbg !23692
  ret void, !dbg !23693
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23694 !guid !23740 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23748
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23741), !dbg !23749
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !23750, !alias.scope !23741
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23751 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23751, !noalias !23742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !23752, !noalias !23741
  br label %bb.b, !dbg !23753

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !23754
  %i.e = load i8, ptr %i.d, align 2, !dbg !23755, !alias.scope !23744, !noalias !23742, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !23756         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !23757
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !23757

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !23757 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !23757, !alias.scope !23741, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !23757
  store i32 %i.j, ptr %i.h, align 4, !dbg !23757, !alias.scope !23741
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !23754
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !23754
  %i.m = load i8, ptr %i.l, align 1, !dbg !23755, !alias.scope !23744, !noalias !23742, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !23756         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !23757
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !23757

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !23758     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !23757 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !23757, !alias.scope !23741, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !23757
  store i32 %i.s, ptr %i.q, align 4, !dbg !23757, !alias.scope !23741
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !23753
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE13get_histogramB6_.exit, label %bb.b, !dbg !23753

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !23756
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !23757, !noalias !23742
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23759, !noalias !23742
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !23760
  %i.u = load i32, ptr %i.t, align 4, !dbg !23760, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !23760
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !23761
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !23761 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !23762
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !23762
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !23762

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !23763
  br label %bb.g, !dbg !23764

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !23765 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !23766
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !23767 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !23768 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !23769 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !23770
  %i.af = fmul double %i.ac, %i.ae, !dbg !23769
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !23771 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !23772
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !23772

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !23773
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !23774
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !23775

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1f_7float164pf16EE13get_histogramB6_.exit ], !dbg !23766
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !23776
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !23776, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !23776
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !23776, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !23776
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !23776, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !23776
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !23776, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !23776
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !23776, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !23776
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !23776, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !23776
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !23776, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !23776
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !23776, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !23776
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !23776, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !23776
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !23776, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !23776
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !23776, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !23776
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !23776, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !23776
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !23776, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !23776
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !23776, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !23776
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !23776, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !23776
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !23776, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !23776
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !23776, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !23776
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !23776, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !23776
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !23776, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !23776
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !23776, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !23776
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !23776, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !23776
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !23776, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !23776
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !23776, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !23776
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !23776, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !23776
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !23776, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !23776
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !23776, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !23776
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !23776, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !23776
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !23776, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !23776
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !23776, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !23776
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !23776, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !23776
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !23776, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !23776
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !23776, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !23776
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !23776, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !23776
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !23776, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !23776
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !23776, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !23776
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !23776, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !23776
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !23776, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !23776
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !23776, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !23776
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !23776, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !23776
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !23776, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !23776
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !23776, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !23776
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !23776, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !23776
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !23776, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !23776
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !23776, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !23776
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !23776, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !23776
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !23776, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23776
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !23776, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !23776
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !23776, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23776
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !23776, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !23776
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !23776, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !23777, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !23777
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !23777 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !23778
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !23778

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23779 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23780 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23781 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !23782 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !23783
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !23784 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !23785
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !23786
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !23786

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !23787
  br label %bb.j, !dbg !23788

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23779
  %i.cs = uitofp i32 %i.ak to double, !dbg !23776
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !23789
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !23790
  %i.cv = uitofp i32 %i.al to double, !dbg !23776
  %i.cw = fadd double %i.cu, %i.cv, !dbg !23789
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !23790
  %i.cy = uitofp i32 %i.am to double, !dbg !23776
  %i.cz = fadd double %i.cx, %i.cy, !dbg !23789
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !23790
  %i.db = uitofp i32 %i.an to double, !dbg !23776
  %i.dc = fadd double %i.da, %i.db, !dbg !23789
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !23790
  %i.de = uitofp i32 %i.ao to double, !dbg !23776
  %i.df = fadd double %i.dd, %i.de, !dbg !23789
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !23790
  %i.dh = uitofp i32 %i.ap to double, !dbg !23776
  %i.di = fadd double %i.dg, %i.dh, !dbg !23789
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !23790
  %i.dk = uitofp i32 %i.aq to double, !dbg !23776
  %i.dl = fadd double %i.dj, %i.dk, !dbg !23789
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !23790
  %i.dn = uitofp i32 %i.ar to double, !dbg !23776
  %i.do = fadd double %i.dm, %i.dn, !dbg !23789
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !23790
  %i.dq = uitofp i32 %i.as to double, !dbg !23776
  %i.dr = fadd double %i.dp, %i.dq, !dbg !23789
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !23790
  %i.dt = uitofp i32 %i.at to double, !dbg !23776
  %i.du = fadd double %i.ds, %i.dt, !dbg !23789
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !23790
  %i.dw = uitofp i32 %i.au to double, !dbg !23776
  %i.dx = fadd double %i.dv, %i.dw, !dbg !23789
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !23790
  %i.dz = uitofp i32 %i.av to double, !dbg !23776
  %i.ea = fadd double %i.dy, %i.dz, !dbg !23789
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !23790
  %i.ec = uitofp i32 %i.aw to double, !dbg !23776
  %i.ed = fadd double %i.eb, %i.ec, !dbg !23789
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !23790
  %i.ef = uitofp i32 %i.ax to double, !dbg !23776
  %i.eg = fadd double %i.ee, %i.ef, !dbg !23789
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !23790
  %i.ei = uitofp i32 %i.ay to double, !dbg !23776
  %i.ej = fadd double %i.eh, %i.ei, !dbg !23789
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !23790
  %i.el = uitofp i32 %i.az to double, !dbg !23776
  %i.em = fadd double %i.ek, %i.el, !dbg !23789
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !23790
  %i.eo = uitofp i32 %i.ba to double, !dbg !23776
  %i.ep = fadd double %i.en, %i.eo, !dbg !23789
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !23790
  %i.er = uitofp i32 %i.bb to double, !dbg !23776
  %i.es = fadd double %i.eq, %i.er, !dbg !23789
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !23790
  %i.eu = uitofp i32 %i.bc to double, !dbg !23776
  %i.ev = fadd double %i.et, %i.eu, !dbg !23789
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !23790
  %i.ex = uitofp i32 %i.bd to double, !dbg !23776
  %i.ey = fadd double %i.ew, %i.ex, !dbg !23789
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !23790
  %i.fa = uitofp i32 %i.be to double, !dbg !23776
  %i.fb = fadd double %i.ez, %i.fa, !dbg !23789
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !23790
  %i.fd = uitofp i32 %i.bf to double, !dbg !23776
  %i.fe = fadd double %i.fc, %i.fd, !dbg !23789
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !23790
  %i.fg = uitofp i32 %i.bg to double, !dbg !23776
  %i.fh = fadd double %i.ff, %i.fg, !dbg !23789
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !23790
  %i.fj = uitofp i32 %i.bh to double, !dbg !23776
  %i.fk = fadd double %i.fi, %i.fj, !dbg !23789
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !23790
  %i.fm = uitofp i32 %i.bi to double, !dbg !23776
  %i.fn = fadd double %i.fl, %i.fm, !dbg !23789
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !23790
  %i.fp = uitofp i32 %i.bj to double, !dbg !23776
  %i.fq = fadd double %i.fo, %i.fp, !dbg !23789
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !23790
  %i.fs = uitofp i32 %i.bk to double, !dbg !23776
  %i.ft = fadd double %i.fr, %i.fs, !dbg !23789
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !23790
  %i.fv = uitofp i32 %i.bl to double, !dbg !23776
  %i.fw = fadd double %i.fu, %i.fv, !dbg !23789
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !23790
  %i.fy = uitofp i32 %i.bm to double, !dbg !23776
  %i.fz = fadd double %i.fx, %i.fy, !dbg !23789
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !23790
  %i.gb = uitofp i32 %i.bn to double, !dbg !23776
  %i.gc = fadd double %i.ga, %i.gb, !dbg !23789
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !23790
  %i.ge = uitofp i32 %i.bo to double, !dbg !23776
  %i.gf = fadd double %i.gd, %i.ge, !dbg !23789
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !23790
  %i.gh = uitofp i32 %i.bp to double, !dbg !23776
  %i.gi = fadd double %i.gg, %i.gh, !dbg !23789
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !23790
  %i.gk = uitofp i32 %i.bq to double, !dbg !23776
  %i.gl = fadd double %i.gj, %i.gk, !dbg !23789
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !23790
  %i.gn = uitofp i32 %i.br to double, !dbg !23776
  %i.go = fadd double %i.gm, %i.gn, !dbg !23789
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !23790
  %i.gq = uitofp i32 %i.bs to double, !dbg !23776
  %i.gr = fadd double %i.gp, %i.gq, !dbg !23789
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !23790
  %i.gt = uitofp i32 %i.bt to double, !dbg !23776
  %i.gu = fadd double %i.gs, %i.gt, !dbg !23789
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !23790
  %i.gw = uitofp i32 %i.bu to double, !dbg !23776
  %i.gx = fadd double %i.gv, %i.gw, !dbg !23789
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !23790
  %i.gz = uitofp i32 %i.bv to double, !dbg !23776
  %i.ha = fadd double %i.gy, %i.gz, !dbg !23789
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !23790
  %i.hc = uitofp i32 %i.bw to double, !dbg !23776
  %i.hd = fadd double %i.hb, %i.hc, !dbg !23789
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !23790
  %i.hf = uitofp i32 %i.bx to double, !dbg !23776
  %i.hg = fadd double %i.he, %i.hf, !dbg !23789
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !23790
  %i.hi = uitofp i32 %i.by to double, !dbg !23776
  %i.hj = fadd double %i.hh, %i.hi, !dbg !23789
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !23790
  %i.hl = uitofp i32 %i.bz to double, !dbg !23776
  %i.hm = fadd double %i.hk, %i.hl, !dbg !23789
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !23790
  %i.ho = uitofp i32 %i.ca to double, !dbg !23776
  %i.hp = fadd double %i.hn, %i.ho, !dbg !23789
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !23790
  %i.hr = uitofp i32 %i.cb to double, !dbg !23776
  %i.hs = fadd double %i.hq, %i.hr, !dbg !23789
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !23790
  %i.hu = uitofp i32 %i.cc to double, !dbg !23776
  %i.hv = fadd double %i.ht, %i.hu, !dbg !23789
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !23790
  %i.hx = uitofp i32 %i.cd to double, !dbg !23776
  %i.hy = fadd double %i.hw, %i.hx, !dbg !23789
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !23790
  %i.ia = uitofp i32 %i.ce to double, !dbg !23776
  %i.ib = fadd double %i.hz, %i.ia, !dbg !23789
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !23790
  %i.id = uitofp i32 %i.cf to double, !dbg !23776
  %i.ie = fadd double %i.ic, %i.id, !dbg !23789
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !23790
  %i.ig = uitofp i32 %i.cg to double, !dbg !23776
  %i.ih = fadd double %i.if, %i.ig, !dbg !23789
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !23790
  %i.ij = uitofp i32 %i.ch to double, !dbg !23776
  %i.ik = fadd double %i.ii, %i.ij, !dbg !23789
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !23790
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !23791
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !23792
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !23793
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !23792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23794
  ret i64 %i.ip, !dbg !23795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !23796 !guid !23824 {
bb.a:
  %i.a = load double, ptr %1, align 8, !dbg !23829, !alias.scope !23825, !noalias !23826, !noundef !1573 ; 2 uses
  %i.b = fadd double %i.a, 0.000000e+00, !dbg !23830
  %i.c = fcmp uno double %i.a, 0.000000e+00, !dbg !23831
  %i.d = bitcast double %i.b to i64, !dbg !23832
  %i.e = xor i64 %i.d, 589684135938649225, !dbg !23833
  %i.f = zext i64 %i.e to i128, !dbg !23834
  %i.g = mul nuw i128 %i.f, 13883517620612518109, !dbg !23835
  %i.h = select i1 %i.c, i128 119889240336340396827544106785966817861, i128 %i.g, !dbg !23836 ; 2 uses
  %i.i = lshr i128 %i.h, 64, !dbg !23837
  %.masked.i = and i128 %i.h, 18446744073709551615, !dbg !23838
  %i.j = xor i128 %.masked.i, %i.i, !dbg !23838
  %i.k = mul nuw nsw i128 %i.j, 2611923443488327891, !dbg !23839 ; 2 uses
  %i.l = lshr i128 %i.k, 64, !dbg !23840
  %i.m = xor i128 %i.l, %i.k, !dbg !23841
  %i.n = trunc i128 %i.m to i64, !dbg !23841      ; 2 uses
  %i.o = lshr i64 %i.n, 14, !dbg !23842
  %i.p = or disjoint i64 %i.o, 1125899906842624, !dbg !23843
  %i.q = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.p, i1 true), !dbg !23844
  %i.r = trunc nuw nsw i64 %i.q to i8, !dbg !23844
  %i.s = add nuw nsw i8 %i.r, 1, !dbg !23843
  %i.t = and i64 %i.n, 16383, !dbg !23845
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t, !dbg !23846 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !dbg !23846, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.s, i8 %i.v), !dbg !23847
  store i8 %.sroa.0.0.i, ptr %i.u, align 1, !dbg !23848
  ret void, !dbg !23849
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23850 !guid !23896 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23897), !dbg !23905
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !23906, !alias.scope !23897
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23907 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23907, !noalias !23898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !23908, !noalias !23897
  br label %bb.b, !dbg !23909

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !23910
  %i.e = load i8, ptr %i.d, align 2, !dbg !23911, !alias.scope !23900, !noalias !23898, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !23912         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !23913
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !23913

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !23913 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !23913, !alias.scope !23897, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !23913
  store i32 %i.j, ptr %i.h, align 4, !dbg !23913, !alias.scope !23897
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !23910
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !23910
  %i.m = load i8, ptr %i.l, align 1, !dbg !23911, !alias.scope !23900, !noalias !23898, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !23912         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !23913
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !23913

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !23914     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !23913 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !23913, !alias.scope !23897, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !23913
  store i32 %i.s, ptr %i.q, align 4, !dbg !23913, !alias.scope !23897
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !23909
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE13get_histogramB6_.exit, label %bb.b, !dbg !23909

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !23912
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !23913, !noalias !23898
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23915, !noalias !23898
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !23916
  %i.u = load i32, ptr %i.t, align 4, !dbg !23916, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !23916
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !23917
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !23917 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !23918
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !23918
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !23918

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !23919
  br label %bb.g, !dbg !23920

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !23921 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !23922
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !23923 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !23924 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !23925 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !23926
  %i.af = fmul double %i.ac, %i.ae, !dbg !23925
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !23927 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !23928
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !23928

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !23929
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !23930
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !23931

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEE13get_histogramB6_.exit ], !dbg !23922
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !23932
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !23932, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !23932
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !23932, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !23932
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !23932, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !23932
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !23932, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !23932
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !23932, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !23932
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !23932, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !23932
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !23932, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !23932
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !23932, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !23932
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !23932, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !23932
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !23932, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !23932
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !23932, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !23932
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !23932, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !23932
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !23932, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !23932
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !23932, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !23932
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !23932, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !23932
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !23932, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !23932
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !23932, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !23932
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !23932, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !23932
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !23932, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !23932
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !23932, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !23932
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !23932, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !23932
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !23932, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !23932
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !23932, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !23932
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !23932, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !23932
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !23932, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !23932
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !23932, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !23932
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !23932, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !23932
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !23932, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !23932
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !23932, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !23932
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !23932, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !23932
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !23932, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !23932
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !23932, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !23932
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !23932, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !23932
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !23932, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !23932
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !23932, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !23932
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !23932, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !23932
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !23932, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !23932
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !23932, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !23932
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !23932, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !23932
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !23932, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !23932
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !23932, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !23932
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !23932, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !23932
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !23932, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !23932
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !23932, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !23932
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !23932, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !23932
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !23932, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23932
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !23932, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !23932
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !23932, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23932
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !23932, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !23932
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !23932, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !23933, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !23933
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !23933 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !23934
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !23934

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23935 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23936 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23937 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !23938 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !23939
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !23940 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !23941
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !23942
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !23942

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !23943
  br label %bb.j, !dbg !23944

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !23935
  %i.cs = uitofp i32 %i.ak to double, !dbg !23932
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !23945
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !23946
  %i.cv = uitofp i32 %i.al to double, !dbg !23932
  %i.cw = fadd double %i.cu, %i.cv, !dbg !23945
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !23946
  %i.cy = uitofp i32 %i.am to double, !dbg !23932
  %i.cz = fadd double %i.cx, %i.cy, !dbg !23945
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !23946
  %i.db = uitofp i32 %i.an to double, !dbg !23932
  %i.dc = fadd double %i.da, %i.db, !dbg !23945
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !23946
  %i.de = uitofp i32 %i.ao to double, !dbg !23932
  %i.df = fadd double %i.dd, %i.de, !dbg !23945
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !23946
  %i.dh = uitofp i32 %i.ap to double, !dbg !23932
  %i.di = fadd double %i.dg, %i.dh, !dbg !23945
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !23946
  %i.dk = uitofp i32 %i.aq to double, !dbg !23932
  %i.dl = fadd double %i.dj, %i.dk, !dbg !23945
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !23946
  %i.dn = uitofp i32 %i.ar to double, !dbg !23932
  %i.do = fadd double %i.dm, %i.dn, !dbg !23945
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !23946
  %i.dq = uitofp i32 %i.as to double, !dbg !23932
  %i.dr = fadd double %i.dp, %i.dq, !dbg !23945
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !23946
  %i.dt = uitofp i32 %i.at to double, !dbg !23932
  %i.du = fadd double %i.ds, %i.dt, !dbg !23945
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !23946
  %i.dw = uitofp i32 %i.au to double, !dbg !23932
  %i.dx = fadd double %i.dv, %i.dw, !dbg !23945
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !23946
  %i.dz = uitofp i32 %i.av to double, !dbg !23932
  %i.ea = fadd double %i.dy, %i.dz, !dbg !23945
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !23946
  %i.ec = uitofp i32 %i.aw to double, !dbg !23932
  %i.ed = fadd double %i.eb, %i.ec, !dbg !23945
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !23946
  %i.ef = uitofp i32 %i.ax to double, !dbg !23932
  %i.eg = fadd double %i.ee, %i.ef, !dbg !23945
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !23946
  %i.ei = uitofp i32 %i.ay to double, !dbg !23932
  %i.ej = fadd double %i.eh, %i.ei, !dbg !23945
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !23946
  %i.el = uitofp i32 %i.az to double, !dbg !23932
  %i.em = fadd double %i.ek, %i.el, !dbg !23945
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !23946
  %i.eo = uitofp i32 %i.ba to double, !dbg !23932
  %i.ep = fadd double %i.en, %i.eo, !dbg !23945
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !23946
  %i.er = uitofp i32 %i.bb to double, !dbg !23932
  %i.es = fadd double %i.eq, %i.er, !dbg !23945
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !23946
  %i.eu = uitofp i32 %i.bc to double, !dbg !23932
  %i.ev = fadd double %i.et, %i.eu, !dbg !23945
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !23946
  %i.ex = uitofp i32 %i.bd to double, !dbg !23932
  %i.ey = fadd double %i.ew, %i.ex, !dbg !23945
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !23946
  %i.fa = uitofp i32 %i.be to double, !dbg !23932
  %i.fb = fadd double %i.ez, %i.fa, !dbg !23945
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !23946
  %i.fd = uitofp i32 %i.bf to double, !dbg !23932
  %i.fe = fadd double %i.fc, %i.fd, !dbg !23945
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !23946
  %i.fg = uitofp i32 %i.bg to double, !dbg !23932
  %i.fh = fadd double %i.ff, %i.fg, !dbg !23945
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !23946
  %i.fj = uitofp i32 %i.bh to double, !dbg !23932
  %i.fk = fadd double %i.fi, %i.fj, !dbg !23945
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !23946
  %i.fm = uitofp i32 %i.bi to double, !dbg !23932
  %i.fn = fadd double %i.fl, %i.fm, !dbg !23945
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !23946
  %i.fp = uitofp i32 %i.bj to double, !dbg !23932
  %i.fq = fadd double %i.fo, %i.fp, !dbg !23945
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !23946
  %i.fs = uitofp i32 %i.bk to double, !dbg !23932
  %i.ft = fadd double %i.fr, %i.fs, !dbg !23945
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !23946
  %i.fv = uitofp i32 %i.bl to double, !dbg !23932
  %i.fw = fadd double %i.fu, %i.fv, !dbg !23945
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !23946
  %i.fy = uitofp i32 %i.bm to double, !dbg !23932
  %i.fz = fadd double %i.fx, %i.fy, !dbg !23945
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !23946
  %i.gb = uitofp i32 %i.bn to double, !dbg !23932
  %i.gc = fadd double %i.ga, %i.gb, !dbg !23945
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !23946
  %i.ge = uitofp i32 %i.bo to double, !dbg !23932
  %i.gf = fadd double %i.gd, %i.ge, !dbg !23945
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !23946
  %i.gh = uitofp i32 %i.bp to double, !dbg !23932
  %i.gi = fadd double %i.gg, %i.gh, !dbg !23945
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !23946
  %i.gk = uitofp i32 %i.bq to double, !dbg !23932
  %i.gl = fadd double %i.gj, %i.gk, !dbg !23945
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !23946
  %i.gn = uitofp i32 %i.br to double, !dbg !23932
  %i.go = fadd double %i.gm, %i.gn, !dbg !23945
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !23946
  %i.gq = uitofp i32 %i.bs to double, !dbg !23932
  %i.gr = fadd double %i.gp, %i.gq, !dbg !23945
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !23946
  %i.gt = uitofp i32 %i.bt to double, !dbg !23932
  %i.gu = fadd double %i.gs, %i.gt, !dbg !23945
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !23946
  %i.gw = uitofp i32 %i.bu to double, !dbg !23932
  %i.gx = fadd double %i.gv, %i.gw, !dbg !23945
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !23946
  %i.gz = uitofp i32 %i.bv to double, !dbg !23932
  %i.ha = fadd double %i.gy, %i.gz, !dbg !23945
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !23946
  %i.hc = uitofp i32 %i.bw to double, !dbg !23932
  %i.hd = fadd double %i.hb, %i.hc, !dbg !23945
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !23946
  %i.hf = uitofp i32 %i.bx to double, !dbg !23932
  %i.hg = fadd double %i.he, %i.hf, !dbg !23945
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !23946
  %i.hi = uitofp i32 %i.by to double, !dbg !23932
  %i.hj = fadd double %i.hh, %i.hi, !dbg !23945
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !23946
  %i.hl = uitofp i32 %i.bz to double, !dbg !23932
  %i.hm = fadd double %i.hk, %i.hl, !dbg !23945
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !23946
  %i.ho = uitofp i32 %i.ca to double, !dbg !23932
  %i.hp = fadd double %i.hn, %i.ho, !dbg !23945
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !23946
  %i.hr = uitofp i32 %i.cb to double, !dbg !23932
  %i.hs = fadd double %i.hq, %i.hr, !dbg !23945
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !23946
  %i.hu = uitofp i32 %i.cc to double, !dbg !23932
  %i.hv = fadd double %i.ht, %i.hu, !dbg !23945
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !23946
  %i.hx = uitofp i32 %i.cd to double, !dbg !23932
  %i.hy = fadd double %i.hw, %i.hx, !dbg !23945
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !23946
  %i.ia = uitofp i32 %i.ce to double, !dbg !23932
  %i.ib = fadd double %i.hz, %i.ia, !dbg !23945
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !23946
  %i.id = uitofp i32 %i.cf to double, !dbg !23932
  %i.ie = fadd double %i.ic, %i.id, !dbg !23945
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !23946
  %i.ig = uitofp i32 %i.cg to double, !dbg !23932
  %i.ih = fadd double %i.if, %i.ig, !dbg !23945
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !23946
  %i.ij = uitofp i32 %i.ch to double, !dbg !23932
  %i.ik = fadd double %i.ii, %i.ij, !dbg !23945
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !23946
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !23947
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !23948
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !23949
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !23948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23950
  ret i64 %i.ip, !dbg !23951
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !23952 !guid !23980 {
bb.a:
  %i.a = load float, ptr %1, align 4, !dbg !23985, !alias.scope !23981, !noalias !23982, !noundef !1573 ; 2 uses
  %i.b = fadd float %i.a, 0.000000e+00, !dbg !23986
  %i.c = fcmp uno float %i.a, 0.000000e+00, !dbg !23987
  %i.d = bitcast float %i.b to i32, !dbg !23988
  %i.e = zext i32 %i.d to i64, !dbg !23989
  %i.f = xor i64 %i.e, 589684135938649225, !dbg !23990
  %i.g = zext nneg i64 %i.f to i128, !dbg !23991
  %i.h = mul nuw nsw i128 %i.g, 13883517620612518109, !dbg !23992
  %i.i = select i1 %i.c, i128 8186890071227652777116308523410162245, i128 %i.h, !dbg !23993 ; 2 uses
  %i.j = lshr i128 %i.i, 64, !dbg !23994
  %.masked.i = and i128 %i.i, 18446744073709551615, !dbg !23995
  %i.k = xor i128 %.masked.i, %i.j, !dbg !23995
  %i.l = mul nuw nsw i128 %i.k, 2611923443488327891, !dbg !23996 ; 2 uses
  %i.m = lshr i128 %i.l, 64, !dbg !23997
  %i.n = xor i128 %i.m, %i.l, !dbg !23998
  %i.o = trunc i128 %i.n to i64, !dbg !23998      ; 2 uses
  %i.p = lshr i64 %i.o, 14, !dbg !23999
  %i.q = or disjoint i64 %i.p, 1125899906842624, !dbg !24000
  %i.r = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.q, i1 true), !dbg !24001
  %i.s = trunc nuw nsw i64 %i.r to i8, !dbg !24001
  %i.t = add nuw nsw i8 %i.s, 1, !dbg !24000
  %i.u = and i64 %i.o, 16383, !dbg !24002
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u, !dbg !24003 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !dbg !24003, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.t, i8 %i.w), !dbg !24004
  store i8 %.sroa.0.0.i, ptr %i.v, align 1, !dbg !24005
  ret void, !dbg !24006
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24007 !guid !24053 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24054), !dbg !24062
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24063, !alias.scope !24054
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24064 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24064, !noalias !24055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24065, !noalias !24054
  br label %bb.b, !dbg !24066

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24067
  %i.e = load i8, ptr %i.d, align 2, !dbg !24068, !alias.scope !24057, !noalias !24055, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24069         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24070
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24070

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24070 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24070, !alias.scope !24054, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24070
  store i32 %i.j, ptr %i.h, align 4, !dbg !24070, !alias.scope !24054
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24067
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24067
  %i.m = load i8, ptr %i.l, align 1, !dbg !24068, !alias.scope !24057, !noalias !24055, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24069         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24070
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24070

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24071     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24070 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24070, !alias.scope !24054, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24070
  store i32 %i.s, ptr %i.q, align 4, !dbg !24070, !alias.scope !24054
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24066
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE13get_histogramB6_.exit, label %bb.b, !dbg !24066

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24069
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24070, !noalias !24055
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24072, !noalias !24055
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24073
  %i.u = load i32, ptr %i.t, align 4, !dbg !24073, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24073
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24074
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24074 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24075
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24075
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24075

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24076
  br label %bb.g, !dbg !24077

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24078 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24079
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24080 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24081 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24082 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24083
  %i.af = fmul double %i.ac, %i.ae, !dbg !24082
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24084 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24085
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24085

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24086
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24087
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24088

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE13get_histogramB6_.exit ], !dbg !24079
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24089
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24089, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24089
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24089, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24089
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24089, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24089
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24089, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24089
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24089, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24089
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24089, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24089
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24089, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24089
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24089, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24089
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24089, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24089
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24089, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24089
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24089, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24089
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24089, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24089
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24089, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24089
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24089, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24089
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24089, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24089
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24089, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24089
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24089, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24089
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24089, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24089
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24089, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24089
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24089, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24089
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24089, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24089
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24089, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24089
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24089, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24089
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24089, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24089
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24089, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24089
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24089, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24089
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24089, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24089
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24089, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24089
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24089, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24089
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24089, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24089
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24089, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24089
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24089, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24089
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24089, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24089
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24089, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24089
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24089, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24089
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24089, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24089
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24089, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24089
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24089, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24089
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24089, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24089
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24089, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24089
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24089, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24089
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24089, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24089
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24089, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24089
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24089, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24089
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24089, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24089
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24089, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24089
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24089, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24089
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24089, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24089
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24089, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24089
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24089, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24090, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24090
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24090 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24091
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24091

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24092 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24093 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24094 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24095 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24096
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24097 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24098
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24099
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24099

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24100
  br label %bb.j, !dbg !24101

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24092
  %i.cs = uitofp i32 %i.ak to double, !dbg !24089
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24102
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24103
  %i.cv = uitofp i32 %i.al to double, !dbg !24089
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24102
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24103
  %i.cy = uitofp i32 %i.am to double, !dbg !24089
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24102
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24103
  %i.db = uitofp i32 %i.an to double, !dbg !24089
  %i.dc = fadd double %i.da, %i.db, !dbg !24102
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24103
  %i.de = uitofp i32 %i.ao to double, !dbg !24089
  %i.df = fadd double %i.dd, %i.de, !dbg !24102
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24103
  %i.dh = uitofp i32 %i.ap to double, !dbg !24089
  %i.di = fadd double %i.dg, %i.dh, !dbg !24102
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24103
  %i.dk = uitofp i32 %i.aq to double, !dbg !24089
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24102
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24103
  %i.dn = uitofp i32 %i.ar to double, !dbg !24089
  %i.do = fadd double %i.dm, %i.dn, !dbg !24102
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24103
  %i.dq = uitofp i32 %i.as to double, !dbg !24089
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24102
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24103
  %i.dt = uitofp i32 %i.at to double, !dbg !24089
  %i.du = fadd double %i.ds, %i.dt, !dbg !24102
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24103
  %i.dw = uitofp i32 %i.au to double, !dbg !24089
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24102
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24103
  %i.dz = uitofp i32 %i.av to double, !dbg !24089
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24102
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24103
  %i.ec = uitofp i32 %i.aw to double, !dbg !24089
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24102
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24103
  %i.ef = uitofp i32 %i.ax to double, !dbg !24089
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24102
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24103
  %i.ei = uitofp i32 %i.ay to double, !dbg !24089
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24102
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24103
  %i.el = uitofp i32 %i.az to double, !dbg !24089
  %i.em = fadd double %i.ek, %i.el, !dbg !24102
end_hunk_0
begin_hunk_1_@_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEE5countB6_:bb.a
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24102
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24103
  %i.gw = uitofp i32 %i.bu to double, !dbg !24089
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24102
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24103
  %i.gz = uitofp i32 %i.bv to double, !dbg !24089
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24102
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24103
  %i.hc = uitofp i32 %i.bw to double, !dbg !24089
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24102
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24103
  %i.hf = uitofp i32 %i.bx to double, !dbg !24089
  %i.hg = fadd double %i.he, %i.hf, !dbg !24102
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24103
  %i.hi = uitofp i32 %i.by to double, !dbg !24089
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24102
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24103
  %i.hl = uitofp i32 %i.bz to double, !dbg !24089
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24102
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24103
  %i.ho = uitofp i32 %i.ca to double, !dbg !24089
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24102
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24103
  %i.hr = uitofp i32 %i.cb to double, !dbg !24089
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24102
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24103
  %i.hu = uitofp i32 %i.cc to double, !dbg !24089
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24102
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24103
  %i.hx = uitofp i32 %i.cd to double, !dbg !24089
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24102
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24103
  %i.ia = uitofp i32 %i.ce to double, !dbg !24089
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24102
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24103
  %i.id = uitofp i32 %i.cf to double, !dbg !24089
  %i.ie = fadd double %i.ic, %i.id, !dbg !24102
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24103
  %i.ig = uitofp i32 %i.cg to double, !dbg !24089
  %i.ih = fadd double %i.if, %i.ig, !dbg !24102
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24103
  %i.ij = uitofp i32 %i.ch to double, !dbg !24089
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24102
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24103
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24104
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24105
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24106
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24107
  ret i64 %i.ip, !dbg !24108
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24109 !guid !24172 {
bb.a:
  %i.a = tail call noundef i64 @llvm.fshr.i64(i64 589684135938649225, i64 589684135938649225, i64 range(i64 0, -9223372036854775808) %2), !dbg !24178 ; 5 uses
  %i.b = icmp samesign ult i64 %2, 17, !dbg !24179
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !24179, !prof !1659

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvCsk79RHlfmHDk_8foldhash15hash_bytes_long(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @168) #40, !dbg !24180, !noalias !24174
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute.exit, !dbg !24181

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %2, 7, !dbg !24182
  br i1 %i.d, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i, label %bb.d, !dbg !24182

bb.d:                                             ; preds = %bb.c
  %i.e = icmp samesign ugt i64 %2, 3, !dbg !24183
  br i1 %i.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i, label %bb.e, !dbg !24183

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i.i.i.i = load i64, ptr %1, align 1, !dbg !24184, !alias.scope !24175, !noalias !24176
  %i.f = xor i64 %.sroa.014.0.copyload.i.i.i.i.i.i.i, %i.a, !dbg !24185
  %i.g = getelementptr i8, ptr %1, i64 %2, !dbg !24186
  %i.h = getelementptr i8, ptr %i.g, i64 -8, !dbg !24186
  %.sroa.016.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.h, align 1, !dbg !24187, !alias.scope !24175, !noalias !24176
  %i.i = xor i64 %.sroa.016.0.copyload.i.i.i.i.i.i.i, 4577018097722394903, !dbg !24188
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !24189

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i.i.i.i = icmp eq i64 %2, 0, !dbg !24190
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, label %bb.f, !dbg !24190

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 %2, !dbg !24191
  %i.k = getelementptr i8, ptr %i.j, i64 -4, !dbg !24191
  %.sroa.019.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.k, align 1, !dbg !24192, !alias.scope !24175, !noalias !24176
  %.sroa.018.0.copyload.i.i.i.i.i.i.i = load i32, ptr %1, align 1, !dbg !24193, !alias.scope !24175, !noalias !24176
  %i.l = zext i32 %.sroa.018.0.copyload.i.i.i.i.i.i.i to i64, !dbg !24194
  %i.m = xor i64 %i.a, %i.l, !dbg !24195
  %i.n = zext i32 %.sroa.019.0.copyload.i.i.i.i.i.i.i to i64, !dbg !24196
  %i.o = xor i64 %i.n, 4577018097722394903, !dbg !24197
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !24198

bb.f:                                             ; preds = %bb.e
  %i.p = load i8, ptr %1, align 1, !dbg !24199, !alias.scope !24175, !noalias !24176, !noundef !1573
  %i.q = lshr i64 %2, 1, !dbg !24200
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q, !dbg !24201
  %i.s = load i8, ptr %i.r, align 1, !dbg !24201, !alias.scope !24175, !noalias !24176, !noundef !1573
  %i.t = getelementptr i8, ptr %1, i64 %2, !dbg !24202
  %i.u = getelementptr i8, ptr %i.t, i64 -1, !dbg !24202
  %i.v = load i8, ptr %i.u, align 1, !dbg !24202, !alias.scope !24175, !noalias !24176, !noundef !1573
  %i.w = zext i8 %i.p to i64, !dbg !24203
  %i.x = xor i64 %i.a, %i.w, !dbg !24204
  %i.y = zext i8 %i.v to i64, !dbg !24205
  %i.z = shl nuw nsw i64 %i.y, 8, !dbg !24206
  %i.aa = zext i8 %i.s to i64, !dbg !24207
  %i.ab = or disjoint i64 %i.z, %i.aa, !dbg !24206
  %i.ac = xor i64 %i.ab, 4577018097722394903, !dbg !24208
  br label %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i, !dbg !24209

_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i: ; preds = %bb.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i, %bb.e, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i = phi i64 [ %i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.o, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.ac, %bb.f ], [ 4577018097722394903, %bb.e ], !dbg !24210
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.f, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.m, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCslFlrwjHoTci_14polars_compute.exit.i.i.i.i.i.i ], [ %i.x, %bb.f ], [ %i.a, %bb.e ]
  %i.ad = zext i64 %.sroa.0.0.i.i.i.i.i.i.i to i128, !dbg !24211
  %i.ae = zext i64 %.sroa.04.0.i.i.i.i.i.i.i to i128, !dbg !24212
  %i.af = mul nuw i128 %i.ad, %i.ae, !dbg !24213  ; 2 uses
  %i.ag = lshr i128 %i.af, 64, !dbg !24214
  %i.ah = xor i128 %i.ag, %i.af, !dbg !24215
  %i.ai = trunc i128 %i.ah to i64, !dbg !24215
  br label %_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute.exit, !dbg !24181

_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality10FixedStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRShECslFlrwjHoTci_14polars_compute.exit: ; preds = %bb.b, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i
  %storemerge.i.i.i1.i.i.i = phi i64 [ %i.c, %bb.b ], [ %i.ai, %_RNvCsk79RHlfmHDk_8foldhash16hash_bytes_short.exit.i.i.i.i.i.i ], !dbg !24216
  %i.aj = xor i64 %storemerge.i.i.i1.i.i.i, %2, !dbg !24217
  %i.ak = zext i64 %i.aj to i128, !dbg !24218
  %i.al = mul nuw i128 %i.ak, 13883517620612518109, !dbg !24219 ; 2 uses
  %i.am = lshr i128 %i.al, 64, !dbg !24220
  %.masked.i = and i128 %i.al, 18446744073709551615, !dbg !24221
  %i.an = xor i128 %.masked.i, %i.am, !dbg !24221
  %i.ao = mul nuw nsw i128 %i.an, 2611923443488327891, !dbg !24222 ; 2 uses
  %i.ap = lshr i128 %i.ao, 64, !dbg !24223
  %i.aq = xor i128 %i.ap, %i.ao, !dbg !24224
  %i.ar = trunc i128 %i.aq to i64, !dbg !24224    ; 2 uses
  %i.as = lshr i64 %i.ar, 14, !dbg !24225
  %i.at = or disjoint i64 %i.as, 1125899906842624, !dbg !24226
  %i.au = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.at, i1 true), !dbg !24227
  %i.av = trunc nuw nsw i64 %i.au to i8, !dbg !24227
  %i.aw = add nuw nsw i8 %i.av, 1, !dbg !24226
  %i.ax = and i64 %i.ar, 16383, !dbg !24228
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax, !dbg !24229 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !dbg !24229, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.aw, i8 %i.az), !dbg !24230
  store i8 %.sroa.0.0.i, ptr %i.ay, align 1, !dbg !24231
  ret void, !dbg !24232
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24233 !guid !24279 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24280), !dbg !24288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24289, !alias.scope !24280
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24290 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24290, !noalias !24281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24291, !noalias !24280
  br label %bb.b, !dbg !24292

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24293
  %i.e = load i8, ptr %i.d, align 2, !dbg !24294, !alias.scope !24283, !noalias !24281, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24295         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24296
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24296

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24296 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24296, !alias.scope !24280, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24296
  store i32 %i.j, ptr %i.h, align 4, !dbg !24296, !alias.scope !24280
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24293
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24293
  %i.m = load i8, ptr %i.l, align 1, !dbg !24294, !alias.scope !24283, !noalias !24281, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24295         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24296
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24296

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24297     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24296 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24296, !alias.scope !24280, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24296
  store i32 %i.s, ptr %i.q, align 4, !dbg !24296, !alias.scope !24280
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24292
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE13get_histogramB6_.exit, label %bb.b, !dbg !24292

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24295
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24296, !noalias !24281
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24298, !noalias !24281
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24299
  %i.u = load i32, ptr %i.t, align 4, !dbg !24299, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24299
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24300
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24300 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24301
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24301
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24301

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24302
  br label %bb.g, !dbg !24303

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24304 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24305
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24306 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24307 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24308 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24309
  %i.af = fmul double %i.ac, %i.ae, !dbg !24308
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24310 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24311
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24311

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24312
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24313
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24314

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogShE13get_histogramB6_.exit ], !dbg !24305
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24315
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24315, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24315
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24315, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24315
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24315, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24315
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24315, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24315
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24315, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24315
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24315, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24315
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24315, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24315
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24315, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24315
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24315, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24315
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24315, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24315
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24315, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24315
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24315, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24315
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24315, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24315
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24315, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24315
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24315, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24315
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24315, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24315
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24315, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24315
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24315, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24315
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24315, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24315
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24315, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24315
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24315, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24315
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24315, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24315
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24315, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24315
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24315, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24315
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24315, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24315
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24315, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24315
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24315, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24315
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24315, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24315
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24315, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24315
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24315, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24315
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24315, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24315
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24315, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24315
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24315, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24315
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24315, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24315
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24315, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24315
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24315, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24315
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24315, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24315
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24315, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24315
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24315, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24315
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24315, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24315
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24315, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24315
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24315, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24315
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24315, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24315
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24315, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24315
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24315, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24315
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24315, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24315
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24315, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24315
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24315, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24315
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24315, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24315
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24315, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24316, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24316
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24316 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24317
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24317

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24318 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24319 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24320 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24321 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24322
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24323 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24324
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24325
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24325

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24326
  br label %bb.j, !dbg !24327

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24318
  %i.cs = uitofp i32 %i.ak to double, !dbg !24315
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24328
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24329
  %i.cv = uitofp i32 %i.al to double, !dbg !24315
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24328
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24329
  %i.cy = uitofp i32 %i.am to double, !dbg !24315
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24328
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24329
  %i.db = uitofp i32 %i.an to double, !dbg !24315
  %i.dc = fadd double %i.da, %i.db, !dbg !24328
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24329
  %i.de = uitofp i32 %i.ao to double, !dbg !24315
  %i.df = fadd double %i.dd, %i.de, !dbg !24328
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24329
  %i.dh = uitofp i32 %i.ap to double, !dbg !24315
  %i.di = fadd double %i.dg, %i.dh, !dbg !24328
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24329
  %i.dk = uitofp i32 %i.aq to double, !dbg !24315
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24328
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24329
  %i.dn = uitofp i32 %i.ar to double, !dbg !24315
  %i.do = fadd double %i.dm, %i.dn, !dbg !24328
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24329
  %i.dq = uitofp i32 %i.as to double, !dbg !24315
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24328
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24329
  %i.dt = uitofp i32 %i.at to double, !dbg !24315
  %i.du = fadd double %i.ds, %i.dt, !dbg !24328
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24329
  %i.dw = uitofp i32 %i.au to double, !dbg !24315
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24328
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24329
  %i.dz = uitofp i32 %i.av to double, !dbg !24315
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24328
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24329
  %i.ec = uitofp i32 %i.aw to double, !dbg !24315
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24328
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24329
  %i.ef = uitofp i32 %i.ax to double, !dbg !24315
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24328
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24329
  %i.ei = uitofp i32 %i.ay to double, !dbg !24315
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24328
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24329
  %i.el = uitofp i32 %i.az to double, !dbg !24315
  %i.em = fadd double %i.ek, %i.el, !dbg !24328
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !24329
  %i.eo = uitofp i32 %i.ba to double, !dbg !24315
  %i.ep = fadd double %i.en, %i.eo, !dbg !24328
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !24329
  %i.er = uitofp i32 %i.bb to double, !dbg !24315
  %i.es = fadd double %i.eq, %i.er, !dbg !24328
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !24329
  %i.eu = uitofp i32 %i.bc to double, !dbg !24315
  %i.ev = fadd double %i.et, %i.eu, !dbg !24328
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !24329
  %i.ex = uitofp i32 %i.bd to double, !dbg !24315
  %i.ey = fadd double %i.ew, %i.ex, !dbg !24328
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !24329
  %i.fa = uitofp i32 %i.be to double, !dbg !24315
  %i.fb = fadd double %i.ez, %i.fa, !dbg !24328
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !24329
  %i.fd = uitofp i32 %i.bf to double, !dbg !24315
  %i.fe = fadd double %i.fc, %i.fd, !dbg !24328
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !24329
  %i.fg = uitofp i32 %i.bg to double, !dbg !24315
  %i.fh = fadd double %i.ff, %i.fg, !dbg !24328
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !24329
  %i.fj = uitofp i32 %i.bh to double, !dbg !24315
  %i.fk = fadd double %i.fi, %i.fj, !dbg !24328
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !24329
  %i.fm = uitofp i32 %i.bi to double, !dbg !24315
  %i.fn = fadd double %i.fl, %i.fm, !dbg !24328
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !24329
  %i.fp = uitofp i32 %i.bj to double, !dbg !24315
  %i.fq = fadd double %i.fo, %i.fp, !dbg !24328
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !24329
  %i.fs = uitofp i32 %i.bk to double, !dbg !24315
  %i.ft = fadd double %i.fr, %i.fs, !dbg !24328
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !24329
  %i.fv = uitofp i32 %i.bl to double, !dbg !24315
  %i.fw = fadd double %i.fu, %i.fv, !dbg !24328
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !24329
  %i.fy = uitofp i32 %i.bm to double, !dbg !24315
  %i.fz = fadd double %i.fx, %i.fy, !dbg !24328
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !24329
  %i.gb = uitofp i32 %i.bn to double, !dbg !24315
  %i.gc = fadd double %i.ga, %i.gb, !dbg !24328
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !24329
  %i.ge = uitofp i32 %i.bo to double, !dbg !24315
  %i.gf = fadd double %i.gd, %i.ge, !dbg !24328
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !24329
  %i.gh = uitofp i32 %i.bp to double, !dbg !24315
  %i.gi = fadd double %i.gg, %i.gh, !dbg !24328
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !24329
  %i.gk = uitofp i32 %i.bq to double, !dbg !24315
  %i.gl = fadd double %i.gj, %i.gk, !dbg !24328
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !24329
  %i.gn = uitofp i32 %i.br to double, !dbg !24315
  %i.go = fadd double %i.gm, %i.gn, !dbg !24328
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !24329
  %i.gq = uitofp i32 %i.bs to double, !dbg !24315
  %i.gr = fadd double %i.gp, %i.gq, !dbg !24328
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !24329
  %i.gt = uitofp i32 %i.bt to double, !dbg !24315
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24328
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24329
  %i.gw = uitofp i32 %i.bu to double, !dbg !24315
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24328
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24329
  %i.gz = uitofp i32 %i.bv to double, !dbg !24315
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24328
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24329
  %i.hc = uitofp i32 %i.bw to double, !dbg !24315
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24328
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24329
  %i.hf = uitofp i32 %i.bx to double, !dbg !24315
  %i.hg = fadd double %i.he, %i.hf, !dbg !24328
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24329
  %i.hi = uitofp i32 %i.by to double, !dbg !24315
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24328
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24329
  %i.hl = uitofp i32 %i.bz to double, !dbg !24315
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24328
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24329
  %i.ho = uitofp i32 %i.ca to double, !dbg !24315
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24328
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24329
  %i.hr = uitofp i32 %i.cb to double, !dbg !24315
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24328
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24329
  %i.hu = uitofp i32 %i.cc to double, !dbg !24315
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24328
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24329
  %i.hx = uitofp i32 %i.cd to double, !dbg !24315
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24328
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24329
  %i.ia = uitofp i32 %i.ce to double, !dbg !24315
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24328
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24329
  %i.id = uitofp i32 %i.cf to double, !dbg !24315
  %i.ie = fadd double %i.ic, %i.id, !dbg !24328
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24329
  %i.ig = uitofp i32 %i.cg to double, !dbg !24315
  %i.ih = fadd double %i.if, %i.ig, !dbg !24328
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24329
  %i.ij = uitofp i32 %i.ch to double, !dbg !24315
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24328
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24329
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24330
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24331
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24332
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24333
  ret i64 %i.ip, !dbg !24334
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24335 !guid !24356 {
bb.a:
  %.val.i.i = load i8, ptr %1, align 1, !dbg !24361, !alias.scope !24357, !noalias !24358, !noundef !1573
  %i.a = zext i8 %.val.i.i to i64, !dbg !24362
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !24363
  %i.c = zext nneg i64 %i.b to i128, !dbg !24364
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !24365 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !24366
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !24367
  %i.f = xor i128 %.masked.i, %i.e, !dbg !24367
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !24368 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !24369
  %i.i = xor i128 %i.h, %i.g, !dbg !24370
  %i.j = trunc i128 %i.i to i64, !dbg !24370      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !24371
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !24372
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !24373
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !24373
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !24372
  %i.p = and i64 %i.j, 16383, !dbg !24374
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24375 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !24375, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !24376
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !24377
  ret void, !dbg !24378
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24379 !guid !24425 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24426), !dbg !24434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24435, !alias.scope !24426
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24436 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24436, !noalias !24427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24437, !noalias !24426
  br label %bb.b, !dbg !24438

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24439
  %i.e = load i8, ptr %i.d, align 2, !dbg !24440, !alias.scope !24429, !noalias !24427, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24441         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24442
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24442

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24442 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24442, !alias.scope !24426, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24442
  store i32 %i.j, ptr %i.h, align 4, !dbg !24442, !alias.scope !24426
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24439
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24439
  %i.m = load i8, ptr %i.l, align 1, !dbg !24440, !alias.scope !24429, !noalias !24427, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24441         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24442
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24442

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24443     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24442 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24442, !alias.scope !24426, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24442
  store i32 %i.s, ptr %i.q, align 4, !dbg !24442, !alias.scope !24426
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24438
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE13get_histogramB6_.exit, label %bb.b, !dbg !24438

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24441
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24442, !noalias !24427
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24444, !noalias !24427
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24445
  %i.u = load i32, ptr %i.t, align 4, !dbg !24445, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24445
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24446
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24446 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24447
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24447
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24447

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24448
  br label %bb.g, !dbg !24449

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24450 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24451
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24452 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24453 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24454 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24455
  %i.af = fmul double %i.ac, %i.ae, !dbg !24454
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24456 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24457
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24457

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24458
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24459
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24460

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogaE13get_histogramB6_.exit ], !dbg !24451
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24461
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24461, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24461
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24461, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24461
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24461, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24461
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24461, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24461
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24461, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24461
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24461, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24461
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24461, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24461
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24461, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24461
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24461, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24461
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24461, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24461
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24461, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24461
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24461, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24461
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24461, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24461
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24461, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24461
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24461, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24461
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24461, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24461
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24461, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24461
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24461, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24461
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24461, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24461
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24461, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24461
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24461, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24461
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24461, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24461
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24461, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24461
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24461, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24461
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24461, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24461
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24461, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24461
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24461, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24461
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24461, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24461
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24461, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24461
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24461, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24461
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24461, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24461
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24461, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24461
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24461, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24461
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24461, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24461
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24461, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24461
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24461, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24461
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24461, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24461
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24461, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24461
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24461, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24461
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24461, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24461
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24461, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24461
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24461, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24461
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24461, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24461
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24461, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24461
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24461, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24461
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24461, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24461
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24461, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24461
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24461, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24461
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24461, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24461
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24461, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24462, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24462
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24462 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24463
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24463

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24464 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24465 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24466 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24467 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24468
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24469 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24470
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24471
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24471

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24472
  br label %bb.j, !dbg !24473

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24464
  %i.cs = uitofp i32 %i.ak to double, !dbg !24461
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24474
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24475
  %i.cv = uitofp i32 %i.al to double, !dbg !24461
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24474
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24475
  %i.cy = uitofp i32 %i.am to double, !dbg !24461
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24474
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24475
  %i.db = uitofp i32 %i.an to double, !dbg !24461
  %i.dc = fadd double %i.da, %i.db, !dbg !24474
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24475
  %i.de = uitofp i32 %i.ao to double, !dbg !24461
  %i.df = fadd double %i.dd, %i.de, !dbg !24474
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24475
  %i.dh = uitofp i32 %i.ap to double, !dbg !24461
  %i.di = fadd double %i.dg, %i.dh, !dbg !24474
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24475
  %i.dk = uitofp i32 %i.aq to double, !dbg !24461
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24474
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24475
  %i.dn = uitofp i32 %i.ar to double, !dbg !24461
  %i.do = fadd double %i.dm, %i.dn, !dbg !24474
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24475
  %i.dq = uitofp i32 %i.as to double, !dbg !24461
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24474
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24475
  %i.dt = uitofp i32 %i.at to double, !dbg !24461
  %i.du = fadd double %i.ds, %i.dt, !dbg !24474
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24475
  %i.dw = uitofp i32 %i.au to double, !dbg !24461
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24474
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24475
  %i.dz = uitofp i32 %i.av to double, !dbg !24461
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24474
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24475
  %i.ec = uitofp i32 %i.aw to double, !dbg !24461
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24474
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24475
  %i.ef = uitofp i32 %i.ax to double, !dbg !24461
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24474
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24475
  %i.ei = uitofp i32 %i.ay to double, !dbg !24461
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24474
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24475
  %i.el = uitofp i32 %i.az to double, !dbg !24461
  %i.em = fadd double %i.ek, %i.el, !dbg !24474
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !24475
  %i.eo = uitofp i32 %i.ba to double, !dbg !24461
  %i.ep = fadd double %i.en, %i.eo, !dbg !24474
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !24475
  %i.er = uitofp i32 %i.bb to double, !dbg !24461
  %i.es = fadd double %i.eq, %i.er, !dbg !24474
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !24475
  %i.eu = uitofp i32 %i.bc to double, !dbg !24461
  %i.ev = fadd double %i.et, %i.eu, !dbg !24474
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !24475
  %i.ex = uitofp i32 %i.bd to double, !dbg !24461
  %i.ey = fadd double %i.ew, %i.ex, !dbg !24474
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !24475
  %i.fa = uitofp i32 %i.be to double, !dbg !24461
  %i.fb = fadd double %i.ez, %i.fa, !dbg !24474
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !24475
  %i.fd = uitofp i32 %i.bf to double, !dbg !24461
  %i.fe = fadd double %i.fc, %i.fd, !dbg !24474
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !24475
  %i.fg = uitofp i32 %i.bg to double, !dbg !24461
  %i.fh = fadd double %i.ff, %i.fg, !dbg !24474
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !24475
  %i.fj = uitofp i32 %i.bh to double, !dbg !24461
  %i.fk = fadd double %i.fi, %i.fj, !dbg !24474
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !24475
  %i.fm = uitofp i32 %i.bi to double, !dbg !24461
  %i.fn = fadd double %i.fl, %i.fm, !dbg !24474
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !24475
  %i.fp = uitofp i32 %i.bj to double, !dbg !24461
  %i.fq = fadd double %i.fo, %i.fp, !dbg !24474
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !24475
  %i.fs = uitofp i32 %i.bk to double, !dbg !24461
  %i.ft = fadd double %i.fr, %i.fs, !dbg !24474
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !24475
  %i.fv = uitofp i32 %i.bl to double, !dbg !24461
  %i.fw = fadd double %i.fu, %i.fv, !dbg !24474
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !24475
  %i.fy = uitofp i32 %i.bm to double, !dbg !24461
  %i.fz = fadd double %i.fx, %i.fy, !dbg !24474
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !24475
  %i.gb = uitofp i32 %i.bn to double, !dbg !24461
  %i.gc = fadd double %i.ga, %i.gb, !dbg !24474
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !24475
  %i.ge = uitofp i32 %i.bo to double, !dbg !24461
  %i.gf = fadd double %i.gd, %i.ge, !dbg !24474
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !24475
  %i.gh = uitofp i32 %i.bp to double, !dbg !24461
  %i.gi = fadd double %i.gg, %i.gh, !dbg !24474
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !24475
  %i.gk = uitofp i32 %i.bq to double, !dbg !24461
  %i.gl = fadd double %i.gj, %i.gk, !dbg !24474
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !24475
  %i.gn = uitofp i32 %i.br to double, !dbg !24461
  %i.go = fadd double %i.gm, %i.gn, !dbg !24474
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !24475
  %i.gq = uitofp i32 %i.bs to double, !dbg !24461
  %i.gr = fadd double %i.gp, %i.gq, !dbg !24474
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !24475
  %i.gt = uitofp i32 %i.bt to double, !dbg !24461
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24474
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24475
  %i.gw = uitofp i32 %i.bu to double, !dbg !24461
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24474
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24475
  %i.gz = uitofp i32 %i.bv to double, !dbg !24461
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24474
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24475
  %i.hc = uitofp i32 %i.bw to double, !dbg !24461
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24474
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24475
  %i.hf = uitofp i32 %i.bx to double, !dbg !24461
  %i.hg = fadd double %i.he, %i.hf, !dbg !24474
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24475
  %i.hi = uitofp i32 %i.by to double, !dbg !24461
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24474
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24475
  %i.hl = uitofp i32 %i.bz to double, !dbg !24461
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24474
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24475
  %i.ho = uitofp i32 %i.ca to double, !dbg !24461
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24474
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24475
  %i.hr = uitofp i32 %i.cb to double, !dbg !24461
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24474
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24475
  %i.hu = uitofp i32 %i.cc to double, !dbg !24461
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24474
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24475
  %i.hx = uitofp i32 %i.cd to double, !dbg !24461
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24474
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24475
  %i.ia = uitofp i32 %i.ce to double, !dbg !24461
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24474
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24475
  %i.id = uitofp i32 %i.cf to double, !dbg !24461
  %i.ie = fadd double %i.ic, %i.id, !dbg !24474
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24475
  %i.ig = uitofp i32 %i.cg to double, !dbg !24461
  %i.ih = fadd double %i.if, %i.ig, !dbg !24474
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24475
  %i.ij = uitofp i32 %i.ch to double, !dbg !24461
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24474
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24475
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24476
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24477
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24478
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24479
  ret i64 %i.ip, !dbg !24480
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24481 !guid !24502 {
bb.a:
  %.val.i.i = load i8, ptr %1, align 1, !dbg !24507, !alias.scope !24503, !noalias !24504, !noundef !1573
  %i.a = zext i8 %.val.i.i to i64, !dbg !24508
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !24509
  %i.c = zext nneg i64 %i.b to i128, !dbg !24510
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !24511 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !24512
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !24513
  %i.f = xor i128 %.masked.i, %i.e, !dbg !24513
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !24514 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !24515
  %i.i = xor i128 %i.h, %i.g, !dbg !24516
  %i.j = trunc i128 %i.i to i64, !dbg !24516      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !24517
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !24518
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !24519
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !24519
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !24518
  %i.p = and i64 %i.j, 16383, !dbg !24520
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24521 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !24521, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !24522
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !24523
  ret void, !dbg !24524
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24525 !guid !24571 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24572), !dbg !24580
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24581, !alias.scope !24572
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24582 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24582, !noalias !24573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24583, !noalias !24572
  br label %bb.b, !dbg !24584

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24585
  %i.e = load i8, ptr %i.d, align 2, !dbg !24586, !alias.scope !24575, !noalias !24573, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24587         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24588
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24588

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24588 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24588, !alias.scope !24572, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24588
  store i32 %i.j, ptr %i.h, align 4, !dbg !24588, !alias.scope !24572
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24585
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24585
  %i.m = load i8, ptr %i.l, align 1, !dbg !24586, !alias.scope !24575, !noalias !24573, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24587         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24588
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24588

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24589     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24588 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24588, !alias.scope !24572, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24588
  store i32 %i.s, ptr %i.q, align 4, !dbg !24588, !alias.scope !24572
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24584
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE13get_histogramB6_.exit, label %bb.b, !dbg !24584

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24587
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24588, !noalias !24573
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24590, !noalias !24573
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24591
  %i.u = load i32, ptr %i.t, align 4, !dbg !24591, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24591
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24592
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24592 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24593
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24593
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24593

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24594
  br label %bb.g, !dbg !24595

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24596 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24597
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24598 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24599 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24600 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24601
  %i.af = fmul double %i.ac, %i.ae, !dbg !24600
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24602 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24603
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24603

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24604
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24605
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24606

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoghE13get_histogramB6_.exit ], !dbg !24597
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24607
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24607, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24607
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24607, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24607
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24607, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24607
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24607, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24607
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24607, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24607
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24607, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24607
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24607, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24607
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24607, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24607
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24607, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24607
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24607, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24607
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24607, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24607
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24607, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24607
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24607, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24607
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24607, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24607
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24607, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24607
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24607, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24607
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24607, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24607
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24607, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24607
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24607, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24607
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24607, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24607
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24607, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24607
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24607, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24607
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24607, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24607
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24607, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24607
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24607, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24607
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24607, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24607
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24607, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24607
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24607, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24607
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24607, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24607
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24607, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24607
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24607, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24607
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24607, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24607
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24607, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24607
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24607, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24607
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24607, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24607
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24607, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24607
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24607, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24607
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24607, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24607
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24607, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24607
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24607, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24607
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24607, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24607
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24607, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24607
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24607, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24607
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24607, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24607
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24607, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24607
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24607, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24607
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24607, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24607
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24607, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24607
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24607, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24607
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24607, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24608, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24608
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24608 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24609
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24609

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24610 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24611 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24612 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24613 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24614
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24615 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24616
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24617
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24617

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24618
  br label %bb.j, !dbg !24619

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24610
  %i.cs = uitofp i32 %i.ak to double, !dbg !24607
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24620
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24621
  %i.cv = uitofp i32 %i.al to double, !dbg !24607
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24620
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24621
  %i.cy = uitofp i32 %i.am to double, !dbg !24607
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24620
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24621
  %i.db = uitofp i32 %i.an to double, !dbg !24607
  %i.dc = fadd double %i.da, %i.db, !dbg !24620
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24621
  %i.de = uitofp i32 %i.ao to double, !dbg !24607
  %i.df = fadd double %i.dd, %i.de, !dbg !24620
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24621
  %i.dh = uitofp i32 %i.ap to double, !dbg !24607
  %i.di = fadd double %i.dg, %i.dh, !dbg !24620
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24621
  %i.dk = uitofp i32 %i.aq to double, !dbg !24607
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24620
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24621
  %i.dn = uitofp i32 %i.ar to double, !dbg !24607
  %i.do = fadd double %i.dm, %i.dn, !dbg !24620
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24621
  %i.dq = uitofp i32 %i.as to double, !dbg !24607
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24620
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24621
  %i.dt = uitofp i32 %i.at to double, !dbg !24607
  %i.du = fadd double %i.ds, %i.dt, !dbg !24620
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24621
  %i.dw = uitofp i32 %i.au to double, !dbg !24607
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24620
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24621
  %i.dz = uitofp i32 %i.av to double, !dbg !24607
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24620
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24621
  %i.ec = uitofp i32 %i.aw to double, !dbg !24607
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24620
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24621
  %i.ef = uitofp i32 %i.ax to double, !dbg !24607
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24620
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24621
  %i.ei = uitofp i32 %i.ay to double, !dbg !24607
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24620
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24621
  %i.el = uitofp i32 %i.az to double, !dbg !24607
  %i.em = fadd double %i.ek, %i.el, !dbg !24620
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !24621
  %i.eo = uitofp i32 %i.ba to double, !dbg !24607
  %i.ep = fadd double %i.en, %i.eo, !dbg !24620
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !24621
  %i.er = uitofp i32 %i.bb to double, !dbg !24607
  %i.es = fadd double %i.eq, %i.er, !dbg !24620
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !24621
  %i.eu = uitofp i32 %i.bc to double, !dbg !24607
  %i.ev = fadd double %i.et, %i.eu, !dbg !24620
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !24621
  %i.ex = uitofp i32 %i.bd to double, !dbg !24607
  %i.ey = fadd double %i.ew, %i.ex, !dbg !24620
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !24621
  %i.fa = uitofp i32 %i.be to double, !dbg !24607
  %i.fb = fadd double %i.ez, %i.fa, !dbg !24620
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !24621
  %i.fd = uitofp i32 %i.bf to double, !dbg !24607
  %i.fe = fadd double %i.fc, %i.fd, !dbg !24620
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !24621
  %i.fg = uitofp i32 %i.bg to double, !dbg !24607
  %i.fh = fadd double %i.ff, %i.fg, !dbg !24620
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !24621
  %i.fj = uitofp i32 %i.bh to double, !dbg !24607
  %i.fk = fadd double %i.fi, %i.fj, !dbg !24620
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !24621
  %i.fm = uitofp i32 %i.bi to double, !dbg !24607
  %i.fn = fadd double %i.fl, %i.fm, !dbg !24620
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !24621
  %i.fp = uitofp i32 %i.bj to double, !dbg !24607
  %i.fq = fadd double %i.fo, %i.fp, !dbg !24620
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !24621
  %i.fs = uitofp i32 %i.bk to double, !dbg !24607
  %i.ft = fadd double %i.fr, %i.fs, !dbg !24620
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !24621
  %i.fv = uitofp i32 %i.bl to double, !dbg !24607
  %i.fw = fadd double %i.fu, %i.fv, !dbg !24620
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !24621
  %i.fy = uitofp i32 %i.bm to double, !dbg !24607
  %i.fz = fadd double %i.fx, %i.fy, !dbg !24620
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !24621
  %i.gb = uitofp i32 %i.bn to double, !dbg !24607
  %i.gc = fadd double %i.ga, %i.gb, !dbg !24620
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !24621
  %i.ge = uitofp i32 %i.bo to double, !dbg !24607
  %i.gf = fadd double %i.gd, %i.ge, !dbg !24620
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !24621
  %i.gh = uitofp i32 %i.bp to double, !dbg !24607
  %i.gi = fadd double %i.gg, %i.gh, !dbg !24620
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !24621
  %i.gk = uitofp i32 %i.bq to double, !dbg !24607
  %i.gl = fadd double %i.gj, %i.gk, !dbg !24620
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !24621
  %i.gn = uitofp i32 %i.br to double, !dbg !24607
  %i.go = fadd double %i.gm, %i.gn, !dbg !24620
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !24621
  %i.gq = uitofp i32 %i.bs to double, !dbg !24607
  %i.gr = fadd double %i.gp, %i.gq, !dbg !24620
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !24621
  %i.gt = uitofp i32 %i.bt to double, !dbg !24607
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24620
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24621
  %i.gw = uitofp i32 %i.bu to double, !dbg !24607
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24620
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24621
  %i.gz = uitofp i32 %i.bv to double, !dbg !24607
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24620
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24621
  %i.hc = uitofp i32 %i.bw to double, !dbg !24607
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24620
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24621
  %i.hf = uitofp i32 %i.bx to double, !dbg !24607
  %i.hg = fadd double %i.he, %i.hf, !dbg !24620
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24621
  %i.hi = uitofp i32 %i.by to double, !dbg !24607
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24620
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24621
  %i.hl = uitofp i32 %i.bz to double, !dbg !24607
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24620
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24621
  %i.ho = uitofp i32 %i.ca to double, !dbg !24607
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24620
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24621
  %i.hr = uitofp i32 %i.cb to double, !dbg !24607
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24620
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24621
  %i.hu = uitofp i32 %i.cc to double, !dbg !24607
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24620
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24621
  %i.hx = uitofp i32 %i.cd to double, !dbg !24607
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24620
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24621
  %i.ia = uitofp i32 %i.ce to double, !dbg !24607
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24620
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24621
  %i.id = uitofp i32 %i.cf to double, !dbg !24607
  %i.ie = fadd double %i.ic, %i.id, !dbg !24620
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24621
  %i.ig = uitofp i32 %i.cg to double, !dbg !24607
  %i.ih = fadd double %i.if, %i.ig, !dbg !24620
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24621
  %i.ij = uitofp i32 %i.ch to double, !dbg !24607
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24620
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24621
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24622
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24623
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24624
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24625
  ret i64 %i.ip, !dbg !24626
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24627 !guid !24648 {
bb.a:
  %.val.i.i = load i32, ptr %1, align 4, !dbg !24653, !alias.scope !24649, !noalias !24650, !noundef !1573
  %i.a = zext i32 %.val.i.i to i64, !dbg !24654
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !24655
  %i.c = zext nneg i64 %i.b to i128, !dbg !24656
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !24657 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !24658
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !24659
  %i.f = xor i128 %.masked.i, %i.e, !dbg !24659
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !24660 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !24661
  %i.i = xor i128 %i.h, %i.g, !dbg !24662
  %i.j = trunc i128 %i.i to i64, !dbg !24662      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !24663
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !24664
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !24665
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !24665
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !24664
  %i.p = and i64 %i.j, 16383, !dbg !24666
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24667 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !24667, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !24668
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !24669
  ret void, !dbg !24670
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24671 !guid !24717 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24718), !dbg !24726
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24727, !alias.scope !24718
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24728 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24728, !noalias !24719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24729, !noalias !24718
  br label %bb.b, !dbg !24730

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24731
  %i.e = load i8, ptr %i.d, align 2, !dbg !24732, !alias.scope !24721, !noalias !24719, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24733         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24734
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24734

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24734 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24734, !alias.scope !24718, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24734
  store i32 %i.j, ptr %i.h, align 4, !dbg !24734, !alias.scope !24718
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24731
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24731
  %i.m = load i8, ptr %i.l, align 1, !dbg !24732, !alias.scope !24721, !noalias !24719, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24733         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24734
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24734

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24735     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24734 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24734, !alias.scope !24718, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24734
  store i32 %i.s, ptr %i.q, align 4, !dbg !24734, !alias.scope !24718
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24730
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE13get_histogramB6_.exit, label %bb.b, !dbg !24730

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24733
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24734, !noalias !24719
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24736, !noalias !24719
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24737
  %i.u = load i32, ptr %i.t, align 4, !dbg !24737, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24737
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24738
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24738 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24739
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24739
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24739

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24740
  br label %bb.g, !dbg !24741

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24742 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24743
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24744 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24745 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24746 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24747
  %i.af = fmul double %i.ac, %i.ae, !dbg !24746
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24748 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24749
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24749

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24750
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24751
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24752

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLoglE13get_histogramB6_.exit ], !dbg !24743
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24753
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24753, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24753
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24753, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24753
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24753, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24753
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24753, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24753
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24753, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24753
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24753, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24753
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24753, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24753
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24753, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24753
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24753, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24753
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24753, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24753
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24753, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24753
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24753, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24753
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24753, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24753
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24753, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24753
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24753, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24753
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24753, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24753
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24753, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24753
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24753, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24753
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24753, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24753
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24753, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24753
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24753, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24753
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24753, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24753
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24753, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24753
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24753, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24753
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24753, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24753
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24753, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24753
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24753, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24753
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24753, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24753
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24753, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24753
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24753, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24753
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24753, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24753
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24753, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24753
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24753, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24753
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24753, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24753
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24753, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24753
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24753, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24753
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24753, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24753
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24753, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24753
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24753, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24753
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24753, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24753
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24753, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24753
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24753, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24753
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24753, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24753
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24753, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24753
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24753, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24753
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24753, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24753
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24753, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24753
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24753, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24753
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24753, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24753
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24753, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24754, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24754
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24754 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24755
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24755

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24756 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24757 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24758 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24759 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24760
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24761 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24762
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24763
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24763

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24764
  br label %bb.j, !dbg !24765

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24756
  %i.cs = uitofp i32 %i.ak to double, !dbg !24753
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24766
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24767
  %i.cv = uitofp i32 %i.al to double, !dbg !24753
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24766
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24767
  %i.cy = uitofp i32 %i.am to double, !dbg !24753
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24766
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24767
  %i.db = uitofp i32 %i.an to double, !dbg !24753
  %i.dc = fadd double %i.da, %i.db, !dbg !24766
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24767
  %i.de = uitofp i32 %i.ao to double, !dbg !24753
  %i.df = fadd double %i.dd, %i.de, !dbg !24766
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24767
  %i.dh = uitofp i32 %i.ap to double, !dbg !24753
  %i.di = fadd double %i.dg, %i.dh, !dbg !24766
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24767
  %i.dk = uitofp i32 %i.aq to double, !dbg !24753
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24766
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24767
  %i.dn = uitofp i32 %i.ar to double, !dbg !24753
  %i.do = fadd double %i.dm, %i.dn, !dbg !24766
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24767
  %i.dq = uitofp i32 %i.as to double, !dbg !24753
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24766
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24767
  %i.dt = uitofp i32 %i.at to double, !dbg !24753
  %i.du = fadd double %i.ds, %i.dt, !dbg !24766
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24767
  %i.dw = uitofp i32 %i.au to double, !dbg !24753
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24766
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24767
  %i.dz = uitofp i32 %i.av to double, !dbg !24753
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24766
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24767
  %i.ec = uitofp i32 %i.aw to double, !dbg !24753
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24766
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24767
  %i.ef = uitofp i32 %i.ax to double, !dbg !24753
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24766
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24767
  %i.ei = uitofp i32 %i.ay to double, !dbg !24753
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24766
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24767
  %i.el = uitofp i32 %i.az to double, !dbg !24753
  %i.em = fadd double %i.ek, %i.el, !dbg !24766
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !24767
  %i.eo = uitofp i32 %i.ba to double, !dbg !24753
  %i.ep = fadd double %i.en, %i.eo, !dbg !24766
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !24767
  %i.er = uitofp i32 %i.bb to double, !dbg !24753
  %i.es = fadd double %i.eq, %i.er, !dbg !24766
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !24767
  %i.eu = uitofp i32 %i.bc to double, !dbg !24753
  %i.ev = fadd double %i.et, %i.eu, !dbg !24766
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !24767
  %i.ex = uitofp i32 %i.bd to double, !dbg !24753
  %i.ey = fadd double %i.ew, %i.ex, !dbg !24766
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !24767
  %i.fa = uitofp i32 %i.be to double, !dbg !24753
  %i.fb = fadd double %i.ez, %i.fa, !dbg !24766
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !24767
  %i.fd = uitofp i32 %i.bf to double, !dbg !24753
  %i.fe = fadd double %i.fc, %i.fd, !dbg !24766
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !24767
  %i.fg = uitofp i32 %i.bg to double, !dbg !24753
  %i.fh = fadd double %i.ff, %i.fg, !dbg !24766
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !24767
  %i.fj = uitofp i32 %i.bh to double, !dbg !24753
  %i.fk = fadd double %i.fi, %i.fj, !dbg !24766
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !24767
  %i.fm = uitofp i32 %i.bi to double, !dbg !24753
  %i.fn = fadd double %i.fl, %i.fm, !dbg !24766
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !24767
  %i.fp = uitofp i32 %i.bj to double, !dbg !24753
  %i.fq = fadd double %i.fo, %i.fp, !dbg !24766
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !24767
  %i.fs = uitofp i32 %i.bk to double, !dbg !24753
  %i.ft = fadd double %i.fr, %i.fs, !dbg !24766
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !24767
  %i.fv = uitofp i32 %i.bl to double, !dbg !24753
  %i.fw = fadd double %i.fu, %i.fv, !dbg !24766
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !24767
  %i.fy = uitofp i32 %i.bm to double, !dbg !24753
  %i.fz = fadd double %i.fx, %i.fy, !dbg !24766
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !24767
  %i.gb = uitofp i32 %i.bn to double, !dbg !24753
  %i.gc = fadd double %i.ga, %i.gb, !dbg !24766
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !24767
  %i.ge = uitofp i32 %i.bo to double, !dbg !24753
  %i.gf = fadd double %i.gd, %i.ge, !dbg !24766
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !24767
  %i.gh = uitofp i32 %i.bp to double, !dbg !24753
  %i.gi = fadd double %i.gg, %i.gh, !dbg !24766
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !24767
  %i.gk = uitofp i32 %i.bq to double, !dbg !24753
  %i.gl = fadd double %i.gj, %i.gk, !dbg !24766
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !24767
  %i.gn = uitofp i32 %i.br to double, !dbg !24753
  %i.go = fadd double %i.gm, %i.gn, !dbg !24766
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !24767
  %i.gq = uitofp i32 %i.bs to double, !dbg !24753
  %i.gr = fadd double %i.gp, %i.gq, !dbg !24766
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !24767
  %i.gt = uitofp i32 %i.bt to double, !dbg !24753
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24766
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24767
  %i.gw = uitofp i32 %i.bu to double, !dbg !24753
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24766
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24767
  %i.gz = uitofp i32 %i.bv to double, !dbg !24753
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24766
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24767
  %i.hc = uitofp i32 %i.bw to double, !dbg !24753
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24766
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24767
  %i.hf = uitofp i32 %i.bx to double, !dbg !24753
  %i.hg = fadd double %i.he, %i.hf, !dbg !24766
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24767
  %i.hi = uitofp i32 %i.by to double, !dbg !24753
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24766
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24767
  %i.hl = uitofp i32 %i.bz to double, !dbg !24753
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24766
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24767
  %i.ho = uitofp i32 %i.ca to double, !dbg !24753
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24766
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24767
  %i.hr = uitofp i32 %i.cb to double, !dbg !24753
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24766
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24767
  %i.hu = uitofp i32 %i.cc to double, !dbg !24753
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24766
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24767
  %i.hx = uitofp i32 %i.cd to double, !dbg !24753
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24766
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24767
  %i.ia = uitofp i32 %i.ce to double, !dbg !24753
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24766
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24767
  %i.id = uitofp i32 %i.cf to double, !dbg !24753
  %i.ie = fadd double %i.ic, %i.id, !dbg !24766
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24767
  %i.ig = uitofp i32 %i.cg to double, !dbg !24753
  %i.ih = fadd double %i.if, %i.ig, !dbg !24766
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24767
  %i.ij = uitofp i32 %i.ch to double, !dbg !24753
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24766
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24767
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24768
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24769
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24770
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24771
  ret i64 %i.ip, !dbg !24772
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24773 !guid !24794 {
bb.a:
  %.val.i.i = load i32, ptr %1, align 4, !dbg !24799, !alias.scope !24795, !noalias !24796, !noundef !1573
  %i.a = zext i32 %.val.i.i to i64, !dbg !24800
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !24801
  %i.c = zext nneg i64 %i.b to i128, !dbg !24802
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !24803 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !24804
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !24805
  %i.f = xor i128 %.masked.i, %i.e, !dbg !24805
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !24806 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !24807
  %i.i = xor i128 %i.h, %i.g, !dbg !24808
  %i.j = trunc i128 %i.i to i64, !dbg !24808      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !24809
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !24810
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !24811
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !24811
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !24810
  %i.p = and i64 %i.j, 16383, !dbg !24812
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24813 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !24813, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !24814
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !24815
  ret void, !dbg !24816
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24817 !guid !24863 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24864), !dbg !24872
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !24873, !alias.scope !24864
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24874 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24874, !noalias !24865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !24875, !noalias !24864
  br label %bb.b, !dbg !24876

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24877
  %i.e = load i8, ptr %i.d, align 2, !dbg !24878, !alias.scope !24867, !noalias !24865, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !24879         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !24880
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !24880

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !24880 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !24880, !alias.scope !24864, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !24880
  store i32 %i.j, ptr %i.h, align 4, !dbg !24880, !alias.scope !24864
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !24877
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !24877
  %i.m = load i8, ptr %i.l, align 1, !dbg !24878, !alias.scope !24867, !noalias !24865, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !24879         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !24880
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !24880

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !24881     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !24880 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !24880, !alias.scope !24864, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !24880
  store i32 %i.s, ptr %i.q, align 4, !dbg !24880, !alias.scope !24864
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !24876
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE13get_histogramB6_.exit, label %bb.b, !dbg !24876

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !24879
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !24880, !noalias !24865
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24882, !noalias !24865
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !24883
  %i.u = load i32, ptr %i.t, align 4, !dbg !24883, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !24883
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !24884
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !24884 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !24885
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !24885
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !24885

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !24886
  br label %bb.g, !dbg !24887

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !24888 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !24889
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !24890 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !24891 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !24892 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !24893
  %i.af = fmul double %i.ac, %i.ae, !dbg !24892
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !24894 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !24895
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !24895

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !24896
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !24897
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !24898

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogmE13get_histogramB6_.exit ], !dbg !24889
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !24899
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !24899, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !24899
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !24899, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !24899
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !24899, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !24899
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !24899, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !24899
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !24899, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !24899
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !24899, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !24899
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !24899, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !24899
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !24899, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !24899
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !24899, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !24899
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !24899, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !24899
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !24899, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !24899
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !24899, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !24899
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !24899, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !24899
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !24899, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !24899
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !24899, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !24899
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !24899, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !24899
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !24899, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !24899
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !24899, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !24899
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !24899, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !24899
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !24899, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !24899
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !24899, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !24899
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !24899, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !24899
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !24899, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !24899
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !24899, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !24899
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !24899, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !24899
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !24899, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !24899
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !24899, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !24899
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !24899, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !24899
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !24899, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !24899
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !24899, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !24899
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !24899, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !24899
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !24899, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !24899
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !24899, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !24899
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !24899, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !24899
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !24899, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !24899
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !24899, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !24899
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !24899, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !24899
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !24899, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !24899
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !24899, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !24899
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !24899, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !24899
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !24899, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !24899
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !24899, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !24899
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !24899, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !24899
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !24899, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24899
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !24899, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !24899
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !24899, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24899
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !24899, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !24899
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !24899, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24899
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !24899, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !24899
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !24899, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !24900, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !24900
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !24900 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !24901
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !24901

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24902 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24903 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24904 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !24905 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !24906
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !24907 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !24908
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !24909
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !24909

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !24910
  br label %bb.j, !dbg !24911

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !24902
  %i.cs = uitofp i32 %i.ak to double, !dbg !24899
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !24912
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !24913
  %i.cv = uitofp i32 %i.al to double, !dbg !24899
  %i.cw = fadd double %i.cu, %i.cv, !dbg !24912
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !24913
  %i.cy = uitofp i32 %i.am to double, !dbg !24899
  %i.cz = fadd double %i.cx, %i.cy, !dbg !24912
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !24913
  %i.db = uitofp i32 %i.an to double, !dbg !24899
  %i.dc = fadd double %i.da, %i.db, !dbg !24912
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !24913
  %i.de = uitofp i32 %i.ao to double, !dbg !24899
  %i.df = fadd double %i.dd, %i.de, !dbg !24912
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !24913
  %i.dh = uitofp i32 %i.ap to double, !dbg !24899
  %i.di = fadd double %i.dg, %i.dh, !dbg !24912
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !24913
  %i.dk = uitofp i32 %i.aq to double, !dbg !24899
  %i.dl = fadd double %i.dj, %i.dk, !dbg !24912
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !24913
  %i.dn = uitofp i32 %i.ar to double, !dbg !24899
  %i.do = fadd double %i.dm, %i.dn, !dbg !24912
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !24913
  %i.dq = uitofp i32 %i.as to double, !dbg !24899
  %i.dr = fadd double %i.dp, %i.dq, !dbg !24912
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !24913
  %i.dt = uitofp i32 %i.at to double, !dbg !24899
  %i.du = fadd double %i.ds, %i.dt, !dbg !24912
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !24913
  %i.dw = uitofp i32 %i.au to double, !dbg !24899
  %i.dx = fadd double %i.dv, %i.dw, !dbg !24912
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !24913
  %i.dz = uitofp i32 %i.av to double, !dbg !24899
  %i.ea = fadd double %i.dy, %i.dz, !dbg !24912
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !24913
  %i.ec = uitofp i32 %i.aw to double, !dbg !24899
  %i.ed = fadd double %i.eb, %i.ec, !dbg !24912
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !24913
  %i.ef = uitofp i32 %i.ax to double, !dbg !24899
  %i.eg = fadd double %i.ee, %i.ef, !dbg !24912
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !24913
  %i.ei = uitofp i32 %i.ay to double, !dbg !24899
  %i.ej = fadd double %i.eh, %i.ei, !dbg !24912
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !24913
  %i.el = uitofp i32 %i.az to double, !dbg !24899
  %i.em = fadd double %i.ek, %i.el, !dbg !24912
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !24913
  %i.eo = uitofp i32 %i.ba to double, !dbg !24899
  %i.ep = fadd double %i.en, %i.eo, !dbg !24912
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !24913
  %i.er = uitofp i32 %i.bb to double, !dbg !24899
  %i.es = fadd double %i.eq, %i.er, !dbg !24912
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !24913
  %i.eu = uitofp i32 %i.bc to double, !dbg !24899
  %i.ev = fadd double %i.et, %i.eu, !dbg !24912
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !24913
  %i.ex = uitofp i32 %i.bd to double, !dbg !24899
  %i.ey = fadd double %i.ew, %i.ex, !dbg !24912
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !24913
  %i.fa = uitofp i32 %i.be to double, !dbg !24899
  %i.fb = fadd double %i.ez, %i.fa, !dbg !24912
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !24913
  %i.fd = uitofp i32 %i.bf to double, !dbg !24899
  %i.fe = fadd double %i.fc, %i.fd, !dbg !24912
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !24913
  %i.fg = uitofp i32 %i.bg to double, !dbg !24899
  %i.fh = fadd double %i.ff, %i.fg, !dbg !24912
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !24913
  %i.fj = uitofp i32 %i.bh to double, !dbg !24899
  %i.fk = fadd double %i.fi, %i.fj, !dbg !24912
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !24913
  %i.fm = uitofp i32 %i.bi to double, !dbg !24899
  %i.fn = fadd double %i.fl, %i.fm, !dbg !24912
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !24913
  %i.fp = uitofp i32 %i.bj to double, !dbg !24899
  %i.fq = fadd double %i.fo, %i.fp, !dbg !24912
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !24913
  %i.fs = uitofp i32 %i.bk to double, !dbg !24899
  %i.ft = fadd double %i.fr, %i.fs, !dbg !24912
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !24913
  %i.fv = uitofp i32 %i.bl to double, !dbg !24899
  %i.fw = fadd double %i.fu, %i.fv, !dbg !24912
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !24913
  %i.fy = uitofp i32 %i.bm to double, !dbg !24899
  %i.fz = fadd double %i.fx, %i.fy, !dbg !24912
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !24913
  %i.gb = uitofp i32 %i.bn to double, !dbg !24899
  %i.gc = fadd double %i.ga, %i.gb, !dbg !24912
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !24913
  %i.ge = uitofp i32 %i.bo to double, !dbg !24899
  %i.gf = fadd double %i.gd, %i.ge, !dbg !24912
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !24913
  %i.gh = uitofp i32 %i.bp to double, !dbg !24899
  %i.gi = fadd double %i.gg, %i.gh, !dbg !24912
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !24913
  %i.gk = uitofp i32 %i.bq to double, !dbg !24899
  %i.gl = fadd double %i.gj, %i.gk, !dbg !24912
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !24913
  %i.gn = uitofp i32 %i.br to double, !dbg !24899
  %i.go = fadd double %i.gm, %i.gn, !dbg !24912
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !24913
  %i.gq = uitofp i32 %i.bs to double, !dbg !24899
  %i.gr = fadd double %i.gp, %i.gq, !dbg !24912
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !24913
  %i.gt = uitofp i32 %i.bt to double, !dbg !24899
  %i.gu = fadd double %i.gs, %i.gt, !dbg !24912
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !24913
  %i.gw = uitofp i32 %i.bu to double, !dbg !24899
  %i.gx = fadd double %i.gv, %i.gw, !dbg !24912
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !24913
  %i.gz = uitofp i32 %i.bv to double, !dbg !24899
  %i.ha = fadd double %i.gy, %i.gz, !dbg !24912
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !24913
  %i.hc = uitofp i32 %i.bw to double, !dbg !24899
  %i.hd = fadd double %i.hb, %i.hc, !dbg !24912
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !24913
  %i.hf = uitofp i32 %i.bx to double, !dbg !24899
  %i.hg = fadd double %i.he, %i.hf, !dbg !24912
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !24913
  %i.hi = uitofp i32 %i.by to double, !dbg !24899
  %i.hj = fadd double %i.hh, %i.hi, !dbg !24912
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !24913
  %i.hl = uitofp i32 %i.bz to double, !dbg !24899
  %i.hm = fadd double %i.hk, %i.hl, !dbg !24912
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !24913
  %i.ho = uitofp i32 %i.ca to double, !dbg !24899
  %i.hp = fadd double %i.hn, %i.ho, !dbg !24912
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !24913
  %i.hr = uitofp i32 %i.cb to double, !dbg !24899
  %i.hs = fadd double %i.hq, %i.hr, !dbg !24912
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !24913
  %i.hu = uitofp i32 %i.cc to double, !dbg !24899
  %i.hv = fadd double %i.ht, %i.hu, !dbg !24912
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !24913
  %i.hx = uitofp i32 %i.cd to double, !dbg !24899
  %i.hy = fadd double %i.hw, %i.hx, !dbg !24912
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !24913
  %i.ia = uitofp i32 %i.ce to double, !dbg !24899
  %i.ib = fadd double %i.hz, %i.ia, !dbg !24912
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !24913
  %i.id = uitofp i32 %i.cf to double, !dbg !24899
  %i.ie = fadd double %i.ic, %i.id, !dbg !24912
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !24913
  %i.ig = uitofp i32 %i.cg to double, !dbg !24899
  %i.ih = fadd double %i.if, %i.ig, !dbg !24912
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !24913
  %i.ij = uitofp i32 %i.ch to double, !dbg !24899
  %i.ik = fadd double %i.ii, %i.ij, !dbg !24912
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !24913
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !24914
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !24915
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !24916
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !24915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24917
  ret i64 %i.ip, !dbg !24918
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !24919 !guid !24945 {
bb.a:
  %.val.i.i = load i128, ptr %1, align 16, !dbg !24950, !alias.scope !24946, !noalias !24947, !noundef !1573 ; 2 uses
  %i.a = trunc i128 %.val.i.i to i64, !dbg !24951
  %i.b = lshr i128 %.val.i.i, 64, !dbg !24952
  %i.c = xor i64 %i.a, 589684135938649225, !dbg !24953
  %i.d = zext i64 %i.c to i128, !dbg !24954
  %i.e = xor i128 %i.b, 13883517620612518109, !dbg !24955
  %i.f = mul nuw i128 %i.e, %i.d, !dbg !24956     ; 2 uses
  %i.g = lshr i128 %i.f, 64, !dbg !24957
  %.masked.i = and i128 %i.f, 18446744073709551615, !dbg !24958
  %i.h = xor i128 %i.g, %.masked.i, !dbg !24958
  %i.i = mul nuw nsw i128 %i.h, 2611923443488327891, !dbg !24959 ; 2 uses
  %i.j = lshr i128 %i.i, 64, !dbg !24960
  %i.k = xor i128 %i.j, %i.i, !dbg !24961
  %i.l = trunc i128 %i.k to i64, !dbg !24961      ; 2 uses
  %i.m = lshr i64 %i.l, 14, !dbg !24962
  %i.n = or disjoint i64 %i.m, 1125899906842624, !dbg !24963
  %i.o = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.n, i1 true), !dbg !24964
  %i.p = trunc nuw nsw i64 %i.o to i8, !dbg !24964
  %i.q = add nuw nsw i8 %i.p, 1, !dbg !24963
  %i.r = and i64 %i.l, 16383, !dbg !24965
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r, !dbg !24966 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !dbg !24966, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.q, i8 %i.t), !dbg !24967
  store i8 %.sroa.0.0.i, ptr %i.s, align 1, !dbg !24968
  ret void, !dbg !24969
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24970 !guid !25016 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25024
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25017), !dbg !25025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25026, !alias.scope !25017
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25027 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25027, !noalias !25018
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25028, !noalias !25017
  br label %bb.b, !dbg !25029

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25030
  %i.e = load i8, ptr %i.d, align 2, !dbg !25031, !alias.scope !25020, !noalias !25018, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25032         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25033
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25033

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25033 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25033, !alias.scope !25017, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25033
  store i32 %i.j, ptr %i.h, align 4, !dbg !25033, !alias.scope !25017
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25030
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25030
  %i.m = load i8, ptr %i.l, align 1, !dbg !25031, !alias.scope !25020, !noalias !25018, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25032         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25033
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25033

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25034     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25033 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25033, !alias.scope !25017, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25033
  store i32 %i.s, ptr %i.q, align 4, !dbg !25033, !alias.scope !25017
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25029
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE13get_histogramB6_.exit, label %bb.b, !dbg !25029

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25032
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25033, !noalias !25018
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25035, !noalias !25018
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25036
  %i.u = load i32, ptr %i.t, align 4, !dbg !25036, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25036
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25037
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25037 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25038
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25038
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25038

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25039
  br label %bb.g, !dbg !25040

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25041 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25042
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25043 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25044 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25045 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25046
  %i.af = fmul double %i.ac, %i.ae, !dbg !25045
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25047 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25048
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25048

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25049
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25050
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25051

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLognE13get_histogramB6_.exit ], !dbg !25042
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25052
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25052, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25052
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25052, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25052
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25052, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25052
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25052, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25052
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25052, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25052
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25052, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25052
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25052, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25052
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25052, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25052
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25052, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25052
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25052, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25052
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25052, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25052
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25052, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25052
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25052, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25052
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25052, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25052
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25052, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25052
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25052, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25052
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25052, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25052
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25052, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25052
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25052, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25052
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25052, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25052
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25052, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25052
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25052, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25052
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25052, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25052
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25052, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25052
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25052, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25052
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25052, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25052
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25052, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25052
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25052, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25052
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25052, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25052
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25052, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25052
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25052, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25052
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25052, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25052
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25052, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25052
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25052, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25052
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25052, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25052
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25052, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25052
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25052, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25052
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25052, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25052
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25052, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25052
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25052, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25052
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25052, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25052
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25052, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25052
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25052, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25052
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25052, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25052
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25052, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25052
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25052, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25052
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25052, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25052
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25052, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25052
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25052, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25052
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25052, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25053, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25053
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25053 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25054
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25054

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25055 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25056 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25057 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25058 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25059
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25060 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25061
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25062
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25062

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25063
  br label %bb.j, !dbg !25064

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25055
  %i.cs = uitofp i32 %i.ak to double, !dbg !25052
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25065
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25066
  %i.cv = uitofp i32 %i.al to double, !dbg !25052
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25065
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25066
  %i.cy = uitofp i32 %i.am to double, !dbg !25052
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25065
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25066
  %i.db = uitofp i32 %i.an to double, !dbg !25052
  %i.dc = fadd double %i.da, %i.db, !dbg !25065
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25066
  %i.de = uitofp i32 %i.ao to double, !dbg !25052
  %i.df = fadd double %i.dd, %i.de, !dbg !25065
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25066
  %i.dh = uitofp i32 %i.ap to double, !dbg !25052
  %i.di = fadd double %i.dg, %i.dh, !dbg !25065
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25066
  %i.dk = uitofp i32 %i.aq to double, !dbg !25052
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25065
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25066
  %i.dn = uitofp i32 %i.ar to double, !dbg !25052
  %i.do = fadd double %i.dm, %i.dn, !dbg !25065
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25066
  %i.dq = uitofp i32 %i.as to double, !dbg !25052
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25065
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25066
  %i.dt = uitofp i32 %i.at to double, !dbg !25052
  %i.du = fadd double %i.ds, %i.dt, !dbg !25065
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25066
  %i.dw = uitofp i32 %i.au to double, !dbg !25052
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25065
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25066
  %i.dz = uitofp i32 %i.av to double, !dbg !25052
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25065
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25066
  %i.ec = uitofp i32 %i.aw to double, !dbg !25052
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25065
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25066
  %i.ef = uitofp i32 %i.ax to double, !dbg !25052
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25065
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25066
  %i.ei = uitofp i32 %i.ay to double, !dbg !25052
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25065
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25066
  %i.el = uitofp i32 %i.az to double, !dbg !25052
  %i.em = fadd double %i.ek, %i.el, !dbg !25065
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !25066
  %i.eo = uitofp i32 %i.ba to double, !dbg !25052
  %i.ep = fadd double %i.en, %i.eo, !dbg !25065
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !25066
  %i.er = uitofp i32 %i.bb to double, !dbg !25052
  %i.es = fadd double %i.eq, %i.er, !dbg !25065
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !25066
  %i.eu = uitofp i32 %i.bc to double, !dbg !25052
  %i.ev = fadd double %i.et, %i.eu, !dbg !25065
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !25066
  %i.ex = uitofp i32 %i.bd to double, !dbg !25052
  %i.ey = fadd double %i.ew, %i.ex, !dbg !25065
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !25066
  %i.fa = uitofp i32 %i.be to double, !dbg !25052
  %i.fb = fadd double %i.ez, %i.fa, !dbg !25065
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !25066
  %i.fd = uitofp i32 %i.bf to double, !dbg !25052
  %i.fe = fadd double %i.fc, %i.fd, !dbg !25065
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !25066
  %i.fg = uitofp i32 %i.bg to double, !dbg !25052
  %i.fh = fadd double %i.ff, %i.fg, !dbg !25065
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !25066
  %i.fj = uitofp i32 %i.bh to double, !dbg !25052
  %i.fk = fadd double %i.fi, %i.fj, !dbg !25065
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !25066
  %i.fm = uitofp i32 %i.bi to double, !dbg !25052
  %i.fn = fadd double %i.fl, %i.fm, !dbg !25065
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !25066
  %i.fp = uitofp i32 %i.bj to double, !dbg !25052
  %i.fq = fadd double %i.fo, %i.fp, !dbg !25065
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !25066
  %i.fs = uitofp i32 %i.bk to double, !dbg !25052
  %i.ft = fadd double %i.fr, %i.fs, !dbg !25065
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !25066
  %i.fv = uitofp i32 %i.bl to double, !dbg !25052
  %i.fw = fadd double %i.fu, %i.fv, !dbg !25065
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !25066
  %i.fy = uitofp i32 %i.bm to double, !dbg !25052
  %i.fz = fadd double %i.fx, %i.fy, !dbg !25065
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !25066
  %i.gb = uitofp i32 %i.bn to double, !dbg !25052
  %i.gc = fadd double %i.ga, %i.gb, !dbg !25065
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !25066
  %i.ge = uitofp i32 %i.bo to double, !dbg !25052
  %i.gf = fadd double %i.gd, %i.ge, !dbg !25065
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !25066
  %i.gh = uitofp i32 %i.bp to double, !dbg !25052
  %i.gi = fadd double %i.gg, %i.gh, !dbg !25065
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !25066
  %i.gk = uitofp i32 %i.bq to double, !dbg !25052
  %i.gl = fadd double %i.gj, %i.gk, !dbg !25065
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !25066
  %i.gn = uitofp i32 %i.br to double, !dbg !25052
  %i.go = fadd double %i.gm, %i.gn, !dbg !25065
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !25066
  %i.gq = uitofp i32 %i.bs to double, !dbg !25052
  %i.gr = fadd double %i.gp, %i.gq, !dbg !25065
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !25066
  %i.gt = uitofp i32 %i.bt to double, !dbg !25052
  %i.gu = fadd double %i.gs, %i.gt, !dbg !25065
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !25066
  %i.gw = uitofp i32 %i.bu to double, !dbg !25052
  %i.gx = fadd double %i.gv, %i.gw, !dbg !25065
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !25066
  %i.gz = uitofp i32 %i.bv to double, !dbg !25052
  %i.ha = fadd double %i.gy, %i.gz, !dbg !25065
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !25066
  %i.hc = uitofp i32 %i.bw to double, !dbg !25052
  %i.hd = fadd double %i.hb, %i.hc, !dbg !25065
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !25066
  %i.hf = uitofp i32 %i.bx to double, !dbg !25052
  %i.hg = fadd double %i.he, %i.hf, !dbg !25065
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !25066
  %i.hi = uitofp i32 %i.by to double, !dbg !25052
  %i.hj = fadd double %i.hh, %i.hi, !dbg !25065
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !25066
  %i.hl = uitofp i32 %i.bz to double, !dbg !25052
  %i.hm = fadd double %i.hk, %i.hl, !dbg !25065
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !25066
  %i.ho = uitofp i32 %i.ca to double, !dbg !25052
  %i.hp = fadd double %i.hn, %i.ho, !dbg !25065
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !25066
  %i.hr = uitofp i32 %i.cb to double, !dbg !25052
  %i.hs = fadd double %i.hq, %i.hr, !dbg !25065
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !25066
  %i.hu = uitofp i32 %i.cc to double, !dbg !25052
  %i.hv = fadd double %i.ht, %i.hu, !dbg !25065
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !25066
  %i.hx = uitofp i32 %i.cd to double, !dbg !25052
  %i.hy = fadd double %i.hw, %i.hx, !dbg !25065
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !25066
  %i.ia = uitofp i32 %i.ce to double, !dbg !25052
  %i.ib = fadd double %i.hz, %i.ia, !dbg !25065
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !25066
  %i.id = uitofp i32 %i.cf to double, !dbg !25052
  %i.ie = fadd double %i.ic, %i.id, !dbg !25065
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !25066
  %i.ig = uitofp i32 %i.cg to double, !dbg !25052
  %i.ih = fadd double %i.if, %i.ig, !dbg !25065
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !25066
  %i.ij = uitofp i32 %i.ch to double, !dbg !25052
  %i.ik = fadd double %i.ii, %i.ij, !dbg !25065
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !25066
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !25067
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !25068
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !25069
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !25068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25070
  ret i64 %i.ip, !dbg !25071
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25072 !guid !25097 {
bb.a:
  %.val.i.i = load i128, ptr %1, align 16, !dbg !25102, !alias.scope !25098, !noalias !25099, !noundef !1573 ; 2 uses
  %i.a = trunc i128 %.val.i.i to i64, !dbg !25103
  %i.b = lshr i128 %.val.i.i, 64, !dbg !25104
  %i.c = xor i64 %i.a, 589684135938649225, !dbg !25105
  %i.d = zext i64 %i.c to i128, !dbg !25106
  %i.e = xor i128 %i.b, 13883517620612518109, !dbg !25107
  %i.f = mul nuw i128 %i.e, %i.d, !dbg !25108     ; 2 uses
  %i.g = lshr i128 %i.f, 64, !dbg !25109
  %.masked.i = and i128 %i.f, 18446744073709551615, !dbg !25110
  %i.h = xor i128 %i.g, %.masked.i, !dbg !25110
  %i.i = mul nuw nsw i128 %i.h, 2611923443488327891, !dbg !25111 ; 2 uses
  %i.j = lshr i128 %i.i, 64, !dbg !25112
  %i.k = xor i128 %i.j, %i.i, !dbg !25113
  %i.l = trunc i128 %i.k to i64, !dbg !25113      ; 2 uses
  %i.m = lshr i64 %i.l, 14, !dbg !25114
  %i.n = or disjoint i64 %i.m, 1125899906842624, !dbg !25115
  %i.o = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.n, i1 true), !dbg !25116
  %i.p = trunc nuw nsw i64 %i.o to i8, !dbg !25116
  %i.q = add nuw nsw i8 %i.p, 1, !dbg !25115
  %i.r = and i64 %i.l, 16383, !dbg !25117
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r, !dbg !25118 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !dbg !25118, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.q, i8 %i.t), !dbg !25119
  store i8 %.sroa.0.0.i, ptr %i.s, align 1, !dbg !25120
  ret void, !dbg !25121
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25122 !guid !25168 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25169), !dbg !25177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25178, !alias.scope !25169
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25179 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25179, !noalias !25170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25180, !noalias !25169
  br label %bb.b, !dbg !25181

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25182
  %i.e = load i8, ptr %i.d, align 2, !dbg !25183, !alias.scope !25172, !noalias !25170, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25184         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25185
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25185

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25185 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25185, !alias.scope !25169, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25185
  store i32 %i.j, ptr %i.h, align 4, !dbg !25185, !alias.scope !25169
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25182
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25182
  %i.m = load i8, ptr %i.l, align 1, !dbg !25183, !alias.scope !25172, !noalias !25170, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25184         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25185
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25185

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25186     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25185 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25185, !alias.scope !25169, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25185
  store i32 %i.s, ptr %i.q, align 4, !dbg !25185, !alias.scope !25169
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25181
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE13get_histogramB6_.exit, label %bb.b, !dbg !25181

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25184
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25185, !noalias !25170
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25187, !noalias !25170
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25188
  %i.u = load i32, ptr %i.t, align 4, !dbg !25188, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25188
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25189
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25189 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25190
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25190
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25190

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25191
  br label %bb.g, !dbg !25192

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25193 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25194
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25195 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25196 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25197 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25198
  %i.af = fmul double %i.ac, %i.ae, !dbg !25197
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25199 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25200
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25200

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25201
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25202
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25203

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogoE13get_histogramB6_.exit ], !dbg !25194
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25204
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25204, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25204
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25204, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25204
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25204, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25204
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25204, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25204
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25204, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25204
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25204, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25204
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25204, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25204
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25204, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25204
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25204, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25204
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25204, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25204
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25204, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25204
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25204, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25204
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25204, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25204
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25204, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25204
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25204, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25204
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25204, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25204
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25204, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25204
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25204, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25204
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25204, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25204
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25204, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25204
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25204, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25204
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25204, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25204
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25204, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25204
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25204, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25204
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25204, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25204
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25204, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25204
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25204, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25204
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25204, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25204
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25204, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25204
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25204, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25204
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25204, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25204
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25204, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25204
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25204, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25204
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25204, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25204
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25204, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25204
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25204, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25204
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25204, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25204
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25204, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25204
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25204, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25204
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25204, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25204
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25204, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25204
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25204, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25204
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25204, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25204
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25204, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25204
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25204, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25204
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25204, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25204
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25204, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25204
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25204, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25204
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25204, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25204
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25204, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25205, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25205
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25205 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25206
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25206

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25207 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25208 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25209 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25210 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25211
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25212 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25213
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25214
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25214

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25215
  br label %bb.j, !dbg !25216

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25207
  %i.cs = uitofp i32 %i.ak to double, !dbg !25204
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25217
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25218
  %i.cv = uitofp i32 %i.al to double, !dbg !25204
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25217
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25218
  %i.cy = uitofp i32 %i.am to double, !dbg !25204
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25217
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25218
  %i.db = uitofp i32 %i.an to double, !dbg !25204
  %i.dc = fadd double %i.da, %i.db, !dbg !25217
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25218
  %i.de = uitofp i32 %i.ao to double, !dbg !25204
  %i.df = fadd double %i.dd, %i.de, !dbg !25217
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25218
  %i.dh = uitofp i32 %i.ap to double, !dbg !25204
  %i.di = fadd double %i.dg, %i.dh, !dbg !25217
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25218
  %i.dk = uitofp i32 %i.aq to double, !dbg !25204
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25217
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25218
  %i.dn = uitofp i32 %i.ar to double, !dbg !25204
  %i.do = fadd double %i.dm, %i.dn, !dbg !25217
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25218
  %i.dq = uitofp i32 %i.as to double, !dbg !25204
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25217
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25218
  %i.dt = uitofp i32 %i.at to double, !dbg !25204
  %i.du = fadd double %i.ds, %i.dt, !dbg !25217
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25218
  %i.dw = uitofp i32 %i.au to double, !dbg !25204
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25217
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25218
  %i.dz = uitofp i32 %i.av to double, !dbg !25204
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25217
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25218
  %i.ec = uitofp i32 %i.aw to double, !dbg !25204
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25217
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25218
  %i.ef = uitofp i32 %i.ax to double, !dbg !25204
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25217
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25218
  %i.ei = uitofp i32 %i.ay to double, !dbg !25204
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25217
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25218
  %i.el = uitofp i32 %i.az to double, !dbg !25204
  %i.em = fadd double %i.ek, %i.el, !dbg !25217
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !25218
  %i.eo = uitofp i32 %i.ba to double, !dbg !25204
  %i.ep = fadd double %i.en, %i.eo, !dbg !25217
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !25218
  %i.er = uitofp i32 %i.bb to double, !dbg !25204
  %i.es = fadd double %i.eq, %i.er, !dbg !25217
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !25218
  %i.eu = uitofp i32 %i.bc to double, !dbg !25204
  %i.ev = fadd double %i.et, %i.eu, !dbg !25217
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !25218
  %i.ex = uitofp i32 %i.bd to double, !dbg !25204
  %i.ey = fadd double %i.ew, %i.ex, !dbg !25217
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !25218
  %i.fa = uitofp i32 %i.be to double, !dbg !25204
  %i.fb = fadd double %i.ez, %i.fa, !dbg !25217
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !25218
  %i.fd = uitofp i32 %i.bf to double, !dbg !25204
  %i.fe = fadd double %i.fc, %i.fd, !dbg !25217
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !25218
  %i.fg = uitofp i32 %i.bg to double, !dbg !25204
  %i.fh = fadd double %i.ff, %i.fg, !dbg !25217
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !25218
  %i.fj = uitofp i32 %i.bh to double, !dbg !25204
  %i.fk = fadd double %i.fi, %i.fj, !dbg !25217
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !25218
  %i.fm = uitofp i32 %i.bi to double, !dbg !25204
  %i.fn = fadd double %i.fl, %i.fm, !dbg !25217
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !25218
  %i.fp = uitofp i32 %i.bj to double, !dbg !25204
  %i.fq = fadd double %i.fo, %i.fp, !dbg !25217
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !25218
  %i.fs = uitofp i32 %i.bk to double, !dbg !25204
  %i.ft = fadd double %i.fr, %i.fs, !dbg !25217
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !25218
  %i.fv = uitofp i32 %i.bl to double, !dbg !25204
  %i.fw = fadd double %i.fu, %i.fv, !dbg !25217
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !25218
  %i.fy = uitofp i32 %i.bm to double, !dbg !25204
  %i.fz = fadd double %i.fx, %i.fy, !dbg !25217
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !25218
  %i.gb = uitofp i32 %i.bn to double, !dbg !25204
  %i.gc = fadd double %i.ga, %i.gb, !dbg !25217
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !25218
  %i.ge = uitofp i32 %i.bo to double, !dbg !25204
  %i.gf = fadd double %i.gd, %i.ge, !dbg !25217
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !25218
  %i.gh = uitofp i32 %i.bp to double, !dbg !25204
  %i.gi = fadd double %i.gg, %i.gh, !dbg !25217
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !25218
  %i.gk = uitofp i32 %i.bq to double, !dbg !25204
  %i.gl = fadd double %i.gj, %i.gk, !dbg !25217
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !25218
  %i.gn = uitofp i32 %i.br to double, !dbg !25204
  %i.go = fadd double %i.gm, %i.gn, !dbg !25217
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !25218
  %i.gq = uitofp i32 %i.bs to double, !dbg !25204
  %i.gr = fadd double %i.gp, %i.gq, !dbg !25217
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !25218
  %i.gt = uitofp i32 %i.bt to double, !dbg !25204
  %i.gu = fadd double %i.gs, %i.gt, !dbg !25217
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !25218
  %i.gw = uitofp i32 %i.bu to double, !dbg !25204
  %i.gx = fadd double %i.gv, %i.gw, !dbg !25217
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !25218
  %i.gz = uitofp i32 %i.bv to double, !dbg !25204
  %i.ha = fadd double %i.gy, %i.gz, !dbg !25217
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !25218
  %i.hc = uitofp i32 %i.bw to double, !dbg !25204
  %i.hd = fadd double %i.hb, %i.hc, !dbg !25217
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !25218
  %i.hf = uitofp i32 %i.bx to double, !dbg !25204
  %i.hg = fadd double %i.he, %i.hf, !dbg !25217
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !25218
  %i.hi = uitofp i32 %i.by to double, !dbg !25204
  %i.hj = fadd double %i.hh, %i.hi, !dbg !25217
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !25218
  %i.hl = uitofp i32 %i.bz to double, !dbg !25204
  %i.hm = fadd double %i.hk, %i.hl, !dbg !25217
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !25218
  %i.ho = uitofp i32 %i.ca to double, !dbg !25204
  %i.hp = fadd double %i.hn, %i.ho, !dbg !25217
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !25218
  %i.hr = uitofp i32 %i.cb to double, !dbg !25204
  %i.hs = fadd double %i.hq, %i.hr, !dbg !25217
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !25218
  %i.hu = uitofp i32 %i.cc to double, !dbg !25204
  %i.hv = fadd double %i.ht, %i.hu, !dbg !25217
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !25218
  %i.hx = uitofp i32 %i.cd to double, !dbg !25204
  %i.hy = fadd double %i.hw, %i.hx, !dbg !25217
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !25218
  %i.ia = uitofp i32 %i.ce to double, !dbg !25204
  %i.ib = fadd double %i.hz, %i.ia, !dbg !25217
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !25218
  %i.id = uitofp i32 %i.cf to double, !dbg !25204
  %i.ie = fadd double %i.ic, %i.id, !dbg !25217
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !25218
  %i.ig = uitofp i32 %i.cg to double, !dbg !25204
  %i.ih = fadd double %i.if, %i.ig, !dbg !25217
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !25218
  %i.ij = uitofp i32 %i.ch to double, !dbg !25204
  %i.ik = fadd double %i.ii, %i.ij, !dbg !25217
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !25218
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !25219
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !25220
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !25221
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !25220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25222
  ret i64 %i.ip, !dbg !25223
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25224 !guid !25245 {
bb.a:
  %.val.i.i = load i16, ptr %1, align 2, !dbg !25250, !alias.scope !25246, !noalias !25247, !noundef !1573
  %i.a = zext i16 %.val.i.i to i64, !dbg !25251
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !25252
  %i.c = zext nneg i64 %i.b to i128, !dbg !25253
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !25254 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !25255
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !25256
  %i.f = xor i128 %.masked.i, %i.e, !dbg !25256
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !25257 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !25258
  %i.i = xor i128 %i.h, %i.g, !dbg !25259
  %i.j = trunc i128 %i.i to i64, !dbg !25259      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !25260
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !25261
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !25262
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !25262
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !25261
  %i.p = and i64 %i.j, 16383, !dbg !25263
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !25264 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !25264, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !25265
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !25266
  ret void, !dbg !25267
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25268 !guid !25314 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25322
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25315), !dbg !25323
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25324, !alias.scope !25315
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25325 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25325, !noalias !25316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25326, !noalias !25315
  br label %bb.b, !dbg !25327

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25328
  %i.e = load i8, ptr %i.d, align 2, !dbg !25329, !alias.scope !25318, !noalias !25316, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25330         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25331
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25331

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25331 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25331, !alias.scope !25315, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25331
  store i32 %i.j, ptr %i.h, align 4, !dbg !25331, !alias.scope !25315
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25328
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25328
  %i.m = load i8, ptr %i.l, align 1, !dbg !25329, !alias.scope !25318, !noalias !25316, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25330         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25331
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25331

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25332     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25331 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25331, !alias.scope !25315, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25331
  store i32 %i.s, ptr %i.q, align 4, !dbg !25331, !alias.scope !25315
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25327
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE13get_histogramB6_.exit, label %bb.b, !dbg !25327

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25330
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25331, !noalias !25316
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25333, !noalias !25316
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25334
  %i.u = load i32, ptr %i.t, align 4, !dbg !25334, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25334
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25335
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25335 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25336
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25336
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25336

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25337
  br label %bb.g, !dbg !25338

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25339 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25340
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25341 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25342 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25343 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25344
  %i.af = fmul double %i.ac, %i.ae, !dbg !25343
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25345 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25346
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25346

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25347
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25348
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25349

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogsE13get_histogramB6_.exit ], !dbg !25340
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25350
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25350, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25350
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25350, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25350
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25350, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25350
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25350, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25350
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25350, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25350
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25350, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25350
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25350, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25350
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25350, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25350
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25350, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25350
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25350, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25350
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25350, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25350
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25350, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25350
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25350, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25350
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25350, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25350
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25350, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25350
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25350, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25350
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25350, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25350
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25350, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25350
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25350, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25350
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25350, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25350
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25350, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25350
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25350, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25350
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25350, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25350
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25350, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25350
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25350, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25350
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25350, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25350
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25350, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25350
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25350, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25350
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25350, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25350
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25350, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25350
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25350, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25350
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25350, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25350
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25350, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25350
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25350, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25350
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25350, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25350
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25350, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25350
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25350, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25350
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25350, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25350
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25350, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25350
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25350, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25350
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25350, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25350
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25350, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25350
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25350, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25350
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25350, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25350
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25350, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25350
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25350, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25350
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25350, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25350
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25350, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25350
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25350, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25350
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25350, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25351, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25351
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25351 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25352
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25352

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25353 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25354 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25355 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25356 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25357
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25358 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25359
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25360
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25360

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25361
  br label %bb.j, !dbg !25362

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25353
  %i.cs = uitofp i32 %i.ak to double, !dbg !25350
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25363
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25364
  %i.cv = uitofp i32 %i.al to double, !dbg !25350
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25363
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25364
  %i.cy = uitofp i32 %i.am to double, !dbg !25350
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25363
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25364
  %i.db = uitofp i32 %i.an to double, !dbg !25350
  %i.dc = fadd double %i.da, %i.db, !dbg !25363
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25364
  %i.de = uitofp i32 %i.ao to double, !dbg !25350
  %i.df = fadd double %i.dd, %i.de, !dbg !25363
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25364
  %i.dh = uitofp i32 %i.ap to double, !dbg !25350
  %i.di = fadd double %i.dg, %i.dh, !dbg !25363
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25364
  %i.dk = uitofp i32 %i.aq to double, !dbg !25350
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25363
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25364
  %i.dn = uitofp i32 %i.ar to double, !dbg !25350
  %i.do = fadd double %i.dm, %i.dn, !dbg !25363
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25364
  %i.dq = uitofp i32 %i.as to double, !dbg !25350
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25363
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25364
  %i.dt = uitofp i32 %i.at to double, !dbg !25350
  %i.du = fadd double %i.ds, %i.dt, !dbg !25363
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25364
  %i.dw = uitofp i32 %i.au to double, !dbg !25350
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25363
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25364
  %i.dz = uitofp i32 %i.av to double, !dbg !25350
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25363
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25364
  %i.ec = uitofp i32 %i.aw to double, !dbg !25350
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25363
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25364
  %i.ef = uitofp i32 %i.ax to double, !dbg !25350
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25363
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25364
  %i.ei = uitofp i32 %i.ay to double, !dbg !25350
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25363
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25364
  %i.el = uitofp i32 %i.az to double, !dbg !25350
  %i.em = fadd double %i.ek, %i.el, !dbg !25363
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !25364
  %i.eo = uitofp i32 %i.ba to double, !dbg !25350
  %i.ep = fadd double %i.en, %i.eo, !dbg !25363
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !25364
  %i.er = uitofp i32 %i.bb to double, !dbg !25350
  %i.es = fadd double %i.eq, %i.er, !dbg !25363
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !25364
  %i.eu = uitofp i32 %i.bc to double, !dbg !25350
  %i.ev = fadd double %i.et, %i.eu, !dbg !25363
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !25364
  %i.ex = uitofp i32 %i.bd to double, !dbg !25350
  %i.ey = fadd double %i.ew, %i.ex, !dbg !25363
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !25364
  %i.fa = uitofp i32 %i.be to double, !dbg !25350
  %i.fb = fadd double %i.ez, %i.fa, !dbg !25363
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !25364
  %i.fd = uitofp i32 %i.bf to double, !dbg !25350
  %i.fe = fadd double %i.fc, %i.fd, !dbg !25363
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !25364
  %i.fg = uitofp i32 %i.bg to double, !dbg !25350
  %i.fh = fadd double %i.ff, %i.fg, !dbg !25363
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !25364
  %i.fj = uitofp i32 %i.bh to double, !dbg !25350
  %i.fk = fadd double %i.fi, %i.fj, !dbg !25363
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !25364
  %i.fm = uitofp i32 %i.bi to double, !dbg !25350
  %i.fn = fadd double %i.fl, %i.fm, !dbg !25363
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !25364
  %i.fp = uitofp i32 %i.bj to double, !dbg !25350
  %i.fq = fadd double %i.fo, %i.fp, !dbg !25363
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !25364
  %i.fs = uitofp i32 %i.bk to double, !dbg !25350
  %i.ft = fadd double %i.fr, %i.fs, !dbg !25363
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !25364
  %i.fv = uitofp i32 %i.bl to double, !dbg !25350
  %i.fw = fadd double %i.fu, %i.fv, !dbg !25363
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !25364
  %i.fy = uitofp i32 %i.bm to double, !dbg !25350
  %i.fz = fadd double %i.fx, %i.fy, !dbg !25363
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !25364
  %i.gb = uitofp i32 %i.bn to double, !dbg !25350
  %i.gc = fadd double %i.ga, %i.gb, !dbg !25363
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !25364
  %i.ge = uitofp i32 %i.bo to double, !dbg !25350
  %i.gf = fadd double %i.gd, %i.ge, !dbg !25363
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !25364
  %i.gh = uitofp i32 %i.bp to double, !dbg !25350
  %i.gi = fadd double %i.gg, %i.gh, !dbg !25363
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !25364
  %i.gk = uitofp i32 %i.bq to double, !dbg !25350
  %i.gl = fadd double %i.gj, %i.gk, !dbg !25363
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !25364
  %i.gn = uitofp i32 %i.br to double, !dbg !25350
  %i.go = fadd double %i.gm, %i.gn, !dbg !25363
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !25364
  %i.gq = uitofp i32 %i.bs to double, !dbg !25350
  %i.gr = fadd double %i.gp, %i.gq, !dbg !25363
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !25364
  %i.gt = uitofp i32 %i.bt to double, !dbg !25350
  %i.gu = fadd double %i.gs, %i.gt, !dbg !25363
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !25364
  %i.gw = uitofp i32 %i.bu to double, !dbg !25350
  %i.gx = fadd double %i.gv, %i.gw, !dbg !25363
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !25364
  %i.gz = uitofp i32 %i.bv to double, !dbg !25350
  %i.ha = fadd double %i.gy, %i.gz, !dbg !25363
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !25364
  %i.hc = uitofp i32 %i.bw to double, !dbg !25350
  %i.hd = fadd double %i.hb, %i.hc, !dbg !25363
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !25364
  %i.hf = uitofp i32 %i.bx to double, !dbg !25350
  %i.hg = fadd double %i.he, %i.hf, !dbg !25363
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !25364
  %i.hi = uitofp i32 %i.by to double, !dbg !25350
  %i.hj = fadd double %i.hh, %i.hi, !dbg !25363
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !25364
  %i.hl = uitofp i32 %i.bz to double, !dbg !25350
  %i.hm = fadd double %i.hk, %i.hl, !dbg !25363
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !25364
  %i.ho = uitofp i32 %i.ca to double, !dbg !25350
  %i.hp = fadd double %i.hn, %i.ho, !dbg !25363
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !25364
  %i.hr = uitofp i32 %i.cb to double, !dbg !25350
  %i.hs = fadd double %i.hq, %i.hr, !dbg !25363
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !25364
  %i.hu = uitofp i32 %i.cc to double, !dbg !25350
  %i.hv = fadd double %i.ht, %i.hu, !dbg !25363
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !25364
  %i.hx = uitofp i32 %i.cd to double, !dbg !25350
  %i.hy = fadd double %i.hw, %i.hx, !dbg !25363
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !25364
  %i.ia = uitofp i32 %i.ce to double, !dbg !25350
  %i.ib = fadd double %i.hz, %i.ia, !dbg !25363
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !25364
  %i.id = uitofp i32 %i.cf to double, !dbg !25350
  %i.ie = fadd double %i.ic, %i.id, !dbg !25363
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !25364
  %i.ig = uitofp i32 %i.cg to double, !dbg !25350
  %i.ih = fadd double %i.if, %i.ig, !dbg !25363
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !25364
  %i.ij = uitofp i32 %i.ch to double, !dbg !25350
  %i.ik = fadd double %i.ii, %i.ij, !dbg !25363
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !25364
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !25365
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !25366
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !25367
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !25366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25368
  ret i64 %i.ip, !dbg !25369
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 2 captures(none) dereferenceable(2) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25370 !guid !25391 {
bb.a:
  %.val.i.i = load i16, ptr %1, align 2, !dbg !25396, !alias.scope !25392, !noalias !25393, !noundef !1573
  %i.a = zext i16 %.val.i.i to i64, !dbg !25397
  %i.b = xor i64 %i.a, 589684135938649225, !dbg !25398
  %i.c = zext nneg i64 %i.b to i128, !dbg !25399
  %i.d = mul nuw nsw i128 %i.c, 13883517620612518109, !dbg !25400 ; 2 uses
  %i.e = lshr i128 %i.d, 64, !dbg !25401
  %.masked.i = and i128 %i.d, 18446744073709551615, !dbg !25402
  %i.f = xor i128 %.masked.i, %i.e, !dbg !25402
  %i.g = mul nuw nsw i128 %i.f, 2611923443488327891, !dbg !25403 ; 2 uses
  %i.h = lshr i128 %i.g, 64, !dbg !25404
  %i.i = xor i128 %i.h, %i.g, !dbg !25405
  %i.j = trunc i128 %i.i to i64, !dbg !25405      ; 2 uses
  %i.k = lshr i64 %i.j, 14, !dbg !25406
  %i.l = or disjoint i64 %i.k, 1125899906842624, !dbg !25407
  %i.m = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.l, i1 true), !dbg !25408
  %i.n = trunc nuw nsw i64 %i.m to i8, !dbg !25408
  %i.o = add nuw nsw i8 %i.n, 1, !dbg !25407
  %i.p = and i64 %i.j, 16383, !dbg !25409
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !25410 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !dbg !25410, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.o, i8 %i.r), !dbg !25411
  store i8 %.sroa.0.0.i, ptr %i.q, align 1, !dbg !25412
  ret void, !dbg !25413
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25414 !guid !25460 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25461), !dbg !25469
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25470, !alias.scope !25461
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25471 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25471, !noalias !25462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25472, !noalias !25461
  br label %bb.b, !dbg !25473

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25474
  %i.e = load i8, ptr %i.d, align 2, !dbg !25475, !alias.scope !25464, !noalias !25462, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25476         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25477
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25477

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25477 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25477, !alias.scope !25461, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25477
  store i32 %i.j, ptr %i.h, align 4, !dbg !25477, !alias.scope !25461
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25474
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25474
  %i.m = load i8, ptr %i.l, align 1, !dbg !25475, !alias.scope !25464, !noalias !25462, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25476         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25477
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25477

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25478     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25477 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25477, !alias.scope !25461, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25477
  store i32 %i.s, ptr %i.q, align 4, !dbg !25477, !alias.scope !25461
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25473
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE13get_histogramB6_.exit, label %bb.b, !dbg !25473

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25476
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25477, !noalias !25462
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25479, !noalias !25462
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25480
  %i.u = load i32, ptr %i.t, align 4, !dbg !25480, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25480
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25481
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25481 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25482
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25482
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25482

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25483
  br label %bb.g, !dbg !25484

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25485 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25486
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25487 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25488 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25489 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25490
  %i.af = fmul double %i.ac, %i.ae, !dbg !25489
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25491 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25492
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25492

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25493
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25494
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25495

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogtE13get_histogramB6_.exit ], !dbg !25486
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25496
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25496, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25496
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25496, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25496
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25496, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25496
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25496, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25496
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25496, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25496
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25496, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25496
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25496, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25496
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25496, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25496
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25496, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25496
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25496, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25496
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25496, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25496
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25496, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25496
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25496, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25496
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25496, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25496
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25496, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25496
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25496, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25496
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25496, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25496
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25496, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25496
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25496, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25496
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25496, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25496
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25496, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25496
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25496, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25496
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25496, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25496
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25496, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25496
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25496, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25496
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25496, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25496
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25496, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25496
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25496, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25496
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25496, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25496
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25496, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25496
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25496, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25496
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25496, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25496
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25496, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25496
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25496, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25496
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25496, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25496
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25496, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25496
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25496, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25496
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25496, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25496
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25496, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25496
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25496, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25496
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25496, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25496
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25496, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25496
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25496, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25496
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25496, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25496
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25496, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25496
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25496, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25496
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25496, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25496
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25496, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25496
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25496, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25496
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25496, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25497, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25497
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25497 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25498
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25498

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25499 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25500 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25501 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25502 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25503
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25504 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25505
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25506
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25506

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25507
  br label %bb.j, !dbg !25508

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25499
  %i.cs = uitofp i32 %i.ak to double, !dbg !25496
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25509
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25510
  %i.cv = uitofp i32 %i.al to double, !dbg !25496
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25509
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25510
  %i.cy = uitofp i32 %i.am to double, !dbg !25496
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25509
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25510
  %i.db = uitofp i32 %i.an to double, !dbg !25496
  %i.dc = fadd double %i.da, %i.db, !dbg !25509
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25510
  %i.de = uitofp i32 %i.ao to double, !dbg !25496
  %i.df = fadd double %i.dd, %i.de, !dbg !25509
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25510
  %i.dh = uitofp i32 %i.ap to double, !dbg !25496
  %i.di = fadd double %i.dg, %i.dh, !dbg !25509
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25510
  %i.dk = uitofp i32 %i.aq to double, !dbg !25496
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25509
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25510
  %i.dn = uitofp i32 %i.ar to double, !dbg !25496
  %i.do = fadd double %i.dm, %i.dn, !dbg !25509
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25510
  %i.dq = uitofp i32 %i.as to double, !dbg !25496
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25509
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25510
  %i.dt = uitofp i32 %i.at to double, !dbg !25496
  %i.du = fadd double %i.ds, %i.dt, !dbg !25509
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25510
  %i.dw = uitofp i32 %i.au to double, !dbg !25496
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25509
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25510
  %i.dz = uitofp i32 %i.av to double, !dbg !25496
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25509
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25510
  %i.ec = uitofp i32 %i.aw to double, !dbg !25496
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25509
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25510
  %i.ef = uitofp i32 %i.ax to double, !dbg !25496
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25509
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25510
  %i.ei = uitofp i32 %i.ay to double, !dbg !25496
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25509
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25510
  %i.el = uitofp i32 %i.az to double, !dbg !25496
  %i.em = fadd double %i.ek, %i.el, !dbg !25509
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !25510
  %i.eo = uitofp i32 %i.ba to double, !dbg !25496
  %i.ep = fadd double %i.en, %i.eo, !dbg !25509
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !25510
  %i.er = uitofp i32 %i.bb to double, !dbg !25496
  %i.es = fadd double %i.eq, %i.er, !dbg !25509
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !25510
  %i.eu = uitofp i32 %i.bc to double, !dbg !25496
  %i.ev = fadd double %i.et, %i.eu, !dbg !25509
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !25510
  %i.ex = uitofp i32 %i.bd to double, !dbg !25496
  %i.ey = fadd double %i.ew, %i.ex, !dbg !25509
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !25510
  %i.fa = uitofp i32 %i.be to double, !dbg !25496
  %i.fb = fadd double %i.ez, %i.fa, !dbg !25509
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !25510
  %i.fd = uitofp i32 %i.bf to double, !dbg !25496
  %i.fe = fadd double %i.fc, %i.fd, !dbg !25509
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !25510
  %i.fg = uitofp i32 %i.bg to double, !dbg !25496
  %i.fh = fadd double %i.ff, %i.fg, !dbg !25509
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !25510
  %i.fj = uitofp i32 %i.bh to double, !dbg !25496
  %i.fk = fadd double %i.fi, %i.fj, !dbg !25509
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !25510
  %i.fm = uitofp i32 %i.bi to double, !dbg !25496
  %i.fn = fadd double %i.fl, %i.fm, !dbg !25509
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !25510
  %i.fp = uitofp i32 %i.bj to double, !dbg !25496
  %i.fq = fadd double %i.fo, %i.fp, !dbg !25509
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !25510
  %i.fs = uitofp i32 %i.bk to double, !dbg !25496
  %i.ft = fadd double %i.fr, %i.fs, !dbg !25509
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !25510
  %i.fv = uitofp i32 %i.bl to double, !dbg !25496
  %i.fw = fadd double %i.fu, %i.fv, !dbg !25509
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !25510
  %i.fy = uitofp i32 %i.bm to double, !dbg !25496
  %i.fz = fadd double %i.fx, %i.fy, !dbg !25509
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !25510
  %i.gb = uitofp i32 %i.bn to double, !dbg !25496
  %i.gc = fadd double %i.ga, %i.gb, !dbg !25509
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !25510
  %i.ge = uitofp i32 %i.bo to double, !dbg !25496
  %i.gf = fadd double %i.gd, %i.ge, !dbg !25509
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !25510
  %i.gh = uitofp i32 %i.bp to double, !dbg !25496
  %i.gi = fadd double %i.gg, %i.gh, !dbg !25509
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !25510
  %i.gk = uitofp i32 %i.bq to double, !dbg !25496
  %i.gl = fadd double %i.gj, %i.gk, !dbg !25509
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !25510
  %i.gn = uitofp i32 %i.br to double, !dbg !25496
  %i.go = fadd double %i.gm, %i.gn, !dbg !25509
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !25510
  %i.gq = uitofp i32 %i.bs to double, !dbg !25496
  %i.gr = fadd double %i.gp, %i.gq, !dbg !25509
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !25510
  %i.gt = uitofp i32 %i.bt to double, !dbg !25496
  %i.gu = fadd double %i.gs, %i.gt, !dbg !25509
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !25510
  %i.gw = uitofp i32 %i.bu to double, !dbg !25496
  %i.gx = fadd double %i.gv, %i.gw, !dbg !25509
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !25510
  %i.gz = uitofp i32 %i.bv to double, !dbg !25496
  %i.ha = fadd double %i.gy, %i.gz, !dbg !25509
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !25510
  %i.hc = uitofp i32 %i.bw to double, !dbg !25496
  %i.hd = fadd double %i.hb, %i.hc, !dbg !25509
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !25510
  %i.hf = uitofp i32 %i.bx to double, !dbg !25496
  %i.hg = fadd double %i.he, %i.hf, !dbg !25509
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !25510
  %i.hi = uitofp i32 %i.by to double, !dbg !25496
  %i.hj = fadd double %i.hh, %i.hi, !dbg !25509
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !25510
  %i.hl = uitofp i32 %i.bz to double, !dbg !25496
  %i.hm = fadd double %i.hk, %i.hl, !dbg !25509
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !25510
  %i.ho = uitofp i32 %i.ca to double, !dbg !25496
  %i.hp = fadd double %i.hn, %i.ho, !dbg !25509
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !25510
  %i.hr = uitofp i32 %i.cb to double, !dbg !25496
  %i.hs = fadd double %i.hq, %i.hr, !dbg !25509
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !25510
  %i.hu = uitofp i32 %i.cc to double, !dbg !25496
  %i.hv = fadd double %i.ht, %i.hu, !dbg !25509
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !25510
  %i.hx = uitofp i32 %i.cd to double, !dbg !25496
  %i.hy = fadd double %i.hw, %i.hx, !dbg !25509
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !25510
  %i.ia = uitofp i32 %i.ce to double, !dbg !25496
  %i.ib = fadd double %i.hz, %i.ia, !dbg !25509
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !25510
  %i.id = uitofp i32 %i.cf to double, !dbg !25496
  %i.ie = fadd double %i.ic, %i.id, !dbg !25509
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !25510
  %i.ig = uitofp i32 %i.cg to double, !dbg !25496
  %i.ih = fadd double %i.if, %i.ig, !dbg !25509
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !25510
  %i.ij = uitofp i32 %i.ch to double, !dbg !25496
  %i.ik = fadd double %i.ii, %i.ij, !dbg !25509
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !25510
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !25511
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !25512
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !25513
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !25512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25514
  ret i64 %i.ip, !dbg !25515
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25516 !guid !25537 {
bb.a:
  %.val.i.i = load i64, ptr %1, align 8, !dbg !25542, !alias.scope !25538, !noalias !25539, !noundef !1573
  %i.a = xor i64 %.val.i.i, 589684135938649225, !dbg !25543
  %i.b = zext i64 %i.a to i128, !dbg !25544
  %i.c = mul nuw i128 %i.b, 13883517620612518109, !dbg !25545 ; 2 uses
  %i.d = lshr i128 %i.c, 64, !dbg !25546
  %.masked.i = and i128 %i.c, 18446744073709551615, !dbg !25547
  %i.e = xor i128 %.masked.i, %i.d, !dbg !25547
  %i.f = mul nuw nsw i128 %i.e, 2611923443488327891, !dbg !25548 ; 2 uses
  %i.g = lshr i128 %i.f, 64, !dbg !25549
  %i.h = xor i128 %i.g, %i.f, !dbg !25550
  %i.i = trunc i128 %i.h to i64, !dbg !25550      ; 2 uses
  %i.j = lshr i64 %i.i, 14, !dbg !25551
  %i.k = or disjoint i64 %i.j, 1125899906842624, !dbg !25552
  %i.l = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.k, i1 true), !dbg !25553
  %i.m = trunc nuw nsw i64 %i.l to i8, !dbg !25553
  %i.n = add nuw nsw i8 %i.m, 1, !dbg !25552
  %i.o = and i64 %i.i, 16383, !dbg !25554
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !25555 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !dbg !25555, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.n, i8 %i.q), !dbg !25556
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !25557
  ret void, !dbg !25558
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25559 !guid !25605 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25613
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25606), !dbg !25614
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25615, !alias.scope !25606
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25616 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25616, !noalias !25607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25617, !noalias !25606
  br label %bb.b, !dbg !25618

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25619
  %i.e = load i8, ptr %i.d, align 2, !dbg !25620, !alias.scope !25609, !noalias !25607, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25621         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25622
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25622

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25622 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25622, !alias.scope !25606, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25622
  store i32 %i.j, ptr %i.h, align 4, !dbg !25622, !alias.scope !25606
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25619
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25619
  %i.m = load i8, ptr %i.l, align 1, !dbg !25620, !alias.scope !25609, !noalias !25607, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25621         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25622
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25622

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25623     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25622 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25622, !alias.scope !25606, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25622
  store i32 %i.s, ptr %i.q, align 4, !dbg !25622, !alias.scope !25606
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25618
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE13get_histogramB6_.exit, label %bb.b, !dbg !25618

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25621
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25622, !noalias !25607
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25624, !noalias !25607
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25625
  %i.u = load i32, ptr %i.t, align 4, !dbg !25625, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25625
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25626
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25626 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25627
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25627
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25627

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25628
  br label %bb.g, !dbg !25629

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25630 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25631
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25632 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25633 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25634 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25635
  %i.af = fmul double %i.ac, %i.ae, !dbg !25634
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25636 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25637
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25637

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25638
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25639
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25640

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogxE13get_histogramB6_.exit ], !dbg !25631
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25641
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25641, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25641
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25641, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25641
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25641, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25641
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25641, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25641
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25641, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25641
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25641, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25641
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25641, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25641
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25641, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25641
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25641, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25641
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25641, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25641
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25641, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25641
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25641, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25641
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25641, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25641
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25641, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25641
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25641, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25641
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25641, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25641
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25641, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25641
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25641, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25641
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25641, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25641
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25641, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25641
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25641, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25641
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25641, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25641
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25641, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25641
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25641, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25641
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25641, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25641
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25641, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25641
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25641, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25641
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25641, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25641
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25641, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25641
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25641, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25641
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25641, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25641
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25641, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25641
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25641, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25641
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25641, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25641
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25641, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25641
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25641, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25641
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25641, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25641
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25641, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25641
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25641, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25641
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25641, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25641
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25641, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25641
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25641, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25641
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25641, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25641
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25641, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25641
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25641, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25641
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25641, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25641
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25641, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25641
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25641, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25641
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25641, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25641
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25641, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25642, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25642
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25642 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25643
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25643

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25644 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25645 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25646 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25647 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25648
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25649 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25650
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25651
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25651

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25652
  br label %bb.j, !dbg !25653

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25644
  %i.cs = uitofp i32 %i.ak to double, !dbg !25641
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25654
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25655
  %i.cv = uitofp i32 %i.al to double, !dbg !25641
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25654
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25655
  %i.cy = uitofp i32 %i.am to double, !dbg !25641
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25654
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25655
  %i.db = uitofp i32 %i.an to double, !dbg !25641
  %i.dc = fadd double %i.da, %i.db, !dbg !25654
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25655
  %i.de = uitofp i32 %i.ao to double, !dbg !25641
  %i.df = fadd double %i.dd, %i.de, !dbg !25654
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25655
  %i.dh = uitofp i32 %i.ap to double, !dbg !25641
  %i.di = fadd double %i.dg, %i.dh, !dbg !25654
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25655
  %i.dk = uitofp i32 %i.aq to double, !dbg !25641
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25654
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25655
  %i.dn = uitofp i32 %i.ar to double, !dbg !25641
  %i.do = fadd double %i.dm, %i.dn, !dbg !25654
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25655
  %i.dq = uitofp i32 %i.as to double, !dbg !25641
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25654
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25655
  %i.dt = uitofp i32 %i.at to double, !dbg !25641
  %i.du = fadd double %i.ds, %i.dt, !dbg !25654
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25655
  %i.dw = uitofp i32 %i.au to double, !dbg !25641
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25654
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25655
  %i.dz = uitofp i32 %i.av to double, !dbg !25641
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25654
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25655
  %i.ec = uitofp i32 %i.aw to double, !dbg !25641
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25654
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25655
  %i.ef = uitofp i32 %i.ax to double, !dbg !25641
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25654
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25655
  %i.ei = uitofp i32 %i.ay to double, !dbg !25641
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25654
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25655
  %i.el = uitofp i32 %i.az to double, !dbg !25641
  %i.em = fadd double %i.ek, %i.el, !dbg !25654
  %i.en = fmul double %i.em, 5.000000e-01, !dbg !25655
  %i.eo = uitofp i32 %i.ba to double, !dbg !25641
  %i.ep = fadd double %i.en, %i.eo, !dbg !25654
  %i.eq = fmul double %i.ep, 5.000000e-01, !dbg !25655
  %i.er = uitofp i32 %i.bb to double, !dbg !25641
  %i.es = fadd double %i.eq, %i.er, !dbg !25654
  %i.et = fmul double %i.es, 5.000000e-01, !dbg !25655
  %i.eu = uitofp i32 %i.bc to double, !dbg !25641
  %i.ev = fadd double %i.et, %i.eu, !dbg !25654
  %i.ew = fmul double %i.ev, 5.000000e-01, !dbg !25655
  %i.ex = uitofp i32 %i.bd to double, !dbg !25641
  %i.ey = fadd double %i.ew, %i.ex, !dbg !25654
  %i.ez = fmul double %i.ey, 5.000000e-01, !dbg !25655
  %i.fa = uitofp i32 %i.be to double, !dbg !25641
  %i.fb = fadd double %i.ez, %i.fa, !dbg !25654
  %i.fc = fmul double %i.fb, 5.000000e-01, !dbg !25655
  %i.fd = uitofp i32 %i.bf to double, !dbg !25641
  %i.fe = fadd double %i.fc, %i.fd, !dbg !25654
  %i.ff = fmul double %i.fe, 5.000000e-01, !dbg !25655
  %i.fg = uitofp i32 %i.bg to double, !dbg !25641
  %i.fh = fadd double %i.ff, %i.fg, !dbg !25654
  %i.fi = fmul double %i.fh, 5.000000e-01, !dbg !25655
  %i.fj = uitofp i32 %i.bh to double, !dbg !25641
  %i.fk = fadd double %i.fi, %i.fj, !dbg !25654
  %i.fl = fmul double %i.fk, 5.000000e-01, !dbg !25655
  %i.fm = uitofp i32 %i.bi to double, !dbg !25641
  %i.fn = fadd double %i.fl, %i.fm, !dbg !25654
  %i.fo = fmul double %i.fn, 5.000000e-01, !dbg !25655
  %i.fp = uitofp i32 %i.bj to double, !dbg !25641
  %i.fq = fadd double %i.fo, %i.fp, !dbg !25654
  %i.fr = fmul double %i.fq, 5.000000e-01, !dbg !25655
  %i.fs = uitofp i32 %i.bk to double, !dbg !25641
  %i.ft = fadd double %i.fr, %i.fs, !dbg !25654
  %i.fu = fmul double %i.ft, 5.000000e-01, !dbg !25655
  %i.fv = uitofp i32 %i.bl to double, !dbg !25641
  %i.fw = fadd double %i.fu, %i.fv, !dbg !25654
  %i.fx = fmul double %i.fw, 5.000000e-01, !dbg !25655
  %i.fy = uitofp i32 %i.bm to double, !dbg !25641
  %i.fz = fadd double %i.fx, %i.fy, !dbg !25654
  %i.ga = fmul double %i.fz, 5.000000e-01, !dbg !25655
  %i.gb = uitofp i32 %i.bn to double, !dbg !25641
  %i.gc = fadd double %i.ga, %i.gb, !dbg !25654
  %i.gd = fmul double %i.gc, 5.000000e-01, !dbg !25655
  %i.ge = uitofp i32 %i.bo to double, !dbg !25641
  %i.gf = fadd double %i.gd, %i.ge, !dbg !25654
  %i.gg = fmul double %i.gf, 5.000000e-01, !dbg !25655
  %i.gh = uitofp i32 %i.bp to double, !dbg !25641
  %i.gi = fadd double %i.gg, %i.gh, !dbg !25654
  %i.gj = fmul double %i.gi, 5.000000e-01, !dbg !25655
  %i.gk = uitofp i32 %i.bq to double, !dbg !25641
  %i.gl = fadd double %i.gj, %i.gk, !dbg !25654
  %i.gm = fmul double %i.gl, 5.000000e-01, !dbg !25655
  %i.gn = uitofp i32 %i.br to double, !dbg !25641
  %i.go = fadd double %i.gm, %i.gn, !dbg !25654
  %i.gp = fmul double %i.go, 5.000000e-01, !dbg !25655
  %i.gq = uitofp i32 %i.bs to double, !dbg !25641
  %i.gr = fadd double %i.gp, %i.gq, !dbg !25654
  %i.gs = fmul double %i.gr, 5.000000e-01, !dbg !25655
  %i.gt = uitofp i32 %i.bt to double, !dbg !25641
  %i.gu = fadd double %i.gs, %i.gt, !dbg !25654
  %i.gv = fmul double %i.gu, 5.000000e-01, !dbg !25655
  %i.gw = uitofp i32 %i.bu to double, !dbg !25641
  %i.gx = fadd double %i.gv, %i.gw, !dbg !25654
  %i.gy = fmul double %i.gx, 5.000000e-01, !dbg !25655
  %i.gz = uitofp i32 %i.bv to double, !dbg !25641
  %i.ha = fadd double %i.gy, %i.gz, !dbg !25654
  %i.hb = fmul double %i.ha, 5.000000e-01, !dbg !25655
  %i.hc = uitofp i32 %i.bw to double, !dbg !25641
  %i.hd = fadd double %i.hb, %i.hc, !dbg !25654
  %i.he = fmul double %i.hd, 5.000000e-01, !dbg !25655
  %i.hf = uitofp i32 %i.bx to double, !dbg !25641
  %i.hg = fadd double %i.he, %i.hf, !dbg !25654
  %i.hh = fmul double %i.hg, 5.000000e-01, !dbg !25655
  %i.hi = uitofp i32 %i.by to double, !dbg !25641
  %i.hj = fadd double %i.hh, %i.hi, !dbg !25654
  %i.hk = fmul double %i.hj, 5.000000e-01, !dbg !25655
  %i.hl = uitofp i32 %i.bz to double, !dbg !25641
  %i.hm = fadd double %i.hk, %i.hl, !dbg !25654
  %i.hn = fmul double %i.hm, 5.000000e-01, !dbg !25655
  %i.ho = uitofp i32 %i.ca to double, !dbg !25641
  %i.hp = fadd double %i.hn, %i.ho, !dbg !25654
  %i.hq = fmul double %i.hp, 5.000000e-01, !dbg !25655
  %i.hr = uitofp i32 %i.cb to double, !dbg !25641
  %i.hs = fadd double %i.hq, %i.hr, !dbg !25654
  %i.ht = fmul double %i.hs, 5.000000e-01, !dbg !25655
  %i.hu = uitofp i32 %i.cc to double, !dbg !25641
  %i.hv = fadd double %i.ht, %i.hu, !dbg !25654
  %i.hw = fmul double %i.hv, 5.000000e-01, !dbg !25655
  %i.hx = uitofp i32 %i.cd to double, !dbg !25641
  %i.hy = fadd double %i.hw, %i.hx, !dbg !25654
  %i.hz = fmul double %i.hy, 5.000000e-01, !dbg !25655
  %i.ia = uitofp i32 %i.ce to double, !dbg !25641
  %i.ib = fadd double %i.hz, %i.ia, !dbg !25654
  %i.ic = fmul double %i.ib, 5.000000e-01, !dbg !25655
  %i.id = uitofp i32 %i.cf to double, !dbg !25641
  %i.ie = fadd double %i.ic, %i.id, !dbg !25654
  %i.if = fmul double %i.ie, 5.000000e-01, !dbg !25655
  %i.ig = uitofp i32 %i.cg to double, !dbg !25641
  %i.ih = fadd double %i.if, %i.ig, !dbg !25654
  %i.ii = fmul double %i.ih, 5.000000e-01, !dbg !25655
  %i.ij = uitofp i32 %i.ch to double, !dbg !25641
  %i.ik = fadd double %i.ii, %i.ij, !dbg !25654
  %i.il = fmul double %i.ik, 5.000000e-01, !dbg !25655
  %i.im = fadd double %i.il, %.sroa.08.1, !dbg !25656
  %i.in = fdiv double f0x41A71547652B82FE, %i.im, !dbg !25657
  %i.io = tail call double @llvm.round.f64(double %i.in), !dbg !25658
  %i.ip = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.io), !dbg !25657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25659
  ret i64 %i.ip, !dbg !25660
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE3addB6_(ptr noalias nofree noundef captures(none) dereferenceable(16384) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !25661 !guid !25682 {
bb.a:
  %.val.i.i = load i64, ptr %1, align 8, !dbg !25687, !alias.scope !25683, !noalias !25684, !noundef !1573
  %i.a = xor i64 %.val.i.i, 589684135938649225, !dbg !25688
  %i.b = zext i64 %i.a to i128, !dbg !25689
  %i.c = mul nuw i128 %i.b, 13883517620612518109, !dbg !25690 ; 2 uses
  %i.d = lshr i128 %i.c, 64, !dbg !25691
  %.masked.i = and i128 %i.c, 18446744073709551615, !dbg !25692
  %i.e = xor i128 %.masked.i, %i.d, !dbg !25692
  %i.f = mul nuw nsw i128 %i.e, 2611923443488327891, !dbg !25693 ; 2 uses
  %i.g = lshr i128 %i.f, 64, !dbg !25694
  %i.h = xor i128 %i.g, %i.f, !dbg !25695
  %i.i = trunc i128 %i.h to i64, !dbg !25695      ; 2 uses
  %i.j = lshr i64 %i.i, 14, !dbg !25696
  %i.k = or disjoint i64 %i.j, 1125899906842624, !dbg !25697
  %i.l = tail call range(i64 0, 51) i64 @llvm.cttz.i64(i64 %i.k, i1 true), !dbg !25698
  %i.m = trunc nuw nsw i64 %i.l to i8, !dbg !25698
  %i.n = add nuw nsw i8 %i.m, 1, !dbg !25697
  %i.o = and i64 %i.i, 16383, !dbg !25699
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o, !dbg !25700 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !dbg !25700, !noundef !1573
  %.sroa.0.0.i = tail call noundef range(i8 1, 0) i8 @llvm.umax.i8(i8 range(i8 1, 52) %i.n, i8 %i.q), !dbg !25701
  store i8 %.sroa.0.0.i, ptr %i.p, align 1, !dbg !25702
  ret void, !dbg !25703
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE5countB6_(ptr noalias noundef readonly captures(none) dereferenceable(16384) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25704 !guid !25750 {
bb.a:
  %i.a = alloca [16400 x i8], align 8             ; 3 uses
  %i.b = alloca [208 x i8], align 4               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25751), !dbg !25759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(208) %i.b, i8 0, i64 208, i1 false), !dbg !25760, !alias.scope !25751
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !25761 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25761, !noalias !25752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %.sroa.512.0..sroa_idx.i, ptr noundef nonnull readonly align 1 dereferenceable(16384) %0, i64 16384, i1 false), !dbg !25762, !noalias !25751
  br label %bb.b, !dbg !25763

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = phi i64 [ 0, %bb.a ], [ %i.p, %bb.d ]    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25764
  %i.e = load i8, ptr %i.d, align 2, !dbg !25765, !alias.scope !25754, !noalias !25752, !noundef !1573 ; 2 uses
  %i.f = zext i8 %i.e to i64, !dbg !25766         ; 2 uses
  %i.g = icmp ult i8 %i.e, 52, !dbg !25767
  br i1 %i.g, label %bb.c, label %bb.e, !dbg !25767

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.f, !dbg !25767 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !dbg !25767, !alias.scope !25751, !noundef !1573
  %i.j = add i32 %i.i, 1, !dbg !25767
  store i32 %i.j, ptr %i.h, align 4, !dbg !25767, !alias.scope !25751
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.512.0..sroa_idx.i, i64 %i.c, !dbg !25764
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !25764
  %i.m = load i8, ptr %i.l, align 1, !dbg !25765, !alias.scope !25754, !noalias !25752, !noundef !1573 ; 2 uses
  %i.n = zext i8 %i.m to i64, !dbg !25766         ; 2 uses
  %i.o = icmp ult i8 %i.m, 52, !dbg !25767
  br i1 %i.o, label %bb.d, label %bb.e, !dbg !25767

bb.d:                                             ; preds = %bb.c
  %i.p = add nuw nsw i64 %i.c, 2, !dbg !25768     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n, !dbg !25767 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !dbg !25767, !alias.scope !25751, !noundef !1573
  %i.s = add i32 %i.r, 1, !dbg !25767
  store i32 %i.s, ptr %i.q, align 4, !dbg !25767, !alias.scope !25751
  %.not.i.not.i.1 = icmp eq i64 %i.p, 16384, !dbg !25763
  br i1 %.not.i.not.i.1, label %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE13get_histogramB6_.exit, label %bb.b, !dbg !25763

bb.e:                                             ; preds = %bb.c, %bb.b
  %.lcssa47 = phi i64 [ %i.f, %bb.b ], [ %i.n, %bb.c ], !dbg !25766
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa47, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #42, !dbg !25767, !noalias !25752
  unreachable

_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE13get_histogramB6_.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25769, !noalias !25752
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 204, !dbg !25770
  %i.u = load i32, ptr %i.t, align 4, !dbg !25770, !noundef !1573
  %i.v = uitofp i32 %i.u to double, !dbg !25770
  %i.w = fsub nnan double 1.638400e+04, %i.v, !dbg !25771
  %i.x = fmul nnan double %i.w, f0x3F10000000000000, !dbg !25771 ; 4 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00, !dbg !25772
  %i.z = fcmp oeq double %i.x, 1.000000e+00
  %or.cond.i = or i1 %i.y, %i.z, !dbg !25772
  br i1 %or.cond.i, label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, label %bb.f, !dbg !25772

bb.f:                                             ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE13get_histogramB6_.exit
  %i.aa = fsub double 1.000000e+00, %i.x, !dbg !25773
  br label %bb.g, !dbg !25774

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.09.0.i = phi double [ %i.aa, %bb.f ], [ %i.ag, %bb.g ], !dbg !25775 ; 2 uses
  %.sroa.07.0.i = phi double [ 1.000000e+00, %bb.f ], [ %i.ac, %bb.g ], !dbg !25776
  %.sroa.0.0.i = phi double [ %i.x, %bb.f ], [ %i.ab, %bb.g ]
  %i.ab = tail call double @llvm.sqrt.f64(double %.sroa.0.0.i), !dbg !25777 ; 2 uses
  %i.ac = fmul double %.sroa.07.0.i, 5.000000e-01, !dbg !25778 ; 2 uses
  %i.ad = fsub double 1.000000e+00, %i.ab, !dbg !25779 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad, !dbg !25780
  %i.af = fmul double %i.ac, %i.ae, !dbg !25779
  %i.ag = fsub double %.sroa.09.0.i, %i.af, !dbg !25781 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.09.0.i, %i.ag, !dbg !25782
  br i1 %i.ah, label %bb.h, label %bb.g, !dbg !25782

bb.h:                                             ; preds = %bb.g
  %i.ai = fdiv double %i.ag, 3.000000e+00, !dbg !25783
  %i.aj = fmul double %i.ai, 1.638400e+04, !dbg !25784
  br label %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, !dbg !25785

_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit: ; preds = %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE13get_histogramB6_.exit, %bb.h
  %.sroa.06.0.i = phi double [ %i.aj, %bb.h ], [ 0.000000e+00, %_RNvMs_NtCslFlrwjHoTci_14polars_compute15hyperloglogplusINtB4_11HyperLogLogyE13get_histogramB6_.exit ], !dbg !25776
  %.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !25786
  %i.ak = load i32, ptr %.ptr, align 4, !dbg !25786, !noundef !1573
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 196, !dbg !25786
  %i.al = load i32, ptr %.ptr.1, align 4, !dbg !25786, !noundef !1573
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !25786
  %i.am = load i32, ptr %.ptr.2, align 4, !dbg !25786, !noundef !1573
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.b, i64 188, !dbg !25786
  %i.an = load i32, ptr %.ptr.3, align 4, !dbg !25786, !noundef !1573
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !25786
  %i.ao = load i32, ptr %.ptr.4, align 4, !dbg !25786, !noundef !1573
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.b, i64 180, !dbg !25786
  %i.ap = load i32, ptr %.ptr.5, align 4, !dbg !25786, !noundef !1573
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.b, i64 176, !dbg !25786
  %i.aq = load i32, ptr %.ptr.6, align 4, !dbg !25786, !noundef !1573
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.b, i64 172, !dbg !25786
  %i.ar = load i32, ptr %.ptr.7, align 4, !dbg !25786, !noundef !1573
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %i.b, i64 168, !dbg !25786
  %i.as = load i32, ptr %.ptr.8, align 4, !dbg !25786, !noundef !1573
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %i.b, i64 164, !dbg !25786
  %i.at = load i32, ptr %.ptr.9, align 4, !dbg !25786, !noundef !1573
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %i.b, i64 160, !dbg !25786
  %i.au = load i32, ptr %.ptr.10, align 4, !dbg !25786, !noundef !1573
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %i.b, i64 156, !dbg !25786
  %i.av = load i32, ptr %.ptr.11, align 4, !dbg !25786, !noundef !1573
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %i.b, i64 152, !dbg !25786
  %i.aw = load i32, ptr %.ptr.12, align 4, !dbg !25786, !noundef !1573
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %i.b, i64 148, !dbg !25786
  %i.ax = load i32, ptr %.ptr.13, align 4, !dbg !25786, !noundef !1573
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %i.b, i64 144, !dbg !25786
  %i.ay = load i32, ptr %.ptr.14, align 4, !dbg !25786, !noundef !1573
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %i.b, i64 140, !dbg !25786
  %i.az = load i32, ptr %.ptr.15, align 4, !dbg !25786, !noundef !1573
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %i.b, i64 136, !dbg !25786
  %i.ba = load i32, ptr %.ptr.16, align 4, !dbg !25786, !noundef !1573
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %i.b, i64 132, !dbg !25786
  %i.bb = load i32, ptr %.ptr.17, align 4, !dbg !25786, !noundef !1573
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %i.b, i64 128, !dbg !25786
  %i.bc = load i32, ptr %.ptr.18, align 4, !dbg !25786, !noundef !1573
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %i.b, i64 124, !dbg !25786
  %i.bd = load i32, ptr %.ptr.19, align 4, !dbg !25786, !noundef !1573
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %i.b, i64 120, !dbg !25786
  %i.be = load i32, ptr %.ptr.20, align 4, !dbg !25786, !noundef !1573
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %i.b, i64 116, !dbg !25786
  %i.bf = load i32, ptr %.ptr.21, align 4, !dbg !25786, !noundef !1573
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %i.b, i64 112, !dbg !25786
  %i.bg = load i32, ptr %.ptr.22, align 4, !dbg !25786, !noundef !1573
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %i.b, i64 108, !dbg !25786
  %i.bh = load i32, ptr %.ptr.23, align 4, !dbg !25786, !noundef !1573
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !25786
  %i.bi = load i32, ptr %.ptr.24, align 4, !dbg !25786, !noundef !1573
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %i.b, i64 100, !dbg !25786
  %i.bj = load i32, ptr %.ptr.25, align 4, !dbg !25786, !noundef !1573
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !25786
  %i.bk = load i32, ptr %.ptr.26, align 4, !dbg !25786, !noundef !1573
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %i.b, i64 92, !dbg !25786
  %i.bl = load i32, ptr %.ptr.27, align 4, !dbg !25786, !noundef !1573
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !25786
  %i.bm = load i32, ptr %.ptr.28, align 4, !dbg !25786, !noundef !1573
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %i.b, i64 84, !dbg !25786
  %i.bn = load i32, ptr %.ptr.29, align 4, !dbg !25786, !noundef !1573
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !25786
  %i.bo = load i32, ptr %.ptr.30, align 4, !dbg !25786, !noundef !1573
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !25786
  %i.bp = load i32, ptr %.ptr.31, align 4, !dbg !25786, !noundef !1573
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !25786
  %i.bq = load i32, ptr %.ptr.32, align 4, !dbg !25786, !noundef !1573
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %i.b, i64 68, !dbg !25786
  %i.br = load i32, ptr %.ptr.33, align 4, !dbg !25786, !noundef !1573
  %.ptr.34 = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !25786
  %i.bs = load i32, ptr %.ptr.34, align 4, !dbg !25786, !noundef !1573
  %.ptr.35 = getelementptr inbounds nuw i8, ptr %i.b, i64 60, !dbg !25786
  %i.bt = load i32, ptr %.ptr.35, align 4, !dbg !25786, !noundef !1573
  %.ptr.36 = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !25786
  %i.bu = load i32, ptr %.ptr.36, align 4, !dbg !25786, !noundef !1573
  %.ptr.37 = getelementptr inbounds nuw i8, ptr %i.b, i64 52, !dbg !25786
  %i.bv = load i32, ptr %.ptr.37, align 4, !dbg !25786, !noundef !1573
  %.ptr.38 = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !25786
  %i.bw = load i32, ptr %.ptr.38, align 4, !dbg !25786, !noundef !1573
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %i.b, i64 44, !dbg !25786
  %i.bx = load i32, ptr %.ptr.39, align 4, !dbg !25786, !noundef !1573
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !25786
  %i.by = load i32, ptr %.ptr.40, align 4, !dbg !25786, !noundef !1573
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %i.b, i64 36, !dbg !25786
  %i.bz = load i32, ptr %.ptr.41, align 4, !dbg !25786, !noundef !1573
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !25786
  %i.ca = load i32, ptr %.ptr.42, align 4, !dbg !25786, !noundef !1573
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %i.b, i64 28, !dbg !25786
  %i.cb = load i32, ptr %.ptr.43, align 4, !dbg !25786, !noundef !1573
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !25786
  %i.cc = load i32, ptr %.ptr.44, align 4, !dbg !25786, !noundef !1573
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %i.b, i64 20, !dbg !25786
  %i.cd = load i32, ptr %.ptr.45, align 4, !dbg !25786, !noundef !1573
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !25786
  %i.ce = load i32, ptr %.ptr.46, align 4, !dbg !25786, !noundef !1573
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %i.b, i64 12, !dbg !25786
  %i.cf = load i32, ptr %.ptr.47, align 4, !dbg !25786, !noundef !1573
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !25786
  %i.cg = load i32, ptr %.ptr.48, align 4, !dbg !25786, !noundef !1573
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !25786
  %i.ch = load i32, ptr %.ptr.49, align 4, !dbg !25786, !noundef !1573
  %i.ci = load i32, ptr %i.b, align 4, !dbg !25787, !noundef !1573
  %i.cj = uitofp i32 %i.ci to double, !dbg !25787
  %i.ck = fmul nnan double %i.cj, f0x3F10000000000000, !dbg !25787 ; 3 uses
  %i.cl = fcmp oeq double %i.ck, 1.000000e+00, !dbg !25788
  br i1 %i.cl, label %bb.j, label %.preheader, !dbg !25788

.preheader:                                       ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %.preheader
  %.sroa.019.0 = phi double [ %i.cp, %.preheader ], [ 1.000000e+00, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25789 ; 3 uses
  %.sroa.012.0 = phi double [ %i.cm, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25790 ; 2 uses
  %.sroa.08.0 = phi double [ %i.co, %.preheader ], [ %i.ck, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25791 ; 2 uses
  %i.cm = fmul double %.sroa.012.0, %.sroa.012.0, !dbg !25792 ; 2 uses
  %i.cn = fmul double %.sroa.019.0, %i.cm, !dbg !25793
  %i.co = fadd double %.sroa.08.0, %i.cn, !dbg !25794 ; 3 uses
  %i.cp = fadd double %.sroa.019.0, %.sroa.019.0, !dbg !25795
  %i.cq = fcmp oeq double %.sroa.08.0, %i.co, !dbg !25796
  br i1 %i.cq, label %bb.i, label %.preheader, !dbg !25796

bb.i:                                             ; preds = %.preheader
  %i.cr = fmul double %i.co, 1.638400e+04, !dbg !25797
  br label %bb.j, !dbg !25798

bb.j:                                             ; preds = %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit, %bb.i
  %.sroa.08.1 = phi double [ %i.cr, %bb.i ], [ +inf, %_RNvXs8_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSmE5indexCslFlrwjHoTci_14polars_compute.exit ], !dbg !25789
  %i.cs = uitofp i32 %i.ak to double, !dbg !25786
  %i.ct = fadd double %.sroa.06.0.i, %i.cs, !dbg !25799
  %i.cu = fmul double %i.ct, 5.000000e-01, !dbg !25800
  %i.cv = uitofp i32 %i.al to double, !dbg !25786
  %i.cw = fadd double %i.cu, %i.cv, !dbg !25799
  %i.cx = fmul double %i.cw, 5.000000e-01, !dbg !25800
  %i.cy = uitofp i32 %i.am to double, !dbg !25786
  %i.cz = fadd double %i.cx, %i.cy, !dbg !25799
  %i.da = fmul double %i.cz, 5.000000e-01, !dbg !25800
  %i.db = uitofp i32 %i.an to double, !dbg !25786
  %i.dc = fadd double %i.da, %i.db, !dbg !25799
  %i.dd = fmul double %i.dc, 5.000000e-01, !dbg !25800
  %i.de = uitofp i32 %i.ao to double, !dbg !25786
  %i.df = fadd double %i.dd, %i.de, !dbg !25799
  %i.dg = fmul double %i.df, 5.000000e-01, !dbg !25800
  %i.dh = uitofp i32 %i.ap to double, !dbg !25786
  %i.di = fadd double %i.dg, %i.dh, !dbg !25799
  %i.dj = fmul double %i.di, 5.000000e-01, !dbg !25800
  %i.dk = uitofp i32 %i.aq to double, !dbg !25786
  %i.dl = fadd double %i.dj, %i.dk, !dbg !25799
  %i.dm = fmul double %i.dl, 5.000000e-01, !dbg !25800
  %i.dn = uitofp i32 %i.ar to double, !dbg !25786
  %i.do = fadd double %i.dm, %i.dn, !dbg !25799
  %i.dp = fmul double %i.do, 5.000000e-01, !dbg !25800
  %i.dq = uitofp i32 %i.as to double, !dbg !25786
  %i.dr = fadd double %i.dp, %i.dq, !dbg !25799
  %i.ds = fmul double %i.dr, 5.000000e-01, !dbg !25800
  %i.dt = uitofp i32 %i.at to double, !dbg !25786
  %i.du = fadd double %i.ds, %i.dt, !dbg !25799
  %i.dv = fmul double %i.du, 5.000000e-01, !dbg !25800
  %i.dw = uitofp i32 %i.au to double, !dbg !25786
  %i.dx = fadd double %i.dv, %i.dw, !dbg !25799
  %i.dy = fmul double %i.dx, 5.000000e-01, !dbg !25800
  %i.dz = uitofp i32 %i.av to double, !dbg !25786
  %i.ea = fadd double %i.dy, %i.dz, !dbg !25799
  %i.eb = fmul double %i.ea, 5.000000e-01, !dbg !25800
  %i.ec = uitofp i32 %i.aw to double, !dbg !25786
  %i.ed = fadd double %i.eb, %i.ec, !dbg !25799
  %i.ee = fmul double %i.ed, 5.000000e-01, !dbg !25800
  %i.ef = uitofp i32 %i.ax to double, !dbg !25786
  %i.eg = fadd double %i.ee, %i.ef, !dbg !25799
  %i.eh = fmul double %i.eg, 5.000000e-01, !dbg !25800
  %i.ei = uitofp i32 %i.ay to double, !dbg !25786
  %i.ej = fadd double %i.eh, %i.ei, !dbg !25799
  %i.ek = fmul double %i.ej, 5.000000e-01, !dbg !25800
  %i.el = uitofp i32 %i.az to double, !dbg !25786
  %i.em = fadd double %i.ek, %i.el, !dbg !25799
end_hunk_1

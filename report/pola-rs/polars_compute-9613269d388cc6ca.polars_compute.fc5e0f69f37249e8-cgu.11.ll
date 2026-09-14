Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.11?download=true
inline.NumInlined: 2706
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB3n_NtNtNtBa_5array15fixed_size_list18FixedSizeListArrayNtB3p_13TotalEqKernel13tot_ne_kernel0E0EEB3r_:bb.a
  %exitcond.5.not.i = icmp eq i64 %i.bf, %umax.i, !dbg !25335
  br i1 %exitcond.5.not.i, label %.thread42.i, label %bb.h, !dbg !25336

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i
  %i.bl = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !25337, !noalias !25314, !noundef !1457
  %i.bm = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !25338, !noalias !25314, !noundef !1457 ; 2 uses
  %i.bn = mul i64 %i.bm, %i.bf, !dbg !25339
  %i.bo = add i64 %i.bn, %i.bl, !dbg !25337
  %i.bp = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.bo, i64 noundef %i.bm)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i unwind label %.loopexit.i, !dbg !25340, !noalias !25312

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i: ; preds = %bb.h
  %i.bq = add i64 %.sroa.8.0.i, 6, !dbg !25341    ; 2 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !25342, !noalias !25314, !nonnull !1457, !align !1592, !noundef !1457
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.5.i, i64 48, !dbg !25343
  %i.bs = load i64, ptr %i.br, align 8, !dbg !25343, !noalias !25314, !noundef !1457
  %i.bt = icmp ult i64 %i.bp, %i.bs, !dbg !25344
  %i.bu = add i64 %.sroa.0.0.i, 6, !dbg !25345
  %i.bv = select i1 %i.bt, i8 32, i8 0, !dbg !25346
  %.sroa.013.0.5.i = or disjoint i8 %i.bv, %.sroa.013.0.4.i, !dbg !25346 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %i.bq, %umax.i, !dbg !25335
  br i1 %exitcond.6.not.i, label %.thread42.i, label %bb.i, !dbg !25336

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i
  %i.bw = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !25337, !noalias !25314, !noundef !1457
  %i.bx = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !25338, !noalias !25314, !noundef !1457 ; 2 uses
  %i.by = mul i64 %i.bx, %i.bq, !dbg !25339
  %i.bz = add i64 %i.by, %i.bw, !dbg !25337
  %i.ca = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.bz, i64 noundef %i.bx)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i unwind label %.loopexit.i, !dbg !25340, !noalias !25312

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i: ; preds = %bb.i
  %i.cb = add i64 %.sroa.8.0.i, 7, !dbg !25341    ; 3 uses
  %.val.i.i.6.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !25342, !noalias !25314, !nonnull !1457, !align !1592, !noundef !1457
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.6.i, i64 48, !dbg !25343
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !25343, !noalias !25314, !noundef !1457
  %i.ce = icmp ult i64 %i.ca, %i.cd, !dbg !25344
  %i.cf = add i64 %.sroa.0.0.i, 7, !dbg !25345
  %i.cg = select i1 %i.ce, i8 64, i8 0, !dbg !25346
  %.sroa.013.0.6.i = or i8 %i.cg, %.sroa.013.0.5.i, !dbg !25346 ; 2 uses
  %exitcond.7.not.i = icmp eq i64 %i.cb, %umax.i, !dbg !25335
  br i1 %exitcond.7.not.i, label %.thread42.i, label %bb.j, !dbg !25336

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i
  %i.ch = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !25337, !noalias !25314, !noundef !1457
  %i.ci = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !25338, !noalias !25314, !noundef !1457 ; 2 uses
  %i.cj = mul i64 %i.ci, %i.cb, !dbg !25339
  %i.ck = add i64 %i.cj, %i.ch, !dbg !25337
  %i.cl = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.ck, i64 noundef %i.ci)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i unwind label %.loopexit.i, !dbg !25340, !noalias !25312

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i: ; preds = %bb.j
  %i.cm = add i64 %.sroa.8.0.i, 8, !dbg !25341
  %.val.i.i.7.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !25342, !noalias !25314, !nonnull !1457, !align !1592, !noundef !1457
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i.7.i, i64 48, !dbg !25343
  %i.co = load i64, ptr %i.cn, align 8, !dbg !25343, !noalias !25314, !noundef !1457
  %i.cp = icmp ult i64 %i.cl, %i.co, !dbg !25344
  %i.cq = select i1 %i.cp, i8 -128, i8 0, !dbg !25346
  %.sroa.013.0.7.i = or i8 %i.cq, %.sroa.013.0.6.i, !dbg !25346
  %i.cr = icmp ult i64 %i.cb, %.sroa.12.0.copyload.i, !dbg !25335
  br label %.thread42.i, !dbg !25347

.thread42.i:                                      ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i
  %.pn.i = phi i1 [ %i.cr, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ]
  %.sroa.8.165.i = phi i64 [ %i.cm, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ] ; 2 uses
  %.sroa.05.060.i = phi i8 [ %.sroa.013.0.7.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %.sroa.013.0.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %.sroa.013.0.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %.sroa.013.0.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %.sroa.013.0.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %.sroa.013.0.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %.sroa.013.0.1.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %i.s, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ]
  %.sroa.0.156.i = phi i64 [ %i.h, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %i.cf, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %i.bu, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %i.bj, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %i.ay, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %i.an, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %i.ac, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ] ; 2 uses
  %i.cs = load i64, ptr %i.f, align 8, !dbg !25347, !noalias !25312, !noundef !1457 ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, -1, !dbg !25348
  call void @llvm.assume(i1 %i.ct), !dbg !25349
  %i.cu = load i64, ptr %i.b, align 8, !dbg !25350, !range !1670, !noalias !25312, !noundef !1457
  %i.cv = icmp eq i64 %i.cs, %i.cu, !dbg !25351
  br i1 %i.cv, label %bb.p, label %.thread.i, !dbg !25351

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i: ; preds = %.thread.i, %bb.b
  %.sroa.0.157.i = phi i64 [ %.sroa.0.156.i, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25352, !noalias !25312
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.k, !dbg !25353, !noalias !25310

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.m, !dbg !25354, !noalias !25310

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.q, !dbg !25355, !noalias !25310

bb.m:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25353, !noalias !25310
  unreachable, !dbg !25353

bb.n:                                             ; preds = %bb.p
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !25356, !alias.scope !25317, !noalias !25312 ; 3 uses
  %.pre83.i = load i64, ptr %i.b, align 8, !dbg !25357, !range !1670, !alias.scope !25317, !noalias !25312
  %i.cy = icmp eq i64 %.pre.i, %.pre83.i, !dbg !25358
  br i1 %i.cy, label %bb.o, label %.thread.i, !dbg !25358

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !25359, !noalias !25312

bb.p:                                             ; preds = %.thread42.i
  %spec.select.i.i26.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.0.copyload.i, i64 %.sroa.8.165.i), !dbg !25360
  %i.cz = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i26.i, i64 7), !dbg !25361
  %i.da = lshr i64 %i.cz, 3, !dbg !25362
  %i.db = add nuw nsw i64 %i.da, 1, !dbg !25363
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.db)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.i, !dbg !25364, !noalias !25312

.thread.i:                                        ; preds = %bb.o, %bb.n, %.thread42.i
  %i.dc = phi i64 [ %.pre.i, %bb.o ], [ %.pre.i, %bb.n ], [ %i.cs, %.thread42.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.g, align 8, !dbg !25365, !alias.scope !25317, !noalias !25312, !nonnull !1457, !noundef !1457
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc, !dbg !25366
  store i8 %.sroa.05.060.i, ptr %i.de, align 1, !dbg !25367, !noalias !25312
  %i.df = add i64 %i.dc, 1, !dbg !25368
  store i64 %i.df, ptr %i.f, align 8, !dbg !25368, !alias.scope !25317, !noalias !25312
  br i1 %.pn.i, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i, !dbg !25369

bb.q:                                             ; preds = %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !25331

.loopexit.i:                                      ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.p, %bb.o
  %lpad.loopexit48.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.a
  %lpad.loopexit.split-lp49.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit48.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp49.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.b) #35
          to label %.body unwind label %bb.r, !dbg !25332, !noalias !25312

bb.r:                                             ; preds = %.loopexit.split-lp.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25370, !noalias !25312
  unreachable, !dbg !25370

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.u unwind label %bb.t, !dbg !25371

bb.s:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !25319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25331, !noalias !25310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25372
  store i64 %.sroa.0.157.i, ptr %i.di, align 8, !dbg !25373, !alias.scope !25309, !noalias !25310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25332, !noalias !25312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !25374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25371
  ret void, !dbg !25375

bb.t:                                             ; preds = %.body
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25376
  unreachable, !dbg !25376

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !25376
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtBa_5array17fixed_size_binary20FixedSizeBinaryArrayNtB3s_13TotalEqKernel13tot_eq_kernel0EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25377 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25499
  store i64 0, ptr %i.c, align 8, !dbg !25500
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25500 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25500
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25500 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25491), !dbg !25501
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25492), !dbg !25501
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25500
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !25502, !alias.scope !25493, !noalias !25491 ; 4 uses
  %.sroa.4.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25502
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx31.i, align 8, !dbg !25502, !alias.scope !25493, !noalias !25491 ; 4 uses
  %.sroa.5.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25502
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx32.i, align 8, !dbg !25502, !alias.scope !25493, !noalias !25491 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25502
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !25502, !alias.scope !25493, !noalias !25491 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25503, !noalias !25494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !25504, !noalias !25492
  store i64 0, ptr %i.c, align 8, !dbg !25505, !alias.scope !25491, !noalias !25492
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25505, !alias.scope !25491, !noalias !25492
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.0.copyload.i), !dbg !25506
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i.i, i64 7), !dbg !25507
  %i.e = lshr i64 %i.d, 3, !dbg !25508
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25509
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !25510, !noalias !25494

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 40 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !25511

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ao, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dv, %bb.ao ], [ %i.dl, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25512, !noalias !25492
  br label %.body, !dbg !25513

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.182.i, %.thread.i ], [ %.sroa.5.0.copyload.i, %.preheader.i ], !dbg !25502 ; 13 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !25514 ; 9 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.5.0.i, i64 %.sroa.9.0.copyload.i), !dbg !25515 ; 18 uses
  %i.n = add i64 %.sroa.0.0.i, 8, !dbg !25515     ; 2 uses
  %i.o = add i64 %.sroa.5.0.i, 8, !dbg !25515     ; 2 uses
  %exitcond.not.not.not.i = icmp ult i64 %.sroa.5.0.i, %.sroa.9.0.copyload.i, !dbg !25516
  br i1 %exitcond.not.not.not.i, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !25517

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.5.0.i, 1, !dbg !25518 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.q = load i64, ptr %i.f, align 8, !dbg !25519, !noalias !25496, !noundef !1457 ; 19 uses
  %i.r = icmp eq i64 %i.q, 0, !dbg !25520
  br i1 %i.r, label %split.invoke.i, label %bb.d, !dbg !25520

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.g, align 8, !dbg !25521, !noalias !25496, !noundef !1457
  %i.t = udiv i64 %i.s, %i.q, !dbg !25520         ; 8 uses
  %i.u = icmp ult i64 %.sroa.5.0.i, %i.t, !dbg !25522
  br i1 %i.u, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, label %.invoke.i, !dbg !25522, !prof !1593

split.invoke.i:                                   ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %split.cont.i unwind label %.loopexit.split-lp.i, !dbg !25523, !noalias !25494

split.cont.i:                                     ; preds = %split.invoke.i
  unreachable

.invoke.i:                                        ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !25524, !noalias !25494

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.h, align 8, !dbg !25525, !noalias !25496, !noundef !1457 ; 8 uses
  %i.w = mul i64 %i.q, %.sroa.5.0.i, !dbg !25526  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w, !dbg !25527
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.y = load i64, ptr %i.i, align 8, !dbg !25528, !noalias !25496, !noundef !1457 ; 3 uses
  %i.z = icmp eq i64 %i.y, 0, !dbg !25529
  br i1 %i.z, label %split.invoke.i, label %bb.e, !dbg !25529

bb.e:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %i.aa = load i64, ptr %i.j, align 8, !dbg !25530, !noalias !25496, !noundef !1457
  %i.ab = udiv i64 %i.aa, %i.y, !dbg !25529       ; 8 uses
  %i.ac = icmp ult i64 %.sroa.5.0.i, %i.ab, !dbg !25531
  br i1 %i.ac, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i: ; preds = %bb.e
  %i.ad = icmp eq i64 %i.q, %i.y, !dbg !25532     ; 8 uses
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !25532

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %i.ae = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w, !dbg !25534
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.x, ptr %i.af, i64 %i.q), !dbg !25535, !noalias !25496
  %i.ag = icmp eq i32 %bcmp.i.i.i, 0, !dbg !25535
  %i.ah = zext i1 %i.ag to i8, !dbg !25536
  br label %bb.g, !dbg !25537

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ 0, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ai = add i64 %.sroa.0.0.i, 1, !dbg !25538
  %exitcond.1.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.p, !dbg !25516
  br i1 %exitcond.1.not.i, label %.thread45.i, label %bb.h, !dbg !25517

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw i64 %.sroa.5.0.i, 2, !dbg !25518 ; 4 uses
  %i.ak = icmp ult i64 %i.p, %i.t, !dbg !25522
  br i1 %i.ak, label %bb.i, label %.invoke.i, !dbg !25522, !prof !1593

bb.i:                                             ; preds = %bb.h
  %i.al = mul i64 %i.q, %i.p, !dbg !25526         ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.al, !dbg !25527
  %i.an = icmp ult i64 %i.p, %i.ab, !dbg !25531
  br i1 %i.an, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.1.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.1.i: ; preds = %bb.i
  br i1 %i.ad, label %bb.j, label %bb.k, !dbg !25532

bb.j:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.1.i
  %i.ao = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al, !dbg !25534
  %bcmp.i.i.1.i = call i32 @bcmp(ptr %i.am, ptr %i.ap, i64 %i.q), !dbg !25535, !noalias !25496
  %i.aq = icmp eq i32 %bcmp.i.i.1.i, 0, !dbg !25535
  %i.ar = select i1 %i.aq, i8 2, i8 0, !dbg !25536
  %i.as = or disjoint i8 %i.ar, %.sroa.0.0.i.ph.i, !dbg !25536
  br label %bb.k, !dbg !25537

bb.k:                                             ; preds = %bb.j, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.1.i
  %.sroa.0.0.i.ph.1.i = phi i8 [ %.sroa.0.0.i.ph.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.1.i ], [ %i.as, %bb.j ] ; 3 uses
  %i.at = add i64 %.sroa.0.0.i, 2, !dbg !25538
  %exitcond.2.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.aj, !dbg !25516
  br i1 %exitcond.2.not.i, label %.thread45.i, label %bb.l, !dbg !25517

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.sroa.5.0.i, 3, !dbg !25518    ; 4 uses
  %i.av = icmp ult i64 %i.aj, %i.t, !dbg !25522
  br i1 %i.av, label %bb.m, label %.invoke.i, !dbg !25522, !prof !1593

bb.m:                                             ; preds = %bb.l
  %i.aw = mul i64 %i.q, %i.aj, !dbg !25526        ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw, !dbg !25527
  %i.ay = icmp ult i64 %i.aj, %i.ab, !dbg !25531
  br i1 %i.ay, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.2.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.2.i: ; preds = %bb.m
  br i1 %i.ad, label %bb.n, label %bb.o, !dbg !25532

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.2.i
  %i.az = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw, !dbg !25534
  %bcmp.i.i.2.i = call i32 @bcmp(ptr %i.ax, ptr %i.ba, i64 %i.q), !dbg !25535, !noalias !25496
  %i.bb = icmp eq i32 %bcmp.i.i.2.i, 0, !dbg !25535
  %i.bc = select i1 %i.bb, i8 4, i8 0, !dbg !25536
  %i.bd = or i8 %i.bc, %.sroa.0.0.i.ph.1.i, !dbg !25536
  br label %bb.o, !dbg !25537

bb.o:                                             ; preds = %bb.n, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.2.i
  %.sroa.0.0.i.ph.2.i = phi i8 [ %.sroa.0.0.i.ph.1.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.2.i ], [ %i.bd, %bb.n ] ; 3 uses
  %i.be = add i64 %.sroa.0.0.i, 3, !dbg !25538
  %exitcond.3.not.i = icmp eq i64 %i.au, %umax.i, !dbg !25516
  br i1 %exitcond.3.not.i, label %.thread45.i, label %bb.p, !dbg !25517

bb.p:                                             ; preds = %bb.o
  %i.bf = add i64 %.sroa.5.0.i, 4, !dbg !25518    ; 4 uses
  %i.bg = icmp ult i64 %i.au, %i.t, !dbg !25522
  br i1 %i.bg, label %bb.q, label %.invoke.i, !dbg !25522, !prof !1593

bb.q:                                             ; preds = %bb.p
  %i.bh = mul i64 %i.q, %i.au, !dbg !25526        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh, !dbg !25527
  %i.bj = icmp ult i64 %i.au, %i.ab, !dbg !25531
  br i1 %i.bj, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.3.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.3.i: ; preds = %bb.q
  br i1 %i.ad, label %bb.r, label %bb.s, !dbg !25532

bb.r:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.3.i
  %i.bk = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !25534
  %bcmp.i.i.3.i = call i32 @bcmp(ptr %i.bi, ptr %i.bl, i64 %i.q), !dbg !25535, !noalias !25496
  %i.bm = icmp eq i32 %bcmp.i.i.3.i, 0, !dbg !25535
  %i.bn = select i1 %i.bm, i8 8, i8 0, !dbg !25536
  %i.bo = or i8 %i.bn, %.sroa.0.0.i.ph.2.i, !dbg !25536
  br label %bb.s, !dbg !25537

bb.s:                                             ; preds = %bb.r, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.3.i
  %.sroa.0.0.i.ph.3.i = phi i8 [ %.sroa.0.0.i.ph.2.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.3.i ], [ %i.bo, %bb.r ] ; 3 uses
  %i.bp = add i64 %.sroa.0.0.i, 4, !dbg !25538
  %exitcond.4.not.i = icmp eq i64 %i.bf, %umax.i, !dbg !25516
  br i1 %exitcond.4.not.i, label %.thread45.i, label %bb.t, !dbg !25517

bb.t:                                             ; preds = %bb.s
  %i.bq = add i64 %.sroa.5.0.i, 5, !dbg !25518    ; 4 uses
  %i.br = icmp ult i64 %i.bf, %i.t, !dbg !25522
  br i1 %i.br, label %bb.u, label %.invoke.i, !dbg !25522, !prof !1593

bb.u:                                             ; preds = %bb.t
  %i.bs = mul i64 %i.q, %i.bf, !dbg !25526        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bs, !dbg !25527
  %i.bu = icmp ult i64 %i.bf, %i.ab, !dbg !25531
  br i1 %i.bu, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.4.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.4.i: ; preds = %bb.u
  br i1 %i.ad, label %bb.v, label %bb.w, !dbg !25532

bb.v:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.4.i
  %i.bv = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs, !dbg !25534
  %bcmp.i.i.4.i = call i32 @bcmp(ptr %i.bt, ptr %i.bw, i64 %i.q), !dbg !25535, !noalias !25496
  %i.bx = icmp eq i32 %bcmp.i.i.4.i, 0, !dbg !25535
  %i.by = select i1 %i.bx, i8 16, i8 0, !dbg !25536
  %i.bz = or i8 %i.by, %.sroa.0.0.i.ph.3.i, !dbg !25536
  br label %bb.w, !dbg !25537

bb.w:                                             ; preds = %bb.v, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.4.i
  %.sroa.0.0.i.ph.4.i = phi i8 [ %.sroa.0.0.i.ph.3.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.4.i ], [ %i.bz, %bb.v ] ; 3 uses
  %i.ca = add i64 %.sroa.0.0.i, 5, !dbg !25538
  %exitcond.5.not.i = icmp eq i64 %i.bq, %umax.i, !dbg !25516
  br i1 %exitcond.5.not.i, label %.thread45.i, label %bb.x, !dbg !25517

bb.x:                                             ; preds = %bb.w
  %i.cb = add i64 %.sroa.5.0.i, 6, !dbg !25518    ; 4 uses
  %i.cc = icmp ult i64 %i.bq, %i.t, !dbg !25522
  br i1 %i.cc, label %bb.y, label %.invoke.i, !dbg !25522, !prof !1593

bb.y:                                             ; preds = %bb.x
  %i.cd = mul i64 %i.q, %i.bq, !dbg !25526        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cd, !dbg !25527
  %i.cf = icmp ult i64 %i.bq, %i.ab, !dbg !25531
  br i1 %i.cf, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.5.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.5.i: ; preds = %bb.y
  br i1 %i.ad, label %bb.z, label %bb.aa, !dbg !25532

bb.z:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.5.i
  %i.cg = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cd, !dbg !25534
  %bcmp.i.i.5.i = call i32 @bcmp(ptr %i.ce, ptr %i.ch, i64 %i.q), !dbg !25535, !noalias !25496
  %i.ci = icmp eq i32 %bcmp.i.i.5.i, 0, !dbg !25535
  %i.cj = select i1 %i.ci, i8 32, i8 0, !dbg !25536
  %i.ck = or i8 %i.cj, %.sroa.0.0.i.ph.4.i, !dbg !25536
  br label %bb.aa, !dbg !25537

bb.aa:                                            ; preds = %bb.z, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.5.i
  %.sroa.0.0.i.ph.5.i = phi i8 [ %.sroa.0.0.i.ph.4.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.5.i ], [ %i.ck, %bb.z ] ; 3 uses
  %i.cl = add i64 %.sroa.0.0.i, 6, !dbg !25538
  %exitcond.6.not.i = icmp eq i64 %i.cb, %umax.i, !dbg !25516
  br i1 %exitcond.6.not.i, label %.thread45.i, label %bb.ab, !dbg !25517

bb.ab:                                            ; preds = %bb.aa
  %i.cm = add i64 %.sroa.5.0.i, 7, !dbg !25518    ; 6 uses
  %i.cn = icmp ult i64 %i.cb, %i.t, !dbg !25522
  br i1 %i.cn, label %bb.ac, label %.invoke.i, !dbg !25522, !prof !1593

bb.ac:                                            ; preds = %bb.ab
  %i.co = mul i64 %i.q, %i.cb, !dbg !25526        ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.co, !dbg !25527
  %i.cq = icmp ult i64 %i.cb, %i.ab, !dbg !25531
  br i1 %i.cq, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.6.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.6.i: ; preds = %bb.ac
  br i1 %i.ad, label %bb.ad, label %bb.ae, !dbg !25532

bb.ad:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.6.i
  %i.cr = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co, !dbg !25534
  %bcmp.i.i.6.i = call i32 @bcmp(ptr %i.cp, ptr %i.cs, i64 %i.q), !dbg !25535, !noalias !25496
  %i.ct = icmp eq i32 %bcmp.i.i.6.i, 0, !dbg !25535
  %i.cu = select i1 %i.ct, i8 64, i8 0, !dbg !25536
  %i.cv = or i8 %i.cu, %.sroa.0.0.i.ph.5.i, !dbg !25536
  br label %bb.ae, !dbg !25537

bb.ae:                                            ; preds = %bb.ad, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.6.i
  %.sroa.0.0.i.ph.6.i = phi i8 [ %.sroa.0.0.i.ph.5.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.6.i ], [ %i.cv, %bb.ad ] ; 3 uses
  %i.cw = add i64 %.sroa.0.0.i, 7, !dbg !25538
  %exitcond.7.not.i = icmp eq i64 %i.cm, %umax.i, !dbg !25516
  br i1 %exitcond.7.not.i, label %.thread45.i, label %bb.af, !dbg !25517

bb.af:                                            ; preds = %bb.ae
  %i.cx = icmp ult i64 %i.cm, %i.t, !dbg !25522
  br i1 %i.cx, label %bb.ag, label %.invoke.i, !dbg !25522, !prof !1593

bb.ag:                                            ; preds = %bb.af
  %i.cy = mul i64 %i.q, %i.cm, !dbg !25526        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cy, !dbg !25527
  %i.da = icmp ult i64 %i.cm, %i.ab, !dbg !25531
  br i1 %i.da, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i, label %.invoke.i, !dbg !25531, !prof !1593

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i: ; preds = %bb.ag
  br i1 %i.ad, label %bb.ah, label %.thread45.i, !dbg !25532

bb.ah:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i
  %i.db = load ptr, ptr %i.k, align 8, !dbg !25533, !noalias !25496, !noundef !1457
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy, !dbg !25534
  %bcmp.i.i.7.i = call i32 @bcmp(ptr %i.cz, ptr %i.dc, i64 %i.q), !dbg !25535, !noalias !25496
  %i.dd = icmp eq i32 %bcmp.i.i.7.i, 0, !dbg !25535
  %i.de = select i1 %i.dd, i8 -128, i8 0, !dbg !25536
  %i.df = or i8 %i.de, %.sroa.0.0.i.ph.6.i, !dbg !25536
  br label %.thread45.i, !dbg !25537

.thread45.i:                                      ; preds = %bb.ah, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i, %bb.ae, %bb.aa, %bb.w, %bb.s, %bb.o, %bb.k, %bb.g
  %.pn.i = phi i64 [ %i.cm, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i ], [ %i.cm, %bb.ah ], [ %umax.i, %bb.ae ], [ %umax.i, %bb.aa ], [ %umax.i, %bb.w ], [ %umax.i, %bb.s ], [ %umax.i, %bb.o ], [ %umax.i, %bb.k ], [ %.sroa.9.0.copyload.i, %bb.g ]
  %.sroa.5.182.i = phi i64 [ %i.o, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i ], [ %i.o, %bb.ah ], [ %umax.i, %bb.ae ], [ %umax.i, %bb.aa ], [ %umax.i, %bb.w ], [ %umax.i, %bb.s ], [ %umax.i, %bb.o ], [ %umax.i, %bb.k ], [ %umax.i, %bb.g ] ; 2 uses
  %.sroa.05.071.i = phi i8 [ %.sroa.0.0.i.ph.6.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i ], [ %i.df, %bb.ah ], [ %.sroa.0.0.i.ph.6.i, %bb.ae ], [ %.sroa.0.0.i.ph.5.i, %bb.aa ], [ %.sroa.0.0.i.ph.4.i, %bb.w ], [ %.sroa.0.0.i.ph.3.i, %bb.s ], [ %.sroa.0.0.i.ph.2.i, %bb.o ], [ %.sroa.0.0.i.ph.1.i, %bb.k ], [ %.sroa.0.0.i.ph.i, %bb.g ]
  %.sroa.0.164.i = phi i64 [ %i.n, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.7.i ], [ %i.n, %bb.ah ], [ %i.cw, %bb.ae ], [ %i.cl, %bb.aa ], [ %i.ca, %bb.w ], [ %i.bp, %bb.s ], [ %i.be, %bb.o ], [ %i.at, %bb.k ], [ %i.ai, %bb.g ] ; 2 uses
  %i.dg = icmp ult i64 %.pn.i, %.sroa.9.0.copyload.i, !dbg !25516
  %i.dh = load i64, ptr %i.l, align 8, !dbg !25539, !noalias !25494, !noundef !1457 ; 3 uses
  %i.di = icmp sgt i64 %i.dh, -1, !dbg !25540
  call void @llvm.assume(i1 %i.di), !dbg !25541
  %i.dj = load i64, ptr %i.b, align 8, !dbg !25542, !range !1670, !noalias !25494, !noundef !1457
  %i.dk = icmp eq i64 %i.dh, %i.dj, !dbg !25543
  br i1 %i.dk, label %bb.an, label %.thread.i, !dbg !25543

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %.thread.i, %bb.b
  %.sroa.0.165.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25544, !noalias !25494
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.aj unwind label %bb.ai, !dbg !25545, !noalias !25492

bb.ai:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.ak, !dbg !25546, !noalias !25492

bb.aj:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.au unwind label %bb.ao, !dbg !25547, !noalias !25492

bb.ak:                                            ; preds = %bb.ai
end_hunk_0

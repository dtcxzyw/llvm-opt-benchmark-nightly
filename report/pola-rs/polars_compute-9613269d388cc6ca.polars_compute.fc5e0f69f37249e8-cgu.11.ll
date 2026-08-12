inline.NumInlined: 2706
inline.NumDeleted: 1280
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB3n_NtNtNtBa_5array15fixed_size_list18FixedSizeListArrayNtB3p_13TotalEqKernel13tot_ne_kernel0E0EEB3r_:bb.a
  %exitcond.5.not.i = icmp eq i64 %i.bf, %umax.i, !dbg !24490
  br i1 %exitcond.5.not.i, label %.thread42.i, label %bb.h, !dbg !24497

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i
  %i.bl = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !24498, !noalias !24506, !noundef !13
  %i.bm = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !24511, !noalias !24506, !noundef !13 ; 2 uses
  %i.bn = mul i64 %i.bm, %i.bf, !dbg !24512
  %i.bo = add i64 %i.bn, %i.bl, !dbg !24498
  %i.bp = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.bo, i64 noundef %i.bm)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i unwind label %.loopexit.i, !dbg !24513, !noalias !24455

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i: ; preds = %bb.h
  %i.bq = add i64 %.sroa.8.0.i, 6, !dbg !24514    ; 2 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !24517, !noalias !24506, !nonnull !13, !align !672, !noundef !13
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i.5.i, i64 48, !dbg !24518
  %i.bs = load i64, ptr %i.br, align 8, !dbg !24518, !noalias !24506, !noundef !13
  %i.bt = icmp ult i64 %i.bp, %i.bs, !dbg !24525
  %i.bu = add i64 %.sroa.0.0.i, 6, !dbg !24526
  %i.bv = select i1 %i.bt, i8 32, i8 0, !dbg !24527
  %.sroa.013.0.5.i = or disjoint i8 %i.bv, %.sroa.013.0.4.i, !dbg !24527 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %i.bq, %umax.i, !dbg !24490
  br i1 %exitcond.6.not.i, label %.thread42.i, label %bb.i, !dbg !24497

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i
  %i.bw = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !24498, !noalias !24506, !noundef !13
  %i.bx = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !24511, !noalias !24506, !noundef !13 ; 2 uses
  %i.by = mul i64 %i.bx, %i.bq, !dbg !24512
  %i.bz = add i64 %i.by, %i.bw, !dbg !24498
  %i.ca = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.bz, i64 noundef %i.bx)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i unwind label %.loopexit.i, !dbg !24513, !noalias !24455

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i: ; preds = %bb.i
  %i.cb = add i64 %.sroa.8.0.i, 7, !dbg !24514    ; 3 uses
  %.val.i.i.6.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !24517, !noalias !24506, !nonnull !13, !align !672, !noundef !13
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.6.i, i64 48, !dbg !24518
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !24518, !noalias !24506, !noundef !13
  %i.ce = icmp ult i64 %i.ca, %i.cd, !dbg !24525
  %i.cf = add i64 %.sroa.0.0.i, 7, !dbg !24526
  %i.cg = select i1 %i.ce, i8 64, i8 0, !dbg !24527
  %.sroa.013.0.6.i = or i8 %i.cg, %.sroa.013.0.5.i, !dbg !24527 ; 2 uses
  %exitcond.7.not.i = icmp eq i64 %i.cb, %umax.i, !dbg !24490
  br i1 %exitcond.7.not.i, label %.thread42.i, label %bb.j, !dbg !24497

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i
  %i.ch = load i64, ptr %.sroa.6.0.copyload.i, align 8, !dbg !24498, !noalias !24506, !noundef !13
  %i.ci = load i64, ptr %.sroa.7.0.copyload.i, align 8, !dbg !24511, !noalias !24506, !noundef !13 ; 2 uses
  %i.cj = mul i64 %i.ci, %i.cb, !dbg !24512
  %i.ck = add i64 %i.cj, %i.ch, !dbg !24498
  %i.cl = invoke noundef i64 @_RNvNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils11count_zeros(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload.i, i64 noundef %.sroa.5.0.copyload.i, i64 noundef %i.ck, i64 noundef %i.ci)
          to label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i unwind label %.loopexit.i, !dbg !24513, !noalias !24455

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i: ; preds = %bb.j
  %i.cm = add i64 %.sroa.8.0.i, 8, !dbg !24514
  %.val.i.i.7.i = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !dbg !24517, !noalias !24506, !nonnull !13, !align !672, !noundef !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i.7.i, i64 48, !dbg !24518
  %i.co = load i64, ptr %i.cn, align 8, !dbg !24518, !noalias !24506, !noundef !13
  %i.cp = icmp ult i64 %i.cl, %i.co, !dbg !24525
  %i.cq = select i1 %i.cp, i8 -128, i8 0, !dbg !24527
  %.sroa.013.0.7.i = or i8 %i.cq, %.sroa.013.0.6.i, !dbg !24527
  %i.cr = icmp ult i64 %i.cb, %.sroa.12.0.copyload.i, !dbg !24490
  br label %.thread42.i, !dbg !24528

.thread42.i:                                      ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i
  %.pn.i = phi i1 [ %i.cr, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ false, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ]
  %.sroa.8.165.i = phi i64 [ %i.cm, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %umax.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ] ; 2 uses
  %.sroa.05.060.i = phi i8 [ %.sroa.013.0.7.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %.sroa.013.0.6.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %.sroa.013.0.5.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %.sroa.013.0.4.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %.sroa.013.0.3.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %.sroa.013.0.2.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %.sroa.013.0.1.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %i.s, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ]
  %.sroa.0.156.i = phi i64 [ %i.h, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.7.i ], [ %i.cf, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.6.i ], [ %i.bu, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.5.i ], [ %i.bj, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.4.i ], [ %i.ay, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.3.i ], [ %i.an, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.2.i ], [ %i.ac, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.1.i ], [ %i.r, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.i ] ; 2 uses
  %i.cs = load i64, ptr %i.f, align 8, !dbg !24528, !noalias !24455, !noundef !13 ; 3 uses
  %i.ct = icmp sgt i64 %i.cs, -1, !dbg !24531
  call void @llvm.assume(i1 %i.ct), !dbg !24533
  %i.cu = load i64, ptr %i.b, align 8, !dbg !24534, !range !11999, !noalias !24455, !noundef !13
  %i.cv = icmp eq i64 %i.cs, %i.cu, !dbg !24541
  br i1 %i.cv, label %bb.p, label %.thread.i, !dbg !24541

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i: ; preds = %.thread.i, %bb.b
  %.sroa.0.157.i = phi i64 [ %.sroa.0.156.i, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !24542, !noalias !24455
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.l unwind label %bb.k, !dbg !24543, !noalias !24442

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.m, !dbg !24545, !noalias !24442

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.q, !dbg !24547, !noalias !24442

bb.m:                                             ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24543, !noalias !24442
  unreachable, !dbg !24543

bb.n:                                             ; preds = %bb.p
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !24549, !alias.scope !24553, !noalias !24455 ; 3 uses
  %.pre83.i = load i64, ptr %i.b, align 8, !dbg !24556, !range !11999, !alias.scope !24553, !noalias !24455
  %i.cy = icmp eq i64 %.pre.i, %.pre83.i, !dbg !24559
  br i1 %i.cy, label %bb.o, label %.thread.i, !dbg !24559

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !24560, !noalias !24455

bb.p:                                             ; preds = %.thread42.i
  %spec.select.i.i26.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.12.0.copyload.i, i64 %.sroa.8.165.i), !dbg !24561
  %i.cz = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i26.i, i64 7), !dbg !24564
  %i.da = lshr i64 %i.cz, 3, !dbg !24566
  %i.db = add nuw nsw i64 %i.da, 1, !dbg !24567
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.db)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.i, !dbg !24569, !noalias !24455

.thread.i:                                        ; preds = %bb.o, %bb.n, %.thread42.i
  %i.dc = phi i64 [ %.pre.i, %bb.o ], [ %.pre.i, %bb.n ], [ %i.cs, %.thread42.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.g, align 8, !dbg !24571, !alias.scope !24553, !noalias !24455, !nonnull !13, !noundef !13
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc, !dbg !24576
  store i8 %.sroa.05.060.i, ptr %i.de, align 1, !dbg !24578, !noalias !24455
  %i.df = add i64 %i.dc, 1, !dbg !24580
  store i64 %i.df, ptr %i.f, align 8, !dbg !24580, !alias.scope !24553, !noalias !24455
  br i1 %.pn.i, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCINvNtNtCslFlrwjHoTci_14polars_compute11comparisons5array16agg_array_bitmapNCNvXB1t_NtNtNtCs8774dFTUdNv_12polars_arrow5array15fixed_size_list18FixedSizeListArrayNtB1v_13TotalEqKernel13tot_ne_kernel0E0ENtNtNtB9_6traits8iterator8Iterator4nextB1x_.exit.thread.i, !dbg !24581

bb.q:                                             ; preds = %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !24486

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
          to label %.body unwind label %bb.r, !dbg !24487, !noalias !24455

bb.r:                                             ; preds = %.loopexit.split-lp.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24582, !noalias !24455
  unreachable, !dbg !24582

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, %.loopexit.split-lp.i
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.u unwind label %bb.t, !dbg !24583

bb.s:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !24434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !24486, !noalias !24442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24584
  store i64 %.sroa.0.157.i, ptr %i.di, align 8, !dbg !24585, !alias.scope !24437, !noalias !24442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24487, !noalias !24455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !24586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24583
  ret void, !dbg !24587

bb.t:                                             ; preds = %.body
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24588
  unreachable, !dbg !24588

bb.u:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !24588
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtBa_5array17fixed_size_binary20FixedSizeBinaryArrayNtB3s_13TotalEqKernel13tot_eq_kernel0EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24589 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24590
  store i64 0, ptr %i.c, align 8, !dbg !24591
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !24591 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24591
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !24591 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24594), !dbg !24597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24599), !dbg !24597
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !24591
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !24601, !alias.scope !24606, !noalias !24594 ; 4 uses
  %.sroa.4.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24601
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx31.i, align 8, !dbg !24601, !alias.scope !24606, !noalias !24594 ; 4 uses
  %.sroa.5.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24601
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx32.i, align 8, !dbg !24601, !alias.scope !24606, !noalias !24594 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24601
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !24601, !alias.scope !24606, !noalias !24594 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24610, !noalias !24612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !24613, !noalias !24599
  store i64 0, ptr %i.c, align 8, !dbg !24618, !alias.scope !24594, !noalias !24599
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24618, !alias.scope !24594, !noalias !24599
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.0.copyload.i), !dbg !24620
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i.i, i64 7), !dbg !24626
  %i.e = lshr i64 %i.d, 3, !dbg !24629
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !24630
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !24637, !noalias !24612

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 40 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !24639

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ao, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dq, %bb.ao ], [ %i.dg, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !24643, !noalias !24599
  br label %.body, !dbg !24644

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.182.i, %.thread.i ], [ %.sroa.5.0.copyload.i, %.preheader.i ], !dbg !24601 ; 14 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !24645 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.5.0.i, i64 %.sroa.9.0.copyload.i), !dbg !24646 ; 9 uses
  %i.n = add i64 %.sroa.0.0.i, 8, !dbg !24646
  %i.o = add i64 %.sroa.5.0.i, 8, !dbg !24646
  %i.p = add i64 %.sroa.0.0.i, %umax.i, !dbg !24646
  %i.q = sub i64 %i.p, %.sroa.5.0.i, !dbg !24646  ; 8 uses
  %i.r = add i64 %.sroa.5.0.i, 7, !dbg !24646     ; 5 uses
  %exitcond.not.i.not.not = icmp ult i64 %.sroa.5.0.i, %.sroa.9.0.copyload.i, !dbg !24647
  br i1 %exitcond.not.i.not.not, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !24654

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.5.0.i, 1, !dbg !24655 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.t = load i64, ptr %i.f, align 8, !dbg !24658, !noalias !24675, !noundef !13 ; 19 uses
  %i.u = icmp eq i64 %i.t, 0, !dbg !24678
  br i1 %i.u, label %.invoke.i, label %bb.d, !dbg !24678

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.g, align 8, !dbg !24679, !noalias !24675, !noundef !13
  %i.w = udiv i64 %i.v, %i.t, !dbg !24678         ; 8 uses
  %i.x = icmp ult i64 %.sroa.5.0.i, %i.w, !dbg !24682
  br i1 %i.x, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, label %.invoke145.i, !dbg !24682, !prof !1364

.invoke.i:                                        ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !24683, !noalias !24612

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.invoke145.i:                                     ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
          to label %.cont146.i unwind label %.loopexit.split-lp.i, !dbg !24686, !noalias !24612

.cont146.i:                                       ; preds = %.invoke145.i
  unreachable

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.h, align 8, !dbg !24687, !noalias !24675, !noundef !13 ; 8 uses
  %i.z = mul i64 %i.t, %.sroa.5.0.i, !dbg !24694  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z, !dbg !24695
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.ab = load i64, ptr %i.i, align 8, !dbg !24704, !noalias !24675, !noundef !13 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !24707
  br i1 %i.ac, label %.invoke.i, label %bb.e, !dbg !24707

bb.e:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %i.ad = load i64, ptr %i.j, align 8, !dbg !24708, !noalias !24675, !noundef !13
  %i.ae = udiv i64 %i.ad, %i.ab, !dbg !24707      ; 8 uses
  %i.af = icmp ult i64 %.sroa.5.0.i, %i.ae, !dbg !24710
  br i1 %i.af, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i: ; preds = %bb.e
  %i.ag = icmp eq i64 %i.t, %i.ab, !dbg !24711    ; 8 uses
  br i1 %i.ag, label %bb.f, label %bb.g, !dbg !24711

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %i.ah = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z, !dbg !24721
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.aa, ptr %i.ai, i64 %i.t), !dbg !24725, !noalias !24675
  %i.aj = icmp eq i32 %bcmp.i.i.i, 0, !dbg !24725
  %i.ak = zext i1 %i.aj to i8, !dbg !24729
  br label %bb.g, !dbg !24730

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ 0, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.9.0.copyload.i, %i.s, !dbg !24647
  br i1 %exitcond.not.i.1, label %.thread45.i, label %bb.h, !dbg !24654

bb.h:                                             ; preds = %bb.g
  %i.al = add nuw i64 %.sroa.5.0.i, 2, !dbg !24655 ; 4 uses
  %i.am = icmp ult i64 %i.s, %i.w, !dbg !24682
  br i1 %i.am, label %bb.i, label %.invoke145.i, !dbg !24682, !prof !1364

bb.i:                                             ; preds = %bb.h
  %i.an = mul i64 %i.t, %i.s, !dbg !24694         ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.an, !dbg !24695
  %i.ap = icmp ult i64 %i.s, %i.ae, !dbg !24710
  br i1 %i.ap, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1: ; preds = %bb.i
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !24711

bb.j:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1
  %i.aq = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.an, !dbg !24721
  %bcmp.i.i.i.1 = call i32 @bcmp(ptr %i.ao, ptr %i.ar, i64 %i.t), !dbg !24725, !noalias !24675
  %i.as = icmp eq i32 %bcmp.i.i.i.1, 0, !dbg !24725
  %i.at = select i1 %i.as, i8 2, i8 0, !dbg !24729
  %i.au = or disjoint i8 %i.at, %.sroa.0.0.i.ph.i, !dbg !24729
  br label %bb.k, !dbg !24730

bb.k:                                             ; preds = %bb.j, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1
  %.sroa.0.0.i.ph.i.1 = phi i8 [ %.sroa.0.0.i.ph.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1 ], [ %i.au, %bb.j ] ; 3 uses
  %exitcond.not.i.2 = icmp eq i64 %.sroa.9.0.copyload.i, %i.al, !dbg !24647
  br i1 %exitcond.not.i.2, label %.thread45.i, label %bb.l, !dbg !24654

bb.l:                                             ; preds = %bb.k
  %i.av = add nuw i64 %.sroa.5.0.i, 3, !dbg !24655 ; 4 uses
  %i.aw = icmp ult i64 %i.al, %i.w, !dbg !24682
  br i1 %i.aw, label %bb.m, label %.invoke145.i, !dbg !24682, !prof !1364

bb.m:                                             ; preds = %bb.l
  %i.ax = mul i64 %i.t, %i.al, !dbg !24694        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ax, !dbg !24695
  %i.az = icmp ult i64 %i.al, %i.ae, !dbg !24710
  br i1 %i.az, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2: ; preds = %bb.m
  br i1 %i.ag, label %bb.n, label %bb.o, !dbg !24711

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2
  %i.ba = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax, !dbg !24721
  %bcmp.i.i.i.2 = call i32 @bcmp(ptr %i.ay, ptr %i.bb, i64 %i.t), !dbg !24725, !noalias !24675
  %i.bc = icmp eq i32 %bcmp.i.i.i.2, 0, !dbg !24725
  %i.bd = select i1 %i.bc, i8 4, i8 0, !dbg !24729
  %i.be = or i8 %i.bd, %.sroa.0.0.i.ph.i.1, !dbg !24729
  br label %bb.o, !dbg !24730

bb.o:                                             ; preds = %bb.n, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2
  %.sroa.0.0.i.ph.i.2 = phi i8 [ %.sroa.0.0.i.ph.i.1, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2 ], [ %i.be, %bb.n ] ; 3 uses
  %exitcond.not.i.3 = icmp eq i64 %.sroa.9.0.copyload.i, %i.av, !dbg !24647
  br i1 %exitcond.not.i.3, label %.thread45.i, label %bb.p, !dbg !24654

bb.p:                                             ; preds = %bb.o
  %i.bf = add nuw i64 %.sroa.5.0.i, 4, !dbg !24655 ; 4 uses
  %i.bg = icmp ult i64 %i.av, %i.w, !dbg !24682
  br i1 %i.bg, label %bb.q, label %.invoke145.i, !dbg !24682, !prof !1364

bb.q:                                             ; preds = %bb.p
  %i.bh = mul i64 %i.t, %i.av, !dbg !24694        ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bh, !dbg !24695
  %i.bj = icmp ult i64 %i.av, %i.ae, !dbg !24710
  br i1 %i.bj, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3: ; preds = %bb.q
  br i1 %i.ag, label %bb.r, label %bb.s, !dbg !24711

bb.r:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3
  %i.bk = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bh, !dbg !24721
  %bcmp.i.i.i.3 = call i32 @bcmp(ptr %i.bi, ptr %i.bl, i64 %i.t), !dbg !24725, !noalias !24675
  %i.bm = icmp eq i32 %bcmp.i.i.i.3, 0, !dbg !24725
  %i.bn = select i1 %i.bm, i8 8, i8 0, !dbg !24729
  %i.bo = or i8 %i.bn, %.sroa.0.0.i.ph.i.2, !dbg !24729
  br label %bb.s, !dbg !24730

bb.s:                                             ; preds = %bb.r, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3
  %.sroa.0.0.i.ph.i.3 = phi i8 [ %.sroa.0.0.i.ph.i.2, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3 ], [ %i.bo, %bb.r ] ; 3 uses
  %exitcond.not.i.4 = icmp eq i64 %.sroa.9.0.copyload.i, %i.bf, !dbg !24647
  br i1 %exitcond.not.i.4, label %.thread45.i, label %bb.t, !dbg !24654

bb.t:                                             ; preds = %bb.s
  %i.bp = add nuw i64 %.sroa.5.0.i, 5, !dbg !24655 ; 4 uses
  %i.bq = icmp ult i64 %i.bf, %i.w, !dbg !24682
  br i1 %i.bq, label %bb.u, label %.invoke145.i, !dbg !24682, !prof !1364

bb.u:                                             ; preds = %bb.t
  %i.br = mul i64 %i.t, %i.bf, !dbg !24694        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.br, !dbg !24695
  %i.bt = icmp ult i64 %i.bf, %i.ae, !dbg !24710
  br i1 %i.bt, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4: ; preds = %bb.u
  br i1 %i.ag, label %bb.v, label %bb.w, !dbg !24711

bb.v:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4
  %i.bu = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.br, !dbg !24721
  %bcmp.i.i.i.4 = call i32 @bcmp(ptr %i.bs, ptr %i.bv, i64 %i.t), !dbg !24725, !noalias !24675
  %i.bw = icmp eq i32 %bcmp.i.i.i.4, 0, !dbg !24725
  %i.bx = select i1 %i.bw, i8 16, i8 0, !dbg !24729
  %i.by = or i8 %i.bx, %.sroa.0.0.i.ph.i.3, !dbg !24729
  br label %bb.w, !dbg !24730

bb.w:                                             ; preds = %bb.v, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4
  %.sroa.0.0.i.ph.i.4 = phi i8 [ %.sroa.0.0.i.ph.i.3, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4 ], [ %i.by, %bb.v ] ; 3 uses
  %exitcond.not.i.5 = icmp eq i64 %.sroa.9.0.copyload.i, %i.bp, !dbg !24647
  br i1 %exitcond.not.i.5, label %.thread45.i, label %bb.x, !dbg !24654

bb.x:                                             ; preds = %bb.w
  %i.bz = add nuw i64 %.sroa.5.0.i, 6, !dbg !24655 ; 4 uses
  %i.ca = icmp ult i64 %i.bp, %i.w, !dbg !24682
  br i1 %i.ca, label %bb.y, label %.invoke145.i, !dbg !24682, !prof !1364

bb.y:                                             ; preds = %bb.x
  %i.cb = mul i64 %i.t, %i.bp, !dbg !24694        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cb, !dbg !24695
  %i.cd = icmp ult i64 %i.bp, %i.ae, !dbg !24710
  br i1 %i.cd, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5: ; preds = %bb.y
  br i1 %i.ag, label %bb.z, label %bb.aa, !dbg !24711

bb.z:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5
  %i.ce = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cb, !dbg !24721
  %bcmp.i.i.i.5 = call i32 @bcmp(ptr %i.cc, ptr %i.cf, i64 %i.t), !dbg !24725, !noalias !24675
  %i.cg = icmp eq i32 %bcmp.i.i.i.5, 0, !dbg !24725
  %i.ch = select i1 %i.cg, i8 32, i8 0, !dbg !24729
  %i.ci = or i8 %i.ch, %.sroa.0.0.i.ph.i.4, !dbg !24729
  br label %bb.aa, !dbg !24730

bb.aa:                                            ; preds = %bb.z, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5
  %.sroa.0.0.i.ph.i.5 = phi i8 [ %.sroa.0.0.i.ph.i.4, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5 ], [ %i.ci, %bb.z ] ; 3 uses
  %exitcond.not.i.6 = icmp eq i64 %.sroa.9.0.copyload.i, %i.bz, !dbg !24647
  br i1 %exitcond.not.i.6, label %.thread45.i, label %bb.ab, !dbg !24654

bb.ab:                                            ; preds = %bb.aa
  %i.cj = icmp ult i64 %i.bz, %i.w, !dbg !24682
  br i1 %i.cj, label %bb.ac, label %.invoke145.i, !dbg !24682, !prof !1364

bb.ac:                                            ; preds = %bb.ab
  %i.ck = mul i64 %i.t, %i.bz, !dbg !24694        ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck, !dbg !24695
  %i.cm = icmp ult i64 %i.bz, %i.ae, !dbg !24710
  br i1 %i.cm, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6: ; preds = %bb.ac
  br i1 %i.ag, label %bb.ad, label %bb.ae, !dbg !24711

bb.ad:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6
  %i.cn = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ck, !dbg !24721
  %bcmp.i.i.i.6 = call i32 @bcmp(ptr %i.cl, ptr %i.co, i64 %i.t), !dbg !24725, !noalias !24675
  %i.cp = icmp eq i32 %bcmp.i.i.i.6, 0, !dbg !24725
  %i.cq = select i1 %i.cp, i8 64, i8 0, !dbg !24729
  %i.cr = or i8 %i.cq, %.sroa.0.0.i.ph.i.5, !dbg !24729
  br label %bb.ae, !dbg !24730

bb.ae:                                            ; preds = %bb.ad, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6
  %.sroa.0.0.i.ph.i.6 = phi i8 [ %.sroa.0.0.i.ph.i.5, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6 ], [ %i.cr, %bb.ad ] ; 3 uses
  %exitcond.not.i.7 = icmp eq i64 %i.r, %umax.i, !dbg !24647
  br i1 %exitcond.not.i.7, label %.thread45.i, label %bb.af, !dbg !24654

bb.af:                                            ; preds = %bb.ae
  %i.cs = icmp ult i64 %i.r, %i.w, !dbg !24682
  br i1 %i.cs, label %bb.ag, label %.invoke145.i, !dbg !24682, !prof !1364

bb.ag:                                            ; preds = %bb.af
  %i.ct = mul i64 %i.t, %i.r, !dbg !24694         ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ct, !dbg !24695
  %i.cv = icmp ult i64 %i.r, %i.ae, !dbg !24710
  br i1 %i.cv, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7, label %.invoke145.i, !dbg !24710, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7: ; preds = %bb.ag
  br i1 %i.ag, label %bb.ah, label %.thread45.i.loopexit, !dbg !24711

bb.ah:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7
  %i.cw = load ptr, ptr %i.k, align 8, !dbg !24717, !noalias !24675, !noundef !13
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct, !dbg !24721
  %bcmp.i.i.i.7 = call i32 @bcmp(ptr %i.cu, ptr %i.cx, i64 %i.t), !dbg !24725, !noalias !24675
  %i.cy = icmp eq i32 %bcmp.i.i.i.7, 0, !dbg !24725
  %i.cz = select i1 %i.cy, i8 -128, i8 0, !dbg !24729
  %i.da = or i8 %i.cz, %.sroa.0.0.i.ph.i.6, !dbg !24729
  br label %.thread45.i.loopexit, !dbg !24730

.thread45.i.loopexit:                             ; preds = %bb.ah, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7
  %.sroa.0.0.i.ph.i.7 = phi i8 [ %.sroa.0.0.i.ph.i.6, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7 ], [ %i.da, %bb.ah ]
  %i.db = icmp ult i64 %i.r, %.sroa.9.0.copyload.i
  br label %.thread45.i

.thread45.i:                                      ; preds = %bb.g, %bb.k, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %.thread45.i.loopexit
  %.sroa.5.183.i21 = phi i1 [ %i.db, %.thread45.i.loopexit ], [ false, %bb.ae ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ]
  %.sroa.5.182.i = phi i64 [ %i.o, %.thread45.i.loopexit ], [ %umax.i, %bb.ae ], [ %umax.i, %bb.aa ], [ %umax.i, %bb.w ], [ %umax.i, %bb.s ], [ %umax.i, %bb.o ], [ %umax.i, %bb.k ], [ %umax.i, %bb.g ] ; 2 uses
  %.sroa.05.071.i = phi i8 [ %.sroa.0.0.i.ph.i.7, %.thread45.i.loopexit ], [ %.sroa.0.0.i.ph.i.6, %bb.ae ], [ %.sroa.0.0.i.ph.i.5, %bb.aa ], [ %.sroa.0.0.i.ph.i.4, %bb.w ], [ %.sroa.0.0.i.ph.i.3, %bb.s ], [ %.sroa.0.0.i.ph.i.2, %bb.o ], [ %.sroa.0.0.i.ph.i.1, %bb.k ], [ %.sroa.0.0.i.ph.i, %bb.g ]
  %.sroa.0.164.i = phi i64 [ %i.n, %.thread45.i.loopexit ], [ %i.q, %bb.ae ], [ %i.q, %bb.aa ], [ %i.q, %bb.w ], [ %i.q, %bb.s ], [ %i.q, %bb.o ], [ %i.q, %bb.k ], [ %i.q, %bb.g ] ; 2 uses
  %i.dc = load i64, ptr %i.l, align 8, !dbg !24731, !noalias !24612, !noundef !13 ; 3 uses
  %i.dd = icmp sgt i64 %i.dc, -1, !dbg !24734
  call void @llvm.assume(i1 %i.dd), !dbg !24736
  %i.de = load i64, ptr %i.b, align 8, !dbg !24737, !range !11999, !noalias !24612, !noundef !13
  %i.df = icmp eq i64 %i.dc, %i.de, !dbg !24744
  br i1 %i.df, label %bb.an, label %.thread.i, !dbg !24744

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %bb.b, %.thread.i
  %.sroa.0.165.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24745
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !24745, !noalias !24612
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.aj unwind label %bb.ai, !dbg !24746, !noalias !24599

bb.ai:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.ak, !dbg !24748, !noalias !24599

bb.aj:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.au unwind label %bb.ao, !dbg !24750, !noalias !24599

bb.ak:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24746, !noalias !24599
  unreachable, !dbg !24746

bb.al:                                            ; preds = %bb.an
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !24752, !alias.scope !24756, !noalias !24612 ; 3 uses
  %.pre119.i = load i64, ptr %i.b, align 8, !dbg !24759, !range !11999, !alias.scope !24756, !noalias !24612
  %i.di = icmp eq i64 %.pre.i, %.pre119.i, !dbg !24762
  br i1 %i.di, label %bb.am, label %.thread.i, !dbg !24762

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.i, !dbg !24763, !noalias !24612

bb.an:                                            ; preds = %.thread45.i
  %spec.select.i.i29.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.182.i), !dbg !24764
  %i.dj = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i29.i, i64 7), !dbg !24767
  %i.dk = lshr i64 %i.dj, 3, !dbg !24769
  %i.dl = add nuw nsw i64 %i.dk, 1, !dbg !24770
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dl)
          to label %bb.al unwind label %.loopexit.i, !dbg !24772, !noalias !24612

.thread.i:                                        ; preds = %bb.am, %bb.al, %.thread45.i
  %i.dm = phi i64 [ %.pre.i, %bb.am ], [ %.pre.i, %bb.al ], [ %i.dc, %.thread45.i ] ; 2 uses
  %i.dn = load ptr, ptr %i.m, align 8, !dbg !24774, !alias.scope !24756, !noalias !24612, !nonnull !13, !noundef !13
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dm, !dbg !24779
  store i8 %.sroa.05.071.i, ptr %i.do, align 1, !dbg !24781, !noalias !24612
  %i.dp = add i64 %i.dm, 1, !dbg !24783
  store i64 %i.dp, ptr %i.l, align 8, !dbg !24783, !alias.scope !24756, !noalias !24612
  br i1 %.sroa.5.183.i21, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_eq_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !24784

bb.ao:                                            ; preds = %bb.aj
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !24643

.loopexit.i:                                      ; preds = %bb.an, %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %.invoke145.i, %.invoke.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ar unwind label %bb.aq, !dbg !24785, !noalias !24612

bb.aq:                                            ; preds = %bb.ap
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body3 unwind label %bb.as, !dbg !24787, !noalias !24612

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.at, !dbg !24789

bb.as:                                            ; preds = %bb.aq
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24785, !noalias !24612
  unreachable, !dbg !24785

bb.at:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body3, !dbg !24791

.body3:                                           ; preds = %bb.aq, %bb.at
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24791, !noalias !24612
  unreachable, !dbg !24791

.body:                                            ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i, %bb.ar ], [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.aw unwind label %bb.av, !dbg !24792

bb.au:                                            ; preds = %bb.aj
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !24591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !24643, !noalias !24599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24793
  store i64 %.sroa.0.165.i, ptr %i.du, align 8, !dbg !24794, !alias.scope !24594, !noalias !24599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24644, !noalias !24612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !24795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24792
  ret void, !dbg !24796

bb.av:                                            ; preds = %.body
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24797
  unreachable, !dbg !24797

bb.aw:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !24797
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtBa_5array17fixed_size_binary20FixedSizeBinaryArrayNtB3s_13TotalEqKernel13tot_ne_kernel0EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24798 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24799
  store i64 0, ptr %i.c, align 8, !dbg !24800
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !24800 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24800
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !24800 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24803), !dbg !24806
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24808), !dbg !24806
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !24800
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !24810, !alias.scope !24815, !noalias !24803 ; 4 uses
  %.sroa.4.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !24810
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx31.i, align 8, !dbg !24810, !alias.scope !24815, !noalias !24803 ; 4 uses
  %.sroa.5.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !24810
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx32.i, align 8, !dbg !24810, !alias.scope !24815, !noalias !24803 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !24810
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !24810, !alias.scope !24815, !noalias !24803 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24819, !noalias !24821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !24822, !noalias !24808
  store i64 0, ptr %i.c, align 8, !dbg !24827, !alias.scope !24803, !noalias !24808
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24827, !alias.scope !24803, !noalias !24808
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.0.copyload.i), !dbg !24829
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i.i, i64 7), !dbg !24835
  %i.e = lshr i64 %i.d, 3, !dbg !24838
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !24839
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !24846, !noalias !24821

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 40 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !24848

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ao, %bb.ai
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.db, %bb.ao ], [ %i.cr, %bb.ai ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !24852, !noalias !24808
  br label %.body, !dbg !24853

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.182.i, %.thread.i ], [ %.sroa.5.0.copyload.i, %.preheader.i ], !dbg !24810 ; 14 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !24854 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.5.0.i, i64 %.sroa.9.0.copyload.i), !dbg !24855 ; 9 uses
  %i.n = add i64 %.sroa.0.0.i, 8, !dbg !24855
  %i.o = add i64 %.sroa.5.0.i, 8, !dbg !24855
  %i.p = add i64 %.sroa.0.0.i, %umax.i, !dbg !24855
  %i.q = sub i64 %i.p, %.sroa.5.0.i, !dbg !24855  ; 8 uses
  %i.r = add i64 %.sroa.5.0.i, 7, !dbg !24855     ; 5 uses
  %exitcond.not.i.not.not = icmp ult i64 %.sroa.5.0.i, %.sroa.9.0.copyload.i, !dbg !24856
  br i1 %exitcond.not.i.not.not, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_ne_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !24863

bb.c:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.5.0.i, 1, !dbg !24864 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.t = load i64, ptr %i.f, align 8, !dbg !24867, !noalias !24878, !noundef !13 ; 19 uses
  %i.u = icmp eq i64 %i.t, 0, !dbg !24881
  br i1 %i.u, label %.invoke.i, label %bb.d, !dbg !24881

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.g, align 8, !dbg !24882, !noalias !24878, !noundef !13
  %i.w = udiv i64 %i.v, %i.t, !dbg !24881         ; 8 uses
  %i.x = icmp ult i64 %.sroa.5.0.i, %i.w, !dbg !24884
  br i1 %i.x, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, label %.invoke145.i, !dbg !24884, !prof !1364

.invoke.i:                                        ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.cont.i unwind label %.loopexit.split-lp.i, !dbg !24885, !noalias !24821

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.invoke145.i:                                     ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.p, %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
          to label %.cont146.i unwind label %.loopexit.split-lp.i, !dbg !24888, !noalias !24821

.cont146.i:                                       ; preds = %.invoke145.i
  unreachable

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %i.h, align 8, !dbg !24889, !noalias !24878, !noundef !13 ; 8 uses
  %i.z = mul i64 %i.t, %.sroa.5.0.i, !dbg !24893  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z, !dbg !24894
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.ab = load i64, ptr %i.i, align 8, !dbg !24898, !noalias !24878, !noundef !13 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !24901
  br i1 %i.ac, label %.invoke.i, label %bb.e, !dbg !24901

bb.e:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %i.ad = load i64, ptr %i.j, align 8, !dbg !24902, !noalias !24878, !noundef !13
  %i.ae = udiv i64 %i.ad, %i.ab, !dbg !24901      ; 8 uses
  %i.af = icmp ult i64 %.sroa.5.0.i, %i.ae, !dbg !24904
  br i1 %i.af, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i: ; preds = %bb.e
  %i.ag = icmp eq i64 %i.t, %i.ab, !dbg !24905    ; 8 uses
  br i1 %i.ag, label %bb.f, label %bb.g, !dbg !24905

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %i.ah = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z, !dbg !24917
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.aa, ptr %i.ai, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0, !dbg !24921
  %i.aj = zext i1 %.not.i to i8, !dbg !24925
  br label %bb.g, !dbg !24926

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ 1, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.9.0.copyload.i, %i.s, !dbg !24856
  br i1 %exitcond.not.i.1, label %.thread45.i, label %bb.h, !dbg !24863

bb.h:                                             ; preds = %bb.g
  %i.ak = add nuw i64 %.sroa.5.0.i, 2, !dbg !24864 ; 4 uses
  %i.al = icmp ult i64 %i.s, %i.w, !dbg !24884
  br i1 %i.al, label %bb.i, label %.invoke145.i, !dbg !24884, !prof !1364

bb.i:                                             ; preds = %bb.h
  %i.am = mul i64 %i.t, %i.s, !dbg !24893         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.am, !dbg !24894
  %i.ao = icmp ult i64 %i.s, %i.ae, !dbg !24904
  br i1 %i.ao, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1: ; preds = %bb.i
  br i1 %i.ag, label %bb.j, label %bb.k, !dbg !24905

bb.j:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1
  %i.ap = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am, !dbg !24917
  %bcmp.i.i.i.1 = call i32 @bcmp(ptr %i.an, ptr %i.aq, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.1 = icmp eq i32 %bcmp.i.i.i.1, 0, !dbg !24921
  %i.ar = select i1 %.not.i.1, i8 0, i8 2, !dbg !24925
  br label %bb.k, !dbg !24926

bb.k:                                             ; preds = %bb.j, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1
  %.sroa.0.0.i.ph.i.1 = phi i8 [ 2, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.1 ], [ %i.ar, %bb.j ]
  %.sroa.013.0.i.1 = or disjoint i8 %.sroa.0.0.i.ph.i.1, %.sroa.0.0.i.ph.i, !dbg !24925 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %.sroa.9.0.copyload.i, %i.ak, !dbg !24856
  br i1 %exitcond.not.i.2, label %.thread45.i, label %bb.l, !dbg !24863

bb.l:                                             ; preds = %bb.k
  %i.as = add nuw i64 %.sroa.5.0.i, 3, !dbg !24864 ; 4 uses
  %i.at = icmp ult i64 %i.ak, %i.w, !dbg !24884
  br i1 %i.at, label %bb.m, label %.invoke145.i, !dbg !24884, !prof !1364

bb.m:                                             ; preds = %bb.l
  %i.au = mul i64 %i.t, %i.ak, !dbg !24893        ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au, !dbg !24894
  %i.aw = icmp ult i64 %i.ak, %i.ae, !dbg !24904
  br i1 %i.aw, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2: ; preds = %bb.m
  br i1 %i.ag, label %bb.n, label %bb.o, !dbg !24905

bb.n:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2
  %i.ax = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au, !dbg !24917
  %bcmp.i.i.i.2 = call i32 @bcmp(ptr %i.av, ptr %i.ay, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.2 = icmp eq i32 %bcmp.i.i.i.2, 0, !dbg !24921
  %i.az = select i1 %.not.i.2, i8 0, i8 4, !dbg !24925
  br label %bb.o, !dbg !24926

bb.o:                                             ; preds = %bb.n, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2
  %.sroa.0.0.i.ph.i.2 = phi i8 [ 4, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.2 ], [ %i.az, %bb.n ]
  %.sroa.013.0.i.2 = or disjoint i8 %.sroa.0.0.i.ph.i.2, %.sroa.013.0.i.1, !dbg !24925 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %.sroa.9.0.copyload.i, %i.as, !dbg !24856
  br i1 %exitcond.not.i.3, label %.thread45.i, label %bb.p, !dbg !24863

bb.p:                                             ; preds = %bb.o
  %i.ba = add nuw i64 %.sroa.5.0.i, 4, !dbg !24864 ; 4 uses
  %i.bb = icmp ult i64 %i.as, %i.w, !dbg !24884
  br i1 %i.bb, label %bb.q, label %.invoke145.i, !dbg !24884, !prof !1364

bb.q:                                             ; preds = %bb.p
  %i.bc = mul i64 %i.t, %i.as, !dbg !24893        ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc, !dbg !24894
  %i.be = icmp ult i64 %i.as, %i.ae, !dbg !24904
  br i1 %i.be, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3: ; preds = %bb.q
  br i1 %i.ag, label %bb.r, label %bb.s, !dbg !24905

bb.r:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3
  %i.bf = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc, !dbg !24917
  %bcmp.i.i.i.3 = call i32 @bcmp(ptr %i.bd, ptr %i.bg, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.3 = icmp eq i32 %bcmp.i.i.i.3, 0, !dbg !24921
  %i.bh = select i1 %.not.i.3, i8 0, i8 8, !dbg !24925
  br label %bb.s, !dbg !24926

bb.s:                                             ; preds = %bb.r, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3
  %.sroa.0.0.i.ph.i.3 = phi i8 [ 8, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.3 ], [ %i.bh, %bb.r ]
  %.sroa.013.0.i.3 = or disjoint i8 %.sroa.0.0.i.ph.i.3, %.sroa.013.0.i.2, !dbg !24925 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %.sroa.9.0.copyload.i, %i.ba, !dbg !24856
  br i1 %exitcond.not.i.4, label %.thread45.i, label %bb.t, !dbg !24863

bb.t:                                             ; preds = %bb.s
  %i.bi = add nuw i64 %.sroa.5.0.i, 5, !dbg !24864 ; 4 uses
  %i.bj = icmp ult i64 %i.ba, %i.w, !dbg !24884
  br i1 %i.bj, label %bb.u, label %.invoke145.i, !dbg !24884, !prof !1364

bb.u:                                             ; preds = %bb.t
  %i.bk = mul i64 %i.t, %i.ba, !dbg !24893        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bk, !dbg !24894
  %i.bm = icmp ult i64 %i.ba, %i.ae, !dbg !24904
  br i1 %i.bm, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4: ; preds = %bb.u
  br i1 %i.ag, label %bb.v, label %bb.w, !dbg !24905

bb.v:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4
  %i.bn = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk, !dbg !24917
  %bcmp.i.i.i.4 = call i32 @bcmp(ptr %i.bl, ptr %i.bo, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.4 = icmp eq i32 %bcmp.i.i.i.4, 0, !dbg !24921
  %i.bp = select i1 %.not.i.4, i8 0, i8 16, !dbg !24925
  br label %bb.w, !dbg !24926

bb.w:                                             ; preds = %bb.v, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4
  %.sroa.0.0.i.ph.i.4 = phi i8 [ 16, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.4 ], [ %i.bp, %bb.v ]
  %.sroa.013.0.i.4 = or disjoint i8 %.sroa.0.0.i.ph.i.4, %.sroa.013.0.i.3, !dbg !24925 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %.sroa.9.0.copyload.i, %i.bi, !dbg !24856
  br i1 %exitcond.not.i.5, label %.thread45.i, label %bb.x, !dbg !24863

bb.x:                                             ; preds = %bb.w
  %i.bq = add nuw i64 %.sroa.5.0.i, 6, !dbg !24864 ; 4 uses
  %i.br = icmp ult i64 %i.bi, %i.w, !dbg !24884
  br i1 %i.br, label %bb.y, label %.invoke145.i, !dbg !24884, !prof !1364

bb.y:                                             ; preds = %bb.x
  %i.bs = mul i64 %i.t, %i.bi, !dbg !24893        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bs, !dbg !24894
  %i.bu = icmp ult i64 %i.bi, %i.ae, !dbg !24904
  br i1 %i.bu, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5: ; preds = %bb.y
  br i1 %i.ag, label %bb.z, label %bb.aa, !dbg !24905

bb.z:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5
  %i.bv = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs, !dbg !24917
  %bcmp.i.i.i.5 = call i32 @bcmp(ptr %i.bt, ptr %i.bw, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.5 = icmp eq i32 %bcmp.i.i.i.5, 0, !dbg !24921
  %i.bx = select i1 %.not.i.5, i8 0, i8 32, !dbg !24925
  br label %bb.aa, !dbg !24926

bb.aa:                                            ; preds = %bb.z, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5
  %.sroa.0.0.i.ph.i.5 = phi i8 [ 32, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.5 ], [ %i.bx, %bb.z ]
  %.sroa.013.0.i.5 = or i8 %.sroa.0.0.i.ph.i.5, %.sroa.013.0.i.4, !dbg !24925 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %.sroa.9.0.copyload.i, %i.bq, !dbg !24856
  br i1 %exitcond.not.i.6, label %.thread45.i, label %bb.ab, !dbg !24863

bb.ab:                                            ; preds = %bb.aa
  %i.by = icmp ult i64 %i.bq, %i.w, !dbg !24884
  br i1 %i.by, label %bb.ac, label %.invoke145.i, !dbg !24884, !prof !1364

bb.ac:                                            ; preds = %bb.ab
  %i.bz = mul i64 %i.t, %i.bq, !dbg !24893        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bz, !dbg !24894
  %i.cb = icmp ult i64 %i.bq, %i.ae, !dbg !24904
  br i1 %i.cb, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6: ; preds = %bb.ac
  br i1 %i.ag, label %bb.ad, label %bb.ae, !dbg !24905

bb.ad:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6
  %i.cc = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz, !dbg !24917
  %bcmp.i.i.i.6 = call i32 @bcmp(ptr %i.ca, ptr %i.cd, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.6 = icmp eq i32 %bcmp.i.i.i.6, 0, !dbg !24921
  %i.ce = select i1 %.not.i.6, i8 0, i8 64, !dbg !24925
  br label %bb.ae, !dbg !24926

bb.ae:                                            ; preds = %bb.ad, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6
  %.sroa.0.0.i.ph.i.6 = phi i8 [ 64, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.6 ], [ %i.ce, %bb.ad ]
  %.sroa.013.0.i.6 = or i8 %.sroa.0.0.i.ph.i.6, %.sroa.013.0.i.5, !dbg !24925 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.r, %umax.i, !dbg !24856
  br i1 %exitcond.not.i.7, label %.thread45.i, label %bb.af, !dbg !24863

bb.af:                                            ; preds = %bb.ae
  %i.cf = icmp ult i64 %i.r, %i.w, !dbg !24884
  br i1 %i.cf, label %bb.ag, label %.invoke145.i, !dbg !24884, !prof !1364

bb.ag:                                            ; preds = %bb.af
  %i.cg = mul i64 %i.t, %i.r, !dbg !24893         ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cg, !dbg !24894
  %i.ci = icmp ult i64 %i.r, %i.ae, !dbg !24904
  br i1 %i.ci, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7, label %.invoke145.i, !dbg !24904, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7: ; preds = %bb.ag
  br i1 %i.ag, label %bb.ah, label %.thread45.i.loopexit, !dbg !24905

bb.ah:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7
  %i.cj = load ptr, ptr %i.k, align 8, !dbg !24913, !noalias !24878, !noundef !13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg, !dbg !24917
  %bcmp.i.i.i.7 = call i32 @bcmp(ptr %i.ch, ptr %i.ck, i64 %i.t), !dbg !24921, !noalias !24878
  %.not.i.7 = icmp eq i32 %bcmp.i.i.i.7, 0, !dbg !24921
  %i.cl = select i1 %.not.i.7, i8 0, i8 -128, !dbg !24925
  br label %.thread45.i.loopexit, !dbg !24926

.thread45.i.loopexit:                             ; preds = %bb.ah, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7
  %.sroa.0.0.i.ph.i.7 = phi i8 [ -128, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit2.i.i.i.7 ], [ %i.cl, %bb.ah ]
  %.sroa.013.0.i.7 = or i8 %.sroa.0.0.i.ph.i.7, %.sroa.013.0.i.6, !dbg !24925
  %i.cm = icmp ult i64 %i.r, %.sroa.9.0.copyload.i
  br label %.thread45.i

.thread45.i:                                      ; preds = %bb.g, %bb.k, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %.thread45.i.loopexit
  %.sroa.5.183.i21 = phi i1 [ %i.cm, %.thread45.i.loopexit ], [ false, %bb.ae ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ]
  %.sroa.5.182.i = phi i64 [ %i.o, %.thread45.i.loopexit ], [ %umax.i, %bb.ae ], [ %umax.i, %bb.aa ], [ %umax.i, %bb.w ], [ %umax.i, %bb.s ], [ %umax.i, %bb.o ], [ %umax.i, %bb.k ], [ %umax.i, %bb.g ] ; 2 uses
  %.sroa.05.071.i = phi i8 [ %.sroa.013.0.i.7, %.thread45.i.loopexit ], [ %.sroa.013.0.i.6, %bb.ae ], [ %.sroa.013.0.i.5, %bb.aa ], [ %.sroa.013.0.i.4, %bb.w ], [ %.sroa.013.0.i.3, %bb.s ], [ %.sroa.013.0.i.2, %bb.o ], [ %.sroa.013.0.i.1, %bb.k ], [ %.sroa.0.0.i.ph.i, %bb.g ]
  %.sroa.0.164.i = phi i64 [ %i.n, %.thread45.i.loopexit ], [ %i.q, %bb.ae ], [ %i.q, %bb.aa ], [ %i.q, %bb.w ], [ %i.q, %bb.s ], [ %i.q, %bb.o ], [ %i.q, %bb.k ], [ %i.q, %bb.g ] ; 2 uses
  %i.cn = load i64, ptr %i.l, align 8, !dbg !24927, !noalias !24821, !noundef !13 ; 3 uses
  %i.co = icmp sgt i64 %i.cn, -1, !dbg !24930
  call void @llvm.assume(i1 %i.co), !dbg !24932
  %i.cp = load i64, ptr %i.b, align 8, !dbg !24933, !range !11999, !noalias !24821, !noundef !13
  %i.cq = icmp eq i64 %i.cn, %i.cp, !dbg !24940
  br i1 %i.cq, label %bb.an, label %.thread.i, !dbg !24940

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_ne_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %bb.b, %.thread.i
  %.sroa.0.165.i = phi i64 [ %.sroa.0.164.i, %.thread.i ], [ %i.q, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !24941, !noalias !24821
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.aj unwind label %bb.ai, !dbg !24942, !noalias !24808

bb.ai:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_ne_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.ak, !dbg !24944, !noalias !24808

bb.aj:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_ne_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.au unwind label %bb.ao, !dbg !24946, !noalias !24808

bb.ak:                                            ; preds = %bb.ai
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24942, !noalias !24808
  unreachable, !dbg !24942

bb.al:                                            ; preds = %bb.an
  %.pre.i = load i64, ptr %i.l, align 8, !dbg !24948, !alias.scope !24952, !noalias !24821 ; 3 uses
  %.pre119.i = load i64, ptr %i.b, align 8, !dbg !24955, !range !11999, !alias.scope !24952, !noalias !24821
  %i.ct = icmp eq i64 %.pre.i, %.pre119.i, !dbg !24958
  br i1 %i.ct, label %bb.am, label %.thread.i, !dbg !24958

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.i, !dbg !24959, !noalias !24821

bb.an:                                            ; preds = %.thread45.i
  %spec.select.i.i29.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.182.i), !dbg !24960
  %i.cu = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i29.i, i64 7), !dbg !24963
  %i.cv = lshr i64 %i.cu, 3, !dbg !24965
  %i.cw = add nuw nsw i64 %i.cv, 1, !dbg !24966
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cw)
          to label %bb.al unwind label %.loopexit.i, !dbg !24968, !noalias !24821

.thread.i:                                        ; preds = %bb.am, %bb.al, %.thread45.i
  %i.cx = phi i64 [ %.pre.i, %bb.am ], [ %.pre.i, %bb.al ], [ %i.cn, %.thread45.i ] ; 2 uses
  %i.cy = load ptr, ptr %i.m, align 8, !dbg !24970, !alias.scope !24952, !noalias !24821, !nonnull !13, !noundef !13
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx, !dbg !24975
  store i8 %.sroa.05.071.i, ptr %i.cz, align 1, !dbg !24977, !noalias !24821
  %i.da = add i64 %i.cx, 1, !dbg !24979
  store i64 %i.da, ptr %i.l, align 8, !dbg !24979, !alias.scope !24952, !noalias !24821
  br i1 %.sroa.5.183.i21, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel13tot_ne_kernel0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !24980

bb.ao:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !24852

.loopexit.i:                                      ; preds = %bb.an, %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %.invoke145.i, %.invoke.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.ar unwind label %bb.aq, !dbg !24981, !noalias !24821

bb.aq:                                            ; preds = %bb.ap
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body3 unwind label %bb.as, !dbg !24983, !noalias !24821

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.at, !dbg !24985

bb.as:                                            ; preds = %bb.aq
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24981, !noalias !24821
  unreachable, !dbg !24981

bb.at:                                            ; preds = %bb.ar
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body3, !dbg !24987

.body3:                                           ; preds = %bb.aq, %bb.at
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24987, !noalias !24821
  unreachable, !dbg !24987

.body:                                            ; preds = %bb.ar, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i, %bb.ar ], [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.aw unwind label %bb.av, !dbg !24988

bb.au:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !24800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !24852, !noalias !24808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24989
  store i64 %.sroa.0.165.i, ptr %i.df, align 8, !dbg !24990, !alias.scope !24803, !noalias !24808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24853, !noalias !24821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !24991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !24988
  ret void, !dbg !24992

bb.av:                                            ; preds = %.body
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !24993
  unreachable, !dbg !24993

bb.aw:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !24993
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtBa_5array17fixed_size_binary20FixedSizeBinaryArrayNtB3s_13TotalEqKernel23tot_eq_kernel_broadcast0EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !24994 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !24995
  store i64 0, ptr %i.c, align 8, !dbg !24996
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !24996 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !24996
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !24996 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24999), !dbg !25002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25004), !dbg !25002
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !24996
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !25006, !alias.scope !25011, !noalias !24999 ; 4 uses
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25006
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx29.i, align 8, !dbg !25006, !alias.scope !25011, !noalias !24999 ; 10 uses
  %.sroa.5.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25006
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx30.i, align 8, !dbg !25006, !alias.scope !25011, !noalias !24999 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25006
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !25006, !alias.scope !25011, !noalias !24999 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25015, !noalias !25017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !25018, !noalias !25004
  store i64 0, ptr %i.c, align 8, !dbg !25023, !alias.scope !24999, !noalias !25004
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25023, !alias.scope !24999, !noalias !25004
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.0.copyload.i), !dbg !25025
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i.i, i64 7), !dbg !25031
  %i.e = lshr i64 %i.d, 3, !dbg !25034
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25035
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !25042, !noalias !25017

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !25044

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ah, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dh, %bb.ah ], [ %i.cx, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25048, !noalias !25004
  br label %.body, !dbg !25049

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.170.i, %.thread.i ], [ %.sroa.5.0.copyload.i, %.preheader.i ], !dbg !25006 ; 12 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.158.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !25050 ; 9 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.5.0.i, i64 %.sroa.9.0.copyload.i), !dbg !25051 ; 7 uses
  %i.l = add i64 %.sroa.0.0.i, 8, !dbg !25051     ; 2 uses
  %i.m = add i64 %.sroa.5.0.i, 8, !dbg !25051     ; 2 uses
  %exitcond.not.not.not.i = icmp ult i64 %.sroa.5.0.i, %.sroa.9.0.copyload.i, !dbg !25052
  br i1 %exitcond.not.not.not.i, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_eq_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !25059

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %.sroa.5.0.i, 1, !dbg !25060 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.o = load i64, ptr %i.f, align 8, !dbg !25063, !noalias !25074, !noundef !13 ; 19 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !25077
  br i1 %i.p, label %split.i, label %bb.d, !dbg !25077

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.g, align 8, !dbg !25078, !noalias !25074, !noundef !13
  %i.r = udiv i64 %i.q, %i.o, !dbg !25077         ; 8 uses
  %i.s = icmp ult i64 %.sroa.5.0.i, %i.r, !dbg !25080
  br i1 %i.s, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, label %bb.e, !dbg !25080, !prof !1364

split.i:                                          ; preds = %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !25077, !noalias !25017

.noexc.i:                                         ; preds = %split.i
  unreachable, !dbg !25077

bb.e:                                             ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !dbg !25081, !noalias !25017

.noexc25.i:                                       ; preds = %bb.e
  unreachable, !dbg !25081

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.t = load i64, ptr %i.h, align 8, !dbg !25082, !noalias !25074, !noundef !13
  %i.u = icmp eq i64 %i.o, %i.t, !dbg !25085      ; 8 uses
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !25085

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %i.v = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.w = mul i64 %i.o, %.sroa.5.0.i, !dbg !25093
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w, !dbg !25094
  %i.y = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.x, ptr nonnull %i.y, i64 %i.o), !dbg !25098, !noalias !25074
  %i.z = icmp eq i32 %bcmp.i.i.i, 0, !dbg !25098
  %i.aa = zext i1 %i.z to i8, !dbg !25102
  br label %bb.g, !dbg !25103

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ 0, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ab = add i64 %.sroa.0.0.i, 1, !dbg !25104
  %exitcond.1.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.n, !dbg !25052
  br i1 %exitcond.1.not.i, label %.thread43.i, label %bb.h, !dbg !25059

bb.h:                                             ; preds = %bb.g
  %i.ac = add nuw i64 %.sroa.5.0.i, 2, !dbg !25060 ; 3 uses
  %i.ad = icmp ult i64 %i.n, %i.r, !dbg !25080
  br i1 %i.ad, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i: ; preds = %bb.h
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !25085

bb.i:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i
  %i.ae = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.af = mul i64 %i.o, %i.n, !dbg !25093
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af, !dbg !25094
  %i.ah = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.1.i = call i32 @bcmp(ptr %i.ag, ptr nonnull %i.ah, i64 %i.o), !dbg !25098, !noalias !25074
  %i.ai = icmp eq i32 %bcmp.i.i.1.i, 0, !dbg !25098
  %i.aj = select i1 %i.ai, i8 2, i8 0, !dbg !25102
  %i.ak = or disjoint i8 %i.aj, %.sroa.0.0.i.ph.i, !dbg !25102
  br label %bb.j, !dbg !25103

bb.j:                                             ; preds = %bb.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i
  %.sroa.0.0.i.ph.1.i = phi i8 [ %.sroa.0.0.i.ph.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i ], [ %i.ak, %bb.i ] ; 3 uses
  %i.al = add i64 %.sroa.0.0.i, 2, !dbg !25104
  %exitcond.2.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.ac, !dbg !25052
  br i1 %exitcond.2.not.i, label %.thread43.i, label %bb.k, !dbg !25059

bb.k:                                             ; preds = %bb.j
  %i.am = add nuw i64 %.sroa.5.0.i, 3, !dbg !25060 ; 3 uses
  %i.an = icmp ult i64 %i.ac, %i.r, !dbg !25080
  br i1 %i.an, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i: ; preds = %bb.k
  br i1 %i.u, label %bb.l, label %bb.m, !dbg !25085

bb.l:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i
  %i.ao = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.ap = mul i64 %i.o, %i.ac, !dbg !25093
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap, !dbg !25094
  %i.ar = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.2.i = call i32 @bcmp(ptr %i.aq, ptr nonnull %i.ar, i64 %i.o), !dbg !25098, !noalias !25074
  %i.as = icmp eq i32 %bcmp.i.i.2.i, 0, !dbg !25098
  %i.at = select i1 %i.as, i8 4, i8 0, !dbg !25102
  %i.au = or i8 %i.at, %.sroa.0.0.i.ph.1.i, !dbg !25102
  br label %bb.m, !dbg !25103

bb.m:                                             ; preds = %bb.l, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i
  %.sroa.0.0.i.ph.2.i = phi i8 [ %.sroa.0.0.i.ph.1.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i ], [ %i.au, %bb.l ] ; 3 uses
  %i.av = add i64 %.sroa.0.0.i, 3, !dbg !25104
  %exitcond.3.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.am, !dbg !25052
  br i1 %exitcond.3.not.i, label %.thread43.i, label %bb.n, !dbg !25059

bb.n:                                             ; preds = %bb.m
  %i.aw = add nuw i64 %.sroa.5.0.i, 4, !dbg !25060 ; 3 uses
  %i.ax = icmp ult i64 %i.am, %i.r, !dbg !25080
  br i1 %i.ax, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i: ; preds = %bb.n
  br i1 %i.u, label %bb.o, label %bb.p, !dbg !25085

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i
  %i.ay = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.az = mul i64 %i.o, %i.am, !dbg !25093
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az, !dbg !25094
  %i.bb = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.3.i = call i32 @bcmp(ptr %i.ba, ptr nonnull %i.bb, i64 %i.o), !dbg !25098, !noalias !25074
  %i.bc = icmp eq i32 %bcmp.i.i.3.i, 0, !dbg !25098
  %i.bd = select i1 %i.bc, i8 8, i8 0, !dbg !25102
  %i.be = or i8 %i.bd, %.sroa.0.0.i.ph.2.i, !dbg !25102
  br label %bb.p, !dbg !25103

bb.p:                                             ; preds = %bb.o, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i
  %.sroa.0.0.i.ph.3.i = phi i8 [ %.sroa.0.0.i.ph.2.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i ], [ %i.be, %bb.o ] ; 3 uses
  %i.bf = add i64 %.sroa.0.0.i, 4, !dbg !25104
  %exitcond.4.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.aw, !dbg !25052
  br i1 %exitcond.4.not.i, label %.thread43.i, label %bb.q, !dbg !25059

bb.q:                                             ; preds = %bb.p
  %i.bg = add nuw i64 %.sroa.5.0.i, 5, !dbg !25060 ; 3 uses
  %i.bh = icmp ult i64 %i.aw, %i.r, !dbg !25080
  br i1 %i.bh, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i: ; preds = %bb.q
  br i1 %i.u, label %bb.r, label %bb.s, !dbg !25085

bb.r:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i
  %i.bi = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.bj = mul i64 %i.o, %i.aw, !dbg !25093
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj, !dbg !25094
  %i.bl = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.4.i = call i32 @bcmp(ptr %i.bk, ptr nonnull %i.bl, i64 %i.o), !dbg !25098, !noalias !25074
  %i.bm = icmp eq i32 %bcmp.i.i.4.i, 0, !dbg !25098
  %i.bn = select i1 %i.bm, i8 16, i8 0, !dbg !25102
  %i.bo = or i8 %i.bn, %.sroa.0.0.i.ph.3.i, !dbg !25102
  br label %bb.s, !dbg !25103

bb.s:                                             ; preds = %bb.r, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i
  %.sroa.0.0.i.ph.4.i = phi i8 [ %.sroa.0.0.i.ph.3.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i ], [ %i.bo, %bb.r ] ; 3 uses
  %i.bp = add i64 %.sroa.0.0.i, 5, !dbg !25104
  %exitcond.5.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.bg, !dbg !25052
  br i1 %exitcond.5.not.i, label %.thread43.i, label %bb.t, !dbg !25059

bb.t:                                             ; preds = %bb.s
  %i.bq = add nuw i64 %.sroa.5.0.i, 6, !dbg !25060 ; 3 uses
  %i.br = icmp ult i64 %i.bg, %i.r, !dbg !25080
  br i1 %i.br, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i: ; preds = %bb.t
  br i1 %i.u, label %bb.u, label %bb.v, !dbg !25085

bb.u:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i
  %i.bs = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.bt = mul i64 %i.o, %i.bg, !dbg !25093
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt, !dbg !25094
  %i.bv = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.5.i = call i32 @bcmp(ptr %i.bu, ptr nonnull %i.bv, i64 %i.o), !dbg !25098, !noalias !25074
  %i.bw = icmp eq i32 %bcmp.i.i.5.i, 0, !dbg !25098
  %i.bx = select i1 %i.bw, i8 32, i8 0, !dbg !25102
  %i.by = or i8 %i.bx, %.sroa.0.0.i.ph.4.i, !dbg !25102
  br label %bb.v, !dbg !25103

bb.v:                                             ; preds = %bb.u, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i
  %.sroa.0.0.i.ph.5.i = phi i8 [ %.sroa.0.0.i.ph.4.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i ], [ %i.by, %bb.u ] ; 3 uses
  %i.bz = add i64 %.sroa.0.0.i, 6, !dbg !25104
  %exitcond.6.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.bq, !dbg !25052
  br i1 %exitcond.6.not.i, label %.thread43.i, label %bb.w, !dbg !25059

bb.w:                                             ; preds = %bb.v
  %i.ca = add nuw i64 %.sroa.5.0.i, 7, !dbg !25060 ; 5 uses
  %i.cb = icmp ult i64 %i.bq, %i.r, !dbg !25080
  br i1 %i.cb, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i: ; preds = %bb.w
  br i1 %i.u, label %bb.x, label %bb.y, !dbg !25085

bb.x:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i
  %i.cc = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.cd = mul i64 %i.o, %i.bq, !dbg !25093
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd, !dbg !25094
  %i.cf = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.6.i = call i32 @bcmp(ptr %i.ce, ptr nonnull %i.cf, i64 %i.o), !dbg !25098, !noalias !25074
  %i.cg = icmp eq i32 %bcmp.i.i.6.i, 0, !dbg !25098
  %i.ch = select i1 %i.cg, i8 64, i8 0, !dbg !25102
  %i.ci = or i8 %i.ch, %.sroa.0.0.i.ph.5.i, !dbg !25102
  br label %bb.y, !dbg !25103

bb.y:                                             ; preds = %bb.x, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i
  %.sroa.0.0.i.ph.6.i = phi i8 [ %.sroa.0.0.i.ph.5.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i ], [ %i.ci, %bb.x ] ; 3 uses
  %i.cj = add i64 %.sroa.0.0.i, 7, !dbg !25104
  %exitcond.7.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.ca, !dbg !25052
  br i1 %exitcond.7.not.i, label %.thread43.i, label %bb.z, !dbg !25059

bb.z:                                             ; preds = %bb.y
  %i.ck = icmp ult i64 %i.ca, %i.r, !dbg !25080
  br i1 %i.ck, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i, label %bb.e, !dbg !25080, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i: ; preds = %bb.z
  br i1 %i.u, label %bb.aa, label %.thread43.i, !dbg !25085

bb.aa:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i
  %i.cl = load ptr, ptr %i.i, align 8, !dbg !25089, !noalias !25074, !noundef !13
  %i.cm = mul i64 %i.o, %i.ca, !dbg !25093
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm, !dbg !25094
  %i.co = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25082, !noalias !25074, !nonnull !13, !noundef !13
  %bcmp.i.i.7.i = call i32 @bcmp(ptr %i.cn, ptr nonnull %i.co, i64 %i.o), !dbg !25098, !noalias !25074
  %i.cp = icmp eq i32 %bcmp.i.i.7.i, 0, !dbg !25098
  %i.cq = select i1 %i.cp, i8 -128, i8 0, !dbg !25102
  %i.cr = or i8 %i.cq, %.sroa.0.0.i.ph.6.i, !dbg !25102
  br label %.thread43.i, !dbg !25103

.thread43.i:                                      ; preds = %bb.aa, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %.pn.i = phi i64 [ %i.ca, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i ], [ %i.ca, %bb.aa ], [ %.sroa.9.0.copyload.i, %bb.y ], [ %.sroa.9.0.copyload.i, %bb.v ], [ %.sroa.9.0.copyload.i, %bb.s ], [ %.sroa.9.0.copyload.i, %bb.p ], [ %.sroa.9.0.copyload.i, %bb.m ], [ %.sroa.9.0.copyload.i, %bb.j ], [ %.sroa.9.0.copyload.i, %bb.g ]
  %.sroa.5.170.i = phi i64 [ %i.m, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i ], [ %i.m, %bb.aa ], [ %umax.i, %bb.y ], [ %umax.i, %bb.v ], [ %umax.i, %bb.s ], [ %umax.i, %bb.p ], [ %umax.i, %bb.m ], [ %umax.i, %bb.j ], [ %umax.i, %bb.g ] ; 2 uses
  %.sroa.05.063.i = phi i8 [ %.sroa.0.0.i.ph.6.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i ], [ %i.cr, %bb.aa ], [ %.sroa.0.0.i.ph.6.i, %bb.y ], [ %.sroa.0.0.i.ph.5.i, %bb.v ], [ %.sroa.0.0.i.ph.4.i, %bb.s ], [ %.sroa.0.0.i.ph.3.i, %bb.p ], [ %.sroa.0.0.i.ph.2.i, %bb.m ], [ %.sroa.0.0.i.ph.1.i, %bb.j ], [ %.sroa.0.0.i.ph.i, %bb.g ]
  %.sroa.0.158.i = phi i64 [ %i.l, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i ], [ %i.l, %bb.aa ], [ %i.cj, %bb.y ], [ %i.bz, %bb.v ], [ %i.bp, %bb.s ], [ %i.bf, %bb.p ], [ %i.av, %bb.m ], [ %i.al, %bb.j ], [ %i.ab, %bb.g ] ; 2 uses
  %i.cs = icmp ult i64 %.pn.i, %.sroa.9.0.copyload.i, !dbg !25052
  %i.ct = load i64, ptr %i.j, align 8, !dbg !25105, !noalias !25017, !noundef !13 ; 3 uses
  %i.cu = icmp sgt i64 %i.ct, -1, !dbg !25108
  call void @llvm.assume(i1 %i.cu), !dbg !25110
  %i.cv = load i64, ptr %i.b, align 8, !dbg !25111, !range !11999, !noalias !25017, !noundef !13
  %i.cw = icmp eq i64 %i.ct, %i.cv, !dbg !25118
  br i1 %i.cw, label %bb.ag, label %.thread.i, !dbg !25118

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_eq_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %.thread.i, %bb.b
  %.sroa.0.159.i = phi i64 [ %.sroa.0.158.i, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25119, !noalias !25017
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ac unwind label %bb.ab, !dbg !25120, !noalias !25004

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_eq_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.ad, !dbg !25122, !noalias !25004

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_eq_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ak unwind label %bb.ah, !dbg !25124, !noalias !25004

bb.ad:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25120, !noalias !25004
  unreachable, !dbg !25120

bb.ae:                                            ; preds = %bb.ag
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !25126, !alias.scope !25130, !noalias !25017 ; 3 uses
  %.pre96.i = load i64, ptr %i.b, align 8, !dbg !25133, !range !11999, !alias.scope !25130, !noalias !25017
  %i.cz = icmp eq i64 %.pre.i, %.pre96.i, !dbg !25136
  br i1 %i.cz, label %bb.af, label %.thread.i, !dbg !25136

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.i, !dbg !25137, !noalias !25017

bb.ag:                                            ; preds = %.thread43.i
  %spec.select.i.i27.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.170.i), !dbg !25138
  %i.da = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i27.i, i64 7), !dbg !25141
  %i.db = lshr i64 %i.da, 3, !dbg !25143
  %i.dc = add nuw nsw i64 %i.db, 1, !dbg !25144
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.dc)
          to label %bb.ae unwind label %.loopexit.i, !dbg !25146, !noalias !25017

.thread.i:                                        ; preds = %bb.af, %bb.ae, %.thread43.i
  %i.dd = phi i64 [ %.pre.i, %bb.af ], [ %.pre.i, %bb.ae ], [ %i.ct, %.thread43.i ] ; 2 uses
  %i.de = load ptr, ptr %i.k, align 8, !dbg !25148, !alias.scope !25130, !noalias !25017, !nonnull !13, !noundef !13
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd, !dbg !25153
  store i8 %.sroa.05.063.i, ptr %i.df, align 1, !dbg !25155, !noalias !25017
  %i.dg = add i64 %i.dd, 1, !dbg !25157
  store i64 %i.dg, ptr %i.j, align 8, !dbg !25157, !alias.scope !25130, !noalias !25017
  br i1 %i.cs, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_eq_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !25158

bb.ah:                                            ; preds = %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !25048

.loopexit.i:                                      ; preds = %bb.ag, %bb.af
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.i:                             ; preds = %bb.e, %split.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.b) #35
          to label %.body unwind label %bb.aj, !dbg !25049, !noalias !25017

bb.aj:                                            ; preds = %bb.ai
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25159, !noalias !25017
  unreachable, !dbg !25159

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %lpad.phi.i, %bb.ai ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.am unwind label %bb.al, !dbg !25160

bb.ak:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !24996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25048, !noalias !25004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25161
  store i64 %.sroa.0.159.i, ptr %i.dj, align 8, !dbg !25162, !alias.scope !24999, !noalias !25004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25049, !noalias !25017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !25163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25160
  ret void, !dbg !25164

bb.al:                                            ; preds = %.body
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25165
  unreachable, !dbg !25165

bb.am:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !25165
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtBa_5array17fixed_size_binary20FixedSizeBinaryArrayNtB3s_13TotalEqKernel23tot_ne_kernel_broadcast0EEB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25166 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25167
  store i64 0, ptr %i.c, align 8, !dbg !25168
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25168 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25168
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25171), !dbg !25174
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25176), !dbg !25174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25168
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !25178, !alias.scope !25183, !noalias !25171 ; 4 uses
  %.sroa.4.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25178
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx29.i, align 8, !dbg !25178, !alias.scope !25183, !noalias !25171 ; 10 uses
  %.sroa.5.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25178
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx30.i, align 8, !dbg !25178, !alias.scope !25183, !noalias !25171 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25178
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !25178, !alias.scope !25183, !noalias !25171 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25187, !noalias !25189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !25190, !noalias !25176
  store i64 0, ptr %i.c, align 8, !dbg !25195, !alias.scope !25171, !noalias !25176
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25195, !alias.scope !25171, !noalias !25176
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.0.copyload.i), !dbg !25197
  %i.d = tail call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i.i, i64 7), !dbg !25203
  %i.e = lshr i64 %i.d, 3, !dbg !25206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25207
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.e)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !25214, !noalias !25189

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 40 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !25216

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ah, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %bb.ah ], [ %i.ch, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25220, !noalias !25176
  br label %.body, !dbg !25221

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.170.i, %.thread.i ], [ %.sroa.5.0.copyload.i, %.preheader.i ], !dbg !25178 ; 12 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.158.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !25222 ; 9 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.5.0.i, i64 %.sroa.9.0.copyload.i), !dbg !25223 ; 7 uses
  %i.l = add i64 %.sroa.0.0.i, 8, !dbg !25223
  %i.m = add i64 %.sroa.5.0.i, 8, !dbg !25223
  %exitcond.not.not.not.i = icmp ult i64 %.sroa.5.0.i, %.sroa.9.0.copyload.i, !dbg !25224
  br i1 %exitcond.not.not.not.i, label %bb.c, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !25231

bb.c:                                             ; preds = %bb.b
  %i.n = add nuw i64 %.sroa.5.0.i, 1, !dbg !25232 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.o = load i64, ptr %i.f, align 8, !dbg !25235, !noalias !25246, !noundef !13 ; 19 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !25249
  br i1 %i.p, label %split.i, label %bb.d, !dbg !25249

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.g, align 8, !dbg !25250, !noalias !25246, !noundef !13
  %i.r = udiv i64 %i.q, %i.o, !dbg !25249         ; 8 uses
  %i.s = icmp ult i64 %.sroa.5.0.i, %i.r, !dbg !25252
  br i1 %i.s, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i, label %bb.e, !dbg !25252, !prof !1364

split.i:                                          ; preds = %bb.c
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !dbg !25249, !noalias !25189

.noexc.i:                                         ; preds = %split.i
  unreachable, !dbg !25249

bb.e:                                             ; preds = %bb.z, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.d
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !dbg !25253, !noalias !25189

.noexc25.i:                                       ; preds = %bb.e
  unreachable, !dbg !25253

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.t = load i64, ptr %i.h, align 8, !dbg !25254, !noalias !25246, !noundef !13
  %i.u = icmp eq i64 %i.o, %i.t, !dbg !25257      ; 8 uses
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !25257

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %i.v = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.w = mul i64 %i.o, %.sroa.5.0.i, !dbg !25267
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w, !dbg !25268
  %i.y = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.x, ptr nonnull %i.y, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.i = icmp ne i32 %bcmp.i.i.i, 0, !dbg !25272
  %i.z = zext i1 %.not.i to i8, !dbg !25276
  br label %bb.g, !dbg !25277

bb.g:                                             ; preds = %bb.f, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i
  %.sroa.0.0.i.ph.i = phi i8 [ 1, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %i.aa = add i64 %.sroa.0.0.i, 1, !dbg !25278
  %exitcond.1.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.n, !dbg !25224
  br i1 %exitcond.1.not.i, label %.thread43.i, label %bb.h, !dbg !25231

bb.h:                                             ; preds = %bb.g
  %i.ab = add nuw i64 %.sroa.5.0.i, 2, !dbg !25232 ; 3 uses
  %i.ac = icmp ult i64 %i.n, %i.r, !dbg !25252
  br i1 %i.ac, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i: ; preds = %bb.h
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !25257

bb.i:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i
  %i.ad = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.ae = mul i64 %i.o, %i.n, !dbg !25267
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae, !dbg !25268
  %i.ag = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.1.i = call i32 @bcmp(ptr %i.af, ptr nonnull %i.ag, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.1.i = icmp eq i32 %bcmp.i.i.1.i, 0, !dbg !25272
  %i.ah = select i1 %.not.1.i, i8 0, i8 2, !dbg !25276
  br label %bb.j, !dbg !25277

bb.j:                                             ; preds = %bb.i, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i
  %.sroa.0.0.i.ph.1.i = phi i8 [ 2, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.1.i ], [ %i.ah, %bb.i ]
  %i.ai = add i64 %.sroa.0.0.i, 2, !dbg !25278
  %.sroa.013.0.1.i = or disjoint i8 %.sroa.0.0.i.ph.1.i, %.sroa.0.0.i.ph.i, !dbg !25276 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.ab, !dbg !25224
  br i1 %exitcond.2.not.i, label %.thread43.i, label %bb.k, !dbg !25231

bb.k:                                             ; preds = %bb.j
  %i.aj = add nuw i64 %.sroa.5.0.i, 3, !dbg !25232 ; 3 uses
  %i.ak = icmp ult i64 %i.ab, %i.r, !dbg !25252
  br i1 %i.ak, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i: ; preds = %bb.k
  br i1 %i.u, label %bb.l, label %bb.m, !dbg !25257

bb.l:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i
  %i.al = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.am = mul i64 %i.o, %i.ab, !dbg !25267
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am, !dbg !25268
  %i.ao = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.2.i = call i32 @bcmp(ptr %i.an, ptr nonnull %i.ao, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.2.i = icmp eq i32 %bcmp.i.i.2.i, 0, !dbg !25272
  %i.ap = select i1 %.not.2.i, i8 0, i8 4, !dbg !25276
  br label %bb.m, !dbg !25277

bb.m:                                             ; preds = %bb.l, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i
  %.sroa.0.0.i.ph.2.i = phi i8 [ 4, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.2.i ], [ %i.ap, %bb.l ]
  %i.aq = add i64 %.sroa.0.0.i, 3, !dbg !25278
  %.sroa.013.0.2.i = or disjoint i8 %.sroa.0.0.i.ph.2.i, %.sroa.013.0.1.i, !dbg !25276 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.aj, !dbg !25224
  br i1 %exitcond.3.not.i, label %.thread43.i, label %bb.n, !dbg !25231

bb.n:                                             ; preds = %bb.m
  %i.ar = add nuw i64 %.sroa.5.0.i, 4, !dbg !25232 ; 3 uses
  %i.as = icmp ult i64 %i.aj, %i.r, !dbg !25252
  br i1 %i.as, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i: ; preds = %bb.n
  br i1 %i.u, label %bb.o, label %bb.p, !dbg !25257

bb.o:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i
  %i.at = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.au = mul i64 %i.o, %i.aj, !dbg !25267
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au, !dbg !25268
  %i.aw = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.3.i = call i32 @bcmp(ptr %i.av, ptr nonnull %i.aw, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.3.i = icmp eq i32 %bcmp.i.i.3.i, 0, !dbg !25272
  %i.ax = select i1 %.not.3.i, i8 0, i8 8, !dbg !25276
  br label %bb.p, !dbg !25277

bb.p:                                             ; preds = %bb.o, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i
  %.sroa.0.0.i.ph.3.i = phi i8 [ 8, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.3.i ], [ %i.ax, %bb.o ]
  %i.ay = add i64 %.sroa.0.0.i, 4, !dbg !25278
  %.sroa.013.0.3.i = or disjoint i8 %.sroa.0.0.i.ph.3.i, %.sroa.013.0.2.i, !dbg !25276 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.ar, !dbg !25224
  br i1 %exitcond.4.not.i, label %.thread43.i, label %bb.q, !dbg !25231

bb.q:                                             ; preds = %bb.p
  %i.az = add nuw i64 %.sroa.5.0.i, 5, !dbg !25232 ; 3 uses
  %i.ba = icmp ult i64 %i.ar, %i.r, !dbg !25252
  br i1 %i.ba, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i: ; preds = %bb.q
  br i1 %i.u, label %bb.r, label %bb.s, !dbg !25257

bb.r:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i
  %i.bb = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.bc = mul i64 %i.o, %i.ar, !dbg !25267
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc, !dbg !25268
  %i.be = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.4.i = call i32 @bcmp(ptr %i.bd, ptr nonnull %i.be, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.4.i = icmp eq i32 %bcmp.i.i.4.i, 0, !dbg !25272
  %i.bf = select i1 %.not.4.i, i8 0, i8 16, !dbg !25276
  br label %bb.s, !dbg !25277

bb.s:                                             ; preds = %bb.r, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i
  %.sroa.0.0.i.ph.4.i = phi i8 [ 16, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.4.i ], [ %i.bf, %bb.r ]
  %i.bg = add i64 %.sroa.0.0.i, 5, !dbg !25278
  %.sroa.013.0.4.i = or disjoint i8 %.sroa.0.0.i.ph.4.i, %.sroa.013.0.3.i, !dbg !25276 ; 2 uses
  %exitcond.5.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.az, !dbg !25224
  br i1 %exitcond.5.not.i, label %.thread43.i, label %bb.t, !dbg !25231

bb.t:                                             ; preds = %bb.s
  %i.bh = add nuw i64 %.sroa.5.0.i, 6, !dbg !25232 ; 3 uses
  %i.bi = icmp ult i64 %i.az, %i.r, !dbg !25252
  br i1 %i.bi, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i: ; preds = %bb.t
  br i1 %i.u, label %bb.u, label %bb.v, !dbg !25257

bb.u:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i
  %i.bj = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.bk = mul i64 %i.o, %i.az, !dbg !25267
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk, !dbg !25268
  %i.bm = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.5.i = call i32 @bcmp(ptr %i.bl, ptr nonnull %i.bm, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.5.i = icmp eq i32 %bcmp.i.i.5.i, 0, !dbg !25272
  %i.bn = select i1 %.not.5.i, i8 0, i8 32, !dbg !25276
  br label %bb.v, !dbg !25277

bb.v:                                             ; preds = %bb.u, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i
  %.sroa.0.0.i.ph.5.i = phi i8 [ 32, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.5.i ], [ %i.bn, %bb.u ]
  %i.bo = add i64 %.sroa.0.0.i, 6, !dbg !25278
  %.sroa.013.0.5.i = or i8 %.sroa.0.0.i.ph.5.i, %.sroa.013.0.4.i, !dbg !25276 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.bh, !dbg !25224
  br i1 %exitcond.6.not.i, label %.thread43.i, label %bb.w, !dbg !25231

bb.w:                                             ; preds = %bb.v
  %i.bp = add nuw i64 %.sroa.5.0.i, 7, !dbg !25232 ; 3 uses
  %i.bq = icmp ult i64 %i.bh, %i.r, !dbg !25252
  br i1 %i.bq, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i: ; preds = %bb.w
  br i1 %i.u, label %bb.x, label %bb.y, !dbg !25257

bb.x:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i
  %i.br = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.bs = mul i64 %i.o, %i.bh, !dbg !25267
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs, !dbg !25268
  %i.bu = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.6.i = call i32 @bcmp(ptr %i.bt, ptr nonnull %i.bu, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.6.i = icmp eq i32 %bcmp.i.i.6.i, 0, !dbg !25272
  %i.bv = select i1 %.not.6.i, i8 0, i8 64, !dbg !25276
  br label %bb.y, !dbg !25277

bb.y:                                             ; preds = %bb.x, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i
  %.sroa.0.0.i.ph.6.i = phi i8 [ 64, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.6.i ], [ %i.bv, %bb.x ]
  %i.bw = add i64 %.sroa.0.0.i, 7, !dbg !25278
  %.sroa.013.0.6.i = or i8 %.sroa.0.0.i.ph.6.i, %.sroa.013.0.5.i, !dbg !25276 ; 2 uses
  %exitcond.7.not.i = icmp eq i64 %.sroa.9.0.copyload.i, %i.bp, !dbg !25224
  br i1 %exitcond.7.not.i, label %.thread43.i, label %bb.z, !dbg !25231

bb.z:                                             ; preds = %bb.y
  %i.bx = icmp ult i64 %i.bp, %i.r, !dbg !25252
  br i1 %i.bx, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i, label %bb.e, !dbg !25252, !prof !1364

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i: ; preds = %bb.z
  br i1 %i.u, label %bb.aa, label %.thread43.loopexit.i, !dbg !25257

bb.aa:                                            ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i
  %i.by = load ptr, ptr %i.i, align 8, !dbg !25263, !noalias !25246, !noundef !13
  %i.bz = mul i64 %i.o, %i.bp, !dbg !25267
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz, !dbg !25268
  %i.cb = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !dbg !25254, !noalias !25246, !nonnull !13, !noundef !13
  %bcmp.i.i.7.i = call i32 @bcmp(ptr %i.ca, ptr nonnull %i.cb, i64 %i.o), !dbg !25272, !noalias !25246
  %.not.7.i = icmp eq i32 %bcmp.i.i.7.i, 0, !dbg !25272
  %i.cc = select i1 %.not.7.i, i8 0, i8 -128, !dbg !25276
  br label %.thread43.loopexit.i, !dbg !25277

.thread43.loopexit.i:                             ; preds = %bb.aa, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i
  %.sroa.0.0.i.ph.7.i = phi i8 [ -128, %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray5value.exit.i.i.7.i ], [ %i.cc, %bb.aa ]
  %.sroa.013.0.7.i = or i8 %.sroa.0.0.i.ph.7.i, %.sroa.013.0.6.i, !dbg !25276
  br label %.thread43.i, !dbg !25279

.thread43.i:                                      ; preds = %.thread43.loopexit.i, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %.pn.i = phi i1 [ true, %.thread43.loopexit.i ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.g ]
  %.sroa.5.170.i = phi i64 [ %i.m, %.thread43.loopexit.i ], [ %umax.i, %bb.y ], [ %umax.i, %bb.v ], [ %umax.i, %bb.s ], [ %umax.i, %bb.p ], [ %umax.i, %bb.m ], [ %umax.i, %bb.j ], [ %umax.i, %bb.g ] ; 2 uses
  %.sroa.05.063.i = phi i8 [ %.sroa.013.0.7.i, %.thread43.loopexit.i ], [ %.sroa.013.0.6.i, %bb.y ], [ %.sroa.013.0.5.i, %bb.v ], [ %.sroa.013.0.4.i, %bb.s ], [ %.sroa.013.0.3.i, %bb.p ], [ %.sroa.013.0.2.i, %bb.m ], [ %.sroa.013.0.1.i, %bb.j ], [ %.sroa.0.0.i.ph.i, %bb.g ]
  %.sroa.0.158.i = phi i64 [ %i.l, %.thread43.loopexit.i ], [ %i.bw, %bb.y ], [ %i.bo, %bb.v ], [ %i.bg, %bb.s ], [ %i.ay, %bb.p ], [ %i.aq, %bb.m ], [ %i.ai, %bb.j ], [ %i.aa, %bb.g ] ; 2 uses
  %i.cd = load i64, ptr %i.j, align 8, !dbg !25279, !noalias !25189, !noundef !13 ; 3 uses
  %i.ce = icmp sgt i64 %i.cd, -1, !dbg !25282
  call void @llvm.assume(i1 %i.ce), !dbg !25284
  %i.cf = load i64, ptr %i.b, align 8, !dbg !25285, !range !11999, !noalias !25189, !noundef !13
  %i.cg = icmp eq i64 %i.cd, %i.cf, !dbg !25292
  br i1 %i.cg, label %bb.ag, label %.thread.i, !dbg !25292

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i: ; preds = %.thread.i, %bb.b
  %.sroa.0.159.i = phi i64 [ %.sroa.0.158.i, %.thread.i ], [ %.sroa.0.0.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25293
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !25293, !noalias !25189
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ac unwind label %bb.ab, !dbg !25294, !noalias !25176

bb.ab:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i unwind label %bb.ad, !dbg !25296, !noalias !25176

bb.ac:                                            ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.ak unwind label %bb.ah, !dbg !25298, !noalias !25176

bb.ad:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25294, !noalias !25176
  unreachable, !dbg !25294

bb.ae:                                            ; preds = %bb.ag
  %.pre.i = load i64, ptr %i.j, align 8, !dbg !25300, !alias.scope !25304, !noalias !25189 ; 3 uses
  %.pre96.i = load i64, ptr %i.b, align 8, !dbg !25307, !range !11999, !alias.scope !25304, !noalias !25189
  %i.cj = icmp eq i64 %.pre.i, %.pre96.i, !dbg !25310
  br i1 %i.cj, label %bb.af, label %.thread.i, !dbg !25310

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.thread.i unwind label %.loopexit.i, !dbg !25311, !noalias !25189

bb.ag:                                            ; preds = %.thread43.i
  %spec.select.i.i27.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.9.0.copyload.i, i64 %.sroa.5.170.i), !dbg !25312
  %i.ck = call i64 @llvm.uadd.sat.i64(i64 %spec.select.i.i27.i, i64 7), !dbg !25315
  %i.cl = lshr i64 %i.ck, 3, !dbg !25317
  %i.cm = add nuw nsw i64 %i.cl, 1, !dbg !25318
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.cm)
          to label %bb.ae unwind label %.loopexit.i, !dbg !25320, !noalias !25189

.thread.i:                                        ; preds = %bb.af, %bb.ae, %.thread43.i
  %i.cn = phi i64 [ %.pre.i, %bb.af ], [ %.pre.i, %bb.ae ], [ %i.cd, %.thread43.i ] ; 2 uses
  %i.co = load ptr, ptr %i.k, align 8, !dbg !25322, !alias.scope !25304, !noalias !25189, !nonnull !13, !noundef !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cn, !dbg !25327
  store i8 %.sroa.05.063.i, ptr %i.cp, align 1, !dbg !25329, !noalias !25189
  %i.cq = add i64 %i.cn, 1, !dbg !25331
  store i64 %i.cq, ptr %i.j, align 8, !dbg !25331, !alias.scope !25304, !noalias !25189
  br i1 %.pn.i, label %bb.b, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvXs0_NtNtCslFlrwjHoTci_14polars_compute11comparisons6binaryNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayNtB1y_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_.exit.i, !dbg !25332

bb.ah:                                            ; preds = %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, !dbg !25220

.loopexit.i:                                      ; preds = %bb.ag, %bb.af
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp.i:                             ; preds = %bb.e, %split.i, %bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(24) %i.b) #35
          to label %.body unwind label %bb.aj, !dbg !25221, !noalias !25189

bb.aj:                                            ; preds = %bb.ai
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25333, !noalias !25189
  unreachable, !dbg !25333

.body:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i, %bb.ai
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i ], [ %lpad.phi.i, %bb.ai ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslFlrwjHoTci_14polars_compute(ptr noalias noundef align 8 dereferenceable(32) %i.c) #35
          to label %bb.am unwind label %bb.al, !dbg !25334

bb.ak:                                            ; preds = %bb.ac
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !25168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25220, !noalias !25176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25335
  store i64 %.sroa.0.159.i, ptr %i.ct, align 8, !dbg !25336, !alias.scope !25171, !noalias !25176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25221, !noalias !25189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !25337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25334
  ret void, !dbg !25338

bb.al:                                            ; preds = %.body
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !25339
  unreachable, !dbg !25339

bb.am:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !25339
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB6_13MutableBitmapINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorbE9from_iterINtNtNtB1i_8adapters3map3MapINtNtNtB1k_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtBa_5array9primitive14PrimitiveArrayB3g_ENtB47_13TotalEqKernel23tot_ne_kernel_broadcast0EEB49_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !25340 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !25341
  store i64 0, ptr %i.c, align 8, !dbg !25342
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !25342 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25342
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !25342 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25345), !dbg !25348
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25350), !dbg !25348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25342
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !dbg !25352, !alias.scope !25357, !noalias !25345, !nonnull !13, !noundef !13 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25352
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !25352, !alias.scope !25357, !noalias !25345, !nonnull !13, !noundef !13 ; 9 uses
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25352
  %.sroa.10.0.copyload.i = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !25352, !alias.scope !25357, !noalias !25345 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25361, !noalias !25363
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 24, i1 false), !dbg !25364, !noalias !25350
  store i64 0, ptr %i.c, align 8, !dbg !25369, !alias.scope !25345, !noalias !25350
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !25369, !alias.scope !25345, !noalias !25350
  %i.d = ptrtoint ptr %.sroa.7.0.copyload.i to i64, !dbg !25371 ; 2 uses
  %i.e = ptrtoint ptr %.sroa.0.0.copyload.i to i64, !dbg !25371
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !25371
  %i.g = lshr exact i64 %i.f, 1, !dbg !25371
  %i.h = add nuw i64 %i.g, 7, !dbg !25387
  %i.i = lshr i64 %i.h, 3, !dbg !25390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false), !dbg !25391
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.i)
          to label %.preheader.i unwind label %.loopexit.split-lp.i, !dbg !25398, !noalias !25363

.preheader.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !25400

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslFlrwjHoTci_14polars_compute.exit.i.i: ; preds = %bb.ag, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.df, %bb.ag ], [ %i.cs, %bb.aa ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !25404, !noalias !25350
  br label %.body, !dbg !25405

bb.b:                                             ; preds = %.thread.i, %.preheader.i
  %.sroa.0.029.i = phi ptr [ %.sroa.0.13053.i, %.thread.i ], [ %.sroa.0.0.copyload.i, %.preheader.i ], !dbg !25352 ; 11 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.147.i, %.thread.i ], [ 0, %.preheader.i ], !dbg !25406 ; 9 uses
  %i.l = add i64 %.sroa.0.0.i, 8, !dbg !25407     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.029.i) ]
  %.not.i = icmp eq ptr %.sroa.0.029.i, %.sroa.7.0.copyload.i, !dbg !25408
  br i1 %.not.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread.i, label %bb.c, !dbg !25414

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 2, !dbg !25415 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i) ]
  %.val3.i.i = load i16, ptr %.sroa.0.029.i, align 2, !dbg !25417, !noalias !25423, !noundef !13 ; 3 uses
  %.val1.i.i.i = load i16, ptr %.sroa.10.0.copyload.i, align 2, !dbg !25426, !noalias !25423 ; 17 uses
  %i.n = and i16 %.val3.i.i, 32767, !dbg !25430
  %i.o = icmp samesign ugt i16 %i.n, 31744, !dbg !25430 ; 2 uses
  %i.p = and i16 %.val1.i.i.i, 32767, !dbg !25435
  %i.q = icmp samesign ugt i16 %i.p, 31744, !dbg !25435 ; 16 uses
  %brmerge.i.i.i.i.i = select i1 %i.o, i1 true, i1 %i.q, !dbg !25436
  %.mux.i.i.i.i.i = select i1 %i.o, i1 %i.q, i1 false, !dbg !25436
  br i1 %brmerge.i.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i, label %bb.d, !dbg !25436

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i16 %.val3.i.i, %.val1.i.i.i, !dbg !25437
  br i1 %i.r, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread41.i, label %bb.e, !dbg !25437

bb.e:                                             ; preds = %bb.d
  %i.s = or i16 %.val1.i.i.i, %.val3.i.i, !dbg !25441
  %i.t = and i16 %i.s, 32767, !dbg !25441
  %i.u = icmp eq i16 %i.t, 0, !dbg !25442
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i, !dbg !25437

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i: ; preds = %bb.e, %bb.c
  %.sroa.0.0.shrunk.i.i.i.i.i = phi i1 [ %.mux.i.i.i.i.i, %bb.c ], [ %i.u, %bb.e ]
  %not..sroa.0.0.shrunk.i.i.i.i.i = xor i1 %.sroa.0.0.shrunk.i.i.i.i.i, true, !dbg !25443
  %i.v = zext i1 %not..sroa.0.0.shrunk.i.i.i.i.i to i8, !dbg !25443
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread41.i, !dbg !25444

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread41.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i, %bb.d
  %.sroa.013.0.i = phi i8 [ %i.v, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.i ], [ 0, %bb.d ] ; 3 uses
  %i.w = add i64 %.sroa.0.0.i, 1, !dbg !25445
  %.not.1.i = icmp eq ptr %i.m, %.sroa.7.0.copyload.i, !dbg !25408
  br i1 %.not.1.i, label %.thread35.i, label %bb.f, !dbg !25414

bb.f:                                             ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENCNvXNtNtCslFlrwjHoTci_14polars_compute11comparisons6scalarINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayB1m_ENtB2d_13TotalEqKernel23tot_ne_kernel_broadcast0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread41.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.029.i, i64 4, !dbg !25415 ; 3 uses
  %.val3.i.1.i = load i16, ptr %i.m, align 2, !dbg !25417, !noalias !25423, !noundef !13 ; 3 uses
end_hunk_0

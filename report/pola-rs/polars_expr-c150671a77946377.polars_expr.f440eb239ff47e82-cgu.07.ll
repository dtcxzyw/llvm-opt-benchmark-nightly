Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filter16rolling_quantileRSNtNtCs2mZqlW55729_12polars_utils7float164pf16INtNtCsgZ49sUHp3tW_5alloc3vec3VecB1j_EECskY9G75ZWc4U_11polars_expr:bb.a
  call void @llvm.assume(i1 %i.le), !dbg !15658
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ik, !dbg !15659
  %i.lg = load i32, ptr %i.lf, align 4, !dbg !15660, !noalias !15395, !noundef !3509
  %i.lh = zext i32 %i.lg to i64, !dbg !15661
  store i64 %i.lh, ptr %i.dq, align 8, !dbg !15661, !alias.scope !15395
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !15653

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.ag, %bb.af, %bb.ad, %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread47.i, %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.i, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit24.i, %.thread.i, %.split70.i, %.thread37.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15415), !dbg !15662
  %i.li = load i64, ptr %i.ec, align 8, !dbg !15663, !alias.scope !15415, !noundef !3509 ; 2 uses
  %i.lj = icmp eq i64 %i.li, 0, !dbg !15664       ; 2 uses
  br i1 %i.lj, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, label %bb.ah, !dbg !15664

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit
  %.val.i45.pre = load ptr, ptr %i.dy, align 8, !dbg !15665, !alias.scope !15415
  br label %bb.ai, !dbg !15664

bb.ah:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit
  %i.lk = load i64, ptr %i.eb, align 8, !dbg !15666, !alias.scope !15415, !noundef !3509 ; 3 uses
  %i.ll = load i64, ptr %i.ea, align 8, !dbg !15667, !alias.scope !15415, !noundef !3509
  %i.lm = icmp eq i64 %i.lk, %i.ll, !dbg !15666
  %i.ln = load i64, ptr %i.eg, align 8, !alias.scope !15415 ; 2 uses
  %i.lo = icmp ne i64 %i.ln, 0
  %or.cond.i44 = select i1 %i.lm, i1 %i.lo, i1 false, !dbg !15668
  %.val.i45.pre135 = load ptr, ptr %i.dy, align 8, !dbg !15665, !alias.scope !15415 ; 4 uses
  br i1 %or.cond.i44, label %bb.aj, label %bb.ai, !dbg !15668

bb.ai:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, %bb.aj, %bb.ah
  %.val.i45 = phi ptr [ %.val.i45.pre, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge ], [ %.val.i45.pre135, %bb.aj ], [ %.val.i45.pre135, %bb.ah ], !dbg !15665 ; 2 uses
  %.val7.i = load ptr, ptr %i.dz, align 8, !dbg !15665, !alias.scope !15415, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val7.i, i64 8, !dbg !15669 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !dbg !15669, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.lr = getelementptr inbounds nuw i8, ptr %.val.i45, i64 8, !dbg !15670 ; 3 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !dbg !15670, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i45, i64 16, !dbg !15671 ; 2 uses
  %i.lu = load i64, ptr %i.lt, align 8, !dbg !15671, !noalias !15415, !noundef !3509
  %i.lv = icmp ult i64 %.sroa.012.0120, %i.lu, !dbg !15672
  call void @llvm.assume(i1 %i.lv), !dbg !15673
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.sroa.012.0120, !dbg !15674
  %i.lx = load i32, ptr %i.lw, align 4, !dbg !15675, !noalias !15415, !noundef !3509
  %i.ly = zext i32 %i.lx to i64, !dbg !15675
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.ly, !dbg !15676
  store i32 %i.io, ptr %i.lz, align 4, !dbg !15677, !noalias !15415
  %i.ma = load ptr, ptr %i.lr, align 8, !dbg !15678, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.mb = load ptr, ptr %i.lp, align 8, !dbg !15679, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.mc = getelementptr inbounds nuw i8, ptr %.val7.i, i64 16, !dbg !15680
  %i.md = load i64, ptr %i.mc, align 8, !dbg !15680, !noalias !15415, !noundef !3509
  %i.me = icmp ult i64 %.sroa.012.0120, %i.md, !dbg !15681
  call void @llvm.assume(i1 %i.me), !dbg !15682
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %.sroa.012.0120, !dbg !15683
  %i.mg = load i32, ptr %i.mf, align 4, !dbg !15684, !noalias !15415, !noundef !3509
  %i.mh = zext i32 %i.mg to i64, !dbg !15684
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mh, !dbg !15685
  store i32 %i.io, ptr %i.mi, align 4, !dbg !15686, !noalias !15415
  br i1 %i.lj, label %bb.ak, label %bb.al, !dbg !15687

bb.aj:                                            ; preds = %bb.ah
  %i.mj = add i64 %i.ln, -1, !dbg !15688
  store i64 %i.mj, ptr %i.eg, align 8, !dbg !15688, !alias.scope !15415
  %i.mk = getelementptr inbounds nuw i8, ptr %.val.i45.pre135, i64 8, !dbg !15689
  %i.ml = load ptr, ptr %i.mk, align 8, !dbg !15689, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.mm = getelementptr inbounds nuw i8, ptr %.val.i45.pre135, i64 16, !dbg !15690
  %i.mn = load i64, ptr %i.mm, align 8, !dbg !15690, !noalias !15415, !noundef !3509
  %i.mo = icmp ult i64 %i.lk, %i.mn, !dbg !15691
  call void @llvm.assume(i1 %i.mo), !dbg !15692
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.lk, !dbg !15693
  %i.mq = load i32, ptr %i.mp, align 4, !dbg !15694, !noalias !15415, !noundef !3509
  %i.mr = zext i32 %i.mq to i64, !dbg !15694
  store i64 %i.mr, ptr %i.eb, align 8, !dbg !15695, !alias.scope !15415
  br label %bb.ai, !dbg !15696

bb.ak:                                            ; preds = %bb.ai
  %i.ms = load i64, ptr %i.eb, align 8, !dbg !15697, !alias.scope !15415, !noundef !3509 ; 3 uses
  %i.mt = load i64, ptr %i.lt, align 8, !dbg !15698, !noalias !15415, !noundef !3509 ; 2 uses
  %i.mu = icmp ult i64 %i.ms, %i.mt, !dbg !15699
  br i1 %i.mu, label %bb.at, label %bb.au, !dbg !15699

bb.al:                                            ; preds = %bb.ai
  %.val10.i = load ptr, ptr %i.c, align 8, !dbg !15700, !alias.scope !15415, !nonnull !3509, !align !3738, !noundef !3509 ; 2 uses
  %.val11.i = load i64, ptr %i.ed, align 8, !dbg !15700, !alias.scope !15415, !noundef !3509 ; 2 uses
  %i.mv = icmp ult i64 %.sroa.012.0120, %.val11.i, !dbg !15701
  call void @llvm.assume(i1 %i.mv), !dbg !15702
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %.val10.i, i64 %.sroa.012.0120, !dbg !15703
  %i.mx = load i16, ptr %i.mw, align 2, !dbg !15704, !noalias !15415, !noundef !3509 ; 7 uses
  %i.my = load i64, ptr %i.eb, align 8, !dbg !15705, !alias.scope !15415, !noundef !3509 ; 3 uses
  %i.mz = icmp ult i64 %i.my, %.val11.i, !dbg !15706
  call void @llvm.assume(i1 %i.mz), !dbg !15707
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %.val10.i, i64 %i.my, !dbg !15708
  %i.nb = load i16, ptr %i.na, align 2, !dbg !15709, !noalias !15415, !noundef !3509 ; 7 uses
  %i.nc = trunc i64 %i.my to i32, !dbg !15710     ; 3 uses
  %i.nd = add i64 %i.li, 1, !dbg !15711           ; 5 uses
  store i64 %i.nd, ptr %i.ec, align 8, !dbg !15711, !alias.scope !15415
  %i.ne = and i16 %i.mx, 32767, !dbg !15712       ; 2 uses
  %i.nf = icmp samesign ugt i16 %i.ne, 31744, !dbg !15712
  %i.ng = and i16 %i.nb, 32767, !dbg !15713       ; 2 uses
  %i.nh = icmp samesign ugt i16 %i.ng, 31744, !dbg !15713 ; 2 uses
  br i1 %i.nf, label %.thread35.i, label %bb.am, !dbg !15714

bb.am:                                            ; preds = %bb.al
  br i1 %i.nh, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %bb.an, !dbg !15715

bb.an:                                            ; preds = %bb.am
  %.not.i16.i = icmp sgt i16 %i.nb, -1, !dbg !15716 ; 2 uses
  %i.ni = icmp sgt i16 %i.mx, -1, !dbg !15717
  br i1 %i.ni, label %bb.ao, label %bb.ap, !dbg !15717

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i16.i, label %.split64.i, label %bb.as, !dbg !15717

bb.ap:                                            ; preds = %bb.an
  br i1 %.not.i16.i, label %.split.i47, label %bb.aq, !dbg !15717

.split64.i:                                       ; preds = %bb.ao
  %.not69.i = icmp samesign ult i16 %i.mx, %i.nb, !dbg !15718
  br i1 %.not69.i, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %bb.ar, !dbg !15719

.split.i47:                                       ; preds = %bb.ap
  %i.nj = or i16 %i.nb, %i.ne, !dbg !15720
  %.not.i48 = icmp ne i16 %i.nj, 0, !dbg !15720
  %.old.old.i = icmp ult i32 %i.io, %i.nc
  %or.cond67.i = or i1 %.old.old.i, %.not.i48, !dbg !15719
  br i1 %or.cond67.i, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !15719

bb.aq:                                            ; preds = %bb.ap
  %.not68.i = icmp samesign ult i16 %i.nb, %i.mx, !dbg !15718
  br i1 %.not68.i, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %.thread.i46, !dbg !15719

.thread35.i:                                      ; preds = %bb.al
  %i.nk = icmp ult i32 %i.io, %i.nc
  %or.cond49.i = and i1 %i.nk, %i.nh, !dbg !15721
  br i1 %or.cond49.i, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !15721

bb.ar:                                            ; preds = %.split64.i
  %i.nl = icmp samesign uge i16 %i.nb, %i.mx, !dbg !15722
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i, !dbg !15723

bb.as:                                            ; preds = %bb.ao
  %i.nm = or i16 %i.ng, %i.mx, !dbg !15724
  %.not48.i = icmp eq i16 %i.nm, 0, !dbg !15724
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i, !dbg !15725

.thread.i46:                                      ; preds = %bb.aq
  %i.nn = icmp samesign uge i16 %i.mx, %i.nb, !dbg !15722
  br label %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i, !dbg !15726

_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i: ; preds = %.thread.i46, %bb.as, %bb.ar
  %.sroa.0.0.i19.i = phi i1 [ %i.nn, %.thread.i46 ], [ %i.nl, %bb.ar ], [ %.not48.i, %bb.as ], !dbg !15727
  %.old.i = icmp ult i32 %i.io, %i.nc
  %or.cond50.i = and i1 %.old.i, %.sroa.0.0.i19.i, !dbg !15721
  br i1 %or.cond50.i, label %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !15721

bb.at:                                            ; preds = %bb.ak
  %i.no = load ptr, ptr %i.lr, align 8, !dbg !15728, !noalias !15415, !nonnull !3509, !noundef !3509
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ms, !dbg !15729
  %i.nq = load i32, ptr %i.np, align 4, !dbg !15730, !noalias !15415, !noundef !3509
  %i.nr = zext i32 %i.nq to i64, !dbg !15731
  store i64 %i.nr, ptr %i.eb, align 8, !dbg !15731, !alias.scope !15415
  store i64 1, ptr %i.ec, align 8, !dbg !15732, !alias.scope !15415
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split, !dbg !15733

bb.au:                                            ; preds = %bb.ak
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ms, i64 noundef %i.mt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #50
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15699

.noexc:                                           ; preds = %bb.au
  unreachable, !dbg !15699

_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i: ; preds = %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i, %.thread35.i, %bb.aq, %.split.i47, %.split64.i, %bb.am
  %i.ns = load i64, ptr %i.eg, align 8, !dbg !15734, !alias.scope !15415, !noundef !3509
  %i.nt = add i64 %i.ns, 1, !dbg !15734
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split, !dbg !15734

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split: ; preds = %bb.at, %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i
  %.sink = phi i64 [ %i.nt, %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i ], [ 0, %bb.at ]
  %.ph = phi i64 [ %i.nd, %_RNvXs1l_NtCs2mZqlW55729_12polars_utils9total_ordNtNtB8_7float164pf16NtB6_8TotalOrd7tot_cmp.exit.thread.thread45.i ], [ 1, %bb.at ]
  store i64 %.sink, ptr %i.eg, align 8, !dbg !15735, !alias.scope !15415
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !15736

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i, %.thread35.i, %.split.i47
  %i.nu = phi i64 [ %i.nd, %.thread35.i ], [ %i.nd, %.split.i47 ], [ %i.nd, %_RNvXs4_NtCshdiYQzaKNQ1_4half8binary16NtB5_3f16NtNtCscgRAwXFJnXP_4core3cmp10PartialOrd11partial_cmp.exit22.i ], [ %.ph, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split ], !dbg !15737
  %i.nv = load i64, ptr %i.eh, align 8, !dbg !15736, !noalias !15416, !noundef !3509
  %i.nw = load i64, ptr %i.ei, align 8, !dbg !15738, !noalias !15416, !noundef !3509
  %i.nx = add i64 %i.nw, %i.nv, !dbg !15736       ; 6 uses
  %i.ny = load i64, ptr %i.dr, align 8, !dbg !15739, !noalias !15416, !noundef !3509
  %i.nz = sub i64 %i.ny, %i.nx, !dbg !15739
  %i.oa = add i64 %i.nz, %i.nu, !dbg !15740       ; 5 uses
  %i.ob = uitofp i64 %i.oa to double, !dbg !15741 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.av
    i8 1, label %bb.aw
    i8 2, label %bb.ax
    i8 3, label %bb.ay
    i8 4, label %bb.az
    i8 5, label %bb.ba
  ], !dbg !15742

default.unreachable:                              ; preds = %bb.by, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  unreachable

bb.av:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.oc = fadd nnan ninf double %i.ob, -1.000000e+00, !dbg !15743
  %i.od = fmul double %6, %i.oc, !dbg !15744
  %i.oe = call double @llvm.round.f64(double %i.od), !dbg !15745
  %i.of = call i64 @llvm.fptoui.sat.i64.f64(double %i.oe), !dbg !15744
  %i.og = add i64 %i.oa, -1, !dbg !15746
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.og, i64 %i.of), !dbg !15747
  br label %.invoke, !dbg !15748

bb.aw:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.oh = fadd nnan ninf double %i.ob, -1.000000e+00, !dbg !15749
  %i.oi = fmul double %6, %i.oh, !dbg !15750
  %i.oj = call double @llvm.floor.f64(double %i.oi), !dbg !15751
  %i.ok = call i64 @llvm.fptoui.sat.i64.f64(double %i.oj), !dbg !15750
  %i.ol = add i64 %i.oa, -1, !dbg !15752
  %.sroa.0.0.i37.i = call noundef i64 @llvm.umin.i64(i64 %i.ol, i64 %i.ok), !dbg !15753
  br label %.invoke, !dbg !15754

bb.ax:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.om = fadd nnan ninf double %i.ob, -1.000000e+00, !dbg !15755
  %i.on = fmul double %6, %i.om, !dbg !15756
  %i.oo = call double @llvm.ceil.f64(double %i.on), !dbg !15757
  %i.op = call i64 @llvm.fptoui.sat.i64.f64(double %i.oo), !dbg !15756
  %i.oq = add i64 %i.oa, -1, !dbg !15758
  %.sroa.0.0.i38.i = call noundef i64 @llvm.umin.i64(i64 %i.oq, i64 %i.op), !dbg !15759
  br label %.invoke, !dbg !15760

bb.ay:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.or = fadd nnan ninf double %i.ob, -1.000000e+00, !dbg !15761
  %i.os = fmul double %6, %i.or, !dbg !15762      ; 2 uses
  %i.ot = call double @llvm.floor.f64(double %i.os), !dbg !15763
  %i.ou = call i64 @llvm.fptoui.sat.i64.f64(double %i.ot), !dbg !15762
  %i.ov = add i64 %i.oa, -1, !dbg !15764
  %.sroa.0.0.i39.i = call noundef i64 @llvm.umin.i64(i64 %i.ov, i64 %i.ou), !dbg !15765 ; 2 uses
  %i.ow = call double @llvm.ceil.f64(double %i.os), !dbg !15766
  %i.ox = call i64 @llvm.fptoui.sat.i64.f64(double %i.ow), !dbg !15767 ; 2 uses
  %i.oy = add i64 %.sroa.0.0.i39.i, %i.nx, !dbg !15768
  %i.oz = invoke fastcc noundef i16 @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.oy)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15768 ; 2 uses

.noexc54:                                         ; preds = %bb.ay
  %i.pa = icmp eq i64 %i.ox, %.sroa.0.0.i39.i, !dbg !15769
  br i1 %i.pa, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.bb, !dbg !15769

bb.az:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.pb = fadd nnan ninf double %i.ob, -1.000000e+00, !dbg !15770
  %i.pc = fmul double %6, %i.pb, !dbg !15770      ; 3 uses
  %i.pd = call double @llvm.floor.f64(double %i.pc), !dbg !15771
  %i.pe = call i64 @llvm.fptoui.sat.i64.f64(double %i.pd), !dbg !15772 ; 3 uses
  %i.pf = call double @llvm.ceil.f64(double %i.pc), !dbg !15773
  %i.pg = call i64 @llvm.fptoui.sat.i64.f64(double %i.pf), !dbg !15774 ; 2 uses
  %i.ph = add i64 %i.pe, %i.nx, !dbg !15775
  %i.pi = invoke fastcc noundef i16 @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.ph)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15775 ; 2 uses

.noexc55:                                         ; preds = %bb.az
  %i.pj = icmp eq i64 %i.pe, %i.pg, !dbg !15776
  br i1 %i.pj, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.bc, !dbg !15776

bb.ba:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16E8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.pk = fmul double %6, %i.ob, !dbg !15777
  %i.pl = call double @llvm.ceil.f64(double %i.pk), !dbg !15778
  %i.pm = fadd double %i.pl, -1.000000e+00, !dbg !15779
  %i.pn = call nsz double @llvm.maximumnum.f64(double %i.pm, double 0.000000e+00), !dbg !15780
  %i.po = call i64 @llvm.fptoui.sat.i64.f64(double %i.pn), !dbg !15779
  br label %.invoke, !dbg !15781

.invoke:                                          ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ba
  %.sroa.0.0.i.i.sink = phi i64 [ %.sroa.0.0.i.i, %bb.av ], [ %.sroa.0.0.i37.i, %bb.aw ], [ %.sroa.0.0.i38.i, %bb.ax ], [ %i.po, %bb.ba ]
  %i.pp = add i64 %.sroa.0.0.i.i.sink, %i.nx, !dbg !15782
  %i.pq = invoke fastcc noundef i16 @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.pp)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15782

bb.bb:                                            ; preds = %.noexc54
  %i.pr = add i64 %i.ox, %i.nx, !dbg !15783
  %i.ps = invoke fastcc noundef i16 @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.pr)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15784

.noexc57:                                         ; preds = %bb.bb
  %i.pt = invoke noundef i16 @_RNvXsg_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_12FinishLinear15finish_midpointCskY9G75ZWc4U_11polars_expr(i16 noundef %i.oz, i16 noundef %i.ps)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15785

bb.bc:                                            ; preds = %.noexc55
  %i.pu = add i64 %i.pg, %i.nx, !dbg !15786
  %i.pv = invoke fastcc noundef i16 @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.pu)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15787

.noexc59:                                         ; preds = %bb.bc
  %i.pw = uitofp i64 %i.pe to double, !dbg !15788
  %i.px = fsub double %i.pc, %i.pw, !dbg !15789
  %i.py = invoke noundef i16 @_RNvXsg_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_12FinishLinear6finishCskY9G75ZWc4U_11polars_expr(double noundef %i.px, i16 noundef %i.pi, i16 noundef %i.pv)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15790

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke, %.noexc55, %.noexc54, %.noexc57, %.noexc59
  %.sroa.0.0.i50 = phi i16 [ %i.pi, %.noexc55 ], [ %i.oz, %.noexc54 ], [ %i.pt, %.noexc57 ], [ %i.py, %.noexc59 ], [ %i.pq, %.invoke ], !dbg !15782
  %i.pz = load i64, ptr %i.ej, align 8, !dbg !15791, !alias.scope !15422, !noundef !3509 ; 3 uses
  %i.qa = load i64, ptr %i.e, align 8, !dbg !15792, !range !3583, !alias.scope !15422, !noundef !3509
  %i.qb = icmp eq i64 %i.pz, %i.qa, !dbg !15793
  br i1 %i.qb, label %bb.bd, label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_8PushableB1e_E4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !15793

bb.bd:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_8PushableB1e_E4pushCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15794

_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7float164pf16EINtB4_8PushableB1e_E4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bd, %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit
  %i.qc = load ptr, ptr %i.ek, align 8, !dbg !15795, !alias.scope !15422, !nonnull !3509, !noundef !3509
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.qc, i64 %i.pz, !dbg !15796
  store i16 %.sroa.0.0.i50, ptr %i.qd, align 2, !dbg !15797
  %i.qe = add i64 %i.pz, 1, !dbg !15798
  store i64 %i.qe, ptr %i.ej, align 8, !dbg !15798, !alias.scope !15422
  %exitcond134.not = icmp eq i64 %i.ib, %.val, !dbg !15557
  br i1 %exitcond134.not, label %._crit_edge, label %.lr.ph121, !dbg !15558

bb.be:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15561
  br label %.loopexit111, !dbg !15799

.body:                                            ; preds = %bb.bf, %bb.m, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.b ], [ %i.qf, %bb.bf ], [ %i.em, %bb.m ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #52
          to label %.body64 unwind label %bb.cj, !dbg !15800

bb.bf:                                            ; preds = %bb.n
  %i.qf = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !15445
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bh unwind label %bb.bg, !dbg !15801

bb.bg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body64 unwind label %bb.bi, !dbg !15802

bb.bh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit66 unwind label %bb.bj, !dbg !15803

bb.bi:                                            ; preds = %bb.bg
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15801
  unreachable, !dbg !15801

.body64:                                          ; preds = %bb.bj, %bb.bg, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.qi, %bb.bj ], [ %i.qg, %bb.bg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.h) #52
          to label %.body68 unwind label %bb.cj, !dbg !15804

bb.bj:                                            ; preds = %bb.bh
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %.body64

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit66: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15800
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bl unwind label %bb.bk, !dbg !15805

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit66
  %i.qj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body68 unwind label %bb.bm, !dbg !15806

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit66
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bn, !dbg !15807

bb.bm:                                            ; preds = %bb.bk
  %i.qk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15805
  unreachable, !dbg !15805

.body68:                                          ; preds = %bb.bn, %bb.bk, %.body64
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body64 ], [ %i.ql, %bb.bn ], [ %i.qj, %bb.bk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %.body72 unwind label %bb.cj, !dbg !15808

bb.bn:                                            ; preds = %bb.bl
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %.body68

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !15804
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bp unwind label %bb.bo, !dbg !15809

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  %i.qm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body72 unwind label %bb.bq, !dbg !15810

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit74 unwind label %bb.br, !dbg !15811

bb.bq:                                            ; preds = %bb.bo
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15809
  unreachable, !dbg !15809

.body72:                                          ; preds = %bb.br, %bb.bo, %.body68
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body68 ], [ %i.qo, %bb.br ], [ %i.qm, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #52
          to label %.body77 unwind label %bb.cj, !dbg !15812

bb.br:                                            ; preds = %bb.bp
  %i.qo = landingpad { ptr, i32 }
          cleanup
  br label %.body72

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit74: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !15808
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bt unwind label %bb.bs, !dbg !15813

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit74
  %i.qp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body77 unwind label %bb.bu, !dbg !15814

bb.bt:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit74
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit79 unwind label %bb.bv, !dbg !15815

bb.bu:                                            ; preds = %bb.bs
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15813
  unreachable, !dbg !15813

.body77:                                          ; preds = %bb.bv, %bb.bs, %.body72
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body72 ], [ %i.qr, %bb.bv ], [ %i.qp, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.k) #52
          to label %common.resume unwind label %bb.cj, !dbg !15816

bb.bv:                                            ; preds = %bb.bt
  %i.qr = landingpad { ptr, i32 }
          cleanup
  br label %.body77

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit79: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !15812
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit81 unwind label %bb.bw, !dbg !15817

bb.bw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit79
  %i.qs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bx, !dbg !15818

bb.bx:                                            ; preds = %bb.bw
  %i.qt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15817
  unreachable, !dbg !15817

common.resume:                                    ; preds = %.body77, %bb.bw
  %common.resume.op = phi { ptr, i32 } [ %i.qs, %bb.bw ], [ %.pn.pn.pn.pn.pn.pn.pn, %.body77 ]
  resume { ptr, i32 } %common.resume.op, !dbg !15819

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit81: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit79
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !dbg !15820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !15816
  ret void, !dbg !15821

bb.by:                                            ; preds = %bb.l
  %i.qu = load i64, ptr %i.dt, align 8, !dbg !15822, !noalias !15424, !noundef !3509 ; 6 uses
  %i.qv = load i64, ptr %i.dr, align 8, !dbg !15823, !noalias !15424, !noundef !3509
  %i.qw = sub i64 %i.qv, %i.qu, !dbg !15824       ; 5 uses
  %i.qx = uitofp i64 %i.qw to double, !dbg !15825 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.bz
    i8 1, label %bb.ca
    i8 2, label %bb.cb
    i8 3, label %bb.cc
    i8 4, label %bb.cd
    i8 5, label %bb.ce
  ], !dbg !15826

bb.bz:                                            ; preds = %bb.by
  %i.qy = fadd nnan ninf double %i.qx, -1.000000e+00, !dbg !15827
  %i.qz = fmul double %6, %i.qy, !dbg !15828
  %i.ra = call double @llvm.round.f64(double %i.qz), !dbg !15829
  %i.rb = call i64 @llvm.fptoui.sat.i64.f64(double %i.ra), !dbg !15828
  %i.rc = add i64 %i.qw, -1, !dbg !15830
  %.sroa.0.0.i.i84 = call noundef i64 @llvm.umin.i64(i64 %i.rc, i64 %i.rb), !dbg !15831
  br label %.invoke169, !dbg !15832

.invoke169:                                       ; preds = %bb.ce, %bb.cb, %bb.ca, %bb.bz
  %.sink170 = phi i64 [ %i.sm, %bb.ce ], [ %.sroa.0.0.i26.i, %bb.cb ], [ %.sroa.0.0.i25.i, %bb.ca ], [ %.sroa.0.0.i.i84, %bb.bz ]
  %i.rd = add i64 %.sink170, %i.qu, !dbg !15833
  %i.re = invoke fastcc noundef i16 @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.rd)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15833

bb.ca:                                            ; preds = %bb.by
  %i.rf = fadd nnan ninf double %i.qx, -1.000000e+00, !dbg !15834
  %i.rg = fmul double %6, %i.rf, !dbg !15835
  %i.rh = call double @llvm.floor.f64(double %i.rg), !dbg !15836
  %i.ri = call i64 @llvm.fptoui.sat.i64.f64(double %i.rh), !dbg !15835
  %i.rj = add i64 %i.qw, -1, !dbg !15837
  %.sroa.0.0.i25.i = call noundef i64 @llvm.umin.i64(i64 %i.rj, i64 %i.ri), !dbg !15838
  br label %.invoke169, !dbg !15839

bb.cb:                                            ; preds = %bb.by
  %i.rk = fadd nnan ninf double %i.qx, -1.000000e+00, !dbg !15840
  %i.rl = fmul double %6, %i.rk, !dbg !15841
  %i.rm = call double @llvm.ceil.f64(double %i.rl), !dbg !15842
  %i.rn = call i64 @llvm.fptoui.sat.i64.f64(double %i.rm), !dbg !15841
  %i.ro = add i64 %i.qw, -1, !dbg !15843
  %.sroa.0.0.i26.i = call noundef i64 @llvm.umin.i64(i64 %i.ro, i64 %i.rn), !dbg !15844
  br label %.invoke169, !dbg !15845

bb.cc:                                            ; preds = %bb.by
  %i.rp = fadd nnan ninf double %i.qx, -1.000000e+00, !dbg !15846
  %i.rq = fmul double %6, %i.rp, !dbg !15847      ; 2 uses
  %i.rr = call double @llvm.floor.f64(double %i.rq), !dbg !15848
  %i.rs = call i64 @llvm.fptoui.sat.i64.f64(double %i.rr), !dbg !15847
  %i.rt = add i64 %i.qw, -1, !dbg !15849
  %.sroa.0.0.i27.i = call noundef i64 @llvm.umin.i64(i64 %i.rt, i64 %i.rs), !dbg !15850 ; 2 uses
  %i.ru = call double @llvm.ceil.f64(double %i.rq), !dbg !15851
  %i.rv = call i64 @llvm.fptoui.sat.i64.f64(double %i.ru), !dbg !15852 ; 2 uses
  %i.rw = add i64 %.sroa.0.0.i27.i, %i.qu, !dbg !15853
  %i.rx = invoke fastcc noundef i16 @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.rw)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15853 ; 2 uses

.noexc88:                                         ; preds = %bb.cc
  %i.ry = icmp eq i64 %i.rv, %.sroa.0.0.i27.i, !dbg !15854
  br i1 %i.ry, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.cf, !dbg !15854

bb.cd:                                            ; preds = %bb.by
  %i.rz = fadd nnan ninf double %i.qx, -1.000000e+00, !dbg !15855
  %i.sa = fmul double %6, %i.rz, !dbg !15855      ; 3 uses
  %i.sb = call double @llvm.floor.f64(double %i.sa), !dbg !15856
  %i.sc = call i64 @llvm.fptoui.sat.i64.f64(double %i.sb), !dbg !15857 ; 3 uses
  %i.sd = call double @llvm.ceil.f64(double %i.sa), !dbg !15858
  %i.se = call i64 @llvm.fptoui.sat.i64.f64(double %i.sd), !dbg !15859 ; 2 uses
  %i.sf = add i64 %i.sc, %i.qu, !dbg !15860
  %i.sg = invoke fastcc noundef i16 @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.sf)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15860 ; 2 uses

.noexc89:                                         ; preds = %bb.cd
  %i.sh = icmp eq i64 %i.sc, %i.se, !dbg !15861
  br i1 %i.sh, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.cg, !dbg !15861

bb.ce:                                            ; preds = %bb.by
  %i.si = fmul double %6, %i.qx, !dbg !15862
  %i.sj = call double @llvm.ceil.f64(double %i.si), !dbg !15863
  %i.sk = fadd double %i.sj, -1.000000e+00, !dbg !15864
  %i.sl = call nsz double @llvm.maximumnum.f64(double %i.sk, double 0.000000e+00), !dbg !15865
  %i.sm = call i64 @llvm.fptoui.sat.i64.f64(double %i.sl), !dbg !15864
  br label %.invoke169, !dbg !15866

bb.cf:                                            ; preds = %.noexc88
  %i.sn = add i64 %i.rv, %i.qu, !dbg !15867
  %i.so = invoke fastcc noundef i16 @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.sn)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15868

.noexc91:                                         ; preds = %bb.cf
  %i.sp = invoke noundef i16 @_RNvXsg_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_12FinishLinear15finish_midpointCskY9G75ZWc4U_11polars_expr(i16 noundef %i.rx, i16 noundef %i.so)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15869

bb.cg:                                            ; preds = %.noexc89
  %i.sq = add i64 %i.se, %i.qu, !dbg !15870
  %i.sr = invoke fastcc noundef i16 @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.sq)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15871

.noexc93:                                         ; preds = %bb.cg
  %i.ss = uitofp i64 %i.sc to double, !dbg !15872
  %i.st = fsub double %i.sa, %i.ss, !dbg !15873
  %i.su = invoke noundef i16 @_RNvXsg_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterNtNtCs2mZqlW55729_12polars_utils7float164pf16NtB5_12FinishLinear6finishCskY9G75ZWc4U_11polars_expr(double noundef %i.st, i16 noundef %i.sg, i16 noundef %i.sr)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15874

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke169, %.noexc89, %.noexc88, %.noexc91, %.noexc93
  %.sroa.0.0.i83 = phi i16 [ %i.sg, %.noexc89 ], [ %i.re, %.invoke169 ], [ %i.su, %.noexc93 ], [ %i.sp, %.noexc91 ], [ %i.rx, %.noexc88 ], !dbg !15833
  %i.sv = load i64, ptr %i.du, align 8, !dbg !15875, !alias.scope !15430, !noundef !3509 ; 3 uses
  %i.sw = load i64, ptr %i.e, align 8, !dbg !15876, !range !3583, !alias.scope !15430, !noundef !3509
  %i.sx = icmp eq i64 %i.sv, %i.sw, !dbg !15877
  br i1 %i.sx, label %bb.ch, label %bb.ci, !dbg !15877

bb.ch:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtCs2mZqlW55729_12polars_utils7float164pf16E8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !15878

bb.ci:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSNtNtCs2mZqlW55729_12polars_utils7float164pf16EE8quantileCskY9G75ZWc4U_11polars_expr.exit, %bb.ch
  %i.sy = load ptr, ptr %i.dv, align 8, !dbg !15879, !alias.scope !15430, !nonnull !3509, !noundef !3509
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %i.sv, !dbg !15880
  store i16 %.sroa.0.0.i83, ptr %i.sz, align 2, !dbg !15881
  %i.ta = add i64 %i.sv, 1, !dbg !15882
  store i64 %i.ta, ptr %i.du, align 8, !dbg !15882, !alias.scope !15430
  %exitcond.not = icmp eq i64 %i.el, %.val29, !dbg !15493
  br i1 %exitcond.not, label %.lr.ph124, label %bb.l, !dbg !15367

bb.cj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body77, %.body72, %.body68, %.body64, %.body, %bb.b
  %i.tb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !15883
  unreachable, !dbg !15883
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filter16rolling_quantileRSdINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 1152921504606846976) %5, double noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !15884 !guid !16554 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 20 uses
  %i.d = alloca [96 x i8], align 8                ; 31 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  store ptr %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %5, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16675
  store i64 0, ptr %i.k, align 8, !dbg !16676
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !16676
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !dbg !16676
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !16676
  store i64 0, ptr %i.o, align 8, !dbg !16676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !16677
  store i64 0, ptr %i.j, align 8, !dbg !16678
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !16678
  store ptr inttoptr (i64 4 to ptr), ptr %i.p, align 8, !dbg !16678
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !16678
  store i64 0, ptr %i.q, align 8, !dbg !16678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16679
  store i64 0, ptr %i.i, align 8, !dbg !16680
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !16680
  store ptr inttoptr (i64 4 to ptr), ptr %i.r, align 8, !dbg !16680
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !16680
  store i64 0, ptr %i.s, align 8, !dbg !16680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16681
  store i64 0, ptr %i.h, align 8, !dbg !16682
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !16682
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !dbg !16682
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !16682
  store i64 0, ptr %i.u, align 8, !dbg !16682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !16683
  store i64 0, ptr %i.g, align 8, !dbg !16684
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !16684
  store ptr inttoptr (i64 4 to ptr), ptr %i.v, align 8, !dbg !16684
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !16684
  store i64 0, ptr %i.w, align 8, !dbg !16684
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16685
  store i64 0, ptr %i.f, align 8, !dbg !16686
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !16686
  store ptr inttoptr (i64 4 to ptr), ptr %i.x, align 8, !dbg !16686
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !16686
  store i64 0, ptr %i.y, align 8, !dbg !16686
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %5, i64 %3), !dbg !16687 ; 5 uses
  %i.z = invoke { ptr, i64 } @_RNvXNtCs2mZqlW55729_12polars_utils5sliceRSdNtB2_9SliceAble5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, i64 noundef 0, i64 noundef %.sroa.0.0.i)
          to label %bb.d unwind label %bb.c, !dbg !16688 ; 2 uses

bb.b:                                             ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp199, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.f) #52
          to label %.body unwind label %bb.ce, !dbg !16689

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.ab = extractvalue { ptr, i64 } %i.z, 0, !dbg !16690
  %i.ac = extractvalue { ptr, i64 } %i.z, 1, !dbg !16690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16691
  invoke void @_RNvYINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEINtNtCs8774dFTUdNv_12polars_arrow8pushable8PushabledE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %5)
          to label %bb.e unwind label %bb.c, !dbg !16692

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %.sroa.0.0.i, 0, !dbg !16693
  br i1 %i.ad, label %bb.g, label %bb.f, !dbg !16693

bb.f:                                             ; preds = %bb.e
  %i.ae = udiv i64 %5, %.sroa.0.0.i, !dbg !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16694
  invoke fastcc void @_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16695

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #55
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16693

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16696
  %i.af = invoke { ptr, i64 } @_RNvXNtCs2mZqlW55729_12polars_utils5sliceRSdNtB2_9SliceAble5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, i64 noundef 0, i64 noundef 1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16697 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !16698
  %i.ah = extractvalue { ptr, i64 } %i.af, 1, !dbg !16698
  invoke fastcc void @_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ag, i64 noundef %i.ah, ptr noalias noundef align 8 dereferenceable(24) %i.h, ptr noalias noundef align 8 dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !16699

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !16562), !dbg !16700
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !16701
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !16701, !alias.scope !16562, !noundef !3509 ; 5 uses
  %.not5.i = icmp eq i64 %i.aj, 0, !dbg !16702
  br i1 %.not5.i, label %.loopexit122, label %.lr.ph.i, !dbg !16703

.lr.ph.i:                                         ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !16562, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val4.i = load ptr, ptr %i.al, align 8, !alias.scope !16562, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %xtraiter = and i64 %i.aj, 1, !dbg !16703
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !16703
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa, !dbg !16703

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.aq = add nsw i64 %i.aj, -1, !dbg !16704      ; 9 uses
  %i.ar = load ptr, ptr %i.am, align 8, !dbg !16705, !noalias !16562, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !dbg !16706, !noalias !16562, !noundef !3509
  %i.at = icmp ult i64 %i.aq, %i.as, !dbg !16707
  call void @llvm.assume(i1 %i.at), !dbg !16708
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq, !dbg !16709
  %i.av = load i32, ptr %i.au, align 4, !dbg !16710, !noalias !16562, !noundef !3509
  %i.aw = load ptr, ptr %i.ao, align 8, !dbg !16711, !noalias !16562, !nonnull !3509, !noundef !3509
end_hunk_0
begin_hunk_1_@_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filter16rolling_quantileRSdINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEECskY9G75ZWc4U_11polars_expr:bb.a
bb.ad:                                            ; preds = %bb.ab
  unreachable, !dbg !16931

bb.ae:                                            ; preds = %bb.ab
  %i.mz = add i64 %i.kv, -1, !dbg !16932
  store i64 %i.mz, ptr %i.eh, align 8, !dbg !16932, !alias.scope !16635
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !16932

bb.af:                                            ; preds = %bb.ab
  %.not.i48 = icmp ult i64 %i.mi, %i.kv, !dbg !16933
  br i1 %.not.i48, label %bb.ag, label %bb.ah, !dbg !16933

bb.ag:                                            ; preds = %bb.af
  %i.na = load ptr, ptr %i.lo, align 8, !dbg !16934, !noalias !16635, !nonnull !3509, !noundef !3509
  %i.nb = load i64, ptr %i.lp, align 8, !dbg !16935, !noalias !16635, !noundef !3509
  %i.nc = icmp ult i64 %i.ky, %i.nb, !dbg !16936
  call void @llvm.assume(i1 %i.nc), !dbg !16937
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.ky, !dbg !16938
  %i.ne = load i32, ptr %i.nd, align 4, !dbg !16939, !noalias !16635, !noundef !3509
  %i.nf = zext i32 %i.ne to i64, !dbg !16940
  store i64 %i.nf, ptr %i.dq, align 8, !dbg !16940, !alias.scope !16635
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !16941

bb.ah:                                            ; preds = %bb.af
  %i.ng = load ptr, ptr %i.lh, align 8, !dbg !16942, !noalias !16635, !nonnull !3509, !noundef !3509
  %i.nh = load i64, ptr %i.lj, align 8, !dbg !16943, !noalias !16635, !noundef !3509
  %i.ni = icmp ult i64 %i.ky, %i.nh, !dbg !16944
  call void @llvm.assume(i1 %i.ni), !dbg !16945
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.ky, !dbg !16946
  %i.nk = load i32, ptr %i.nj, align 4, !dbg !16947, !noalias !16635, !noundef !3509
  %i.nl = zext i32 %i.nk to i64, !dbg !16947      ; 2 uses
  %i.nm = icmp ne i64 %i.kr, %i.nl, !dbg !16948
  %.not7.i = icmp eq i64 %i.mi, 0
  %or.cond8.i = or i1 %.not7.i, %i.nm, !dbg !16948
  br i1 %or.cond8.i, label %bb.ai, label %bb.aj, !dbg !16948

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.nl, ptr %i.dq, align 8, !dbg !16949, !alias.scope !16635
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !16950

bb.aj:                                            ; preds = %bb.ah
  %i.nn = add i64 %i.kv, -1, !dbg !16951
  store i64 %i.nn, ptr %i.eh, align 8, !dbg !16951, !alias.scope !16635
  %i.no = load ptr, ptr %i.lo, align 8, !dbg !16952, !noalias !16635, !nonnull !3509, !noundef !3509
  %i.np = load i64, ptr %i.lp, align 8, !dbg !16953, !noalias !16635, !noundef !3509
  %i.nq = icmp ult i64 %i.ky, %i.np, !dbg !16954
  call void @llvm.assume(i1 %i.nq), !dbg !16955
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ky, !dbg !16956
  %i.ns = load i32, ptr %i.nr, align 4, !dbg !16957, !noalias !16635, !noundef !3509
  %i.nt = zext i32 %i.ns to i64, !dbg !16958
  store i64 %i.nt, ptr %i.dq, align 8, !dbg !16958, !alias.scope !16635
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !16950

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !16655), !dbg !16959
  %i.nu = load i64, ptr %i.ef, align 8, !dbg !16960, !alias.scope !16655, !noundef !3509 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0, !dbg !16961       ; 2 uses
  br i1 %i.nv, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, label %bb.ak, !dbg !16961

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit
  %.val.i50.pre = load ptr, ptr %i.eb, align 8, !dbg !16962, !alias.scope !16655
  br label %bb.al, !dbg !16961

bb.ak:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit
  %i.nw = load i64, ptr %i.ee, align 8, !dbg !16963, !alias.scope !16655, !noundef !3509 ; 3 uses
  %i.nx = load i64, ptr %i.ed, align 8, !dbg !16964, !alias.scope !16655, !noundef !3509
  %i.ny = icmp eq i64 %i.nw, %i.nx, !dbg !16963
  %i.nz = load i64, ptr %i.ej, align 8, !alias.scope !16655 ; 2 uses
  %i.oa = icmp ne i64 %i.nz, 0
  %or.cond.i49 = select i1 %i.ny, i1 %i.oa, i1 false, !dbg !16965
  %.val.i50.pre147 = load ptr, ptr %i.eb, align 8, !dbg !16962, !alias.scope !16655 ; 4 uses
  br i1 %or.cond.i49, label %bb.am, label %bb.al, !dbg !16965

bb.al:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, %bb.am, %bb.ak
  %.val.i50 = phi ptr [ %.val.i50.pre, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge ], [ %.val.i50.pre147, %bb.am ], [ %.val.i50.pre147, %bb.ak ], !dbg !16962 ; 2 uses
  %.val7.i51 = load ptr, ptr %i.ec, align 8, !dbg !16962, !alias.scope !16655, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 8, !dbg !16966 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !dbg !16966, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.od = getelementptr inbounds nuw i8, ptr %.val.i50, i64 8, !dbg !16967 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !dbg !16967, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.of = getelementptr inbounds nuw i8, ptr %.val.i50, i64 16, !dbg !16968 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !dbg !16968, !noalias !16655, !noundef !3509
  %i.oh = icmp ult i64 %.sroa.012.0127, %i.og, !dbg !16969
  call void @llvm.assume(i1 %i.oh), !dbg !16970
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.sroa.012.0127, !dbg !16971
  %i.oj = load i32, ptr %i.oi, align 4, !dbg !16972, !noalias !16655, !noundef !3509
  %i.ok = zext i32 %i.oj to i64, !dbg !16972
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ok, !dbg !16973
  store i32 %i.lc, ptr %i.ol, align 4, !dbg !16974, !noalias !16655
  %i.om = load ptr, ptr %i.od, align 8, !dbg !16975, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.on = load ptr, ptr %i.ob, align 8, !dbg !16976, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.oo = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 16, !dbg !16977
  %i.op = load i64, ptr %i.oo, align 8, !dbg !16977, !noalias !16655, !noundef !3509
  %i.oq = icmp ult i64 %.sroa.012.0127, %i.op, !dbg !16978
  call void @llvm.assume(i1 %i.oq), !dbg !16979
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.012.0127, !dbg !16980
  %i.os = load i32, ptr %i.or, align 4, !dbg !16981, !noalias !16655, !noundef !3509
  %i.ot = zext i32 %i.os to i64, !dbg !16981
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.ot, !dbg !16982
  store i32 %i.lc, ptr %i.ou, align 4, !dbg !16983, !noalias !16655
  br i1 %i.nv, label %bb.an, label %bb.ao, !dbg !16984

bb.am:                                            ; preds = %bb.ak
  %i.ov = add i64 %i.nz, -1, !dbg !16985
  store i64 %i.ov, ptr %i.ej, align 8, !dbg !16985, !alias.scope !16655
  %i.ow = getelementptr inbounds nuw i8, ptr %.val.i50.pre147, i64 8, !dbg !16986
  %i.ox = load ptr, ptr %i.ow, align 8, !dbg !16986, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.oy = getelementptr inbounds nuw i8, ptr %.val.i50.pre147, i64 16, !dbg !16987
  %i.oz = load i64, ptr %i.oy, align 8, !dbg !16987, !noalias !16655, !noundef !3509
  %i.pa = icmp ult i64 %i.nw, %i.oz, !dbg !16988
  call void @llvm.assume(i1 %i.pa), !dbg !16989
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nw, !dbg !16990
  %i.pc = load i32, ptr %i.pb, align 4, !dbg !16991, !noalias !16655, !noundef !3509
  %i.pd = zext i32 %i.pc to i64, !dbg !16991
  store i64 %i.pd, ptr %i.ee, align 8, !dbg !16992, !alias.scope !16655
  br label %bb.al, !dbg !16993

bb.an:                                            ; preds = %bb.al
  %i.pe = load i64, ptr %i.ee, align 8, !dbg !16994, !alias.scope !16655, !noundef !3509 ; 3 uses
  %i.pf = load i64, ptr %i.of, align 8, !dbg !16995, !noalias !16655, !noundef !3509 ; 2 uses
  %i.pg = icmp ult i64 %i.pe, %i.pf, !dbg !16996
  br i1 %i.pg, label %bb.ap, label %.invoke178, !dbg !16996

bb.ao:                                            ; preds = %bb.al
  %.val10.i52 = load ptr, ptr %i.c, align 8, !dbg !16997, !alias.scope !16655, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %.val11.i53 = load i64, ptr %i.eg, align 8, !dbg !16997, !alias.scope !16655, !noundef !3509 ; 2 uses
  %i.ph = icmp ult i64 %.sroa.012.0127, %.val11.i53, !dbg !16998
  call void @llvm.assume(i1 %i.ph), !dbg !16999
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.val10.i52, i64 %.sroa.012.0127, !dbg !17000
  %i.pj = load double, ptr %i.pi, align 8, !dbg !17001, !noalias !16655, !noundef !3509 ; 3 uses
  %i.pk = load i64, ptr %i.ee, align 8, !dbg !17002, !alias.scope !16655, !noundef !3509 ; 3 uses
  %i.pl = icmp ult i64 %i.pk, %.val11.i53, !dbg !17003
  call void @llvm.assume(i1 %i.pl), !dbg !17004
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.val10.i52, i64 %i.pk, !dbg !17005
  %i.pn = load double, ptr %i.pm, align 8, !dbg !17006, !noalias !16655, !noundef !3509 ; 3 uses
  %i.po = trunc i64 %i.pk to i32, !dbg !17007
  %i.pp = add i64 %i.nu, 1, !dbg !17008           ; 3 uses
  store i64 %i.pp, ptr %i.ef, align 8, !dbg !17008, !alias.scope !16655
  %i.pq = fcmp ord double %i.pj, 0.000000e+00, !dbg !17009
  %i.pr = fcmp ult double %i.pj, %i.pn, !dbg !17010
  %.not2.i.i54 = and i1 %i.pq, %i.pr, !dbg !17011
  %i.ps = icmp ult i32 %i.lc, %i.po, !dbg !17012
  %i.pt = fcmp uno double %i.pn, 0.000000e+00, !dbg !17013
  %i.pu = fcmp oge double %i.pn, %i.pj, !dbg !17013
  %i.pv = or i1 %i.pt, %i.pu, !dbg !17013
  %i.pw = and i1 %i.ps, %i.pv, !dbg !17013
  %i.px = or i1 %.not2.i.i54, %i.pw, !dbg !17013
  br i1 %i.px, label %bb.aq, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56, !dbg !17012

bb.ap:                                            ; preds = %bb.an
  %i.py = load ptr, ptr %i.od, align 8, !dbg !17014, !noalias !16655, !nonnull !3509, !noundef !3509
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.pe, !dbg !17015
  %i.qa = load i32, ptr %i.pz, align 4, !dbg !17016, !noalias !16655, !noundef !3509
  %i.qb = zext i32 %i.qa to i64, !dbg !17017
  store i64 %i.qb, ptr %i.ee, align 8, !dbg !17017, !alias.scope !16655
  store i64 1, ptr %i.ef, align 8, !dbg !17018, !alias.scope !16655
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, !dbg !17019

.invoke178:                                       ; preds = %bb.p, %bb.an
  %i.qc = phi i64 [ %i.pe, %bb.an ], [ %i.ga, %bb.p ]
  %i.qd = phi i64 [ %i.pf, %bb.an ], [ %i.gb, %bb.p ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qc, i64 noundef %i.qd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #50
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17020

.cont:                                            ; preds = %.invoke178
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.qe = load i64, ptr %i.ej, align 8, !dbg !17021, !alias.scope !16655, !noundef !3509
  %i.qf = add i64 %i.qe, 1, !dbg !17021
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, !dbg !17021

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split: ; preds = %bb.ap, %bb.aq
  %.sink = phi i64 [ %i.qf, %bb.aq ], [ 0, %bb.ap ]
  %.ph = phi i64 [ %i.pp, %bb.aq ], [ 1, %bb.ap ]
  store i64 %.sink, ptr %i.ej, align 8, !dbg !17022, !alias.scope !16655
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56, !dbg !17023

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, %bb.ao
  %i.qg = phi i64 [ %i.pp, %bb.ao ], [ %.ph, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split ], !dbg !17024
  %i.qh = load i64, ptr %i.ek, align 8, !dbg !17023, !noalias !16656, !noundef !3509
  %i.qi = load i64, ptr %i.el, align 8, !dbg !17025, !noalias !16656, !noundef !3509
  %i.qj = add i64 %i.qi, %i.qh, !dbg !17023       ; 6 uses
  %i.qk = load i64, ptr %i.dr, align 8, !dbg !17026, !noalias !16656, !noundef !3509
  %i.ql = sub i64 %i.qk, %i.qj, !dbg !17026
  %i.qm = add i64 %i.ql, %i.qg, !dbg !17027       ; 5 uses
  %i.qn = uitofp i64 %i.qm to double, !dbg !17028 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
    i8 5, label %bb.aw
  ], !dbg !17029

default.unreachable:                              ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  unreachable

bb.ar:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qo = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !17030
  %i.qp = fmul double %6, %i.qo, !dbg !17031
  %i.qq = call double @llvm.round.f64(double %i.qp), !dbg !17032
  %i.qr = call i64 @llvm.fptoui.sat.i64.f64(double %i.qq), !dbg !17031
  %i.qs = add i64 %i.qm, -1, !dbg !17033
  %.sroa.0.0.i.i59 = call noundef i64 @llvm.umin.i64(i64 %i.qs, i64 %i.qr), !dbg !17034
  br label %.invoke, !dbg !17035

bb.as:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qt = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !17036
  %i.qu = fmul double %6, %i.qt, !dbg !17037
  %i.qv = call double @llvm.floor.f64(double %i.qu), !dbg !17038
  %i.qw = call i64 @llvm.fptoui.sat.i64.f64(double %i.qv), !dbg !17037
  %i.qx = add i64 %i.qm, -1, !dbg !17039
  %.sroa.0.0.i37.i = call noundef i64 @llvm.umin.i64(i64 %i.qx, i64 %i.qw), !dbg !17040
  br label %.invoke, !dbg !17041

bb.at:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qy = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !17042
  %i.qz = fmul double %6, %i.qy, !dbg !17043
  %i.ra = call double @llvm.ceil.f64(double %i.qz), !dbg !17044
  %i.rb = call i64 @llvm.fptoui.sat.i64.f64(double %i.ra), !dbg !17043
  %i.rc = add i64 %i.qm, -1, !dbg !17045
  %.sroa.0.0.i38.i = call noundef i64 @llvm.umin.i64(i64 %i.rc, i64 %i.rb), !dbg !17046
  br label %.invoke, !dbg !17047

bb.au:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rd = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !17048
  %i.re = fmul double %6, %i.rd, !dbg !17049      ; 2 uses
  %i.rf = call double @llvm.floor.f64(double %i.re), !dbg !17050
  %i.rg = call i64 @llvm.fptoui.sat.i64.f64(double %i.rf), !dbg !17049
  %i.rh = add i64 %i.qm, -1, !dbg !17051
  %.sroa.0.0.i39.i = call noundef i64 @llvm.umin.i64(i64 %i.rh, i64 %i.rg), !dbg !17052 ; 2 uses
  %i.ri = call double @llvm.ceil.f64(double %i.re), !dbg !17053
  %i.rj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ri), !dbg !17054 ; 2 uses
  %i.rk = add i64 %.sroa.0.0.i39.i, %i.qj, !dbg !17055
  %i.rl = invoke fastcc noundef double @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.rk)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17055 ; 2 uses

.noexc63:                                         ; preds = %bb.au
  %i.rm = icmp eq i64 %i.rj, %.sroa.0.0.i39.i, !dbg !17056
  br i1 %i.rm, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ax, !dbg !17056

bb.av:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rn = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !17057
  %i.ro = fmul double %6, %i.rn, !dbg !17057      ; 3 uses
  %i.rp = call double @llvm.floor.f64(double %i.ro), !dbg !17058
  %i.rq = call i64 @llvm.fptoui.sat.i64.f64(double %i.rp), !dbg !17059 ; 3 uses
  %i.rr = call double @llvm.ceil.f64(double %i.ro), !dbg !17060
  %i.rs = call i64 @llvm.fptoui.sat.i64.f64(double %i.rr), !dbg !17061 ; 2 uses
  %i.rt = add i64 %i.rq, %i.qj, !dbg !17062
  %i.ru = invoke fastcc noundef double @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.rt)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17062 ; 3 uses

.noexc64:                                         ; preds = %bb.av
  %i.rv = icmp eq i64 %i.rq, %i.rs, !dbg !17063
  br i1 %i.rv, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ay, !dbg !17063

bb.aw:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rw = fmul double %6, %i.qn, !dbg !17064
  %i.rx = call double @llvm.ceil.f64(double %i.rw), !dbg !17065
  %i.ry = fadd double %i.rx, -1.000000e+00, !dbg !17066
  %i.rz = call nsz double @llvm.maximumnum.f64(double %i.ry, double 0.000000e+00), !dbg !17067
  %i.sa = call i64 @llvm.fptoui.sat.i64.f64(double %i.rz), !dbg !17066
  br label %.invoke, !dbg !17068

.invoke:                                          ; preds = %bb.ar, %bb.as, %bb.at, %bb.aw
  %.sroa.0.0.i.i59.sink = phi i64 [ %.sroa.0.0.i.i59, %bb.ar ], [ %.sroa.0.0.i37.i, %bb.as ], [ %.sroa.0.0.i38.i, %bb.at ], [ %i.sa, %bb.aw ]
  %i.sb = add i64 %.sroa.0.0.i.i59.sink, %i.qj, !dbg !17069
  %i.sc = invoke fastcc noundef double @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sb)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17069

bb.ax:                                            ; preds = %.noexc63
  %i.sd = add i64 %i.rj, %i.qj, !dbg !17070
  %i.se = invoke fastcc noundef double @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sd)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17071

.noexc66:                                         ; preds = %bb.ax
  %i.sf = fadd double %i.rl, %i.se, !dbg !17072
  %i.sg = fmul double %i.sf, 5.000000e-01, !dbg !17073
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !17074

bb.ay:                                            ; preds = %.noexc64
  %i.sh = add i64 %i.rs, %i.qj, !dbg !17075
  %i.si = invoke fastcc noundef double @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sh)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17076

.noexc67:                                         ; preds = %bb.ay
  %i.sj = uitofp i64 %i.rq to double, !dbg !17077
  %i.sk = fsub double %i.ro, %i.sj, !dbg !17078
  %i.sl = fsub double %i.si, %i.ru, !dbg !17079
  %i.sm = fmul double %i.sk, %i.sl, !dbg !17080
  %i.sn = fadd double %i.ru, %i.sm, !dbg !17081
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !17082

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke, %.noexc67, %.noexc66, %.noexc64, %.noexc63
  %.sroa.0.0.i58 = phi double [ %i.ru, %.noexc64 ], [ %i.rl, %.noexc63 ], [ %i.sn, %.noexc67 ], [ %i.sc, %.invoke ], [ %i.sg, %.noexc66 ], !dbg !17069
  %i.so = load i64, ptr %i.em, align 8, !dbg !17083, !alias.scope !16666, !noundef !3509 ; 3 uses
  %i.sp = load i64, ptr %i.e, align 8, !dbg !17084, !range !3583, !alias.scope !16666, !noundef !3509
  %i.sq = icmp eq i64 %i.so, %i.sp, !dbg !17085
  br i1 %i.sq, label %bb.az, label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEINtB4_8PushabledE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !17085

bb.az:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEINtB4_8PushabledE4pushCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17086

_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecdEINtB4_8PushabledE4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.az, %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  %i.sr = load ptr, ptr %i.en, align 8, !dbg !17087, !alias.scope !16666, !nonnull !3509, !noundef !3509
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.so, !dbg !17088
  store double %.sroa.0.0.i58, ptr %i.ss, align 8, !dbg !17089
  %i.st = add i64 %i.so, 1, !dbg !17090
  store i64 %i.st, ptr %i.em, align 8, !dbg !17090, !alias.scope !16666
  %exitcond143.not = icmp eq i64 %i.kp, %.val, !dbg !16862
  br i1 %exitcond143.not, label %._crit_edge, label %.lr.ph128, !dbg !16863

bb.ba:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16866
  br label %.loopexit116, !dbg !17091

.body:                                            ; preds = %bb.bb, %bb.t, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.b ], [ %i.su, %bb.bb ], [ %i.ha, %bb.t ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #52
          to label %.body71 unwind label %bb.ce, !dbg !17092

bb.bb:                                            ; preds = %bb.u
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16689
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bd unwind label %bb.bc, !dbg !17093

bb.bc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  %i.sv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body71 unwind label %bb.be, !dbg !17094

bb.bd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73 unwind label %bb.bf, !dbg !17095

bb.be:                                            ; preds = %bb.bc
  %i.sw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17093
  unreachable, !dbg !17093

.body71:                                          ; preds = %bb.bf, %bb.bc, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.sx, %bb.bf ], [ %i.sv, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.h) #52
          to label %.body75 unwind label %bb.ce, !dbg !17096

bb.bf:                                            ; preds = %bb.bd
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.body71

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !17092
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.bg, !dbg !17097

bb.bg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73
  %i.sy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body75 unwind label %bb.bi, !dbg !17098

bb.bh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bj, !dbg !17099

bb.bi:                                            ; preds = %bb.bg
  %i.sz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17097
  unreachable, !dbg !17097

.body75:                                          ; preds = %bb.bj, %bb.bg, %.body71
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body71 ], [ %i.ta, %bb.bj ], [ %i.sy, %bb.bg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %.body79 unwind label %bb.ce, !dbg !17100

bb.bj:                                            ; preds = %bb.bh
  %i.ta = landingpad { ptr, i32 }
          cleanup
  br label %.body75

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !17096
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bl unwind label %bb.bk, !dbg !17101

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  %i.tb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body79 unwind label %bb.bm, !dbg !17102

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81 unwind label %bb.bn, !dbg !17103

bb.bm:                                            ; preds = %bb.bk
  %i.tc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17101
  unreachable, !dbg !17101

.body79:                                          ; preds = %bb.bn, %bb.bk, %.body75
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body75 ], [ %i.td, %bb.bn ], [ %i.tb, %bb.bk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #52
          to label %.body84 unwind label %bb.ce, !dbg !17104

bb.bn:                                            ; preds = %bb.bl
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %.body79

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !17100
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bp unwind label %bb.bo, !dbg !17105

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81
  %i.te = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body84 unwind label %bb.bq, !dbg !17106

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86 unwind label %bb.br, !dbg !17107

bb.bq:                                            ; preds = %bb.bo
  %i.tf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17105
  unreachable, !dbg !17105

.body84:                                          ; preds = %bb.br, %bb.bo, %.body79
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body79 ], [ %i.tg, %bb.br ], [ %i.te, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.k) #52
          to label %common.resume unwind label %bb.ce, !dbg !17108

bb.br:                                            ; preds = %bb.bp
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %.body84

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !17104
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit88 unwind label %bb.bs, !dbg !17109

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86
  %i.th = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bt, !dbg !17110

bb.bt:                                            ; preds = %bb.bs
  %i.ti = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17109
  unreachable, !dbg !17109

common.resume:                                    ; preds = %.body84, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.th, %bb.bs ], [ %.pn.pn.pn.pn.pn.pn.pn, %.body84 ]
  resume { ptr, i32 } %common.resume.op, !dbg !17111

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit88: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !dbg !17112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !17108
  ret void, !dbg !17113

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split: ; preds = %bb.r, %bb.s
  %.sink180 = phi i64 [ %i.gz, %bb.s ], [ 0, %bb.r ]
  %.ph179 = phi i64 [ %i.gl, %bb.s ], [ 1, %bb.r ]
  store i64 %.sink180, ptr %i.dt, align 8, !dbg !17114, !alias.scope !16594
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !17115

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split, %bb.q
  %i.tj = phi i64 [ %i.gl, %bb.q ], [ %.ph179, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split ], !dbg !17116
  %i.tk = load i64, ptr %i.dw, align 8, !dbg !17115, !noalias !16668, !noundef !3509 ; 6 uses
  %i.tl = sub i64 %i.tj, %i.tk, !dbg !17117       ; 5 uses
  %i.tm = uitofp i64 %i.tl to double, !dbg !17118 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.bu
    i8 1, label %bb.bv
    i8 2, label %bb.bw
    i8 3, label %bb.bx
    i8 4, label %bb.by
    i8 5, label %bb.bz
  ], !dbg !17119

bb.bu:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.tn = fadd nnan ninf double %i.tm, -1.000000e+00, !dbg !17120
  %i.to = fmul double %6, %i.tn, !dbg !17121
  %i.tp = call double @llvm.round.f64(double %i.to), !dbg !17122
  %i.tq = call i64 @llvm.fptoui.sat.i64.f64(double %i.tp), !dbg !17121
  %i.tr = add i64 %i.tl, -1, !dbg !17123
  %.sroa.0.0.i.i91 = call noundef i64 @llvm.umin.i64(i64 %i.tr, i64 %i.tq), !dbg !17124
  br label %.invoke177, !dbg !17125

.invoke177:                                       ; preds = %bb.bz, %bb.bw, %bb.bv, %bb.bu
  %.sink181 = phi i64 [ %i.vb, %bb.bz ], [ %.sroa.0.0.i26.i, %bb.bw ], [ %.sroa.0.0.i25.i, %bb.bv ], [ %.sroa.0.0.i.i91, %bb.bu ]
  %i.ts = add i64 %.sink181, %i.tk, !dbg !17126
  %i.tt = invoke fastcc noundef double @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.ts)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17126

bb.bv:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.tu = fadd nnan ninf double %i.tm, -1.000000e+00, !dbg !17127
  %i.tv = fmul double %6, %i.tu, !dbg !17128
  %i.tw = call double @llvm.floor.f64(double %i.tv), !dbg !17129
  %i.tx = call i64 @llvm.fptoui.sat.i64.f64(double %i.tw), !dbg !17128
  %i.ty = add i64 %i.tl, -1, !dbg !17130
  %.sroa.0.0.i25.i = call noundef i64 @llvm.umin.i64(i64 %i.ty, i64 %i.tx), !dbg !17131
  br label %.invoke177, !dbg !17132

bb.bw:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.tz = fadd nnan ninf double %i.tm, -1.000000e+00, !dbg !17133
  %i.ua = fmul double %6, %i.tz, !dbg !17134
  %i.ub = call double @llvm.ceil.f64(double %i.ua), !dbg !17135
  %i.uc = call i64 @llvm.fptoui.sat.i64.f64(double %i.ub), !dbg !17134
  %i.ud = add i64 %i.tl, -1, !dbg !17136
  %.sroa.0.0.i26.i = call noundef i64 @llvm.umin.i64(i64 %i.ud, i64 %i.uc), !dbg !17137
  br label %.invoke177, !dbg !17138

bb.bx:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.ue = fadd nnan ninf double %i.tm, -1.000000e+00, !dbg !17139
  %i.uf = fmul double %6, %i.ue, !dbg !17140      ; 2 uses
  %i.ug = call double @llvm.floor.f64(double %i.uf), !dbg !17141
  %i.uh = call i64 @llvm.fptoui.sat.i64.f64(double %i.ug), !dbg !17140
  %i.ui = add i64 %i.tl, -1, !dbg !17142
  %.sroa.0.0.i27.i = call noundef i64 @llvm.umin.i64(i64 %i.ui, i64 %i.uh), !dbg !17143 ; 2 uses
  %i.uj = call double @llvm.ceil.f64(double %i.uf), !dbg !17144
  %i.uk = call i64 @llvm.fptoui.sat.i64.f64(double %i.uj), !dbg !17145 ; 2 uses
  %i.ul = add i64 %.sroa.0.0.i27.i, %i.tk, !dbg !17146
  %i.um = invoke fastcc noundef double @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.ul)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17146 ; 2 uses

.noexc95:                                         ; preds = %bb.bx
  %i.un = icmp eq i64 %i.uk, %.sroa.0.0.i27.i, !dbg !17147
  br i1 %i.un, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ca, !dbg !17147

bb.by:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.uo = fadd nnan ninf double %i.tm, -1.000000e+00, !dbg !17148
  %i.up = fmul double %6, %i.uo, !dbg !17148      ; 3 uses
  %i.uq = call double @llvm.floor.f64(double %i.up), !dbg !17149
  %i.ur = call i64 @llvm.fptoui.sat.i64.f64(double %i.uq), !dbg !17150 ; 3 uses
  %i.us = call double @llvm.ceil.f64(double %i.up), !dbg !17151
  %i.ut = call i64 @llvm.fptoui.sat.i64.f64(double %i.us), !dbg !17152 ; 2 uses
  %i.uu = add i64 %i.ur, %i.tk, !dbg !17153
  %i.uv = invoke fastcc noundef double @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.uu)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17153 ; 3 uses

.noexc96:                                         ; preds = %bb.by
  %i.uw = icmp eq i64 %i.ur, %i.ut, !dbg !17154
  br i1 %i.uw, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.cb, !dbg !17154

bb.bz:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSdE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.ux = fmul double %6, %i.tm, !dbg !17155
  %i.uy = call double @llvm.ceil.f64(double %i.ux), !dbg !17156
  %i.uz = fadd double %i.uy, -1.000000e+00, !dbg !17157
  %i.va = call nsz double @llvm.maximumnum.f64(double %i.uz, double 0.000000e+00), !dbg !17158
  %i.vb = call i64 @llvm.fptoui.sat.i64.f64(double %i.va), !dbg !17157
  br label %.invoke177, !dbg !17159

bb.ca:                                            ; preds = %.noexc95
  %i.vc = add i64 %i.uk, %i.tk, !dbg !17160
  %i.vd = invoke fastcc noundef double @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.vc)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17161

.noexc98:                                         ; preds = %bb.ca
  %i.ve = fadd double %i.um, %i.vd, !dbg !17162
  %i.vf = fmul double %i.ve, 5.000000e-01, !dbg !17163
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !17164

bb.cb:                                            ; preds = %.noexc96
  %i.vg = add i64 %i.ut, %i.tk, !dbg !17165
  %i.vh = invoke fastcc noundef double @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSdENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.vg)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17166

.noexc99:                                         ; preds = %bb.cb
  %i.vi = uitofp i64 %i.ur to double, !dbg !17167
  %i.vj = fsub double %i.up, %i.vi, !dbg !17168
  %i.vk = fsub double %i.vh, %i.uv, !dbg !17169
  %i.vl = fmul double %i.vj, %i.vk, !dbg !17170
  %i.vm = fadd double %i.uv, %i.vl, !dbg !17171
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !17172

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke177, %.noexc99, %.noexc98, %.noexc96, %.noexc95
  %.sroa.0.0.i90 = phi double [ %i.uv, %.noexc96 ], [ %i.tt, %.invoke177 ], [ %i.um, %.noexc95 ], [ %i.vm, %.noexc99 ], [ %i.vf, %.noexc98 ], !dbg !17126
  %i.vn = load i64, ptr %i.dx, align 8, !dbg !17173, !alias.scope !16674, !noundef !3509 ; 3 uses
  %i.vo = load i64, ptr %i.e, align 8, !dbg !17174, !range !3583, !alias.scope !16674, !noundef !3509
  %i.vp = icmp eq i64 %i.vn, %i.vo, !dbg !17175
  br i1 %i.vp, label %bb.cc, label %bb.cd, !dbg !17175

bb.cc:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecdE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !17176

bb.cd:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSdEE8quantileCskY9G75ZWc4U_11polars_expr.exit, %bb.cc
  %i.vq = load ptr, ptr %i.dy, align 8, !dbg !17177, !alias.scope !16674, !nonnull !3509, !noundef !3509
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vq, i64 %i.vn, !dbg !17178
  store double %.sroa.0.0.i90, ptr %i.vr, align 8, !dbg !17179
  %i.vs = add i64 %i.vn, 1, !dbg !17180
  store i64 %i.vs, ptr %i.dx, align 8, !dbg !17180, !alias.scope !16674
  %exitcond.not = icmp eq i64 %i.eo, %.val29, !dbg !16737
  br i1 %exitcond.not, label %.lr.ph131, label %bb.l, !dbg !16587

bb.ce:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body84, %.body79, %.body75, %.body71, %.body, %bb.b
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !17181
  unreachable, !dbg !17181
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filter16rolling_quantileRSfINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i8 noundef range(i8 0, 6) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5, double noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17182 !guid !17858 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 8                ; 20 uses
  %i.d = alloca [96 x i8], align 8                ; 31 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  store ptr %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %5, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !17984
  store i64 0, ptr %i.k, align 8, !dbg !17985
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !17985
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !dbg !17985
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !17985
  store i64 0, ptr %i.o, align 8, !dbg !17985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !17986
  store i64 0, ptr %i.j, align 8, !dbg !17987
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !17987
  store ptr inttoptr (i64 4 to ptr), ptr %i.p, align 8, !dbg !17987
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !17987
  store i64 0, ptr %i.q, align 8, !dbg !17987
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !17988
  store i64 0, ptr %i.i, align 8, !dbg !17989
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !17989
  store ptr inttoptr (i64 4 to ptr), ptr %i.r, align 8, !dbg !17989
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !17989
  store i64 0, ptr %i.s, align 8, !dbg !17989
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !17990
  store i64 0, ptr %i.h, align 8, !dbg !17991
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !17991
  store ptr inttoptr (i64 1 to ptr), ptr %i.t, align 8, !dbg !17991
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !17991
  store i64 0, ptr %i.u, align 8, !dbg !17991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !17992
  store i64 0, ptr %i.g, align 8, !dbg !17993
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !17993
  store ptr inttoptr (i64 4 to ptr), ptr %i.v, align 8, !dbg !17993
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !17993
  store i64 0, ptr %i.w, align 8, !dbg !17993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !17994
  store i64 0, ptr %i.f, align 8, !dbg !17995
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !17995
  store ptr inttoptr (i64 4 to ptr), ptr %i.x, align 8, !dbg !17995
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !17995
  store i64 0, ptr %i.y, align 8, !dbg !17995
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %5, i64 %3), !dbg !17996 ; 5 uses
  %i.z = invoke { ptr, i64 } @_RNvXNtCs2mZqlW55729_12polars_utils5sliceRSfNtB2_9SliceAble5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, i64 noundef 0, i64 noundef %.sroa.0.0.i)
          to label %bb.d unwind label %bb.c, !dbg !17997 ; 2 uses

bb.b:                                             ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp199, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.f) #52
          to label %.body unwind label %bb.ce, !dbg !17998

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.ab = extractvalue { ptr, i64 } %i.z, 0, !dbg !17999
  %i.ac = extractvalue { ptr, i64 } %i.z, 1, !dbg !17999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18000
  invoke void @_RNvYINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEINtNtCs8774dFTUdNv_12polars_arrow8pushable8PushablefE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %5)
          to label %bb.e unwind label %bb.c, !dbg !18001

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %.sroa.0.0.i, 0, !dbg !18002
  br i1 %i.ad, label %bb.g, label %bb.f, !dbg !18002

bb.f:                                             ; preds = %bb.e
  %i.ae = udiv i64 %5, %.sroa.0.0.i, !dbg !18002
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18003
  invoke fastcc void @_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ac, ptr noalias noundef align 8 dereferenceable(24) %i.k, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18004

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #55
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18002

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18005
  %i.af = invoke { ptr, i64 } @_RNvXNtCs2mZqlW55729_12polars_utils5sliceRSfNtB2_9SliceAble5sliceCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, i64 noundef 0, i64 noundef 1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18006 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.ag = extractvalue { ptr, i64 } %i.af, 0, !dbg !18007
  %i.ah = extractvalue { ptr, i64 } %i.af, 1, !dbg !18007
  invoke fastcc void @_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.ag, i64 noundef %i.ah, ptr noalias noundef align 8 dereferenceable(24) %i.h, ptr noalias noundef align 8 dereferenceable(24) %i.g, ptr noalias noundef align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18008

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !17866), !dbg !18009
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !18010
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !18010, !alias.scope !17866, !noundef !3509 ; 5 uses
  %.not5.i = icmp eq i64 %i.aj, 0, !dbg !18011
  br i1 %.not5.i, label %.loopexit122, label %.lr.ph.i, !dbg !18012

.lr.ph.i:                                         ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !17866, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val4.i = load ptr, ptr %i.al, align 8, !alias.scope !17866, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val4.i, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val4.i, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %xtraiter = and i64 %i.aj, 1, !dbg !18012
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !18012
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa, !dbg !18012

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.aq = add nsw i64 %i.aj, -1, !dbg !18013      ; 9 uses
  %i.ar = load ptr, ptr %i.am, align 8, !dbg !18014, !noalias !17866, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.as = load i64, ptr %i.an, align 8, !dbg !18015, !noalias !17866, !noundef !3509
  %i.at = icmp ult i64 %i.aq, %i.as, !dbg !18016
  call void @llvm.assume(i1 %i.at), !dbg !18017
end_hunk_1
begin_hunk_2_@_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filter16rolling_quantileRSfINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEECskY9G75ZWc4U_11polars_expr:bb.a
bb.ad:                                            ; preds = %bb.ab
  unreachable, !dbg !18240

bb.ae:                                            ; preds = %bb.ab
  %i.mz = add i64 %i.kv, -1, !dbg !18241
  store i64 %i.mz, ptr %i.eh, align 8, !dbg !18241, !alias.scope !17939
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !18241

bb.af:                                            ; preds = %bb.ab
  %.not.i48 = icmp ult i64 %i.mi, %i.kv, !dbg !18242
  br i1 %.not.i48, label %bb.ag, label %bb.ah, !dbg !18242

bb.ag:                                            ; preds = %bb.af
  %i.na = load ptr, ptr %i.lo, align 8, !dbg !18243, !noalias !17939, !nonnull !3509, !noundef !3509
  %i.nb = load i64, ptr %i.lp, align 8, !dbg !18244, !noalias !17939, !noundef !3509
  %i.nc = icmp ult i64 %i.ky, %i.nb, !dbg !18245
  call void @llvm.assume(i1 %i.nc), !dbg !18246
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.ky, !dbg !18247
  %i.ne = load i32, ptr %i.nd, align 4, !dbg !18248, !noalias !17939, !noundef !3509
  %i.nf = zext i32 %i.ne to i64, !dbg !18249
  store i64 %i.nf, ptr %i.dq, align 8, !dbg !18249, !alias.scope !17939
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !18250

bb.ah:                                            ; preds = %bb.af
  %i.ng = load ptr, ptr %i.lh, align 8, !dbg !18251, !noalias !17939, !nonnull !3509, !noundef !3509
  %i.nh = load i64, ptr %i.lj, align 8, !dbg !18252, !noalias !17939, !noundef !3509
  %i.ni = icmp ult i64 %i.ky, %i.nh, !dbg !18253
  call void @llvm.assume(i1 %i.ni), !dbg !18254
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.ky, !dbg !18255
  %i.nk = load i32, ptr %i.nj, align 4, !dbg !18256, !noalias !17939, !noundef !3509
  %i.nl = zext i32 %i.nk to i64, !dbg !18256      ; 2 uses
  %i.nm = icmp ne i64 %i.kr, %i.nl, !dbg !18257
  %.not7.i = icmp eq i64 %i.mi, 0
  %or.cond8.i = or i1 %.not7.i, %i.nm, !dbg !18257
  br i1 %or.cond8.i, label %bb.ai, label %bb.aj, !dbg !18257

bb.ai:                                            ; preds = %bb.ah
  store i64 %i.nl, ptr %i.dq, align 8, !dbg !18258, !alias.scope !17939
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !18259

bb.aj:                                            ; preds = %bb.ah
  %i.nn = add i64 %i.kv, -1, !dbg !18260
  store i64 %i.nn, ptr %i.eh, align 8, !dbg !18260, !alias.scope !17939
  %i.no = load ptr, ptr %i.lo, align 8, !dbg !18261, !noalias !17939, !nonnull !3509, !noundef !3509
  %i.np = load i64, ptr %i.lp, align 8, !dbg !18262, !noalias !17939, !noundef !3509
  %i.nq = icmp ult i64 %i.ky, %i.np, !dbg !18263
  call void @llvm.assume(i1 %i.nq), !dbg !18264
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.no, i64 %i.ky, !dbg !18265
  %i.ns = load i32, ptr %i.nr, align 4, !dbg !18266, !noalias !17939, !noundef !3509
  %i.nt = zext i32 %i.ns to i64, !dbg !18267
  store i64 %i.nt, ptr %i.dq, align 8, !dbg !18267, !alias.scope !17939
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !18259

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !17959), !dbg !18268
  %i.nu = load i64, ptr %i.ef, align 8, !dbg !18269, !alias.scope !17959, !noundef !3509 ; 2 uses
  %i.nv = icmp eq i64 %i.nu, 0, !dbg !18270       ; 2 uses
  br i1 %i.nv, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, label %bb.ak, !dbg !18270

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit
  %.val.i50.pre = load ptr, ptr %i.eb, align 8, !dbg !18271, !alias.scope !17959
  br label %bb.al, !dbg !18270

bb.ak:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit
  %i.nw = load i64, ptr %i.ee, align 8, !dbg !18272, !alias.scope !17959, !noundef !3509 ; 3 uses
  %i.nx = load i64, ptr %i.ed, align 8, !dbg !18273, !alias.scope !17959, !noundef !3509
  %i.ny = icmp eq i64 %i.nw, %i.nx, !dbg !18272
  %i.nz = load i64, ptr %i.ej, align 8, !alias.scope !17959 ; 2 uses
  %i.oa = icmp ne i64 %i.nz, 0
  %or.cond.i49 = select i1 %i.ny, i1 %i.oa, i1 false, !dbg !18274
  %.val.i50.pre147 = load ptr, ptr %i.eb, align 8, !dbg !18271, !alias.scope !17959 ; 4 uses
  br i1 %or.cond.i49, label %bb.am, label %bb.al, !dbg !18274

bb.al:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge, %bb.am, %bb.ak
  %.val.i50 = phi ptr [ %.val.i50.pre, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE6deleteCskY9G75ZWc4U_11polars_expr.exit._crit_edge ], [ %.val.i50.pre147, %bb.am ], [ %.val.i50.pre147, %bb.ak ], !dbg !18271 ; 2 uses
  %.val7.i51 = load ptr, ptr %i.ec, align 8, !dbg !18271, !alias.scope !17959, !nonnull !3509, !align !3639, !noundef !3509 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 8, !dbg !18275 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !dbg !18275, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.od = getelementptr inbounds nuw i8, ptr %.val.i50, i64 8, !dbg !18276 ; 3 uses
  %i.oe = load ptr, ptr %i.od, align 8, !dbg !18276, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.of = getelementptr inbounds nuw i8, ptr %.val.i50, i64 16, !dbg !18277 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !dbg !18277, !noalias !17959, !noundef !3509
  %i.oh = icmp ult i64 %.sroa.012.0127, %i.og, !dbg !18278
  call void @llvm.assume(i1 %i.oh), !dbg !18279
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.sroa.012.0127, !dbg !18280
  %i.oj = load i32, ptr %i.oi, align 4, !dbg !18281, !noalias !17959, !noundef !3509
  %i.ok = zext i32 %i.oj to i64, !dbg !18281
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ok, !dbg !18282
  store i32 %i.lc, ptr %i.ol, align 4, !dbg !18283, !noalias !17959
  %i.om = load ptr, ptr %i.od, align 8, !dbg !18284, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.on = load ptr, ptr %i.ob, align 8, !dbg !18285, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.oo = getelementptr inbounds nuw i8, ptr %.val7.i51, i64 16, !dbg !18286
  %i.op = load i64, ptr %i.oo, align 8, !dbg !18286, !noalias !17959, !noundef !3509
  %i.oq = icmp ult i64 %.sroa.012.0127, %i.op, !dbg !18287
  call void @llvm.assume(i1 %i.oq), !dbg !18288
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.012.0127, !dbg !18289
  %i.os = load i32, ptr %i.or, align 4, !dbg !18290, !noalias !17959, !noundef !3509
  %i.ot = zext i32 %i.os to i64, !dbg !18290
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %i.ot, !dbg !18291
  store i32 %i.lc, ptr %i.ou, align 4, !dbg !18292, !noalias !17959
  br i1 %i.nv, label %bb.an, label %bb.ao, !dbg !18293

bb.am:                                            ; preds = %bb.ak
  %i.ov = add i64 %i.nz, -1, !dbg !18294
  store i64 %i.ov, ptr %i.ej, align 8, !dbg !18294, !alias.scope !17959
  %i.ow = getelementptr inbounds nuw i8, ptr %.val.i50.pre147, i64 8, !dbg !18295
  %i.ox = load ptr, ptr %i.ow, align 8, !dbg !18295, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.oy = getelementptr inbounds nuw i8, ptr %.val.i50.pre147, i64 16, !dbg !18296
  %i.oz = load i64, ptr %i.oy, align 8, !dbg !18296, !noalias !17959, !noundef !3509
  %i.pa = icmp ult i64 %i.nw, %i.oz, !dbg !18297
  call void @llvm.assume(i1 %i.pa), !dbg !18298
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.nw, !dbg !18299
  %i.pc = load i32, ptr %i.pb, align 4, !dbg !18300, !noalias !17959, !noundef !3509
  %i.pd = zext i32 %i.pc to i64, !dbg !18300
  store i64 %i.pd, ptr %i.ee, align 8, !dbg !18301, !alias.scope !17959
  br label %bb.al, !dbg !18302

bb.an:                                            ; preds = %bb.al
  %i.pe = load i64, ptr %i.ee, align 8, !dbg !18303, !alias.scope !17959, !noundef !3509 ; 3 uses
  %i.pf = load i64, ptr %i.of, align 8, !dbg !18304, !noalias !17959, !noundef !3509 ; 2 uses
  %i.pg = icmp ult i64 %i.pe, %i.pf, !dbg !18305
  br i1 %i.pg, label %bb.ap, label %.invoke178, !dbg !18305

bb.ao:                                            ; preds = %bb.al
  %.val10.i52 = load ptr, ptr %i.c, align 8, !dbg !18306, !alias.scope !17959, !nonnull !3509, !align !3810, !noundef !3509 ; 2 uses
  %.val11.i53 = load i64, ptr %i.eg, align 8, !dbg !18306, !alias.scope !17959, !noundef !3509 ; 2 uses
  %i.ph = icmp ult i64 %.sroa.012.0127, %.val11.i53, !dbg !18307
  call void @llvm.assume(i1 %i.ph), !dbg !18308
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.val10.i52, i64 %.sroa.012.0127, !dbg !18309
  %i.pj = load float, ptr %i.pi, align 4, !dbg !18310, !noalias !17959, !noundef !3509 ; 3 uses
  %i.pk = load i64, ptr %i.ee, align 8, !dbg !18311, !alias.scope !17959, !noundef !3509 ; 3 uses
  %i.pl = icmp ult i64 %i.pk, %.val11.i53, !dbg !18312
  call void @llvm.assume(i1 %i.pl), !dbg !18313
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.val10.i52, i64 %i.pk, !dbg !18314
  %i.pn = load float, ptr %i.pm, align 4, !dbg !18315, !noalias !17959, !noundef !3509 ; 3 uses
  %i.po = trunc i64 %i.pk to i32, !dbg !18316
  %i.pp = add i64 %i.nu, 1, !dbg !18317           ; 3 uses
  store i64 %i.pp, ptr %i.ef, align 8, !dbg !18317, !alias.scope !17959
  %i.pq = fcmp ord float %i.pj, 0.000000e+00, !dbg !18318
  %i.pr = fcmp ult float %i.pj, %i.pn, !dbg !18319
  %.not2.i.i54 = and i1 %i.pq, %i.pr, !dbg !18320
  %i.ps = icmp ult i32 %i.lc, %i.po, !dbg !18321
  %i.pt = fcmp uno float %i.pn, 0.000000e+00, !dbg !18322
  %i.pu = fcmp oge float %i.pn, %i.pj, !dbg !18322
  %i.pv = or i1 %i.pt, %i.pu, !dbg !18322
  %i.pw = and i1 %i.ps, %i.pv, !dbg !18322
  %i.px = or i1 %.not2.i.i54, %i.pw, !dbg !18322
  br i1 %i.px, label %bb.aq, label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56, !dbg !18321

bb.ap:                                            ; preds = %bb.an
  %i.py = load ptr, ptr %i.od, align 8, !dbg !18323, !noalias !17959, !nonnull !3509, !noundef !3509
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.pe, !dbg !18324
  %i.qa = load i32, ptr %i.pz, align 4, !dbg !18325, !noalias !17959, !noundef !3509
  %i.qb = zext i32 %i.qa to i64, !dbg !18326
  store i64 %i.qb, ptr %i.ee, align 8, !dbg !18326, !alias.scope !17959
  store i64 1, ptr %i.ef, align 8, !dbg !18327, !alias.scope !17959
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, !dbg !18328

.invoke178:                                       ; preds = %bb.p, %bb.an
  %i.qc = phi i64 [ %i.pe, %bb.an ], [ %i.ga, %bb.p ]
  %i.qd = phi i64 [ %i.pf, %bb.an ], [ %i.gb, %bb.p ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.qc, i64 noundef %i.qd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #50
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18329

.cont:                                            ; preds = %.invoke178
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.qe = load i64, ptr %i.ej, align 8, !dbg !18330, !alias.scope !17959, !noundef !3509
  %i.qf = add i64 %i.qe, 1, !dbg !18330
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, !dbg !18330

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split: ; preds = %bb.ap, %bb.aq
  %.sink = phi i64 [ %i.qf, %bb.aq ], [ 0, %bb.ap ]
  %.ph = phi i64 [ %i.pp, %bb.aq ], [ 1, %bb.ap ]
  store i64 %.sink, ptr %i.ej, align 8, !dbg !18331, !alias.scope !17959
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56, !dbg !18332

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split, %bb.ao
  %i.qg = phi i64 [ %i.pp, %bb.ao ], [ %.ph, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56.sink.split ], !dbg !18333
  %i.qh = load i64, ptr %i.ek, align 8, !dbg !18332, !noalias !17960, !noundef !3509
  %i.qi = load i64, ptr %i.el, align 8, !dbg !18334, !noalias !17960, !noundef !3509
  %i.qj = add i64 %i.qi, %i.qh, !dbg !18332       ; 6 uses
  %i.qk = load i64, ptr %i.dr, align 8, !dbg !18335, !noalias !17960, !noundef !3509
  %i.ql = sub i64 %i.qk, %i.qj, !dbg !18335
  %i.qm = add i64 %i.ql, %i.qg, !dbg !18336       ; 5 uses
  %i.qn = uitofp i64 %i.qm to double, !dbg !18337 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
    i8 5, label %bb.aw
  ], !dbg !18338

default.unreachable:                              ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  unreachable

bb.ar:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qo = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !18339
  %i.qp = fmul double %6, %i.qo, !dbg !18340
  %i.qq = call double @llvm.round.f64(double %i.qp), !dbg !18341
  %i.qr = call i64 @llvm.fptoui.sat.i64.f64(double %i.qq), !dbg !18340
  %i.qs = add i64 %i.qm, -1, !dbg !18342
  %.sroa.0.0.i.i59 = call noundef i64 @llvm.umin.i64(i64 %i.qs, i64 %i.qr), !dbg !18343
  br label %.invoke, !dbg !18344

bb.as:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qt = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !18345
  %i.qu = fmul double %6, %i.qt, !dbg !18346
  %i.qv = call double @llvm.floor.f64(double %i.qu), !dbg !18347
  %i.qw = call i64 @llvm.fptoui.sat.i64.f64(double %i.qv), !dbg !18346
  %i.qx = add i64 %i.qm, -1, !dbg !18348
  %.sroa.0.0.i37.i = call noundef i64 @llvm.umin.i64(i64 %i.qx, i64 %i.qw), !dbg !18349
  br label %.invoke, !dbg !18350

bb.at:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.qy = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !18351
  %i.qz = fmul double %6, %i.qy, !dbg !18352
  %i.ra = call double @llvm.ceil.f64(double %i.qz), !dbg !18353
  %i.rb = call i64 @llvm.fptoui.sat.i64.f64(double %i.ra), !dbg !18352
  %i.rc = add i64 %i.qm, -1, !dbg !18354
  %.sroa.0.0.i38.i = call noundef i64 @llvm.umin.i64(i64 %i.rc, i64 %i.rb), !dbg !18355
  br label %.invoke, !dbg !18356

bb.au:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rd = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !18357
  %i.re = fmul double %6, %i.rd, !dbg !18358      ; 2 uses
  %i.rf = call double @llvm.floor.f64(double %i.re), !dbg !18359
  %i.rg = call i64 @llvm.fptoui.sat.i64.f64(double %i.rf), !dbg !18358
  %i.rh = add i64 %i.qm, -1, !dbg !18360
  %.sroa.0.0.i39.i = call noundef i64 @llvm.umin.i64(i64 %i.rh, i64 %i.rg), !dbg !18361 ; 2 uses
  %i.ri = call double @llvm.ceil.f64(double %i.re), !dbg !18362
  %i.rj = call i64 @llvm.fptoui.sat.i64.f64(double %i.ri), !dbg !18363 ; 2 uses
  %i.rk = add i64 %.sroa.0.0.i39.i, %i.qj, !dbg !18364
  %i.rl = invoke fastcc noundef float @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.rk)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18364 ; 2 uses

.noexc63:                                         ; preds = %bb.au
  %i.rm = icmp eq i64 %i.rj, %.sroa.0.0.i39.i, !dbg !18365
  br i1 %i.rm, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ax, !dbg !18365

bb.av:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rn = fadd nnan ninf double %i.qn, -1.000000e+00, !dbg !18366
  %i.ro = fmul double %6, %i.rn, !dbg !18366      ; 3 uses
  %i.rp = call double @llvm.floor.f64(double %i.ro), !dbg !18367
  %i.rq = call i64 @llvm.fptoui.sat.i64.f64(double %i.rp), !dbg !18368 ; 3 uses
  %i.rr = call double @llvm.ceil.f64(double %i.ro), !dbg !18369
  %i.rs = call i64 @llvm.fptoui.sat.i64.f64(double %i.rr), !dbg !18370 ; 2 uses
  %i.rt = add i64 %i.rq, %i.qj, !dbg !18371
  %i.ru = invoke fastcc noundef float @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.rt)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18371 ; 3 uses

.noexc64:                                         ; preds = %bb.av
  %i.rv = icmp eq i64 %i.rq, %i.rs, !dbg !18372
  br i1 %i.rv, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ay, !dbg !18372

bb.aw:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit56
  %i.rw = fmul double %6, %i.qn, !dbg !18373
  %i.rx = call double @llvm.ceil.f64(double %i.rw), !dbg !18374
  %i.ry = fadd double %i.rx, -1.000000e+00, !dbg !18375
  %i.rz = call nsz double @llvm.maximumnum.f64(double %i.ry, double 0.000000e+00), !dbg !18376
  %i.sa = call i64 @llvm.fptoui.sat.i64.f64(double %i.rz), !dbg !18375
  br label %.invoke, !dbg !18377

.invoke:                                          ; preds = %bb.ar, %bb.as, %bb.at, %bb.aw
  %.sroa.0.0.i.i59.sink = phi i64 [ %.sroa.0.0.i.i59, %bb.ar ], [ %.sroa.0.0.i37.i, %bb.as ], [ %.sroa.0.0.i38.i, %bb.at ], [ %i.sa, %bb.aw ]
  %i.sb = add i64 %.sroa.0.0.i.i59.sink, %i.qj, !dbg !18378
  %i.sc = invoke fastcc noundef float @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sb)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18378

bb.ax:                                            ; preds = %.noexc63
  %i.sd = add i64 %i.rj, %i.qj, !dbg !18379
  %i.se = invoke fastcc noundef float @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sd)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18380

.noexc66:                                         ; preds = %bb.ax
  %i.sf = fadd float %i.rl, %i.se, !dbg !18381
  %i.sg = fmul float %i.sf, 5.000000e-01, !dbg !18382
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !18383

bb.ay:                                            ; preds = %.noexc64
  %i.sh = add i64 %i.rs, %i.qj, !dbg !18384
  %i.si = invoke fastcc noundef float @_RNvXs2_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_10BlockUnionRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, ptr nonnull %i.c, i64 noundef %i.sh)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18385

.noexc67:                                         ; preds = %bb.ay
  %i.sj = uitofp i64 %i.rq to double, !dbg !18386
  %i.sk = fsub double %i.ro, %i.sj, !dbg !18387
  %i.sl = fptrunc double %i.sk to float, !dbg !18388
  %i.sm = fsub float %i.si, %i.ru, !dbg !18389
  %i.sn = fmul float %i.sm, %i.sl, !dbg !18390
  %i.so = fadd float %i.ru, %i.sn, !dbg !18391
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !18392

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke, %.noexc67, %.noexc66, %.noexc64, %.noexc63
  %.sroa.0.0.i58 = phi float [ %i.ru, %.noexc64 ], [ %i.rl, %.noexc63 ], [ %i.so, %.noexc67 ], [ %i.sc, %.invoke ], [ %i.sg, %.noexc66 ], !dbg !18378
  %i.sp = load i64, ptr %i.em, align 8, !dbg !18393, !alias.scope !17975, !noundef !3509 ; 3 uses
  %i.sq = load i64, ptr %i.e, align 8, !dbg !18394, !range !3583, !alias.scope !17975, !noundef !3509
  %i.sr = icmp eq i64 %i.sp, %i.sq, !dbg !18395
  br i1 %i.sr, label %bb.az, label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEINtB4_8PushablefE4pushCskY9G75ZWc4U_11polars_expr.exit, !dbg !18395

bb.az:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEINtB4_8PushablefE4pushCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18396

_RNvXs_NtCs8774dFTUdNv_12polars_arrow8pushableINtNtCsgZ49sUHp3tW_5alloc3vec3VecfEINtB4_8PushablefE4pushCskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.az, %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateINtB5_10BlockUnionRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  %i.ss = load ptr, ptr %i.en, align 8, !dbg !18397, !alias.scope !17975, !nonnull !3509, !noundef !3509
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.sp, !dbg !18398
  store float %.sroa.0.0.i58, ptr %i.st, align 4, !dbg !18399
  %i.su = add i64 %i.sp, 1, !dbg !18400
  store i64 %i.su, ptr %i.em, align 8, !dbg !18400, !alias.scope !17975
  %exitcond143.not = icmp eq i64 %i.kp, %.val, !dbg !18171
  br i1 %exitcond143.not, label %._crit_edge, label %.lr.ph128, !dbg !18172

bb.ba:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18175
  br label %.loopexit116, !dbg !18401

.body:                                            ; preds = %bb.bb, %bb.t, %bb.b
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.b ], [ %i.sv, %bb.bb ], [ %i.ha, %bb.t ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #52
          to label %.body71 unwind label %bb.ce, !dbg !18402

bb.bb:                                            ; preds = %bb.u
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !17998
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.bd unwind label %bb.bc, !dbg !18403

bb.bc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  %i.sw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body71 unwind label %bb.be, !dbg !18404

bb.bd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73 unwind label %bb.bf, !dbg !18405

bb.be:                                            ; preds = %bb.bc
  %i.sx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18403
  unreachable, !dbg !18403

.body71:                                          ; preds = %bb.bf, %bb.bc, %.body
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.sy, %bb.bf ], [ %i.sw, %bb.bc ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.h) #52
          to label %.body75 unwind label %bb.ce, !dbg !18406

bb.bf:                                            ; preds = %bb.bd
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body71

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73: ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18402
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bh unwind label %bb.bg, !dbg !18407

bb.bg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73
  %i.sz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body75 unwind label %bb.bi, !dbg !18408

bb.bh:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit73
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.bj, !dbg !18409

bb.bi:                                            ; preds = %bb.bg
  %i.ta = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18407
  unreachable, !dbg !18407

.body75:                                          ; preds = %bb.bj, %bb.bg, %.body71
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %.body71 ], [ %i.tb, %bb.bj ], [ %i.sz, %bb.bg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #52
          to label %.body79 unwind label %bb.ce, !dbg !18410

bb.bj:                                            ; preds = %bb.bh
  %i.tb = landingpad { ptr, i32 }
          cleanup
  br label %.body75

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18406
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.bl unwind label %bb.bk, !dbg !18411

bb.bk:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  %i.tc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body79 unwind label %bb.bm, !dbg !18412

bb.bl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81 unwind label %bb.bn, !dbg !18413

bb.bm:                                            ; preds = %bb.bk
  %i.td = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18411
  unreachable, !dbg !18411

.body79:                                          ; preds = %bb.bn, %bb.bk, %.body75
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %.body75 ], [ %i.te, %bb.bn ], [ %i.tc, %bb.bk ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #52
          to label %.body84 unwind label %bb.ce, !dbg !18414

bb.bn:                                            ; preds = %bb.bl
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %.body79

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18410
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bp unwind label %bb.bo, !dbg !18415

bb.bo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81
  %i.tf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body84 unwind label %bb.bq, !dbg !18416

bb.bp:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit81
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86 unwind label %bb.br, !dbg !18417

bb.bq:                                            ; preds = %bb.bo
  %i.tg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18415
  unreachable, !dbg !18415

.body84:                                          ; preds = %bb.br, %bb.bo, %.body79
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %.body79 ], [ %i.th, %bb.br ], [ %i.tf, %bb.bo ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.k) #52
          to label %common.resume unwind label %bb.ce, !dbg !18418

bb.br:                                            ; preds = %bb.bp
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body84

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18414
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit88 unwind label %bb.bs, !dbg !18419

bb.bs:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86
  %i.ti = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.bt, !dbg !18420

bb.bt:                                            ; preds = %bb.bs
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18419
  unreachable, !dbg !18419

common.resume:                                    ; preds = %.body84, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.ti, %bb.bs ], [ %.pn.pn.pn.pn.pn.pn.pn, %.body84 ]
  resume { ptr, i32 } %common.resume.op, !dbg !18421

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECskY9G75ZWc4U_11polars_expr.exit88: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr.exit86
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !dbg !18422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18418
  ret void, !dbg !18423

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split: ; preds = %bb.r, %bb.s
  %.sink180 = phi i64 [ %i.gz, %bb.s ], [ 0, %bb.r ]
  %.ph179 = phi i64 [ %i.gl, %bb.s ], [ 1, %bb.r ]
  store i64 %.sink180, ptr %i.dt, align 8, !dbg !18424, !alias.scope !17898
  br label %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit, !dbg !18425

_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split, %bb.q
  %i.tk = phi i64 [ %i.gl, %bb.q ], [ %.ph179, %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit.sink.split ], !dbg !18426
  %i.tl = load i64, ptr %i.dw, align 8, !dbg !18425, !noalias !17977, !noundef !3509 ; 6 uses
  %i.tm = sub i64 %i.tk, %i.tl, !dbg !18427       ; 5 uses
  %i.tn = uitofp i64 %i.tm to double, !dbg !18428 ; 6 uses
  switch i8 %1, label %default.unreachable [
    i8 0, label %bb.bu
    i8 1, label %bb.bv
    i8 2, label %bb.bw
    i8 3, label %bb.bx
    i8 4, label %bb.by
    i8 5, label %bb.bz
  ], !dbg !18429

bb.bu:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.to = fadd nnan ninf double %i.tn, -1.000000e+00, !dbg !18430
  %i.tp = fmul double %6, %i.to, !dbg !18431
  %i.tq = call double @llvm.round.f64(double %i.tp), !dbg !18432
  %i.tr = call i64 @llvm.fptoui.sat.i64.f64(double %i.tq), !dbg !18431
  %i.ts = add i64 %i.tm, -1, !dbg !18433
  %.sroa.0.0.i.i91 = call noundef i64 @llvm.umin.i64(i64 %i.ts, i64 %i.tr), !dbg !18434
  br label %.invoke177, !dbg !18435

.invoke177:                                       ; preds = %bb.bz, %bb.bw, %bb.bv, %bb.bu
  %.sink181 = phi i64 [ %i.vc, %bb.bz ], [ %.sroa.0.0.i26.i, %bb.bw ], [ %.sroa.0.0.i25.i, %bb.bv ], [ %.sroa.0.0.i.i91, %bb.bu ]
  %i.tt = add i64 %.sink181, %i.tl, !dbg !18436
  %i.tu = invoke fastcc noundef float @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.tt)
          to label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18436

bb.bv:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.tv = fadd nnan ninf double %i.tn, -1.000000e+00, !dbg !18437
  %i.tw = fmul double %6, %i.tv, !dbg !18438
  %i.tx = call double @llvm.floor.f64(double %i.tw), !dbg !18439
  %i.ty = call i64 @llvm.fptoui.sat.i64.f64(double %i.tx), !dbg !18438
  %i.tz = add i64 %i.tm, -1, !dbg !18440
  %.sroa.0.0.i25.i = call noundef i64 @llvm.umin.i64(i64 %i.tz, i64 %i.ty), !dbg !18441
  br label %.invoke177, !dbg !18442

bb.bw:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.ua = fadd nnan ninf double %i.tn, -1.000000e+00, !dbg !18443
  %i.ub = fmul double %6, %i.ua, !dbg !18444
  %i.uc = call double @llvm.ceil.f64(double %i.ub), !dbg !18445
  %i.ud = call i64 @llvm.fptoui.sat.i64.f64(double %i.uc), !dbg !18444
  %i.ue = add i64 %i.tm, -1, !dbg !18446
  %.sroa.0.0.i26.i = call noundef i64 @llvm.umin.i64(i64 %i.ue, i64 %i.ud), !dbg !18447
  br label %.invoke177, !dbg !18448

bb.bx:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.uf = fadd nnan ninf double %i.tn, -1.000000e+00, !dbg !18449
  %i.ug = fmul double %6, %i.uf, !dbg !18450      ; 2 uses
  %i.uh = call double @llvm.floor.f64(double %i.ug), !dbg !18451
  %i.ui = call i64 @llvm.fptoui.sat.i64.f64(double %i.uh), !dbg !18450
  %i.uj = add i64 %i.tm, -1, !dbg !18452
  %.sroa.0.0.i27.i = call noundef i64 @llvm.umin.i64(i64 %i.uj, i64 %i.ui), !dbg !18453 ; 2 uses
  %i.uk = call double @llvm.ceil.f64(double %i.ug), !dbg !18454
  %i.ul = call i64 @llvm.fptoui.sat.i64.f64(double %i.uk), !dbg !18455 ; 2 uses
  %i.um = add i64 %.sroa.0.0.i27.i, %i.tl, !dbg !18456
  %i.un = invoke fastcc noundef float @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.um)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18456 ; 2 uses

.noexc95:                                         ; preds = %bb.bx
  %i.uo = icmp eq i64 %i.ul, %.sroa.0.0.i27.i, !dbg !18457
  br i1 %i.uo, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.ca, !dbg !18457

bb.by:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.up = fadd nnan ninf double %i.tn, -1.000000e+00, !dbg !18458
  %i.uq = fmul double %6, %i.up, !dbg !18458      ; 3 uses
  %i.ur = call double @llvm.floor.f64(double %i.uq), !dbg !18459
  %i.us = call i64 @llvm.fptoui.sat.i64.f64(double %i.ur), !dbg !18460 ; 3 uses
  %i.ut = call double @llvm.ceil.f64(double %i.uq), !dbg !18461
  %i.uu = call i64 @llvm.fptoui.sat.i64.f64(double %i.ut), !dbg !18462 ; 2 uses
  %i.uv = add i64 %i.us, %i.tl, !dbg !18463
  %i.uw = invoke fastcc noundef float @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.uv)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18463 ; 3 uses

.noexc96:                                         ; preds = %bb.by
  %i.ux = icmp eq i64 %i.us, %i.uu, !dbg !18464
  br i1 %i.ux, label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, label %bb.cb, !dbg !18464

bb.bz:                                            ; preds = %_RNvMs_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB4_5BlockRSfE8undeleteCskY9G75ZWc4U_11polars_expr.exit
  %i.uy = fmul double %6, %i.tn, !dbg !18465
  %i.uz = call double @llvm.ceil.f64(double %i.uy), !dbg !18466
  %i.va = fadd double %i.uz, -1.000000e+00, !dbg !18467
  %i.vb = call nsz double @llvm.maximumnum.f64(double %i.va, double 0.000000e+00), !dbg !18468
  %i.vc = call i64 @llvm.fptoui.sat.i64.f64(double %i.vb), !dbg !18467
  br label %.invoke177, !dbg !18469

bb.ca:                                            ; preds = %.noexc95
  %i.vd = add i64 %i.ul, %i.tl, !dbg !18470
  %i.ve = invoke fastcc noundef float @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.vd)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18471

.noexc98:                                         ; preds = %bb.ca
  %i.vf = fadd float %i.un, %i.ve, !dbg !18472
  %i.vg = fmul float %i.vf, 5.000000e-01, !dbg !18473
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !18474

bb.cb:                                            ; preds = %.noexc96
  %i.vh = add i64 %i.uu, %i.tl, !dbg !18475
  %i.vi = invoke fastcc noundef float @_RNvXs0_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterQINtB5_5BlockRSfENtB5_6LenGet3getCskY9G75ZWc4U_11polars_expr(ptr nonnull %i.d, i64 noundef %i.vh)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18476

.noexc99:                                         ; preds = %bb.cb
  %i.vj = uitofp i64 %i.us to double, !dbg !18477
  %i.vk = fsub double %i.uq, %i.vj, !dbg !18478
  %i.vl = fptrunc double %i.vk to float, !dbg !18479
  %i.vm = fsub float %i.vi, %i.uw, !dbg !18480
  %i.vn = fmul float %i.vm, %i.vl, !dbg !18481
  %i.vo = fadd float %i.uw, %i.vn, !dbg !18482
  br label %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, !dbg !18483

_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit: ; preds = %.invoke177, %.noexc99, %.noexc98, %.noexc96, %.noexc95
  %.sroa.0.0.i90 = phi float [ %i.uw, %.noexc96 ], [ %i.tu, %.invoke177 ], [ %i.un, %.noexc95 ], [ %i.vo, %.noexc99 ], [ %i.vg, %.noexc98 ], !dbg !18436
  %i.vp = load i64, ptr %i.dx, align 8, !dbg !18484, !alias.scope !17983, !noundef !3509 ; 3 uses
  %i.vq = load i64, ptr %i.e, align 8, !dbg !18485, !range !3583, !alias.scope !17983, !noundef !3509
  %i.vr = icmp eq i64 %i.vp, %i.vq, !dbg !18486
  br i1 %i.vr, label %bb.cc, label %bb.cd, !dbg !18486

bb.cc:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecfE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !18487

bb.cd:                                            ; preds = %_RNvMsi_NtNtCslFlrwjHoTci_14polars_compute7rolling15quantile_filterINtB5_14QuantileUpdateQINtB5_5BlockRSfEE8quantileCskY9G75ZWc4U_11polars_expr.exit, %bb.cc
  %i.vs = load ptr, ptr %i.dy, align 8, !dbg !18488, !alias.scope !17983, !nonnull !3509, !noundef !3509
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.vp, !dbg !18489
  store float %.sroa.0.0.i90, ptr %i.vt, align 4, !dbg !18490
  %i.vu = add i64 %i.vp, 1, !dbg !18491
  store i64 %i.vu, ptr %i.dx, align 8, !dbg !18491, !alias.scope !17983
  %exitcond.not = icmp eq i64 %i.eo, %.val29, !dbg !18046
  br i1 %exitcond.not, label %.lr.ph131, label %bb.l, !dbg !17891

bb.ce:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body84, %.body79, %.body75, %.body71, %.body, %bb.b
  %i.vv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18492
  unreachable, !dbg !18492
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB2_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB4_4rank17RankPolicyAverageEB1D_dFjjjETjjEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noundef nonnull align 8 %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull %5, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18493 !guid !18576 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [88 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [88 x i8], align 8                ; 8 uses
  %i.r = alloca [8 x i8], align 8                 ; 3 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 2 uses
  %i.u = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %3, ptr %i.u, align 8
  store i64 %4, ptr %i.t, align 8
  store ptr %5, ptr %i.s, align 8
  store i64 %1, ptr %i.r, align 8, !dbg !18603
  %i.v = tail call { i64, i64 } %5(i64 noundef 0, i64 noundef %3, i64 noundef range(i64 0, -9223372036854775808) %1), !dbg !18604, !inline_history !833 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0, !dbg !18605
  %i.x = extractvalue { i64, i64 } %i.v, 1, !dbg !18605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !18606
  call void @_RNvXNtNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls4rankINtB2_10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEINtB4_21RollingAggWindowNullsB1d_dE3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.q, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull align 8 %2, i64 noundef %i.w, i64 noundef %i.x, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef 1, i64 %3), !dbg !18607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !18608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !18609
  invoke void @_RINvNtCslFlrwjHoTci_14polars_compute7rolling15create_validityFjjjETjjEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, i64 noundef %4, i64 noundef %1, i64 noundef %3, ptr noundef nonnull %5)
          to label %bb.b unwind label %.body, !dbg !18609

.body22:                                          ; preds = %bb.z, %.body, %bb.ae, %bb.g, %.thread58, %bb.j
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn31, %.thread58 ], [ %.pn.ph, %bb.j ], [ %i.bd, %.body ], [ %i.ak, %bb.g ], [ %i.bp, %bb.ae ], [ %i.bl, %bb.z ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtBN_4rank17RankPolicyAverageEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(88) %i.q) #52
          to label %common.resume unwind label %bb.al, !dbg !18610

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.o, align 8, !dbg !18611, !range !3572, !noundef !3509
  %.not = icmp eq i64 %i.y, -9223372036854775808, !dbg !18611
  br i1 %.not, label %bb.d, label %bb.c, !dbg !18612

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !18613
  br label %bb.i, !dbg !18614

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18615, !noalias !18578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18579), !dbg !18616
  %i.z = add nuw nsw i64 %1, 7, !dbg !18617
  %i.aa = lshr i64 %i.z, 3, !dbg !18618           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18619, !noalias !18580
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.body, !dbg !18619

.noexc:                                           ; preds = %bb.d
  %i.ab = load i64, ptr %i.b, align 8, !dbg !18619, !range !3569, !noalias !18580, !noundef !3509
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !18620
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18621
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !18621, !range !3572, !noalias !18580, !noundef !3509 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18621 ; 2 uses
  br i1 %i.ac, label %bb.e, label %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i, !dbg !18620, !prof !3571

bb.e:                                             ; preds = %.noexc
  %i.ag = load i64, ptr %i.af, align 8, !dbg !18622, !noalias !18580
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #55
          to label %.noexc21 unwind label %.body, !dbg !18623

.noexc21:                                         ; preds = %bb.e
  unreachable, !dbg !18623

_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i: ; preds = %.noexc
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !18624, !noalias !18580, !nonnull !3509, !noundef !3509
  %i.ai = icmp samesign ule i64 %i.aa, %i.ae, !dbg !18625
  tail call void @llvm.assume(i1 %i.ai), !dbg !18626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18627, !noalias !18580
  store i64 %i.ae, ptr %i.c, align 8, !dbg !18628, !alias.scope !18579, !noalias !18578
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18628
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !18628, !alias.scope !18579, !noalias !18578
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18628
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !dbg !18628, !alias.scope !18579, !noalias !18578
  %i.aj = icmp eq i64 %1, 0, !dbg !18629
  br i1 %i.aj, label %_RNCINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB4_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEB1F_dFjjjETjjEE0CskY9G75ZWc4U_11polars_expr.exit, label %bb.f, !dbg !18629

bb.f:                                             ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i
  invoke void @_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap10extend_set(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %1)
          to label %_RNCINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB4_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEB1F_dFjjjETjjEE0CskY9G75ZWc4U_11polars_expr.exit unwind label %bb.g, !dbg !18630, !noalias !18578

bb.g:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.c) #52
          to label %.body22 unwind label %bb.h, !dbg !18631, !noalias !18578

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #53, !dbg !18632, !noalias !18578
  unreachable, !dbg !18632

_RNCINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB4_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEB1F_dFjjjETjjEE0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMs0_NtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutableNtB5_13MutableBitmap13with_capacity.exit.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !18633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18631, !noalias !18578
  %.pre = load i64, ptr %i.r, align 8, !dbg !18634
  br label %bb.i, !dbg !18635

bb.i:                                             ; preds = %_RNCINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB4_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEB1F_dFjjjETjjEE0CskY9G75ZWc4U_11polars_expr.exit, %bb.c
  %i.am = phi i64 [ %.pre, %_RNCINvNtNtCslFlrwjHoTci_14polars_compute7rolling5nulls24rolling_apply_agg_windowINtNtB4_4rank10RankWindowNtNtCs2mZqlW55729_12polars_utils7float164pf16dNtNtB6_4rank17RankPolicyAverageEB1F_dFjjjETjjEE0CskY9G75ZWc4U_11polars_expr.exit ], [ %1, %bb.c ], !dbg !18634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !18636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !18637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !18634
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 48, !dbg !18638
  store i64 0, ptr %i.an, align 8, !dbg !18638
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 56, !dbg !18638
  store i64 %i.am, ptr %i.ao, align 8, !dbg !18638
  store ptr %i.s, ptr %i.m, align 8, !dbg !18638
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !18638
  store ptr %i.u, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !18638
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !18638
  store ptr %i.r, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18638
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !18638
  store ptr %i.q, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !18638
end_hunk_2

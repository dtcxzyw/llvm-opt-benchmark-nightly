Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row:bb.a
  %i.sn = shl i64 %i.sm, 1
  %i.so = add i64 %i.sn, -1
  %.sroa.04.0 = select i1 %i.sk, i64 %i.so, i64 %i.sm ; 5 uses
  %i.sp = icmp ugt i64 %.sroa.04.0, 1             ; 2 uses
  br i1 %i.sp, label %bb.cu, label %bb.da

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #57
          to label %bb.ct unwind label %.loopexit.split-lp485

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.sq = load ptr, ptr %i.am, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.sr = load i64, ptr %i.an, align 8, !noundef !41 ; 4 uses
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.sq, i64 %i.sr ; 2 uses
  %i.st = call i64 @llvm.usub.sat.i64(i64 %i.sr, i64 %i.sh) ; 2 uses
  %i.su = icmp ugt i64 %i.st, %.sroa.04.0
  br i1 %i.su, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.cv

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.cu
  %.neg.i111 = add nuw nsw i64 %.sroa.04.0, 1
  %.neg11.i = sub i64 %.neg.i111, %i.st           ; 2 uses
  %i.sv = getelementptr inbounds [32 x i8], ptr %i.ss, i64 %.neg11.i
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -32
  %i.sx = add i64 %i.sr, 576460752303423487
  %i.sy = add i64 %i.sx, %.neg11.i
  %.pre17.i = and i64 %i.sy, 576460752303423487
  br label %bb.cv

bb.cv:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.cu
  %.pre-phi18.i = phi i64 [ %.pre17.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.sr, %bb.cu ] ; 3 uses
  %.val13.i.i = phi ptr [ %i.sw, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.ss, %bb.cu ]
  %.not.i.i = icmp ugt i64 %.pre-phi18.i, %i.sh
  br i1 %.not.i.i, label %bb.cw, label %.backedge

bb.cw:                                            ; preds = %bb.cv
  %i.sz = sub nuw nsw i64 %.pre-phi18.i, %i.sh
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.ta = phi ptr [ %.val13.i.i, %bb.cw ], [ %i.tc, %bb.cy ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.sz, %bb.cw ], [ %i.te, %bb.cy ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %.pre-phi18.i, %bb.cw ], [ %i.td, %bb.cy ]
  %i.tb = icmp eq ptr %i.sq, %i.ta
  br i1 %i.tb, label %.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tc = getelementptr inbounds i8, ptr %i.ta, i64 -32 ; 2 uses
  %i.td = add i64 %.sroa.0.0.i.i.i.i, -1          ; 2 uses
  %i.te = add i64 %.sroa.3.0.i.i.i.i, -1          ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.tc, align 8, !alias.scope !29665, !noalias !29666
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0                    ; 2 uses
  %brmerge.i.i.i.i.i.i = select i1 %i.tf, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i, label %bb.cz, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  %not. = xor i1 %i.tf, true
  %i.tg = select i1 %not., i1 true, i1 %.not.i.i.i.i.i.i
  %.not74 = icmp eq i64 %i.td, %4
  %or.cond449 = select i1 %i.tg, i1 %.not74, i1 false
  br i1 %or.cond449, label %bb.da, label %.backedge

bb.da:                                            ; preds = %bb.cz, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.th = getelementptr i8, ptr %i.si, i64 48
  %.val87 = load i64, ptr %i.th, align 8          ; 2 uses
  %.val88 = load i64, ptr %i.sl, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29667)
  call void @llvm.experimental.noalias.scope.decl(metadata !29668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.ao, ptr %i.m, align 1, !noalias !29669
  %i.ti = shl i64 %.val88, 1
  %i.tj = add i64 %i.ti, -1
  %storemerge.i112 = select i1 %i.sk, i64 %i.tj, i64 %.val88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29669
  store i64 0, ptr %i.l, align 8, !noalias !29669
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !29669
  store i64 0, ptr %i.aq, align 8, !noalias !29669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29669
  store ptr %i.m, ptr %i.k, align 8, !noalias !29669
  store ptr %1, ptr %i.ar, align 8, !noalias !29669
  store ptr %i.l, ptr %i.as, align 8, !noalias !29669
  %i.tk = icmp eq i64 %storemerge.i112, 1
  br i1 %i.tk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29669
  invoke fastcc void @_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurement0B8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.dj unwind label %.body.i.loopexit, !noalias !29670

bb.dc:                                            ; preds = %bb.da
  br i1 %i.ax, label %.loopexit38.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tl = add i64 %storemerge.i112, %i.sh         ; 3 uses
  br i1 %i.ds, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.dd, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ud, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ 0, %bb.dd ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ %.sroa.0.0.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ -0.000000e+00, %bb.dd ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ 0, %bb.dd ]
  %i.tm = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.sroa.04.0.i.i.i.i.i ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !range !52, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.to = icmp eq i64 %i.tn, 2
  br i1 %i.to, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %.new
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.tp, align 8, !alias.scope !29673, !noalias !29674, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ule i64 %i.sh, %.val.i.i.i.i.i.i.i
  %i.tq = icmp ult i64 %.val.i.i.i.i.i.i.i, %i.tl
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i, %i.tq
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.df, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.ts = load double, ptr %i.tr, align 8, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.tt = fadd double %.sroa.02.0.i.i.i.i.i, %i.ts
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i: ; preds = %bb.df, %bb.de, %.new
  %.sroa.0.0.i.i.i.i.i.i = phi double [ %i.tt, %bb.df ], [ %.sroa.02.0.i.i.i.i.i, %.new ], [ %.sroa.02.0.i.i.i.i.i, %bb.de ] ; 3 uses
  %i.tu = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.sroa.04.0.i.i.i.i.i ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 64
  %i.tw = load i64, ptr %i.tv, align 8, !range !52, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.tx = icmp eq i64 %i.tw, 2
  br i1 %i.tx, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1, label %bb.dg

bb.dg:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 112
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.ty, align 8, !alias.scope !29673, !noalias !29674, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp ule i64 %i.sh, %.val.i.i.i.i.i.i.i.1
  %i.tz = icmp ult i64 %.val.i.i.i.i.i.i.i.1, %i.tl
  %.sroa.0.0.i.i.i.i.i.i.i.i.1 = and i1 %.not.i.i.i.i.i.i.i.i.1, %i.tz
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.1, label %bb.dh, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1

bb.dh:                                            ; preds = %bb.dg
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 96
  %i.ub = load double, ptr %i.ua, align 8, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.uc = fadd double %.sroa.0.0.i.i.i.i.i.i, %i.ub
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1: ; preds = %bb.dh, %bb.dg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.1 = phi double [ %i.uc, %bb.dh ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.dg ] ; 3 uses
  %i.ud = add nuw i64 %.sroa.04.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit38.i.loopexit.unr-lcssa, label %.new

.body.i.loopexit:                                 ; preds = %bb.db, %bb.dq
  %lpad.loopexit489 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i.loopexit.split-lp:                        ; preds = %.invoke.i
  %lpad.loopexit.split-lp490 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.loopexit.split-lp, %.body.i.loopexit
  %lpad.phi491 = phi { ptr, i32 } [ %lpad.loopexit489, %.body.i.loopexit ], [ %lpad.loopexit.split-lp490, %.body.i.loopexit.split-lp ] ; 2 uses
  %.val.i.pre.i = load i64, ptr %i.l, align 8, !range !45, !alias.scope !29675, !noalias !29669 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29675)
  %i.ue = icmp eq i64 %.val.i.pre.i, 0
  br i1 %i.ue, label %.body, label %bb.di

bb.di:                                            ; preds = %.body.i
  %.val1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !29675, !noalias !29669, !nonnull !41, !noundef !41
  %i.uf = shl nuw i64 %.val.i.pre.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.uf, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29676
  br label %.body

bb.dj:                                            ; preds = %bb.db
  %i.ug = load ptr, ptr %i.j, align 8, !noalias !29669, !align !46, !noundef !41
  %i.uh = load i64, ptr %i.cj, align 8, !noalias !29669
  %i.ui = load i64, ptr %i.ck, align 8, !range !49, !noalias !29669, !noundef !41
  %i.uj = load double, ptr %i.cl, align 8, !noalias !29669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29669
  %i.uk = load i8, ptr %i.m, align 1, !range !54, !noalias !29669, !noundef !41
  %i.ul = trunc nuw i8 %i.uk to i1
  %.sroa.028.0.i = select i1 %i.ul, double %i.ci, double +inf
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i, %bb.dr, %bb.dj
  %.sroa.028.1.i = phi double [ %.sroa.028.0.i, %bb.dj ], [ %.sroa.028.2.i, %bb.dr ], [ %i.wr, %bb.dv ], [ %i.wr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.427.0.i = phi i64 [ %i.uh, %bb.dj ], [ %i.wz, %bb.dr ], [ undef, %bb.dv ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.026.0.i = phi ptr [ %i.ug, %bb.dj ], [ %i.wy, %bb.dr ], [ null, %bb.dv ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.025.1.i = phi double [ %.sroa.025.0.i, %bb.dj ], [ %.sroa.025.2.i, %bb.dr ], [ %i.abg, %bb.dv ], [ %i.abg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.521.0.i = phi double [ %i.uj, %bb.dj ], [ %i.xb, %bb.dr ], [ %spec.store.select3.i.i, %bb.dv ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.020.0.i = phi i64 [ %i.ui, %bb.dj ], [ %i.xa, %bb.dr ], [ 1, %bb.dv ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.09.0.i = phi double [ 0.000000e+00, %bb.dj ], [ %spec.store.select.i114, %bb.dr ], [ %spec.store.select.i114, %bb.dv ], [ %spec.store.select.i114, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.0.0.i115 = phi i64 [ 0, %bb.dj ], [ 0, %bb.dr ], [ %i.ww, %bb.dv ], [ %i.ww, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 10 uses
  %i.um = load i8, ptr %i.al, align 8, !range !54, !noalias !29677, !noundef !41
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = shl i64 %.val87, 1
  %i.up = add i64 %i.uo, -1
  %.sroa.0.0.i.i = select i1 %i.un, i64 %i.up, i64 %.val87
  %8 = sub nuw nsw i64 %i.af, %.sroa.056.0609
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %8, i64 %.sroa.0.0.i.i) ; 4 uses
  %invariant.gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.cn, i64 %.sroa.056.0609 ; 9 uses
  %.not.i.i.i.i.i.i116 = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i116, label %.loopexit481, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.dk
  %xtraiter1638 = and i64 %..i.i.i.i.i.i.i, 7     ; 3 uses
  %i.uq = icmp samesign ult i64 %..i.i.i.i.i.i.i, 8
  br i1 %i.uq, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter1642 = and i64 %..i.i.i.i.i.i.i, 1152921504606846968
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.010.i.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.vg, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.02.09.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ve, %.lr.ph.i.i.i.i.i.i ] ; 9 uses
  %niter1643 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter1643.next.7, %.lr.ph.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i = load double, ptr %gep.i.i.i.i.i.i, align 8, !noalias !29678, !noundef !41
  %i.ur = fadd double %.sroa.0.010.i.i.i.i.i.i, %.val8.i.i.i.i.i.i
  %i.us = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.us, i64 8
  %.val8.i.i.i.i.i.i.1 = load double, ptr %gep.i.i.i.i.i.i.1, align 8, !noalias !29678, !noundef !41
  %i.ut = fadd double %i.ur, %.val8.i.i.i.i.i.i.1
  %i.uu = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.uu, i64 16
  %.val8.i.i.i.i.i.i.2 = load double, ptr %gep.i.i.i.i.i.i.2, align 8, !noalias !29678, !noundef !41
  %i.uv = fadd double %i.ut, %.val8.i.i.i.i.i.i.2
  %i.uw = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.uw, i64 24
  %.val8.i.i.i.i.i.i.3 = load double, ptr %gep.i.i.i.i.i.i.3, align 8, !noalias !29678, !noundef !41
  %i.ux = fadd double %i.uv, %.val8.i.i.i.i.i.i.3
  %i.uy = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.4 = getelementptr i8, ptr %i.uy, i64 32
  %.val8.i.i.i.i.i.i.4 = load double, ptr %gep.i.i.i.i.i.i.4, align 8, !noalias !29678, !noundef !41
  %i.uz = fadd double %i.ux, %.val8.i.i.i.i.i.i.4
  %i.va = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.5 = getelementptr i8, ptr %i.va, i64 40
  %.val8.i.i.i.i.i.i.5 = load double, ptr %gep.i.i.i.i.i.i.5, align 8, !noalias !29678, !noundef !41
  %i.vb = fadd double %i.uz, %.val8.i.i.i.i.i.i.5
  %i.vc = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.6 = getelementptr i8, ptr %i.vc, i64 48
  %.val8.i.i.i.i.i.i.6 = load double, ptr %gep.i.i.i.i.i.i.6, align 8, !noalias !29678, !noundef !41
  %i.vd = fadd double %i.vb, %.val8.i.i.i.i.i.i.6
  %i.ve = add nuw i64 %.sroa.02.09.i.i.i.i.i.i, 8 ; 2 uses
  %i.vf = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.7 = getelementptr i8, ptr %i.vf, i64 56
  %.val8.i.i.i.i.i.i.7 = load double, ptr %gep.i.i.i.i.i.i.7, align 8, !noalias !29678, !noundef !41
  %i.vg = fadd double %i.vd, %.val8.i.i.i.i.i.i.7 ; 3 uses
  %niter1643.next.7 = add i64 %niter1643, 8       ; 2 uses
  %niter1643.ncmp.7 = icmp eq i64 %niter1643.next.7, %unroll_iter1642
  br i1 %niter1643.ncmp.7, label %.loopexit481.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

.loopexit38.i.loopexit.unr-lcssa:                 ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1
  br i1 %lcmp.mod.not, label %.loopexit38.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit38.i.loopexit.unr-lcssa, %bb.dd
  %.sroa.04.0.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.dd ], [ %i.ud, %.loopexit38.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.dd ], [ %.sroa.0.0.i.i.i.i.i.i.1, %.loopexit38.i.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod1623)
  %i.vh = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.sroa.04.0.i.i.i.i.i.epil.init ; 3 uses
  %i.vi = load i64, ptr %i.vh, align 8, !range !52, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.vj = icmp eq i64 %i.vi, 2
  br i1 %i.vj, label %.loopexit38.i, label %bb.dl

bb.dl:                                            ; preds = %.epil.preheader
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 48
  %.val.i.i.i.i.i.i.i.epil = load i64, ptr %i.vk, align 8, !alias.scope !29673, !noalias !29674, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.epil = icmp ule i64 %i.sh, %.val.i.i.i.i.i.i.i.epil
  %i.vl = icmp ult i64 %.val.i.i.i.i.i.i.i.epil, %i.tl
  %.sroa.0.0.i.i.i.i.i.i.i.i.epil = and i1 %.not.i.i.i.i.i.i.i.i.epil, %i.vl
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.epil, label %bb.dm, label %.loopexit38.i

bb.dm:                                            ; preds = %bb.dl
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 32
  %i.vn = load double, ptr %i.vm, align 8, !alias.scope !29671, !noalias !29672, !noundef !41
  %i.vo = fadd double %.sroa.02.0.i.i.i.i.i.epil.init, %i.vn
  br label %.loopexit38.i

.loopexit38.i:                                    ; preds = %.loopexit38.i.loopexit.unr-lcssa, %bb.dm, %bb.dl, %.epil.preheader, %bb.dc
  %.sroa.0.0.i.i.i.i.i = phi double [ -0.000000e+00, %bb.dc ], [ %.sroa.0.0.i.i.i.i.i.i.1, %.loopexit38.i.loopexit.unr-lcssa ], [ %i.vo, %bb.dm ], [ %.sroa.02.0.i.i.i.i.i.epil.init, %.epil.preheader ], [ %.sroa.02.0.i.i.i.i.i.epil.init, %bb.dl ] ; 2 uses
  %.inv.i.i = fcmp ord double %.sroa.0.0.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %.sroa.0.0.i.i.i.i.i, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !29679)
  call void @llvm.experimental.noalias.scope.decl(metadata !29680)
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i, label %.loopexit37.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %.loopexit38.i
  %.val5.us.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !29681, !noalias !29682, !nonnull !41, !noundef !41 ; 3 uses
  %.val6.us.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !29681, !noalias !29682, !noundef !41 ; 5 uses
  %i.vp = icmp eq i64 %.val6.us.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.vp, label %.loopexit37.i, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i
  %i.vq = add i64 %storemerge.i112, %i.sh         ; 3 uses
  %xtraiter1626 = and i64 %.val6.us.i.i.i.i.i.i.i.i.i.i, 1
  %i.vr = icmp eq i64 %.val6.us.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.vr, label %.epil.preheader1625, label %.new1624

.new1624:                                         ; preds = %bb.dn
  %unroll_iter1630 = and i64 %.val6.us.i.i.i.i.i.i.i.i.i.i, -2
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.new1624
  %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.new1624 ], [ %i.wb, %bb.do ] ; 3 uses
  %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.new1624 ], [ %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, %bb.do ] ; 2 uses
  %niter1631 = phi i64 [ 0, %.new1624 ], [ %niter1631.next.1, %bb.do ]
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %.val5.us.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vs, align 8, !alias.scope !29683, !noalias !29684, !noundef !41 ; 2 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 8
  %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.vt, align 8, !alias.scope !29685, !noalias !29686
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = icmp ule i64 %i.sh, %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %i.vu = icmp ult i64 %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.vq
  %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %i.vu
  %i.vv = fadd double %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, double %i.vv, double %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %.val5.us.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.vx, align 8, !alias.scope !29683, !noalias !29684, !noundef !41 ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vw, i64 24
  %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.vy, align 8, !alias.scope !29685, !noalias !29686
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1 = icmp ule i64 %i.sh, %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1
  %i.vz = icmp ult i64 %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, %i.vq
  %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1 = and i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, %i.vz
  %i.wa = fadd double %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1 = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, double %i.wa, double %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.wb = add nuw i64 %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter1631.next.1 = add nuw i64 %niter1631, 2   ; 2 uses
  %niter1631.ncmp.1 = icmp eq i64 %niter1631.next.1, %unroll_iter1630
  br i1 %niter1631.ncmp.1, label %.loopexit37.i.loopexit.unr-lcssa, label %bb.do

.loopexit37.i.loopexit.unr-lcssa:                 ; preds = %bb.do
  %lcmp.mod1627.not = icmp eq i64 %xtraiter1626, 0
  br i1 %lcmp.mod1627.not, label %.loopexit37.i, label %.epil.preheader1625

.epil.preheader1625:                              ; preds = %.loopexit37.i.loopexit.unr-lcssa, %bb.dn
  %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.dn ], [ %i.wb, %.loopexit37.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %bb.dn ], [ %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, %.loopexit37.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1629 = trunc i64 %.val6.us.i.i.i.i.i.i.i.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod1629)
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %.val5.us.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil.init ; 2 uses
  %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil = load i64, ptr %i.wc, align 8, !alias.scope !29683, !noalias !29684, !noundef !41 ; 2 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 8
  %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil = load double, ptr %i.wd, align 8, !alias.scope !29685, !noalias !29686
  %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil = icmp ule i64 %i.sh, %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil
  %i.we = icmp ult i64 %.val11.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil, %i.vq
  %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil = and i1 %.not.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil, %i.we
  %i.wf = fadd double %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil.init, %.val12.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil = select i1 %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil, double %i.wf, double %.sroa.02.0.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil.init
  br label %.loopexit37.i

.loopexit37.i:                                    ; preds = %.epil.preheader1625, %.loopexit37.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, %.loopexit38.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ], [ -0.000000e+00, %.loopexit38.i ], [ %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.1, %.loopexit37.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.us.i.i.i.i.i.i.i.i.i.i.epil, %.epil.preheader1625 ] ; 2 uses
  %.inv.i65.i = fcmp ord double %.sroa.0.1.i.i.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i66.i = select i1 %.inv.i65.i, double %.sroa.0.1.i.i.i.i.i.i.i.i, double 0.000000e+00
  %i.wg = fadd double %spec.store.select.i.i, %spec.store.select.i66.i ; 2 uses
  %.inv.i113 = fcmp ord double %i.wg, 0.000000e+00
  %spec.store.select.i114 = select i1 %.inv.i113, double %i.wg, double 0.000000e+00 ; 4 uses
  br i1 %i.bf, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit37.i, %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i
  %i.wh = phi ptr [ %i.wi, %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i ], [ %i.bb, %.loopexit37.i ] ; 6 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 112 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 40
  %i.wk = load i64, ptr %i.wj, align 8, !noalias !29687, !noundef !41
  %i.wl = icmp eq i64 %i.wk, %.sroa.056.0609
  br i1 %i.wl, label %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.i.i, label %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i

_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 48
  %i.wn = load i64, ptr %i.wm, align 8, !noalias !29687, !noundef !41
  %i.wo = icmp eq i64 %i.wn, %i.sh
  br i1 %i.wo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.i, label %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i

_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i: ; preds = %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.i.i, %.lr.ph.i.i
  %i.wp = icmp eq ptr %i.wi, %i.be
  br i1 %i.wp, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i, label %.lr.ph.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.i: ; preds = %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.i.i
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wh, i64 96
  %i.wr = load double, ptr %i.wq, align 8, !noalias !29670, !noundef !41 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wh, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !29670, !nonnull !41, !noundef !41 ; 3 uses
  %i.wu = ptrtoaddr ptr %i.wt to i64              ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wh, i64 32
  %i.ww = load i64, ptr %i.wv, align 8, !noalias !29670, !noundef !41 ; 4 uses
  %.not51.i = icmp eq i64 %i.ww, 0
  br i1 %.not51.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i, label %bb.ds

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i: ; preds = %_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0B8_.exit.thread.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.i, %.loopexit37.i
  br i1 %i.z, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i
  %i.wx = fadd double %i.cd, %spec.store.select.i114 ; 2 uses
  %.inv52.i = fcmp ord double %i.wx, 0.000000e+00
  %spec.store.select1.i117 = select i1 %.inv52.i, double %i.wx, double 0.000000e+00
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans7RowspanENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMBS_NtNtBU_8layouter12GridLayouter33prepare_auto_row_cell_measurements3_0EBW_.exit.thread.i
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare:bb.a
          to label %bb.q unwind label %bb.i, !noalias !47386

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dn = load ptr, ptr %i.au, align 8, !alias.scope !47389, !noalias !47390, !nonnull !41, !noundef !41
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dk ; 3 uses
  store i64 %.sroa.07.0.lcssa.i.i.i, ptr %i.do, align 8, !noalias !47386
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store i64 %4, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !47386
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i8 %., ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !47386
  %i.dp = add i64 %i.dk, 1
  store i64 %i.dp, ptr %i.av, align 8, !alias.scope !47389, !noalias !47390
  %i.dq = load i64, ptr %i.ax, align 8, !alias.scope !47391, !noalias !47383, !noundef !41 ; 3 uses
  %i.dr = load i64, ptr %i.ad, align 8, !range !45, !alias.scope !47391, !noalias !47383, !noundef !41
  %i.ds = icmp eq i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.r, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.i, !noalias !47386

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.r, %bb.q
  %i.dt = load ptr, ptr %i.aw, align 8, !alias.scope !47391, !noalias !47383, !nonnull !41, !noundef !41
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.dq ; 2 uses
  store i8 %.sroa.010.0.lcssa.i.i.i, ptr %i.du, align 1, !noalias !47386
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %.sroa.013.0.lcssa.i.i.i, ptr %i.dv, align 1, !noalias !47386
  %i.dw = add i64 %i.dq, 1
  store i64 %i.dw, ptr %i.ax, align 8, !alias.scope !47391, !noalias !47383
  br label %bb.m

bb.s:                                             ; preds = %bb.l
  %i.dx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 128
  br i1 %i.dx, label %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 2048
  br i1 %i.dy, label %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 65536
  %..i.i.i.i.i = select i1 %i.dz, i64 3, i64 4
  br label %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i

_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.t ], [ %..i.i.i.i.i, %bb.u ], [ 1, %bb.s ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !47392)
  %i.ea = load i64, ptr %i.ac, align 8, !range !45, !alias.scope !47393, !noalias !47383, !noundef !41
  %i.eb = sub i64 %i.ea, %i.bq
  %i.ec = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, %i.eb
  br i1 %i.ec, label %bb.v, label %bb.w, !prof !44

bb.v:                                             ; preds = %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.bq, i64 noundef range(i64 1, 5) %.sroa.0.0.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc59.i.i.i unwind label %.loopexit25.i.i.i, !noalias !47386

.noexc59.i.i.i:                                   ; preds = %bb.v
  %.pre.i.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !47392, !noalias !47383
  %.pre.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !47392, !noalias !47383
  br label %bb.w

bb.w:                                             ; preds = %.noexc59.i.i.i, %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i
  %i.ed = phi ptr [ %i.bp, %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i ], [ %.pre.i.i.i, %.noexc59.i.i.i ] ; 5 uses
  %i.ee = phi i64 [ %i.bq, %_RNvXs4_CsgCGKXfV80i0_12unicode_bidieNtB5_10TextSource8char_len.exit.i.i.i ], [ %.pre.i.i.i.i, %.noexc59.i.i.i ] ; 2 uses
  %scevgep.i.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.ed, i64 %i.ee
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i.i.i.i.i.i, i8 range(i8 0, 23) %i.de, i64 range(i64 1, 5) %.sroa.0.0.i.i.i.i.i, i1 false), !noalias !47394
  %i.ef = add i64 %i.ee, %.sroa.0.0.i.i.i.i.i     ; 5 uses
  store i64 %i.ef, ptr %i.bl, align 8, !alias.scope !47392, !noalias !47395
  switch i8 %i.de, label %.loopexit.i.i.i [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.ac
    i8 8, label %bb.z
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.y
    i8 16, label %bb.ab
    i8 17, label %bb.x
    i8 18, label %bb.y
    i8 19, label %bb.z
    i8 20, label %bb.y
  ]

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.aj, %bb.ah, %bb.ag, %bb.ab, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.y, %bb.x, %bb.w
  %.sroa.013.1.i.i.i = phi i8 [ %.sroa.013.042.i.i.i, %bb.w ], [ 0, %bb.ag ], [ %.sroa.013.042.i.i.i, %bb.y ], [ %.sroa.013.042.i.i.i, %bb.ab ], [ %.sroa.013.042.i.i.i, %bb.ah ], [ 1, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.013.042.i.i.i, %bb.x ], [ %.sroa.013.042.i.i.i, %bb.aj ], [ %.sroa.013.042.i.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.sroa.010.1.i.i.i = phi i8 [ %.sroa.010.043.i.i.i, %bb.w ], [ 1, %bb.ag ], [ 0, %bb.y ], [ %.sroa.010.043.i.i.i, %bb.ab ], [ %.sroa.010.043.i.i.i, %bb.ah ], [ 0, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %spec.select.i.i.i, %bb.x ], [ %spec.select.i.i.i, %bb.aj ], [ %spec.select.i.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %.sroa.07.1.i.i.i = phi i64 [ %.sroa.07.044.i.i.i, %bb.w ], [ %i.eq, %bb.ag ], [ %.sroa.07.044.i.i.i, %bb.y ], [ %.sroa.07.044.i.i.i, %bb.ab ], [ %.sroa.07.044.i.i.i, %bb.ah ], [ %.sroa.07.044.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.sroa.07.044.i.i.i, %bb.x ], [ %.sroa.07.044.i.i.i, %bb.aj ], [ %.sroa.07.044.i.i.i, %.loopexit.loopexit.i.i.i ] ; 2 uses
  %i.eg = icmp eq ptr %.sroa.01.1.i.i.i, %i.bo
  br i1 %i.eg, label %._crit_edge.i.i.i, label %bb.j

bb.x:                                             ; preds = %bb.w, %bb.w, %bb.w
  %.not48.i.i.i = icmp eq i8 %i.de, 9             ; 2 uses
  %spec.select.i.i.i = select i1 %.not48.i.i.i, i8 %.sroa.010.043.i.i.i, i8 0 ; 3 uses
  %i.eh = load i64, ptr %i.bn, align 8, !noalias !47383, !noundef !41 ; 2 uses
  %.not49.i.i.i = icmp eq i64 %i.eh, 0
  br i1 %.not49.i.i.i, label %.loopexit.i.i.i, label %bb.ai

bb.y:                                             ; preds = %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  br label %.loopexit.i.i.i

bb.z:                                             ; preds = %bb.w, %bb.w, %bb.w
  %i.ei = load i64, ptr %i.bn, align 8, !alias.scope !47396, !noalias !47383, !noundef !41 ; 3 uses
  %i.ej = load i64, ptr %i.ab, align 8, !range !45, !alias.scope !47396, !noalias !47383, !noundef !41
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.aa, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs4ofGZotLxya_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %.loopexit25.i.i.i, !noalias !47386

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %i.el = load ptr, ptr %i.bm, align 8, !alias.scope !47396, !noalias !47383, !nonnull !41, !noundef !41
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ei
  store i64 %.sroa.10.040.i.i.i, ptr %i.em, align 8, !noalias !47386
  %i.en = add i64 %i.ei, 1
  store i64 %i.en, ptr %i.bn, align 8, !alias.scope !47396, !noalias !47383
  br label %.loopexit.i.i.i

bb.ab:                                            ; preds = %bb.w
  %i.eo = load i64, ptr %i.bn, align 8, !noalias !47383, !noundef !41 ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %.loopexit.i.i.i, label %bb.ah

bb.ac:                                            ; preds = %bb.w
  %i.eq = add i64 %.sroa.0.0.i.i.i.i.i, %.sroa.10.040.i.i.i ; 2 uses
  %i.er = load i64, ptr %i.av, align 8, !alias.scope !47397, !noalias !47398, !noundef !41 ; 3 uses
  %i.es = load i64, ptr %i.ae, align 8, !range !45, !alias.scope !47397, !noalias !47398, !noundef !41
  %i.et = icmp eq i64 %i.er, %i.es
  br i1 %i.et, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsgCGKXfV80i0_12unicode_bidi13ParagraphInfoE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %i.ae) #58
          to label %bb.ae unwind label %.loopexit25.i.i.i, !noalias !47386

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eu = load ptr, ptr %i.au, align 8, !alias.scope !47397, !noalias !47398, !nonnull !41, !noundef !41
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %i.er ; 3 uses
  store i64 %.sroa.07.044.i.i.i, ptr %i.ev, align 8, !noalias !47386
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i64 %i.eq, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !47386
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i8 %., ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !47386
  %i.ew = add i64 %i.er, 1
  store i64 %i.ew, ptr %i.av, align 8, !alias.scope !47397, !noalias !47398
  %i.ex = load i64, ptr %i.ax, align 8, !alias.scope !47399, !noalias !47383, !noundef !41 ; 3 uses
  %i.ey = load i64, ptr %i.ad, align 8, !range !45, !alias.scope !47399, !noalias !47383, !noundef !41
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #58
          to label %bb.ag unwind label %.loopexit25.i.i.i, !noalias !47386

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fa = load ptr, ptr %i.aw, align 8, !alias.scope !47399, !noalias !47383, !nonnull !41, !noundef !41
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.ex ; 2 uses
  store i8 %.sroa.010.043.i.i.i, ptr %i.fb, align 1, !noalias !47386
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store i8 %.sroa.013.042.i.i.i, ptr %i.fc, align 1, !noalias !47386
  %i.fd = add i64 %i.ex, 1
  store i64 %i.fd, ptr %i.ax, align 8, !alias.scope !47399, !noalias !47383
  store i64 0, ptr %i.bn, align 8, !noalias !47383
  br label %.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ab
  %i.fe = add nsw i64 %i.eo, -1                   ; 2 uses
  store i64 %i.fe, ptr %i.bn, align 8, !noalias !47383
  %i.ff = load i64, ptr %i.ab, align 8, !range !45, !noalias !47383, !noundef !41
  %i.fg = icmp samesign ult i64 %i.fe, %i.ff
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp ult i64 %i.eo, 1152921504606846977
  call void @llvm.assume(i1 %i.fh)
  br label %.loopexit.i.i.i

bb.ai:                                            ; preds = %bb.x
  %i.fi = load ptr, ptr %i.bm, align 8, !noalias !47383, !nonnull !41, !noundef !41
  %i.fj = getelementptr [8 x i8], ptr %i.fi, i64 %i.eh
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !47386, !noundef !41 ; 6 uses
  %i.fm = icmp ult i64 %i.fl, %i.ef
  br i1 %i.fm, label %bb.aj, label %.invoke.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fl ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !range !47400, !noalias !47386, !noundef !41
  %i.fp = icmp eq i8 %i.fo, 8
  br i1 %i.fp, label %bb.ak, label %.loopexit.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.ai
  %i.fq = phi i64 [ %i.fl, %bb.ai ], [ %i.fu, %bb.al ], [ %i.fs, %bb.ak ]
  %i.fr = phi ptr [ @1, %bb.ai ], [ @2, %bb.al ], [ @2, %bb.ak ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef %i.ef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fr) #57
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !47386

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %..i.i.i = select i1 %.not48.i.i.i, i8 11, i8 19 ; 3 uses
  %7 = sub nuw i64 %i.ef, %i.fl                   ; 2 uses
  store i8 %..i.i.i, ptr %i.fn, align 1, !noalias !47386
  %i.fs = add nuw i64 %i.fl, 1                    ; 2 uses
  %exitcond.1.not.i.i.i = icmp eq i64 %7, 1
  br i1 %exitcond.1.not.i.i.i, label %.invoke.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fs
  store i8 %..i.i.i, ptr %i.ft, align 1, !noalias !47386
  %i.fu = add nuw i64 %i.fl, 2                    ; 2 uses
  %exitcond.2.not.i.i.i = icmp eq i64 %7, 2
  br i1 %exitcond.2.not.i.i.i, label %.invoke.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.fu
  store i8 %..i.i.i, ptr %i.fv, align 1, !noalias !47386
  br label %.loopexit.i.i.i

bb.am:                                            ; preds = %bb.h, %bb.g
  %.val55.i.i.i = load i64, ptr %i.ac, align 8, !noalias !47383 ; 2 uses
  %i.fw = icmp eq i64 %.val55.i.i.i, 0
  br i1 %i.fw, label %.body.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.val56.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !47383, !nonnull !41, !noundef !41
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56.i.i.i, i64 noundef %.val55.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47386
  br label %.body.i.i

bb.ao:                                            ; preds = %bb.f
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ao, %bb.an, %bb.am
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fx, %bb.ao ], [ %.pn.i.i.i, %bb.an ], [ %.pn.i.i.i, %bb.am ] ; 2 uses
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !47380 ; 2 uses
  %i.fy = icmp eq i64 %.val.i.i, 0
  br i1 %i.fy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %.body.i.i
  %.val3.i.i = load ptr, ptr %i.aw, align 8, !noalias !47380, !nonnull !41, !noundef !41
  %i.fz = shl nuw i64 %.val.i.i, 1
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.fz, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47385
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ap, %.body.i.i
  %.val4.i.i = load i64, ptr %i.ae, align 8, !noalias !47380 ; 2 uses
  %i.ga = icmp eq i64 %.val4.i.i, 0
  br i1 %i.ga, label %.body, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsgCGKXfV80i0_12unicode_bidi18ParagraphInfoFlagsEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.val5.i.i = load ptr, ptr %i.au, align 8, !noalias !47380, !nonnull !41, !noundef !41
  %i.gb = mul nuw i64 %.val4.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.gb, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !47385
  br label %.body

_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !47383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !47383
  %.sroa.0.i.sroa.6.24.copyload.i = load i64, ptr %i.ae, align 8, !noalias !47380 ; 6 uses
  %.sroa.0.i.sroa.8.24.copyload.i = load ptr, ptr %i.au, align 8, !noalias !47380 ; 7 uses
  %.sroa.0.i.sroa.9.24.copyload.i = load i64, ptr %i.av, align 8, !noalias !47380 ; 2 uses
  %.sroa.1212.64.copyload.i = load i64, ptr %i.ad, align 8, !noalias !47401 ; 4 uses
  %.sroa.1413.64.copyload.i = load ptr, ptr %i.aw, align 8, !noalias !47401 ; 5 uses
  %.sroa.1514.64.copyload.i = load i64, ptr %i.ax, align 8, !noalias !47401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !47380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !47380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !47402
  br i1 %i.ay, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !47403
  %i.gc = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47403 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ge = ptrtoint ptr %i.gc to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.md, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.at
  %.pn11.i = phi { ptr, i32 } [ %i.gh, %bb.at ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.pn.i, %bb.md ] ; 2 uses
  %i.gf = icmp eq i64 %.sroa.1212.64.copyload.i, 0
  br i1 %i.gf, label %bb.me, label %bb.as

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.gg = shl nuw i64 %.sroa.1212.64.copyload.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1413.64.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.1413.64.copyload.i, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47404
  br label %bb.me

bb.at:                                            ; preds = %bb.au
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsgCGKXfV80i0_12unicode_bidi5level5LevelEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.au:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %4) #57
          to label %bb.bh unwind label %bb.at, !noalias !47404

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.ar, %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.1038.0.i = phi i64 [ %i.ge, %bb.ar ], [ 1, %_RINvMs0_CsgCGKXfV80i0_12unicode_bidiNtB6_14InitialInfoExt20new_with_data_sourceNtNtB6_9char_data17HardcodedBidiDataECs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.gi = inttoptr i64 %.sroa.1038.0.i to ptr
  store i64 %4, ptr %i.af, align 8, !noalias !47402
  %i.gj = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  store ptr %i.gi, ptr %i.gj, align 8, !noalias !47402
  %i.gk = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i64 0, ptr %i.gk, align 8, !noalias !47402
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.i.sroa.4.0.copyload.i) ]
  %i.gl = icmp eq i64 %.sroa.01.i.sroa.5.0.copyload.i, 0 ; 3 uses
  br i1 %i.gl, label %bb.az, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !47405
  %i.gm = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i, i64 noundef range(i64 1, 17) 1) #56, !noalias !47405 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i) #57
          to label %.noexc.i unwind label %bb.ax, !noalias !47404

.noexc.i:                                         ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gm, ptr nonnull readonly align 1 %.sroa.01.i.sroa.4.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.01.i.sroa.5.0.copyload.i, i1 false), !noalias !47406
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i

.loopexit.i:                                      ; preds = %bb.bl
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.bn, %bb.bi, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread56.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.mc, %.thread.i.i, %bb.ea, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body40.i.i, %bb.ea ], [ %eh.lpad-body.i40.i, %bb.mc ], [ %eh.lpad-body.i40.i, %.thread.i.i ], [ %eh.lpad-body40.i.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsgCGKXfV80i0_12unicode_bidi7prepare20IsolatingRunSequenceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  br i1 %i.gl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.ay

bb.ay:                                            ; preds = %.body.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.617.0.i, i64 noundef %.sroa.01.i.sroa.5.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !47404
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.az:                                            ; preds = %bb.aw, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.617.0.i = phi ptr [ %i.gm, %bb.aw ], [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.i.sroa.8.24.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1413.64.copyload.i) ]
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.1514.64.copyload.i, i64 %.sroa.0.i.sroa.9.24.copyload.i) ; 2 uses
  %.not.i = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 8 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 12 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 4 uses
  %.sroa.5132.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.28.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.29.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.31.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.5134.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.13135.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.24136.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %.sroa.5138.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7139.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.8140.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.20141.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.22142.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.23143.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 80
end_hunk_1
begin_hunk_2_@_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout:bb.a
bb.bc:                                            ; preds = %bb.aw, %bb.aw
  switch i8 %.sroa.070.0, label %bb.at [
    i8 53, label %bb.bd
    i8 47, label %bb.bd
    i8 33, label %bb.bd
    i8 32, label %bb.bd
    i8 16, label %bb.bd
    i8 10, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.aw
  %.not173.le = icmp ugt i8 %.sroa.092.1.ph, %i.hi
  %i.if = load ptr, ptr %i.m, align 8, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %i.ig = zext i8 %.sroa.092.1.ph to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 120
  %i.ii = load i8, ptr %i.ih, align 8, !noundef !41
  %i.ij = zext i8 %i.ii to i64
  %i.ik = mul nuw nsw i64 %i.ij, %i.ig
  %i.il = zext i8 %i.hj to i64
  %i.im = add nuw nsw i64 %i.ik, %i.il            ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.io = load i64, ptr %i.in, align 8, !noundef !41
  %i.ip = icmp ult i64 %i.im, %i.io
  br i1 %i.ip, label %bb.be, label %.backedgethread-pre-split

bb.be:                                            ; preds = %bb.bd
  %i.iq = load ptr, ptr %i.if, align 8, !nonnull !41, !noundef !41
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.im
  %i.is = load i8, ptr %i.ir, align 1, !noundef !41
  %i.it = tail call { i8, i8 } @_RNvXs0_NtCselBS6QMlFOX_13icu_segmenter8providerNtB5_10BreakStateNtNtCscNnlIRywYVk_7zerovec3ule5AsULE14from_unaligned(i8 noundef %i.is) ; 2 uses
  %i.iu = extractvalue { i8, i8 } %i.it, 0
  %i.iv = extractvalue { i8, i8 } %i.it, 1        ; 2 uses
  switch i8 %i.iu, label %.loopexit267 [
    i8 0, label %bb.bf
    i8 1, label %.backedgethread-pre-split
    i8 2, label %bb.bg
    i8 3, label %bb.bh
    i8 4, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iw = icmp eq i8 %.sroa.070.0, 54
  br i1 %i.iw, label %.backedgethread-pre-split, label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.ix = icmp eq i8 %.sroa.070.0, 54
  store <2 x ptr> %.ph, ptr %i.g, align 8
  store i64 %.sroa.9.0.ph.ph, ptr %i.i, align 8
  store i64 %.sroa.096.0.ph.ph, ptr %i.a, align 8
  store i32 %.sroa.598.0.ph.ph, ptr %i.b, align 8
  br i1 %i.ix, label %bb.bl, label %bb.bk

bb.bh:                                            ; preds = %bb.be
  %i.iy = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.outer.outer.backedge:                            ; preds = %bb.bh, %bb.bo
  %i.iz = phi i1 [ %i.iy, %bb.bh ], [ %i.jc, %bb.bo ]
  br label %.outer.outer

bb.bi:                                            ; preds = %bb.be
  br i1 %.not173.le, label %.outer, label %bb.bo

bb.bj:                                            ; preds = %bb.bf
  %i.ja = load i32, ptr %i.b, align 8, !range !122, !noundef !41
  %.not178 = icmp ne i32 %i.ja, -1                ; 2 uses
  %i.jb = load i64, ptr %i.a, align 8
  %.sroa.27.7 = select i1 %.not178, i64 %i.jb, i64 undef
  br label %.loopexit268

bb.bk:                                            ; preds = %bb.bg
  br i1 %.sroa.063.1.ph.ph.in, label %.backedge, label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %or.cond6 = select i1 %i.fn, i1 true, i1 %.sroa.063.1.ph.ph.in
  br i1 %or.cond6, label %.backedge, label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %.not176 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.9 = select i1 %.not176, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bn:                                            ; preds = %bb.bl
  %.not177 = icmp ne i32 %.sroa.598.0.ph.ph, -1   ; 2 uses
  %.sroa.27.10 = select i1 %.not177, i64 %.sroa.096.0.ph.ph, i64 undef
  br label %.loopexit268

bb.bo:                                            ; preds = %bb.bi
  %i.jc = icmp eq i8 %.sroa.070.0, 54
  br label %.outer.outer.backedge

.loopexit268.split.loop.exit315:                  ; preds = %bb.ao
  %i.jd = extractvalue { i64, i64 } %i.ez, 1
  br label %.loopexit268

.loopexit268:                                     ; preds = %.backedge, %.loopexit268.split.loop.exit315, %bb.by, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, %bb.bb, %bb.bn, %bb.bm, %bb.bj, %bb.az, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit, %bb.bz, %bb.ca, %bb.ar, %bb.m, %bb.ah, %bb.ak, %bb.ai
  %.sroa.27.11 = phi i64 [ undef, %bb.bz ], [ 0, %bb.ca ], [ %i.ie, %bb.az ], [ %.sroa.27.13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.27.1, %bb.ai ], [ %i.mv, %bb.by ], [ %.sroa.27.2, %bb.ak ], [ %.sroa.27.3, %bb.ah ], [ %i.do, %bb.m ], [ %.sroa.27.4, %bb.ar ], [ 0, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.sroa.27.7, %bb.bj ], [ %.sroa.27.10, %bb.bn ], [ %.sroa.27.9, %bb.bm ], [ %.sroa.27.6, %bb.bb ], [ %i.jd, %.loopexit268.split.loop.exit315 ], [ undef, %.backedge ]
  %.sroa.0.11.shrunk = phi i1 [ false, %bb.bz ], [ true, %bb.ca ], [ true, %bb.az ], [ %.not183, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit ], [ %.not180, %bb.ai ], [ true, %bb.by ], [ %.not170, %bb.ak ], [ %.not169, %bb.ah ], [ true, %bb.m ], [ %.not179, %bb.ar ], [ true, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit ], [ %.not178, %bb.bj ], [ %.not177, %bb.bn ], [ %.not176, %bb.bm ], [ %.not175, %bb.bb ], [ true, %.loopexit268.split.loop.exit315 ], [ false, %.backedge ]
  %.sroa.0.11 = zext i1 %.sroa.0.11.shrunk to i64
  %i.je = insertvalue { i64, i64 } poison, i64 %.sroa.0.11, 0
  %i.jf = insertvalue { i64, i64 } %i.je, i64 %.sroa.27.11, 1
  ret { i64, i64 } %i.jf

bb.bp:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %.lr.ph
  %i.jg = phi i64 [ %.promoted313, %.lr.ph ], [ %i.lb, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 2 uses
  %i.jh = phi ptr [ %.promoted312, %.lr.ph ], [ %i.kx, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 7 uses
  %.sroa.0.0311 = phi i64 [ 0, %.lr.ph ], [ %i.jm, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ]
  %i.ji = phi i32 [ %i.c, %.lr.ph ], [ %.sroa.4.0.i.ph.i204, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209 ] ; 3 uses
  %i.jj = icmp samesign ult i32 %i.ji, 128
  br i1 %i.jj, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jk = icmp samesign ult i32 %i.ji, 2048
  br i1 %i.jk, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jl = icmp samesign ult i32 %i.ji, 65536
  %..i.i.i = select i1 %i.jl, i64 3, i64 4
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  %.sroa.02.0.i = phi i64 [ 1, %bb.bp ], [ 2, %bb.bq ], [ %..i.i.i, %bb.br ]
  %i.jm = add i64 %.sroa.02.0.i, %.sroa.0.0311    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49942)
  %i.jn = ptrtoint ptr %i.jh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49959)
  %i.jo = icmp eq ptr %i.jh, %i.bp
  br i1 %i.jo, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jh, i64 1 ; 4 uses
  store ptr %i.jp, ptr %i.bn, align 8, !alias.scope !49960
  %i.jq = load i8, ptr %i.jh, align 1, !noalias !49961, !noundef !41 ; 5 uses
  %i.jr = icmp sgt i8 %i.jq, -1
  br i1 %i.jr, label %bb.bt, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203: ; preds = %bb.bs
  %i.js = and i8 %i.jq, 31
  %i.jt = zext nneg i8 %i.js to i32               ; 3 uses
  %i.ju = icmp ne ptr %i.jp, %i.bp
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 2 ; 4 uses
  store ptr %i.jv, ptr %i.bn, align 8, !alias.scope !49962
  %i.jw = load i8, ptr %i.jp, align 1, !noalias !49961, !noundef !41
  %i.jx = shl nuw nsw i32 %i.jt, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32               ; 2 uses
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = icmp samesign ugt i8 %i.jq, -33
  br i1 %i.kb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

bb.bt:                                            ; preds = %bb.bs
  %i.kc = zext nneg i8 %i.jq to i32
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203
  %i.kd = icmp ne ptr %i.jv, %i.bp
  tail call void @llvm.assume(i1 %i.kd)
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 3 ; 4 uses
  store ptr %i.ke, ptr %i.bn, align 8, !alias.scope !49963
  %i.kf = load i8, ptr %i.jv, align 1, !noalias !49961, !noundef !41
  %i.kg = shl nuw nsw i32 %i.jz, 6
  %i.kh = and i8 %i.kf, 63
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = shl nuw nsw i32 %i.jt, 12
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = icmp samesign ugt i8 %i.jq, -17
  br i1 %i.km, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207
  %i.kn = icmp ne ptr %i.ke, %i.bp
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  store ptr %i.ko, ptr %i.bn, align 8, !alias.scope !49964
  %i.kp = load i8, ptr %i.ke, align 1, !noalias !49961, !noundef !41
  %i.kq = shl nuw nsw i32 %i.jt, 18
  %i.kr = and i32 %i.kq, 1835008
  %i.ks = shl nuw nsw i32 %i.kj, 6
  %i.kt = and i8 %i.kp, 63
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.ks, %i.ku
  %i.kw = or disjoint i32 %i.kv, %i.kr
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203, %bb.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208
  %i.kx = phi ptr [ %i.ke, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.ko, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.jv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.jp, %bb.bt ] ; 2 uses
  %.sroa.4.0.i.ph.i204 = phi i32 [ %i.kl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i207 ], [ %i.kw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i208 ], [ %i.ka, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i203 ], [ %i.kc, %bb.bt ] ; 3 uses
  %i.ky = icmp samesign ult i32 %.sroa.4.0.i.ph.i204, 1114112
  tail call void @llvm.assume(i1 %i.ky)
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.kz, %i.jn
  %i.lb = add i64 %i.la, %i.jg                    ; 2 uses
  store i64 %i.lb, ptr %i.bq, align 8, !alias.scope !49942
  store i64 %i.jg, ptr %i.a, align 8
  store i32 %.sroa.4.0.i.ph.i204, ptr %i.b, align 8
  %i.lc = icmp eq i64 %i.jm, %i.bl
  br i1 %i.lc, label %._crit_edge, label %bb.bp

._crit_edge:                                      ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit209, %bb.f
  %1 = add i64 %i.f, -1                           ; 6 uses
  %i.ld = shl nuw i64 %1, 3                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %1, 1152921504606846975
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu, !prof !61

bb.bu:                                            ; preds = %._crit_edge
  %.not.i.i.not = icmp eq i64 %i.f, 1
  br i1 %.not.i.i.not, label %.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i

.thread:                                          ; preds = %bb.bu
  %2 = icmp eq i64 %1, 0
  tail call void @llvm.assume(i1 %2)
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.bu
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !49965
  %i.le = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ld, i64 noundef range(i64 1, 17) 8) #56, !noalias !49965 ; 11 uses
  %i.lf = ptrtoaddr ptr %i.le to i64
  %i.lg = icmp eq ptr %i.le, null
  br i1 %i.lg, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, %._crit_edge
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.ld, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ undef, %._crit_edge ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #57, !noalias !49966
  unreachable

bb.bw:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 6 uses
  %i.li = add nuw nsw i64 %i.f, 2305843009213693951 ; 3 uses
  %i.lj = and i64 %i.li, 2305843009213693951      ; 7 uses
  %min.iters.check = icmp samesign ult i64 %i.lj, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.bw
  %i.lk = sub i64 %i.lf, %i.bk
  %i.ll = add i64 %i.lk, -9
  %diff.check = icmp ult i64 %i.ll, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.li, 2305843009213693948     ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %index ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %wide.load = load <2 x i64>, ptr %i.lm, align 8, !noalias !49967
  %wide.load483 = load <2 x i64>, ptr %i.ln, align 8, !noalias !49967
  %i.lo = sub <2 x i64> %wide.load, %broadcast.splat
  %i.lp = sub <2 x i64> %wide.load483, %broadcast.splat
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %index ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  store <2 x i64> %i.lo, ptr %i.lq, align 8, !noalias !49968
  store <2 x i64> %i.lp, ptr %i.lr, align 8, !noalias !49968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ls = icmp eq i64 %index.next, %n.vec
  br i1 %i.ls, label %middle.block, label %vector.body, !llvm.loop !49930

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lj, %n.vec
  br i1 %cmp.n, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.bw, %middle.block
  %.ph535 = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.bw ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.li, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.lt = phi i64 [ %i.lx, %scalar.ph.prol ], [ %.ph535, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lt
  %.val15.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.lu, align 8, !noalias !49967, !noundef !41
  %i.lv = sub i64 %.val15.i.i.i.i.i.i.i.i.prol, %i.bl
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.lt
  store i64 %i.lv, ptr %i.lw, align 8, !noalias !49968
  %i.lx = add nuw i64 %i.lt, 1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !49931

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph535, %scalar.ph.preheader ], [ %i.lx, %scalar.ph.prol ]
  %i.ly = sub nsw i64 %.ph535, %i.lj
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ma = phi i64 [ %i.mq, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.ma
  %.val15.i.i.i.i.i.i.i.i = load i64, ptr %i.mb, align 8, !noalias !49967, !noundef !41
  %i.mc = sub i64 %.val15.i.i.i.i.i.i.i.i, %i.bl
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ma
  store i64 %i.mc, ptr %i.md, align 8, !noalias !49968
  %i.me = add nuw i64 %i.ma, 1                    ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.me
  %.val15.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.mf, align 8, !noalias !49967, !noundef !41
  %i.mg = sub i64 %.val15.i.i.i.i.i.i.i.i.1, %i.bl
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.me
  store i64 %i.mg, ptr %i.mh, align 8, !noalias !49968
  %i.mi = add nuw i64 %i.ma, 2                    ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mi
  %.val15.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.mj, align 8, !noalias !49967, !noundef !41
  %i.mk = sub i64 %.val15.i.i.i.i.i.i.i.i.2, %i.bl
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.mi
  store i64 %i.mk, ptr %i.ml, align 8, !noalias !49968
  %i.mm = add nuw i64 %i.ma, 3                    ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.mm
  %.val15.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.mn, align 8, !noalias !49967, !noundef !41
  %i.mo = sub i64 %.val15.i.i.i.i.i.i.i.i.3, %i.bl
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.mm
  store i64 %i.mo, ptr %i.mp, align 8, !noalias !49968
  %i.mq = add nuw i64 %i.ma, 4                    ; 2 uses
  %i.mr = icmp eq i64 %i.mq, %i.lj
  br i1 %i.mr, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit, label %scalar.ph, !llvm.loop !49932

_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.thread
  %.sroa.4.0.i.i.i402 = phi i64 [ 0, %.thread ], [ %1, %middle.block ], [ %1, %scalar.ph ], [ %1, %scalar.ph.prol.loopexit ]
  %.sroa.10.0.i.i.i401 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.le, %middle.block ], [ %i.le, %scalar.ph ], [ %i.le, %scalar.ph.prol.loopexit ]
  %.sroa.5.0.copyload.sink.i.i.i.i.i.i = phi i64 [ 0, %.thread ], [ %i.lj, %middle.block ], [ %i.lj, %scalar.ph ], [ %i.lj, %scalar.ph.prol.loopexit ]
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.ms = icmp eq i64 %.val, 0
  br i1 %i.ms, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.bx

bb.bx:                                            ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  %.val185 = load ptr, ptr %i.bi, align 8, !nonnull !41, !noundef !41
  %i.mt = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val185, i64 noundef %i.mt, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  store i32 -1, ptr %i.b, align 8
  store i64 0, ptr %i.e, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.mv = load i64, ptr %i.mu, align 8, !noundef !41
  br label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bx, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %.sroa.4.0.i.i.i402, ptr %i.d, align 8
  store ptr %.sroa.10.0.i.i.i401, ptr %i.bi, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.e, align 8
  %i.mw = load i32, ptr %i.b, align 8, !range !122, !noundef !41
  %.not183 = icmp ne i32 %i.mw, -1                ; 2 uses
  %i.mx = load i64, ptr %i.a, align 8
  %.sroa.27.13 = select i1 %.not183, i64 %i.mx, i64 undef
  br label %.loopexit268

bb.bz:                                            ; preds = %bb.c
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.mz = load i64, ptr %i.my, align 8, !noundef !41
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %bb.ca, label %.loopexit268

bb.ca:                                            ; preds = %bb.bz
  store i64 1, ptr %i.my, align 8
  br label %.loopexit268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %..i
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp eq ptr %.val3, %.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49983)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49985)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !49986, !nonnull !41, !noundef !41
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !49987
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.j, %..i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.j, %..i
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.s = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49988)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49990)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !49991, !nonnull !41, !noundef !41
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !49992
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.s, %..i
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i, %bb.c
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.a
  %i.z = sub nuw i64 %1, %..i
  ret i64 %i.z
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke11FixedStrokeEENtNtB16_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c) #59
  br i1 %i.d, label %bb.b, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e) #59
  br i1 %i.f, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g) #59
  br i1 %i.h, label %bb.c, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @766, i64 noundef 5)
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @768, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @770, i64 noundef 5, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @771, i64 noundef 6, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @767)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @772, i64 noundef 13)
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49996)
  %i.q = load i64, ptr %0, align 8, !range !60, !alias.scope !49996, !noalias !49997, !noundef !41
  %.not.i = icmp eq i64 %i.q, -2
  br i1 %.not.i, label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.split

.split:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49998
  store ptr %0, ptr %i.a, align 8, !noalias !49998
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @842, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @849)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49998
  br i1 %i.r, label %bb.f, label %bb.e

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @840, i64 noundef 4), !noalias !49996
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @727, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread ], [ true, %bb.c ], [ %i.t, %bb.e ], [ true, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit ], [ true, %.split ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs5_NtCs4vtCw9T9d1A_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !41 ; 18 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.cj, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %.promoted378 = load i8, ptr %i.h, align 8      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.lr.ph, %bb.ar
end_hunk_2

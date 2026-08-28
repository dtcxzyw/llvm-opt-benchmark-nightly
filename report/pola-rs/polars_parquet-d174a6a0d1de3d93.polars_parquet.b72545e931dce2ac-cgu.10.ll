Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  br i1 %i.dwe, label %.thread, label %bb.aai, !dbg !24534

.thread:                                          ; preds = %bb.aah
  %sum.shift40.i.i = lshr i64 %i.dwd, 37, !dbg !24535
  %.sroa.0.0.i59.i.i = call noundef i64 @llvm.umax.i64(i64 %spec.store.select.i.i, i64 %sum.shift40.i.i), !dbg !24539
  br label %bb.aaj, !dbg !24543

bb.aai:                                           ; preds = %bb.aah, %bb.aag
  br i1 %i.dwb, label %bb.aaj, label %.loopexit.i.i, !dbg !24543

.loopexit.i.i:                                    ; preds = %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph.i.i578, %bb.aai
  %.sroa.01.1.i.i = phi i64 [ %.sroa.01.0104.i.i, %bb.aai ], [ %i.dwk, %.lr.ph.i.i578 ], [ %i.dwk, %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], !dbg !24470 ; 2 uses
  %i.dwf = add i64 %.sroa.01.1.i.i, 1, !dbg !24544
  %i.dwg = add i64 %.sroa.01.1.i.i, 4, !dbg !24546
  %i.dwh = icmp ult i64 %i.dwg, %1, !dbg !24377
  br i1 %i.dwh, label %bb.zz, label %._crit_edge.i.i, !dbg !24377

bb.aaj:                                           ; preds = %.thread, %bb.aai
  %.sroa.017.0.i.i5157 = phi i64 [ %.sroa.0.0.i59.i.i, %.thread ], [ %spec.store.select.i.i, %bb.aai ] ; 2 uses
  %i.dwi = add i64 %.sroa.017.0.i.i5157, %i.dvs, !dbg !24548
  %.sroa.0.0.i60.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i576, i64 %i.dwi), !dbg !24550
  %i.dwj = add i64 %i.dvs, 1, !dbg !24553
  invoke void @_RNvXs7_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_3H10NtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtB5_10H10BucketsB1q_ENtB5_16H10DefaultParamsENtB7_9AnyHasher10StoreRangeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.dse, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %i.dwj, i64 noundef %.sroa.0.0.i60.i.i)
          to label %.lr.ph.preheader.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !dbg !24555, !noalias !24376

.lr.ph.preheader.i.i:                             ; preds = %bb.aaj
  %.sroa.017.199.i.i = add i64 %.sroa.017.0.i.i5157, -1, !dbg !24556
  br label %.lr.ph.i.i578, !dbg !24558

.lr.ph.i.i578:                                    ; preds = %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.017.1101.i.i = phi i64 [ %.sroa.017.1.i.i, %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.017.199.i.i, %.lr.ph.preheader.i.i ]
  %.sroa.01.2100.i.i = phi i64 [ %i.dwk, %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.01.0104.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.dwk = add i64 %.sroa.01.2100.i.i, 1, !dbg !24559 ; 15 uses
  %i.dwl = add i64 %.sroa.01.2100.i.i, 4, !dbg !24561
  %.not41.i.i = icmp ult i64 %i.dwl, %1, !dbg !24558
  br i1 %.not41.i.i, label %bb.aak, label %.loopexit.i.i, !dbg !24558

bb.aak:                                           ; preds = %.lr.ph.i.i578
  call void @llvm.experimental.noalias.scope.decl(metadata !24563), !dbg !24566
  %i.dwm = icmp ult i64 %i.dwk, %i.dsu, !dbg !24567
  br i1 %i.dwm, label %bb.aal, label %.invoke.i.i, !dbg !24567

bb.aal:                                           ; preds = %bb.aak
  %i.dwn = getelementptr inbounds nuw [20 x i8], ptr %i.dst, i64 %i.dwk, !dbg !24567 ; 7 uses
  %i.dwo = load i32, ptr %i.dwn, align 4, !dbg !24567, !range !24570, !alias.scope !24571, !noalias !24572, !noundef !14
  %i.dwp = icmp eq i32 %i.dwo, 0, !dbg !24575
  br i1 %i.dwp, label %bb.aam, label %bb.aan, !dbg !24575

bb.aam:                                           ; preds = %bb.aal
  %i.dwq = getelementptr inbounds nuw i8, ptr %i.dwn, i64 4, !dbg !24576
  %i.dwr = load float, ptr %i.dwq, align 4, !dbg !24576, !alias.scope !24571, !noalias !24572, !noundef !14
  br label %bb.aan, !dbg !24577

bb.aan:                                           ; preds = %bb.aam, %bb.aal
  %.sroa.0.0.i61.i.i = phi float [ %i.dwr, %bb.aam ], [ 0.000000e+00, %bb.aal ], !dbg !24578 ; 3 uses
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dwn, i64 8, !dbg !24579
  %i.dwt = load i32, ptr %i.dws, align 4, !dbg !24579, !alias.scope !24585, !noalias !24572, !noundef !14
  %i.dwu = and i32 %i.dwt, 33554431, !dbg !24579  ; 2 uses
  %i.dwv = getelementptr inbounds nuw i8, ptr %i.dwn, i64 16, !dbg !24588
  %i.dww = load i32, ptr %i.dwv, align 4, !dbg !24588, !alias.scope !24585, !noalias !24572, !noundef !14 ; 2 uses
  %i.dwx = and i32 %i.dww, 134217727, !dbg !24588
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dwn, i64 12, !dbg !24590
  %i.dwz = load i32, ptr %i.dwy, align 4, !dbg !24590, !alias.scope !24585, !noalias !24572, !noundef !14 ; 2 uses
  %i.dxa = icmp eq i64 %i.dwk, 0, !dbg !24594
  br i1 %i.dxa, label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i, label %bb.aao, !dbg !24594

bb.aao:                                           ; preds = %bb.aan
  %i.dxb = zext nneg i32 %i.dwu to i64, !dbg !24596
  %i.dxc = zext i32 %i.dwz to i64, !dbg !24597    ; 2 uses
  %i.dxd = add nuw nsw i64 %i.dxc, %i.dxb, !dbg !24598
  %i.dxe = add nuw nsw i64 %i.dwk, %2, !dbg !24601
  %i.dxf = icmp samesign ule i64 %i.dxd, %i.dxe, !dbg !24603
  %i.dxg = icmp uge i64 %i.dsq, %i.dxc
  %or.cond.i.i.i.i = and i1 %i.dxg, %i.dxf, !dbg !24603
  br i1 %or.cond.i.i.i.i, label %bb.aaq, label %bb.aap, !dbg !24603

bb.aap:                                           ; preds = %bb.aaq, %bb.aao
  %narrow.i.i.i.i = add nuw nsw i32 %i.dwx, %i.dwu, !dbg !24604
  %i.dxh = zext nneg i32 %narrow.i.i.i.i to i64, !dbg !24604
  %i.dxi = sub nsw i64 %i.dwk, %i.dxh, !dbg !24604 ; 3 uses
  %i.dxj = icmp ult i64 %i.dxi, %i.dsu, !dbg !24607
  br i1 %i.dxj, label %bb.aas, label %.invoke.i.i, !dbg !24607

bb.aaq:                                           ; preds = %bb.aao
  %i.dxk = lshr i32 %i.dww, 27, !dbg !24608       ; 2 uses
  %i.dxl = icmp eq i32 %i.dxk, 0, !dbg !24611
  %i.dxm = add i32 %i.dwz, 15, !dbg !24611
  %i.dxn = add nsw i32 %i.dxk, -1, !dbg !24611
  %.sroa.02.0.i.i.i.i = select i1 %i.dxl, i32 %i.dxm, i32 %i.dxn, !dbg !24611
  %.not.i.i.i.i579 = icmp eq i32 %.sroa.02.0.i.i.i.i, 0, !dbg !24613
  br i1 %.not.i.i.i.i579, label %bb.aap, label %bb.aar, !dbg !24613

bb.aar:                                           ; preds = %bb.aaq
  %i.dxo = trunc i64 %i.dwk to i32, !dbg !24614
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i, !dbg !24615

bb.aas:                                           ; preds = %bb.aap
  %i.dxp = getelementptr inbounds nuw [20 x i8], ptr %i.dst, i64 %i.dxi, !dbg !24607 ; 2 uses
  %i.dxq = load i32, ptr %i.dxp, align 4, !dbg !24607, !range !24570, !alias.scope !24585, !noalias !24572, !noundef !14
  %i.dxr = icmp eq i32 %i.dxq, 2, !dbg !24616
  br i1 %i.dxr, label %bb.aat, label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i, !dbg !24616

bb.aat:                                           ; preds = %bb.aas
  %i.dxs = getelementptr inbounds nuw i8, ptr %i.dxp, i64 4, !dbg !24617
  %i.dxt = load i32, ptr %i.dxs, align 4, !dbg !24617, !alias.scope !24585, !noalias !24572, !noundef !14
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i, !dbg !24618

_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i: ; preds = %bb.aat, %bb.aas, %bb.aar, %bb.aan
  %.sroa.0.0.i.i62.i.i = phi i32 [ 0, %bb.aan ], [ %i.dxo, %bb.aar ], [ %i.dxt, %bb.aat ], [ 0, %bb.aas ], !dbg !24619
  store i32 2, ptr %i.dwn, align 4, !dbg !24620, !alias.scope !24571, !noalias !24572
  %.sroa.4.0..sroa_idx.i63.i.i = getelementptr inbounds nuw i8, ptr %i.dwn, i64 4, !dbg !24620
  store i32 %.sroa.0.0.i.i62.i.i, ptr %.sroa.4.0..sroa_idx.i63.i.i, align 4, !dbg !24620, !alias.scope !24571, !noalias !24572
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val48.i.i) ]
  %i.dxu = icmp ult i64 %i.dwk, %.val49.i.i, !dbg !24621
  br i1 %i.dxu, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i, label %.invoke.i.i, !dbg !24621

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i: ; preds = %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i
  %i.dxv = getelementptr inbounds nuw [4 x i8], ptr %.val48.i.i, i64 %i.dwk, !dbg !24621
  %i.dxw = load float, ptr %i.dxv, align 4, !dbg !24621, !noalias !24624, !noundef !14
  %i.dxx = load float, ptr %.val48.i.i, align 4, !dbg !24625, !noalias !24624, !noundef !14
  %i.dxy = fsub float %i.dxw, %i.dxx, !dbg !24621 ; 2 uses
  %i.dxz = fcmp ugt float %.sroa.0.0.i61.i.i, %i.dxy, !dbg !24626
  br i1 %i.dxz, label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i, !dbg !24626

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i: ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !24627, !noalias !24628
  %i.dya = fsub float %.sroa.0.0.i61.i.i, %i.dxy, !dbg !24629
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !dbg !24630, !noalias !24628
  store i64 %i.dwk, ptr %i.dtq, align 8, !dbg !24631, !noalias !24628
  store float %i.dya, ptr %i.dtr, align 8, !dbg !24631, !noalias !24628
  store float %.sroa.0.0.i61.i.i, ptr %i.dts, align 4, !dbg !24631, !noalias !24628
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq20ComputeDistanceCache(i64 noundef %i.dwk, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dst, i64 noundef range(i64 1, 461168601842738791) %i.dsu, ptr noalias noundef nonnull align 4 %i.p, i64 noundef 4)
          to label %.noexc67.i.i unwind label %.loopexit80.i.i, !dbg !24632, !noalias !24376

.noexc67.i.i:                                     ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i
  invoke void @_RNvMs3_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqNtB5_13StartPosQueue4push(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
          to label %.noexc68.i.i unwind label %.loopexit80.i.i, !dbg !24634, !noalias !24376

.noexc68.i.i:                                     ; preds = %.noexc67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !24635, !noalias !24628
  br label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !24636

_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %.noexc68.i.i, %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i
  %.sroa.017.1.i.i = add i64 %.sroa.017.1101.i.i, -1, !dbg !24556 ; 2 uses
  %i.dyb = icmp eq i64 %.sroa.017.1.i.i, 0, !dbg !24637
  br i1 %i.dyb, label %.loopexit.i.i, label %.lr.ph.i.i578, !dbg !24637

.loopexit80.i.i:                                  ; preds = %.noexc67.i.i, %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.zz, %bb.aac, %bb.aaj
  %lpad.loopexit81.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %bb.aae, %.invoke.i.i, %.noexc42.i.i, %._crit_edge.i.i, %bb.zo
  %lpad.loopexit.split-lp82.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit80.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit80.i.i ], [ %lpad.loopexit81.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp82.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(2864) %i.u) #21, !dbg !24638, !noalias !24376
  br label %.body.i, !dbg !24638

bb.aau:                                           ; preds = %bb.zy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !24638, !noalias !24318
  %i.dyc = add i64 %.sroa.08.0.i.lcssa.i.i, %i.dsy, !dbg !24639
  store i64 %i.dyc, ptr %13, align 8, !dbg !24642, !alias.scope !24252, !noalias !24307
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands(i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %i.dsq, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.dst, i64 noundef %i.dsu, ptr noalias noundef nonnull align 4 %9, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias noundef nonnull align 4 %11, i64 noundef range(i64 0, 576460752303423488) %12, ptr noalias noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aav unwind label %bb.zj, !dbg !24643, !noalias !24252

bb.aav:                                           ; preds = %bb.aau
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !24644, !noalias !24378
  store i64 0, ptr %i.o, align 8, !dbg !24644, !noalias !24378
  %i.dyd = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !24644
  store ptr inttoptr (i64 4 to ptr), ptr %i.dyd, align 8, !dbg !24644, !noalias !24378
  %i.dye = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !24644
  store i64 0, ptr %i.dye, align 8, !dbg !24644, !noalias !24378
  %i.dyf = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.aaw unwind label %bb.zj, !dbg !24651, !noalias !24252 ; 2 uses

bb.aaw:                                           ; preds = %bb.aav
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !24653, !noalias !24378
  %i.dyg = extractvalue { ptr, i64 } %i.dyf, 1, !dbg !24654 ; 2 uses
  %i.dyh = mul nuw nsw i64 %i.dsu, 20, !dbg !24655
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.dst, i64 noundef range(i64 1, 0) %i.dyh, i64 noundef 4) #19, !dbg !24663, !noalias !24252
  %i.dyi = icmp eq i64 %i.dyg, 0, !dbg !24668
  br i1 %i.dyi, label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferencesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1x_ENtB2v_16H10DefaultParamsECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.aax, !dbg !24668

bb.aax:                                           ; preds = %bb.aaw
  %i.dyj = extractvalue { ptr, i64 } %i.dyf, 0, !dbg !24654 ; 2 uses
  %i.dyk = mul nuw nsw i64 %i.dyg, 20, !dbg !24672
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dyj) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dyj, i64 noundef range(i64 1, 0) %i.dyk, i64 noundef 4) #19, !dbg !24675, !noalias !24252
  br label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq36BrotliCreateZopfliBackwardReferencesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtNtB4_19hash_to_binary_tree10H10BucketsB1x_ENtB2v_16H10DefaultParamsECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !24680

bb.aay:                                           ; preds = %bb.zk
  %i.dyl = getelementptr inbounds nuw [20 x i8], ptr %i.dst, i64 %.sroa.02.046.i, !dbg !24305 ; 4 uses
  store i64 9151254648282152960, ptr %i.dyl, align 4, !dbg !24305, !noalias !24348
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dyl, i64 8, !dbg !24305
  store i32 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !dbg !24305, !noalias !24348
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dyl, i64 12, !dbg !24305
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4, !dbg !24305, !noalias !24348
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dyl, i64 16, !dbg !24305
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !dbg !24305, !noalias !24348
  %i.dym = add nuw nsw i64 %.sroa.02.046.i, 1, !dbg !24681
  %exitcond62.not.i = icmp eq i64 %.sroa.02.046.i, %1, !dbg !24278
  br i1 %exitcond62.not.i, label %.noexc50.i.i, label %bb.zk, !dbg !24278

bb.aaz:                                           ; preds = %bb.zk
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dsu, i64 noundef %i.dsu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #20
          to label %bb.aba unwind label %bb.zj, !dbg !24305, !noalias !24348

bb.aba:                                           ; preds = %bb.aaz
  unreachable

common.resume:                                    ; preds = %bb.aee, %bb.aef, %.body.i, %.body.thread.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body29.i, %.body.thread.i ], [ %.pn81.pn.pn.ph.i, %bb.aef ], [ %.pn81.pn.pn.ph.i, %bb.aee ]
  resume { ptr, i32 } %common.resume.op, !dbg !24246

bb.abb:                                           ; preds = %bb.zh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24683), !dbg !24686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24687), !dbg !24686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24689), !dbg !24686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24691), !dbg !24686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24693), !dbg !24686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24695), !dbg !24686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !24697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !24697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !24697
  %i.dyn = getelementptr inbounds nuw i8, ptr %7, i64 76, !dbg !24697
  %i.dyo = load i32, ptr %i.dyn, align 4, !dbg !24697, !alias.scope !24687, !noalias !24700, !noundef !14
  %i.dyp = and i32 %i.dyo, 63, !dbg !24705
  %i.dyq = zext nneg i32 %i.dyp to i64, !dbg !24705
  %i.dyr = shl nuw i64 1, %i.dyq, !dbg !24705
  %i.dys = add i64 %i.dyr, -16, !dbg !24706       ; 4 uses
  %i.dyt = icmp ne i64 %1, 0, !dbg !24709         ; 2 uses
  %i.dyu = tail call { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifmNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %i.dyt, ptr noalias noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1), !dbg !24713, !noalias !24714 ; 2 uses
  %i.dyv = extractvalue { ptr, i64 } %i.dyu, 0, !dbg !24713 ; 9 uses
  %i.dyw = extractvalue { ptr, i64 } %i.dyu, 1, !dbg !24713 ; 11 uses
  %i.dyx = shl nuw nsw i64 %1, 2, !dbg !24715     ; 2 uses
  %i.dyy = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 4294967296) %1, i64 127), !dbg !24719
  %.sroa.07.0.i = add nuw nsw i64 %2, %i.dyy, !dbg !24719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !24721, !noalias !24725
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !dbg !24726, !noalias !24725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !24727, !noalias !24725
  %i.dyz = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext %i.dyt, ptr noalias noundef nonnull %0, i64 noundef %i.dyx)
          to label %.split.i unwind label %.thread.i, !dbg !24729, !noalias !24714 ; 2 uses

.thread.i:                                        ; preds = %bb.abb
  %i.dza = landingpad { ptr, i32 }
          cleanup
  br label %bb.aee, !dbg !24733

.split.i:                                         ; preds = %bb.abb
  %i.dzb = extractvalue { ptr, i64 } %i.dyz, 0, !dbg !24729 ; 2 uses
  %i.dzc = extractvalue { ptr, i64 } %i.dyz, 1, !dbg !24729 ; 2 uses
  %i.dzd = icmp samesign ugt i64 %1, 3, !dbg !24734 ; 2 uses
  br i1 %i.dzd, label %.lr.ph488.i, label %._crit_edge489.i, !dbg !24734

.lr.ph488.i:                                      ; preds = %.split.i
  %.sroa.4237.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5239.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.7240.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.dze = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.add, !dbg !24734

.loopexit329.i:                                   ; preds = %bb.adq, %bb.ady, %bb.adg
  %.sroa.16.2.ph.i = phi i64 [ %.sroa.16.0483.i, %bb.adg ], [ %.sroa.16.3.i, %bb.adq ], [ %.sroa.16.3.i, %bb.ady ]
  %.sroa.0215.2.ph.i = phi ptr [ %.sroa.0215.0484.i, %bb.adg ], [ %.sroa.0215.3.i, %bb.adq ], [ %.sroa.0215.3.i, %bb.ady ]
  %lpad.loopexit333.i.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580

.loopexit.split-lp330.i:                          ; preds = %.invoke, %bb.aea, %bb.adr, %.thread293.i, %._crit_edge489.i
  %.sroa.16.2.ph331.i = phi i64 [ %.sroa.16.3.i, %bb.adr ], [ %.sroa.16.0.lcssa.i, %._crit_edge489.i ], [ %.sroa.16.3.i, %.invoke ], [ %.sroa.16.0.lcssa.i, %.thread293.i ], [ %.sroa.16.3.i, %bb.aea ]
  %.sroa.0215.2.ph332.i = phi ptr [ %.sroa.0215.3.i, %bb.adr ], [ %.sroa.0215.0.lcssa.i, %._crit_edge489.i ], [ %.sroa.0215.3.i, %.invoke ], [ %.sroa.0215.0.lcssa.i, %.thread293.i ], [ %.sroa.0215.3.i, %bb.aea ]
  %lpad.loopexit.split-lp334.i.a = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580

._crit_edge489.i:                                 ; preds = %bb.adu, %.split.i
  %.sroa.16.0.lcssa.i = phi i64 [ %i.dzc, %.split.i ], [ %.sroa.16.3.i, %bb.adu ], !dbg !24738 ; 12 uses
  %.sroa.0215.0.lcssa.i = phi ptr [ %i.dzb, %.split.i ], [ %.sroa.0215.3.i, %bb.adu ], !dbg !24738 ; 8 uses
  %i.dzg = load i64, ptr %14, align 8, !dbg !24739, !alias.scope !24695, !noalias !24740, !noundef !14
  %i.dzh = load i64, ptr %10, align 8, !dbg !24741, !alias.scope !24689, !noalias !24743, !noundef !14 ; 2 uses
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !24744 ; 2 uses
  %i.dzj = getelementptr inbounds nuw i8, ptr %9, i64 16, !dbg !24756 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutlEINtBZ_4IterlEEINtB5_7ZipImplBW_B1r_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull %i.n, ptr noundef nonnull %i.dzi, ptr noundef nonnull readonly align 4 %9, ptr noundef nonnull readonly %i.dzj)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %.loopexit.split-lp330.i, !dbg !24770, !noalias !24693

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %._crit_edge489.i
  %.sroa.0256.0.copyload.i = load ptr, ptr %i.k, align 8, !dbg !24776, !noalias !24725 ; 8 uses
  %.sroa.4258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !24776
  %.sroa.4258.0.copyload.i = load ptr, ptr %.sroa.4258.0..sroa_idx.i, align 8, !dbg !24776, !noalias !24725 ; 8 uses
  %.sroa.5260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32, !dbg !24776
  %.sroa.5260.0.copyload.i = load i64, ptr %.sroa.5260.0..sroa_idx.i, align 8, !dbg !24776, !noalias !24725 ; 5 uses
  %.sroa.7261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40, !dbg !24776
  %.sroa.7261.0.copyload.i = load i64, ptr %.sroa.7261.0..sroa_idx.i, align 8, !dbg !24776, !noalias !24725 ; 5 uses
  %i.dzk = icmp ult i64 %.sroa.5260.0.copyload.i, %.sroa.7261.0.copyload.i, !dbg !24777
  br i1 %i.dzk, label %.lr.ph492.i.a, label %.thread293.i, !dbg !24777

.lr.ph492.i.a:                                    ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.4258.0.copyload.i2267 = ptrtoaddr ptr %.sroa.4258.0.copyload.i to i64, !dbg !24776
  %.sroa.0256.0.copyload.i2266 = ptrtoaddr ptr %.sroa.0256.0.copyload.i to i64, !dbg !24776
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0256.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4258.0.copyload.i) ]
  %i.dzl = sub nuw i64 %.sroa.7261.0.copyload.i, %.sroa.5260.0.copyload.i, !dbg !24777 ; 3 uses
  %min.iters.check2270 = icmp ult i64 %i.dzl, 8, !dbg !24777
  %i.dzm = sub i64 %.sroa.4258.0.copyload.i2267, %.sroa.0256.0.copyload.i2266, !dbg !24777
  %diff.check2268 = icmp ugt i64 %i.dzm, -32, !dbg !24777
  %or.cond = select i1 %min.iters.check2270, i1 true, i1 %diff.check2268, !dbg !24777
  br i1 %or.cond, label %scalar.ph2269.preheader, label %vector.ph2271, !dbg !24777

vector.ph2271:                                    ; preds = %.lr.ph492.i.a
  %n.vec2272 = and i64 %i.dzl, -8                 ; 3 uses
  %i.dzn = add i64 %.sroa.5260.0.copyload.i, %n.vec2272
  br label %vector.body2273

vector.body2273:                                  ; preds = %vector.body2273, %vector.ph2271
  %index2274 = phi i64 [ 0, %vector.ph2271 ], [ %index.next2277, %vector.body2273 ] ; 2 uses
  %i.dzo = add nuw i64 %.sroa.5260.0.copyload.i, %index2274 ; 2 uses
  %i.dzp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %i.dzo, !dbg !24786 ; 2 uses
  %i.dzq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %i.dzo, !dbg !24792 ; 2 uses
  %i.dzr = getelementptr inbounds nuw i8, ptr %i.dzq, i64 16, !dbg !24797
  %wide.load2275 = load <4 x i32>, ptr %i.dzq, align 4, !dbg !24797, !noalias !24693
  %wide.load2276 = load <4 x i32>, ptr %i.dzr, align 4, !dbg !24797, !noalias !24693
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dzp, i64 16, !dbg !24799
  store <4 x i32> %wide.load2275, ptr %i.dzp, align 4, !dbg !24799, !noalias !24693
  store <4 x i32> %wide.load2276, ptr %i.dzs, align 4, !dbg !24799, !noalias !24693
  %index.next2277 = add nuw i64 %index2274, 8     ; 2 uses
  %i.dzt = icmp eq i64 %index.next2277, %n.vec2272, !dbg !24777
  br i1 %i.dzt, label %middle.block2278, label %vector.body2273, !dbg !24777, !llvm.loop !24800

middle.block2278:                                 ; preds = %vector.body2273
  %cmp.n2279 = icmp eq i64 %i.dzl, %n.vec2272, !dbg !24777
  br i1 %cmp.n2279, label %.thread293.i, label %scalar.ph2269.preheader, !dbg !24777

scalar.ph2269.preheader:                          ; preds = %.lr.ph492.i.a, %middle.block2278
  %.sroa.5260.0491.i.ph = phi i64 [ %.sroa.5260.0.copyload.i, %.lr.ph492.i.a ], [ %i.dzn, %middle.block2278 ] ; 4 uses
  %i.dzu = sub i64 %.sroa.7261.0.copyload.i, %.sroa.5260.0491.i.ph, !dbg !24777
  %xtraiter4546 = and i64 %i.dzu, 3, !dbg !24777  ; 2 uses
  %lcmp.mod4547.not = icmp eq i64 %xtraiter4546, 0, !dbg !24777
  br i1 %lcmp.mod4547.not, label %scalar.ph2269.prol.loopexit, label %scalar.ph2269.prol, !dbg !24777

scalar.ph2269.prol:                               ; preds = %scalar.ph2269.preheader, %scalar.ph2269.prol
  %.sroa.5260.0491.i.prol = phi i64 [ %i.dzx, %scalar.ph2269.prol ], [ %.sroa.5260.0491.i.ph, %scalar.ph2269.preheader ] ; 3 uses
  %prol.iter4548 = phi i64 [ %prol.iter4548.next, %scalar.ph2269.prol ], [ 0, %scalar.ph2269.preheader ]
  %i.dzv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %.sroa.5260.0491.i.prol, !dbg !24786
  %i.dzw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %.sroa.5260.0491.i.prol, !dbg !24792
  %i.dzx = add nuw i64 %.sroa.5260.0491.i.prol, 1, !dbg !24801 ; 2 uses
  %i.dzy = load i32, ptr %i.dzw, align 4, !dbg !24797, !noalias !24693, !noundef !14
  store i32 %i.dzy, ptr %i.dzv, align 4, !dbg !24799, !noalias !24693
  %prol.iter4548.next = add i64 %prol.iter4548, 1, !dbg !24777 ; 2 uses
  %prol.iter4548.cmp.not = icmp eq i64 %prol.iter4548.next, %xtraiter4546, !dbg !24777
  br i1 %prol.iter4548.cmp.not, label %scalar.ph2269.prol.loopexit, label %scalar.ph2269.prol, !dbg !24777, !llvm.loop !24802

scalar.ph2269.prol.loopexit:                      ; preds = %scalar.ph2269.prol, %scalar.ph2269.preheader
  %.sroa.5260.0491.i.unr = phi i64 [ %.sroa.5260.0491.i.ph, %scalar.ph2269.preheader ], [ %i.dzx, %scalar.ph2269.prol ]
  %i.dzz = sub i64 %.sroa.5260.0491.i.ph, %.sroa.7261.0.copyload.i, !dbg !24777
  %i.eaa = icmp ugt i64 %i.dzz, -4, !dbg !24777
  br i1 %i.eaa, label %.thread293.i, label %scalar.ph2269, !dbg !24777

scalar.ph2269:                                    ; preds = %scalar.ph2269.prol.loopexit, %scalar.ph2269
  %.sroa.5260.0491.i = phi i64 [ %i.eap, %scalar.ph2269 ], [ %.sroa.5260.0491.i.unr, %scalar.ph2269.prol.loopexit ] ; 6 uses
  %i.eab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %.sroa.5260.0491.i, !dbg !24786
  %i.eac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %.sroa.5260.0491.i, !dbg !24792
  %i.ead = add nuw i64 %.sroa.5260.0491.i, 1, !dbg !24801 ; 2 uses
  %i.eae = load i32, ptr %i.eac, align 4, !dbg !24797, !noalias !24693, !noundef !14
  store i32 %i.eae, ptr %i.eab, align 4, !dbg !24799, !noalias !24693
  %i.eaf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %i.ead, !dbg !24786
  %i.eag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %i.ead, !dbg !24792
  %i.eah = add nuw i64 %.sroa.5260.0491.i, 2, !dbg !24801 ; 2 uses
  %i.eai = load i32, ptr %i.eag, align 4, !dbg !24797, !noalias !24693, !noundef !14
  store i32 %i.eai, ptr %i.eaf, align 4, !dbg !24799, !noalias !24693
  %i.eaj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %i.eah, !dbg !24786
  %i.eak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %i.eah, !dbg !24792
  %i.eal = add nuw i64 %.sroa.5260.0491.i, 3, !dbg !24801 ; 2 uses
  %i.eam = load i32, ptr %i.eak, align 4, !dbg !24797, !noalias !24693, !noundef !14
  store i32 %i.eam, ptr %i.eaj, align 4, !dbg !24799, !noalias !24693
  %i.ean = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0256.0.copyload.i, i64 %i.eal, !dbg !24786
  %i.eao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4258.0.copyload.i, i64 %i.eal, !dbg !24792
  %i.eap = add nuw i64 %.sroa.5260.0491.i, 4, !dbg !24801 ; 2 uses
  %i.eaq = load i32, ptr %i.eao, align 4, !dbg !24797, !noalias !24693, !noundef !14
  store i32 %i.eaq, ptr %i.ean, align 4, !dbg !24799, !noalias !24693
  %exitcond623.not.i.3 = icmp eq i64 %i.eap, %.sroa.7261.0.copyload.i, !dbg !24777
  br i1 %exitcond623.not.i.3, label %.thread293.i, label %scalar.ph2269, !dbg !24777, !llvm.loop !24803

.thread293.i:                                     ; preds = %scalar.ph2269.prol.loopexit, %scalar.ph2269, %middle.block2278, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutlENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSlECsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.ear = load i64, ptr %13, align 8, !dbg !24804, !alias.scope !24693, !noalias !24805, !noundef !14 ; 5 uses
  %i.eas = add nuw nsw i64 %1, 1, !dbg !24806
  %i.eat = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifNtNtNtB4_19backward_references19hash_to_binary_tree10ZopfliNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %i.eas)
          to label %bb.abc unwind label %.loopexit.split-lp330.i, !dbg !24808, !noalias !24693 ; 2 uses

bb.abc:                                           ; preds = %.thread293.i
  %i.eau = extractvalue { ptr, i64 } %i.eat, 0, !dbg !24808 ; 16 uses
  %i.eav = extractvalue { ptr, i64 } %i.eat, 1, !dbg !24808 ; 18 uses
  %i.eaw = getelementptr inbounds nuw i8, ptr %7, i64 32, !dbg !24811
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references30BrotliCreateBackwardReferencesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  store i32 1, ptr %i.ehq, align 4, !dbg !25244, !alias.scope !25227, !noalias !25220
  %.sroa.412.0..sroa_idx.i.i.i592 = getelementptr inbounds nuw i8, ptr %i.ehq, i64 4, !dbg !25244
  store i32 %i.ehm, ptr %.sroa.412.0..sroa_idx.i.i.i592, align 4, !dbg !25244, !alias.scope !25227, !noalias !25220
  %i.ehr = add i64 %.sroa.08.0.i92.i.i, 1, !dbg !25245 ; 2 uses
  %i.ehs = icmp eq i64 %i.eho, 0, !dbg !25234
  br i1 %i.ehs, label %.loopexit322.i, label %.lr.ph95.i.i, !dbg !25234

bb.acj:                                           ; preds = %.loopexit.i.i596, %.lr.ph86.i.i
  %.sroa.0.085.i.i = phi i64 [ 0, %.lr.ph86.i.i ], [ %.sroa.0.1.i.i, %.loopexit.i.i596 ] ; 5 uses
  %.sroa.05.084.i.i = phi i64 [ 0, %.lr.ph86.i.i ], [ %i.eij, %.loopexit.i.i596 ] ; 6 uses
  %i.eht = icmp ult i64 %.sroa.05.084.i.i, %i.dyw, !dbg !25247
  br i1 %i.eht, label %bb.ack, label %.invoke.i, !dbg !25247

bb.ack:                                           ; preds = %bb.acj
  %i.ehu = icmp ugt i64 %.sroa.0.085.i.i, %.sroa.16.0.lcssa.i, !dbg !25248
  br i1 %i.ehu, label %bb.acm, label %bb.acl, !dbg !25248, !prof !168

bb.acl:                                           ; preds = %bb.ack
  %i.ehv = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %.sroa.05.084.i.i, !dbg !25247
  %i.ehw = load i32, ptr %i.ehv, align 4, !dbg !25247, !alias.scope !25202, !noalias !25253, !noundef !14 ; 2 uses
  %i.ehx = zext i32 %i.ehw to i64, !dbg !25247    ; 2 uses
  %i.ehy = sub nuw nsw i64 %.sroa.16.0.lcssa.i, %.sroa.0.085.i.i, !dbg !25254
  %i.ehz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0.lcssa.i, i64 %.sroa.0.085.i.i, !dbg !25255
  %i.eia = invoke fastcc noundef i64 @_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq11UpdateNodesNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %.sroa.05.084.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 0, 4294967296) %5, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, i64 noundef range(i64 -15, 9223372036854775793) %i.dys, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef %i.ehx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ehz, i64 noundef %i.ehy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2864) %i.m, ptr noalias noundef align 8 dereferenceable(264) %i.c, ptr noalias noundef nonnull align 4 %i.eau, i64 noundef range(i64 0, 461168601842738791) %i.eav)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !25260 ; 2 uses

.noexc173.i:                                      ; preds = %bb.acl
  %i.eib = icmp ult i64 %i.eia, 16384, !dbg !25261 ; 2 uses
  %spec.store.select.i.i594 = select i1 %i.eib, i64 0, i64 %i.eia, !dbg !25261 ; 2 uses
  %i.eic = add nuw nsw i64 %.sroa.0.085.i.i, %i.ehx, !dbg !25263 ; 3 uses
  %i.eid = icmp eq i32 %i.ehw, 1, !dbg !25266
  br i1 %i.eid, label %bb.acn, label %bb.acp, !dbg !25266

bb.acm:                                           ; preds = %bb.ack
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.085.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.16.0.lcssa.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.16.0.lcssa.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #18
          to label %.noexc174.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !25267, !noalias !24693

.noexc174.i:                                      ; preds = %bb.acm
  unreachable, !dbg !25267

bb.acn:                                           ; preds = %.noexc173.i
  %i.eie = add nsw i64 %i.eic, -1, !dbg !25268    ; 3 uses
  %i.eif = icmp ult i64 %i.eie, %.sroa.16.0.lcssa.i, !dbg !25271
  br i1 %i.eif, label %bb.aco, label %.invoke.i, !dbg !25271

bb.aco:                                           ; preds = %bb.acn
  %i.eig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0.lcssa.i, i64 %i.eie, !dbg !25271
  %i.eih = load i64, ptr %i.eig, align 8, !dbg !25271, !alias.scope !25204, !noalias !25272, !noundef !14 ; 2 uses
  %i.eii = icmp ugt i64 %i.eih, 44805098831871, !dbg !25273
  br i1 %i.eii, label %.thread5158, label %bb.acp, !dbg !25273

bb.acp:                                           ; preds = %bb.aco, %.noexc173.i
  br i1 %i.eib, label %.loopexit.i.i596, label %.lr.ph.preheader.i.i595, !dbg !25274

.lr.ph.preheader.i.i595:                          ; preds = %.thread5158, %bb.acp
  %.sroa.018.0.i.i5161 = phi i64 [ %.sroa.0.0.i40.i.i, %.thread5158 ], [ %spec.store.select.i.i594, %bb.acp ]
  %.sroa.018.176.i.i = add i64 %.sroa.018.0.i.i5161, -1
  br label %.lr.ph.i167.i, !dbg !25275

.thread5158:                                      ; preds = %bb.aco
  %sum.shift.i.i607 = lshr i64 %i.eih, 37, !dbg !25276
  %.sroa.0.0.i40.i.i = call noundef i64 @llvm.umax.i64(i64 %spec.store.select.i.i594, i64 %sum.shift.i.i607), !dbg !25279
  br label %.lr.ph.preheader.i.i595, !dbg !25274

.loopexit.i.i596:                                 ; preds = %bb.acy, %.lr.ph.i167.i, %bb.acp
  %.sroa.05.1.i.i = phi i64 [ %.sroa.05.084.i.i, %bb.acp ], [ %i.eim, %.lr.ph.i167.i ], [ %i.eim, %bb.acy ], !dbg !25283 ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.eic, %bb.acp ], [ %i.ekf, %bb.acy ], [ %.sroa.0.278.i.i, %.lr.ph.i167.i ], !dbg !25284
  %i.eij = add i64 %.sroa.05.1.i.i, 1, !dbg !25285
  %i.eik = add i64 %.sroa.05.1.i.i, 4, !dbg !25287
  %i.eil = icmp ult i64 %i.eik, %1, !dbg !25222
  br i1 %i.eil, label %bb.acj, label %.lr.ph89.i.i.preheader, !dbg !25222

.lr.ph.i167.i:                                    ; preds = %bb.acy, %.lr.ph.preheader.i.i595
  %.sroa.018.179.i.i = phi i64 [ %.sroa.018.1.i.i, %bb.acy ], [ %.sroa.018.176.i.i, %.lr.ph.preheader.i.i595 ]
  %.sroa.0.278.i.i = phi i64 [ %i.ekf, %bb.acy ], [ %i.eic, %.lr.ph.preheader.i.i595 ] ; 2 uses
  %.sroa.05.277.i.i = phi i64 [ %i.eim, %bb.acy ], [ %.sroa.05.084.i.i, %.lr.ph.preheader.i.i595 ] ; 2 uses
  %i.eim = add nuw nsw i64 %.sroa.05.277.i.i, 1, !dbg !25289 ; 15 uses
  %i.ein = add nuw nsw i64 %.sroa.05.277.i.i, 4, !dbg !25291
  %.not38.i.i = icmp ult i64 %i.ein, %1, !dbg !25275
  br i1 %.not38.i.i, label %bb.acq, label %.loopexit.i.i596, !dbg !25275

bb.acq:                                           ; preds = %.lr.ph.i167.i
  call void @llvm.experimental.noalias.scope.decl(metadata !25293), !dbg !25296
  %i.eio = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %i.eim, !dbg !25297 ; 7 uses
  %i.eip = load i32, ptr %i.eio, align 4, !dbg !25297, !range !24570, !alias.scope !25299, !noalias !25300, !noundef !14
  %i.eiq = icmp eq i32 %i.eip, 0, !dbg !25303
  br i1 %i.eiq, label %bb.acr, label %bb.acs, !dbg !25303

bb.acr:                                           ; preds = %bb.acq
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eio, i64 4, !dbg !25304
  %i.eis = load float, ptr %i.eir, align 4, !dbg !25304, !alias.scope !25299, !noalias !25300, !noundef !14
  br label %bb.acs, !dbg !25305

bb.acs:                                           ; preds = %bb.acr, %bb.acq
  %.sroa.0.0.i41.i.i = phi float [ %i.eis, %bb.acr ], [ 0.000000e+00, %bb.acq ], !dbg !25306 ; 3 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eio, i64 8, !dbg !25307
  %i.eiu = load i32, ptr %i.eit, align 4, !dbg !25307, !alias.scope !25310, !noalias !25300, !noundef !14
  %i.eiv = and i32 %i.eiu, 33554431, !dbg !25307  ; 2 uses
  %i.eiw = getelementptr inbounds nuw i8, ptr %i.eio, i64 16, !dbg !25313
  %i.eix = load i32, ptr %i.eiw, align 4, !dbg !25313, !alias.scope !25310, !noalias !25300, !noundef !14 ; 2 uses
  %i.eiy = and i32 %i.eix, 134217727, !dbg !25313
  %i.eiz = getelementptr inbounds nuw i8, ptr %i.eio, i64 12, !dbg !25314
  %i.eja = load i32, ptr %i.eiz, align 4, !dbg !25314, !alias.scope !25310, !noalias !25300, !noundef !14 ; 2 uses
  %i.ejb = zext nneg i32 %i.eiv to i64, !dbg !25316
  %i.ejc = zext i32 %i.eja to i64, !dbg !25317    ; 2 uses
  %i.ejd = add nuw nsw i64 %i.ejc, %i.ejb, !dbg !25318
  %i.eje = add nuw nsw i64 %i.eim, %2, !dbg !25320
  %i.ejf = icmp samesign ule i64 %i.ejd, %i.eje, !dbg !25322
  %i.ejg = icmp uge i64 %i.dys, %i.ejc
  %or.cond.i.i.i.i597 = and i1 %i.ejg, %i.ejf, !dbg !25322
  br i1 %or.cond.i.i.i.i597, label %bb.acu, label %bb.act, !dbg !25322

bb.act:                                           ; preds = %bb.acu, %bb.acs
  %narrow.i.i.i.i598 = add nuw nsw i32 %i.eiy, %i.eiv, !dbg !25323
  %i.ejh = zext nneg i32 %narrow.i.i.i.i598 to i64, !dbg !25323
  %i.eji = sub nsw i64 %i.eim, %i.ejh, !dbg !25323 ; 3 uses
  %i.ejj = icmp ult i64 %i.eji, %i.eav, !dbg !25325
  br i1 %i.ejj, label %bb.acw, label %.invoke.i, !dbg !25325

bb.acu:                                           ; preds = %bb.acs
  %i.ejk = lshr i32 %i.eix, 27, !dbg !25326       ; 2 uses
  %i.ejl = icmp eq i32 %i.ejk, 0, !dbg !25328
  %i.ejm = add i32 %i.eja, 15, !dbg !25328
  %i.ejn = add nsw i32 %i.ejk, -1, !dbg !25328
  %.sroa.02.0.i.i.i.i605 = select i1 %i.ejl, i32 %i.ejm, i32 %i.ejn, !dbg !25328
  %.not.i.i.i.i606 = icmp eq i32 %.sroa.02.0.i.i.i.i605, 0, !dbg !25329
  br i1 %.not.i.i.i.i606, label %bb.act, label %bb.acv, !dbg !25329

bb.acv:                                           ; preds = %bb.acu
  %i.ejo = trunc i64 %i.eim to i32, !dbg !25330
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25331

bb.acw:                                           ; preds = %bb.act
  %i.ejp = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %i.eji, !dbg !25325 ; 2 uses
  %i.ejq = load i32, ptr %i.ejp, align 4, !dbg !25325, !range !24570, !alias.scope !25310, !noalias !25300, !noundef !14
  %i.ejr = icmp eq i32 %i.ejq, 2, !dbg !25332
  br i1 %i.ejr, label %bb.acx, label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25332

bb.acx:                                           ; preds = %bb.acw
  %i.ejs = getelementptr inbounds nuw i8, ptr %i.ejp, i64 4, !dbg !25333
  %i.ejt = load i32, ptr %i.ejs, align 4, !dbg !25333, !alias.scope !25310, !noalias !25300, !noundef !14
  br label %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599, !dbg !25334

_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599: ; preds = %bb.acx, %bb.acw, %bb.acv
  %.sroa.0.0.i.i.i.i600 = phi i32 [ 0, %bb.acw ], [ %i.ejo, %bb.acv ], [ %i.ejt, %bb.acx ], !dbg !25335
  store i32 2, ptr %i.eio, align 4, !dbg !25336, !alias.scope !25299, !noalias !25300
  %.sroa.4.0..sroa_idx.i42.i.i = getelementptr inbounds nuw i8, ptr %i.eio, i64 4, !dbg !25336
  store i32 %.sroa.0.0.i.i.i.i600, ptr %.sroa.4.0..sroa_idx.i42.i.i, align 4, !dbg !25336, !alias.scope !25299, !noalias !25300
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i166.i) ]
  %i.eju = icmp ult i64 %i.eim, %.val39.i.i, !dbg !25337
  br i1 %i.eju, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601, label %.invoke.i, !dbg !25337

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601: ; preds = %_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq23ComputeDistanceShortcut.exit.i.i.i599
  %i.ejv = getelementptr inbounds nuw [4 x i8], ptr %.val.i166.i, i64 %i.eim, !dbg !25337
  %i.ejw = load float, ptr %i.ejv, align 4, !dbg !25337, !noalias !25339, !noundef !14
  %i.ejx = load float, ptr %.val.i166.i, align 4, !dbg !25340, !noalias !25339, !noundef !14
  %i.ejy = fsub float %i.ejw, %i.ejx, !dbg !25337 ; 2 uses
  %i.ejz = fcmp ugt float %.sroa.0.0.i41.i.i, %i.ejy, !dbg !25341
  br i1 %i.ejz, label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604, label %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602, !dbg !25341

_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602: ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !25342, !noalias !25343
  %i.eka = fsub float %.sroa.0.0.i41.i.i, %i.ejy, !dbg !25344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !dbg !25345, !noalias !25343
  store i64 %i.eim, ptr %i.ebm, align 8, !dbg !25346, !noalias !25343
  store float %i.eka, ptr %i.ebn, align 8, !dbg !25346, !noalias !25343
  store float %.sroa.0.0.i41.i.i, ptr %i.ebo, align 4, !dbg !25346, !noalias !25343
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq20ComputeDistanceCache(i64 noundef %i.eim, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %9, i64 noundef 16, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eau, i64 noundef range(i64 1, 461168601842738791) %i.eav, ptr noalias noundef nonnull align 4 %i.b, i64 noundef 4)
          to label %.noexc179.i unwind label %.body.thread.i603, !dbg !25347, !noalias !24693

.noexc179.i:                                      ; preds = %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit.i.i.i602
  invoke void @_RNvMs3_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqNtB5_13StartPosQueue4push(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
          to label %.noexc180.i unwind label %.body.thread.i603, !dbg !25348, !noalias !24693

.noexc180.i:                                      ; preds = %.noexc179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !25349, !noalias !25343
  br label %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604, !dbg !25350

_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604: ; preds = %.noexc180.i, %_RNvMs2_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hqINtB5_15ZopfliCostModelNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE17get_literal_costsCsfISxE4fmY1Y_14polars_parquet.exit6.i.i.i601
  %i.ekb = icmp ult i64 %i.eim, %i.dyw, !dbg !25351
  br i1 %i.ekb, label %bb.acy, label %.invoke.i, !dbg !25351

bb.acy:                                           ; preds = %_RINvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq12EvaluateNodeNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet.exit.i.i604
  %i.ekc = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.eim, !dbg !25351
  %i.ekd = load i32, ptr %i.ekc, align 4, !dbg !25351, !alias.scope !25202, !noalias !25253, !noundef !14
  %i.eke = zext i32 %i.ekd to i64, !dbg !25351
  %i.ekf = add i64 %.sroa.0.278.i.i, %i.eke, !dbg !25352 ; 2 uses
  %.sroa.018.1.i.i = add i64 %.sroa.018.179.i.i, -1, !dbg !25354 ; 2 uses
  %i.ekg = icmp eq i64 %.sroa.018.1.i.i, 0, !dbg !25356
  br i1 %i.ekg, label %.loopexit.i.i596, label %.lr.ph.i167.i, !dbg !25356

.loopexit322.i:                                   ; preds = %bb.aci, %bb.acg
  %.sroa.08.0.i.lcssa.i.i593 = phi i64 [ 0, %bb.acg ], [ %i.ehr, %bb.aci ], !dbg !25357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !25358, !noalias !25212
  %i.ekh = add i64 %.sroa.08.0.i.lcssa.i.i593, %i.ear, !dbg !25359 ; 2 uses
  store i64 %i.ekh, ptr %13, align 8, !dbg !25362, !alias.scope !24693, !noalias !24805
  invoke void @_RNvNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references2hq26BrotliZopfliCreateCommands(i64 noundef range(i64 0, 4294967296) %1, i64 noundef range(i64 0, 4294967296) %2, i64 noundef %i.dys, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.eau, i64 noundef %i.eav, ptr noalias noundef nonnull align 4 %9, i64 noundef 16, ptr noalias noundef nonnull align 8 dereferenceable(8) %10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %7, ptr noalias noundef nonnull align 4 %11, i64 noundef range(i64 0, 576460752303423488) %12, ptr noalias noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.abg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !dbg !25363, !noalias !24693

bb.acz:                                           ; preds = %bb.abr
  %i.eki = getelementptr inbounds nuw [20 x i8], ptr %i.eau, i64 %.sroa.055.0493.i, !dbg !25005 ; 4 uses
  store i64 9151254648282152960, ptr %i.eki, align 4, !dbg !25005, !noalias !24693
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eki, i64 8, !dbg !25005
  store i32 1, ptr %.sroa.453.0..sroa_idx.i, align 4, !dbg !25005, !noalias !24693
  %.sroa.5.0..sroa_idx.i586 = getelementptr inbounds nuw i8, ptr %i.eki, i64 12, !dbg !25005
  store i32 0, ptr %.sroa.5.0..sroa_idx.i586, align 4, !dbg !25005, !noalias !24693
  %.sroa.654.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eki, i64 16, !dbg !25005
  store i32 0, ptr %.sroa.654.0..sroa_idx.i, align 4, !dbg !25005, !noalias !24693
  %i.ekj = add nuw nsw i64 %.sroa.055.0493.i, 1, !dbg !25364
  %exitcond625.not.i = icmp eq i64 %.sroa.055.0493.i, %1, !dbg !24998
  br i1 %exitcond625.not.i, label %bb.abq, label %bb.abr, !dbg !24998

bb.ada:                                           ; preds = %bb.abr
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.eav, i64 noundef %i.eav, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #20
          to label %bb.adb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !dbg !25005, !noalias !24693

bb.adb:                                           ; preds = %bb.adr, %bb.ada
  unreachable

.body.i581:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %bb.abe, %bb.abd
  %.sroa.044.2.lpad-body.i = phi i1 [ false, %bb.abd ], [ false, %bb.abe ], [ %.sroa.044.2.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.loopexit.split-lp.loopexit.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %eh.lpad-body.i582 = phi { ptr, i32 } [ %i.ebg, %bb.abd ], [ %i.ebg, %bb.abe ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit323.i.a, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit326.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %i.ekk = icmp eq i64 %i.eav, 0, !dbg !24837
  br i1 %i.ekk, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580, label %bb.adc, !dbg !24837

bb.adc:                                           ; preds = %.body.i581, %.body.thread.i603
  %eh.lpad-body669.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.body.thread.i603 ], [ %eh.lpad-body.i582, %.body.i581 ]
  %.sroa.044.2.lpad-body668.i = phi i1 [ true, %.body.thread.i603 ], [ %.sroa.044.2.lpad-body.i, %.body.i581 ]
  %i.ekl = mul nuw nsw i64 %i.eav, 20, !dbg !25366
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eau) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eau, i64 noundef range(i64 1, 0) %i.ekl, i64 noundef 4) #19, !dbg !25369, !noalias !24693
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxNtNtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_tree10ZopfliNodeEECsfISxE4fmY1Y_14polars_parquet.exit.i580, !dbg !25374

bb.add:                                           ; preds = %bb.adu, %.lr.ph488.i
  %.sroa.0.0487.i = phi i64 [ %i.dyx, %.lr.ph488.i ], [ %.sroa.0.1.i611, %bb.adu ] ; 8 uses
  %.sroa.08.0486.i = phi i64 [ 0, %.lr.ph488.i ], [ %.sroa.08.1.i, %bb.adu ] ; 10 uses
  %.sroa.016.0485.i = phi i64 [ 0, %.lr.ph488.i ], [ %i.emu, %bb.adu ] ; 9 uses
  %.sroa.0215.0484.i = phi ptr [ %i.dzb, %.lr.ph488.i ], [ %.sroa.0215.3.i, %bb.adu ] ; 9 uses
  %.sroa.16.0483.i = phi i64 [ %i.dzc, %.lr.ph488.i ], [ %.sroa.16.3.i, %bb.adu ] ; 7 uses
  %i.ekm = add i64 %.sroa.016.0485.i, %2, !dbg !25375 ; 4 uses
  %.sroa.0.0.i.i610 = call noundef i64 @llvm.umin.i64(i64 %i.dys, i64 %i.ekm), !dbg !25377
  %i.ekn = sub i64 %1, %.sroa.016.0485.i, !dbg !25382
  %i.eko = add i64 %.sroa.08.0486.i, 128, !dbg !25385 ; 3 uses
  %i.ekp = icmp ult i64 %.sroa.0.0487.i, %i.eko, !dbg !25389
  br i1 %i.ekp, label %bb.ade, label %bb.adp, !dbg !25389

bb.ade:                                           ; preds = %bb.add
  %i.ekq = icmp eq i64 %.sroa.0.0487.i, 0, !dbg !25390 ; 2 uses
  %..sroa.0.0.i = select i1 %i.ekq, i64 %i.eko, i64 %.sroa.0.0487.i, !dbg !25391
  br label %bb.adf, !dbg !25392

bb.adf:                                           ; preds = %bb.adf, %bb.ade
  %.sroa.024.1.i = phi i64 [ %..sroa.0.0.i, %bb.ade ], [ %i.eks, %bb.adf ], !dbg !25394 ; 5 uses
  %i.ekr = icmp ult i64 %.sroa.024.1.i, %i.eko, !dbg !25395
  %i.eks = shl i64 %.sroa.024.1.i, 1, !dbg !25396
  br i1 %i.ekr, label %bb.adf, label %bb.adg, !dbg !25395

bb.adg:                                           ; preds = %bb.adf
  %i.ekt = invoke { ptr, i64 } @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14combined_alloc8alloc_ifyNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet(i1 noundef zeroext true, ptr noalias noundef nonnull %0, i64 noundef %.sroa.024.1.i)
          to label %bb.adh unwind label %.loopexit329.i, !dbg !25398, !noalias !24693 ; 2 uses

bb.adh:                                           ; preds = %bb.adg
  %i.eku = extractvalue { ptr, i64 } %i.ekt, 0, !dbg !25398 ; 8 uses
  %i.ekv = extractvalue { ptr, i64 } %i.ekt, 1, !dbg !25398 ; 5 uses
  br i1 %i.ekq, label %.thread312.i, label %bb.adi, !dbg !25400

.thread312.i:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.adh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25402, !noalias !24725
  store i64 0, ptr %i.a, align 8, !dbg !25402, !noalias !24725
  store ptr inttoptr (i64 8 to ptr), ptr %i.dze, align 8, !dbg !25402, !noalias !24725
  store i64 0, ptr %i.dzf, align 8, !dbg !25402, !noalias !24725
  %i.ekw = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecyE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.adm unwind label %.loopexit339.i, !dbg !25409, !noalias !24693 ; 2 uses

bb.adi:                                           ; preds = %bb.adh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eku) ]
  %.not.i183.i = icmp ugt i64 %.sroa.0.0487.i, %i.ekv, !dbg !25411
  br i1 %.not.i183.i, label %bb.adj, label %bb.adk, !dbg !25411, !prof !168

bb.adj:                                           ; preds = %bb.adi
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @402) #18
          to label %.noexc184.i unwind label %.loopexit.split-lp340.i, !dbg !25416, !noalias !24693

.noexc184.i:                                      ; preds = %bb.adj
  unreachable, !dbg !25416

bb.adk:                                           ; preds = %bb.adi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0215.0484.i) ]
  %.not.i185.i = icmp ugt i64 %.sroa.0.0487.i, %.sroa.16.0483.i, !dbg !25417
  br i1 %.not.i185.i, label %bb.adl, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !25417, !prof !168

bb.adl:                                           ; preds = %bb.adk
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #18
          to label %.noexc189.i unwind label %.thread318.loopexit.split-lp.i, !dbg !25422, !noalias !24693

.noexc189.i:                                      ; preds = %bb.adl
  unreachable, !dbg !25422

_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.adk
  %i.ekx = getelementptr inbounds nuw [8 x i8], ptr %i.eku, i64 %.sroa.0.0487.i, !dbg !25423
  %i.eky = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0484.i, i64 %.sroa.0.0487.i, !dbg !25432
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E3newCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull %i.eku, ptr noundef nonnull %i.ekx, ptr noundef nonnull %.sroa.0215.0484.i, ptr noundef nonnull %i.eky)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i unwind label %.thread318.loopexit.i, !dbg !25440, !noalias !24693

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSy8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.0235.0.copyload.i = load ptr, ptr %i.l, align 8, !dbg !25445, !noalias !24725 ; 8 uses
  %.sroa.4237.0.copyload.i = load ptr, ptr %.sroa.4237.0..sroa_idx.i, align 8, !dbg !25445, !noalias !24725 ; 8 uses
  %.sroa.5239.0.copyload.i = load i64, ptr %.sroa.5239.0..sroa_idx.i, align 8, !dbg !25445, !noalias !24725 ; 5 uses
  %.sroa.7240.0.copyload.i = load i64, ptr %.sroa.7240.0..sroa_idx.i, align 8, !dbg !25445, !noalias !24725 ; 5 uses
  %i.ekz = icmp ult i64 %.sroa.5239.0.copyload.i, %.sroa.7240.0.copyload.i, !dbg !25446
  br i1 %i.ekz, label %.lr.ph.i612, label %.thread312.i, !dbg !25446

.lr.ph.i612:                                      ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4IteryEECsfISxE4fmY1Y_14polars_parquet.exit.i
  %.sroa.4237.0.copyload.i2263 = ptrtoaddr ptr %.sroa.4237.0.copyload.i to i64, !dbg !25445
  %.sroa.0235.0.copyload.i2262 = ptrtoaddr ptr %.sroa.0235.0.copyload.i to i64, !dbg !25445
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0235.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4237.0.copyload.i) ]
  %i.ela = sub nuw i64 %.sroa.7240.0.copyload.i, %.sroa.5239.0.copyload.i, !dbg !25446 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ela, 4, !dbg !25446
  %i.elb = sub i64 %.sroa.4237.0.copyload.i2263, %.sroa.0235.0.copyload.i2262, !dbg !25446
  %diff.check = icmp ugt i64 %i.elb, -32, !dbg !25446
  %or.cond2307 = select i1 %min.iters.check, i1 true, i1 %diff.check, !dbg !25446
  br i1 %or.cond2307, label %scalar.ph.preheader, label %vector.ph, !dbg !25446

vector.ph:                                        ; preds = %.lr.ph.i612
  %n.vec = and i64 %i.ela, -4                     ; 3 uses
  %i.elc = add i64 %.sroa.5239.0.copyload.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eld = add nuw i64 %.sroa.5239.0.copyload.i, %index ; 2 uses
  %i.ele = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.eld, !dbg !25453 ; 2 uses
  %i.elf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.eld, !dbg !25459 ; 2 uses
  %i.elg = getelementptr inbounds nuw i8, ptr %i.elf, i64 16, !dbg !25464
  %wide.load = load <2 x i64>, ptr %i.elf, align 8, !dbg !25464, !noalias !24693
  %wide.load2264 = load <2 x i64>, ptr %i.elg, align 8, !dbg !25464, !noalias !24693
  %i.elh = getelementptr inbounds nuw i8, ptr %i.ele, i64 16, !dbg !25466
  store <2 x i64> %wide.load, ptr %i.ele, align 8, !dbg !25466, !noalias !24693
  store <2 x i64> %wide.load2264, ptr %i.elh, align 8, !dbg !25466, !noalias !24693
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eli = icmp eq i64 %index.next, %n.vec, !dbg !25446
  br i1 %i.eli, label %middle.block, label %vector.body, !dbg !25446, !llvm.loop !25467

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ela, %n.vec, !dbg !25446
  br i1 %cmp.n, label %.thread312.i, label %scalar.ph.preheader, !dbg !25446

scalar.ph.preheader:                              ; preds = %.lr.ph.i612, %middle.block
  %.sroa.5239.0480.i.ph = phi i64 [ %.sroa.5239.0.copyload.i, %.lr.ph.i612 ], [ %i.elc, %middle.block ] ; 4 uses
  %i.elj = sub i64 %.sroa.7240.0.copyload.i, %.sroa.5239.0480.i.ph, !dbg !25446
  %xtraiter = and i64 %i.elj, 3, !dbg !25446      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !25446
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25446

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.sroa.5239.0480.i.prol = phi i64 [ %i.elm, %scalar.ph.prol ], [ %.sroa.5239.0480.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.elk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %.sroa.5239.0480.i.prol, !dbg !25453
  %i.ell = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %.sroa.5239.0480.i.prol, !dbg !25459
  %i.elm = add nuw i64 %.sroa.5239.0480.i.prol, 1, !dbg !25468 ; 2 uses
  %i.eln = load i64, ptr %i.ell, align 8, !dbg !25464, !noalias !24693, !noundef !14
  store i64 %i.eln, ptr %i.elk, align 8, !dbg !25466, !noalias !24693
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !25446 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !25446
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !25446, !llvm.loop !25469

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.5239.0480.i.unr = phi i64 [ %.sroa.5239.0480.i.ph, %scalar.ph.preheader ], [ %i.elm, %scalar.ph.prol ]
  %i.elo = sub i64 %.sroa.5239.0480.i.ph, %.sroa.7240.0.copyload.i, !dbg !25446
  %i.elp = icmp ugt i64 %i.elo, -4, !dbg !25446
  br i1 %i.elp, label %.thread312.i, label %scalar.ph, !dbg !25446

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.sroa.5239.0480.i = phi i64 [ %i.eme, %scalar.ph ], [ %.sroa.5239.0480.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.elq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %.sroa.5239.0480.i, !dbg !25453
  %i.elr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %.sroa.5239.0480.i, !dbg !25459
  %i.els = add nuw i64 %.sroa.5239.0480.i, 1, !dbg !25468 ; 2 uses
  %i.elt = load i64, ptr %i.elr, align 8, !dbg !25464, !noalias !24693, !noundef !14
  store i64 %i.elt, ptr %i.elq, align 8, !dbg !25466, !noalias !24693
  %i.elu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.els, !dbg !25453
  %i.elv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.els, !dbg !25459
  %i.elw = add nuw i64 %.sroa.5239.0480.i, 2, !dbg !25468 ; 2 uses
  %i.elx = load i64, ptr %i.elv, align 8, !dbg !25464, !noalias !24693, !noundef !14
  store i64 %i.elx, ptr %i.elu, align 8, !dbg !25466, !noalias !24693
  %i.ely = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.elw, !dbg !25453
  %i.elz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.elw, !dbg !25459
  %i.ema = add nuw i64 %.sroa.5239.0480.i, 3, !dbg !25468 ; 2 uses
  %i.emb = load i64, ptr %i.elz, align 8, !dbg !25464, !noalias !24693, !noundef !14
  store i64 %i.emb, ptr %i.ely, align 8, !dbg !25466, !noalias !24693
  %i.emc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0235.0.copyload.i, i64 %i.ema, !dbg !25453
  %i.emd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4237.0.copyload.i, i64 %i.ema, !dbg !25459
  %i.eme = add nuw i64 %.sroa.5239.0480.i, 4, !dbg !25468 ; 2 uses
  %i.emf = load i64, ptr %i.emd, align 8, !dbg !25464, !noalias !24693, !noundef !14
  store i64 %i.emf, ptr %i.emc, align 8, !dbg !25466, !noalias !24693
  %exitcond.not.i613.3 = icmp eq i64 %i.eme, %.sroa.7240.0.copyload.i, !dbg !25446
  br i1 %exitcond.not.i613.3, label %.thread312.i, label %scalar.ph, !dbg !25446, !llvm.loop !25470

bb.adm:                                           ; preds = %.thread312.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25471, !noalias !24725
  %i.emg = extractvalue { ptr, i64 } %i.ekw, 0, !dbg !25472 ; 2 uses
  %i.emh = extractvalue { ptr, i64 } %i.ekw, 1, !dbg !25472 ; 2 uses
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.10?download=true
inline.NumInlined: 2534
inline.NumDeleted: 536
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.fn:                                            ; preds = %bb.fm
  %i.agv = shl nuw nsw i64 %i.os, 2, !dbg !12520
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.or) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.or, i64 noundef range(i64 1, 0) %i.agv, i64 noundef 4) #19, !dbg !12521, !noalias !11153
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i, !dbg !12522

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i: ; preds = %bb.fn, %bb.fm, %.thread.i.i
  %.pn229.pn.pn.pn.pn.pn.pn562.i.i = phi { ptr, i32 } [ %i.oq, %.thread.i.i ], [ %.pn229.pn.pn.pn.pn.pn568.i.i, %bb.fn ], [ %.pn229.pn.pn.pn.pn.pn568.i.i, %bb.fm ] ; 2 uses
  %i.agw = icmp eq i64 %i.of, 0, !dbg !12523
  br i1 %i.agw, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.fo, !dbg !12523

bb.fo:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit477.i.i
  %i.agx = shl nuw nsw i64 %i.of, 2, !dbg !12524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oe) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oe, i64 noundef range(i64 1, 0) %i.agx, i64 noundef 4) #19, !dbg !12525, !noalias !11153
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !12526

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i, %bb.co
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ky, i64 noundef range(i64 1, 0) %i.kz, i64 noundef 1) #19, !dbg !12527, !noalias !11102
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllochECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !12528

bb.fp:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split460.i
  %.sroa.0.0462.i = phi i64 [ %spec.store.select.i, %.split460.i ], [ %i.axh, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0461.i = phi i64 [ 0, %.split460.i ], [ %i.agy, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.agy = add nuw nsw i64 %.sroa.031.0461.i, 1, !dbg !12529 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11256), !dbg !12530
  call void @llvm.experimental.noalias.scope.decl(metadata !11257), !dbg !12530
  call void @llvm.experimental.noalias.scope.decl(metadata !11258), !dbg !12530
  call void @llvm.experimental.noalias.scope.decl(metadata !11259), !dbg !12530
  call void @llvm.experimental.noalias.scope.decl(metadata !11260), !dbg !12530
  call void @llvm.experimental.noalias.scope.decl(metadata !11261), !dbg !12530
  %i.agz = icmp eq i64 %.sroa.0.0462.i, 0, !dbg !12531
  br i1 %i.agz, label %.loopexit86.i, label %bb.fq, !dbg !12531

bb.fq:                                            ; preds = %bb.fp
  %i.aha = add nsw i64 %.sroa.0.0462.i, 7, !dbg !12532
  %i.ahb = lshr i64 %i.aha, 3, !dbg !12533        ; 8 uses
  %i.ahc = icmp eq i64 %.sroa.0.0462.i, 1, !dbg !12534
  br i1 %i.ahc, label %.preheader.i170.i.preheader, label %bb.fr, !dbg !12534

.preheader.i170.i.preheader:                      ; preds = %bb.fq
  br i1 %min.iters.check, label %.preheader.i170.i.preheader5461, label %vector.body4528, !dbg !12535

.preheader.i170.i.preheader5461:                  ; preds = %vector.body4528, %.preheader.i170.i.preheader
  %.sroa.065.0392.i.i.ph = phi i64 [ 0, %.preheader.i170.i.preheader ], [ %n.vec, %vector.body4528 ]
  br label %.preheader.i170.i, !dbg !12535

vector.body4528:                                  ; preds = %.preheader.i170.i.preheader, %vector.body4528
  %index4529 = phi i64 [ %index.next4530, %vector.body4528 ], [ 0, %.preheader.i170.i.preheader ], !dbg !12536 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index4529, !dbg !12535 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16, !dbg !12535
  store <16 x i8> zeroinitializer, ptr %i.ahd, align 1, !dbg !12535, !alias.scope !11261, !noalias !11263
  store <16 x i8> zeroinitializer, ptr %i.ahe, align 1, !dbg !12535, !alias.scope !11261, !noalias !11263
  %index.next4530 = add nuw i64 %index4529, 32, !dbg !12536 ; 2 uses
  %i.ahf = icmp eq i64 %index.next4530, %n.vec, !dbg !12537
  br i1 %i.ahf, label %.preheader.i170.i.preheader5461, label %vector.body4528, !dbg !12537, !llvm.loop !7473

bb.fr:                                            ; preds = %bb.fq
  %i.ahg = shl nuw nsw i64 %.sroa.0.0462.i, 8, !dbg !12538 ; 2 uses
  %.not110.i.i = icmp samesign ugt i64 %i.ahg, %i.lp
  br i1 %.not110.i.i, label %.invoke1322.i, label %.preheader309.split.i.i, !dbg !12539, !prof !727

.preheader309.split.i.i:                          ; preds = %bb.fr
  %.idx.i165.i = shl nuw nsw i64 %.sroa.0.0462.i, 10, !dbg !12540
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lo, i8 0, i64 %.idx.i165.i, i1 false), !dbg !12541, !alias.scope !11258, !noalias !11264
  br label %bb.fs, !dbg !12542

bb.fs:                                            ; preds = %bb.hv, %.preheader309.split.i.i
  %.sroa.067.0348.i.i = phi i64 [ 0, %.preheader309.split.i.i ], [ %i.ahh, %bb.hv ] ; 4 uses
  %i.ahh = add nuw nsw i64 %.sroa.067.0348.i.i, 1, !dbg !12543 ; 2 uses
  %exitcond.not.i166.i = icmp eq i64 %.sroa.067.0348.i.i, %i.gm, !dbg !12544
  br i1 %exitcond.not.i166.i, label %.invoke1320.i, label %bb.ht, !dbg !12544

.loopexit307.i.i:                                 ; preds = %bb.hs
  %i.ahi = icmp eq i64 %i.ahj, 0, !dbg !12545
  br i1 %i.ahi, label %bb.ft, label %.split.i.i, !dbg !12545

bb.ft:                                            ; preds = %.loopexit307.i.i
  br i1 %i.mx, label %._crit_edge.i167.i, label %.lr.ph352.i.i, !dbg !12546

.split.i.i:                                       ; preds = %bb.hv, %.loopexit307.i.i
  %.sroa.04.0350.i.i = phi i64 [ %i.ahj, %.loopexit307.i.i ], [ 256, %bb.hv ]
  %i.ahj = add nsw i64 %.sroa.04.0350.i.i, -1, !dbg !12547 ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.gl, i64 %i.ahj, !dbg !12548
  %i.ahk = mul nuw nsw i64 %i.ahj, %.sroa.0.0462.i
  br label %bb.hn, !dbg !12549

.lr.ph352.i.i:                                    ; preds = %bb.ft, %.noexc173.i
  %.sroa.018.0351.i.i = phi ptr [ %i.ahl, %.noexc173.i ], [ %i.ls, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !12550, !noalias !11272
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.cv)
          to label %.noexc173.i unwind label %.loopexit.split-lp.loopexit.i, !dbg !12551, !noalias !11102

.noexc173.i:                                      ; preds = %.lr.ph352.i.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i, i64 32, !dbg !12552 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.cv, i64 32, i1 false), !dbg !12553, !noalias !11274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !12554, !noalias !11272
  %i.ahm = icmp eq ptr %i.ahl, %i.mw, !dbg !12555
  br i1 %i.ahm, label %._crit_edge.i167.i, label %.lr.ph352.i.i, !dbg !12546

._crit_edge.i167.i:                               ; preds = %.noexc173.i, %bb.ft
  %i.ahn = mul i64 %i.ahb, %.sroa.0.0.lcssa, !dbg !12556 ; 4 uses
  %.not111.i.i = icmp ugt i64 %i.ahn, %i.mh
  br i1 %.not111.i.i, label %.invoke1322.i, label %bb.fu, !dbg !12557, !prof !727

bb.fu:                                            ; preds = %._crit_edge.i167.i
  %i.aho = icmp samesign eq i64 %i.ahn, 0, !dbg !12558
  br i1 %i.aho, label %._crit_edge356.i.i, label %.lr.ph355.preheader.i.i, !dbg !12559

.lr.ph355.preheader.i.i:                          ; preds = %bb.fu
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.mg, i8 0, i64 %i.ahn, i1 false), !dbg !12560, !alias.scope !11260, !noalias !11280
  br label %._crit_edge356.i.i

._crit_edge356.i.i:                               ; preds = %.lr.ph355.preheader.i.i, %bb.fu
  br i1 %.not112.i.i, label %.invoke1322.i, label %.lr.ph377.i.i, !dbg !12561, !prof !727

.lr.ph377.i.i:                                    ; preds = %._crit_edge356.i.i
  %i.ahp = lshr i64 %.sroa.0.0462.i, 3            ; 3 uses
  %.not.i126.i.i = icmp samesign ugt i64 %i.ahp, %i.lt
  %.idx394.i.i = shl nuw nsw i64 %i.ahp, 5
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx394.i.i
  %i.ahr = icmp eq i64 %i.ahp, 0
  %i.ahs = and i64 %.sroa.0.0462.i, 36028797018963960 ; 15 uses
  %i.aht = and i64 %.sroa.0.0462.i, 7             ; 8 uses
  %.not.i.i168.i = icmp samesign ugt i64 %i.ahb, %i.lt
  %.idx395.i.i = shl i64 %i.ahb, 5                ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.idx395.i.i
  br i1 %.not.i126.i.i, label %.lr.ph377.split.us.i.i, label %.lr.ph377.split.preheader.i.i, !prof !712

.lr.ph377.split.preheader.i.i:                    ; preds = %.lr.ph377.i.i
  %i.ahv = icmp eq i64 %i.aht, 0
  %i.ahw = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.ahx = icmp samesign ult i64 %i.ahw, %i.lt
  %i.ahy = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ahw ; 2 uses
  %i.ahz = trunc i64 %i.ahs to i8
  %i.aia = icmp eq i64 %i.aht, 1
  %i.aib = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.aic = icmp samesign ult i64 %i.aib, %i.lt
  %i.aid = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aib
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4 ; 2 uses
  %i.aif = trunc i64 %i.ahs to i8
  %i.aig = or disjoint i8 %i.aif, 1
  %i.aih = icmp eq i64 %i.aht, 2
  %i.aii = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.aij = icmp samesign ult i64 %i.aii, %i.lt
  %i.aik = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aii
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8 ; 2 uses
  %i.aim = trunc i64 %i.ahs to i8
  %i.ain = or disjoint i8 %i.aim, 2
  %i.aio = icmp eq i64 %i.aht, 3
  %i.aip = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.aiq = icmp samesign ult i64 %i.aip, %i.lt
  %i.air = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aip
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 12 ; 2 uses
  %i.ait = trunc i64 %i.ahs to i8
  %i.aiu = or disjoint i8 %i.ait, 3
  %i.aiv = icmp eq i64 %i.aht, 4
  %i.aiw = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.aix = icmp samesign ult i64 %i.aiw, %i.lt
  %i.aiy = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.aiw
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16 ; 2 uses
  %i.aja = trunc i64 %i.ahs to i8
  %i.ajb = or disjoint i8 %i.aja, 4
  %i.ajc = icmp eq i64 %i.aht, 5
  %i.ajd = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.aje = icmp samesign ult i64 %i.ajd, %i.lt
  %i.ajf = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ajd
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 20 ; 2 uses
  %i.ajh = trunc i64 %i.ahs to i8
  %i.aji = or disjoint i8 %i.ajh, 5
  %i.ajj = icmp eq i64 %i.aht, 6
  %i.ajk = lshr exact i64 %i.ahs, 3               ; 3 uses
  %i.ajl = icmp samesign ult i64 %i.ajk, %i.lt
  %i.ajm = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %i.ajk
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 24 ; 2 uses
  %i.ajo = trunc i64 %i.ahs to i8
  %i.ajp = or disjoint i8 %i.ajo, 6
  %i.ajq = add i64 %.idx395.i.i, -32
  %i.ajr = lshr exact i64 %i.ajq, 5
  br label %.lr.ph377.split.i.i, !dbg !12562

.lr.ph377.split.us.i.i:                           ; preds = %.lr.ph377.i.i
  %.not397.i.i = icmp eq i64 %i.kz, 0, !dbg !12562
  br i1 %.not397.i.i, label %.invoke1320.i, label %bb.fv, !dbg !12562

bb.fv:                                            ; preds = %.lr.ph377.split.us.i.i
  %i.ajs = load i8, ptr %i.fx, align 1, !dbg !12563, !alias.scope !11281, !noalias !11282, !noundef !664
  %i.ajt = zext i8 %i.ajs to i64, !dbg !12564
  %i.aju = mul nuw nsw i64 %.sroa.0.0462.i, %i.ajt, !dbg !12565
  %.not.i125.us.i.i = icmp samesign ugt i64 %i.aju, %i.lp, !dbg !12566
  br i1 %.not.i125.us.i.i, label %.split381.us.i.i, label %.invoke1324.i, !dbg !12566, !prof !712

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i: ; preds = %bb.gv
  %i.ajv = icmp eq ptr %i.ajw, %i.my, !dbg !12567
  br i1 %i.ajv, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i, label %.lr.ph377.split.i.i, !dbg !12568

.lr.ph377.split.i.i:                              ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i, %.lr.ph377.split.preheader.i.i
  %.sroa.0.0289375.i.i = phi ptr [ %i.ajw, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ %i.fx, %.lr.ph377.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0374.i.i = phi i64 [ %i.ajx, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ 0, %.lr.ph377.split.preheader.i.i ] ; 7 uses
  %14 = mul i64 %i.ahb, %.sroa.7.0374.i.i, !dbg !12569
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i, i64 1, !dbg !12569 ; 2 uses
  %i.ajx = add nuw nsw i64 %.sroa.7.0374.i.i, 1, !dbg !12570
  %exitcond425.not.i.i = icmp eq i64 %.sroa.7.0374.i.i, %i.kz, !dbg !12562
  br i1 %exitcond425.not.i.i, label %.invoke1320.i, label %bb.fz, !dbg !12562

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i
  br i1 %i.nh, label %.lr.ph390.preheader.i.i, label %.invoke1320.i, !dbg !12571

.lr.ph390.preheader.i.i:                          ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i
  %i.ajy = load i8, ptr %i.ni, align 1, !dbg !12571, !alias.scope !11261, !noalias !11263, !noundef !664
  %i.ajz = mul i64 %i.ahb, %i.ng, !dbg !12572
  br label %.lr.ph390.i.i, !dbg !12573

.lr.ph390.i.i:                                    ; preds = %bb.fy, %.lr.ph390.preheader.i.i
  %.sroa.0.1389.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.fy ], [ 1, %.lr.ph390.preheader.i.i ] ; 2 uses
  %.sroa.061.0388.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.fy ], [ %i.ajy, %.lr.ph390.preheader.i.i ] ; 4 uses
  %.sroa.059.0387.i.i = phi i64 [ %i.akb, %bb.fy ], [ %i.ajz, %.lr.ph390.preheader.i.i ]
  %.sroa.052.0386.i.i = phi i64 [ %i.aka, %bb.fy ], [ %i.ng, %.lr.ph390.preheader.i.i ]
  %i.aka = add nsw i64 %.sroa.052.0386.i.i, -1, !dbg !12574 ; 4 uses
  %i.akb = sub i64 %.sroa.059.0387.i.i, %i.ahb, !dbg !12575 ; 2 uses
  %i.akc = lshr i8 %.sroa.061.0388.i.i, 3, !dbg !12576
  %i.akd = zext nneg i8 %i.akc to i64, !dbg !12576
  %i.ake = add i64 %i.akb, %i.akd, !dbg !12577    ; 3 uses
  %i.akf = icmp ult i64 %i.ake, %i.mh, !dbg !12573
  br i1 %i.akf, label %bb.fw, label %.invoke1320.i, !dbg !12573

bb.fw:                                            ; preds = %.lr.ph390.i.i
  %i.akg = and i8 %.sroa.061.0388.i.i, 7, !dbg !12578
  %i.akh = shl nuw i8 1, %i.akg, !dbg !12579
  %i.aki = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ake, !dbg !12573
  %i.akj = load i8, ptr %i.aki, align 1, !dbg !12573, !alias.scope !11260, !noalias !11280, !noundef !664
  %i.akk = and i8 %i.akj, %i.akh, !dbg !12573
  %i.akl = icmp eq i8 %i.akk, 0, !dbg !12573
  br i1 %i.akl, label %bb.fy, label %bb.fx, !dbg !12573

bb.fx:                                            ; preds = %bb.fw
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.aka, !dbg !12580
  %i.akn = load i8, ptr %i.akm, align 1, !dbg !12580, !alias.scope !11261, !noalias !11263, !noundef !664 ; 2 uses
  %.not115.i.i = icmp ne i8 %.sroa.061.0388.i.i, %i.akn, !dbg !12581
  %i.ako = zext i1 %.not115.i.i to i64, !dbg !12581
  %spec.select117.i.i = add i64 %.sroa.0.1389.i.i, %i.ako, !dbg !12581
  br label %bb.fy, !dbg !12581

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0388.i.i, %bb.fw ], [ %i.akn, %bb.fx ], !dbg !12582 ; 2 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.1389.i.i, %bb.fw ], [ %spec.select117.i.i, %bb.fx ], !dbg !12583 ; 2 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.aka, !dbg !12584
  store i8 %.sroa.061.1.i.i, ptr %i.akp, align 1, !dbg !12584, !alias.scope !11261, !noalias !11263
  %.not114.i.i = icmp eq i64 %i.aka, 0, !dbg !12585
  br i1 %.not114.i.i, label %.loopexit86.i, label %.lr.ph390.i.i, !dbg !12585

bb.fz:                                            ; preds = %.lr.ph377.split.i.i
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.7.0374.i.i, !dbg !12586 ; 15 uses
  %i.akr = mul i64 %.sroa.7.0374.i.i, %i.ahb, !dbg !12587 ; 3 uses
  %i.aks = load i8, ptr %.sroa.0.0289375.i.i, align 1, !dbg !12563, !alias.scope !11281, !noalias !11282, !noundef !664
  %i.akt = zext i8 %i.aks to i64, !dbg !12564
  %i.aku = mul nuw nsw i64 %.sroa.0.0462.i, %i.akt, !dbg !12565 ; 4 uses
  %.not.i125.i.i = icmp samesign ugt i64 %i.aku, %i.lp, !dbg !12566
  br i1 %.not.i125.i.i, label %.split381.us.i.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !12566, !prof !712

.split381.us.i.i:                                 ; preds = %bb.fz, %bb.fv
  br label %.invoke1324.i, !dbg !12588

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.fz
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.aku, !dbg !12589
  %i.akw = sub nuw nsw i64 %i.lp, %i.aku, !dbg !12590 ; 2 uses
  br i1 %i.ahr, label %._crit_edge363.i.i, label %.lr.ph362.i.i, !dbg !12591

.lr.ph362.i.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.hm
  %.sroa.049.0361.i.i = phi float [ %.sroa.049.4.7.i.i, %bb.hm ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  %.sroa.0160.0360.i.i = phi ptr [ %i.akx, %bb.hm ], [ %i.ls, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 10 uses
  %.sroa.7162.0359.i.i = phi i64 [ %i.aky, %bb.hm ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !12592, !noalias !11272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cu, i8 0, i64 32, i1 false), !noalias !11272
  %i.akx = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i, i64 32, !dbg !12593 ; 2 uses
  %i.aky = add nuw nsw i64 %.sroa.7162.0359.i.i, 1, !dbg !12594
  %i.akz = shl nuw nsw i64 %.sroa.7162.0359.i.i, 3, !dbg !12595 ; 11 uses
  %.not.i145.i.i = icmp samesign ugt i64 %i.akz, %i.akw, !dbg !12596
  br i1 %.not.i145.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i, !dbg !12596, !prof !712

._crit_edge363.i.i:                               ; preds = %bb.hm, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.sroa.049.0.lcssa.i.i = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.sroa.049.4.7.i.i, %bb.hm ], !dbg !12597 ; 3 uses
  %i.ala = add nuw nsw i64 %i.aku, %i.ahs, !dbg !12598 ; 3 uses
  %.not.i132.i.i = icmp samesign ugt i64 %i.ala, %i.lp, !dbg !12599
  br i1 %.not.i132.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i, !dbg !12599, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i: ; preds = %._crit_edge363.i.i
  %i.alb = sub nuw nsw i64 %i.lp, %i.ala, !dbg !12600
  %.not.i137.i.i = icmp samesign ugt i64 %i.aht, %i.alb, !dbg !12601
  br i1 %.not.i137.i.i, label %.invoke1324.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i, !dbg !12601, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i
  %i.alc = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ala, !dbg !12602 ; 7 uses
  br i1 %i.ahv, label %._crit_edge368.i.i, label %.lr.ph367.i.i, !dbg !12603

.lr.ph367.i.i:                                    ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 4, !dbg !12604
  br i1 %i.ahx, label %bb.ga, label %.invoke1320.i, !dbg !12605

._crit_edge368.i.i:                               ; preds = %bb.gr, %bb.gs, %bb.gb, %bb.ge, %bb.gh, %bb.gk, %bb.gn, %bb.gq, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i
  %.sroa.049.1.lcssa.i.i = phi float [ %.sroa.049.0.lcssa.i.i, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i ], [ %.sroa.049.2.i.i, %bb.gb ], [ %.sroa.049.2.i.i.1, %bb.ge ], [ %.sroa.049.2.i.i.2, %bb.gh ], [ %.sroa.049.2.i.i.3, %bb.gk ], [ %.sroa.049.2.i.i.4, %bb.gn ], [ %.sroa.049.2.i.i.5, %bb.gq ], [ %i.amk, %bb.gs ], [ %.sroa.049.2.i.i.5, %bb.gr ], !dbg !12606 ; 2 uses
  %i.ale = icmp samesign ult i64 %.sroa.7.0374.i.i, 2000, !dbg !12607
  br i1 %i.ale, label %bb.gw, label %bb.gu, !dbg !12607

bb.ga:                                            ; preds = %.lr.ph367.i.i
  %i.alf = load float, ptr %i.alc, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.alg = load float, ptr %i.ahy, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.alh = fadd float %i.alf, %i.alg, !dbg !12609 ; 3 uses
  store float %i.alh, ptr %i.ahy, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.ali = fcmp olt float %i.alh, %.sroa.049.0.lcssa.i.i, !dbg !12610
  br i1 %i.ali, label %bb.gt, label %bb.gb, !dbg !12610

bb.gb:                                            ; preds = %bb.gt, %bb.ga
  %.sroa.049.2.i.i = phi float [ %i.alh, %bb.gt ], [ %.sroa.049.0.lcssa.i.i, %bb.ga ], !dbg !12606 ; 3 uses
  br i1 %i.aia, label %._crit_edge368.i.i, label %.lr.ph367.i.i.1, !dbg !12603

.lr.ph367.i.i.1:                                  ; preds = %bb.gb
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alc, i64 8, !dbg !12604
  br i1 %i.aic, label %bb.gc, label %.invoke1320.i, !dbg !12605

bb.gc:                                            ; preds = %.lr.ph367.i.i.1
  %i.alk = load float, ptr %i.ald, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.all = load float, ptr %i.aie, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.alm = fadd float %i.alk, %i.all, !dbg !12609 ; 3 uses
  store float %i.alm, ptr %i.aie, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.aln = fcmp olt float %i.alm, %.sroa.049.2.i.i, !dbg !12610
  br i1 %i.aln, label %bb.gd, label %bb.ge, !dbg !12610

bb.gd:                                            ; preds = %bb.gc
  store i8 %i.aig, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.ge, !dbg !12612

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.sroa.049.2.i.i.1 = phi float [ %i.alm, %bb.gd ], [ %.sroa.049.2.i.i, %bb.gc ], !dbg !12606 ; 3 uses
  br i1 %i.aih, label %._crit_edge368.i.i, label %.lr.ph367.i.i.2, !dbg !12603

.lr.ph367.i.i.2:                                  ; preds = %bb.ge
  %i.alo = getelementptr inbounds nuw i8, ptr %i.alc, i64 12, !dbg !12604
  br i1 %i.aij, label %bb.gf, label %.invoke1320.i, !dbg !12605

bb.gf:                                            ; preds = %.lr.ph367.i.i.2
  %i.alp = load float, ptr %i.alj, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.alq = load float, ptr %i.ail, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.alr = fadd float %i.alp, %i.alq, !dbg !12609 ; 3 uses
  store float %i.alr, ptr %i.ail, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.als = fcmp olt float %i.alr, %.sroa.049.2.i.i.1, !dbg !12610
  br i1 %i.als, label %bb.gg, label %bb.gh, !dbg !12610

bb.gg:                                            ; preds = %bb.gf
  store i8 %i.ain, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.gh, !dbg !12612

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.sroa.049.2.i.i.2 = phi float [ %i.alr, %bb.gg ], [ %.sroa.049.2.i.i.1, %bb.gf ], !dbg !12606 ; 3 uses
  br i1 %i.aio, label %._crit_edge368.i.i, label %.lr.ph367.i.i.3, !dbg !12603

.lr.ph367.i.i.3:                                  ; preds = %bb.gh
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alc, i64 16, !dbg !12604
  br i1 %i.aiq, label %bb.gi, label %.invoke1320.i, !dbg !12605

bb.gi:                                            ; preds = %.lr.ph367.i.i.3
  %i.alu = load float, ptr %i.alo, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.alv = load float, ptr %i.ais, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.alw = fadd float %i.alu, %i.alv, !dbg !12609 ; 3 uses
  store float %i.alw, ptr %i.ais, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.alx = fcmp olt float %i.alw, %.sroa.049.2.i.i.2, !dbg !12610
  br i1 %i.alx, label %bb.gj, label %bb.gk, !dbg !12610

bb.gj:                                            ; preds = %bb.gi
  store i8 %i.aiu, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.gk, !dbg !12612

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.sroa.049.2.i.i.3 = phi float [ %i.alw, %bb.gj ], [ %.sroa.049.2.i.i.2, %bb.gi ], !dbg !12606 ; 3 uses
  br i1 %i.aiv, label %._crit_edge368.i.i, label %.lr.ph367.i.i.4, !dbg !12603

.lr.ph367.i.i.4:                                  ; preds = %bb.gk
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alc, i64 20, !dbg !12604
  br i1 %i.aix, label %bb.gl, label %.invoke1320.i, !dbg !12605

bb.gl:                                            ; preds = %.lr.ph367.i.i.4
  %i.alz = load float, ptr %i.alt, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.ama = load float, ptr %i.aiz, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.amb = fadd float %i.alz, %i.ama, !dbg !12609 ; 3 uses
  store float %i.amb, ptr %i.aiz, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.amc = fcmp olt float %i.amb, %.sroa.049.2.i.i.3, !dbg !12610
  br i1 %i.amc, label %bb.gm, label %bb.gn, !dbg !12610

bb.gm:                                            ; preds = %bb.gl
  store i8 %i.ajb, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.gn, !dbg !12612

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %.sroa.049.2.i.i.4 = phi float [ %i.amb, %bb.gm ], [ %.sroa.049.2.i.i.3, %bb.gl ], !dbg !12606 ; 3 uses
  br i1 %i.ajc, label %._crit_edge368.i.i, label %.lr.ph367.i.i.5, !dbg !12603

.lr.ph367.i.i.5:                                  ; preds = %bb.gn
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alc, i64 24, !dbg !12604
  br i1 %i.aje, label %bb.go, label %.invoke1320.i, !dbg !12605

bb.go:                                            ; preds = %.lr.ph367.i.i.5
  %i.ame = load float, ptr %i.aly, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.amf = load float, ptr %i.ajg, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.amg = fadd float %i.ame, %i.amf, !dbg !12609 ; 3 uses
  store float %i.amg, ptr %i.ajg, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.amh = fcmp olt float %i.amg, %.sroa.049.2.i.i.4, !dbg !12610
  br i1 %i.amh, label %bb.gp, label %bb.gq, !dbg !12610

bb.gp:                                            ; preds = %bb.go
  store i8 %i.aji, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.gq, !dbg !12612

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %.sroa.049.2.i.i.5 = phi float [ %i.amg, %bb.gp ], [ %.sroa.049.2.i.i.4, %bb.go ], !dbg !12606 ; 3 uses
  br i1 %i.ajj, label %._crit_edge368.i.i, label %.lr.ph367.i.i.6, !dbg !12603

.lr.ph367.i.i.6:                                  ; preds = %bb.gq
  br i1 %i.ajl, label %bb.gr, label %.invoke1320.i, !dbg !12605

bb.gr:                                            ; preds = %.lr.ph367.i.i.6
  %i.ami = load float, ptr %i.amd, align 4, !dbg !12608, !alias.scope !11258, !noalias !11264, !noundef !664
  %i.amj = load float, ptr %i.ajn, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274, !noundef !664
  %i.amk = fadd float %i.ami, %i.amj, !dbg !12609 ; 3 uses
  store float %i.amk, ptr %i.ajn, align 4, !dbg !12609, !alias.scope !11259, !noalias !11274
  %i.aml = fcmp olt float %i.amk, %.sroa.049.2.i.i.5, !dbg !12610
  br i1 %i.aml, label %bb.gs, label %._crit_edge368.i.i, !dbg !12610

bb.gs:                                            ; preds = %bb.gr
  store i8 %i.ajp, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %._crit_edge368.i.i, !dbg !12612

bb.gt:                                            ; preds = %bb.ga
  store i8 %i.ahz, ptr %i.akq, align 1, !dbg !12611, !alias.scope !11261, !noalias !11263
  br label %bb.gb, !dbg !12612

bb.gu:                                            ; preds = %bb.gw, %._crit_edge368.i.i
  %.sroa.029.0.i.i = phi float [ %i.atz, %bb.gw ], [ 2.810000e+01, %._crit_edge368.i.i ], !dbg !12613 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11285), !dbg !12614
  br i1 %.not.i.i168.i, label %.invoke1322.i, label %.lr.ph373.i.i.preheader, !dbg !12615, !prof !727

.lr.ph373.i.i.preheader:                          ; preds = %bb.gu
  %i.amm = call i64 @llvm.umax.i64(i64 %i.mh, i64 %i.akr), !dbg !12616
  %i.amn = sub i64 %i.amm, %14, !dbg !12616
  %i.amo = call i64 @llvm.umin.i64(i64 %i.ajr, i64 %i.amn), !dbg !12616 ; 2 uses
  %min.iters.check4533 = icmp samesign ult i64 %i.amo, 4, !dbg !12616
  br i1 %min.iters.check4533, label %.lr.ph373.i.i.preheader5453, label %vector.ph4534, !dbg !12616

vector.ph4534:                                    ; preds = %.lr.ph373.i.i.preheader
  %i.amp = add nuw nsw i64 %i.amo, 1, !dbg !12616 ; 2 uses
  %i.amq = and i64 %i.amp, 3                      ; 2 uses
  %i.amr = icmp eq i64 %i.amq, 0
  %i.ams = select i1 %i.amr, i64 4, i64 %i.amq
  %n.vec4535 = sub nsw i64 %i.amp, %i.ams         ; 3 uses
  %i.amt = shl i64 %n.vec4535, 5
  %i.amu = getelementptr i8, ptr %i.ls, i64 %i.amt
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4536 = insertelement <4 x float> poison, float %.sroa.029.0.i.i, i64 0 ; 5 uses
  %broadcast.splat4537 = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.mg, i64 %i.akr, !dbg !12616
  %i.amv = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amw = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amx = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  %i.amy = shufflevector <4 x float> %broadcast.splatinsert4536, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4538, !dbg !12616

vector.body4538:                                  ; preds = %vector.body4538, %vector.ph4534
  %index4539 = phi i64 [ 0, %vector.ph4534 ], [ %index.next4544, %vector.body4538 ], !dbg !12617 ; 3 uses
  %i.amz = shl i64 %index4539, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ls, i64 %i.amz ; 9 uses
  %i.ana = getelementptr i8, ptr %i.ls, i64 %i.amz ; 8 uses
  %next.gep4540 = getelementptr i8, ptr %i.ana, i64 32
  %i.anb = getelementptr i8, ptr %i.ls, i64 %i.amz ; 8 uses
  %next.gep4541 = getelementptr i8, ptr %i.anb, i64 64
  %i.anc = getelementptr i8, ptr %i.ls, i64 %i.amz ; 8 uses
  %next.gep4542 = getelementptr i8, ptr %i.anc, i64 96
  %i.and = getelementptr inbounds nuw i8, ptr %next.gep, i64 4, !dbg !12618
  %i.ane = getelementptr i8, ptr %i.ana, i64 36, !dbg !12618
  %i.anf = getelementptr i8, ptr %i.anb, i64 68, !dbg !12618
  %i.ang = getelementptr i8, ptr %i.anc, i64 100, !dbg !12618
  %i.anh = load float, ptr %i.and, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.ani = load float, ptr %i.ane, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.anj = load float, ptr %i.anf, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.ank = load float, ptr %i.ang, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.anl = insertelement <4 x float> poison, float %i.anh, i64 0
  %i.anm = insertelement <4 x float> %i.anl, float %i.ani, i64 1
  %i.ann = insertelement <4 x float> %i.anm, float %i.anj, i64 2
  %i.ano = insertelement <4 x float> %i.ann, float %i.ank, i64 3
  %i.anp = fsub <4 x float> %i.ano, %broadcast.splat, !dbg !12619 ; 3 uses
  %i.anq = fcmp oge <4 x float> %i.anp, %broadcast.splat4537, !dbg !12620
  %i.anr = select <4 x i1> %i.anq, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !12621
  %i.ans = load float, ptr %next.gep, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.ant = load float, ptr %next.gep4540, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.anu = load float, ptr %next.gep4541, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.anv = load float, ptr %next.gep4542, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.anw = insertelement <4 x float> poison, float %i.ans, i64 0
  %i.anx = insertelement <4 x float> %i.anw, float %i.ant, i64 1
  %i.any = insertelement <4 x float> %i.anx, float %i.anu, i64 2
  %i.anz = insertelement <4 x float> %i.any, float %i.anv, i64 3
  %i.aoa = fsub <4 x float> %i.anz, %broadcast.splat, !dbg !12622 ; 3 uses
  %i.aob = fcmp oge <4 x float> %i.aoa, %broadcast.splat4537, !dbg !12623
  %i.aoc = zext <4 x i1> %i.aob to <4 x i8>, !dbg !12624
  %i.aod = or disjoint <4 x i8> %i.anr, %i.aoc, !dbg !12625
  %i.aoe = getelementptr inbounds nuw i8, ptr %next.gep, i64 8, !dbg !12618
  %i.aof = getelementptr i8, ptr %i.ana, i64 40, !dbg !12618
  %i.aog = getelementptr i8, ptr %i.anb, i64 72, !dbg !12618
  %i.aoh = getelementptr i8, ptr %i.anc, i64 104, !dbg !12618
  %i.aoi = load float, ptr %i.aoe, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aoj = load float, ptr %i.aof, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aok = load float, ptr %i.aog, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aol = load float, ptr %i.aoh, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aom = insertelement <4 x float> poison, float %i.aoi, i64 0
  %i.aon = insertelement <4 x float> %i.aom, float %i.aoj, i64 1
  %i.aoo = insertelement <4 x float> %i.aon, float %i.aok, i64 2
  %i.aop = insertelement <4 x float> %i.aoo, float %i.aol, i64 3
  %i.aoq = fsub <4 x float> %i.aop, %broadcast.splat, !dbg !12626 ; 3 uses
  %i.aor = fcmp oge <4 x float> %i.aoq, %broadcast.splat4537, !dbg !12627
  %i.aos = select <4 x i1> %i.aor, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !12628
  %i.aot = or disjoint <4 x i8> %i.aod, %i.aos, !dbg !12629
  %i.aou = getelementptr inbounds nuw i8, ptr %next.gep, i64 12, !dbg !12618
  %i.aov = getelementptr i8, ptr %i.ana, i64 44, !dbg !12618
  %i.aow = getelementptr i8, ptr %i.anb, i64 76, !dbg !12618
  %i.aox = getelementptr i8, ptr %i.anc, i64 108, !dbg !12618
  %i.aoy = load float, ptr %i.aou, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aoz = load float, ptr %i.aov, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.apa = load float, ptr %i.aow, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.apb = load float, ptr %i.aox, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.apc = insertelement <4 x float> poison, float %i.aoy, i64 0
  %i.apd = insertelement <4 x float> %i.apc, float %i.aoz, i64 1
  %i.ape = insertelement <4 x float> %i.apd, float %i.apa, i64 2
  %i.apf = insertelement <4 x float> %i.ape, float %i.apb, i64 3
  %i.apg = fsub <4 x float> %i.apf, %broadcast.splat, !dbg !12630 ; 3 uses
  %i.aph = fcmp oge <4 x float> %i.apg, %broadcast.splat4537, !dbg !12631
  %i.api = select <4 x i1> %i.aph, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !12632
  %i.apj = or disjoint <4 x i8> %i.aot, %i.api, !dbg !12633
  %i.apk = getelementptr inbounds nuw i8, ptr %next.gep, i64 16, !dbg !12618
  %i.apl = getelementptr i8, ptr %i.ana, i64 48, !dbg !12618
  %i.apm = getelementptr i8, ptr %i.anb, i64 80, !dbg !12618
  %i.apn = getelementptr i8, ptr %i.anc, i64 112, !dbg !12618
  %i.apo = load float, ptr %i.apk, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.app = load float, ptr %i.apl, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.apq = load float, ptr %i.apm, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.apr = load float, ptr %i.apn, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aps = insertelement <4 x float> poison, float %i.apo, i64 0
  %i.apt = insertelement <4 x float> %i.aps, float %i.app, i64 1
  %i.apu = insertelement <4 x float> %i.apt, float %i.apq, i64 2
  %i.apv = insertelement <4 x float> %i.apu, float %i.apr, i64 3
  %i.apw = fsub <4 x float> %i.apv, %broadcast.splat, !dbg !12634 ; 3 uses
  %i.apx = fcmp oge <4 x float> %i.apw, %broadcast.splat4537, !dbg !12635
  %i.apy = select <4 x i1> %i.apx, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !12636
  %i.apz = or disjoint <4 x i8> %i.apj, %i.apy, !dbg !12637
  %i.aqa = getelementptr inbounds nuw i8, ptr %next.gep, i64 20, !dbg !12618
  %i.aqb = getelementptr i8, ptr %i.ana, i64 52, !dbg !12618
  %i.aqc = getelementptr i8, ptr %i.anb, i64 84, !dbg !12618
  %i.aqd = getelementptr i8, ptr %i.anc, i64 116, !dbg !12618
  %i.aqe = load float, ptr %i.aqa, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqf = load float, ptr %i.aqb, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqg = load float, ptr %i.aqc, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqh = load float, ptr %i.aqd, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqi = insertelement <4 x float> poison, float %i.aqe, i64 0
  %i.aqj = insertelement <4 x float> %i.aqi, float %i.aqf, i64 1
  %i.aqk = insertelement <4 x float> %i.aqj, float %i.aqg, i64 2
  %i.aql = insertelement <4 x float> %i.aqk, float %i.aqh, i64 3
  %i.aqm = fsub <4 x float> %i.aql, %broadcast.splat, !dbg !12638 ; 3 uses
  %i.aqn = fcmp oge <4 x float> %i.aqm, %broadcast.splat4537, !dbg !12639
  %i.aqo = select <4 x i1> %i.aqn, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !12640
  %i.aqp = or disjoint <4 x i8> %i.apz, %i.aqo, !dbg !12641
  %i.aqq = getelementptr inbounds nuw i8, ptr %next.gep, i64 24, !dbg !12618
  %i.aqr = getelementptr i8, ptr %i.ana, i64 56, !dbg !12618
  %i.aqs = getelementptr i8, ptr %i.anb, i64 88, !dbg !12618
  %i.aqt = getelementptr i8, ptr %i.anc, i64 120, !dbg !12618
  %i.aqu = load float, ptr %i.aqq, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqv = load float, ptr %i.aqr, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqw = load float, ptr %i.aqs, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqx = load float, ptr %i.aqt, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aqy = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.aqz = insertelement <4 x float> %i.aqy, float %i.aqv, i64 1
  %i.ara = insertelement <4 x float> %i.aqz, float %i.aqw, i64 2
  %i.arb = insertelement <4 x float> %i.ara, float %i.aqx, i64 3
  %i.arc = fsub <4 x float> %i.arb, %broadcast.splat, !dbg !12642 ; 3 uses
  %i.ard = fcmp oge <4 x float> %i.arc, %broadcast.splat4537, !dbg !12643
  %i.are = select <4 x i1> %i.ard, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !12644
  %i.arf = or disjoint <4 x i8> %i.aqp, %i.are, !dbg !12645
  %i.arg = getelementptr inbounds nuw i8, ptr %next.gep, i64 28, !dbg !12618
  %i.arh = getelementptr i8, ptr %i.ana, i64 60, !dbg !12618
  %i.ari = getelementptr i8, ptr %i.anb, i64 92, !dbg !12618
  %i.arj = getelementptr i8, ptr %i.anc, i64 124, !dbg !12618
  %i.ark = load float, ptr %i.arg, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.arl = load float, ptr %i.arh, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.arm = load float, ptr %i.ari, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.arn = load float, ptr %i.arj, align 4, !dbg !12618, !alias.scope !11259, !noalias !11286
  %i.aro = insertelement <4 x float> poison, float %i.ark, i64 0
  %i.arp = insertelement <4 x float> %i.aro, float %i.arl, i64 1
  %i.arq = insertelement <4 x float> %i.arp, float %i.arm, i64 2
  %i.arr = insertelement <4 x float> %i.arq, float %i.arn, i64 3
  %i.ars = fsub <4 x float> %i.arr, %broadcast.splat, !dbg !12646 ; 3 uses
  %i.art = fcmp oge <4 x float> %i.ars, %broadcast.splat4537, !dbg !12647
  %i.aru = select <4 x i1> %i.art, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !12648
  %i.arv = add nuw <4 x i8> %i.arf, %i.aru, !dbg !12649
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index4539, !dbg !12616 ; 2 uses
  %wide.load4543 = load <4 x i8>, ptr %gep, align 1, !dbg !12616, !alias.scope !11294, !noalias !11295
  %i.arw = or <4 x i8> %i.arv, %wide.load4543, !dbg !12616
  store <4 x i8> %i.arw, ptr %gep, align 1, !dbg !12616, !alias.scope !11294, !noalias !11295
  %i.arx = shufflevector <4 x float> %i.aoa, <4 x float> %i.anp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.ary = shufflevector <4 x float> %i.aoq, <4 x float> %i.apg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.arz = shufflevector <8 x float> %i.arx, <8 x float> %i.ary, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !12650
  %i.asa = fcmp olt <16 x float> %i.arz, %i.amv, !dbg !12650
  %i.asb = shufflevector <4 x float> %i.aoa, <4 x float> %i.anp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.asc = shufflevector <4 x float> %i.aoq, <4 x float> %i.apg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.asd = shufflevector <8 x float> %i.asb, <8 x float> %i.asc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !12650
  %i.ase = select <16 x i1> %i.asa, <16 x float> %i.asd, <16 x float> %i.amw, !dbg !12650
  %i.asf = shufflevector <4 x float> %i.apw, <4 x float> %i.aqm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.asg = shufflevector <4 x float> %i.arc, <4 x float> %i.ars, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.ash = shufflevector <8 x float> %i.asf, <8 x float> %i.asg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !12650
  %i.asi = fcmp olt <16 x float> %i.ash, %i.amx, !dbg !12650
  %i.asj = shufflevector <4 x float> %i.apw, <4 x float> %i.aqm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.ask = shufflevector <4 x float> %i.arc, <4 x float> %i.ars, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !12650
  %i.asl = shufflevector <8 x float> %i.asj, <8 x float> %i.ask, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !12650
  %i.asm = select <16 x i1> %i.asi, <16 x float> %i.asl, <16 x float> %i.amy, !dbg !12650
  %interleaved.vec = shufflevector <16 x float> %i.ase, <16 x float> %i.asm, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !12650
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !dbg !12650, !alias.scope !11259, !noalias !11286
  %index.next4544 = add nuw i64 %index4539, 4, !dbg !12617 ; 2 uses
  %i.asn = icmp eq i64 %index.next4544, %n.vec4535, !dbg !12651
  br i1 %i.asn, label %.lr.ph373.i.i.preheader5453, label %vector.body4538, !dbg !12651, !llvm.loop !7646

.lr.ph373.i.i.preheader5453:                      ; preds = %vector.body4538, %.lr.ph373.i.i.preheader
  %.sroa.0179.0371.i.i.ph = phi ptr [ %i.ls, %.lr.ph373.i.i.preheader ], [ %i.amu, %vector.body4538 ]
  %.sroa.7181.0370.i.i.ph = phi i64 [ 0, %.lr.ph373.i.i.preheader ], [ %n.vec4535, %vector.body4538 ]
  %i.aso = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i, i64 0
  %i.asp = shufflevector <4 x float> %i.aso, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asq = insertelement <4 x float> poison, float %.sroa.029.0.i.i, i64 0
  %i.asr = shufflevector <4 x float> %i.asq, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i, !dbg !12616

.lr.ph373.i.i:                                    ; preds = %.lr.ph373.i.i.preheader5453, %bb.gv
  %.sroa.0179.0371.i.i = phi ptr [ %i.asv, %bb.gv ], [ %.sroa.0179.0371.i.i.ph, %.lr.ph373.i.i.preheader5453 ] ; 4 uses
  %.sroa.7181.0370.i.i = phi i64 [ %i.asu, %bb.gv ], [ %.sroa.7181.0370.i.i.ph, %.lr.ph373.i.i.preheader5453 ] ; 2 uses
  %i.ass = add nuw nsw i64 %.sroa.7181.0370.i.i, %i.akr, !dbg !12652 ; 3 uses
  %i.ast = icmp ult i64 %i.ass, %i.mh, !dbg !12616
  br i1 %i.ast, label %bb.gv, label %.invoke1320.i, !dbg !12616

bb.gv:                                            ; preds = %.lr.ph373.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.pz:                                            ; preds = %bb.py
  %i.cec = shl nuw nsw i64 %i.blw, 2, !dbg !13534
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.blv) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.blv, i64 noundef range(i64 1, 0) %i.cec, i64 noundef 4) #19, !dbg !13535, !noalias !11403
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i, !dbg !13536

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i: ; preds = %bb.pz, %bb.py, %.thread.i.i209
  %.pn229.pn.pn.pn.pn.pn.pn565.i.i = phi { ptr, i32 } [ %i.blu, %.thread.i.i209 ], [ %.pn229.pn.pn.pn.pn.pn571.i.i, %bb.pz ], [ %.pn229.pn.pn.pn.pn.pn571.i.i, %bb.py ] ; 2 uses
  %i.ced = icmp eq i64 %i.blj, 0, !dbg !13537
  br i1 %i.ced, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i79, label %bb.qa, !dbg !13537

bb.qa:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i
  %i.cee = shl nuw nsw i64 %i.blj, 2, !dbg !13538
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bli) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bli, i64 noundef range(i64 1, 0) %i.cee, i64 noundef 4) #19, !dbg !13539, !noalias !11403
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i79, !dbg !13540

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i305, %bb.mx
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bic, i64 noundef range(i64 1, 0) %i.bid, i64 noundef 1) #19, !dbg !13541, !noalias !11353
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramCommandNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !13542

bb.qb:                                            ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split492.i
  %.sroa.0.0494.i = phi i64 [ %spec.store.select.i52, %.split492.i ], [ %i.cuo, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0493.i = phi i64 [ 0, %.split492.i ], [ %i.cef, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.cef = add nuw nsw i64 %.sroa.031.0493.i, 1, !dbg !13543 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11509), !dbg !13544
  call void @llvm.experimental.noalias.scope.decl(metadata !11510), !dbg !13544
  call void @llvm.experimental.noalias.scope.decl(metadata !11511), !dbg !13544
  call void @llvm.experimental.noalias.scope.decl(metadata !11512), !dbg !13544
  call void @llvm.experimental.noalias.scope.decl(metadata !11513), !dbg !13544
  call void @llvm.experimental.noalias.scope.decl(metadata !11514), !dbg !13544
  %i.ceg = icmp eq i64 %.sroa.0.0494.i, 0, !dbg !13545
  br i1 %i.ceg, label %.loopexit87.i, label %bb.qc, !dbg !13545

bb.qc:                                            ; preds = %bb.qb
  %i.ceh = add nsw i64 %.sroa.0.0494.i, 7, !dbg !13546
  %i.cei = lshr i64 %i.ceh, 3, !dbg !13547        ; 8 uses
  %i.cej = icmp eq i64 %.sroa.0.0494.i, 1, !dbg !13548
  br i1 %i.cej, label %.preheader.i173.i.preheader, label %bb.qd, !dbg !13548

.preheader.i173.i.preheader:                      ; preds = %bb.qc
  br i1 %min.iters.check4613, label %.preheader.i173.i.preheader5226, label %vector.body4616, !dbg !13549

.preheader.i173.i.preheader5226:                  ; preds = %vector.body4616, %.preheader.i173.i.preheader
  %.sroa.065.0392.i.i333.ph = phi i64 [ 0, %.preheader.i173.i.preheader ], [ %n.vec4615, %vector.body4616 ]
  br label %.preheader.i173.i, !dbg !13549

vector.body4616:                                  ; preds = %.preheader.i173.i.preheader, %vector.body4616
  %index4617 = phi i64 [ %index.next4618, %vector.body4616 ], [ 0, %.preheader.i173.i.preheader ], !dbg !13550 ; 2 uses
  %i.cek = getelementptr inbounds nuw i8, ptr %i.bic, i64 %index4617, !dbg !13549 ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cek, i64 16, !dbg !13549
  store <16 x i8> zeroinitializer, ptr %i.cek, align 1, !dbg !13549, !alias.scope !11514, !noalias !11516
  store <16 x i8> zeroinitializer, ptr %i.cel, align 1, !dbg !13549, !alias.scope !11514, !noalias !11516
  %index.next4618 = add nuw i64 %index4617, 32, !dbg !13550 ; 2 uses
  %i.cem = icmp eq i64 %index.next4618, %n.vec4615, !dbg !13551
  br i1 %i.cem, label %.preheader.i173.i.preheader5226, label %vector.body4616, !dbg !13551, !llvm.loop !9082

bb.qd:                                            ; preds = %bb.qc
  %i.cen = mul nuw nsw i64 %.sroa.0.0494.i, 704, !dbg !13552 ; 2 uses
  %.not110.i.i96 = icmp ugt i64 %i.cen, %i.bit
  br i1 %.not110.i.i96, label %.invoke1415.i, label %.lr.ph.preheader.i168.i, !dbg !13553, !prof !727

.lr.ph.preheader.i168.i:                          ; preds = %bb.qd
  %.idx.i167.i = mul nuw nsw i64 %.sroa.0.0494.i, 2816, !dbg !13554
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bis, i8 0, i64 %.idx.i167.i, i1 false), !dbg !13555, !alias.scope !11511, !noalias !11517
  br label %bb.qe, !dbg !13556

bb.qe:                                            ; preds = %bb.sh, %.lr.ph.preheader.i168.i
  %.sroa.067.0348.i.i97 = phi i64 [ 0, %.lr.ph.preheader.i168.i ], [ %i.ceo, %bb.sh ] ; 4 uses
  %i.ceo = add nuw nsw i64 %.sroa.067.0348.i.i97, 1, !dbg !13557 ; 2 uses
  %exitcond.not.i169.i = icmp eq i64 %.sroa.067.0348.i.i97, %i.bdk, !dbg !13558
  br i1 %exitcond.not.i169.i, label %.invoke1413.i, label %bb.sf, !dbg !13558

.loopexit307.i.i110:                              ; preds = %bb.se
  %i.cep = icmp eq i64 %i.ceq, 0, !dbg !13559
  br i1 %i.cep, label %bb.qf, label %.split.i.i99, !dbg !13559

bb.qf:                                            ; preds = %.loopexit307.i.i110
  br i1 %i.bkb, label %._crit_edge.i170.i, label %.lr.ph352.i.i111, !dbg !13560

.split.i.i99:                                     ; preds = %bb.sh, %.loopexit307.i.i110
  %.sroa.04.0350.i.i100 = phi i64 [ %i.ceq, %.loopexit307.i.i110 ], [ 704, %bb.sh ]
  %i.ceq = add nsw i64 %.sroa.04.0350.i.i100, -1, !dbg !13561 ; 4 uses
  %invariant.gep.i.i101 = getelementptr [4 x i8], ptr %i.bdj, i64 %i.ceq, !dbg !13562
  %i.cer = mul i64 %i.ceq, %.sroa.0.0494.i
  br label %bb.rz, !dbg !13563

.lr.ph352.i.i111:                                 ; preds = %bb.qf, %.noexc176.i
  %.sroa.018.0351.i.i112 = phi ptr [ %i.ces, %.noexc176.i ], [ %i.biw, %bb.qf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !13564, !noalias !11525
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.ba)
          to label %.noexc176.i unwind label %.loopexit.split-lp.loopexit.i113, !dbg !13565, !noalias !11353

.noexc176.i:                                      ; preds = %.lr.ph352.i.i111
  %i.ces = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i112, i64 32, !dbg !13566 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i112, ptr noundef nonnull align 4 dereferenceable(32) %i.ba, i64 32, i1 false), !dbg !13567, !noalias !11527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !13568, !noalias !11525
  %i.cet = icmp eq ptr %i.ces, %i.bka, !dbg !13569
  br i1 %i.cet, label %._crit_edge.i170.i, label %.lr.ph352.i.i111, !dbg !13560

._crit_edge.i170.i:                               ; preds = %.noexc176.i, %bb.qf
  %i.ceu = mul i64 %i.cei, %3, !dbg !13570        ; 4 uses
  %.not111.i.i114 = icmp ugt i64 %i.ceu, %i.bjl
  br i1 %.not111.i.i114, label %.invoke1415.i, label %bb.qg, !dbg !13571, !prof !727

bb.qg:                                            ; preds = %._crit_edge.i170.i
  %i.cev = icmp samesign eq i64 %i.ceu, 0, !dbg !13572
  br i1 %i.cev, label %._crit_edge356.i.i116, label %.lr.ph355.preheader.i.i115, !dbg !13573

.lr.ph355.preheader.i.i115:                       ; preds = %bb.qg
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bjk, i8 0, i64 %i.ceu, i1 false), !dbg !13574, !alias.scope !11513, !noalias !11533
  br label %._crit_edge356.i.i116

._crit_edge356.i.i116:                            ; preds = %.lr.ph355.preheader.i.i115, %bb.qg
  br i1 %.not112.i.i95, label %.invoke1415.i, label %.lr.ph377.i.i117, !dbg !13575, !prof !727

.lr.ph377.i.i117:                                 ; preds = %._crit_edge356.i.i116
  %i.cew = lshr i64 %.sroa.0.0494.i, 3            ; 3 uses
  %.not.i126.i.i118 = icmp samesign ugt i64 %i.cew, %i.bix
  %.idx395.i.i119 = shl nuw nsw i64 %i.cew, 5
  %i.cex = getelementptr inbounds nuw i8, ptr %i.biw, i64 %.idx395.i.i119
  %i.cey = icmp eq i64 %i.cew, 0
  %i.cez = and i64 %.sroa.0.0494.i, 36028797018963960 ; 15 uses
  %i.cfa = and i64 %.sroa.0.0494.i, 7             ; 8 uses
  %.not.i.i171.i = icmp samesign ugt i64 %i.cei, %i.bix
  %.idx396.i.i120 = shl i64 %i.cei, 5             ; 2 uses
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.biw, i64 %.idx396.i.i120
  br i1 %.not.i126.i.i118, label %.lr.ph377.split.us.i.i331, label %.lr.ph377.split.preheader.i.i121, !prof !712

.lr.ph377.split.preheader.i.i121:                 ; preds = %.lr.ph377.i.i117
  %i.cfc = icmp eq i64 %i.cfa, 0
  %i.cfd = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cfe = icmp samesign ult i64 %i.cfd, %i.bix
  %i.cff = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cfd ; 2 uses
  %i.cfg = trunc i64 %i.cez to i8
  %i.cfh = icmp eq i64 %i.cfa, 1
  %i.cfi = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cfj = icmp samesign ult i64 %i.cfi, %i.bix
  %i.cfk = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cfi
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 4 ; 2 uses
  %i.cfm = trunc i64 %i.cez to i8
  %i.cfn = or disjoint i8 %i.cfm, 1
  %i.cfo = icmp eq i64 %i.cfa, 2
  %i.cfp = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cfq = icmp samesign ult i64 %i.cfp, %i.bix
  %i.cfr = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cfp
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 8 ; 2 uses
  %i.cft = trunc i64 %i.cez to i8
  %i.cfu = or disjoint i8 %i.cft, 2
  %i.cfv = icmp eq i64 %i.cfa, 3
  %i.cfw = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cfx = icmp samesign ult i64 %i.cfw, %i.bix
  %i.cfy = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cfw
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfy, i64 12 ; 2 uses
  %i.cga = trunc i64 %i.cez to i8
  %i.cgb = or disjoint i8 %i.cga, 3
  %i.cgc = icmp eq i64 %i.cfa, 4
  %i.cgd = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cge = icmp samesign ult i64 %i.cgd, %i.bix
  %i.cgf = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cgd
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgf, i64 16 ; 2 uses
  %i.cgh = trunc i64 %i.cez to i8
  %i.cgi = or disjoint i8 %i.cgh, 4
  %i.cgj = icmp eq i64 %i.cfa, 5
  %i.cgk = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cgl = icmp samesign ult i64 %i.cgk, %i.bix
  %i.cgm = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cgk
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 20 ; 2 uses
  %i.cgo = trunc i64 %i.cez to i8
  %i.cgp = or disjoint i8 %i.cgo, 5
  %i.cgq = icmp eq i64 %i.cfa, 6
  %i.cgr = lshr exact i64 %i.cez, 3               ; 3 uses
  %i.cgs = icmp samesign ult i64 %i.cgr, %i.bix
  %i.cgt = getelementptr inbounds nuw [32 x i8], ptr %i.biw, i64 %i.cgr
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 24 ; 2 uses
  %i.cgv = trunc i64 %i.cez to i8
  %i.cgw = or disjoint i8 %i.cgv, 6
  %i.cgx = add i64 %.idx396.i.i120, -32
  %i.cgy = lshr exact i64 %i.cgx, 5
  br label %.lr.ph377.split.i.i122, !dbg !13576

.lr.ph377.split.us.i.i331:                        ; preds = %.lr.ph377.i.i117
  %.not398.i.i = icmp eq i64 %i.bid, 0, !dbg !13576
  br i1 %.not398.i.i, label %.invoke1413.i, label %bb.qh, !dbg !13576

bb.qh:                                            ; preds = %.lr.ph377.split.us.i.i331
  %i.cgz = load i16, ptr %i.bba, align 2, !dbg !13577, !alias.scope !11534, !noalias !11535, !noundef !664
  %i.cha = zext i16 %i.cgz to i64, !dbg !13578
  %i.chb = mul nuw nsw i64 %.sroa.0.0494.i, %i.cha, !dbg !13579
  %.not.i125.us.i.i332 = icmp ugt i64 %i.chb, %i.bit, !dbg !13580
  br i1 %.not.i125.us.i.i332, label %.split381.us.i.i330, label %.invoke1417.i, !dbg !13580, !prof !712

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186: ; preds = %bb.rh
  %i.chc = icmp eq ptr %i.chd, %i.bkc, !dbg !13581
  br i1 %i.chc, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187, label %.lr.ph377.split.i.i122, !dbg !13582

.lr.ph377.split.i.i122:                           ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186, %.lr.ph377.split.preheader.i.i121
  %.sroa.0.0289375.i.i123 = phi ptr [ %i.chd, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186 ], [ %i.bba, %.lr.ph377.split.preheader.i.i121 ] ; 2 uses
  %.sroa.7.0374.i.i124 = phi i64 [ %i.che, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186 ], [ 0, %.lr.ph377.split.preheader.i.i121 ] ; 7 uses
  %15 = mul i64 %i.cei, %.sroa.7.0374.i.i124, !dbg !13583
  %i.chd = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i123, i64 2, !dbg !13583 ; 2 uses
  %i.che = add nuw i64 %.sroa.7.0374.i.i124, 1, !dbg !13584
  %exitcond430.not.i.i = icmp eq i64 %.sroa.7.0374.i.i124, %i.bid, !dbg !13576
  br i1 %exitcond430.not.i.i, label %.invoke1413.i, label %bb.ql, !dbg !13576

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i186
  br i1 %i.bkl, label %.lr.ph390.preheader.i.i188, label %.invoke1413.i, !dbg !13585

.lr.ph390.preheader.i.i188:                       ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i187
  %i.chf = load i8, ptr %i.bkm, align 1, !dbg !13585, !alias.scope !11514, !noalias !11516, !noundef !664
  %i.chg = mul i64 %i.cei, %i.bkk, !dbg !13586
  br label %.lr.ph390.i.i189, !dbg !13587

.lr.ph390.i.i189:                                 ; preds = %bb.qk, %.lr.ph390.preheader.i.i188
  %.sroa.0.1389.i.i190 = phi i64 [ %.sroa.0.2.i.i197, %bb.qk ], [ 1, %.lr.ph390.preheader.i.i188 ] ; 2 uses
  %.sroa.061.0388.i.i191 = phi i8 [ %.sroa.061.1.i.i196, %bb.qk ], [ %i.chf, %.lr.ph390.preheader.i.i188 ] ; 4 uses
  %.sroa.059.0387.i.i192 = phi i64 [ %i.chi, %bb.qk ], [ %i.chg, %.lr.ph390.preheader.i.i188 ]
  %.sroa.052.0386.i.i193 = phi i64 [ %i.chh, %bb.qk ], [ %i.bkk, %.lr.ph390.preheader.i.i188 ]
  %i.chh = add nsw i64 %.sroa.052.0386.i.i193, -1, !dbg !13588 ; 4 uses
  %i.chi = sub i64 %.sroa.059.0387.i.i192, %i.cei, !dbg !13589 ; 2 uses
  %i.chj = lshr i8 %.sroa.061.0388.i.i191, 3, !dbg !13590
  %i.chk = zext nneg i8 %i.chj to i64, !dbg !13590
  %i.chl = add i64 %i.chi, %i.chk, !dbg !13591    ; 3 uses
  %i.chm = icmp ult i64 %i.chl, %i.bjl, !dbg !13587
  br i1 %i.chm, label %bb.qi, label %.invoke1413.i, !dbg !13587

bb.qi:                                            ; preds = %.lr.ph390.i.i189
  %i.chn = and i8 %.sroa.061.0388.i.i191, 7, !dbg !13592
  %i.cho = shl nuw i8 1, %i.chn, !dbg !13593
  %i.chp = getelementptr inbounds nuw i8, ptr %i.bjk, i64 %i.chl, !dbg !13587
  %i.chq = load i8, ptr %i.chp, align 1, !dbg !13587, !alias.scope !11513, !noalias !11533, !noundef !664
  %i.chr = and i8 %i.chq, %i.cho, !dbg !13587
  %i.chs = icmp eq i8 %i.chr, 0, !dbg !13587
  br i1 %i.chs, label %bb.qk, label %bb.qj, !dbg !13587

bb.qj:                                            ; preds = %bb.qi
  %i.cht = getelementptr inbounds nuw i8, ptr %i.bic, i64 %i.chh, !dbg !13594
  %i.chu = load i8, ptr %i.cht, align 1, !dbg !13594, !alias.scope !11514, !noalias !11516, !noundef !664 ; 2 uses
  %.not115.i.i194 = icmp ne i8 %.sroa.061.0388.i.i191, %i.chu, !dbg !13595
  %i.chv = zext i1 %.not115.i.i194 to i64, !dbg !13595
  %spec.select117.i.i195 = add i64 %.sroa.0.1389.i.i190, %i.chv, !dbg !13595
  br label %bb.qk, !dbg !13595

bb.qk:                                            ; preds = %bb.qj, %bb.qi
  %.sroa.061.1.i.i196 = phi i8 [ %.sroa.061.0388.i.i191, %bb.qi ], [ %i.chu, %bb.qj ], !dbg !13596 ; 2 uses
  %.sroa.0.2.i.i197 = phi i64 [ %.sroa.0.1389.i.i190, %bb.qi ], [ %spec.select117.i.i195, %bb.qj ], !dbg !13597 ; 2 uses
  %i.chw = getelementptr inbounds nuw i8, ptr %i.bic, i64 %i.chh, !dbg !13598
  store i8 %.sroa.061.1.i.i196, ptr %i.chw, align 1, !dbg !13598, !alias.scope !11514, !noalias !11516
  %.not114.i.i198 = icmp eq i64 %i.chh, 0, !dbg !13599
  br i1 %.not114.i.i198, label %.loopexit87.i, label %.lr.ph390.i.i189, !dbg !13599

bb.ql:                                            ; preds = %.lr.ph377.split.i.i122
  %i.chx = getelementptr inbounds nuw i8, ptr %i.bic, i64 %.sroa.7.0374.i.i124, !dbg !13600 ; 15 uses
  %i.chy = mul i64 %.sroa.7.0374.i.i124, %i.cei, !dbg !13601 ; 3 uses
  %i.chz = load i16, ptr %.sroa.0.0289375.i.i123, align 2, !dbg !13577, !alias.scope !11534, !noalias !11535, !noundef !664
  %i.cia = zext i16 %i.chz to i64, !dbg !13578
  %i.cib = mul nuw nsw i64 %.sroa.0.0494.i, %i.cia, !dbg !13579 ; 4 uses
  %.not.i125.i.i125 = icmp ugt i64 %i.cib, %i.bit, !dbg !13580
  br i1 %.not.i125.i.i125, label %.split381.us.i.i330, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126, !dbg !13580, !prof !712

.split381.us.i.i330:                              ; preds = %bb.ql, %bb.qh
  br label %.invoke1417.i, !dbg !13602

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126: ; preds = %bb.ql
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.cib, !dbg !13603
  %i.cid = sub nuw nsw i64 %i.bit, %i.cib, !dbg !13604 ; 2 uses
  br i1 %i.cey, label %._crit_edge363.i.i145, label %.lr.ph362.i.i127, !dbg !13605

.lr.ph362.i.i127:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126, %bb.ry
  %.sroa.049.0361.i.i128 = phi float [ %.sroa.049.4.7.i.i144, %bb.ry ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 2 uses
  %.sroa.0160.0360.i.i129 = phi ptr [ %i.cie, %bb.ry ], [ %i.biw, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 10 uses
  %.sroa.7162.0359.i.i130 = phi i64 [ %i.cif, %bb.ry ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !13606, !noalias !11525
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, i8 0, i64 32, i1 false), !noalias !11525
  %i.cie = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i129, i64 32, !dbg !13607 ; 2 uses
  %i.cif = add nuw nsw i64 %.sroa.7162.0359.i.i130, 1, !dbg !13608
  %i.cig = shl nuw nsw i64 %.sroa.7162.0359.i.i130, 3, !dbg !13609 ; 11 uses
  %.not.i145.i.i131 = icmp samesign ugt i64 %i.cig, %i.cid, !dbg !13610
  br i1 %.not.i145.i.i131, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i132, !dbg !13610, !prof !712

._crit_edge363.i.i145:                            ; preds = %bb.ry, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126
  %.sroa.049.0.lcssa.i.i146 = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i126 ], [ %.sroa.049.4.7.i.i144, %bb.ry ], !dbg !13611 ; 3 uses
  %i.cih = add nuw nsw i64 %i.cib, %i.cez, !dbg !13612 ; 3 uses
  %.not.i132.i.i147 = icmp ugt i64 %i.cih, %i.bit, !dbg !13613
  br i1 %.not.i132.i.i147, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148, !dbg !13613, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148: ; preds = %._crit_edge363.i.i145
  %i.cii = sub nuw nsw i64 %i.bit, %i.cih, !dbg !13614
  %.not.i137.i.i149 = icmp samesign ugt i64 %i.cfa, %i.cii, !dbg !13615
  br i1 %.not.i137.i.i149, label %.invoke1417.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150, !dbg !13615, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i148
  %i.cij = getelementptr inbounds nuw [4 x i8], ptr %i.bis, i64 %i.cih, !dbg !13616 ; 7 uses
  br i1 %i.cfc, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151, !dbg !13617

.lr.ph367.i.i151:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150
  %i.cik = getelementptr inbounds nuw i8, ptr %i.cij, i64 4, !dbg !13618
  br i1 %i.cfe, label %bb.qm, label %.invoke1413.i, !dbg !13619

._crit_edge368.i.i156:                            ; preds = %bb.rd, %bb.re, %bb.qn, %bb.qq, %bb.qt, %bb.qw, %bb.qz, %bb.rc, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150
  %.sroa.049.1.lcssa.i.i157 = phi float [ %.sroa.049.0.lcssa.i.i146, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i150 ], [ %.sroa.049.2.i.i155, %bb.qn ], [ %.sroa.049.2.i.i155.1, %bb.qq ], [ %.sroa.049.2.i.i155.2, %bb.qt ], [ %.sroa.049.2.i.i155.3, %bb.qw ], [ %.sroa.049.2.i.i155.4, %bb.qz ], [ %.sroa.049.2.i.i155.5, %bb.rc ], [ %i.cjr, %bb.re ], [ %.sroa.049.2.i.i155.5, %bb.rd ], !dbg !13620 ; 2 uses
  %i.cil = icmp samesign ult i64 %.sroa.7.0374.i.i124, 2000, !dbg !13621
  br i1 %i.cil, label %bb.ri, label %bb.rg, !dbg !13621

bb.qm:                                            ; preds = %.lr.ph367.i.i151
  %i.cim = load float, ptr %i.cij, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cin = load float, ptr %i.cff, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cio = fadd float %i.cim, %i.cin, !dbg !13623 ; 3 uses
  store float %i.cio, ptr %i.cff, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.cip = fcmp olt float %i.cio, %.sroa.049.0.lcssa.i.i146, !dbg !13624
  br i1 %i.cip, label %bb.rf, label %bb.qn, !dbg !13624

bb.qn:                                            ; preds = %bb.rf, %bb.qm
  %.sroa.049.2.i.i155 = phi float [ %i.cio, %bb.rf ], [ %.sroa.049.0.lcssa.i.i146, %bb.qm ], !dbg !13620 ; 3 uses
  br i1 %i.cfh, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.1, !dbg !13617

.lr.ph367.i.i151.1:                               ; preds = %bb.qn
  %i.ciq = getelementptr inbounds nuw i8, ptr %i.cij, i64 8, !dbg !13618
  br i1 %i.cfj, label %bb.qo, label %.invoke1413.i, !dbg !13619

bb.qo:                                            ; preds = %.lr.ph367.i.i151.1
  %i.cir = load float, ptr %i.cik, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cis = load float, ptr %i.cfl, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cit = fadd float %i.cir, %i.cis, !dbg !13623 ; 3 uses
  store float %i.cit, ptr %i.cfl, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.ciu = fcmp olt float %i.cit, %.sroa.049.2.i.i155, !dbg !13624
  br i1 %i.ciu, label %bb.qp, label %bb.qq, !dbg !13624

bb.qp:                                            ; preds = %bb.qo
  store i8 %i.cfn, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.qq, !dbg !13626

bb.qq:                                            ; preds = %bb.qp, %bb.qo
  %.sroa.049.2.i.i155.1 = phi float [ %i.cit, %bb.qp ], [ %.sroa.049.2.i.i155, %bb.qo ], !dbg !13620 ; 3 uses
  br i1 %i.cfo, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.2, !dbg !13617

.lr.ph367.i.i151.2:                               ; preds = %bb.qq
  %i.civ = getelementptr inbounds nuw i8, ptr %i.cij, i64 12, !dbg !13618
  br i1 %i.cfq, label %bb.qr, label %.invoke1413.i, !dbg !13619

bb.qr:                                            ; preds = %.lr.ph367.i.i151.2
  %i.ciw = load float, ptr %i.ciq, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cix = load float, ptr %i.cfs, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.ciy = fadd float %i.ciw, %i.cix, !dbg !13623 ; 3 uses
  store float %i.ciy, ptr %i.cfs, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.ciz = fcmp olt float %i.ciy, %.sroa.049.2.i.i155.1, !dbg !13624
  br i1 %i.ciz, label %bb.qs, label %bb.qt, !dbg !13624

bb.qs:                                            ; preds = %bb.qr
  store i8 %i.cfu, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.qt, !dbg !13626

bb.qt:                                            ; preds = %bb.qs, %bb.qr
  %.sroa.049.2.i.i155.2 = phi float [ %i.ciy, %bb.qs ], [ %.sroa.049.2.i.i155.1, %bb.qr ], !dbg !13620 ; 3 uses
  br i1 %i.cfv, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.3, !dbg !13617

.lr.ph367.i.i151.3:                               ; preds = %bb.qt
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cij, i64 16, !dbg !13618
  br i1 %i.cfx, label %bb.qu, label %.invoke1413.i, !dbg !13619

bb.qu:                                            ; preds = %.lr.ph367.i.i151.3
  %i.cjb = load float, ptr %i.civ, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cjc = load float, ptr %i.cfz, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cjd = fadd float %i.cjb, %i.cjc, !dbg !13623 ; 3 uses
  store float %i.cjd, ptr %i.cfz, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.cje = fcmp olt float %i.cjd, %.sroa.049.2.i.i155.2, !dbg !13624
  br i1 %i.cje, label %bb.qv, label %bb.qw, !dbg !13624

bb.qv:                                            ; preds = %bb.qu
  store i8 %i.cgb, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.qw, !dbg !13626

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %.sroa.049.2.i.i155.3 = phi float [ %i.cjd, %bb.qv ], [ %.sroa.049.2.i.i155.2, %bb.qu ], !dbg !13620 ; 3 uses
  br i1 %i.cgc, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.4, !dbg !13617

.lr.ph367.i.i151.4:                               ; preds = %bb.qw
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.cij, i64 20, !dbg !13618
  br i1 %i.cge, label %bb.qx, label %.invoke1413.i, !dbg !13619

bb.qx:                                            ; preds = %.lr.ph367.i.i151.4
  %i.cjg = load float, ptr %i.cja, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cjh = load float, ptr %i.cgg, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cji = fadd float %i.cjg, %i.cjh, !dbg !13623 ; 3 uses
  store float %i.cji, ptr %i.cgg, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.cjj = fcmp olt float %i.cji, %.sroa.049.2.i.i155.3, !dbg !13624
  br i1 %i.cjj, label %bb.qy, label %bb.qz, !dbg !13624

bb.qy:                                            ; preds = %bb.qx
  store i8 %i.cgi, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.qz, !dbg !13626

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %.sroa.049.2.i.i155.4 = phi float [ %i.cji, %bb.qy ], [ %.sroa.049.2.i.i155.3, %bb.qx ], !dbg !13620 ; 3 uses
  br i1 %i.cgj, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.5, !dbg !13617

.lr.ph367.i.i151.5:                               ; preds = %bb.qz
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cij, i64 24, !dbg !13618
  br i1 %i.cgl, label %bb.ra, label %.invoke1413.i, !dbg !13619

bb.ra:                                            ; preds = %.lr.ph367.i.i151.5
  %i.cjl = load float, ptr %i.cjf, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cjm = load float, ptr %i.cgn, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cjn = fadd float %i.cjl, %i.cjm, !dbg !13623 ; 3 uses
  store float %i.cjn, ptr %i.cgn, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.cjo = fcmp olt float %i.cjn, %.sroa.049.2.i.i155.4, !dbg !13624
  br i1 %i.cjo, label %bb.rb, label %bb.rc, !dbg !13624

bb.rb:                                            ; preds = %bb.ra
  store i8 %i.cgp, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.rc, !dbg !13626

bb.rc:                                            ; preds = %bb.rb, %bb.ra
  %.sroa.049.2.i.i155.5 = phi float [ %i.cjn, %bb.rb ], [ %.sroa.049.2.i.i155.4, %bb.ra ], !dbg !13620 ; 3 uses
  br i1 %i.cgq, label %._crit_edge368.i.i156, label %.lr.ph367.i.i151.6, !dbg !13617

.lr.ph367.i.i151.6:                               ; preds = %bb.rc
  br i1 %i.cgs, label %bb.rd, label %.invoke1413.i, !dbg !13619

bb.rd:                                            ; preds = %.lr.ph367.i.i151.6
  %i.cjp = load float, ptr %i.cjk, align 4, !dbg !13622, !alias.scope !11511, !noalias !11517, !noundef !664
  %i.cjq = load float, ptr %i.cgu, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527, !noundef !664
  %i.cjr = fadd float %i.cjp, %i.cjq, !dbg !13623 ; 3 uses
  store float %i.cjr, ptr %i.cgu, align 4, !dbg !13623, !alias.scope !11512, !noalias !11527
  %i.cjs = fcmp olt float %i.cjr, %.sroa.049.2.i.i155.5, !dbg !13624
  br i1 %i.cjs, label %bb.re, label %._crit_edge368.i.i156, !dbg !13624

bb.re:                                            ; preds = %bb.rd
  store i8 %i.cgw, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %._crit_edge368.i.i156, !dbg !13626

bb.rf:                                            ; preds = %bb.qm
  store i8 %i.cfg, ptr %i.chx, align 1, !dbg !13625, !alias.scope !11514, !noalias !11516
  br label %bb.qn, !dbg !13626

bb.rg:                                            ; preds = %bb.ri, %._crit_edge368.i.i156
  %.sroa.029.0.i.i158 = phi float [ %i.crg, %bb.ri ], [ 1.350000e+01, %._crit_edge368.i.i156 ], !dbg !13627 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11538), !dbg !13628
  br i1 %.not.i.i171.i, label %.invoke1415.i, label %.lr.ph373.i.i159.preheader, !dbg !13629, !prof !727

.lr.ph373.i.i159.preheader:                       ; preds = %bb.rg
  %i.cjt = call i64 @llvm.umax.i64(i64 %i.bjl, i64 %i.chy), !dbg !13630
  %i.cju = sub i64 %i.cjt, %15, !dbg !13630
  %i.cjv = call i64 @llvm.umin.i64(i64 %i.cgy, i64 %i.cju), !dbg !13630 ; 2 uses
  %min.iters.check4622 = icmp samesign ult i64 %i.cjv, 4, !dbg !13630
  br i1 %min.iters.check4622, label %.lr.ph373.i.i159.preheader5218, label %vector.ph4623, !dbg !13630

vector.ph4623:                                    ; preds = %.lr.ph373.i.i159.preheader
  %i.cjw = add nuw nsw i64 %i.cjv, 1, !dbg !13630 ; 2 uses
  %i.cjx = and i64 %i.cjw, 3                      ; 2 uses
  %i.cjy = icmp eq i64 %i.cjx, 0
  %i.cjz = select i1 %i.cjy, i64 4, i64 %i.cjx
  %n.vec4624 = sub nsw i64 %i.cjw, %i.cjz         ; 3 uses
  %i.cka = shl i64 %n.vec4624, 5
  %i.ckb = getelementptr i8, ptr %i.biw, i64 %i.cka
  %broadcast.splatinsert4625 = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i157, i64 0
  %broadcast.splat4626 = shufflevector <4 x float> %broadcast.splatinsert4625, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4627 = insertelement <4 x float> poison, float %.sroa.029.0.i.i158, i64 0 ; 5 uses
  %broadcast.splat4628 = shufflevector <4 x float> %broadcast.splatinsert4627, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep6098 = getelementptr i8, ptr %i.bjk, i64 %i.chy, !dbg !13630
  %i.ckc = shufflevector <4 x float> %broadcast.splatinsert4627, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ckd = shufflevector <4 x float> %broadcast.splatinsert4627, <4 x float> poison, <16 x i32> zeroinitializer
  %i.cke = shufflevector <4 x float> %broadcast.splatinsert4627, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ckf = shufflevector <4 x float> %broadcast.splatinsert4627, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4629, !dbg !13630

vector.body4629:                                  ; preds = %vector.body4629, %vector.ph4623
  %index4630 = phi i64 [ 0, %vector.ph4623 ], [ %index.next4637, %vector.body4629 ], !dbg !13631 ; 3 uses
  %i.ckg = shl i64 %index4630, 5                  ; 4 uses
  %next.gep4631 = getelementptr i8, ptr %i.biw, i64 %i.ckg ; 9 uses
  %i.ckh = getelementptr i8, ptr %i.biw, i64 %i.ckg ; 8 uses
  %next.gep4632 = getelementptr i8, ptr %i.ckh, i64 32
  %i.cki = getelementptr i8, ptr %i.biw, i64 %i.ckg ; 8 uses
  %next.gep4633 = getelementptr i8, ptr %i.cki, i64 64
  %i.ckj = getelementptr i8, ptr %i.biw, i64 %i.ckg ; 8 uses
  %next.gep4634 = getelementptr i8, ptr %i.ckj, i64 96
  %i.ckk = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 4, !dbg !13632
  %i.ckl = getelementptr i8, ptr %i.ckh, i64 36, !dbg !13632
  %i.ckm = getelementptr i8, ptr %i.cki, i64 68, !dbg !13632
  %i.ckn = getelementptr i8, ptr %i.ckj, i64 100, !dbg !13632
  %i.cko = load float, ptr %i.ckk, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.ckp = load float, ptr %i.ckl, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.ckq = load float, ptr %i.ckm, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.ckr = load float, ptr %i.ckn, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cks = insertelement <4 x float> poison, float %i.cko, i64 0
  %i.ckt = insertelement <4 x float> %i.cks, float %i.ckp, i64 1
  %i.cku = insertelement <4 x float> %i.ckt, float %i.ckq, i64 2
  %i.ckv = insertelement <4 x float> %i.cku, float %i.ckr, i64 3
  %i.ckw = fsub <4 x float> %i.ckv, %broadcast.splat4626, !dbg !13633 ; 3 uses
  %i.ckx = fcmp oge <4 x float> %i.ckw, %broadcast.splat4628, !dbg !13634
  %i.cky = select <4 x i1> %i.ckx, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !13635
  %i.ckz = load float, ptr %next.gep4631, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cla = load float, ptr %next.gep4632, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.clb = load float, ptr %next.gep4633, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.clc = load float, ptr %next.gep4634, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cld = insertelement <4 x float> poison, float %i.ckz, i64 0
  %i.cle = insertelement <4 x float> %i.cld, float %i.cla, i64 1
  %i.clf = insertelement <4 x float> %i.cle, float %i.clb, i64 2
  %i.clg = insertelement <4 x float> %i.clf, float %i.clc, i64 3
  %i.clh = fsub <4 x float> %i.clg, %broadcast.splat4626, !dbg !13636 ; 3 uses
  %i.cli = fcmp oge <4 x float> %i.clh, %broadcast.splat4628, !dbg !13637
  %i.clj = zext <4 x i1> %i.cli to <4 x i8>, !dbg !13638
  %i.clk = or disjoint <4 x i8> %i.cky, %i.clj, !dbg !13639
  %i.cll = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 8, !dbg !13632
  %i.clm = getelementptr i8, ptr %i.ckh, i64 40, !dbg !13632
  %i.cln = getelementptr i8, ptr %i.cki, i64 72, !dbg !13632
  %i.clo = getelementptr i8, ptr %i.ckj, i64 104, !dbg !13632
  %i.clp = load float, ptr %i.cll, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.clq = load float, ptr %i.clm, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.clr = load float, ptr %i.cln, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cls = load float, ptr %i.clo, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.clt = insertelement <4 x float> poison, float %i.clp, i64 0
  %i.clu = insertelement <4 x float> %i.clt, float %i.clq, i64 1
  %i.clv = insertelement <4 x float> %i.clu, float %i.clr, i64 2
  %i.clw = insertelement <4 x float> %i.clv, float %i.cls, i64 3
  %i.clx = fsub <4 x float> %i.clw, %broadcast.splat4626, !dbg !13640 ; 3 uses
  %i.cly = fcmp oge <4 x float> %i.clx, %broadcast.splat4628, !dbg !13641
  %i.clz = select <4 x i1> %i.cly, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !13642
  %i.cma = or disjoint <4 x i8> %i.clk, %i.clz, !dbg !13643
  %i.cmb = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 12, !dbg !13632
  %i.cmc = getelementptr i8, ptr %i.ckh, i64 44, !dbg !13632
  %i.cmd = getelementptr i8, ptr %i.cki, i64 76, !dbg !13632
  %i.cme = getelementptr i8, ptr %i.ckj, i64 108, !dbg !13632
  %i.cmf = load float, ptr %i.cmb, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmg = load float, ptr %i.cmc, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmh = load float, ptr %i.cmd, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmi = load float, ptr %i.cme, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmj = insertelement <4 x float> poison, float %i.cmf, i64 0
  %i.cmk = insertelement <4 x float> %i.cmj, float %i.cmg, i64 1
  %i.cml = insertelement <4 x float> %i.cmk, float %i.cmh, i64 2
  %i.cmm = insertelement <4 x float> %i.cml, float %i.cmi, i64 3
  %i.cmn = fsub <4 x float> %i.cmm, %broadcast.splat4626, !dbg !13644 ; 3 uses
  %i.cmo = fcmp oge <4 x float> %i.cmn, %broadcast.splat4628, !dbg !13645
  %i.cmp = select <4 x i1> %i.cmo, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !13646
  %i.cmq = or disjoint <4 x i8> %i.cma, %i.cmp, !dbg !13647
  %i.cmr = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 16, !dbg !13632
  %i.cms = getelementptr i8, ptr %i.ckh, i64 48, !dbg !13632
  %i.cmt = getelementptr i8, ptr %i.cki, i64 80, !dbg !13632
  %i.cmu = getelementptr i8, ptr %i.ckj, i64 112, !dbg !13632
  %i.cmv = load float, ptr %i.cmr, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmw = load float, ptr %i.cms, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmx = load float, ptr %i.cmt, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmy = load float, ptr %i.cmu, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cmz = insertelement <4 x float> poison, float %i.cmv, i64 0
  %i.cna = insertelement <4 x float> %i.cmz, float %i.cmw, i64 1
  %i.cnb = insertelement <4 x float> %i.cna, float %i.cmx, i64 2
  %i.cnc = insertelement <4 x float> %i.cnb, float %i.cmy, i64 3
  %i.cnd = fsub <4 x float> %i.cnc, %broadcast.splat4626, !dbg !13648 ; 3 uses
  %i.cne = fcmp oge <4 x float> %i.cnd, %broadcast.splat4628, !dbg !13649
  %i.cnf = select <4 x i1> %i.cne, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !13650
  %i.cng = or disjoint <4 x i8> %i.cmq, %i.cnf, !dbg !13651
  %i.cnh = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 20, !dbg !13632
  %i.cni = getelementptr i8, ptr %i.ckh, i64 52, !dbg !13632
  %i.cnj = getelementptr i8, ptr %i.cki, i64 84, !dbg !13632
  %i.cnk = getelementptr i8, ptr %i.ckj, i64 116, !dbg !13632
  %i.cnl = load float, ptr %i.cnh, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cnm = load float, ptr %i.cni, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cnn = load float, ptr %i.cnj, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cno = load float, ptr %i.cnk, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cnp = insertelement <4 x float> poison, float %i.cnl, i64 0
  %i.cnq = insertelement <4 x float> %i.cnp, float %i.cnm, i64 1
  %i.cnr = insertelement <4 x float> %i.cnq, float %i.cnn, i64 2
  %i.cns = insertelement <4 x float> %i.cnr, float %i.cno, i64 3
  %i.cnt = fsub <4 x float> %i.cns, %broadcast.splat4626, !dbg !13652 ; 3 uses
  %i.cnu = fcmp oge <4 x float> %i.cnt, %broadcast.splat4628, !dbg !13653
  %i.cnv = select <4 x i1> %i.cnu, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !13654
  %i.cnw = or disjoint <4 x i8> %i.cng, %i.cnv, !dbg !13655
  %i.cnx = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 24, !dbg !13632
  %i.cny = getelementptr i8, ptr %i.ckh, i64 56, !dbg !13632
  %i.cnz = getelementptr i8, ptr %i.cki, i64 88, !dbg !13632
  %i.coa = getelementptr i8, ptr %i.ckj, i64 120, !dbg !13632
  %i.cob = load float, ptr %i.cnx, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.coc = load float, ptr %i.cny, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cod = load float, ptr %i.cnz, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.coe = load float, ptr %i.coa, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cof = insertelement <4 x float> poison, float %i.cob, i64 0
  %i.cog = insertelement <4 x float> %i.cof, float %i.coc, i64 1
  %i.coh = insertelement <4 x float> %i.cog, float %i.cod, i64 2
  %i.coi = insertelement <4 x float> %i.coh, float %i.coe, i64 3
  %i.coj = fsub <4 x float> %i.coi, %broadcast.splat4626, !dbg !13656 ; 3 uses
  %i.cok = fcmp oge <4 x float> %i.coj, %broadcast.splat4628, !dbg !13657
  %i.col = select <4 x i1> %i.cok, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !13658
  %i.com = or disjoint <4 x i8> %i.cnw, %i.col, !dbg !13659
  %i.con = getelementptr inbounds nuw i8, ptr %next.gep4631, i64 28, !dbg !13632
  %i.coo = getelementptr i8, ptr %i.ckh, i64 60, !dbg !13632
  %i.cop = getelementptr i8, ptr %i.cki, i64 92, !dbg !13632
  %i.coq = getelementptr i8, ptr %i.ckj, i64 124, !dbg !13632
  %i.cor = load float, ptr %i.con, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cos = load float, ptr %i.coo, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cot = load float, ptr %i.cop, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cou = load float, ptr %i.coq, align 4, !dbg !13632, !alias.scope !11512, !noalias !11539
  %i.cov = insertelement <4 x float> poison, float %i.cor, i64 0
  %i.cow = insertelement <4 x float> %i.cov, float %i.cos, i64 1
  %i.cox = insertelement <4 x float> %i.cow, float %i.cot, i64 2
  %i.coy = insertelement <4 x float> %i.cox, float %i.cou, i64 3
  %i.coz = fsub <4 x float> %i.coy, %broadcast.splat4626, !dbg !13660 ; 3 uses
  %i.cpa = fcmp oge <4 x float> %i.coz, %broadcast.splat4628, !dbg !13661
  %i.cpb = select <4 x i1> %i.cpa, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !13662
  %i.cpc = add nuw <4 x i8> %i.com, %i.cpb, !dbg !13663
  %gep6099 = getelementptr i8, ptr %invariant.gep6098, i64 %index4630, !dbg !13630 ; 2 uses
  %wide.load4635 = load <4 x i8>, ptr %gep6099, align 1, !dbg !13630, !alias.scope !11540, !noalias !11541
  %i.cpd = or <4 x i8> %i.cpc, %wide.load4635, !dbg !13630
  store <4 x i8> %i.cpd, ptr %gep6099, align 1, !dbg !13630, !alias.scope !11540, !noalias !11541
  %i.cpe = shufflevector <4 x float> %i.clh, <4 x float> %i.ckw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpf = shufflevector <4 x float> %i.clx, <4 x float> %i.cmn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpg = shufflevector <8 x float> %i.cpe, <8 x float> %i.cpf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !13664
  %i.cph = fcmp olt <16 x float> %i.cpg, %i.ckc, !dbg !13664
  %i.cpi = shufflevector <4 x float> %i.clh, <4 x float> %i.ckw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpj = shufflevector <4 x float> %i.clx, <4 x float> %i.cmn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpk = shufflevector <8 x float> %i.cpi, <8 x float> %i.cpj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !13664
  %i.cpl = select <16 x i1> %i.cph, <16 x float> %i.cpk, <16 x float> %i.ckd, !dbg !13664
  %i.cpm = shufflevector <4 x float> %i.cnd, <4 x float> %i.cnt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpn = shufflevector <4 x float> %i.coj, <4 x float> %i.coz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpo = shufflevector <8 x float> %i.cpm, <8 x float> %i.cpn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !13664
  %i.cpp = fcmp olt <16 x float> %i.cpo, %i.cke, !dbg !13664
  %i.cpq = shufflevector <4 x float> %i.cnd, <4 x float> %i.cnt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cpr = shufflevector <4 x float> %i.coj, <4 x float> %i.coz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !13664
  %i.cps = shufflevector <8 x float> %i.cpq, <8 x float> %i.cpr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !13664
  %i.cpt = select <16 x i1> %i.cpp, <16 x float> %i.cps, <16 x float> %i.ckf, !dbg !13664
  %interleaved.vec4636 = shufflevector <16 x float> %i.cpl, <16 x float> %i.cpt, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !13664
  store <32 x float> %interleaved.vec4636, ptr %next.gep4631, align 4, !dbg !13664, !alias.scope !11512, !noalias !11539
  %index.next4637 = add nuw i64 %index4630, 4, !dbg !13631 ; 2 uses
  %i.cpu = icmp eq i64 %index.next4637, %n.vec4624, !dbg !13665
  br i1 %i.cpu, label %.lr.ph373.i.i159.preheader5218, label %vector.body4629, !dbg !13665, !llvm.loop !9233

.lr.ph373.i.i159.preheader5218:                   ; preds = %vector.body4629, %.lr.ph373.i.i159.preheader
  %.sroa.0179.0371.i.i160.ph = phi ptr [ %i.biw, %.lr.ph373.i.i159.preheader ], [ %i.ckb, %vector.body4629 ]
  %.sroa.7181.0370.i.i161.ph = phi i64 [ 0, %.lr.ph373.i.i159.preheader ], [ %n.vec4624, %vector.body4629 ]
  %i.cpv = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i157, i64 0
  %i.cpw = shufflevector <4 x float> %i.cpv, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cpx = insertelement <4 x float> poison, float %.sroa.029.0.i.i158, i64 0
  %i.cpy = shufflevector <4 x float> %i.cpx, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i159, !dbg !13630

.lr.ph373.i.i159:                                 ; preds = %.lr.ph373.i.i159.preheader5218, %bb.rh
  %.sroa.0179.0371.i.i160 = phi ptr [ %i.cqc, %bb.rh ], [ %.sroa.0179.0371.i.i160.ph, %.lr.ph373.i.i159.preheader5218 ] ; 4 uses
  %.sroa.7181.0370.i.i161 = phi i64 [ %i.cqb, %bb.rh ], [ %.sroa.7181.0370.i.i161.ph, %.lr.ph373.i.i159.preheader5218 ] ; 2 uses
  %i.cpz = add nuw nsw i64 %.sroa.7181.0370.i.i161, %i.chy, !dbg !13666 ; 3 uses
  %i.cqa = icmp ult i64 %i.cpz, %i.bjl, !dbg !13630
  br i1 %i.cqa, label %bb.rh, label %.invoke1413.i, !dbg !13630

bb.rh:                                            ; preds = %.lr.ph373.i.i159
end_hunk_1
begin_hunk_2_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a

bb.aal:                                           ; preds = %bb.aak
  %i.dzs = shl nuw nsw i64 %i.dhm, 2, !dbg !14547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dhl) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dhl, i64 noundef range(i64 1, 0) %i.dzs, i64 noundef 4) #19, !dbg !14548, !noalias !11639
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568, !dbg !14549

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568: ; preds = %bb.aal, %bb.aak, %.thread.i.i567
  %.pn229.pn.pn.pn.pn.pn.pn565.i.i569 = phi { ptr, i32 } [ %i.dhk, %.thread.i.i567 ], [ %.pn229.pn.pn.pn.pn.pn571.i.i573, %bb.aal ], [ %.pn229.pn.pn.pn.pn.pn571.i.i573, %bb.aak ] ; 2 uses
  %i.dzt = icmp eq i64 %i.dgz, 0, !dbg !14550
  br i1 %i.dzt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i401, label %bb.aam, !dbg !14550

bb.aam:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit480.i.i568
  %i.dzu = shl nuw nsw i64 %i.dgz, 2, !dbg !14551
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dgy) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dgy, i64 noundef range(i64 1, 0) %i.dzu, i64 noundef 4) #19, !dbg !14552, !noalias !11639
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxfEECsfISxE4fmY1Y_14polars_parquet.exit.i401, !dbg !14553

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxmEECsfISxE4fmY1Y_14polars_parquet.exit462.i.i822, %bb.xj
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dds, i64 noundef range(i64 1, 0) %i.ddt, i64 noundef 1) #19, !dbg !14554, !noalias !11591
  br label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram17HistogramDistanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAlloctECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !14555

bb.aan:                                           ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i, %.split492.i422
  %.sroa.0.0494.i426 = phi i64 [ %spec.store.select.i364, %.split492.i422 ], [ %i.eqe, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ] ; 14 uses
  %.sroa.031.0493.i427 = phi i64 [ 0, %.split492.i422 ], [ %i.dzv, %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.i ]
  %i.dzv = add nuw nsw i64 %.sroa.031.0493.i427, 1, !dbg !14556 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11745), !dbg !14557
  call void @llvm.experimental.noalias.scope.decl(metadata !11746), !dbg !14557
  call void @llvm.experimental.noalias.scope.decl(metadata !11747), !dbg !14557
  call void @llvm.experimental.noalias.scope.decl(metadata !11748), !dbg !14557
  call void @llvm.experimental.noalias.scope.decl(metadata !11749), !dbg !14557
  call void @llvm.experimental.noalias.scope.decl(metadata !11750), !dbg !14557
  %i.dzw = icmp eq i64 %.sroa.0.0494.i426, 0, !dbg !14558
  br i1 %i.dzw, label %.loopexit87.i546, label %bb.aao, !dbg !14558

bb.aao:                                           ; preds = %bb.aan
  %i.dzx = add nsw i64 %.sroa.0.0494.i426, 7, !dbg !14559
  %i.dzy = lshr i64 %i.dzx, 3, !dbg !14560        ; 8 uses
  %i.dzz = icmp eq i64 %.sroa.0.0494.i426, 1, !dbg !14561
  br i1 %i.dzz, label %.preheader.i173.i870.preheader, label %bb.aap, !dbg !14561

.preheader.i173.i870.preheader:                   ; preds = %bb.aao
  br i1 %min.iters.check4695, label %.preheader.i173.i870.preheader4976, label %vector.body4698, !dbg !14562

.preheader.i173.i870.preheader4976:               ; preds = %vector.body4698, %.preheader.i173.i870.preheader
  %.sroa.065.0392.i.i871.ph = phi i64 [ 0, %.preheader.i173.i870.preheader ], [ %n.vec4697, %vector.body4698 ]
  br label %.preheader.i173.i870, !dbg !14562

vector.body4698:                                  ; preds = %.preheader.i173.i870.preheader, %vector.body4698
  %index4699 = phi i64 [ %index.next4700, %vector.body4698 ], [ 0, %.preheader.i173.i870.preheader ], !dbg !14563 ; 2 uses
  %i.eaa = getelementptr inbounds nuw i8, ptr %i.dds, i64 %index4699, !dbg !14562 ; 2 uses
  %i.eab = getelementptr inbounds nuw i8, ptr %i.eaa, i64 16, !dbg !14562
  store <16 x i8> zeroinitializer, ptr %i.eaa, align 1, !dbg !14562, !alias.scope !11750, !noalias !11752
  store <16 x i8> zeroinitializer, ptr %i.eab, align 1, !dbg !14562, !alias.scope !11750, !noalias !11752
  %index.next4700 = add nuw i64 %index4699, 32, !dbg !14563 ; 2 uses
  %i.eac = icmp eq i64 %index.next4700, %n.vec4697, !dbg !14564
  br i1 %i.eac, label %.preheader.i173.i870.preheader4976, label %vector.body4698, !dbg !14564, !llvm.loop !10658

bb.aap:                                           ; preds = %bb.aao
  %i.ead = mul nuw nsw i64 %.sroa.0.0494.i426, 544, !dbg !14565 ; 2 uses
  %.not110.i.i428 = icmp ugt i64 %i.ead, %i.dej
  br i1 %.not110.i.i428, label %.invoke1415.i862, label %.lr.ph.preheader.i168.i429, !dbg !14566, !prof !727

.lr.ph.preheader.i168.i429:                       ; preds = %bb.aap
  %.idx.i167.i430 = mul nuw nsw i64 %.sroa.0.0494.i426, 2176, !dbg !14567
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dei, i8 0, i64 %.idx.i167.i430, i1 false), !dbg !14568, !alias.scope !11747, !noalias !11753
  br label %bb.aaq, !dbg !14569

bb.aaq:                                           ; preds = %bb.act, %.lr.ph.preheader.i168.i429
  %.sroa.067.0348.i.i431 = phi i64 [ 0, %.lr.ph.preheader.i168.i429 ], [ %i.eae, %bb.act ] ; 4 uses
  %i.eae = add nuw nsw i64 %.sroa.067.0348.i.i431, 1, !dbg !14570 ; 2 uses
  %exitcond.not.i169.i432 = icmp eq i64 %.sroa.067.0348.i.i431, %i.cza, !dbg !14571
  br i1 %exitcond.not.i169.i432, label %.invoke1413.i443, label %bb.acr, !dbg !14571

.loopexit307.i.i450:                              ; preds = %bb.acq
  %i.eaf = icmp eq i64 %i.eag, 0, !dbg !14572
  br i1 %i.eaf, label %bb.aar, label %.split.i.i436, !dbg !14572

bb.aar:                                           ; preds = %.loopexit307.i.i450
  br i1 %i.dfr, label %._crit_edge.i170.i456, label %.lr.ph352.i.i451, !dbg !14573

.split.i.i436:                                    ; preds = %bb.act, %.loopexit307.i.i450
  %.sroa.04.0350.i.i437 = phi i64 [ %i.eag, %.loopexit307.i.i450 ], [ 544, %bb.act ]
  %i.eag = add nsw i64 %.sroa.04.0350.i.i437, -1, !dbg !14574 ; 4 uses
  %invariant.gep.i.i438 = getelementptr [4 x i8], ptr %i.cyz, i64 %i.eag, !dbg !14575
  %i.eah = mul nuw i64 %i.eag, %.sroa.0.0494.i426
  br label %bb.acl, !dbg !14576

.lr.ph352.i.i451:                                 ; preds = %bb.aar, %.noexc176.i455
  %.sroa.018.0351.i.i452 = phi ptr [ %i.eai, %.noexc176.i455 ], [ %i.dem, %bb.aar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14577, !noalias !11761
  invoke void @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.f)
          to label %.noexc176.i455 unwind label %.loopexit.split-lp.loopexit.i453, !dbg !14578, !noalias !11591

.noexc176.i455:                                   ; preds = %.lr.ph352.i.i451
  %i.eai = getelementptr inbounds nuw i8, ptr %.sroa.018.0351.i.i452, i64 32, !dbg !14579 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.018.0351.i.i452, ptr noundef nonnull align 4 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !14580, !noalias !11763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14581, !noalias !11761
  %i.eaj = icmp eq ptr %i.eai, %i.dfq, !dbg !14582
  br i1 %i.eaj, label %._crit_edge.i170.i456, label %.lr.ph352.i.i451, !dbg !14573

._crit_edge.i170.i456:                            ; preds = %.noexc176.i455, %bb.aar
  %i.eak = mul i64 %i.dzy, %.sroa.04.1, !dbg !14583 ; 4 uses
  %.not111.i.i457 = icmp ugt i64 %i.eak, %i.dfb
  br i1 %.not111.i.i457, label %.invoke1415.i862, label %bb.aas, !dbg !14584, !prof !727

bb.aas:                                           ; preds = %._crit_edge.i170.i456
  %i.eal = icmp samesign eq i64 %i.eak, 0, !dbg !14585
  br i1 %i.eal, label %._crit_edge356.i.i459, label %.lr.ph355.preheader.i.i458, !dbg !14586

.lr.ph355.preheader.i.i458:                       ; preds = %bb.aas
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dfa, i8 0, i64 %i.eak, i1 false), !dbg !14587, !alias.scope !11749, !noalias !11769
  br label %._crit_edge356.i.i459

._crit_edge356.i.i459:                            ; preds = %.lr.ph355.preheader.i.i458, %bb.aas
  br i1 %.not112.i.i425, label %.invoke1415.i862, label %.lr.ph377.i.i460, !dbg !14588, !prof !727

.lr.ph377.i.i460:                                 ; preds = %._crit_edge356.i.i459
  %i.eam = lshr i64 %.sroa.0.0494.i426, 3         ; 3 uses
  %.not.i126.i.i461 = icmp samesign ugt i64 %i.eam, %i.den
  %.idx395.i.i462 = shl nuw nsw i64 %i.eam, 5
  %i.ean = getelementptr inbounds nuw i8, ptr %i.dem, i64 %.idx395.i.i462
  %i.eao = icmp eq i64 %i.eam, 0
  %i.eap = and i64 %.sroa.0.0494.i426, 36028797018963960 ; 15 uses
  %i.eaq = and i64 %.sroa.0.0494.i426, 7          ; 8 uses
  %.not.i.i171.i463 = icmp samesign ugt i64 %i.dzy, %i.den
  %.idx396.i.i464 = shl i64 %i.dzy, 5             ; 2 uses
  %i.ear = getelementptr inbounds nuw i8, ptr %i.dem, i64 %.idx396.i.i464
  br i1 %.not.i126.i.i461, label %.lr.ph377.split.us.i.i867, label %.lr.ph377.split.preheader.i.i465, !prof !712

.lr.ph377.split.preheader.i.i465:                 ; preds = %.lr.ph377.i.i460
  %i.eas = icmp eq i64 %i.eaq, 0
  %i.eat = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.eau = icmp samesign ult i64 %i.eat, %i.den
  %i.eav = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.eat ; 2 uses
  %i.eaw = trunc i64 %i.eap to i8
  %i.eax = icmp eq i64 %i.eaq, 1
  %i.eay = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.eaz = icmp samesign ult i64 %i.eay, %i.den
  %i.eba = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.eay
  %i.ebb = getelementptr inbounds nuw i8, ptr %i.eba, i64 4 ; 2 uses
  %i.ebc = trunc i64 %i.eap to i8
  %i.ebd = or disjoint i8 %i.ebc, 1
  %i.ebe = icmp eq i64 %i.eaq, 2
  %i.ebf = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.ebg = icmp samesign ult i64 %i.ebf, %i.den
  %i.ebh = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.ebf
  %i.ebi = getelementptr inbounds nuw i8, ptr %i.ebh, i64 8 ; 2 uses
  %i.ebj = trunc i64 %i.eap to i8
  %i.ebk = or disjoint i8 %i.ebj, 2
  %i.ebl = icmp eq i64 %i.eaq, 3
  %i.ebm = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.ebn = icmp samesign ult i64 %i.ebm, %i.den
  %i.ebo = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.ebm
  %i.ebp = getelementptr inbounds nuw i8, ptr %i.ebo, i64 12 ; 2 uses
  %i.ebq = trunc i64 %i.eap to i8
  %i.ebr = or disjoint i8 %i.ebq, 3
  %i.ebs = icmp eq i64 %i.eaq, 4
  %i.ebt = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.ebu = icmp samesign ult i64 %i.ebt, %i.den
  %i.ebv = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.ebt
  %i.ebw = getelementptr inbounds nuw i8, ptr %i.ebv, i64 16 ; 2 uses
  %i.ebx = trunc i64 %i.eap to i8
  %i.eby = or disjoint i8 %i.ebx, 4
  %i.ebz = icmp eq i64 %i.eaq, 5
  %i.eca = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.ecb = icmp samesign ult i64 %i.eca, %i.den
  %i.ecc = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.eca
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.ecc, i64 20 ; 2 uses
  %i.ece = trunc i64 %i.eap to i8
  %i.ecf = or disjoint i8 %i.ece, 5
  %i.ecg = icmp eq i64 %i.eaq, 6
  %i.ech = lshr exact i64 %i.eap, 3               ; 3 uses
  %i.eci = icmp samesign ult i64 %i.ech, %i.den
  %i.ecj = getelementptr inbounds nuw [32 x i8], ptr %i.dem, i64 %i.ech
  %i.eck = getelementptr inbounds nuw i8, ptr %i.ecj, i64 24 ; 2 uses
  %i.ecl = trunc i64 %i.eap to i8
  %i.ecm = or disjoint i8 %i.ecl, 6
  %i.ecn = add i64 %.idx396.i.i464, -32
  %i.eco = lshr exact i64 %i.ecn, 5
  br label %.lr.ph377.split.i.i467, !dbg !14589

.lr.ph377.split.us.i.i867:                        ; preds = %.lr.ph377.i.i460
  %.not398.i.i868 = icmp eq i64 %i.ddt, 0, !dbg !14589
  br i1 %.not398.i.i868, label %.invoke1413.i443, label %bb.aat, !dbg !14589

bb.aat:                                           ; preds = %.lr.ph377.split.us.i.i867
  %i.ecp = load i16, ptr %i.cyj, align 2, !dbg !14590, !alias.scope !11770, !noalias !11771, !noundef !664
  %i.ecq = zext i16 %i.ecp to i64, !dbg !14591
  %i.ecr = mul nuw nsw i64 %.sroa.0.0494.i426, %i.ecq, !dbg !14592
  %.not.i125.us.i.i869 = icmp ugt i64 %i.ecr, %i.dej, !dbg !14593
  br i1 %.not.i125.us.i.i869, label %.split381.us.i.i866, label %.invoke1417.i864, !dbg !14593, !prof !712

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533: ; preds = %bb.abt
  %i.ecs = icmp eq ptr %i.ect, %i.dfs, !dbg !14594
  br i1 %i.ecs, label %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534, label %.lr.ph377.split.i.i467, !dbg !14595

.lr.ph377.split.i.i467:                           ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533, %.lr.ph377.split.preheader.i.i465
  %.sroa.0.0289375.i.i468 = phi ptr [ %i.ect, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533 ], [ %i.cyj, %.lr.ph377.split.preheader.i.i465 ] ; 2 uses
  %.sroa.7.0374.i.i469 = phi i64 [ %i.ecu, %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533 ], [ 0, %.lr.ph377.split.preheader.i.i465 ] ; 7 uses
  %16 = mul i64 %i.dzy, %.sroa.7.0374.i.i469, !dbg !14596
  %i.ect = getelementptr inbounds nuw i8, ptr %.sroa.0.0289375.i.i468, i64 2, !dbg !14596 ; 2 uses
  %i.ecu = add nuw i64 %.sroa.7.0374.i.i469, 1, !dbg !14597
  %exitcond430.not.i.i470 = icmp eq i64 %.sroa.7.0374.i.i469, %i.ddt, !dbg !14589
  br i1 %exitcond430.not.i.i470, label %.invoke1413.i443, label %bb.aax, !dbg !14589

_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534: ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i533
  br i1 %i.dgb, label %.lr.ph390.preheader.i.i535, label %.invoke1413.i443, !dbg !14598

.lr.ph390.preheader.i.i535:                       ; preds = %_RNvNtNtCsk4ZPsEfLtLH_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i534
  %i.ecv = load i8, ptr %i.dgc, align 1, !dbg !14598, !alias.scope !11750, !noalias !11752, !noundef !664
  %i.ecw = mul i64 %i.dzy, %i.dga, !dbg !14599
  br label %.lr.ph390.i.i536, !dbg !14600

.lr.ph390.i.i536:                                 ; preds = %bb.aaw, %.lr.ph390.preheader.i.i535
  %.sroa.0.1389.i.i537 = phi i64 [ %.sroa.0.2.i.i544, %bb.aaw ], [ 1, %.lr.ph390.preheader.i.i535 ] ; 2 uses
  %.sroa.061.0388.i.i538 = phi i8 [ %.sroa.061.1.i.i543, %bb.aaw ], [ %i.ecv, %.lr.ph390.preheader.i.i535 ] ; 4 uses
  %.sroa.059.0387.i.i539 = phi i64 [ %i.ecy, %bb.aaw ], [ %i.ecw, %.lr.ph390.preheader.i.i535 ]
  %.sroa.052.0386.i.i540 = phi i64 [ %i.ecx, %bb.aaw ], [ %i.dga, %.lr.ph390.preheader.i.i535 ]
  %i.ecx = add nsw i64 %.sroa.052.0386.i.i540, -1, !dbg !14601 ; 4 uses
  %i.ecy = sub i64 %.sroa.059.0387.i.i539, %i.dzy, !dbg !14602 ; 2 uses
  %i.ecz = lshr i8 %.sroa.061.0388.i.i538, 3, !dbg !14603
  %i.eda = zext nneg i8 %i.ecz to i64, !dbg !14603
  %i.edb = add i64 %i.ecy, %i.eda, !dbg !14604    ; 3 uses
  %i.edc = icmp ult i64 %i.edb, %i.dfb, !dbg !14600
  br i1 %i.edc, label %bb.aau, label %.invoke1413.i443, !dbg !14600

bb.aau:                                           ; preds = %.lr.ph390.i.i536
  %i.edd = and i8 %.sroa.061.0388.i.i538, 7, !dbg !14605
  %i.ede = shl nuw i8 1, %i.edd, !dbg !14606
  %i.edf = getelementptr inbounds nuw i8, ptr %i.dfa, i64 %i.edb, !dbg !14600
  %i.edg = load i8, ptr %i.edf, align 1, !dbg !14600, !alias.scope !11749, !noalias !11769, !noundef !664
  %i.edh = and i8 %i.edg, %i.ede, !dbg !14600
  %i.edi = icmp eq i8 %i.edh, 0, !dbg !14600
  br i1 %i.edi, label %bb.aaw, label %bb.aav, !dbg !14600

bb.aav:                                           ; preds = %bb.aau
  %i.edj = getelementptr inbounds nuw i8, ptr %i.dds, i64 %i.ecx, !dbg !14607
  %i.edk = load i8, ptr %i.edj, align 1, !dbg !14607, !alias.scope !11750, !noalias !11752, !noundef !664 ; 2 uses
  %.not115.i.i541 = icmp ne i8 %.sroa.061.0388.i.i538, %i.edk, !dbg !14608
  %i.edl = zext i1 %.not115.i.i541 to i64, !dbg !14608
  %spec.select117.i.i542 = add i64 %.sroa.0.1389.i.i537, %i.edl, !dbg !14608
  br label %bb.aaw, !dbg !14608

bb.aaw:                                           ; preds = %bb.aav, %bb.aau
  %.sroa.061.1.i.i543 = phi i8 [ %.sroa.061.0388.i.i538, %bb.aau ], [ %i.edk, %bb.aav ], !dbg !14609 ; 2 uses
  %.sroa.0.2.i.i544 = phi i64 [ %.sroa.0.1389.i.i537, %bb.aau ], [ %spec.select117.i.i542, %bb.aav ], !dbg !14610 ; 2 uses
  %i.edm = getelementptr inbounds nuw i8, ptr %i.dds, i64 %i.ecx, !dbg !14611
  store i8 %.sroa.061.1.i.i543, ptr %i.edm, align 1, !dbg !14611, !alias.scope !11750, !noalias !11752
  %.not114.i.i545 = icmp eq i64 %i.ecx, 0, !dbg !14612
  br i1 %.not114.i.i545, label %.loopexit87.i546, label %.lr.ph390.i.i536, !dbg !14612

bb.aax:                                           ; preds = %.lr.ph377.split.i.i467
  %i.edn = getelementptr inbounds nuw i8, ptr %i.dds, i64 %.sroa.7.0374.i.i469, !dbg !14613 ; 15 uses
  %i.edo = mul i64 %.sroa.7.0374.i.i469, %i.dzy, !dbg !14614 ; 3 uses
  %i.edp = load i16, ptr %.sroa.0.0289375.i.i468, align 2, !dbg !14590, !alias.scope !11770, !noalias !11771, !noundef !664
  %i.edq = zext i16 %i.edp to i64, !dbg !14591
  %i.edr = mul nuw nsw i64 %.sroa.0.0494.i426, %i.edq, !dbg !14592 ; 4 uses
  %.not.i125.i.i471 = icmp ugt i64 %i.edr, %i.dej, !dbg !14593
  br i1 %.not.i125.i.i471, label %.split381.us.i.i866, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472, !dbg !14593, !prof !712

.split381.us.i.i866:                              ; preds = %bb.aax, %bb.aat
  br label %.invoke1417.i864, !dbg !14615

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472: ; preds = %bb.aax
  %i.eds = getelementptr inbounds nuw [4 x i8], ptr %i.dei, i64 %i.edr, !dbg !14616
  %i.edt = sub nuw nsw i64 %i.dej, %i.edr, !dbg !14617 ; 2 uses
  br i1 %i.eao, label %._crit_edge363.i.i492, label %.lr.ph362.i.i473, !dbg !14618

.lr.ph362.i.i473:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472, %bb.ack
  %.sroa.049.0361.i.i474 = phi float [ %.sroa.049.4.7.i.i491, %bb.ack ], [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 2 uses
  %.sroa.0160.0360.i.i475 = phi ptr [ %i.edu, %bb.ack ], [ %i.dem, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 10 uses
  %.sroa.7162.0359.i.i476 = phi i64 [ %i.edv, %bb.ack ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14619, !noalias !11761
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !11761
  %i.edu = getelementptr inbounds nuw i8, ptr %.sroa.0160.0360.i.i475, i64 32, !dbg !14620 ; 2 uses
  %i.edv = add nuw nsw i64 %.sroa.7162.0359.i.i476, 1, !dbg !14621
  %i.edw = shl nuw nsw i64 %.sroa.7162.0359.i.i476, 3, !dbg !14622 ; 11 uses
  %.not.i145.i.i477 = icmp samesign ugt i64 %i.edw, %i.edt, !dbg !14623
  br i1 %.not.i145.i.i477, label %.invoke1417.i864, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit149.i.i478, !dbg !14623, !prof !712

._crit_edge363.i.i492:                            ; preds = %bb.ack, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472
  %.sroa.049.0.lcssa.i.i493 = phi float [ f0x7E967699, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit.i.i472 ], [ %.sroa.049.4.7.i.i491, %bb.ack ], !dbg !14624 ; 3 uses
  %i.edx = add nuw nsw i64 %i.edr, %i.eap, !dbg !14625 ; 3 uses
  %.not.i132.i.i494 = icmp ugt i64 %i.edx, %i.dej, !dbg !14626
  br i1 %.not.i132.i.i494, label %.invoke1417.i864, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495, !dbg !14626, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495: ; preds = %._crit_edge363.i.i492
  %i.edy = sub nuw nsw i64 %i.dej, %i.edx, !dbg !14627
  %.not.i137.i.i496 = icmp samesign ugt i64 %i.eaq, %i.edy, !dbg !14628
  br i1 %.not.i137.i.i496, label %.invoke1417.i864, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497, !dbg !14628, !prof !712

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit136.i.i495
  %i.edz = getelementptr inbounds nuw [4 x i8], ptr %i.dei, i64 %i.edx, !dbg !14629 ; 7 uses
  br i1 %i.eas, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498, !dbg !14630

.lr.ph367.i.i498:                                 ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edz, i64 4, !dbg !14631
  br i1 %i.eau, label %bb.aay, label %.invoke1413.i443, !dbg !14632

._crit_edge368.i.i503:                            ; preds = %bb.abp, %bb.abq, %bb.aaz, %bb.abc, %bb.abf, %bb.abi, %bb.abl, %bb.abo, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497
  %.sroa.049.1.lcssa.i.i504 = phi float [ %.sroa.049.0.lcssa.i.i493, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit141.i.i497 ], [ %.sroa.049.2.i.i502, %bb.aaz ], [ %.sroa.049.2.i.i502.1, %bb.abc ], [ %.sroa.049.2.i.i502.2, %bb.abf ], [ %.sroa.049.2.i.i502.3, %bb.abi ], [ %.sroa.049.2.i.i502.4, %bb.abl ], [ %.sroa.049.2.i.i502.5, %bb.abo ], [ %i.efh, %bb.abq ], [ %.sroa.049.2.i.i502.5, %bb.abp ], !dbg !14633 ; 2 uses
  %i.eeb = icmp samesign ult i64 %.sroa.7.0374.i.i469, 2000, !dbg !14634
  br i1 %i.eeb, label %bb.abu, label %bb.abs, !dbg !14634

bb.aay:                                           ; preds = %.lr.ph367.i.i498
  %i.eec = load float, ptr %i.edz, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.eed = load float, ptr %i.eav, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.eee = fadd float %i.eec, %i.eed, !dbg !14636 ; 3 uses
  store float %i.eee, ptr %i.eav, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.eef = fcmp olt float %i.eee, %.sroa.049.0.lcssa.i.i493, !dbg !14637
  br i1 %i.eef, label %bb.abr, label %bb.aaz, !dbg !14637

bb.aaz:                                           ; preds = %bb.abr, %bb.aay
  %.sroa.049.2.i.i502 = phi float [ %i.eee, %bb.abr ], [ %.sroa.049.0.lcssa.i.i493, %bb.aay ], !dbg !14633 ; 3 uses
  br i1 %i.eax, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.1, !dbg !14630

.lr.ph367.i.i498.1:                               ; preds = %bb.aaz
  %i.eeg = getelementptr inbounds nuw i8, ptr %i.edz, i64 8, !dbg !14631
  br i1 %i.eaz, label %bb.aba, label %.invoke1413.i443, !dbg !14632

bb.aba:                                           ; preds = %.lr.ph367.i.i498.1
  %i.eeh = load float, ptr %i.eea, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.eei = load float, ptr %i.ebb, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.eej = fadd float %i.eeh, %i.eei, !dbg !14636 ; 3 uses
  store float %i.eej, ptr %i.ebb, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.eek = fcmp olt float %i.eej, %.sroa.049.2.i.i502, !dbg !14637
  br i1 %i.eek, label %bb.abb, label %bb.abc, !dbg !14637

bb.abb:                                           ; preds = %bb.aba
  store i8 %i.ebd, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.abc, !dbg !14639

bb.abc:                                           ; preds = %bb.abb, %bb.aba
  %.sroa.049.2.i.i502.1 = phi float [ %i.eej, %bb.abb ], [ %.sroa.049.2.i.i502, %bb.aba ], !dbg !14633 ; 3 uses
  br i1 %i.ebe, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.2, !dbg !14630

.lr.ph367.i.i498.2:                               ; preds = %bb.abc
  %i.eel = getelementptr inbounds nuw i8, ptr %i.edz, i64 12, !dbg !14631
  br i1 %i.ebg, label %bb.abd, label %.invoke1413.i443, !dbg !14632

bb.abd:                                           ; preds = %.lr.ph367.i.i498.2
  %i.eem = load float, ptr %i.eeg, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.een = load float, ptr %i.ebi, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.eeo = fadd float %i.eem, %i.een, !dbg !14636 ; 3 uses
  store float %i.eeo, ptr %i.ebi, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.eep = fcmp olt float %i.eeo, %.sroa.049.2.i.i502.1, !dbg !14637
  br i1 %i.eep, label %bb.abe, label %bb.abf, !dbg !14637

bb.abe:                                           ; preds = %bb.abd
  store i8 %i.ebk, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.abf, !dbg !14639

bb.abf:                                           ; preds = %bb.abe, %bb.abd
  %.sroa.049.2.i.i502.2 = phi float [ %i.eeo, %bb.abe ], [ %.sroa.049.2.i.i502.1, %bb.abd ], !dbg !14633 ; 3 uses
  br i1 %i.ebl, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.3, !dbg !14630

.lr.ph367.i.i498.3:                               ; preds = %bb.abf
  %i.eeq = getelementptr inbounds nuw i8, ptr %i.edz, i64 16, !dbg !14631
  br i1 %i.ebn, label %bb.abg, label %.invoke1413.i443, !dbg !14632

bb.abg:                                           ; preds = %.lr.ph367.i.i498.3
  %i.eer = load float, ptr %i.eel, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.ees = load float, ptr %i.ebp, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.eet = fadd float %i.eer, %i.ees, !dbg !14636 ; 3 uses
  store float %i.eet, ptr %i.ebp, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.eeu = fcmp olt float %i.eet, %.sroa.049.2.i.i502.2, !dbg !14637
  br i1 %i.eeu, label %bb.abh, label %bb.abi, !dbg !14637

bb.abh:                                           ; preds = %bb.abg
  store i8 %i.ebr, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.abi, !dbg !14639

bb.abi:                                           ; preds = %bb.abh, %bb.abg
  %.sroa.049.2.i.i502.3 = phi float [ %i.eet, %bb.abh ], [ %.sroa.049.2.i.i502.2, %bb.abg ], !dbg !14633 ; 3 uses
  br i1 %i.ebs, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.4, !dbg !14630

.lr.ph367.i.i498.4:                               ; preds = %bb.abi
  %i.eev = getelementptr inbounds nuw i8, ptr %i.edz, i64 20, !dbg !14631
  br i1 %i.ebu, label %bb.abj, label %.invoke1413.i443, !dbg !14632

bb.abj:                                           ; preds = %.lr.ph367.i.i498.4
  %i.eew = load float, ptr %i.eeq, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.eex = load float, ptr %i.ebw, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.eey = fadd float %i.eew, %i.eex, !dbg !14636 ; 3 uses
  store float %i.eey, ptr %i.ebw, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.eez = fcmp olt float %i.eey, %.sroa.049.2.i.i502.3, !dbg !14637
  br i1 %i.eez, label %bb.abk, label %bb.abl, !dbg !14637

bb.abk:                                           ; preds = %bb.abj
  store i8 %i.eby, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.abl, !dbg !14639

bb.abl:                                           ; preds = %bb.abk, %bb.abj
  %.sroa.049.2.i.i502.4 = phi float [ %i.eey, %bb.abk ], [ %.sroa.049.2.i.i502.3, %bb.abj ], !dbg !14633 ; 3 uses
  br i1 %i.ebz, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.5, !dbg !14630

.lr.ph367.i.i498.5:                               ; preds = %bb.abl
  %i.efa = getelementptr inbounds nuw i8, ptr %i.edz, i64 24, !dbg !14631
  br i1 %i.ecb, label %bb.abm, label %.invoke1413.i443, !dbg !14632

bb.abm:                                           ; preds = %.lr.ph367.i.i498.5
  %i.efb = load float, ptr %i.eev, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.efc = load float, ptr %i.ecd, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.efd = fadd float %i.efb, %i.efc, !dbg !14636 ; 3 uses
  store float %i.efd, ptr %i.ecd, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.efe = fcmp olt float %i.efd, %.sroa.049.2.i.i502.4, !dbg !14637
  br i1 %i.efe, label %bb.abn, label %bb.abo, !dbg !14637

bb.abn:                                           ; preds = %bb.abm
  store i8 %i.ecf, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.abo, !dbg !14639

bb.abo:                                           ; preds = %bb.abn, %bb.abm
  %.sroa.049.2.i.i502.5 = phi float [ %i.efd, %bb.abn ], [ %.sroa.049.2.i.i502.4, %bb.abm ], !dbg !14633 ; 3 uses
  br i1 %i.ecg, label %._crit_edge368.i.i503, label %.lr.ph367.i.i498.6, !dbg !14630

.lr.ph367.i.i498.6:                               ; preds = %bb.abo
  br i1 %i.eci, label %bb.abp, label %.invoke1413.i443, !dbg !14632

bb.abp:                                           ; preds = %.lr.ph367.i.i498.6
  %i.eff = load float, ptr %i.efa, align 4, !dbg !14635, !alias.scope !11747, !noalias !11753, !noundef !664
  %i.efg = load float, ptr %i.eck, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763, !noundef !664
  %i.efh = fadd float %i.eff, %i.efg, !dbg !14636 ; 3 uses
  store float %i.efh, ptr %i.eck, align 4, !dbg !14636, !alias.scope !11748, !noalias !11763
  %i.efi = fcmp olt float %i.efh, %.sroa.049.2.i.i502.5, !dbg !14637
  br i1 %i.efi, label %bb.abq, label %._crit_edge368.i.i503, !dbg !14637

bb.abq:                                           ; preds = %bb.abp
  store i8 %i.ecm, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %._crit_edge368.i.i503, !dbg !14639

bb.abr:                                           ; preds = %bb.aay
  store i8 %i.eaw, ptr %i.edn, align 1, !dbg !14638, !alias.scope !11750, !noalias !11752
  br label %bb.aaz, !dbg !14639

bb.abs:                                           ; preds = %bb.abu, %._crit_edge368.i.i503
  %.sroa.029.0.i.i505 = phi float [ %i.emw, %bb.abu ], [ 1.460000e+01, %._crit_edge368.i.i503 ], !dbg !14640 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11774), !dbg !14641
  br i1 %.not.i.i171.i463, label %.invoke1415.i862, label %.lr.ph373.i.i506.preheader, !dbg !14642, !prof !727

.lr.ph373.i.i506.preheader:                       ; preds = %bb.abs
  %i.efj = call i64 @llvm.umax.i64(i64 %i.dfb, i64 %i.edo), !dbg !14643
  %i.efk = sub i64 %i.efj, %16, !dbg !14643
  %i.efl = call i64 @llvm.umin.i64(i64 %i.eco, i64 %i.efk), !dbg !14643 ; 2 uses
  %min.iters.check4704 = icmp samesign ult i64 %i.efl, 4, !dbg !14643
  br i1 %min.iters.check4704, label %.lr.ph373.i.i506.preheader4968, label %vector.ph4705, !dbg !14643

vector.ph4705:                                    ; preds = %.lr.ph373.i.i506.preheader
  %i.efm = add nuw nsw i64 %i.efl, 1, !dbg !14643 ; 2 uses
  %i.efn = and i64 %i.efm, 3                      ; 2 uses
  %i.efo = icmp eq i64 %i.efn, 0
  %i.efp = select i1 %i.efo, i64 4, i64 %i.efn
  %n.vec4706 = sub nsw i64 %i.efm, %i.efp         ; 3 uses
  %i.efq = shl i64 %n.vec4706, 5
  %i.efr = getelementptr i8, ptr %i.dem, i64 %i.efq
  %broadcast.splatinsert4707 = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i504, i64 0
  %broadcast.splat4708 = shufflevector <4 x float> %broadcast.splatinsert4707, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert4709 = insertelement <4 x float> poison, float %.sroa.029.0.i.i505, i64 0 ; 5 uses
  %broadcast.splat4710 = shufflevector <4 x float> %broadcast.splatinsert4709, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep6100 = getelementptr i8, ptr %i.dfa, i64 %i.edo, !dbg !14643
  %i.efs = shufflevector <4 x float> %broadcast.splatinsert4709, <4 x float> poison, <16 x i32> zeroinitializer
  %i.eft = shufflevector <4 x float> %broadcast.splatinsert4709, <4 x float> poison, <16 x i32> zeroinitializer
  %i.efu = shufflevector <4 x float> %broadcast.splatinsert4709, <4 x float> poison, <16 x i32> zeroinitializer
  %i.efv = shufflevector <4 x float> %broadcast.splatinsert4709, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body4711, !dbg !14643

vector.body4711:                                  ; preds = %vector.body4711, %vector.ph4705
  %index4712 = phi i64 [ 0, %vector.ph4705 ], [ %index.next4719, %vector.body4711 ], !dbg !14644 ; 3 uses
  %i.efw = shl i64 %index4712, 5                  ; 4 uses
  %next.gep4713 = getelementptr i8, ptr %i.dem, i64 %i.efw ; 9 uses
  %i.efx = getelementptr i8, ptr %i.dem, i64 %i.efw ; 8 uses
  %next.gep4714 = getelementptr i8, ptr %i.efx, i64 32
  %i.efy = getelementptr i8, ptr %i.dem, i64 %i.efw ; 8 uses
  %next.gep4715 = getelementptr i8, ptr %i.efy, i64 64
  %i.efz = getelementptr i8, ptr %i.dem, i64 %i.efw ; 8 uses
  %next.gep4716 = getelementptr i8, ptr %i.efz, i64 96
  %i.ega = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 4, !dbg !14645
  %i.egb = getelementptr i8, ptr %i.efx, i64 36, !dbg !14645
  %i.egc = getelementptr i8, ptr %i.efy, i64 68, !dbg !14645
  %i.egd = getelementptr i8, ptr %i.efz, i64 100, !dbg !14645
  %i.ege = load float, ptr %i.ega, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egf = load float, ptr %i.egb, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egg = load float, ptr %i.egc, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egh = load float, ptr %i.egd, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egi = insertelement <4 x float> poison, float %i.ege, i64 0
  %i.egj = insertelement <4 x float> %i.egi, float %i.egf, i64 1
  %i.egk = insertelement <4 x float> %i.egj, float %i.egg, i64 2
  %i.egl = insertelement <4 x float> %i.egk, float %i.egh, i64 3
  %i.egm = fsub <4 x float> %i.egl, %broadcast.splat4708, !dbg !14646 ; 3 uses
  %i.egn = fcmp oge <4 x float> %i.egm, %broadcast.splat4710, !dbg !14647
  %i.ego = select <4 x i1> %i.egn, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer, !dbg !14648
  %i.egp = load float, ptr %next.gep4713, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egq = load float, ptr %next.gep4714, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egr = load float, ptr %next.gep4715, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egs = load float, ptr %next.gep4716, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.egt = insertelement <4 x float> poison, float %i.egp, i64 0
  %i.egu = insertelement <4 x float> %i.egt, float %i.egq, i64 1
  %i.egv = insertelement <4 x float> %i.egu, float %i.egr, i64 2
  %i.egw = insertelement <4 x float> %i.egv, float %i.egs, i64 3
  %i.egx = fsub <4 x float> %i.egw, %broadcast.splat4708, !dbg !14649 ; 3 uses
  %i.egy = fcmp oge <4 x float> %i.egx, %broadcast.splat4710, !dbg !14650
  %i.egz = zext <4 x i1> %i.egy to <4 x i8>, !dbg !14651
  %i.eha = or disjoint <4 x i8> %i.ego, %i.egz, !dbg !14652
  %i.ehb = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 8, !dbg !14645
  %i.ehc = getelementptr i8, ptr %i.efx, i64 40, !dbg !14645
  %i.ehd = getelementptr i8, ptr %i.efy, i64 72, !dbg !14645
  %i.ehe = getelementptr i8, ptr %i.efz, i64 104, !dbg !14645
  %i.ehf = load float, ptr %i.ehb, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehg = load float, ptr %i.ehc, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehh = load float, ptr %i.ehd, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehi = load float, ptr %i.ehe, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehj = insertelement <4 x float> poison, float %i.ehf, i64 0
  %i.ehk = insertelement <4 x float> %i.ehj, float %i.ehg, i64 1
  %i.ehl = insertelement <4 x float> %i.ehk, float %i.ehh, i64 2
  %i.ehm = insertelement <4 x float> %i.ehl, float %i.ehi, i64 3
  %i.ehn = fsub <4 x float> %i.ehm, %broadcast.splat4708, !dbg !14653 ; 3 uses
  %i.eho = fcmp oge <4 x float> %i.ehn, %broadcast.splat4710, !dbg !14654
  %i.ehp = select <4 x i1> %i.eho, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer, !dbg !14655
  %i.ehq = or disjoint <4 x i8> %i.eha, %i.ehp, !dbg !14656
  %i.ehr = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 12, !dbg !14645
  %i.ehs = getelementptr i8, ptr %i.efx, i64 44, !dbg !14645
  %i.eht = getelementptr i8, ptr %i.efy, i64 76, !dbg !14645
  %i.ehu = getelementptr i8, ptr %i.efz, i64 108, !dbg !14645
  %i.ehv = load float, ptr %i.ehr, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehw = load float, ptr %i.ehs, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehx = load float, ptr %i.eht, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehy = load float, ptr %i.ehu, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ehz = insertelement <4 x float> poison, float %i.ehv, i64 0
  %i.eia = insertelement <4 x float> %i.ehz, float %i.ehw, i64 1
  %i.eib = insertelement <4 x float> %i.eia, float %i.ehx, i64 2
  %i.eic = insertelement <4 x float> %i.eib, float %i.ehy, i64 3
  %i.eid = fsub <4 x float> %i.eic, %broadcast.splat4708, !dbg !14657 ; 3 uses
  %i.eie = fcmp oge <4 x float> %i.eid, %broadcast.splat4710, !dbg !14658
  %i.eif = select <4 x i1> %i.eie, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer, !dbg !14659
  %i.eig = or disjoint <4 x i8> %i.ehq, %i.eif, !dbg !14660
  %i.eih = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 16, !dbg !14645
  %i.eii = getelementptr i8, ptr %i.efx, i64 48, !dbg !14645
  %i.eij = getelementptr i8, ptr %i.efy, i64 80, !dbg !14645
  %i.eik = getelementptr i8, ptr %i.efz, i64 112, !dbg !14645
  %i.eil = load float, ptr %i.eih, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eim = load float, ptr %i.eii, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ein = load float, ptr %i.eij, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eio = load float, ptr %i.eik, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eip = insertelement <4 x float> poison, float %i.eil, i64 0
  %i.eiq = insertelement <4 x float> %i.eip, float %i.eim, i64 1
  %i.eir = insertelement <4 x float> %i.eiq, float %i.ein, i64 2
  %i.eis = insertelement <4 x float> %i.eir, float %i.eio, i64 3
  %i.eit = fsub <4 x float> %i.eis, %broadcast.splat4708, !dbg !14661 ; 3 uses
  %i.eiu = fcmp oge <4 x float> %i.eit, %broadcast.splat4710, !dbg !14662
  %i.eiv = select <4 x i1> %i.eiu, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer, !dbg !14663
  %i.eiw = or disjoint <4 x i8> %i.eig, %i.eiv, !dbg !14664
  %i.eix = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 20, !dbg !14645
  %i.eiy = getelementptr i8, ptr %i.efx, i64 52, !dbg !14645
  %i.eiz = getelementptr i8, ptr %i.efy, i64 84, !dbg !14645
  %i.eja = getelementptr i8, ptr %i.efz, i64 116, !dbg !14645
  %i.ejb = load float, ptr %i.eix, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejc = load float, ptr %i.eiy, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejd = load float, ptr %i.eiz, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eje = load float, ptr %i.eja, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejf = insertelement <4 x float> poison, float %i.ejb, i64 0
  %i.ejg = insertelement <4 x float> %i.ejf, float %i.ejc, i64 1
  %i.ejh = insertelement <4 x float> %i.ejg, float %i.ejd, i64 2
  %i.eji = insertelement <4 x float> %i.ejh, float %i.eje, i64 3
  %i.ejj = fsub <4 x float> %i.eji, %broadcast.splat4708, !dbg !14665 ; 3 uses
  %i.ejk = fcmp oge <4 x float> %i.ejj, %broadcast.splat4710, !dbg !14666
  %i.ejl = select <4 x i1> %i.ejk, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer, !dbg !14667
  %i.ejm = or disjoint <4 x i8> %i.eiw, %i.ejl, !dbg !14668
  %i.ejn = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 24, !dbg !14645
  %i.ejo = getelementptr i8, ptr %i.efx, i64 56, !dbg !14645
  %i.ejp = getelementptr i8, ptr %i.efy, i64 88, !dbg !14645
  %i.ejq = getelementptr i8, ptr %i.efz, i64 120, !dbg !14645
  %i.ejr = load float, ptr %i.ejn, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejs = load float, ptr %i.ejo, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejt = load float, ptr %i.ejp, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eju = load float, ptr %i.ejq, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ejv = insertelement <4 x float> poison, float %i.ejr, i64 0
  %i.ejw = insertelement <4 x float> %i.ejv, float %i.ejs, i64 1
  %i.ejx = insertelement <4 x float> %i.ejw, float %i.ejt, i64 2
  %i.ejy = insertelement <4 x float> %i.ejx, float %i.eju, i64 3
  %i.ejz = fsub <4 x float> %i.ejy, %broadcast.splat4708, !dbg !14669 ; 3 uses
  %i.eka = fcmp oge <4 x float> %i.ejz, %broadcast.splat4710, !dbg !14670
  %i.ekb = select <4 x i1> %i.eka, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer, !dbg !14671
  %i.ekc = or disjoint <4 x i8> %i.ejm, %i.ekb, !dbg !14672
  %i.ekd = getelementptr inbounds nuw i8, ptr %next.gep4713, i64 28, !dbg !14645
  %i.eke = getelementptr i8, ptr %i.efx, i64 60, !dbg !14645
  %i.ekf = getelementptr i8, ptr %i.efy, i64 92, !dbg !14645
  %i.ekg = getelementptr i8, ptr %i.efz, i64 124, !dbg !14645
  %i.ekh = load float, ptr %i.ekd, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.eki = load float, ptr %i.eke, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ekj = load float, ptr %i.ekf, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ekk = load float, ptr %i.ekg, align 4, !dbg !14645, !alias.scope !11748, !noalias !11775
  %i.ekl = insertelement <4 x float> poison, float %i.ekh, i64 0
  %i.ekm = insertelement <4 x float> %i.ekl, float %i.eki, i64 1
  %i.ekn = insertelement <4 x float> %i.ekm, float %i.ekj, i64 2
  %i.eko = insertelement <4 x float> %i.ekn, float %i.ekk, i64 3
  %i.ekp = fsub <4 x float> %i.eko, %broadcast.splat4708, !dbg !14673 ; 3 uses
  %i.ekq = fcmp oge <4 x float> %i.ekp, %broadcast.splat4710, !dbg !14674
  %i.ekr = select <4 x i1> %i.ekq, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer, !dbg !14675
  %i.eks = add nuw <4 x i8> %i.ekc, %i.ekr, !dbg !14676
  %gep6101 = getelementptr i8, ptr %invariant.gep6100, i64 %index4712, !dbg !14643 ; 2 uses
  %wide.load4717 = load <4 x i8>, ptr %gep6101, align 1, !dbg !14643, !alias.scope !11776, !noalias !11777
  %i.ekt = or <4 x i8> %i.eks, %wide.load4717, !dbg !14643
  store <4 x i8> %i.ekt, ptr %gep6101, align 1, !dbg !14643, !alias.scope !11776, !noalias !11777
  %i.eku = shufflevector <4 x float> %i.egx, <4 x float> %i.egm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.ekv = shufflevector <4 x float> %i.ehn, <4 x float> %i.eid, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.ekw = shufflevector <8 x float> %i.eku, <8 x float> %i.ekv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14677
  %i.ekx = fcmp olt <16 x float> %i.ekw, %i.efs, !dbg !14677
  %i.eky = shufflevector <4 x float> %i.egx, <4 x float> %i.egm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.ekz = shufflevector <4 x float> %i.ehn, <4 x float> %i.eid, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.ela = shufflevector <8 x float> %i.eky, <8 x float> %i.ekz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14677
  %i.elb = select <16 x i1> %i.ekx, <16 x float> %i.ela, <16 x float> %i.eft, !dbg !14677
  %i.elc = shufflevector <4 x float> %i.eit, <4 x float> %i.ejj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.eld = shufflevector <4 x float> %i.ejz, <4 x float> %i.ekp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.ele = shufflevector <8 x float> %i.elc, <8 x float> %i.eld, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14677
  %i.elf = fcmp olt <16 x float> %i.ele, %i.efu, !dbg !14677
  %i.elg = shufflevector <4 x float> %i.eit, <4 x float> %i.ejj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.elh = shufflevector <4 x float> %i.ejz, <4 x float> %i.ekp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !14677
  %i.eli = shufflevector <8 x float> %i.elg, <8 x float> %i.elh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !14677
  %i.elj = select <16 x i1> %i.elf, <16 x float> %i.eli, <16 x float> %i.efv, !dbg !14677
  %interleaved.vec4718 = shufflevector <16 x float> %i.elb, <16 x float> %i.elj, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>, !dbg !14677
  store <32 x float> %interleaved.vec4718, ptr %next.gep4713, align 4, !dbg !14677, !alias.scope !11748, !noalias !11775
  %index.next4719 = add nuw i64 %index4712, 4, !dbg !14644 ; 2 uses
  %i.elk = icmp eq i64 %index.next4719, %n.vec4706, !dbg !14678
  br i1 %i.elk, label %.lr.ph373.i.i506.preheader4968, label %vector.body4711, !dbg !14678, !llvm.loop !10801

.lr.ph373.i.i506.preheader4968:                   ; preds = %vector.body4711, %.lr.ph373.i.i506.preheader
  %.sroa.0179.0371.i.i507.ph = phi ptr [ %i.dem, %.lr.ph373.i.i506.preheader ], [ %i.efr, %vector.body4711 ]
  %.sroa.7181.0370.i.i508.ph = phi i64 [ 0, %.lr.ph373.i.i506.preheader ], [ %n.vec4706, %vector.body4711 ]
  %i.ell = insertelement <4 x float> poison, float %.sroa.049.1.lcssa.i.i504, i64 0
  %i.elm = shufflevector <4 x float> %i.ell, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eln = insertelement <4 x float> poison, float %.sroa.029.0.i.i505, i64 0
  %i.elo = shufflevector <4 x float> %i.eln, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph373.i.i506, !dbg !14643

.lr.ph373.i.i506:                                 ; preds = %.lr.ph373.i.i506.preheader4968, %bb.abt
  %.sroa.0179.0371.i.i507 = phi ptr [ %i.els, %bb.abt ], [ %.sroa.0179.0371.i.i507.ph, %.lr.ph373.i.i506.preheader4968 ] ; 4 uses
  %.sroa.7181.0370.i.i508 = phi i64 [ %i.elr, %bb.abt ], [ %.sroa.7181.0370.i.i508.ph, %.lr.ph373.i.i506.preheader4968 ] ; 2 uses
  %i.elp = add nuw nsw i64 %.sroa.7181.0370.i.i508, %i.edo, !dbg !14679 ; 3 uses
  %i.elq = icmp ult i64 %i.elp, %i.dfb, !dbg !14643
  br i1 %i.elq, label %bb.abt, label %.invoke1413.i443, !dbg !14643

bb.abt:                                           ; preds = %.lr.ph373.i.i506
end_hunk_2
begin_hunk_3_@_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc6encode28BrotliEncoderDestroyInstanceNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocECsfISxE4fmY1Y_14polars_parquet:bb.a
  store ptr %i.gg, ptr %i.gi, align 8, !dbg !27761, !alias.scope !27583, !noalias !27584
  store i64 %i.gh, ptr %i.gk, align 8, !dbg !27761, !alias.scope !27583, !noalias !27584
  %i.gm = icmp eq i64 %i.gl, 0, !dbg !27762
  br i1 %i.gm, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit14.i.i, label %bb.z, !dbg !27762

bb.z:                                             ; preds = %bb.y
  %i.gn = shl nuw nsw i64 %i.gl, 1, !dbg !27763
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.gj, i64 noundef range(i64 1, 0) %i.gn, i64 noundef 2) #19, !dbg !27764, !noalias !27586
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit14.i.i, !dbg !27765

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit14.i.i: ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27766, !noalias !27586
  store i64 0, ptr %i.d, align 8, !dbg !27766, !noalias !27586
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !27766
  store ptr inttoptr (i64 4 to ptr), ptr %i.go, align 8, !dbg !27766, !noalias !27586
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !27766
  store i64 0, ptr %i.gp, align 8, !dbg !27766, !noalias !27586
  %i.gq = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !27767, !noalias !27586 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27768, !noalias !27586
  %i.gr = extractvalue { ptr, i64 } %i.gq, 0, !dbg !27769
  %i.gs = extractvalue { ptr, i64 } %i.gq, 1, !dbg !27769
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !27770 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !dbg !27770, !alias.scope !27583, !noalias !27584, !nonnull !664, !align !741, !noundef !664
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27770 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !dbg !27770, !alias.scope !27583, !noalias !27584, !noundef !664 ; 2 uses
  store ptr %i.gr, ptr %i.gt, align 8, !dbg !27771, !alias.scope !27583, !noalias !27584
  store i64 %i.gs, ptr %i.gv, align 8, !dbg !27771, !alias.scope !27583, !noalias !27584
  %i.gx = icmp eq i64 %i.gw, 0, !dbg !27772
  br i1 %i.gx, label %_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.aa, !dbg !27772

bb.aa:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit14.i.i
  %i.gy = shl nuw nsw i64 %i.gw, 2, !dbg !27773
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.gu, i64 noundef range(i64 1, 0) %i.gy, i64 noundef 4) #19, !dbg !27774, !noalias !27586
  br label %_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !27775

bb.ab:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit1.i
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27776
  call void @_RNvMs5_NtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references19hash_to_binary_treeINtB5_3H10NtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocINtB5_10H10BucketsB1q_ENtB5_16H10DefaultParamsE4freeCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.gz, ptr noalias noundef nonnull %i.u), !dbg !27777
  br label %_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !27777

_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ab, %bb.aa, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit14.i.i, %bb.x, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit12.i.i, %bb.u, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit10.i.i, %bb.r, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit8.i.i, %bb.o, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatortE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit1.i
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsk4ZPsEfLtLH_6brotli3enc19backward_references11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(5584) %0), !dbg !27778
  store i64 0, ptr %0, align 8, !dbg !27778, !alias.scope !27583, !noalias !27584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27779, !noalias !27579
  store i64 0, ptr %i.c, align 8, !dbg !27779, !noalias !27579
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !27779
  store ptr inttoptr (i64 4 to ptr), ptr %i.ha, align 8, !dbg !27779, !noalias !27579
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !27779
  store i64 0, ptr %i.hb, align 8, !dbg !27779, !noalias !27579
  %i.hc = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VeclE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !27780 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !27781, !noalias !27579
  %i.hd = extractvalue { ptr, i64 } %i.hc, 0, !dbg !27782
  %i.he = extractvalue { ptr, i64 } %i.hc, 1, !dbg !27782
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 320, !dbg !27783 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !dbg !27783, !alias.scope !27579, !nonnull !664, !align !741, !noundef !664
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 328, !dbg !27783 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !27783, !alias.scope !27579, !noundef !664 ; 2 uses
  store ptr %i.hd, ptr %i.hf, align 8, !dbg !27784, !alias.scope !27579
  store i64 %i.he, ptr %i.hh, align 8, !dbg !27784, !alias.scope !27579
  %i.hj = icmp eq i64 %i.hi, 0, !dbg !27785
  br i1 %i.hj, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorlE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ac, !dbg !27785

bb.ac:                                            ; preds = %_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.hk = shl nuw nsw i64 %i.hi, 2, !dbg !27786
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.hg, i64 noundef range(i64 1, 0) %i.hk, i64 noundef 4) #19, !dbg !27787
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorlE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !27788

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorlE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ac, %_RNvMsx_NtNtCsk4ZPsEfLtLH_6brotli3enc19backward_referencesINtB5_11UnionHasherNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE4freeCsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27789, !noalias !27579
  store i64 0, ptr %i.b, align 8, !dbg !27789, !noalias !27579
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !27789
  store ptr inttoptr (i64 4 to ptr), ptr %i.hl, align 8, !dbg !27789, !noalias !27579
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !27789
  store i64 0, ptr %i.hm, align 8, !dbg !27789, !noalias !27579
  %i.hn = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecmE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !27790 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27791, !noalias !27579
  %i.ho = extractvalue { ptr, i64 } %i.hn, 0, !dbg !27792
  %i.hp = extractvalue { ptr, i64 } %i.hn, 1, !dbg !27792
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 336, !dbg !27793 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !dbg !27793, !alias.scope !27579, !nonnull !664, !align !741, !noundef !664
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 344, !dbg !27793 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !dbg !27793, !alias.scope !27579, !noundef !664 ; 2 uses
  store ptr %i.ho, ptr %i.hq, align 8, !dbg !27794, !alias.scope !27579
  store i64 %i.hp, ptr %i.hs, align 8, !dbg !27794, !alias.scope !27579
  %i.hu = icmp eq i64 %i.ht, 0, !dbg !27795
  br i1 %i.hu, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, label %bb.ad, !dbg !27795

bb.ad:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorlE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  %i.hv = shl nuw nsw i64 %i.ht, 2, !dbg !27796
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.hr, i64 noundef range(i64 1, 0) %i.hv, i64 noundef 4) #19, !dbg !27797
  br label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !27798

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %bb.ad, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorlE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27799, !noalias !27579
  store i64 0, ptr %i.a, align 8, !dbg !27799, !noalias !27579
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !27799
  store ptr inttoptr (i64 1 to ptr), ptr %i.hw, align 8, !dbg !27799, !noalias !27579
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !27799
  store i64 0, ptr %i.hx, align 8, !dbg !27799, !noalias !27579
  %i.hy = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !27800 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27801, !noalias !27579
  %i.hz = extractvalue { ptr, i64 } %i.hy, 0, !dbg !27802
  %i.ia = extractvalue { ptr, i64 } %i.hy, 1, !dbg !27802
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 352, !dbg !27803 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !dbg !27803, !alias.scope !27579, !nonnull !664, !noundef !664
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 360, !dbg !27803 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !dbg !27803, !alias.scope !27579, !noundef !664 ; 2 uses
  store ptr %i.hz, ptr %i.ib, align 8, !dbg !27804, !alias.scope !27579
  store i64 %i.ia, ptr %i.id, align 8, !dbg !27804, !alias.scope !27579
  %i.if = icmp eq i64 %i.ie, 0, !dbg !27805
  br i1 %i.if, label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc6encodeINtB5_24BrotliEncoderStateStructNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE7cleanupCsfISxE4fmY1Y_14polars_parquet.exit, label %bb.ae, !dbg !27805

bb.ae:                                            ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef range(i64 1, 0) %i.ie, i64 noundef 1) #19, !dbg !27806
  br label %_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc6encodeINtB5_24BrotliEncoderStateStructNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE7cleanupCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !27807

_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc6encodeINtB5_24BrotliEncoderStateStructNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE7cleanupCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatormE9free_cellCsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.ae
  ret void, !dbg !27808
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 3256840408493919) %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef range(i64 0, 576460752303423488) %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13, ptr noalias noundef nonnull %14) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27809 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27957
  store i64 0, ptr %i.b, align 8, !dbg !27958
  %.not160 = icmp eq i64 %10, 0, !dbg !27959
  br i1 %.not160, label %.outer._crit_edge, label %.lr.ph139, !dbg !27898

.loopexit82:                                      ; preds = %bb.al, %.lr.ph139
  %exitcond229.not = icmp eq i64 %i.l, %10, !dbg !27959
  br i1 %exitcond229.not, label %.preheader81, label %.lr.ph139, !dbg !27898

.preheader81:                                     ; preds = %.loopexit82
  %.not333 = icmp eq i64 %10, 1, !dbg !27960
  br i1 %.not333, label %.outer._crit_edge, label %.lr.ph152.lr.ph, !dbg !27960

.lr.ph152.lr.ph:                                  ; preds = %.preheader81
  %.not = icmp eq i64 %9, 0
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not161 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph152.preheader, !dbg !27961

.lr.ph152.preheader:                              ; preds = %.lr.ph152.lr.ph
  %i.f = add i64 %11, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.f) ; 2 uses
  %min.iters.check411 = icmp samesign ult i64 %i.g, 8
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = and i64 %i.h, 7                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 8, i64 %i.i
  %n.vec413 = sub nsw i64 %i.h, %i.k              ; 2 uses
  br label %.lr.ph152, !dbg !27960

.lr.ph139:                                        ; preds = %bb.a, %.loopexit82
  %.sroa.051.0138 = phi i64 [ %i.l, %.loopexit82 ], [ 0, %bb.a ] ; 4 uses
  %i.l = add nuw i64 %.sroa.051.0138, 1, !dbg !27962 ; 4 uses
  %i.m = icmp ult i64 %i.l, %10, !dbg !27963
  br i1 %i.m, label %.lr.ph, label %.loopexit82, !dbg !27964

.lr.ph:                                           ; preds = %.lr.ph139
  %i.n = icmp ult i64 %.sroa.051.0138, %7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.051.0138
  br i1 %i.n, label %.lr.ph.split, label %bb.ak, !dbg !27965

.loopexit:                                        ; preds = %bb.p
  %i.p = icmp ugt i64 %i.de, %.sroa.010.0.ph156, !dbg !27960
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !27960
  %indvar.next = add i64 %indvar, 1, !dbg !27960
  br i1 %i.p, label %bb.b, label %.outer._crit_edge.loopexit, !dbg !27960

.outer._crit_edge.loopexit:                       ; preds = %.loopexit
  %umin.le = tail call i64 @llvm.umin.i64(i64 %.sroa.010.0.ph156, i64 %i.t)
  br label %.outer._crit_edge, !dbg !27966

.outer._crit_edge:                                ; preds = %.outer.loopexit, %.outer._crit_edge.loopexit, %bb.a, %.preheader81
  %.sroa.0.0.lcssa = phi i64 [ %umin.le, %.outer._crit_edge.loopexit ], [ %10, %.preheader81 ], [ 0, %bb.a ], [ %.sroa.0.0151, %.outer.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27966
  ret i64 %.sroa.0.0.lcssa, !dbg !27967

bb.b:                                             ; preds = %.lr.ph152, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph152 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph152 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.sroa.0.0151 = phi i64 [ %.sroa.0.0.ph158, %.lr.ph152 ], [ %i.de, %.loopexit ] ; 5 uses
  %i.q = load float, ptr %i.c, align 4, !dbg !27961, !noundef !664
  %i.r = fcmp ult float %i.q, %.sroa.09.0.ph157, !dbg !27961
  br i1 %i.r, label %bb.d, label %.outer.loopexit, !dbg !27961

.outer.loopexit:                                  ; preds = %bb.b
  %i.s = icmp ugt i64 %.sroa.0.0151, %12, !dbg !27960
  br i1 %i.s, label %.lr.ph152, label %.outer._crit_edge, !dbg !27960

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.outer.loopexit
  %.sroa.0.0.ph158 = phi i64 [ %.sroa.0.0151, %.outer.loopexit ], [ %10, %.lr.ph152.preheader ] ; 3 uses
  %.sroa.09.0.ph157 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph152.preheader ]
  %.sroa.010.0.ph156 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph152.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph158, -1, !dbg !27960 ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph158, -2, !dbg !27960
  br label %bb.b, !dbg !27960

bb.c:                                             ; preds = %.lr.ph152.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #18, !dbg !27961
  unreachable, !dbg !27961

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !dbg !27968, !noundef !664 ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !dbg !27969, !noundef !664 ; 6 uses
  %i.x = zext i32 %i.v to i64, !dbg !27970        ; 6 uses
  %i.y = zext i32 %i.w to i64, !dbg !27971        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27907), !dbg !27972
  %i.z = icmp samesign ugt i64 %1, %i.y, !dbg !27973
  br i1 %i.z, label %bb.e, label %bb.f, !dbg !27973

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr [2832 x i8], ptr %0, i64 %i.y, !dbg !27973 ; 8 uses
  %i.ab = icmp samesign ugt i64 %1, %i.x, !dbg !27974
  br i1 %i.ab, label %vector.memcheck, label %bb.g, !dbg !27974

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.y, i64 noundef range(i64 0, 3256840408493919) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #18, !dbg !27973, !noalias !27907
  unreachable, !dbg !27973

vector.memcheck:                                  ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2816, !dbg !27975 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !27975, !alias.scope !27908, !noundef !664
  %i.ae = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.x, !dbg !27974 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2816, !dbg !27976 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !27976, !alias.scope !27909, !noundef !664
  %i.ah = add i64 %i.ag, %i.ad, !dbg !27977
  store i64 %i.ah, ptr %i.af, align 8, !dbg !27978, !alias.scope !27910
  %bound0 = icmp ult ptr %i.ae, %i.ac, !dbg !27979
  %bound1 = icmp ult ptr %i.aa, %i.af, !dbg !27979
  %found.conflict = and i1 %bound0, %bound1, !dbg !27979
  br i1 %found.conflict, label %scalar.ph435, label %vector.body437, !dbg !27980

vector.body437:                                   ; preds = %vector.memcheck, %vector.body437
  %index438 = phi i64 [ %index.next443.1, %vector.body437 ], [ 0, %vector.memcheck ], !dbg !27980 ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index438, !dbg !27981 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !27981 ; 2 uses
  %wide.load439.a = load <4 x i32>, ptr %i.ai, align 8, !dbg !27981, !alias.scope !27912, !noalias !27913
  %wide.load440.a = load <4 x i32>, ptr %i.aj, align 8, !dbg !27981, !alias.scope !27912, !noalias !27913
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index438, !dbg !27982 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !27982
  %wide.load441 = load <4 x i32>, ptr %i.ak, align 8, !dbg !27982, !alias.scope !27914
  %wide.load442 = load <4 x i32>, ptr %i.al, align 8, !dbg !27982, !alias.scope !27914
  %i.am = add <4 x i32> %wide.load441, %wide.load439.a, !dbg !27983
  %i.an = add <4 x i32> %wide.load442, %wide.load440.a, !dbg !27983
  store <4 x i32> %i.am, ptr %i.ai, align 8, !dbg !27984, !alias.scope !27912, !noalias !27913
  store <4 x i32> %i.an, ptr %i.aj, align 8, !dbg !27984, !alias.scope !27912, !noalias !27913
  %index.next443 = or disjoint i64 %index438, 8, !dbg !27980 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index.next443, !dbg !27981 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !27981 ; 2 uses
  %wide.load439.1.a = load <4 x i32>, ptr %i.ao, align 8, !dbg !27981, !alias.scope !27912, !noalias !27913
  %wide.load440.1.a = load <4 x i32>, ptr %i.ap, align 8, !dbg !27981, !alias.scope !27912, !noalias !27913
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index.next443, !dbg !27982 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !27982
  %wide.load441.1 = load <4 x i32>, ptr %i.aq, align 8, !dbg !27982, !alias.scope !27914
  %wide.load442.1 = load <4 x i32>, ptr %i.ar, align 8, !dbg !27982, !alias.scope !27914
  %i.as = add <4 x i32> %wide.load441.1, %wide.load439.1.a, !dbg !27983
  %i.at = add <4 x i32> %wide.load442.1, %wide.load440.1.a, !dbg !27983
  store <4 x i32> %i.as, ptr %i.ao, align 8, !dbg !27984, !alias.scope !27912, !noalias !27913
  store <4 x i32> %i.at, ptr %i.ap, align 8, !dbg !27984, !alias.scope !27912, !noalias !27913
  %index.next443.1 = add nuw nsw i64 %index438, 16, !dbg !27980 ; 2 uses
  %i.au = icmp eq i64 %index.next443.1, 704, !dbg !27979
  br i1 %i.au, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit, label %vector.body437, !dbg !27979, !llvm.loop !27864

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.x, i64 noundef range(i64 0, 3256840408493919) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #18, !dbg !27974, !noalias !27907
  unreachable, !dbg !27974

scalar.ph435:                                     ; preds = %vector.memcheck, %scalar.ph435
  %.sroa.01.09.i = phi i64 [ %i.bn, %scalar.ph435 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.av = or disjoint i64 %.sroa.01.09.i, 1, !dbg !27980 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.01.09.i, !dbg !27981 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !27981, !alias.scope !27907, !noundef !664
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.01.09.i, !dbg !27982
  %i.az = load i32, ptr %i.ay, align 8, !dbg !27982, !alias.scope !27907, !noundef !664
  %i.ba = add i32 %i.az, %i.ax, !dbg !27983
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !27984, !alias.scope !27907
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !27980 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !27981 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !27981, !alias.scope !27907, !noundef !664
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !27982
  %i.bf = load i32, ptr %i.be, align 4, !dbg !27982, !alias.scope !27907, !noundef !664
  %i.bg = add i32 %i.bf, %i.bd, !dbg !27983
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !27984, !alias.scope !27907
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !27980 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !27981 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !27981, !alias.scope !27907, !noundef !664
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !27982
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !27982, !alias.scope !27907, !noundef !664
  %i.bm = add i32 %i.bl, %i.bj, !dbg !27983
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !27984, !alias.scope !27907
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !27980 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !27981 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !27981, !alias.scope !27907, !noundef !664
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !27982
  %i.br = load i32, ptr %i.bq, align 4, !dbg !27982, !alias.scope !27907, !noundef !664
  %i.bs = add i32 %i.br, %i.bp, !dbg !27983
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !27984, !alias.scope !27907
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 704, !dbg !27985
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !27979, !llvm.loop !27867

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !27986, !noundef !664
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 2824, !dbg !27987
  store float %i.bt, ptr %i.bu, align 8, !dbg !27987, !alias.scope !27915
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !27988
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !27988

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !27989
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !27989

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !27988
  unreachable, !dbg !27988

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !27988
  %i.by = load i32, ptr %i.bx, align 4, !dbg !27988, !noundef !664
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !27990 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !27991, !noundef !664
  %i.cb = add i32 %i.ca, %i.by, !dbg !27992
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !27993
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !27994

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !27995

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !27996

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !27996

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !27996

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !27997 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !27996
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !27996
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !27996
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !27996 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !27996 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !27996
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !27996

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !27998
  br label %pred.store.continue, !dbg !27996

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !27996
  br i1 %i.ch, label %pred.store.if418.a, label %pred.store.continue419.a, !dbg !27996

pred.store.if418.a:                               ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !27996
  store i32 %i.v, ptr %i.cj, align 4, !dbg !27998
  br label %pred.store.continue419.a, !dbg !27996

pred.store.continue419.a:                         ; preds = %pred.store.if418.a, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !27996
  br i1 %i.ck, label %pred.store.if420.a, label %pred.store.continue421.a, !dbg !27996

pred.store.if420.a:                               ; preds = %pred.store.continue419.a
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !27996
  store i32 %i.v, ptr %i.cm, align 4, !dbg !27998
  br label %pred.store.continue421.a, !dbg !27996

pred.store.continue421.a:                         ; preds = %pred.store.if420.a, %pred.store.continue419.a
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !27996
  br i1 %i.cn, label %pred.store.if422.a, label %pred.store.continue423.a, !dbg !27996

pred.store.if422.a:                               ; preds = %pred.store.continue421.a
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !27996
  store i32 %i.v, ptr %i.cp, align 4, !dbg !27998
  br label %pred.store.continue423.a, !dbg !27996

pred.store.continue423.a:                         ; preds = %pred.store.if422.a, %pred.store.continue421.a
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !27996
  br i1 %i.cq, label %pred.store.if424.a, label %pred.store.continue425.a, !dbg !27996

pred.store.if424.a:                               ; preds = %pred.store.continue423.a
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !27996
  store i32 %i.v, ptr %i.cs, align 4, !dbg !27998
  br label %pred.store.continue425.a, !dbg !27996

pred.store.continue425.a:                         ; preds = %pred.store.if424.a, %pred.store.continue423.a
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !27996
  br i1 %i.ct, label %pred.store.if426.a, label %pred.store.continue427.a, !dbg !27996

pred.store.if426.a:                               ; preds = %pred.store.continue425.a
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !27996
  store i32 %i.v, ptr %i.cv, align 4, !dbg !27998
  br label %pred.store.continue427.a, !dbg !27996

pred.store.continue427.a:                         ; preds = %pred.store.if426.a, %pred.store.continue425.a
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !27996
  br i1 %i.cw, label %pred.store.if428.a, label %pred.store.continue429.a, !dbg !27996

pred.store.if428.a:                               ; preds = %pred.store.continue427.a
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !27996
  store i32 %i.v, ptr %i.cy, align 4, !dbg !27998
  br label %pred.store.continue429.a, !dbg !27996

pred.store.continue429.a:                         ; preds = %pred.store.if428.a, %pred.store.continue427.a
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !27996
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !27996

pred.store.if430:                                 ; preds = %pred.store.continue429.a
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !27996
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !27996
  store i32 %i.v, ptr %i.db, align 4, !dbg !27998
  br label %pred.store.continue431, !dbg !27996

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429.a
  %index.next432 = add nuw i64 %index415, 8, !dbg !27997 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !27994
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !27994, !llvm.loop !27877

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !27989
  unreachable, !dbg !27989

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !27997 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !27996
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !27996

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !27995
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !27995

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !27999  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !664 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !28000
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28000

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !27995
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !27995, !noundef !664
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !27995
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !28001 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !28001 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !27995

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !27995
  unreachable, !dbg !27995

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !28002
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !28002

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !28003

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28003 ; 2 uses
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !28003
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !28003
  %i.dl = sub i64 %i.u, %i.dk, !dbg !28003
  %i.dm = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !28003
  %i.dn = add nsw i64 %i.dm, %15, !dbg !28003
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dn), !dbg !28003
  %i.dp = add i64 %i.do, 1, !dbg !28003           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 9, !dbg !28003
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !28003

vector.ph:                                        ; preds = %.lr.ph144
  %i.dq = and i64 %i.dp, 7                        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = select i1 %i.dr, i64 8, i64 %i.dq
  %n.vec = sub i64 %i.dp, %i.ds                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !28003

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28004 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index, !dbg !28005 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !28005
  %wide.load = load <4 x i32>, ptr %i.du, align 4, !dbg !28005
  %wide.load407 = load <4 x i32>, ptr %i.dv, align 4, !dbg !28005
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !28006 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !28006
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !dbg !28006
  store <4 x i32> %wide.load407, ptr %i.dx, align 4, !dbg !28006
  %index.next = add nuw i64 %index, 8, !dbg !28004 ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec, !dbg !28003
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !dbg !28003, !llvm.loop !27883

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !28005

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ex, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dz = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !28007 ; 3 uses
  %i.ea = icmp samesign ult i64 %i.dz, %7, !dbg !28005
  br i1 %i.ea, label %bb.af, label %bb.ae, !dbg !28005

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !28008
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !28009
  br label %.lr.ph150, !dbg !28010

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.ew, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !28011
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !28011

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.eb, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !28010
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !28010

bb.p:                                             ; preds = %.lr.ph150
  %i.eb = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !28012 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !28010
  %i.ed = load i32, ptr %i.ec, align 4, !dbg !28010, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.ed, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28013
  %exitcond242.not = icmp eq i64 %i.eb, %indvars.iv, !dbg !28014
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !28015

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !28010
  unreachable, !dbg !28010

bb.r:                                             ; preds = %.lr.ph147
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !28011 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ee, align 4, !dbg !28011 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4, !dbg !28011
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !28011 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !28011
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28011 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 12, !dbg !28011
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !28011 ; 4 uses
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !28016
  br i1 %i.ef, label %bb.ad, label %bb.t, !dbg !28016

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !28011
  unreachable, !dbg !28011

bb.t:                                             ; preds = %bb.r
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !28017
  %i.eh = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.eh, %i.eg, !dbg !28017
  %i.ei = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.ei, %or.cond, !dbg !28017
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !28017

bb.u:                                             ; preds = %bb.t
  %i.ej = load float, ptr %i.c, align 4, !dbg !28018, !noundef !664 ; 2 uses
  %i.ek = fcmp une float %i.ej, %.sroa.543.0.copyload, !dbg !28018
  br i1 %i.ek, label %.split, label %bb.v, !dbg !28018

.split:                                           ; preds = %bb.u
  %i.el = fcmp ogt float %i.ej, %.sroa.543.0.copyload, !dbg !28019
  br i1 %i.el, label %bb.x, label %bb.w, !dbg !27944

bb.v:                                             ; preds = %bb.u
  %i.em = load i32, ptr %i.d, align 4, !dbg !28020, !noundef !664
  %i.en = load i32, ptr %8, align 4, !dbg !28021, !noundef !664
  %i.eo = sub i32 %i.em, %i.en, !dbg !28022
  %i.ep = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !28023
  %i.eq = icmp ugt i32 %i.eo, %i.ep, !dbg !28020
  br i1 %i.eq, label %bb.x, label %bb.w, !dbg !27944

bb.w:                                             ; preds = %.split, %bb.v
  %i.er = icmp ult i64 %.sroa.027.0145, %9, !dbg !28024
  br i1 %i.er, label %bb.y, label %bb.z, !dbg !28024

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28025
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !28026
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !28026
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !28026
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !28026
  %i.es = icmp ult i64 %.sroa.027.0145, %9, !dbg !28027
  br i1 %i.es, label %bb.ab, label %bb.ac, !dbg !28027

bb.y:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28024 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.et, align 4, !dbg !28024
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.et, i64 4, !dbg !28024
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !28024
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !28024
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !28024
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.et, i64 12, !dbg !28024
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !28024
  br label %bb.aa, !dbg !28028

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !28024
  unreachable, !dbg !28024

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.eu = add nuw i64 %.sroa.027.0145, 1, !dbg !28029
  br label %bb.ad, !dbg !28030

bb.ab:                                            ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !28027
  br label %bb.aa, !dbg !28028

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !28027
  unreachable, !dbg !28027

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.eu, %bb.aa ], !dbg !28001 ; 2 uses
  %i.ew = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !28031 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.ew, %i.df, !dbg !28000
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28000

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !28005
  unreachable, !dbg !28005

bb.af:                                            ; preds = %scalar.ph
  %i.ex = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !28004 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dz, !dbg !28005
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !28005, !noundef !664
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !28006
  store i32 %i.ez, ptr %gep, align 4, !dbg !28006
  %exitcond238.not = icmp eq i64 %i.ex, %indvars.iv234, !dbg !28032
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !28003, !llvm.loop !27892

bb.ag:                                            ; preds = %.lr.ph141
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !27996 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !27996, !noundef !664
  %i.fc = icmp eq i32 %i.fb, %i.w, !dbg !27996
  br i1 %i.fc, label %bb.ai, label %bb.aj, !dbg !27996

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !27996
  unreachable, !dbg !27996

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.fa, align 4, !dbg !27998
  br label %bb.aj, !dbg !28033

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !28034
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !27994, !llvm.loop !27893

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fd, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !28035
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !28035

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !27965
  unreachable, !dbg !27965

bb.al:                                            ; preds = %.lr.ph.split
  %i.fd = add i64 %.sroa.053.0137, 1, !dbg !28036 ; 2 uses
  %i.fe = load i32, ptr %i.o, align 4, !dbg !27965, !noundef !664
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !28035
  %i.fg = load i32, ptr %i.ff, align 4, !dbg !28035, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramCommandECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fe, i32 noundef %i.fg, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28037
  %exitcond228.not = icmp eq i64 %i.fd, %10, !dbg !27963
  br i1 %exitcond228.not, label %.loopexit82, label %.lr.ph.split, !dbg !27964

bb.am:                                            ; preds = %.lr.ph.split
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #18, !dbg !28035
  unreachable, !dbg !28035
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 8868626958514208) %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef range(i64 0, 576460752303423488) %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13, ptr noalias noundef nonnull %14) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28038 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28186
  store i64 0, ptr %i.b, align 8, !dbg !28187
  %.not160 = icmp eq i64 %10, 0, !dbg !28188
  br i1 %.not160, label %.outer._crit_edge, label %.lr.ph139, !dbg !28127

.loopexit82:                                      ; preds = %bb.al, %.lr.ph139
  %exitcond229.not = icmp eq i64 %i.l, %10, !dbg !28188
  br i1 %exitcond229.not, label %.preheader81, label %.lr.ph139, !dbg !28127

.preheader81:                                     ; preds = %.loopexit82
  %.not333 = icmp eq i64 %10, 1, !dbg !28189
  br i1 %.not333, label %.outer._crit_edge, label %.lr.ph152.lr.ph, !dbg !28189

.lr.ph152.lr.ph:                                  ; preds = %.preheader81
  %.not = icmp eq i64 %9, 0
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not161 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph152.preheader, !dbg !28190

.lr.ph152.preheader:                              ; preds = %.lr.ph152.lr.ph
  %i.f = add i64 %11, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.f) ; 2 uses
  %min.iters.check411 = icmp samesign ult i64 %i.g, 8
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = and i64 %i.h, 7                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 8, i64 %i.i
  %n.vec413 = sub nsw i64 %i.h, %i.k              ; 2 uses
  br label %.lr.ph152, !dbg !28189

.lr.ph139:                                        ; preds = %bb.a, %.loopexit82
  %.sroa.051.0138 = phi i64 [ %i.l, %.loopexit82 ], [ 0, %bb.a ] ; 4 uses
  %i.l = add nuw i64 %.sroa.051.0138, 1, !dbg !28191 ; 4 uses
  %i.m = icmp ult i64 %i.l, %10, !dbg !28192
  br i1 %i.m, label %.lr.ph, label %.loopexit82, !dbg !28193

.lr.ph:                                           ; preds = %.lr.ph139
  %i.n = icmp ult i64 %.sroa.051.0138, %7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.051.0138
  br i1 %i.n, label %.lr.ph.split, label %bb.ak, !dbg !28194

.loopexit:                                        ; preds = %bb.p
  %i.p = icmp ugt i64 %i.de, %.sroa.010.0.ph156, !dbg !28189
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !28189
  %indvar.next = add i64 %indvar, 1, !dbg !28189
  br i1 %i.p, label %bb.b, label %.outer._crit_edge.loopexit, !dbg !28189

.outer._crit_edge.loopexit:                       ; preds = %.loopexit
  %umin.le = tail call i64 @llvm.umin.i64(i64 %.sroa.010.0.ph156, i64 %i.t)
  br label %.outer._crit_edge, !dbg !28195

.outer._crit_edge:                                ; preds = %.outer.loopexit, %.outer._crit_edge.loopexit, %bb.a, %.preheader81
  %.sroa.0.0.lcssa = phi i64 [ %umin.le, %.outer._crit_edge.loopexit ], [ %10, %.preheader81 ], [ 0, %bb.a ], [ %.sroa.0.0151, %.outer.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28195
  ret i64 %.sroa.0.0.lcssa, !dbg !28196

bb.b:                                             ; preds = %.lr.ph152, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph152 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph152 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.sroa.0.0151 = phi i64 [ %.sroa.0.0.ph158, %.lr.ph152 ], [ %i.de, %.loopexit ] ; 5 uses
  %i.q = load float, ptr %i.c, align 4, !dbg !28190, !noundef !664
  %i.r = fcmp ult float %i.q, %.sroa.09.0.ph157, !dbg !28190
  br i1 %i.r, label %bb.d, label %.outer.loopexit, !dbg !28190

.outer.loopexit:                                  ; preds = %bb.b
  %i.s = icmp ugt i64 %.sroa.0.0151, %12, !dbg !28189
  br i1 %i.s, label %.lr.ph152, label %.outer._crit_edge, !dbg !28189

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.outer.loopexit
  %.sroa.0.0.ph158 = phi i64 [ %.sroa.0.0151, %.outer.loopexit ], [ %10, %.lr.ph152.preheader ] ; 3 uses
  %.sroa.09.0.ph157 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph152.preheader ]
  %.sroa.010.0.ph156 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph152.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph158, -1, !dbg !28189 ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph158, -2, !dbg !28189
  br label %bb.b, !dbg !28189

bb.c:                                             ; preds = %.lr.ph152.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #18, !dbg !28190
  unreachable, !dbg !28190

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !dbg !28197, !noundef !664 ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !dbg !28198, !noundef !664 ; 6 uses
  %i.x = zext i32 %i.v to i64, !dbg !28199        ; 6 uses
  %i.y = zext i32 %i.w to i64, !dbg !28200        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28136), !dbg !28201
  %i.z = icmp samesign ugt i64 %1, %i.y, !dbg !28202
  br i1 %i.z, label %bb.e, label %bb.f, !dbg !28202

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr [1040 x i8], ptr %0, i64 %i.y, !dbg !28202 ; 8 uses
  %i.ab = icmp samesign ugt i64 %1, %i.x, !dbg !28203
  br i1 %i.ab, label %vector.memcheck, label %bb.g, !dbg !28203

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.y, i64 noundef range(i64 0, 8868626958514208) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #18, !dbg !28202, !noalias !28136
  unreachable, !dbg !28202

vector.memcheck:                                  ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1024, !dbg !28204 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !28204, !alias.scope !28137, !noundef !664
  %i.ae = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.x, !dbg !28203 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1024, !dbg !28205 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !28205, !alias.scope !28138, !noundef !664
  %i.ah = add i64 %i.ag, %i.ad, !dbg !28206
  store i64 %i.ah, ptr %i.af, align 8, !dbg !28207, !alias.scope !28139
  %bound0 = icmp ult ptr %i.ae, %i.ac, !dbg !28208
  %bound1 = icmp ult ptr %i.aa, %i.af, !dbg !28208
  %found.conflict = and i1 %bound0, %bound1, !dbg !28208
  br i1 %found.conflict, label %scalar.ph435, label %vector.body437, !dbg !28209

vector.body437:                                   ; preds = %vector.memcheck, %vector.body437
  %index438 = phi i64 [ %index.next443.1, %vector.body437 ], [ 0, %vector.memcheck ], !dbg !28209 ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index438, !dbg !28210 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !28210 ; 2 uses
  %wide.load439.a = load <4 x i32>, ptr %i.ai, align 8, !dbg !28210, !alias.scope !28141, !noalias !28142
  %wide.load440.a = load <4 x i32>, ptr %i.aj, align 8, !dbg !28210, !alias.scope !28141, !noalias !28142
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index438, !dbg !28211 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !28211
  %wide.load441 = load <4 x i32>, ptr %i.ak, align 8, !dbg !28211, !alias.scope !28143
  %wide.load442 = load <4 x i32>, ptr %i.al, align 8, !dbg !28211, !alias.scope !28143
  %i.am = add <4 x i32> %wide.load441, %wide.load439.a, !dbg !28212
  %i.an = add <4 x i32> %wide.load442, %wide.load440.a, !dbg !28212
  store <4 x i32> %i.am, ptr %i.ai, align 8, !dbg !28213, !alias.scope !28141, !noalias !28142
  store <4 x i32> %i.an, ptr %i.aj, align 8, !dbg !28213, !alias.scope !28141, !noalias !28142
  %index.next443 = or disjoint i64 %index438, 8, !dbg !28209 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index.next443, !dbg !28210 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !28210 ; 2 uses
  %wide.load439.1.a = load <4 x i32>, ptr %i.ao, align 8, !dbg !28210, !alias.scope !28141, !noalias !28142
  %wide.load440.1.a = load <4 x i32>, ptr %i.ap, align 8, !dbg !28210, !alias.scope !28141, !noalias !28142
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index.next443, !dbg !28211 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !28211
  %wide.load441.1 = load <4 x i32>, ptr %i.aq, align 8, !dbg !28211, !alias.scope !28143
  %wide.load442.1 = load <4 x i32>, ptr %i.ar, align 8, !dbg !28211, !alias.scope !28143
  %i.as = add <4 x i32> %wide.load441.1, %wide.load439.1.a, !dbg !28212
  %i.at = add <4 x i32> %wide.load442.1, %wide.load440.1.a, !dbg !28212
  store <4 x i32> %i.as, ptr %i.ao, align 8, !dbg !28213, !alias.scope !28141, !noalias !28142
  store <4 x i32> %i.at, ptr %i.ap, align 8, !dbg !28213, !alias.scope !28141, !noalias !28142
  %index.next443.1 = add nuw nsw i64 %index438, 16, !dbg !28209 ; 2 uses
  %i.au = icmp eq i64 %index.next443.1, 256, !dbg !28208
  br i1 %i.au, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit, label %vector.body437, !dbg !28208, !llvm.loop !28093

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.x, i64 noundef range(i64 0, 8868626958514208) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #18, !dbg !28203, !noalias !28136
  unreachable, !dbg !28203

scalar.ph435:                                     ; preds = %vector.memcheck, %scalar.ph435
  %.sroa.01.09.i = phi i64 [ %i.bn, %scalar.ph435 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.av = or disjoint i64 %.sroa.01.09.i, 1, !dbg !28209 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.01.09.i, !dbg !28210 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !28210, !alias.scope !28136, !noundef !664
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.01.09.i, !dbg !28211
  %i.az = load i32, ptr %i.ay, align 8, !dbg !28211, !alias.scope !28136, !noundef !664
  %i.ba = add i32 %i.az, %i.ax, !dbg !28212
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !28213, !alias.scope !28136
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !28209 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !28210 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !28210, !alias.scope !28136, !noundef !664
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !28211
  %i.bf = load i32, ptr %i.be, align 4, !dbg !28211, !alias.scope !28136, !noundef !664
  %i.bg = add i32 %i.bf, %i.bd, !dbg !28212
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !28213, !alias.scope !28136
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !28209 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !28210 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !28210, !alias.scope !28136, !noundef !664
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !28211
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !28211, !alias.scope !28136, !noundef !664
  %i.bm = add i32 %i.bl, %i.bj, !dbg !28212
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !28213, !alias.scope !28136
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !28209 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !28210 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !28210, !alias.scope !28136, !noundef !664
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !28211
  %i.br = load i32, ptr %i.bq, align 4, !dbg !28211, !alias.scope !28136, !noundef !664
  %i.bs = add i32 %i.br, %i.bp, !dbg !28212
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !28213, !alias.scope !28136
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 256, !dbg !28214
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !28208, !llvm.loop !28096

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !28215, !noundef !664
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 1032, !dbg !28216
  store float %i.bt, ptr %i.bu, align 8, !dbg !28216, !alias.scope !28144
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !28217
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !28217

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !28218
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !28218

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !28217
  unreachable, !dbg !28217

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !28217
  %i.by = load i32, ptr %i.bx, align 4, !dbg !28217, !noundef !664
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !28219 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !28220, !noundef !664
  %i.cb = add i32 %i.ca, %i.by, !dbg !28221
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !28222
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !28223

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !28224

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !28225

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !28225

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !28225

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !28226 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !28225
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !28225
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !28225
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !28225 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !28225 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !28225
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !28225

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !28227
  br label %pred.store.continue, !dbg !28225

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !28225
  br i1 %i.ch, label %pred.store.if418.a, label %pred.store.continue419.a, !dbg !28225

pred.store.if418.a:                               ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !28225
  store i32 %i.v, ptr %i.cj, align 4, !dbg !28227
  br label %pred.store.continue419.a, !dbg !28225

pred.store.continue419.a:                         ; preds = %pred.store.if418.a, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !28225
  br i1 %i.ck, label %pred.store.if420.a, label %pred.store.continue421.a, !dbg !28225

pred.store.if420.a:                               ; preds = %pred.store.continue419.a
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !28225
  store i32 %i.v, ptr %i.cm, align 4, !dbg !28227
  br label %pred.store.continue421.a, !dbg !28225

pred.store.continue421.a:                         ; preds = %pred.store.if420.a, %pred.store.continue419.a
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !28225
  br i1 %i.cn, label %pred.store.if422.a, label %pred.store.continue423.a, !dbg !28225

pred.store.if422.a:                               ; preds = %pred.store.continue421.a
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !28225
  store i32 %i.v, ptr %i.cp, align 4, !dbg !28227
  br label %pred.store.continue423.a, !dbg !28225

pred.store.continue423.a:                         ; preds = %pred.store.if422.a, %pred.store.continue421.a
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !28225
  br i1 %i.cq, label %pred.store.if424.a, label %pred.store.continue425.a, !dbg !28225

pred.store.if424.a:                               ; preds = %pred.store.continue423.a
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !28225
  store i32 %i.v, ptr %i.cs, align 4, !dbg !28227
  br label %pred.store.continue425.a, !dbg !28225

pred.store.continue425.a:                         ; preds = %pred.store.if424.a, %pred.store.continue423.a
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !28225
  br i1 %i.ct, label %pred.store.if426.a, label %pred.store.continue427.a, !dbg !28225

pred.store.if426.a:                               ; preds = %pred.store.continue425.a
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !28225
  store i32 %i.v, ptr %i.cv, align 4, !dbg !28227
  br label %pred.store.continue427.a, !dbg !28225

pred.store.continue427.a:                         ; preds = %pred.store.if426.a, %pred.store.continue425.a
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !28225
  br i1 %i.cw, label %pred.store.if428.a, label %pred.store.continue429.a, !dbg !28225

pred.store.if428.a:                               ; preds = %pred.store.continue427.a
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !28225
  store i32 %i.v, ptr %i.cy, align 4, !dbg !28227
  br label %pred.store.continue429.a, !dbg !28225

pred.store.continue429.a:                         ; preds = %pred.store.if428.a, %pred.store.continue427.a
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !28225
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !28225

pred.store.if430:                                 ; preds = %pred.store.continue429.a
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28225
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !28225
  store i32 %i.v, ptr %i.db, align 4, !dbg !28227
  br label %pred.store.continue431, !dbg !28225

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429.a
  %index.next432 = add nuw i64 %index415, 8, !dbg !28226 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !28223
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !28223, !llvm.loop !28106

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !28218
  unreachable, !dbg !28218

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !28226 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !28225
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !28225

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !28224
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !28224

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !28228  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !664 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !28229
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28229

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28224
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !28224, !noundef !664
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !28224
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !28230 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !28230 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !28224

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !28224
  unreachable, !dbg !28224

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !28231
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !28231

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !28232

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28232 ; 2 uses
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !28232
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !28232
  %i.dl = sub i64 %i.u, %i.dk, !dbg !28232
  %i.dm = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !28232
  %i.dn = add nsw i64 %i.dm, %15, !dbg !28232
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dn), !dbg !28232
  %i.dp = add i64 %i.do, 1, !dbg !28232           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 9, !dbg !28232
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !28232

vector.ph:                                        ; preds = %.lr.ph144
  %i.dq = and i64 %i.dp, 7                        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = select i1 %i.dr, i64 8, i64 %i.dq
  %n.vec = sub i64 %i.dp, %i.ds                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !28232

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28233 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index, !dbg !28234 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !28234
  %wide.load = load <4 x i32>, ptr %i.du, align 4, !dbg !28234
  %wide.load407 = load <4 x i32>, ptr %i.dv, align 4, !dbg !28234
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !28235 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !28235
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !dbg !28235
  store <4 x i32> %wide.load407, ptr %i.dx, align 4, !dbg !28235
  %index.next = add nuw i64 %index, 8, !dbg !28233 ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec, !dbg !28232
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !dbg !28232, !llvm.loop !28112

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !28234

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ex, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dz = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !28236 ; 3 uses
  %i.ea = icmp samesign ult i64 %i.dz, %7, !dbg !28234
  br i1 %i.ea, label %bb.af, label %bb.ae, !dbg !28234

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !28237
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !28238
  br label %.lr.ph150, !dbg !28239

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.ew, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !28240
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !28240

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.eb, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !28239
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !28239

bb.p:                                             ; preds = %.lr.ph150
  %i.eb = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !28241 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !28239
  %i.ed = load i32, ptr %i.ec, align 4, !dbg !28239, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.ed, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28242
  %exitcond242.not = icmp eq i64 %i.eb, %indvars.iv, !dbg !28243
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !28244

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !28239
  unreachable, !dbg !28239

bb.r:                                             ; preds = %.lr.ph147
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !28240 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ee, align 4, !dbg !28240 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4, !dbg !28240
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !28240 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !28240
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28240 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 12, !dbg !28240
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !28240 ; 4 uses
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !28245
  br i1 %i.ef, label %bb.ad, label %bb.t, !dbg !28245

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !28240
  unreachable, !dbg !28240

bb.t:                                             ; preds = %bb.r
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !28246
  %i.eh = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.eh, %i.eg, !dbg !28246
  %i.ei = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.ei, %or.cond, !dbg !28246
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !28246

bb.u:                                             ; preds = %bb.t
  %i.ej = load float, ptr %i.c, align 4, !dbg !28247, !noundef !664 ; 2 uses
  %i.ek = fcmp une float %i.ej, %.sroa.543.0.copyload, !dbg !28247
  br i1 %i.ek, label %.split, label %bb.v, !dbg !28247

.split:                                           ; preds = %bb.u
  %i.el = fcmp ogt float %i.ej, %.sroa.543.0.copyload, !dbg !28248
  br i1 %i.el, label %bb.x, label %bb.w, !dbg !28173

bb.v:                                             ; preds = %bb.u
  %i.em = load i32, ptr %i.d, align 4, !dbg !28249, !noundef !664
  %i.en = load i32, ptr %8, align 4, !dbg !28250, !noundef !664
  %i.eo = sub i32 %i.em, %i.en, !dbg !28251
  %i.ep = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !28252
  %i.eq = icmp ugt i32 %i.eo, %i.ep, !dbg !28249
  br i1 %i.eq, label %bb.x, label %bb.w, !dbg !28173

bb.w:                                             ; preds = %.split, %bb.v
  %i.er = icmp ult i64 %.sroa.027.0145, %9, !dbg !28253
  br i1 %i.er, label %bb.y, label %bb.z, !dbg !28253

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28254
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !28255
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !28255
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !28255
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !28255
  %i.es = icmp ult i64 %.sroa.027.0145, %9, !dbg !28256
  br i1 %i.es, label %bb.ab, label %bb.ac, !dbg !28256

bb.y:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28253 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.et, align 4, !dbg !28253
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.et, i64 4, !dbg !28253
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !28253
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !28253
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !28253
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.et, i64 12, !dbg !28253
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !28253
  br label %bb.aa, !dbg !28257

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !28253
  unreachable, !dbg !28253

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.eu = add nuw i64 %.sroa.027.0145, 1, !dbg !28258
  br label %bb.ad, !dbg !28259

bb.ab:                                            ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !28256
  br label %bb.aa, !dbg !28257

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !28256
  unreachable, !dbg !28256

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.eu, %bb.aa ], !dbg !28230 ; 2 uses
  %i.ew = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !28260 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.ew, %i.df, !dbg !28229
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28229

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !28234
  unreachable, !dbg !28234

bb.af:                                            ; preds = %scalar.ph
  %i.ex = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !28233 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dz, !dbg !28234
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !28234, !noundef !664
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !28235
  store i32 %i.ez, ptr %gep, align 4, !dbg !28235
  %exitcond238.not = icmp eq i64 %i.ex, %indvars.iv234, !dbg !28261
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !28232, !llvm.loop !28121

bb.ag:                                            ; preds = %.lr.ph141
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !28225 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !28225, !noundef !664
  %i.fc = icmp eq i32 %i.fb, %i.w, !dbg !28225
  br i1 %i.fc, label %bb.ai, label %bb.aj, !dbg !28225

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !28225
  unreachable, !dbg !28225

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.fa, align 4, !dbg !28227
  br label %bb.aj, !dbg !28262

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !28263
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !28223, !llvm.loop !28122

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fd, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !28264
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !28264

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !28194
  unreachable, !dbg !28194

bb.al:                                            ; preds = %.lr.ph.split
  %i.fd = add i64 %.sroa.053.0137, 1, !dbg !28265 ; 2 uses
  %i.fe = load i32, ptr %i.o, align 4, !dbg !28194, !noundef !664
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !28264
  %i.fg = load i32, ptr %i.ff, align 4, !dbg !28264, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramLiteralECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fe, i32 noundef %i.fg, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28266
  %exitcond228.not = icmp eq i64 %i.fd, %10, !dbg !28192
  br i1 %exitcond228.not, label %.loopexit82, label %.lr.ph.split, !dbg !28193

bb.am:                                            ; preds = %.lr.ph.split
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #18, !dbg !28264
  unreachable, !dbg !28264
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i64 0, 257) i64 @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 4207742717543238) %1, ptr noalias nofree noundef nonnull align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, ptr noalias nofree noundef nonnull align 4 captures(none) %6, i64 noundef range(i64 0, 2305843009213693952) %7, ptr noalias nofree noundef nonnull align 4 captures(none) %8, i64 noundef range(i64 0, 576460752303423488) %9, i64 noundef %10, i64 noundef %11, i64 noundef range(i64 64, 257) %12, i64 noundef %13, ptr noalias noundef nonnull %14) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !28267 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28415
  store i64 0, ptr %i.b, align 8, !dbg !28416
  %.not160 = icmp eq i64 %10, 0, !dbg !28417
  br i1 %.not160, label %.outer._crit_edge, label %.lr.ph139, !dbg !28356

.loopexit82:                                      ; preds = %bb.al, %.lr.ph139
  %exitcond229.not = icmp eq i64 %i.l, %10, !dbg !28417
  br i1 %exitcond229.not, label %.preheader81, label %.lr.ph139, !dbg !28356

.preheader81:                                     ; preds = %.loopexit82
  %.not333 = icmp eq i64 %10, 1, !dbg !28418
  br i1 %.not333, label %.outer._crit_edge, label %.lr.ph152.lr.ph, !dbg !28418

.lr.ph152.lr.ph:                                  ; preds = %.preheader81
  %.not = icmp eq i64 %9, 0
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not161 = icmp eq i64 %11, 0
  br i1 %.not, label %bb.c, label %.lr.ph152.preheader, !dbg !28419

.lr.ph152.preheader:                              ; preds = %.lr.ph152.lr.ph
  %i.f = add i64 %11, -1
  %i.g = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.f) ; 2 uses
  %min.iters.check411 = icmp samesign ult i64 %i.g, 8
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.i = and i64 %i.h, 7                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 8, i64 %i.i
  %n.vec413 = sub nsw i64 %i.h, %i.k              ; 2 uses
  br label %.lr.ph152, !dbg !28418

.lr.ph139:                                        ; preds = %bb.a, %.loopexit82
  %.sroa.051.0138 = phi i64 [ %i.l, %.loopexit82 ], [ 0, %bb.a ] ; 4 uses
  %i.l = add nuw i64 %.sroa.051.0138, 1, !dbg !28420 ; 4 uses
  %i.m = icmp ult i64 %i.l, %10, !dbg !28421
  br i1 %i.m, label %.lr.ph, label %.loopexit82, !dbg !28422

.lr.ph:                                           ; preds = %.lr.ph139
  %i.n = icmp ult i64 %.sroa.051.0138, %7
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.051.0138
  br i1 %i.n, label %.lr.ph.split, label %bb.ak, !dbg !28423

.loopexit:                                        ; preds = %bb.p
  %i.p = icmp ugt i64 %i.de, %.sroa.010.0.ph156, !dbg !28418
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !28418
  %indvar.next = add i64 %indvar, 1, !dbg !28418
  br i1 %i.p, label %bb.b, label %.outer._crit_edge.loopexit, !dbg !28418

.outer._crit_edge.loopexit:                       ; preds = %.loopexit
  %umin.le = tail call i64 @llvm.umin.i64(i64 %.sroa.010.0.ph156, i64 %i.t)
  br label %.outer._crit_edge, !dbg !28424

.outer._crit_edge:                                ; preds = %.outer.loopexit, %.outer._crit_edge.loopexit, %bb.a, %.preheader81
  %.sroa.0.0.lcssa = phi i64 [ %umin.le, %.outer._crit_edge.loopexit ], [ %10, %.preheader81 ], [ 0, %bb.a ], [ %.sroa.0.0151, %.outer.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28424
  ret i64 %.sroa.0.0.lcssa, !dbg !28425

bb.b:                                             ; preds = %.lr.ph152, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph152 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.t, %.lr.ph152 ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.sroa.0.0151 = phi i64 [ %.sroa.0.0.ph158, %.lr.ph152 ], [ %i.de, %.loopexit ] ; 5 uses
  %i.q = load float, ptr %i.c, align 4, !dbg !28419, !noundef !664
  %i.r = fcmp ult float %i.q, %.sroa.09.0.ph157, !dbg !28419
  br i1 %i.r, label %bb.d, label %.outer.loopexit, !dbg !28419

.outer.loopexit:                                  ; preds = %bb.b
  %i.s = icmp ugt i64 %.sroa.0.0151, %12, !dbg !28418
  br i1 %i.s, label %.lr.ph152, label %.outer._crit_edge, !dbg !28418

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %.outer.loopexit
  %.sroa.0.0.ph158 = phi i64 [ %.sroa.0.0151, %.outer.loopexit ], [ %10, %.lr.ph152.preheader ] ; 3 uses
  %.sroa.09.0.ph157 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph152.preheader ]
  %.sroa.010.0.ph156 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph152.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph158, -1, !dbg !28418 ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph158, -2, !dbg !28418
  br label %bb.b, !dbg !28418

bb.c:                                             ; preds = %.lr.ph152.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @246) #18, !dbg !28419
  unreachable, !dbg !28419

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !dbg !28426, !noundef !664 ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !dbg !28427, !noundef !664 ; 6 uses
  %i.x = zext i32 %i.v to i64, !dbg !28428        ; 6 uses
  %i.y = zext i32 %i.w to i64, !dbg !28429        ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28365), !dbg !28430
  %i.z = icmp samesign ugt i64 %1, %i.y, !dbg !28431
  br i1 %i.z, label %bb.e, label %bb.f, !dbg !28431

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr [2192 x i8], ptr %0, i64 %i.y, !dbg !28431 ; 8 uses
  %i.ab = icmp samesign ugt i64 %1, %i.x, !dbg !28432
  br i1 %i.ab, label %vector.memcheck, label %bb.g, !dbg !28432

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.y, i64 noundef range(i64 0, 4207742717543238) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @290) #18, !dbg !28431, !noalias !28365
  unreachable, !dbg !28431

vector.memcheck:                                  ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2176, !dbg !28433 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !28433, !alias.scope !28366, !noundef !664
  %i.ae = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.x, !dbg !28432 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2176, !dbg !28434 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !dbg !28434, !alias.scope !28367, !noundef !664
  %i.ah = add i64 %i.ag, %i.ad, !dbg !28435
  store i64 %i.ah, ptr %i.af, align 8, !dbg !28436, !alias.scope !28368
  %bound0 = icmp ult ptr %i.ae, %i.ac, !dbg !28437
  %bound1 = icmp ult ptr %i.aa, %i.af, !dbg !28437
  %found.conflict = and i1 %bound0, %bound1, !dbg !28437
  br i1 %found.conflict, label %scalar.ph435, label %vector.body437, !dbg !28438

vector.body437:                                   ; preds = %vector.memcheck, %vector.body437
  %index438 = phi i64 [ %index.next443.1, %vector.body437 ], [ 0, %vector.memcheck ], !dbg !28438 ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index438, !dbg !28439 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !28439 ; 2 uses
  %wide.load439.a = load <4 x i32>, ptr %i.ai, align 8, !dbg !28439, !alias.scope !28370, !noalias !28371
  %wide.load440.a = load <4 x i32>, ptr %i.aj, align 8, !dbg !28439, !alias.scope !28370, !noalias !28371
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index438, !dbg !28440 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !28440
  %wide.load441 = load <4 x i32>, ptr %i.ak, align 8, !dbg !28440, !alias.scope !28372
  %wide.load442 = load <4 x i32>, ptr %i.al, align 8, !dbg !28440, !alias.scope !28372
  %i.am = add <4 x i32> %wide.load441, %wide.load439.a, !dbg !28441
  %i.an = add <4 x i32> %wide.load442, %wide.load440.a, !dbg !28441
  store <4 x i32> %i.am, ptr %i.ai, align 8, !dbg !28442, !alias.scope !28370, !noalias !28371
  store <4 x i32> %i.an, ptr %i.aj, align 8, !dbg !28442, !alias.scope !28370, !noalias !28371
  %index.next443 = or disjoint i64 %index438, 8, !dbg !28438 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index.next443, !dbg !28439 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !28439 ; 2 uses
  %wide.load439.1.a = load <4 x i32>, ptr %i.ao, align 8, !dbg !28439, !alias.scope !28370, !noalias !28371
  %wide.load440.1.a = load <4 x i32>, ptr %i.ap, align 8, !dbg !28439, !alias.scope !28370, !noalias !28371
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index.next443, !dbg !28440 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !28440
  %wide.load441.1 = load <4 x i32>, ptr %i.aq, align 8, !dbg !28440, !alias.scope !28372
  %wide.load442.1 = load <4 x i32>, ptr %i.ar, align 8, !dbg !28440, !alias.scope !28372
  %i.as = add <4 x i32> %wide.load441.1, %wide.load439.1.a, !dbg !28441
  %i.at = add <4 x i32> %wide.load442.1, %wide.load440.1.a, !dbg !28441
  store <4 x i32> %i.as, ptr %i.ao, align 8, !dbg !28442, !alias.scope !28370, !noalias !28371
  store <4 x i32> %i.at, ptr %i.ap, align 8, !dbg !28442, !alias.scope !28370, !noalias !28371
  %index.next443.1 = add nuw nsw i64 %index438, 16, !dbg !28438 ; 2 uses
  %i.au = icmp eq i64 %index.next443.1, 544, !dbg !28437
  br i1 %i.au, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit, label %vector.body437, !dbg !28437, !llvm.loop !28322

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 4294967296) %i.x, i64 noundef range(i64 0, 4207742717543238) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #18, !dbg !28432, !noalias !28365
  unreachable, !dbg !28432

scalar.ph435:                                     ; preds = %vector.memcheck, %scalar.ph435
  %.sroa.01.09.i = phi i64 [ %i.bn, %scalar.ph435 ], [ 0, %vector.memcheck ] ; 6 uses
  %i.av = or disjoint i64 %.sroa.01.09.i, 1, !dbg !28438 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.sroa.01.09.i, !dbg !28439 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !dbg !28439, !alias.scope !28365, !noundef !664
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.01.09.i, !dbg !28440
  %i.az = load i32, ptr %i.ay, align 8, !dbg !28440, !alias.scope !28365, !noundef !664
  %i.ba = add i32 %i.az, %i.ax, !dbg !28441
  store i32 %i.ba, ptr %i.aw, align 8, !dbg !28442, !alias.scope !28365
  %i.bb = or disjoint i64 %.sroa.01.09.i, 2, !dbg !28438 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.av, !dbg !28439 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !dbg !28439, !alias.scope !28365, !noundef !664
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av, !dbg !28440
  %i.bf = load i32, ptr %i.be, align 4, !dbg !28440, !alias.scope !28365, !noundef !664
  %i.bg = add i32 %i.bf, %i.bd, !dbg !28441
  store i32 %i.bg, ptr %i.bc, align 4, !dbg !28442, !alias.scope !28365
  %i.bh = or disjoint i64 %.sroa.01.09.i, 3, !dbg !28438 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bb, !dbg !28439 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !28439, !alias.scope !28365, !noundef !664
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bb, !dbg !28440
  %i.bl = load i32, ptr %i.bk, align 8, !dbg !28440, !alias.scope !28365, !noundef !664
  %i.bm = add i32 %i.bl, %i.bj, !dbg !28441
  store i32 %i.bm, ptr %i.bi, align 8, !dbg !28442, !alias.scope !28365
  %i.bn = add nuw nsw i64 %.sroa.01.09.i, 4, !dbg !28438 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bh, !dbg !28439 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !dbg !28439, !alias.scope !28365, !noundef !664
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh, !dbg !28440
  %i.br = load i32, ptr %i.bq, align 4, !dbg !28440, !alias.scope !28365, !noundef !664
  %i.bs = add i32 %i.br, %i.bp, !dbg !28441
  store i32 %i.bs, ptr %i.bo, align 4, !dbg !28442, !alias.scope !28365
  %exitcond.not.i.3 = icmp eq i64 %i.bn, 544, !dbg !28443
  br i1 %exitcond.not.i.3, label %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph435, !dbg !28437, !llvm.loop !28325

_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vector.body437, %scalar.ph435
  %i.bt = load float, ptr %i.e, align 4, !dbg !28444, !noundef !664
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 2184, !dbg !28445
  store float %i.bt, ptr %i.bu, align 8, !dbg !28445, !alias.scope !28373
  %i.bv = icmp samesign ugt i64 %3, %i.y, !dbg !28446
  br i1 %i.bv, label %bb.h, label %bb.i, !dbg !28446

bb.h:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit
  %i.bw = icmp samesign ugt i64 %3, %i.x, !dbg !28447
  br i1 %i.bw, label %bb.j, label %bb.k, !dbg !28447

bb.i:                                             ; preds = %_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #18, !dbg !28446
  unreachable, !dbg !28446

bb.j:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y, !dbg !28446
  %i.by = load i32, ptr %i.bx, align 4, !dbg !28446, !noundef !664
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x, !dbg !28448 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !dbg !28449, !noundef !664
  %i.cb = add i32 %i.ca, %i.by, !dbg !28450
  store i32 %i.cb, ptr %i.bz, align 4, !dbg !28451
  br i1 %.not161, label %.preheader.preheader, label %.lr.ph141.preheader, !dbg !28452

.preheader.preheader:                             ; preds = %bb.aj, %bb.j
  br label %.preheader, !dbg !28453

.lr.ph141.preheader:                              ; preds = %bb.j
  br i1 %min.iters.check411, label %.lr.ph141.preheader446, label %vector.ph412, !dbg !28454

.lr.ph141.preheader446:                           ; preds = %pred.store.continue431, %.lr.ph141.preheader
  %.sroa.055.0140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec413, %pred.store.continue431 ]
  br label %.lr.ph141, !dbg !28454

vector.ph412:                                     ; preds = %.lr.ph141.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body414, !dbg !28454

vector.body414:                                   ; preds = %pred.store.continue431, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next432, %pred.store.continue431 ], !dbg !28455 ; 9 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16, !dbg !28454
  %wide.load416 = load <4 x i32>, ptr %i.cc, align 4, !dbg !28454
  %wide.load417 = load <4 x i32>, ptr %i.cd, align 4, !dbg !28454
  %i.ce = icmp eq <4 x i32> %wide.load416, %broadcast.splat, !dbg !28454 ; 4 uses
  %i.cf = icmp eq <4 x i32> %wide.load417, %broadcast.splat, !dbg !28454 ; 4 uses
  %i.cg = extractelement <4 x i1> %i.ce, i64 0, !dbg !28454
  br i1 %i.cg, label %pred.store.if, label %pred.store.continue, !dbg !28454

pred.store.if:                                    ; preds = %vector.body414
  store i32 %i.v, ptr %i.cc, align 4, !dbg !28456
  br label %pred.store.continue, !dbg !28454

pred.store.continue:                              ; preds = %pred.store.if, %vector.body414
  %i.ch = extractelement <4 x i1> %i.ce, i64 1, !dbg !28454
  br i1 %i.ch, label %pred.store.if418.a, label %pred.store.continue419.a, !dbg !28454

pred.store.if418.a:                               ; preds = %pred.store.continue
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !28454
  store i32 %i.v, ptr %i.cj, align 4, !dbg !28456
  br label %pred.store.continue419.a, !dbg !28454

pred.store.continue419.a:                         ; preds = %pred.store.if418.a, %pred.store.continue
  %i.ck = extractelement <4 x i1> %i.ce, i64 2, !dbg !28454
  br i1 %i.ck, label %pred.store.if420.a, label %pred.store.continue421.a, !dbg !28454

pred.store.if420.a:                               ; preds = %pred.store.continue419.a
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !28454
  store i32 %i.v, ptr %i.cm, align 4, !dbg !28456
  br label %pred.store.continue421.a, !dbg !28454

pred.store.continue421.a:                         ; preds = %pred.store.if420.a, %pred.store.continue419.a
  %i.cn = extractelement <4 x i1> %i.ce, i64 3, !dbg !28454
  br i1 %i.cn, label %pred.store.if422.a, label %pred.store.continue423.a, !dbg !28454

pred.store.if422.a:                               ; preds = %pred.store.continue421.a
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12, !dbg !28454
  store i32 %i.v, ptr %i.cp, align 4, !dbg !28456
  br label %pred.store.continue423.a, !dbg !28454

pred.store.continue423.a:                         ; preds = %pred.store.if422.a, %pred.store.continue421.a
  %i.cq = extractelement <4 x i1> %i.cf, i64 0, !dbg !28454
  br i1 %i.cq, label %pred.store.if424.a, label %pred.store.continue425.a, !dbg !28454

pred.store.if424.a:                               ; preds = %pred.store.continue423.a
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !28454
  store i32 %i.v, ptr %i.cs, align 4, !dbg !28456
  br label %pred.store.continue425.a, !dbg !28454

pred.store.continue425.a:                         ; preds = %pred.store.if424.a, %pred.store.continue423.a
  %i.ct = extractelement <4 x i1> %i.cf, i64 1, !dbg !28454
  br i1 %i.ct, label %pred.store.if426.a, label %pred.store.continue427.a, !dbg !28454

pred.store.if426.a:                               ; preds = %pred.store.continue425.a
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 20, !dbg !28454
  store i32 %i.v, ptr %i.cv, align 4, !dbg !28456
  br label %pred.store.continue427.a, !dbg !28454

pred.store.continue427.a:                         ; preds = %pred.store.if426.a, %pred.store.continue425.a
  %i.cw = extractelement <4 x i1> %i.cf, i64 2, !dbg !28454
  br i1 %i.cw, label %pred.store.if428.a, label %pred.store.continue429.a, !dbg !28454

pred.store.if428.a:                               ; preds = %pred.store.continue427.a
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !28454
  store i32 %i.v, ptr %i.cy, align 4, !dbg !28456
  br label %pred.store.continue429.a, !dbg !28454

pred.store.continue429.a:                         ; preds = %pred.store.if428.a, %pred.store.continue427.a
  %i.cz = extractelement <4 x i1> %i.cf, i64 3, !dbg !28454
  br i1 %i.cz, label %pred.store.if430, label %pred.store.continue431, !dbg !28454

pred.store.if430:                                 ; preds = %pred.store.continue429.a
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index415, !dbg !28454
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 28, !dbg !28454
  store i32 %i.v, ptr %i.db, align 4, !dbg !28456
  br label %pred.store.continue431, !dbg !28454

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429.a
  %index.next432 = add nuw i64 %index415, 8, !dbg !28455 ; 2 uses
  %i.dc = icmp eq i64 %index.next432, %n.vec413, !dbg !28452
  br i1 %i.dc, label %.lr.ph141.preheader446, label %vector.body414, !dbg !28452, !llvm.loop !28335

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @248) #18, !dbg !28447
  unreachable, !dbg !28447

.lr.ph141:                                        ; preds = %.lr.ph141.preheader446, %bb.aj
  %.sroa.055.0140 = phi i64 [ %i.dd, %bb.aj ], [ %.sroa.055.0140.ph, %.lr.ph141.preheader446 ] ; 3 uses
  %i.dd = add nuw nsw i64 %.sroa.055.0140, 1, !dbg !28455 ; 2 uses
  %exitcond230.not = icmp eq i64 %.sroa.055.0140, %5, !dbg !28454
  br i1 %exitcond230.not, label %bb.ah, label %bb.ag, !dbg !28454

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.n ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0142 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond232.not = icmp eq i64 %.sroa.014.0142, %7, !dbg !28453
  br i1 %exitcond232.not, label %bb.m, label %bb.l, !dbg !28453

.loopexit79:                                      ; preds = %bb.n, %bb.af, %bb.o
  %i.de = add i64 %.sroa.0.0151, -1, !dbg !28457  ; 2 uses
  %i.df = load i64, ptr %i.b, align 8, !noundef !664 ; 2 uses
  %.not163 = icmp eq i64 %i.df, 0, !dbg !28458
  br i1 %.not163, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28458

bb.l:                                             ; preds = %.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28453
  %i.dh = load i32, ptr %i.dg, align 4, !dbg !28453, !noundef !664
  %i.di = icmp eq i32 %i.dh, %i.w, !dbg !28453
  %.neg = add nuw i64 %.sroa.014.0142, 1, !dbg !28459 ; 2 uses
  %.not162 = icmp eq i64 %.sroa.0.0151, %.neg, !dbg !28459 ; 2 uses
  br i1 %i.di, label %bb.o, label %bb.n, !dbg !28453

bb.m:                                             ; preds = %.preheader
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #18, !dbg !28453
  unreachable, !dbg !28453

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next235 = add i64 %indvars.iv234, -1, !dbg !28460
  br i1 %.not162, label %.loopexit79, label %.preheader, !dbg !28460

bb.o:                                             ; preds = %bb.l
  br i1 %.not162, label %.loopexit79, label %.lr.ph144, !dbg !28461

.lr.ph144:                                        ; preds = %bb.o
  %i.dj = add nuw nsw i64 %.sroa.014.0142, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0142, !dbg !28461 ; 2 uses
  %15 = xor i64 %.sroa.014.0142, -1, !dbg !28461
  %i.dk = add i64 %indvar, %.sroa.014.0142, !dbg !28461
  %i.dl = sub i64 %i.u, %i.dk, !dbg !28461
  %i.dm = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dj), !dbg !28461
  %i.dn = add nsw i64 %i.dm, %15, !dbg !28461
  %i.do = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dn), !dbg !28461
  %i.dp = add i64 %i.do, 1, !dbg !28461           ; 3 uses
  %min.iters.check = icmp ult i64 %i.dp, 9, !dbg !28461
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !28461

vector.ph:                                        ; preds = %.lr.ph144
  %i.dq = and i64 %i.dp, 7                        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = select i1 %i.dr, i64 8, i64 %i.dq
  %n.vec = sub i64 %i.dp, %i.ds                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dj
  br label %vector.body, !dbg !28461

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28462 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index, !dbg !28463 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16, !dbg !28463
  %wide.load = load <4 x i32>, ptr %i.du, align 4, !dbg !28463
  %wide.load407 = load <4 x i32>, ptr %i.dv, align 4, !dbg !28463
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index, !dbg !28464 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16, !dbg !28464
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !dbg !28464
  store <4 x i32> %wide.load407, ptr %i.dx, align 4, !dbg !28464
  %index.next = add nuw i64 %index, 8, !dbg !28462 ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec, !dbg !28461
  br i1 %i.dy, label %scalar.ph.preheader, label %vector.body, !dbg !28461, !llvm.loop !28341

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph144
  %.sroa.057.0143.ph = phi i64 [ 0, %.lr.ph144 ], [ %n.vec, %vector.body ]
  br label %scalar.ph, !dbg !28463

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %.sroa.057.0143 = phi i64 [ %i.ex, %bb.af ], [ %.sroa.057.0143.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dz = add nuw nsw i64 %i.dj, %.sroa.057.0143, !dbg !28465 ; 3 uses
  %i.ea = icmp samesign ult i64 %i.dz, %7, !dbg !28463
  br i1 %i.ea, label %bb.af, label %bb.ae, !dbg !28463

.lr.ph150.preheader:                              ; preds = %bb.ad, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ad ], !dbg !28466
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8, !dbg !28467
  br label %.lr.ph150, !dbg !28468

.lr.ph147:                                        ; preds = %.loopexit79, %bb.ad
  %.sroa.014.1146 = phi i64 [ %i.ew, %bb.ad ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0145 = phi i64 [ %.sroa.027.1, %bb.ad ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond239.not = icmp eq i64 %.sroa.014.1146, %9, !dbg !28469
  br i1 %exitcond239.not, label %bb.s, label %bb.r, !dbg !28469

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.p
  %.sroa.059.0148 = phi i64 [ %i.eb, %bb.p ], [ 0, %.lr.ph150.preheader ] ; 3 uses
  %exitcond241.not = icmp eq i64 %.sroa.059.0148, %7, !dbg !28468
  br i1 %exitcond241.not, label %bb.q, label %bb.p, !dbg !28468

bb.p:                                             ; preds = %.lr.ph150
  %i.eb = add nuw nsw i64 %.sroa.059.0148, 1, !dbg !28470 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.059.0148, !dbg !28468
  %i.ed = load i32, ptr %i.ec, align 4, !dbg !28468, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.ed, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28471
  %exitcond242.not = icmp eq i64 %i.eb, %indvars.iv, !dbg !28472
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph150, !dbg !28473

bb.q:                                             ; preds = %.lr.ph150
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @250) #18, !dbg !28468
  unreachable, !dbg !28468

bb.r:                                             ; preds = %.lr.ph147
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1146, !dbg !28469 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.ee, align 4, !dbg !28469 ; 5 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 4, !dbg !28469
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 4, !dbg !28469 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8, !dbg !28469
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !28469 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 12, !dbg !28469
  %.sroa.543.0.copyload = load float, ptr %.sroa.543.0..sroa_idx, align 4, !dbg !28469 ; 4 uses
  %i.ef = icmp eq i32 %.sroa.031.0.copyload, %i.v, !dbg !28474
  br i1 %i.ef, label %bb.ad, label %bb.t, !dbg !28474

bb.s:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #18, !dbg !28469
  unreachable, !dbg !28469

bb.t:                                             ; preds = %bb.r
  %i.eg = icmp eq i32 %.sroa.434.0.copyload, %i.v, !dbg !28475
  %i.eh = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.eh, %i.eg, !dbg !28475
  %i.ei = icmp eq i32 %.sroa.434.0.copyload, %i.w
  %or.cond1 = or i1 %i.ei, %or.cond, !dbg !28475
  br i1 %or.cond1, label %bb.ad, label %bb.u, !dbg !28475

bb.u:                                             ; preds = %bb.t
  %i.ej = load float, ptr %i.c, align 4, !dbg !28476, !noundef !664 ; 2 uses
  %i.ek = fcmp une float %i.ej, %.sroa.543.0.copyload, !dbg !28476
  br i1 %i.ek, label %.split, label %bb.v, !dbg !28476

.split:                                           ; preds = %bb.u
  %i.el = fcmp ogt float %i.ej, %.sroa.543.0.copyload, !dbg !28477
  br i1 %i.el, label %bb.x, label %bb.w, !dbg !28402

bb.v:                                             ; preds = %bb.u
  %i.em = load i32, ptr %i.d, align 4, !dbg !28478, !noundef !664
  %i.en = load i32, ptr %8, align 4, !dbg !28479, !noundef !664
  %i.eo = sub i32 %i.em, %i.en, !dbg !28480
  %i.ep = sub i32 %.sroa.434.0.copyload, %.sroa.031.0.copyload, !dbg !28481
  %i.eq = icmp ugt i32 %i.eo, %i.ep, !dbg !28478
  br i1 %i.eq, label %bb.x, label %bb.w, !dbg !28402

bb.w:                                             ; preds = %.split, %bb.v
  %i.er = icmp ult i64 %.sroa.027.0145, %9, !dbg !28482
  br i1 %i.er, label %bb.y, label %bb.z, !dbg !28482

bb.x:                                             ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false), !dbg !28483
  store i32 %.sroa.031.0.copyload, ptr %8, align 4, !dbg !28484
  store i32 %.sroa.434.0.copyload, ptr %i.d, align 4, !dbg !28484
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 4, !dbg !28484
  store float %.sroa.543.0.copyload, ptr %i.c, align 4, !dbg !28484
  %i.es = icmp ult i64 %.sroa.027.0145, %9, !dbg !28485
  br i1 %i.es, label %bb.ab, label %bb.ac, !dbg !28485

bb.y:                                             ; preds = %bb.w
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28482 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.et, align 4, !dbg !28482
  %.sroa.434.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.et, i64 4, !dbg !28482
  store i32 %.sroa.434.0.copyload, ptr %.sroa.434.0..sroa_idx37, align 4, !dbg !28482
  %.sroa.5.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.et, i64 8, !dbg !28482
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx41, align 4, !dbg !28482
  %.sroa.543.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.et, i64 12, !dbg !28482
  store float %.sroa.543.0.copyload, ptr %.sroa.543.0..sroa_idx46, align 4, !dbg !28482
  br label %bb.aa, !dbg !28486

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #18, !dbg !28482
  unreachable, !dbg !28482

bb.aa:                                            ; preds = %bb.ab, %bb.y
  %i.eu = add nuw i64 %.sroa.027.0145, 1, !dbg !28487
  br label %bb.ad, !dbg !28488

bb.ab:                                            ; preds = %bb.x
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0145, !dbg !28485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !28485
  br label %bb.aa, !dbg !28486

bb.ac:                                            ; preds = %bb.x
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0145, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #18, !dbg !28485
  unreachable, !dbg !28485

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.aa
  %.sroa.027.1 = phi i64 [ %.sroa.027.0145, %bb.r ], [ %.sroa.027.0145, %bb.t ], [ %i.eu, %bb.aa ], !dbg !28459 ; 2 uses
  %i.ew = add nuw nsw i64 %.sroa.014.1146, 1, !dbg !28489 ; 2 uses
  %exitcond240.not = icmp eq i64 %i.ew, %i.df, !dbg !28458
  br i1 %exitcond240.not, label %.lr.ph150.preheader, label %.lr.ph147, !dbg !28458

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #18, !dbg !28463
  unreachable, !dbg !28463

bb.af:                                            ; preds = %scalar.ph
  %i.ex = add nuw nsw i64 %.sroa.057.0143, 1, !dbg !28462 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dz, !dbg !28463
  %i.ez = load i32, ptr %i.ey, align 4, !dbg !28463, !noundef !664
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.057.0143, !dbg !28464
  store i32 %i.ez, ptr %gep, align 4, !dbg !28464
  %exitcond238.not = icmp eq i64 %i.ex, %indvars.iv234, !dbg !28490
  br i1 %exitcond238.not, label %.loopexit79, label %scalar.ph, !dbg !28461, !llvm.loop !28350

bb.ag:                                            ; preds = %.lr.ph141
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.055.0140, !dbg !28454 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !dbg !28454, !noundef !664
  %i.fc = icmp eq i32 %i.fb, %i.w, !dbg !28454
  br i1 %i.fc, label %bb.ai, label %bb.aj, !dbg !28454

bb.ah:                                            ; preds = %.lr.ph141
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #18, !dbg !28454
  unreachable, !dbg !28454

bb.ai:                                            ; preds = %bb.ag
  store i32 %i.v, ptr %i.fa, align 4, !dbg !28456
  br label %bb.aj, !dbg !28491

bb.aj:                                            ; preds = %bb.ag, %bb.ai
  %exitcond231.not = icmp eq i64 %i.dd, %11, !dbg !28492
  br i1 %exitcond231.not, label %.preheader.preheader, label %.lr.ph141, !dbg !28452, !llvm.loop !28351

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.al
  %.sroa.053.0137 = phi i64 [ %i.fd, %bb.al ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.053.0137, %7, !dbg !28493
  br i1 %exitcond.not, label %bb.am, label %bb.al, !dbg !28493

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.051.0138, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #18, !dbg !28423
  unreachable, !dbg !28423

bb.al:                                            ; preds = %.lr.ph.split
  %i.fd = add i64 %.sroa.053.0137, 1, !dbg !28494 ; 2 uses
  %i.fe = load i32, ptr %i.o, align 4, !dbg !28423, !noundef !664
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.053.0137, !dbg !28493
  %i.fg = load i32, ptr %i.ff, align 4, !dbg !28493, !noundef !664
  call fastcc void @_RINvNtNtCsk4ZPsEfLtLH_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.fe, i32 noundef %i.fg, i64 noundef %13, ptr noalias noundef nonnull %14, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b), !dbg !28495
end_hunk_3

inline.NumInlined: 10771
inline.NumDeleted: 3809
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvXs_NtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipcNtB6_13IpcFileReaderNtNtNtB8_10multi_scan16reader_interface10FileReader10begin_reads4_0Bc_:bb.a
  %.sroa.09.0.i = phi i64 [ %i.ta, %bb.gv ], [ %i.td, %bb.gw ], [ 0, %_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf5BlockE6unwrapCs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !97318 ; 2 uses
  %i.te = load i64, ptr %i.st, align 8, !dbg !97319, !noalias !96995, !noundef !11 ; 3 uses
  %i.tf = add i64 %i.te, %.sroa.09.0.i, !dbg !97320 ; 2 uses
  %.not211.i = icmp ult i64 %i.tf, %i.te, !dbg !97320
  br i1 %.not211.i, label %bb.hp, label %bb.gy, !dbg !97323

bb.gy:                                            ; preds = %bb.gx
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 768, !dbg !97319
  store i64 %i.te, ptr %i.tg, align 8, !dbg !97319, !noalias !96942
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 776, !dbg !97319
  store i64 %i.tf, ptr %i.th, align 8, !dbg !97319, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !97326, !noalias !96942
  br i1 %i.sp, label %bb.gz, label %bb.ha, !dbg !97327

bb.gz:                                            ; preds = %bb.gy
  %i.ti = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97328
  store i8 1, ptr %i.ti, align 2, !dbg !97328, !noalias !96942
  store ptr null, ptr %i.n, align 8, !dbg !97328, !noalias !96942
  br label %bb.hi, !dbg !97328

bb.ha:                                            ; preds = %bb.gy
  %i.tj = getelementptr inbounds nuw i8, ptr %1, i64 488, !dbg !97329
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !97329
  store ptr %i.tj, ptr %i.tk, align 8, !dbg !97329, !noalias !96942
  %.sroa.7154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640, !dbg !97329
  store i64 %.sroa.09.0.i, ptr %.sroa.7154.0..sroa_idx.i, align 8, !dbg !97329, !noalias !96942
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 656, !dbg !97329
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 8, !dbg !97329, !noalias !96942
  br label %bb.hc, !dbg !96967

bb.hb:                                            ; preds = %bb.hc
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !97330, !noalias !96942
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budgetNtBL_14PipelineBudget7acquire0EBT_(ptr noundef nonnull align 8 %i.to) #38
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelinePermitEEB1c_.exit.i unwind label %bb.hk, !dbg !97331, !noalias !96995

bb.hc:                                            ; preds = %bb.ha, %bb.dz
  %i.tm = phi ptr [ %i.lb, %bb.ha ], [ %i.ju, %bb.dz ] ; 4 uses
  %i.tn = phi ptr [ %i.lc, %bb.ha ], [ %i.jt, %bb.dz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !96967, !noalias !96942
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !96967 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budgetNtB4_14PipelineBudget7acquire0Bc_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.m, ptr noundef nonnull align 8 %i.to, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.hd unwind label %bb.hb, !dbg !96967, !noalias !96995

bb.hd:                                            ; preds = %bb.hc
  %i.tp = load ptr, ptr %i.m, align 8, !dbg !96967, !noalias !96942, !noundef !11
  %i.tq = icmp eq ptr %i.tp, null, !dbg !96967
  br i1 %i.tq, label %bb.he, label %bb.hf, !dbg !96967

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !97330, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !96967, !noalias !96942
  br label %bb.jr, !dbg !96967

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !97332, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !97330, !noalias !96942
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budgetNtBL_14PipelineBudget7acquire0EBT_(ptr noundef nonnull align 8 %i.to)
          to label %bb.hh unwind label %bb.hg, !dbg !97331, !noalias !96995

bb.hg:                                            ; preds = %bb.hf
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelinePermitEEB1c_.exit.i

bb.hh:                                            ; preds = %bb.hf
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97333
  store i8 1, ptr %i.ts, align 2, !dbg !97333, !noalias !96942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !97333, !noalias !96942
  br label %bb.hi, !dbg !97334

bb.hi:                                            ; preds = %bb.hh, %bb.gz
  %i.tt = phi ptr [ %i.tm, %bb.hh ], [ %i.lb, %bb.gz ] ; 3 uses
  %i.tu = phi ptr [ %i.tn, %bb.hh ], [ %i.lc, %bb.gz ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !97335, !noalias !96942
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !97336
  %.val67.i = load ptr, ptr %i.tv, align 8, !dbg !97337, !noalias !96942, !nonnull !11, !noundef !11 ; 2 uses
  %i.tw = atomicrmw add ptr %.val67.i, i64 1 monotonic, align 8, !dbg !97338, !noalias !96995
  %i.tx = icmp slt i64 %i.tw, 0, !dbg !97342
  br i1 %i.tx, label %bb.hj, label %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97342

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.trap(), !dbg !97343
  unreachable, !dbg !97343

bb.hk:                                            ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.iq, %bb.in, %bb.ik, %bb.ig, %bb.hx, %.body100.i, %bb.hb, %.body.i
  %i.ty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !96937, !noalias !96995
  unreachable, !dbg !96937

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelinePermitEEB1c_.exit.i: ; preds = %bb.jp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i, %bb.hg, %bb.hb
  %i.tz = phi ptr [ %i.tm, %bb.hb ], [ %i.uf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i ], [ %i.uf, %bb.jp ], [ %i.tm, %bb.hg ]
  %i.ua = phi ptr [ %i.tn, %bb.hb ], [ %i.ug, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i ], [ %i.ug, %bb.jp ], [ %i.tn, %bb.hg ]
  %.pn28.pn.pn.pn.i = phi { ptr, i32 } [ %i.tl, %bb.hb ], [ %.pn28.pn.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i ], [ %.pn28.pn.i, %bb.jp ], [ %i.tr, %bb.hg ]
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97156
  store i8 0, ptr %i.ub, align 2, !dbg !97156, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !97156, !noalias !96942
  br label %.body85.i, !dbg !97344

_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.hi
  store ptr %.val67.i, ptr %i.k, align 8, !dbg !97336, !noalias !96942
  %i.uc = getelementptr inbounds nuw i8, ptr %1, i64 625, !dbg !97346 ; 2 uses
  store i8 1, ptr %i.uc, align 1, !dbg !97346, !noalias !96942
  %i.ud = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80) acquire, align 8, !dbg !97347, !noalias !96942
  %i.ue = icmp eq i32 %i.ud, 0, !dbg !97354
  br i1 %i.ue, label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.hl, !dbg !97354, !prof !212

bb.hl:                                            ; preds = %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !97355, !noalias !96942
  store ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr %i.b, align 8, !dbg !97356, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !97357, !noalias !96942
  store ptr %i.b, ptr %i.a, align 8, !dbg !97357, !noalias !96942
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, i64 80), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc98.i unwind label %bb.hn, !dbg !97358, !noalias !96995

.noexc98.i:                                       ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !97359, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !97360, !noalias !96942
  br label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97360

bb.hm:                                            ; preds = %bb.ho, %bb.hn, %bb.fx
  %i.uf = phi ptr [ %i.qx, %bb.fx ], [ %i.tt, %bb.ho ], [ %i.tt, %bb.hn ] ; 2 uses
  %i.ug = phi ptr [ %i.qy, %bb.fx ], [ %i.tu, %bb.ho ], [ %i.tu, %bb.hn ] ; 2 uses
  %.pn28.pn.i = phi { ptr, i32 } [ %.pn28.i, %bb.fx ], [ %i.va, %bb.ho ], [ %i.uk, %bb.hn ] ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 625, !dbg !97155 ; 2 uses
  %i.ui = load i8, ptr %i.uh, align 1, !dbg !97155, !range !3074, !noalias !96942, !noundef !11
  %i.uj = trunc nuw i8 %i.ui to i1, !dbg !97155
  br i1 %i.uj, label %bb.jn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i, !dbg !97155

bb.hn:                                            ; preds = %bb.hl
  %i.uk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hm

_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %.noexc98.i, %_RNvXsu_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !97361, !noalias !96942
  store i8 0, ptr %i.uc, align 1, !dbg !97361, !noalias !96942
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 768, !dbg !97361
  %i.um = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !97361
  %i.un = load <2 x i64>, ptr %i.ul, align 8, !dbg !97361, !noalias !96942
  store <2 x i64> %i.un, ptr %i.um, align 16, !dbg !97361, !noalias !96942
  %i.uo = load ptr, ptr %i.k, align 8, !dbg !97361, !noalias !96942, !nonnull !11, !noundef !11
  %i.up = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !97361
  store ptr %i.uo, ptr %i.up, align 16, !dbg !97361, !noalias !96942
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 424, !dbg !97361
  %i.ur = load ptr, ptr %i.uq, align 8, !dbg !97361, !noalias !96942, !nonnull !11, !noundef !11
  %i.us = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !97361
  store ptr %i.ur, ptr %i.us, align 8, !dbg !97361, !noalias !96942
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 608, !dbg !97361
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 600, !dbg !97361
  %i.uv = load i64, ptr %i.uu, align 8, !dbg !97361, !noalias !96942, !noundef !11
  %i.uw = getelementptr inbounds nuw i8, ptr %i.j, i64 48, !dbg !97361
  store i64 %i.uv, ptr %i.uw, align 16, !dbg !97361, !noalias !96942
  %i.ux = load <4 x i32>, ptr %i.ut, align 8, !dbg !97361, !noalias !96942
  store <4 x i32> %i.ux, ptr %i.j, align 16, !dbg !97361, !noalias !96942
  %i.uy = getelementptr inbounds nuw i8, ptr %i.j, i64 5080, !dbg !97361
  store i8 0, ptr %i.uy, align 8, !dbg !97361, !noalias !96942
  %i.uz = invoke noundef nonnull ptr @_RINvMCsidoPH4Qgqxm_12polars_asyncNtB3_14RuntimeManager5spawnNCNCNvMNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetchNtB13_22RecordBatchDataFetcher3run0s1_0EB1b_(ptr noundef nonnull align 8 @_RNvCsidoPH4Qgqxm_12polars_async5ASYNC, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(5088) %i.j)
          to label %.thread.i unwind label %bb.ho, !dbg !97362, !noalias !96995

bb.ho:                                            ; preds = %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream.exit.i
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !97363, !noalias !96942
  br label %bb.hm, !dbg !97364

.thread.i:                                        ; preds = %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtCsidoPH4Qgqxm_12polars_async14RuntimeManagerENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCs2g09Ig8GZd6_13polars_stream.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !97363, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !97149, !noalias !96942
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !97149 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97366
  store i8 0, ptr %i.vc, align 2, !dbg !97366, !noalias !96942
  %.sroa.0162.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 800, !dbg !97149
  store ptr %i.uz, ptr %.sroa.0162.sroa.8.0..sroa_idx.i, align 8, !dbg !97149, !noalias !96942
  %.sroa.0162.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 808, !dbg !97149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0162.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !97149, !noalias !96942
  %.sroa.8163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 840, !dbg !97149
  store ptr %i.vb, ptr %.sroa.8163.0..sroa_idx.i, align 8, !dbg !97149, !noalias !96942
  %.sroa.10165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 849, !dbg !97149 ; 2 uses
  store i8 0, ptr %.sroa.10165.0..sroa_idx.i, align 1, !dbg !97149, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8171.i), !dbg !97039
  %i.vd = getelementptr inbounds nuw i8, ptr %1, i64 632, !dbg !97039
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i), !dbg !97032
  br label %.thread.i.i, !dbg !97032

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit134.i: ; preds = %bb.jo, %bb.jn, %bb.hm
  store i8 0, ptr %i.uh, align 1, !dbg !97155, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !97155, !noalias !96942
  %i.ve = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97156
  %i.vf = load i8, ptr %i.ve, align 2, !dbg !97156, !range !3074, !noalias !96942, !noundef !11
  %i.vg = trunc nuw i8 %i.vf to i1, !dbg !97156
  %i.vh = load ptr, ptr %i.n, align 8, !noalias !96942
  %i.vi = icmp ne ptr %i.vh, null
  %or.cond.not.i = select i1 %i.vg, i1 %i.vi, i1 false, !dbg !97156
  br i1 %or.cond.not.i, label %bb.jp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelinePermitEEB1c_.exit.i, !dbg !97156

bb.hp:                                            ; preds = %bb.gx
  %i.vj = getelementptr inbounds nuw i8, ptr %1, i64 544, !dbg !97024 ; 6 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !dbg !97367, !alias.scope !97369, !noalias !96995, !noundef !11
  %i.vl = icmp eq ptr %i.vk, null, !dbg !97367
  br i1 %i.vl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.hq, !dbg !97367

bb.hq:                                            ; preds = %bb.hp
  invoke void @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_groupNtB5_9WaitTokenNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.vj)
          to label %bb.ht unwind label %bb.hr, !dbg !97372, !noalias !96995

bb.hr:                                            ; preds = %bb.hq
  %i.vm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97374), !dbg !97372, !noalias !96995
  call void @llvm.experimental.noalias.scope.decl(metadata !97377), !dbg !97380, !noalias !96995
  %i.vn = load ptr, ptr %i.vj, align 8, !dbg !97382, !alias.scope !97386, !noalias !96995, !nonnull !11, !noundef !11
  %i.vo = atomicrmw sub ptr %i.vn, i64 1 release, align 8, !dbg !97389, !noalias !97392
  %i.vp = icmp eq i64 %i.vo, 1, !dbg !97393
  br i1 %i.vp, label %bb.hs, label %.body100.i, !dbg !97393

bb.hs:                                            ; preds = %bb.hr
  fence acquire, !dbg !97394, !noalias !96995
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group14WaitGroupInnerE9drop_slowCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.vj) #41
          to label %.body100.i unwind label %bb.hv, !dbg !97396, !noalias !96995

bb.ht:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !97397), !dbg !97372, !noalias !96995
  call void @llvm.experimental.noalias.scope.decl(metadata !97400), !dbg !97403, !noalias !96995
  %i.vq = load ptr, ptr %i.vj, align 8, !dbg !97405, !alias.scope !97409, !noalias !96995, !nonnull !11, !noundef !11
  %i.vr = atomicrmw sub ptr %i.vq, i64 1 release, align 8, !dbg !97410, !noalias !97413
  %i.vs = icmp eq i64 %i.vr, 1, !dbg !97414
  br i1 %i.vs, label %bb.hu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97414

bb.hu:                                            ; preds = %bb.ht
  fence acquire, !dbg !97415, !noalias !96995
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group14WaitGroupInnerE9drop_slowCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.vj) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.hw, !dbg !97417

bb.hv:                                            ; preds = %bb.hs
  %i.vt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !97372, !noalias !96995
  unreachable, !dbg !97372

.body100.i:                                       ; preds = %bb.hw, %bb.hs, %bb.hr, %bb.jq, %.body85.i
  %i.vu = phi ptr [ %i.ls, %.body85.i ], [ %i.ls, %bb.jq ], [ %i.lb, %bb.hw ], [ %i.lb, %bb.hs ], [ %i.lb, %bb.hr ]
  %i.vv = phi ptr [ %i.lt, %.body85.i ], [ %i.lt, %bb.jq ], [ %i.lc, %bb.hw ], [ %i.lc, %bb.hs ], [ %i.lc, %bb.hr ]
  %.pn44.i = phi { ptr, i32 } [ %.pn39.pn.pn.pn.i, %.body85.i ], [ %.pn39.pn.pn.pn.i, %bb.jq ], [ %i.vy, %bb.hw ], [ %i.vm, %bb.hs ], [ %i.vm, %bb.hr ]
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 627, !dbg !97024
  store i8 0, ptr %i.vw, align 1, !dbg !97024, !noalias !96942
  %i.vx = getelementptr inbounds nuw i8, ptr %1, i64 488, !dbg !97024
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelineBudgetEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.vx) #38
          to label %bb.hx unwind label %bb.hk, !dbg !97024, !noalias !96995

bb.hw:                                            ; preds = %bb.hu
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body100.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.ht, %bb.hp, %bb.hu
  %i.vz = getelementptr inbounds nuw i8, ptr %1, i64 627, !dbg !97024
  store i8 0, ptr %i.vz, align 1, !dbg !97024, !noalias !96942
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 488, !dbg !97024
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelineBudgetEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.wa)
          to label %bb.hz unwind label %bb.hy, !dbg !97024, !noalias !96995

bb.hx:                                            ; preds = %bb.hy, %.body100.i
  %i.wb = phi ptr [ %i.we, %bb.hy ], [ %i.vu, %.body100.i ]
  %i.wc = phi ptr [ %i.wf, %bb.hy ], [ %i.vv, %.body100.i ]
  %.pn46.i = phi { ptr, i32 } [ %i.wg, %bb.hy ], [ %.pn44.i, %.body100.i ]
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !97024
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_(ptr noalias noundef align 8 dereferenceable(8) %i.wd) #38
          to label %.body103.i unwind label %bb.hk, !dbg !97024, !noalias !96995

bb.hy:                                            ; preds = %bb.iy, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.we = phi ptr [ %i.rc, %bb.iy ], [ %i.lb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i ]
  %i.wf = phi ptr [ %i.rd, %bb.iy ], [ %i.lc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i ]
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.hz:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 472, !dbg !97024 ; 5 uses
  invoke void @_RNvXs9_NtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chanINtB5_2TxTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB2m_6option6OptionNtNtNtB2Z_6shared15pipeline_budget14PipelinePermitEENtNtB7_7bounded9SemaphoreENtNtNtB2m_3ops4drop4Drop4dropB33_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wh)
          to label %bb.ic unwind label %bb.ia, !dbg !97418, !noalias !96995

bb.ia:                                            ; preds = %bb.hz
  %i.wi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97421), !dbg !97418, !noalias !96995
  call void @llvm.experimental.noalias.scope.decl(metadata !97424), !dbg !97427, !noalias !96995
  %i.wj = load ptr, ptr %i.wh, align 8, !dbg !97429, !alias.scope !97433, !noalias !96995, !nonnull !11, !noundef !11
  %i.wk = atomicrmw sub ptr %i.wj, i64 1 release, align 8, !dbg !97438, !noalias !97441
  %i.wl = icmp eq i64 %i.wk, 1, !dbg !97442
  br i1 %i.wl, label %bb.ib, label %.body103.i, !dbg !97442

bb.ib:                                            ; preds = %bb.ia
  fence acquire, !dbg !97443, !noalias !96995
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB2W_6option6OptionNtNtNtB3z_6shared15pipeline_budget14PipelinePermitEENtNtBL_7bounded9SemaphoreEE9drop_slowB3D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wh) #41
          to label %.body103.i unwind label %bb.ie, !dbg !97445, !noalias !96995

bb.ic:                                            ; preds = %bb.hz
  call void @llvm.experimental.noalias.scope.decl(metadata !97446), !dbg !97418, !noalias !96995
  call void @llvm.experimental.noalias.scope.decl(metadata !97449), !dbg !97452, !noalias !96995
  %i.wm = load ptr, ptr %i.wh, align 8, !dbg !97454, !alias.scope !97458, !noalias !96995, !nonnull !11, !noundef !11
  %i.wn = atomicrmw sub ptr %i.wm, i64 1 release, align 8, !dbg !97459, !noalias !97462
  %i.wo = icmp eq i64 %i.wn, 1, !dbg !97463
  br i1 %i.wo, label %bb.id, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_.exit.i.a, !dbg !97463

bb.id:                                            ; preds = %bb.ic
  fence acquire, !dbg !97464, !noalias !96995
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc4chan4ChanTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB2W_6option6OptionNtNtNtB3z_6shared15pipeline_budget14PipelinePermitEENtNtBL_7bounded9SemaphoreEE9drop_slowB3D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wh) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_.exit.i.a unwind label %bb.ih, !dbg !97466

bb.ie:                                            ; preds = %bb.ib
  %i.wp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !97418, !noalias !96995
  unreachable, !dbg !97418

.body103.i:                                       ; preds = %bb.ih, %bb.ib, %bb.ia, %bb.je, %bb.jd, %bb.hx
  %i.wq = phi ptr [ %i.wb, %bb.hx ], [ %i.rc, %bb.jd ], [ %i.rc, %bb.je ], [ %i.wx, %bb.ih ], [ %i.lb, %bb.ib ], [ %i.lb, %bb.ia ] ; 3 uses
  %i.wr = phi ptr [ %i.wc, %bb.hx ], [ %i.rd, %bb.jd ], [ %i.rd, %bb.je ], [ %i.wy, %bb.ih ], [ %i.lc, %bb.ib ], [ %i.lc, %bb.ia ] ; 3 uses
  %.pn48.i = phi { ptr, i32 } [ %.pn46.i, %bb.hx ], [ %i.zo, %bb.jd ], [ %i.zo, %bb.je ], [ %i.wz, %bb.ih ], [ %i.wi, %bb.ib ], [ %i.wi, %bb.ia ] ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !97024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97467), !dbg !97024
  %i.wt = load ptr, ptr %i.ws, align 8, !dbg !97470, !alias.scope !97467, !noalias !96942, !noundef !11 ; 2 uses
  %i.wu = icmp eq ptr %i.wt, null, !dbg !97470
  br i1 %i.wu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.if, !dbg !97470

bb.if:                                            ; preds = %.body103.i
  %i.wv = atomicrmw sub ptr %i.wt, i64 1 release, align 8, !dbg !97472, !noalias !97477
  %i.ww = icmp eq i64 %i.wv, 1, !dbg !97482
  br i1 %i.ww, label %bb.ig, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97482

bb.ig:                                            ; preds = %bb.if
  fence acquire, !dbg !97483
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSjE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ws) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.hk, !dbg !97485, !noalias !96995

bb.ih:                                            ; preds = %bb.id, %bb.jg
  %i.wx = phi ptr [ %i.lb, %bb.id ], [ %i.rc, %bb.jg ]
  %i.wy = phi ptr [ %i.lc, %bb.id ], [ %i.rd, %bb.jg ]
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %.body103.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_.exit.i.a: ; preds = %bb.ic, %bb.id
  call void @llvm.experimental.noalias.scope.decl(metadata !97486), !dbg !97024
  %i.xa = load ptr, ptr %i.si, align 8, !dbg !97489, !alias.scope !97486, !noalias !96942, !noundef !11 ; 2 uses
  %i.xb = icmp eq ptr %i.xa, null, !dbg !97489
  br i1 %i.xb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i, label %bb.ii, !dbg !97489

bb.ii:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_.exit.i.a
  %i.xc = atomicrmw sub ptr %i.xa, i64 1 release, align 8, !dbg !97491, !noalias !97496
  %i.xd = icmp eq i64 %i.xc, 1, !dbg !97501
  br i1 %i.xd, label %bb.ij, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i, !dbg !97501

bb.ij:                                            ; preds = %bb.ii
  fence acquire, !dbg !97502
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSjE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.si) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i unwind label %bb.il, !dbg !97504, !noalias !96995

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.il, %bb.ig, %bb.if, %.body103.i
  %i.xe = phi ptr [ %i.xk, %bb.il ], [ %i.wq, %bb.ig ], [ %i.wq, %.body103.i ], [ %i.wq, %bb.if ] ; 2 uses
  %i.xf = phi ptr [ %i.xl, %bb.il ], [ %i.wr, %bb.ig ], [ %i.wr, %.body103.i ], [ %i.wr, %bb.if ] ; 2 uses
  %.pn50.i = phi { ptr, i32 } [ %i.xm, %bb.il ], [ %.pn48.i, %bb.ig ], [ %.pn48.i, %.body103.i ], [ %.pn48.i, %bb.if ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !97024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97505), !dbg !97024
  call void @llvm.experimental.noalias.scope.decl(metadata !97508), !dbg !97511
  %i.xh = load ptr, ptr %i.xg, align 8, !dbg !97513, !alias.scope !97517, !noalias !96942, !nonnull !11, !noundef !11
  %i.xi = atomicrmw sub ptr %i.xh, i64 1 release, align 8, !dbg !97518, !noalias !97521
  %i.xj = icmp eq i64 %i.xi, 1, !dbg !97522
  br i1 %i.xj, label %bb.ik, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97522

bb.ik:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i
  fence acquire, !dbg !97523
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xg) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.hk, !dbg !97525, !noalias !96995

bb.il:                                            ; preds = %bb.jj, %bb.ij
  %i.xk = phi ptr [ %i.rc, %bb.jj ], [ %i.lb, %bb.ij ]
  %i.xl = phi ptr [ %i.rd, %bb.jj ], [ %i.lc, %bb.ij ]
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i: ; preds = %bb.ij, %bb.ii, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc7bounded6SenderTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3o_6shared15pipeline_budget14PipelinePermitEEEEB3s_.exit.i.a
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !97024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97526), !dbg !97024
  call void @llvm.experimental.noalias.scope.decl(metadata !97529), !dbg !97532
  %i.xo = load ptr, ptr %i.xn, align 8, !dbg !97534, !alias.scope !97538, !noalias !96942, !nonnull !11, !noundef !11
  %i.xp = atomicrmw sub ptr %i.xo, i64 1 release, align 8, !dbg !97539, !noalias !97542
  %i.xq = icmp eq i64 %i.xp, 1, !dbg !97543
  br i1 %i.xq, label %bb.im, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit110.i, !dbg !97543

bb.im:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i
  fence acquire, !dbg !97544
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xn) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit110.i unwind label %bb.io, !dbg !97546, !noalias !96995

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.io, %bb.ik, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.xr = phi ptr [ %i.xw, %bb.io ], [ %i.xe, %bb.ik ], [ %i.xe, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %i.xs = phi ptr [ %i.xx, %bb.io ], [ %i.xf, %bb.ik ], [ %i.xf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %.pn52.i = phi { ptr, i32 } [ %i.xy, %bb.io ], [ %.pn50.i, %bb.ik ], [ %.pn50.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 392, !dbg !97024 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !dbg !97547, !alias.scope !97549, !noalias !96942, !noundef !11
  %i.xv = icmp eq ptr %i.xu, null, !dbg !97547
  br i1 %i.xv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.in, !dbg !97547

bb.in:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.hk, !dbg !97552, !noalias !96995

bb.io:                                            ; preds = %bb.jk, %bb.im
  %i.xw = phi ptr [ %i.rc, %bb.jk ], [ %i.lb, %bb.im ]
  %i.xx = phi ptr [ %i.rd, %bb.jk ], [ %i.lc, %bb.im ]
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit110.i: ; preds = %bb.im, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSjEEECs2g09Ig8GZd6_13polars_stream.exit107.i
  %i.xz = load ptr, ptr %i.li, align 8, !dbg !97555, !alias.scope !97557, !noalias !96942, !noundef !11
  %i.ya = icmp eq ptr %i.xz, null, !dbg !97555
  br i1 %i.ya, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit113.i, label %bb.ip, !dbg !97555

bb.ip:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit110.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit113.i unwind label %bb.ir, !dbg !97560, !noalias !96995

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.ir, %bb.in, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.yb = phi ptr [ %i.yh, %bb.ir ], [ %i.xr, %bb.in ], [ %i.xr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %i.yc = phi ptr [ %i.yi, %bb.ir ], [ %i.xs, %bb.in ], [ %i.xs, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %.pn54.i = phi { ptr, i32 } [ %i.yj, %bb.ir ], [ %.pn52.i, %bb.in ], [ %.pn52.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit.i ] ; 2 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %1, i64 384, !dbg !97024 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !97563), !dbg !97024
  call void @llvm.experimental.noalias.scope.decl(metadata !97566), !dbg !97569
  %i.ye = load ptr, ptr %i.yd, align 8, !dbg !97571, !alias.scope !97575, !noalias !96942, !nonnull !11, !noundef !11
  %i.yf = atomicrmw sub ptr %i.ye, i64 1 release, align 8, !dbg !97576, !noalias !97579
  %i.yg = icmp eq i64 %i.yf, 1, !dbg !97580
  br i1 %i.yg, label %bb.iq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !97580

bb.iq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i
  fence acquire, !dbg !97581
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.yd) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %bb.hk, !dbg !97583, !noalias !96995

bb.ir:                                            ; preds = %bb.jl, %bb.ip
  %i.yh = phi ptr [ %i.rc, %bb.jl ], [ %i.lb, %bb.ip ]
  %i.yi = phi ptr [ %i.rd, %bb.jl ], [ %i.lc, %bb.ip ]
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit113.i: ; preds = %bb.ip, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCslpwjCj2YNBy_9polars_io5utils11byte_source13DynByteSourceEECs2g09Ig8GZd6_13polars_stream.exit110.i
  call void @llvm.experimental.noalias.scope.decl(metadata !97584), !dbg !97024
  call void @llvm.experimental.noalias.scope.decl(metadata !97587), !dbg !97590
  %i.yk = load ptr, ptr %i.sq, align 8, !dbg !97592, !alias.scope !97596, !noalias !96942, !nonnull !11, !noundef !11
  %i.yl = atomicrmw sub ptr %i.yk, i64 1 release, align 8, !dbg !97597, !noalias !97600
  %i.ym = icmp eq i64 %i.yl, 1, !dbg !97601
  br i1 %i.ym, label %bb.is, label %bb.js, !dbg !97601

bb.is:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit113.i
  fence acquire, !dbg !97602
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataE9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.sq) #41
          to label %bb.js unwind label %bb.it, !dbg !97604, !noalias !96995

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.it, %bb.iq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.yn = phi ptr [ %i.yp, %bb.it ], [ %i.yb, %bb.iq ], [ %i.yb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i ]
  %i.yo = phi ptr [ %i.yq, %bb.it ], [ %i.yc, %bb.iq ], [ %i.yc, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i ]
  %.pn56.i = phi { ptr, i32 } [ %i.yr, %bb.it ], [ %.pn54.i, %bb.iq ], [ %.pn54.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEEECs2g09Ig8GZd6_13polars_stream.exit.i ]
  store i8 2, ptr %i.yn, align 8, !dbg !96937, !noalias !96942
  br label %.body155, !dbg !96937

bb.it:                                            ; preds = %bb.jm, %bb.is
  %i.yp = phi ptr [ %i.rc, %bb.jm ], [ %i.lb, %bb.is ]
  %i.yq = phi ptr [ %i.rd, %bb.jm ], [ %i.lc, %bb.is ]
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read4file12FileMetadataEECs2g09Ig8GZd6_13polars_stream.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtNtNtCskmDBXs7hs3c_5tokio4sync4mpsc5error9SendErrorTINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleIBH_NtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources3ipc23record_batch_data_fetch15RecordBatchDataNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEINtNtB4_6option6OptionNtNtNtB3u_6shared15pipeline_budget14PipelinePermitEEEEEB3y_.exit82.i: ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !97139, !noalias !96942
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 625, !dbg !97155
  store i8 0, ptr %i.ys, align 1, !dbg !97155, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !97155, !noalias !96942
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 626, !dbg !97156
  store i8 0, ptr %i.yt, align 2, !dbg !97156, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !97156, !noalias !96942
  br label %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils5sliceNtB2_18SplitSlicePosition19split_slice_at_file.exit.i, !dbg !97605

bb.iu:                                            ; preds = %bb.gg
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i, !dbg !97607

bb.iv:                                            ; preds = %bb.gg, %bb.gf, %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils5sliceNtB2_18SplitSlicePosition19split_slice_at_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !97609, !noalias !96942
  %i.yv = invoke noundef nonnull align 8 ptr @_RNvCshZ4kA9mlxmz_13polars_config6config()
          to label %bb.ix unwind label %bb.iw, !dbg !97610, !noalias !96995

bb.iw:                                            ; preds = %bb.iv
  %i.yw = landingpad { ptr, i32 }
          cleanup
  br label %.body85.i

bb.ix:                                            ; preds = %bb.iv
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 80, !dbg !97611
  %i.yy = load atomic i8, ptr %i.yx monotonic, align 8, !dbg !97615, !noalias !96995
  %.not213.i = icmp eq i8 %i.yy, 0, !dbg !97617
  br i1 %.not213.i, label %bb.iy, label %bb.ja, !dbg !97610

bb.iy:                                            ; preds = %bb.jb, %bb.ix
  store i8 0, ptr %i.re, align 1, !dbg !97024, !noalias !96942
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 488, !dbg !97024
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCs2g09Ig8GZd6_13polars_stream5nodes10io_sources6shared15pipeline_budget14PipelineBudgetEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.yz)
          to label %bb.jc unwind label %bb.hy, !dbg !97024, !noalias !96995

bb.iz:                                            ; preds = %bb.ja
  %i.za = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !97618, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !97622, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !97623, !noalias !96942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !97624, !noalias !96942
  br label %.body85.i, !dbg !97607

bb.ja:                                            ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !97625, !noalias !96942
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 384, !dbg !97626
  %.val.i = load ptr, ptr %i.zb, align 8, !dbg !97626, !noalias !96942, !nonnull !11, !noundef !11
  %i.zc = getelementptr i8, ptr %.val.i, i64 64, !dbg !97627
  %.val65.i = load i64, ptr %i.zc, align 8, !dbg !97627, !noalias !96995, !noundef !11 ; 2 uses
  %i.zd = icmp ult i64 %.val65.i, 384307168202282326, !dbg !97628
  call void @llvm.assume(i1 %i.zd), !dbg !97630
  store i64 %.val65.i, ptr %i.h, align 8, !dbg !97626, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !97631, !noalias !96942
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 576, !dbg !97632
  %i.zf = load i64, ptr %i.ze, align 8, !dbg !97632, !noalias !96942, !noundef !11 ; 2 uses
  %i.zg = and i64 %i.zf, 4294967295, !dbg !97632
  store i64 %i.zg, ptr %i.g, align 8, !dbg !97632, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !97633, !noalias !96942
  %i.zh = lshr i64 %i.zf, 32, !dbg !97634
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 480, !dbg !97635
  %i.zj = load i64, ptr %i.zi, align 8, !dbg !97635, !noalias !96942, !noundef !11
  %i.zk = add i64 %i.zj, %i.zh, !dbg !97634
  store i64 %i.zk, ptr %i.f, align 8, !dbg !97634, !noalias !96942
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !97636, !noalias !96942
end_hunk_0

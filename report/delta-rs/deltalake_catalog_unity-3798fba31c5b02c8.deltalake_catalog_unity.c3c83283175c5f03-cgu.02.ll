Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.02?download=true
inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_:bb.a
.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cw, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cx = icmp eq i64 %i.cp, %i.bs
  br i1 %i.cx, label %.loopexit268, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cp, 7
  %or.cond.old.i = or i1 %i.co, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit268

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cw, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val22.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cy = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cy, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cz, align 8, !noundef !3 ; 2 uses
  %i.da = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.da, align 8, !noundef !3
  %i.db = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.db, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.dc = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %i.dd = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.de = and i64 %i.cp, 4
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ugt i64 %i.cp, 7
  %or.cond.i = or i1 %i.co, %i.dg
  %or.cond47.i = and i1 %i.df, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit268

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !218
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2L_10ValueEntryB2j_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cp, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dh = load i64, ptr %i.a, align 8, !range !9, !noalias !218, !noundef !3
  %i.di = icmp eq i64 %i.dh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !218
  br i1 %i.di, label %.loopexit268, label %.backedge.i.backedge

.loopexit268:                                     ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dj = phi i64 [ %i.bs, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %.sroa.0.2.i216219 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %i.dk = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.dl = load i64, ptr %i.i, align 8, !range !9, !noundef !3
  %i.dm = icmp eq i64 %i.dl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = icmp eq i64 %i.bq, 0
  %i.do = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dn, %i.do
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dp = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dp, ptr %i.k, align 8
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtB3d_10ValueEntryB2L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uEB4h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.ds = icmp eq ptr %i.bk, %i.bh
  br i1 %i.ds, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.du = trunc nuw i8 %i.aa to i1
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !11

.noexc65:                                         ; preds = %bb.ba
  %i.dy = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dt monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dz = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.eo, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ec = trunc nuw i8 %i.aa to i1
  br i1 %i.ec, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.ed = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ee = and i64 %i.ed, 9223372036854775807
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.eg = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.eg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.eb monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.eh = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !8

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ek = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.el)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.em = load ptr, ptr %i.u, align 8
  store ptr %i.em, ptr %i.m, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.en, align 8, !range !10, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

4:                                                ; preds = %bb.bi, %bb.bo, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.ep = load i64, ptr %i.n, align 8, !range !9, !alias.scope !220, !noundef !3
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.er, align 8, !alias.scope !220, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.es, align 8, !range !12, !alias.scope !220, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.eu = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eq, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ev = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !220
  %i.ew = and i64 %i.ev, 9223372036854775807
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.ey = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ey, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.et monotonic, align 4, !noalias !220
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ez = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !220
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !220
  %i.fc = and i64 %i.fb, 9223372036854775807
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %bb.br
  %i.fe = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fe, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.et monotonic, align 4, !noalias !220
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.ff = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !220
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !9, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !10, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !12, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !236
  store i64 0, ptr %i.h, align 8, !noalias !236
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !236
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !236
  store i64 %i.ag, ptr %i.g, align 8, !noalias !236
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !236
  %i.ai = load i64, ptr %i.h, align 8, !range !9, !alias.scope !237, !noalias !236, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !236, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !9, !noalias !236, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !236
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !236
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !236, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE11with_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !238
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !238 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !8

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1F_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !236
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !236
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_5OwnedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !9, !noalias !236, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !236, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !236
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !236
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !236
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !236, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !236
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE5derefCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !236
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !9, !alias.scope !239, !noalias !236, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.au, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ay
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cw, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cx = icmp eq i64 %i.cp, %i.bs
  br i1 %i.cx, label %.loopexit268, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cp, 7
  %or.cond.old.i = or i1 %i.co, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit268

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cw, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val22.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cy = icmp eq ptr %.val.i, %.val22.i
  br i1 %i.cy, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cz = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i = load i64, ptr %i.cz, align 8, !noundef !3 ; 2 uses
  %i.da = getelementptr i8, ptr %.val22.i, i64 32
  %.val4.i.i.i = load i64, ptr %i.da, align 8, !noundef !3
  %i.db = icmp eq i64 %.val2.i.i.i, %.val4.i.i.i
  br i1 %i.db, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.at
  %i.dc = getelementptr i8, ptr %.val22.i, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %i.dd = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i = load ptr, ptr %i.dd, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val3.i.i.i, i64 %.val2.i.i.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not46.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ true, %.noexc62 ]
  br label %.backedge.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as
  %i.de = and i64 %i.cp, 4
  %i.df = icmp ne i64 %i.de, 0
  %i.dg = icmp ugt i64 %i.cp, 7
  %or.cond.i = or i1 %i.co, %i.dg
  %or.cond47.i = and i1 %i.df, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit268

bb.au:                                            ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !240
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cp, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dh = load i64, ptr %i.a, align 8, !range !9, !noalias !240, !noundef !3
  %i.di = icmp eq i64 %i.dh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !240
  br i1 %i.di, label %.loopexit268, label %.backedge.i.backedge

.loopexit268:                                     ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dj = phi i64 [ %i.bs, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %.sroa.0.2.i216219 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  %i.dk = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread44.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.dl = load i64, ptr %i.i, align 8, !range !9, !noundef !3
  %i.dm = icmp eq i64 %i.dl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dm, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dn = icmp eq i64 %i.bq, 0
  %i.do = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dn, %i.do
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.dp = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.dp, ptr %i.k, align 8
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2i_6string6StringEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.ds = icmp eq ptr %i.bk, %i.bh
  br i1 %i.ds, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.du = trunc nuw i8 %i.aa to i1
  br i1 %i.du, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dv = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dw = and i64 %i.dv, 9223372036854775807
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !11

.noexc65:                                         ; preds = %bb.ba
  %i.dy = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dy, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dt monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dz = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.eo, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ec = trunc nuw i8 %i.aa to i1
  br i1 %i.ec, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.ed = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ee = and i64 %i.ed, 9223372036854775807
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.eg = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.eg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.eb monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.eh = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ei = icmp eq i32 %i.eh, 2
  br i1 %i.ei, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !8

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ek = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.el)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.em = load ptr, ptr %i.u, align 8
  store ptr %i.em, ptr %i.m, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.en, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.en, align 8, !range !10, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

4:                                                ; preds = %bb.bi, %bb.bo, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.ep = load i64, ptr %i.n, align 8, !range !9, !alias.scope !242, !noundef !3
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.er, align 8, !alias.scope !242, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.es, align 8, !range !12, !alias.scope !242, !noundef !3
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.eu = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.eq, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ev = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !242
  %i.ew = and i64 %i.ev, 9223372036854775807
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.ey = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ey, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.et monotonic, align 4, !noalias !242
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ez = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !242
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.eu, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fb = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !242
  %i.fc = and i64 %i.fb, 9223372036854775807
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %bb.br
  %i.fe = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fe, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.et monotonic, align 4, !noalias !242
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.ff = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !242
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !9, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !10, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bi, label %bb.bj, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !12, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !258
  store i64 0, ptr %i.h, align 8, !noalias !258
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !258
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !258
  store i64 %i.ag, ptr %i.g, align 8, !noalias !258
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !258
  %i.ai = load i64, ptr %i.h, align 8, !range !9, !alias.scope !259, !noalias !258, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !258, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !9, !noalias !258, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !258
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !258
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !258, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE11with_lengthB2p_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !260
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !260 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !8

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBP_6future11invalidator9PredicateB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2Y_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !258
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !258
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1R_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !9, !noalias !258, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !258, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !258
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !258
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !258
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !258, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !258
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE5derefB3f_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !258
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !9, !alias.scope !261, !noalias !258, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.au, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ay
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_:bb.a
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cw
  br label %._crit_edge.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i
  store i64 %i.cr, ptr %i.b, align 8, !noalias !262
  %i.cy = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB39_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc61 unwind label %.body.thread84.loopexit.split-lp.loopexit ; 3 uses

.noexc61:                                         ; preds = %bb.ap
  %.not20.i = icmp eq ptr %i.cy, null
  br i1 %.not20.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc61
  %i.cz = icmp eq i64 %i.cr, %i.bs
  br i1 %i.cz, label %.loopexit268, label %bb.as

bb.ar:                                            ; preds = %.noexc61
  %.old.i = icmp ugt i64 %i.cr, 7
  %or.cond.old.i = or i1 %i.cq, %.old.i
  br i1 %or.cond.old.i, label %bb.au, label %.loopexit268

bb.as:                                            ; preds = %bb.aq
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %.val22.i = load i64, ptr %i.da, align 8, !noundef !3 ; 2 uses
  %.val24.i = load i64, ptr %i.co, align 8, !noundef !3
  %i.db = icmp eq i64 %.val22.i, %.val24.i
  br i1 %i.db, label %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %.backedge.i.backedge

_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.val23.i = load ptr, ptr %i.cp, align 8, !nonnull !3, !noundef !3
  %i.dc = getelementptr i8, ptr %i.cy, i64 8
  %.val.i = load ptr, ptr %i.dc, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val23.i, i64 %.val22.i)
  %.not46.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not46.i, label %bb.at, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.as, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.as ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.at:                                            ; preds = %_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.dd = and i64 %i.cr, 4
  %i.de = icmp ne i64 %i.dd, 0
  %i.df = icmp ugt i64 %i.cr, 7
  %or.cond.i = or i1 %i.cq, %i.df
  %or.cond47.i = and i1 %i.de, %or.cond.i
  br i1 %or.cond47.i, label %bb.au, label %.loopexit268

bb.au:                                            ; preds = %bb.at, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !262
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1L_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3a_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cr, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.au
  %i.dg = load i64, ptr %i.a, align 8, !range !9, !noalias !262, !noundef !3
  %i.dh = icmp eq i64 %i.dg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !262
  br i1 %i.dh, label %.loopexit268, label %.backedge.i.backedge

.loopexit268:                                     ; preds = %bb.at, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.di = phi i64 [ %i.bs, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %bb.at ]
  %.sroa.0.2.i216219 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.at ]
  %i.dj = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.av:                                            ; preds = %.loopexit
  %i.dk = load i64, ptr %i.i, align 8, !range !9, !noundef !3
  %i.dl = icmp eq i64 %i.dk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dl, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dm = icmp eq i64 %i.bq, 0
  %i.dn = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dm, %i.dn
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.do = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.do, ptr %i.k, align 8
  %i.dp = and i64 %i.do, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1j_6future11invalidator9PredicateB2d_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uEB3C_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit: ; preds = %bb.ax, %bb.w, %bb.ay, %bb.aw
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.aw ], [ %.sroa.6.2, %bb.ay ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ax ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.aw ], [ %.sroa.412.2, %bb.ay ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ax ]
  %i.dr = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dr, label %._crit_edge, label %bb.w

bb.az:                                            ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dt = trunc nuw i8 %i.aa to i1
  br i1 %i.dt, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !11

.noexc65:                                         ; preds = %bb.ba
  %i.dx = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.dx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bb, %.noexc65, %bb.ba, %bb.az
  %i.dy = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.dz = icmp eq i32 %i.dy, 2
  br i1 %i.dz, label %bb.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bc:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bc, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bc ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bk, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bg, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.en, %bb.bk ], [ %eh.lpad-body82, %bb.bg ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.eb = trunc nuw i8 %i.aa to i1
  br i1 %i.eb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bd

bb.bd:                                            ; preds = %.body.thread
  %i.ec = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be, !prof !11

bb.be:                                            ; preds = %bb.bd
  %i.ef = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bh

.noexc68:                                         ; preds = %bb.be
  br i1 %i.ef, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf

bb.bf:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.ea monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bf, %.noexc68, %bb.bd, %.body.thread
  %i.eg = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.eh = icmp eq i32 %i.eg, 2
  br i1 %i.eh, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !8

bb.bg:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bk, %4
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bi:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ej = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.ek)
          to label %bb.bl unwind label %4

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.el = load ptr, ptr %i.u, align 8
  store ptr %i.el, ptr %i.m, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.en = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.em, align 8, !range !10, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

4:                                                ; preds = %bb.bi, %bb.bo, %bb.bs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.eo = load i64, ptr %i.n, align 8, !range !9, !alias.scope !264, !noundef !3
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.eq, align 8, !alias.scope !264, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.er, align 8, !range !12, !alias.scope !264, !noundef !3
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.et = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.ep, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.et, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.eu = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !264
  %i.ev = and i64 %i.eu, 9223372036854775807
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo, !prof !11

bb.bo:                                            ; preds = %bb.bn
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bo
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.es monotonic, align 4, !noalias !264
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bp, %.noexc72, %bb.bn, %bb.bm
  %i.ey = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !264
  %i.ez = icmp eq i32 %i.ey, 2
  br i1 %i.ez, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bq:                                            ; preds = %bb.bl
  br i1 %i.et, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !264
  %i.fb = and i64 %i.fa, 9223372036854775807
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs, !prof !11

bb.bs:                                            ; preds = %bb.br
  %i.fd = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bs
  br i1 %i.fd, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.es monotonic, align 4, !noalias !264
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bt, %.noexc73, %bb.br, %bb.bq
  %i.fe = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !264
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE8try_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull align 4 %i.r)
  %i.s = load i64, ptr %i.o, align 8, !range !9, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !10, !noundef !3 ; 2 uses
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.bj, label %bb.bk, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !3, !align !5, !noundef !3 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !12, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !280
  store i64 0, ptr %i.h, align 8, !noalias !280
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !280
  %i.ag = load atomic i64, ptr %i.ac acquire, align 8, !noalias !280
  store i64 %i.ag, ptr %i.g, align 8, !noalias !280
  %i.ah = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.e unwind label %bb.s       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !280
  %i.ai = load i64, ptr %i.h, align 8, !range !9, !alias.scope !281, !noalias !280, !noundef !3
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.v unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.e
  %i.ak = load i64, ptr %i.ad, align 8, !noalias !280, !noundef !3
  %i.al = invoke noundef i64 @_RNvMs7_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketNtB5_8RehashOp7new_len(i8 noundef range(i8 0, 4) %3, i64 noundef %i.ak)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.am = load i64, ptr %i.h, align 8, !range !9, !noalias !280, !noundef !3
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.ab, align 8, !noalias !280
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !280
  %i.ap = load i64, ptr %i.ae, align 8, !noalias !280, !noundef !3
  %i.aq = add i64 %i.ap, 1
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE11with_lengthB4N_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, i64 noundef %i.aq, i64 noundef %i.al)
          to label %.noexc52 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %bb.k
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !282
  %i.ar = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 48, i64 noundef 8) #23, !noalias !282 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o, !prof !8

bb.l:                                             ; preds = %.noexc52
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #22
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1G_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB56_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %.noexc52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.av = ptrtoint ptr %i.ar to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !280
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
  %.sroa.03.0.i = phi i64 [ %i.ao, %bb.j ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !280
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1X_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB5F_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.ac, i64 noundef 0, i64 noundef %.sroa.03.0.i, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc53 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %i.f, align 8, !range !9, !noalias !280, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc53
  %i.ay = load i64, ptr %i.af, align 8, !noalias !280, !noundef !3
  store i64 1, ptr %i.h, align 8, !noalias !280
  store i64 %i.ay, ptr %i.ab, align 8, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !280
  br label %bb.d

bb.r:                                             ; preds = %.noexc53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !280
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !280, !noundef !3
  store i64 %i.ba, ptr %i.e, align 8, !noalias !280
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE5derefB5E_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %.noexc54 unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !280
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %bb.d
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i64, ptr %i.h, align 8, !range !9, !alias.scope !283, !noalias !280, !noundef !3
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body.thread unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.thread84.loopexit:                          ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit:        ; preds = %bb.av, %bb.ap
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ak, %bb.y, %bb.ah, %.loopexit
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.az
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.k
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.aj, %bb.g, %bb.r, %bb.ad, %bb.z, %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_:bb.a
  %.old.i = icmp ugt i64 %i.cq, 7
  %or.cond.old.i = or i1 %i.cp, %.old.i
  br i1 %or.cond.old.i, label %bb.av, label %.loopexit268

bb.as:                                            ; preds = %bb.aq
  %.val.i = load ptr, ptr %i.cx, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  %.val22.i = load i128, ptr %i.cz, align 8       ; 2 uses
  %.val23.i = load ptr, ptr %i.ci, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %.val24.i = load i128, ptr %i.co, align 8       ; 2 uses
  %i.da = icmp eq ptr %.val.i, %.val23.i
  br i1 %i.da, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.db = getelementptr i8, ptr %.val.i, i64 32
  %.val2.i.i.i.i = load i64, ptr %i.db, align 8, !noundef !3 ; 2 uses
  %i.dc = getelementptr i8, ptr %.val23.i, i64 32
  %.val4.i.i.i.i = load i64, ptr %i.dc, align 8, !noundef !3
  %i.dd = icmp eq i64 %.val2.i.i.i.i, %.val4.i.i.i.i
  br i1 %i.dd, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %.backedge.i.backedge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.at
  %i.de = getelementptr i8, ptr %.val23.i, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.de, align 8, !nonnull !3, !noundef !3
  %i.df = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.df, align 8, !nonnull !3, !noundef !3
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val3.i.i.i.i, i64 %.val2.i.i.i.i)
  %.not.i25.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0
  %i.dg = icmp ne i128 %.val22.i, %.val24.i
  %or.cond47.i = select i1 %.not.i25.i, i1 true, i1 %i.dg
  br i1 %or.cond47.i, label %.backedge.i.backedge, label %bb.au

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.as
  %.old.not.i = icmp eq i128 %.val22.i, %.val24.i
  br i1 %.old.not.i, label %bb.au, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.at, %.noexc62
  %.sroa.20.0.i.be = phi i1 [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ false, %bb.at ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ true, %.noexc62 ]
  br label %.backedge.i

bb.au:                                            ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBC_6string6StringENtNtB7_3any6TypeIdENtNtB7_3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.dh = and i64 %i.cq, 4
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = icmp ugt i64 %i.cq, 7
  %or.cond.i = or i1 %i.cp, %i.dj
  %or.cond48.i = and i1 %i.di, %or.cond.i
  br i1 %or.cond48.i, label %bb.av, label %.loopexit268

bb.av:                                            ; preds = %bb.au, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !284
  invoke void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1R_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %.sroa.11.1.i, i64 noundef %i.cq, i64 noundef range(i64 4, 0) %i.bs, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
          to label %.noexc62 unwind label %.body.thread84.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.av
  %i.dk = load i64, ptr %i.a, align 8, !range !9, !noalias !284, !noundef !3
  %i.dl = icmp eq i64 %i.dk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !284
  br i1 %i.dl, label %.loopexit268, label %.backedge.i.backedge

.loopexit268:                                     ; preds = %bb.au, %bb.ar, %bb.aq, %._crit_edge.i.i, %bb.an, %.noexc62
  %i.dm = phi i64 [ %i.bs, %.noexc62 ], [ %.sroa.6.1150, %bb.an ], [ %.sroa.6.1150, %._crit_edge.i.i ], [ %.sroa.6.1150, %bb.aq ], [ %.sroa.6.1150, %bb.ar ], [ %.sroa.6.1150, %bb.au ]
  %.sroa.0.2.i216219 = phi i64 [ 1, %.noexc62 ], [ 0, %bb.an ], [ 0, %._crit_edge.i.i ], [ 0, %bb.aq ], [ 0, %bb.ar ], [ 0, %bb.au ]
  %i.dn = phi i64 [ %.sroa.8.1.i, %.noexc62 ], [ %.sroa.412.1151, %bb.an ], [ %.sroa.412.1151, %._crit_edge.i.i ], [ %.sroa.412.1151, %bb.aq ], [ %.sroa.412.1151, %bb.ar ], [ %.sroa.412.1151, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.aw:                                            ; preds = %.loopexit
  %i.do = load i64, ptr %i.i, align 8, !range !9, !noundef !3
  %i.dp = icmp eq i64 %i.do, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.dp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dq = icmp eq i64 %i.bq, 0
  %i.dr = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dq, %i.dr
  %.not37 = icmp ne i64 %.sroa.010.1, 0
  %or.cond42 = or i1 %or.cond41, %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ds = load atomic i64, ptr %.sroa.02.0157 acquire, align 8 ; 3 uses
  store i64 %i.ds, ptr %i.k, align 8
  %i.dt = and i64 %i.ds, 1
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph153, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_RINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2j_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1j_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1j_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uEB61_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.bo)
          to label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit unwind label %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit: ; preds = %bb.ay, %bb.w, %bb.az, %bb.ax
  %.sroa.6.5 = phi i64 [ %.sroa.6.2, %bb.ax ], [ %.sroa.6.2, %bb.az ], [ %.sroa.6.0155, %bb.w ], [ %.sroa.6.2, %bb.ay ]
  %.sroa.412.5 = phi i64 [ %.sroa.412.2, %bb.ax ], [ %.sroa.412.2, %bb.az ], [ %.sroa.412.0156, %bb.w ], [ %.sroa.412.2, %bb.ay ]
  %i.dv = icmp eq ptr %i.bk, %i.bh
  br i1 %i.dv, label %._crit_edge, label %bb.w

bb.ba:                                            ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.dx = trunc nuw i8 %i.aa to i1
  br i1 %i.dx, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dz = and i64 %i.dy, 9223372036854775807
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc65, !prof !11

.noexc65:                                         ; preds = %bb.bb
  %i.eb = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.eb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc65
  store atomic i8 1, ptr %i.dw monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bc, %.noexc65, %bb.bb, %bb.ba
  %i.ec = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.ed = icmp eq i32 %i.ec, 2
  br i1 %i.ed, label %bb.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bd:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bd, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.sroa.0.0.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.sroa.0.0.i, %bb.bd ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70: ; preds = %bb.bl, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, %bb.bh, %4
  %.pn.pn = phi { ptr, i32 } [ %5, %4 ], [ %eh.lpad-body82, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67 ], [ %i.er, %bb.bl ], [ %eh.lpad-body82, %bb.bh ]
  resume { ptr, i32 } %.pn.pn

.body.thread:                                     ; preds = %.body.thread84.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread84.loopexit.split-lp.loopexit, %bb.m, %bb.s, %bb.t
  %eh.lpad-body82 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.split-lp.i, %bb.t ], [ %i.at, %bb.m ], [ %lpad.loopexit, %.body.thread84.loopexit ], [ %lpad.loopexit90, %.body.thread84.loopexit.split-lp.loopexit ], [ %lpad.loopexit93, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread84.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ef = trunc nuw i8 %i.aa to i1
  br i1 %i.ef, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.be

bb.be:                                            ; preds = %.body.thread
  %i.eg = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.eh = and i64 %i.eg, 9223372036854775807
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bf, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.ej = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc68 unwind label %bb.bi

.noexc68:                                         ; preds = %bb.bf
  br i1 %i.ej, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67, label %bb.bg

bb.bg:                                            ; preds = %.noexc68
  store atomic i8 1, ptr %i.ee monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67: ; preds = %bb.bg, %.noexc68, %bb.be, %.body.thread
  %i.ek = atomicrmw xchg ptr %i.y, i32 0 release, align 4
  %i.el = icmp eq i32 %i.ek, 2
  br i1 %i.el, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70, !prof !8

bb.bh:                                            ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i67
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bl, %4
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bj:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.en = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexuE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull align 4 %i.eo)
          to label %bb.bm unwind label %4

bb.bk:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ep = load ptr, ptr %i.u, align 8
  store ptr %i.ep, ptr %i.m, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i8 %i.w, ptr %i.eq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync6poisonINtB5_12TryLockErrorINtNtB5_5mutex10MutexGuarduEENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.ab unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.er = landingpad { ptr, i32 }
          cleanup
  %.val50 = load ptr, ptr %i.m, align 8
  %.val51 = load i8, ptr %i.eq, align 8, !range !10, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val50, i8 %.val51) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

4:                                                ; preds = %bb.bj, %bb.bp, %bb.bt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  %5 = landingpad { ptr, i32 }
          cleanup
  %.val46 = load ptr, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val46, i8 2) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70 unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.es = load i64, ptr %i.n, align 8, !range !9, !alias.scope !286, !noundef !3
  %i.et = icmp eq i64 %i.es, 0
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i71 = load ptr, ptr %i.eu, align 8, !alias.scope !286, !nonnull !3, !align !5, !noundef !3 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val1.i = load i8, ptr %i.ev, align 8, !range !12, !alias.scope !286, !noundef !3
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i71, i64 4 ; 2 uses
  %i.ex = trunc nuw i8 %.val1.i to i1             ; 2 uses
  br i1 %i.et, label %bb.bn, label %bb.br

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ey = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !286
  %i.ez = and i64 %i.ey, 9223372036854775807
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
  %i.fb = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc72 unwind label %4

.noexc72:                                         ; preds = %bb.bp
  br i1 %i.fb, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc72
  store atomic i8 1, ptr %i.ew monotonic, align 4, !noalias !286
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.bq, %.noexc72, %bb.bo, %bb.bn
  %i.fc = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !286
  %i.fd = icmp eq i32 %i.fc, 2
  br i1 %i.fd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.br:                                            ; preds = %bb.bm
  br i1 %i.ex, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fe = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !286
  %i.ff = and i64 %i.fe, 9223372036854775807
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bt, !prof !11

bb.bt:                                            ; preds = %bb.bs
  %i.fh = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc73 unwind label %4

.noexc73:                                         ; preds = %bb.bt
  br i1 %i.fh, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %.noexc73
  store atomic i8 1, ptr %i.ew monotonic, align 4, !noalias !286
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.bu, %.noexc73, %bb.bs, %bb.br
  %i.fi = atomicrmw xchg ptr %.val.i71, i32 0 release, align 4, !noalias !286
  %i.fj = icmp eq i32 %i.fi, 2
  br i1 %i.fj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i71)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs2pqxYH9ZEk8_3std4sync6poison12TryLockErrorINtNtBJ_5mutex10MutexGuarduEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %0)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.f, ptr %i.h, align 8
  store ptr %0, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = invoke noundef i64 @_RINvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB6_5InneruE6notifyNtNtB8_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.i, i64 noundef %1)
          to label %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.j

_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  invoke void @_RNvXs0_NvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.g, align 8, !alias.scope !289, !nonnull !3, !align !4, !noundef !3
  %.val3.i = load i8, ptr %i.h, align 8, !range !12, !alias.scope !289, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val2.i, i8 %.val3.i) #24
          to label %common.resume unwind label %bb.i

bb.d:                                             ; preds = %_RNCINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB9_5InneruE6notifyNtNtB9_6notify6NotifyE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !289, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.val1.i = load i8, ptr %i.h, align 8, !range !12, !alias.scope !289, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 4
  %i.n = trunc nuw i8 %.val1.i to i1
  br i1 %i.n, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !289
  %i.p = and i64 %i.o, 9223372036854775807
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.r, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.m monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = atomicrmw xchg ptr %.val.i, i32 0 release, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.h:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtBQ_5InnerpE10with_inner8ListLockuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.j

bb.j:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6notifyNtNtB7_6notify6NotifyECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_RINvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE10with_innerjNCINvB2_6notifyNtNtB7_6notify6NotifyE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtBJ_5InneruEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NvCseKAYRfgxGTE_14event_listener1__INtB7_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !321, !nonnull !3, !noundef !3
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !321
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !324, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !324
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) #24
          to label %bb.m unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.d, %bb.e
  %i.k = load i64, ptr %0, align 8, !range !9, !noundef !3
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.n = load i8, ptr %i.m, align 8, !range !13, !alias.scope !331, !noundef !3
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !333, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !333, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !333, !nonnull !3, !noundef !3
  tail call void %i.t(ptr noundef %.val1.i.i.i.i.i.i.i.i.i), !noalias !333, !inline_history !312
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !337, !nonnull !3, !noundef !3
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !337
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCseKAYRfgxGTE_14event_listener3sys8ListeneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, %bb.g, %bb.i, %bb.j, %bb.k
  ret void

bb.l:                                             ; preds = %bb.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
end_hunk_3

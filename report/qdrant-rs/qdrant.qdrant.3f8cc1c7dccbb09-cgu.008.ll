Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.008?download=true
inline.NumInlined: 9683
inline.NumDeleted: 3881
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_RNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB6_5Inner14read_wal_batch0Csl8OoimOLbh_6qdrant:bb.a

bb.as:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %.sroa.989.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(232) %.sroa.1366.sroa.9, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.787.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1265, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.888.sroa.7.0..sroa.888.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1366.sroa.8, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1070.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1070.sroa.10.sroa.9)
  %i.cs = add i64 %.sroa.4.0.i, %.sroa.02.0132    ; 2 uses
  store i64 %.sroa.654.0131, ptr %i.k, align 8
  store i64 %.sroa.5.0.i, ptr %i.bs, align 8
  store i64 %.sroa.8.0.i, ptr %.sroa.686.0..sroa_idx, align 8
  store i64 %.sroa.12.i.sroa.0.0, ptr %.sroa.888.0..sroa_idx, align 8
  store i8 %.sroa.12.i.sroa.4.0, ptr %.sroa.888.sroa.6.0..sroa.888.0..sroa_idx.sroa_idx, align 8
  %i.ct = load i64, ptr %i.bl, align 8, !alias.scope !12944, !noalias !12949, !noundef !11 ; 3 uses
  %i.cu = load i64, ptr %i.m, align 8, !range !23, !alias.scope !12944, !noalias !12949, !noundef !11
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.aw unwind label %bb.au, !noalias !12949

bb.au:                                            ; preds = %bb.at
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5QaNqjAn6vc_5shard10operations26CollectionUpdateOperationsECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.bs)
          to label %.body40 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.body40:                                          ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bb

bb.aw:                                            ; preds = %bb.at, %bb.as
  %i.cy = load ptr, ptr %i.bk, align 8, !alias.scope !12944, !noalias !12949, !nonnull !11, !noundef !11
  %i.cz = getelementptr inbounds nuw [296 x i8], ptr %i.cy, i64 %i.ct
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cz, ptr noundef nonnull align 8 dereferenceable(296) %i.k, i64 296, i1 false)
  %i.da = add i64 %i.ct, 1                        ; 5 uses
  store i64 %i.da, ptr %i.bl, align 8, !alias.scope !12944, !noalias !12949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.db = icmp ugt i64 %i.cs, 33554432
  br i1 %i.db, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dc = icmp ult i64 %i.da, 31160040665049919
  call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ugt i64 %i.da, 9999
  br i1 %i.dd, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1265)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.9)
  %exitcond.not = icmp eq i64 %i.bt, %.sroa.758.0.copyload
  br i1 %exitcond.not, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread, label %bb.z

bb.az:                                            ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1265)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.9)
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread: ; preds = %bb.ay, %._RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread_crit_edge, %bb.az
  %.val30 = phi i64 [ %.val30.pre, %._RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread_crit_edge ], [ %i.da, %bb.az ], [ %i.da, %bb.ay ] ; 2 uses
  %i.de = icmp ult i64 %.val30, 31160040665049919
  call void @llvm.assume(i1 %i.de)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsd_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB11_10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.ba

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit49: ; preds = %bb.g, %bb.n, %bb.o, %bb.s, %bb.bh, %bb.ba
  %.pn25 = phi { ptr, i32 } [ %i.df, %bb.ba ], [ %.pn22.pn, %bb.bh ], [ %i.aj, %bb.n ], [ %i.aa, %bb.g ], [ %i.av, %bb.s ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 2, ptr %i.o, align 8
  resume { ptr, i32 } %.pn25

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit49

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangeyENCNvMs_NtCs5QaNqjAn6vc_5shard3walINtB1v_8SerdeWalNtNtB1x_10operations21OperationWithClockTagE20read_range_with_size0ENtNtNtB9_6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant.exit.thread
  %i.dg = icmp uge i64 %.val30, %i.bd
  %i.dh = zext i1 %i.dg to i8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit47

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit47: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit
  %.sroa.792.0 = phi i8 [ %i.dh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.16.sroa.7.0.copyload101, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.591.0 = phi i64 [ %i.bj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.16.sroa.0.0.copyload100, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ]
  %.sroa.090.0 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ], [ %.sroa.1176.24.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %.sroa.090.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false)
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.591.0, ptr %.sroa.591.0..sroa_idx, align 8
  %.sroa.792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.792.0, ptr %.sroa.792.0..sroa_idx, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.893.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.893, i64 7, i1 false)
  br label %common.ret

.body35:                                          ; preds = %bb.bb, %bb.ac, %bb.ad, %bb.am, %bb.x
  %.pn16.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.x ], [ %.pn16.pn, %bb.bb ], [ %i.cn, %bb.am ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.ac ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.body44 unwind label %bb.bg

bb.bb:                                            ; preds = %.body37, %.body40
  %.pn16.pn = phi { ptr, i32 } [ %eh.lpad-body38, %.body37 ], [ %i.cw, %.body40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1265)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.9)
  br label %.body35

bb.bc:                                            ; preds = %_RNCNCNvMs_NtNtCsPYQCUnoTxQ_10collection6shards17queue_proxy_shardNtB8_5Inner14read_wal_batch00Csl8OoimOLbh_6qdrant.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12934
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12934
  %.sroa.1176.24.copyload = load i64, ptr %i.d, align 8, !noalias !12952
  %.sroa.15.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.24..sroa_idx, i64 24, i1 false), !noalias !12952
  %.sroa.16.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.16.sroa.0.0.copyload100 = load i64, ptr %.sroa.16.24..sroa_idx, align 8, !noalias !12952
  %.sroa.16.sroa.7.0..sroa.16.24..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.16.sroa.7.0.copyload101 = load i8, ptr %.sroa.16.sroa.7.0..sroa.16.24..sroa_idx.sroa_idx, align 8, !noalias !12952
  %.sroa.16.sroa.9.0..sroa.16.24..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.sroa.9.0..sroa.16.24..sroa_idx.sroa_idx, i64 7, i1 false), !noalias !12952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12934
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1070.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, i64 24, i1 false), !alias.scope !12953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1070.sroa.10.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.sroa.9, i64 7, i1 false), !alias.scope !12953
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1070.sroa.8, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.893, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1070.sroa.10.sroa.9, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1070.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1070.sroa.10.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1265)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1366.sroa.9)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body44 unwind label %bb.bf

bb.be:                                            ; preds = %bb.bc
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit unwind label %bb.v

bb.bf:                                            ; preds = %bb.bd
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyNtNtCs5QaNqjAn6vc_5shard10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXsd_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB11_10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit47 unwind label %bb.ba

bb.bg:                                            ; preds = %bb.bh, %.body35, %bb.g
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bh:                                            ; preds = %bb.u, %.body44
  %.pn22.pn = phi { ptr, i32 } [ %.pn22, %.body44 ], [ %i.ay, %bb.u ]
  invoke void @_RNvXsd_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB11_10operations21OperationWithClockTagEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuardINtNtCs5QaNqjAn6vc_5shard3wal8SerdeWalNtNtB1u_10operations21OperationWithClockTagEEECsl8OoimOLbh_6qdrant.exit49 unwind label %bb.bg
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtCsl8OoimOLbh_6qdrant6common6healthNtB6_4Task16unhealthy_shards0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.530.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i.i = alloca [80 x i8], align 8    ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.57.i.i.i = alloca [24 x i8], align 8     ; 4 uses
  %i.d = alloca [120 x i8], align 8               ; 16 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.510.i.i = alloca [64 x i8], align 8      ; 4 uses
  %.sroa.57.i.i = alloca [16 x i8], align 1       ; 4 uses
  %i.f = alloca [296 x i8], align 8               ; 39 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [192 x i8], align 8               ; 16 uses
  %.sroa.4.i.i.i = alloca i64, align 8            ; 5 uses
  %.sroa.7.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.4135 = alloca [1032 x i8], align 8       ; 11 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [56 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 12 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 9 uses
  %i.q = alloca [776 x i8], align 8               ; 26 uses
  %i.r = alloca [88 x i8], align 8                ; 14 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 9 uses
  %i.u = alloca [48 x i8], align 8                ; 2 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.9130 = alloca [1032 x i8], align 8       ; 7 uses
  %i.y = alloca [56 x i8], align 8                ; 7 uses
  %i.z = alloca [1040 x i8], align 8              ; 13 uses
  %.sroa.9110 = alloca [16 x i8], align 8         ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !1605, !noundef !11
  switch i8 %i.ab, label %default.unreachable172 [
    i8 0, label %.thread
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.b
    i8 5, label %bb.at
  ]

default.unreachable172:                           ; preds = %_RINvMs2_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB6_7HashMapyNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateE3getyECsl8OoimOLbh_6qdrant.exit, %bb.dn, %bb.dc, %bb.at, %bb.j, %bb.f, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  br label %bb.gm

.thread:                                          ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %1, align 8, !nonnull !11, !align !10, !noundef !11 ; 3 uses
  store ptr %i.ad, ptr %i.ac, align 8, !captures !9261
  %.val43 = load ptr, ptr %i.ad, align 8, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %.val43, i64 760
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11
  store i64 %i.ag, ptr %i.ae, align 8
  %.val42 = load ptr, ptr %i.ad, align 8, !nonnull !11, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.val42, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i8 1, ptr %i.aj, align 8, !alias.scope !12957
  store i64 -1, ptr %i.ai, align 8, !alias.scope !12957
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr %i.ah, ptr %i.ak, align 8
  %.sroa.8106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %i.ai, ptr %.sroa.8106.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 352
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9110)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 352
  br label %.thread26.i

bb.c:                                             ; preds = %.body
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgGgPqgSfnMH_7storage4rbac6AccessECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #24
          to label %.body92 unwind label %bb.as

.body92:                                          ; preds = %bb.c, %bb.gj, %bb.gg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant6common6health5ShardEEB1B_.exit
  %.pn35.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsl8OoimOLbh_6qdrant6common6health5ShardEEB1B_.exit ], [ %i.vc, %bb.gg ], [ %i.ve, %bb.gj ], [ %.pn, %bb.c ]
  store i8 2, ptr %i.aa, align 8
  resume { ptr, i32 } %.pn35.pn.pn.pn.pn.pn

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #25
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @495) #25
  unreachable

.body:                                            ; preds = %bb.ai, %bb.g
  %i.ao = phi ptr [ %i.ay, %bb.g ], [ %i.ap, %bb.ai ]
  %.pn = phi { ptr, i32 } [ %.pn6.i, %bb.g ], [ %i.dc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9110)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtBG_14TableOfContent15all_collections0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ao) #24
          to label %bb.c unwind label %bb.as

bb.f:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1281, !noalias !12960
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9110)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  switch i8 %.pre, label %default.unreachable172 [
    i8 0, label %.thread26.i
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
  ]

.thread26.i:                                      ; preds = %.thread, %bb.f
  %i.ar = phi ptr [ %i.am, %.thread ], [ %i.aq, %bb.f ]
  %i.as = phi ptr [ %i.al, %.thread ], [ %i.ap, %bb.f ] ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !noalias !12960, !nonnull !11, !align !10, !noundef !11 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.av = load ptr, ptr %i.au, align 8, !noalias !12960, !nonnull !11, !align !10, !noundef !11 ; 2 uses
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.at, ptr %.sroa.722.0..sroa_idx.i, align 8, !noalias !12960
  %.sroa.823.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.av, ptr %.sroa.823.0..sroa_idx.i, align 8, !noalias !12960
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 347 ; 2 uses
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 1, !noalias !12960
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 348
  store i24 0, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !12960
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12960
  br label %bb.l

bb.g:                                             ; preds = %.body.i
  store i8 2, ptr %i.ax, align 8, !noalias !12960
  br label %.body

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #25
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @373) #25
          to label %.noexc49 unwind label %bb.ai

.noexc49:                                         ; preds = %bb.i
  unreachable

.body.i:                                          ; preds = %bb.af, %.body.i.i
  %i.ax = phi ptr [ %i.bm, %.body.i.i ], [ %i.aq, %bb.af ]
  %i.ay = phi ptr [ %i.bn, %.body.i.i ], [ %i.ap, %bb.af ]
  %i.az = phi ptr [ %i.bp, %.body.i.i ], [ %i.ba, %bb.af ]
  %.pn6.i = phi { ptr, i32 } [ %.pn13.i.i, %.body.i.i ], [ %i.cz, %bb.af ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsgGgPqgSfnMH_7storage15content_manager3tocNtBG_14TableOfContent40all_collections_with_access_requirements0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.az) #24
          to label %bb.g unwind label %bb.ah, !noalias !12964

bb.j:                                             ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 347 ; 3 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !range !1281, !noalias !12965
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !12960
  switch i8 %.pre.i, label %default.unreachable172 [
    i8 0, label %._crit_edge151
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.k
  ]

._crit_edge151:                                   ; preds = %bb.j
  %.phi.trans.insert152 = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.pre153 = load ptr, ptr %.phi.trans.insert152, align 8, !noalias !12965
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !noalias !12965
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12965
  br label %bb.o

bb.l:                                             ; preds = %._crit_edge151, %.thread26.i
  %i.bb = phi ptr [ %i.ar, %.thread26.i ], [ %i.aq, %._crit_edge151 ]
  %i.bc = phi ptr [ %i.as, %.thread26.i ], [ %i.ap, %._crit_edge151 ]
  %i.bd = phi ptr [ %i.av, %.thread26.i ], [ %.pre155, %._crit_edge151 ]
  %i.be = phi ptr [ %i.at, %.thread26.i ], [ %.pre153, %._crit_edge151 ]
  %i.bf = phi ptr [ %.sroa.10.0..sroa_idx.i, %.thread26.i ], [ %.phi.trans.insert.i, %._crit_edge151 ]
  %i.bg = phi ptr [ %i.aw, %.thread26.i ], [ %i.ba, %._crit_edge151 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.bd, ptr %i.bh, align 8, !noalias !12965, !captures !9261
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bi, ptr noundef nonnull align 4 dereferenceable(3) %i.bj, i64 3, i1 false), !noalias !12965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !12965
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 480
  %.val.i.i = load ptr, ptr %i.bk, align 8, !noalias !12965, !nonnull !11, !noundef !11
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  store ptr %i.bl, ptr %i.bg, align 8, !noalias !12965
  %.sroa.824.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i8 0, ptr %.sroa.824.0..sroa_idx.i.i, align 8, !noalias !12965
  br label %bb.o

.body.i.i:                                        ; preds = %bb.ad, %bb.ab, %bb.z, %bb.v, %bb.u, %bb.p
  %.pn13.i.i = phi { ptr, i32 } [ %i.cx, %bb.ad ], [ %i.cb, %bb.u ], [ %i.cw, %bb.ab ], [ %i.br, %bb.p ], [ %i.cn, %bb.z ], [ %i.cb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !12965
  store i8 2, ptr %i.bo, align 1, !noalias !12965
  br label %.body.i

bb.m:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @376) #25
          to label %.noexc.i unwind label %bb.af, !noalias !12960

end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtCsl8OoimOLbh_6qdrant6common6healthNtB6_4Task16unhealthy_shards0Ba_:bb.a
  br i1 %i.fe, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ff = getelementptr i8, ptr %1, i64 272
  %.val3.i.i.i.i.i75 = load ptr, ptr %i.ff, align 8, !noalias !12997
  %i.fg = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i74, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !13001, !nonnull !11, !noundef !11
  invoke void %i.fh(ptr noundef %.val3.i.i.i.i.i75)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bj, !noalias !13001, !inline_history !1282

bb.bh:                                            ; preds = %bb.be
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i.i.i.i.i76 = load ptr, ptr %i.fi, align 8, !noalias !12997, !align !10, !noundef !11 ; 2 uses
  %i.fj = icmp eq ptr %.val.i.i.i.i.i76, null
  br i1 %i.fj, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fk = getelementptr i8, ptr %1, i64 272
  %.val1.i.i.i.i.i77 = load ptr, ptr %i.fk, align 8, !noalias !12997
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i76, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !13001, !nonnull !11, !noundef !11
  invoke void %i.fm(ptr noundef %.val1.i.i.i.i.i77)
          to label %bb.bl unwind label %bb.bk, !noalias !13001, !inline_history !7045

bb.bj:                                            ; preds = %bb.bg
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13001
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bd, %bb.bc, %bb.bb
  %.val49.i = load ptr, ptr %i.eu, align 8, !noalias !12997, !noundef !11 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.val49.i, i64 32 ; 7 uses
  %i.fq = load atomic i64, ptr %i.fp monotonic, align 8, !noalias !13001 ; 4 uses
  %i.fr = and i64 %i.fq, 8
  %i.fs = icmp ne i64 %i.fr, 0
  %i.ft = icmp ugt i64 %i.fq, -17
  %or.cond.i.i.i.i = or i1 %i.ft, %i.fs
  br i1 %or.cond.i.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !13002

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %bb.bl
  %i.fu = add nuw i64 %i.fq, 16
  %i.fv = cmpxchg weak ptr %i.fp, i64 %i.fq, i64 %i.fu acquire monotonic, align 8, !noalias !13001
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  br i1 %i.fw, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !13003

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %bb.bl
  %i.fx = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.fp, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i unwind label %bb.bm, !noalias !13001 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.fy = ptrtoint ptr %i.fp to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fy)
          to label %.noexc63.i unwind label %bb.bm, !noalias !13001

.noexc63.i:                                       ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i
  %i.fz = or disjoint i64 %i.fy, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.fz)
          to label %bb.bn unwind label %bb.bm, !noalias !13001

bb.bm:                                            ; preds = %.noexc63.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i

bb.bn:                                            ; preds = %.noexc63.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.val49.i, i64 40
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 288
  invoke void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.gc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.gb)
          to label %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i unwind label %bb.bo, !noalias !13001

bb.bo:                                            ; preds = %bb.bn
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.fp) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i unwind label %bb.ch, !noalias !13001

_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.bn
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 1, ptr %i.ge, align 1, !noalias !12997
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fy)
          to label %.noexc66.i unwind label %bb.bq, !noalias !13001

.noexc66.i:                                       ; preds = %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.fz)
          to label %.noexc67.i unwind label %bb.bq, !noalias !13001

.noexc67.i:                                       ; preds = %.noexc66.i
  %i.gf = atomicrmw sub ptr %i.fp, i64 16 release, align 8, !noalias !13001
  %i.gg = and i64 %i.gf, -14
  %i.gh = icmp eq i64 %i.gg, 18
  br i1 %i.gh, label %bb.bp, label %bb.br, !prof !522

bb.bp:                                            ; preds = %.noexc67.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.fp)
          to label %bb.br unwind label %bb.bq, !noalias !13001

bb.bq:                                            ; preds = %bb.bp, %.noexc66.i, %_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.br:                                            ; preds = %bb.bp, %.noexc67.i
  %.val48.i = load ptr, ptr %i.eu, align 8, !noalias !12997, !noundef !11 ; 10 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.val48.i, i64 128 ; 7 uses
  %i.gk = load atomic i64, ptr %i.gj monotonic, align 8, !noalias !13001 ; 4 uses
  %i.gl = and i64 %i.gk, 8
  %i.gm = icmp ne i64 %i.gl, 0
  %i.gn = icmp ugt i64 %i.gk, -17
  %or.cond.i.i.i69.i = or i1 %i.gn, %i.gm
  br i1 %or.cond.i.i.i69.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i, !prof !13002

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i: ; preds = %bb.br
  %i.go = add nuw i64 %i.gk, 16
  %i.gp = cmpxchg weak ptr %i.gj, i64 %i.gk, i64 %i.go acquire monotonic, align 8, !noalias !13001
  %i.gq = extractvalue { i64, i1 } %i.gp, 1
  br i1 %i.gq, label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i, label %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, !prof !13003

_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i, %bb.br
  %i.gr = invoke noundef zeroext i1 @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.gj, i1 noundef zeroext false, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i unwind label %bb.bs, !noalias !13001 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i: ; preds = %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i70.i
  %i.gs = ptrtoint ptr %i.gj to i64               ; 3 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.gs)
          to label %.noexc74.i unwind label %bb.bs, !noalias !13001

.noexc74.i:                                       ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i
  %i.gt = or disjoint i64 %i.gs, 1                ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.gt)
          to label %bb.bt unwind label %bb.bs, !noalias !13001

bb.bs:                                            ; preds = %.noexc74.i, %_RNvXNtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB2_9RawRwLockNtNtCsbO4BqjCww8C_8lock_api6rwlock9RawRwLock11lock_shared.exit.i72.i, %_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i71.i
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bt:                                            ; preds = %.noexc74.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.val48.i, i64 136
  call void @llvm.experimental.noalias.scope.decl(metadata !13004)
  call void @llvm.experimental.noalias.scope.decl(metadata !13007)
  %i.gw = load i64, ptr %i.gv, align 8, !range !79, !alias.scope !13007, !noalias !13009, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq i64 %i.gw, -1
  br i1 %.not.i.i, label %bb.cb, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !13010)
  %i.gx = getelementptr inbounds nuw i8, ptr %.val48.i, i64 176
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !13013, !noalias !13014, !noundef !11
  %i.gz = getelementptr inbounds nuw i8, ptr %.val48.i, i64 184
  %i.ha = load i32, ptr %i.gz, align 8, !alias.scope !13013, !noalias !13014, !noundef !11
  %.not.i.i.i69 = icmp eq i64 %i.gw, 2
  br i1 %.not.i.i.i69, label %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !13016)
  call void @llvm.experimental.noalias.scope.decl(metadata !13019)
  %i.hb = trunc nuw i64 %i.gw to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %.val48.i, i64 144 ; 2 uses
  br i1 %i.hb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !13021, !noalias !13022, !noundef !11
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.he = getelementptr inbounds nuw i8, ptr %.val48.i, i64 159
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !13021, !noalias !13022, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %i.hf, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %.val48.i, i64 152
  %.val.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !13021, !noalias !13022 ; 5 uses
  %.val21.i.i.i.i = load i64, ptr %i.hg, align 8, !alias.scope !13021, !noalias !13022 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.by, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hh = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.hi = atomicrmw add ptr %i.hh, i64 1 monotonic, align 8, !noalias !13023
  %i.hj = icmp slt i64 %i.hi, 0
  br i1 %i.hj, label %bb.ca, label %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, !prof !522

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RINvNtCs9zPlAsQS9gd_4ecow3vec18ref_count_overflowhECsl8OoimOLbh_6qdrant(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val21.i.i.i.i) #26
          to label %.noexc76.i unwind label %bb.cc, !noalias !13001

.noexc76.i:                                       ; preds = %bb.ca
  unreachable

_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i: ; preds = %bb.bx, %bb.bz, %bb.by
  %.sroa.06.0.i.i.i.i = phi ptr [ %.val.i.i.i.i, %bb.bz ], [ inttoptr (i64 16 to ptr), %bb.by ], [ %.val.i.i.i.i, %bb.bx ]
  %3 = ptrtoint ptr %.sroa.06.0.i.i.i.i to i64
  store i64 %3, ptr %.sroa.4.i.i.i, align 8, !alias.scope !13016, !noalias !13024
  br label %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i

_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i, %bb.bw
  %.sink.i.sroa.phi.i.i.i = phi ptr [ %.sroa.7.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %.sroa.4.i.i.i, %bb.bw ]
  %.sroa.58.0.sink.i.i.i.i = phi i64 [ %.val21.i.i.i.i, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ %i.hd, %bb.bw ]
  %storemerge.i.i.i.i = phi i64 [ 0, %_RNvXs6_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i.i.i.i ], [ 1, %bb.bw ]
  store i64 %.sroa.58.0.sink.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i, align 8, !alias.scope !13016, !noalias !13024
  %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i = load i64, ptr %.sroa.4.i.i.i, align 8, !noalias !13025
  %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i = load i64, ptr %.sroa.7.i.i.i, align 8, !noalias !13025
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i

_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i, %bb.bu
  %.sroa.5.sroa.4.0.i.i.i = phi i64 [ undef, %bb.bu ], [ %.sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.7.8.copyload.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i64 [ undef, %bb.bu ], [ %.sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8.copyload.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 2, %bb.bu ], [ %storemerge.i.i.i.i, %_RNvXsen_NtCs607s0NAIaWN_7segment5typesNtB6_8ShardKeyNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.val48.i, i64 160
  %i.hl = getelementptr inbounds nuw i8, ptr %.val48.i, i64 188
  %i.hm = load i8, ptr %i.hl, align 4, !range !1324, !alias.scope !13013, !noalias !13014, !noundef !11
  %i.hn = getelementptr inbounds nuw i8, ptr %.val48.i, i64 189
  %i.ho = load i8, ptr %i.hn, align 1, !range !388, !alias.scope !13013, !noalias !13014, !noundef !11
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !alias.scope !13026, !noalias !13001
  store i64 %.sroa.0.0.i.i.i, ptr %i.eo, align 8, !alias.scope !13004, !noalias !13027
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13004, !noalias !13027
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 248
  store i64 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !13004, !noalias !13027
  %.sroa.7.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 %i.gy, ptr %.sroa.7.0..sroa_idx.i.i70, align 8, !alias.scope !13004, !noalias !13027
  %.sroa.8.0..sroa_idx.i.i71 = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i32 %i.ha, ptr %.sroa.8.0..sroa_idx.i.i71, align 8, !alias.scope !13004, !noalias !13027
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 284
  store i8 %i.hm, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !13004, !noalias !13027
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 285
  store i8 %i.ho, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !13004, !noalias !13027
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.cb:                                            ; preds = %bb.bt
  store i64 -1, ptr %i.eo, align 8, !alias.scope !13004, !noalias !13027
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i

bb.cc:                                            ; preds = %bb.ca
  %i.hp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api6rwlock15RwLockReadGuardNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateEEECsl8OoimOLbh_6qdrant(ptr nonnull %i.gj) #24
          to label %bb.ci unwind label %bb.ch, !noalias !13001

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.cb, %_RNvXs1_NtNtCsPYQCUnoTxQ_10collection6shards10reshardingNtB5_12ReshardStateNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 1, ptr %i.hq, align 8, !noalias !12997
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.gs)
          to label %.noexc77.i unwind label %bb.ce, !noalias !13001

.noexc77.i:                                       ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.gt)
          to label %.noexc78.i unwind label %bb.ce, !noalias !13001

.noexc78.i:                                       ; preds = %.noexc77.i
  %i.hr = atomicrmw sub ptr %i.gj, i64 16 release, align 8, !noalias !13001
  %i.hs = and i64 %i.hr, -14
  %i.ht = icmp eq i64 %i.hs, 18
  br i1 %i.ht, label %bb.cd, label %bb.cf, !prof !522

bb.cd:                                            ; preds = %.noexc78.i
  invoke void @_RNvMs8_NtCs27TyLBeV75a_11parking_lot10raw_rwlockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %i.gj)
          to label %bb.cf unwind label %bb.ce, !noalias !13001

bb.ce:                                            ; preds = %bb.cd, %.noexc77.i, %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtNtCsPYQCUnoTxQ_10collection6shards10resharding12ReshardStateENtNtB7_5clone5Clone5cloneCsl8OoimOLbh_6qdrant.exit.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd, %.noexc78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12997
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.hw = load ptr, ptr %i.hv, align 8, !noalias !12997, !nonnull !11, !align !10, !noundef !11
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 368
  %.val50.i = load ptr, ptr %i.hx, align 8, !noalias !13001, !nonnull !11, !noundef !11
  %i.hy = getelementptr inbounds nuw i8, ptr %.val50.i, i64 16
  store ptr %i.hy, ptr %i.ev, align 8, !noalias !12997
  %.sroa.8133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i8 0, ptr %.sroa.8133.0..sroa_idx.i, align 8, !noalias !12997
  br label %bb.ck

.body85.i:                                        ; preds = %bb.ew, %.body97.i, %bb.cw, %bb.cs, %bb.cr, %bb.cl
  %.pn39.i = phi { ptr, i32 } [ %i.sm, %bb.ew ], [ %i.jg, %bb.cr ], [ %.pn34.pn.pn.pn.i, %.body97.i ], [ %i.iw, %bb.cl ], [ %i.js, %bb.cw ], [ %i.jg, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12997
  br label %bb.cg

bb.cg:                                            ; preds = %.body85.i, %bb.ce
  %i.hz = phi ptr [ %i.is, %.body85.i ], [ %i.em, %bb.ce ] ; 2 uses
  %i.ia = phi ptr [ %i.it, %.body85.i ], [ %i.en, %bb.ce ] ; 2 uses
  %.pn39.pn.i = phi { ptr, i32 } [ %.pn39.i, %.body85.i ], [ %i.hu, %bb.ce ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ic = load i8, ptr %i.ib, align 8, !range !1324, !noalias !12997, !noundef !11
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.fe, label %bb.ci

bb.ch:                                            ; preds = %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fa, %bb.ez, %bb.ey, %bb.eu, %.body97.i, %bb.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i, %bb.cc, %bb.bo, %bb.az
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !13001
  unreachable

bb.ci:                                            ; preds = %bb.fe, %bb.cg, %bb.cc, %bb.bs
  %i.if = phi ptr [ %i.hz, %bb.fe ], [ %i.hz, %bb.cg ], [ %i.em, %bb.cc ], [ %i.em, %bb.bs ]
  %i.ig = phi ptr [ %i.ia, %bb.fe ], [ %i.ia, %bb.cg ], [ %i.en, %bb.cc ], [ %i.en, %bb.bs ]
  %.pn39.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %bb.fe ], [ %.pn39.pn.i, %bb.cg ], [ %i.hp, %bb.cc ], [ %i.gu, %bb.bs ]
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 0, ptr %i.ih, align 8, !noalias !12997
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bq
  %i.ii = phi ptr [ %i.if, %bb.ci ], [ %i.em, %bb.bq ] ; 2 uses
  %i.ij = phi ptr [ %i.ig, %bb.ci ], [ %i.en, %bb.bq ] ; 2 uses
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.pn.i, %bb.ci ], [ %i.gi, %bb.bq ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 225
  %i.il = load i8, ptr %i.ik, align 1, !range !1324, !noalias !12997, !noundef !11
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ff, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i: ; preds = %bb.ff, %bb.cj, %bb.bo, %bb.bm
  %i.in = phi ptr [ %i.ii, %bb.ff ], [ %i.ii, %bb.cj ], [ %i.em, %bb.bo ], [ %i.em, %bb.bm ]
  %i.io = phi ptr [ %i.ij, %bb.ff ], [ %i.ij, %bb.cj ], [ %i.en, %bb.bo ], [ %i.en, %bb.bm ] ; 2 uses
  %.pn39.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.pn.pn.i, %bb.ff ], [ %.pn39.pn.pn.pn.i, %bb.cj ], [ %i.gd, %bb.bo ], [ %i.ga, %bb.bm ]
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 225
  store i8 0, ptr %i.ip, align 1, !noalias !12997
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.io)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.ch, !noalias !13001

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.ex, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i, %bb.bk, %bb.bg, %bb.bf, %bb.az
  %i.iq = phi ptr [ %i.is, %bb.ex ], [ %i.in, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.em, %bb.bf ], [ %i.em, %bb.az ], [ %i.em, %bb.bk ], [ %i.em, %bb.bg ]
  %i.ir = phi ptr [ %i.it, %bb.ex ], [ %i.io, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.en, %bb.bf ], [ %i.en, %bb.az ], [ %i.en, %bb.bk ], [ %i.en, %bb.bg ]
  %.pn45.i = phi { ptr, i32 } [ %i.sn, %bb.ex ], [ %.pn39.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEECsl8OoimOLbh_6qdrant.exit122.i ], [ %i.fc, %bb.bf ], [ %i.eq, %bb.az ], [ %i.fo, %bb.bk ], [ %i.fc, %bb.bg ]
  store i8 2, ptr %i.iq, align 2, !noalias !12997
  br label %.body80

bb.ck:                                            ; preds = %bb.cf, %bb.au
  %i.is = phi ptr [ %i.em, %bb.cf ], [ %i.ec, %bb.au ] ; 4 uses
  %i.it = phi ptr [ %i.en, %bb.cf ], [ %i.eb, %bb.au ] ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.iv = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.iu, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.cm unwind label %bb.cl, !noalias !13001 ; 2 uses

bb.cl:                                            ; preds = %bb.ck
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalE4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.iu) #24
          to label %.body85.i unwind label %bb.ch, !noalias !13001

bb.cm:                                            ; preds = %bb.ck
  %i.ix = extractvalue { ptr, ptr } %i.iv, 0      ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12997
  br label %.thread138

bb.co:                                            ; preds = %bb.cm
  %i.iz = extractvalue { ptr, ptr } %i.iv, 1
  store ptr %i.ix, ptr %i.p, align 8, !noalias !12997
  %i.ja = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.iz, ptr %i.ja, align 8, !noalias !12997
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.jc = load i8, ptr %i.jb, align 8, !range !1281, !noalias !12997, !noundef !11
  %cond.i81.i = icmp eq i8 %i.jc, 3
  br i1 %cond.i81.i, label %bb.cp, label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.je = load i8, ptr %i.jd, align 8, !range !1281, !noalias !12997, !noundef !11
  %cond.i.i82.i = icmp eq i8 %i.je, 3
  br i1 %cond.i.i82.i, label %bb.cq, label %bb.cx

bb.cq:                                            ; preds = %bb.cp
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 352
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.jf)
          to label %bb.ct unwind label %bb.cr, !noalias !13001

bb.cr:                                            ; preds = %bb.cq
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.val2.i.i.i.i = load ptr, ptr %i.jh, align 8, !noalias !12997, !align !10, !noundef !11 ; 2 uses
  %i.ji = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ji, label %.body85.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jj = getelementptr i8, ptr %1, i64 368
  %.val3.i.i.i.i = load ptr, ptr %i.jj, align 8, !noalias !12997
  %i.jk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !13001, !nonnull !11, !noundef !11
  invoke void %i.jl(ptr noundef %.val3.i.i.i.i)
          to label %.body85.i unwind label %bb.cv, !noalias !13001, !inline_history !1282
end_hunk_1

inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE16insert_or_modifyNCNCNvMs4_NtNtBc_6future10base_cacheINtB4M_9BaseCacheB1B_B32_E19do_insert_with_hash00NCB4E_s_0EB36_:bb.a
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load i64, ptr %i.q, align 8, !range !44, !alias.scope !45, !noundef !3
  %6 = trunc nuw i64 %i.eo to i1
  %i.ep = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45
  %i.eq = icmp eq ptr %i.ep, null
  %or.cond.i = select i1 %6, i1 %i.eq, i1 false
end_hunk_0
begin_hunk_1_@_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE16insert_or_modifyNCNCNvMs4_NtNtBc_6future10base_cacheINtB4M_9BaseCacheB1B_B32_E19do_insert_with_hash00NCB4E_s_0EB36_:bb.a
  store i64 %i.em, ptr %i.ev, align 8
  store i64 3, ptr %0, align 8
  %i.ew = load i64, ptr %i.q, align 8, !range !44, !alias.scope !48, !noundef !3
  %7 = trunc nuw i64 %i.ew to i1
  %i.ex = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !48
  %i.ey = icmp eq ptr %i.ex, null
  %or.cond.i28 = select i1 %7, i1 %i.ey, i1 false
end_hunk_1
begin_hunk_2_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_:bb.a
  %i.dl = icmp eq i64 %i.bq, 0
  %i.dm = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = select i1 %or.cond41, i1 true, i1 %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB22_10ValueEntryB1A_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB35_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
end_hunk_2
begin_hunk_3_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_:bb.a
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %4 = trunc nuw i64 %i.eo to i1
  br i1 %4, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
end_hunk_3
begin_hunk_4_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.dl = icmp eq i64 %i.bq, 0
  %i.dm = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dl, %i.dm
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = select i1 %or.cond41, i1 true, i1 %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
end_hunk_4
begin_hunk_5_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %4 = trunc nuw i64 %i.eo to i1
  br i1 %4, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
end_hunk_5
begin_hunk_6_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_:bb.a
  %i.dk = icmp eq i64 %i.bq, 0
  %i.dl = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.dk, %i.dl
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = select i1 %or.cond41, i1 true, i1 %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB12_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2q_.exit, label %bb.ay

bb.ax:                                            ; preds = %bb.av
end_hunk_6
begin_hunk_7_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBc_6future11invalidator9PredicateB13_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB2r_:bb.a
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %4 = trunc nuw i64 %i.en to i1
  br i1 %4, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
end_hunk_7
begin_hunk_8_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_:bb.a
  %i.do = icmp eq i64 %i.bq, 0
  %i.dp = icmp eq i64 %i.bp, 0
  %or.cond41 = or i1 %i.do, %i.dp
  %.not37 = trunc nuw i64 %.sroa.010.1 to i1
  %or.cond42 = select i1 %or.cond41, i1 true, i1 %.not37
  br i1 %or.cond42, label %_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_.exit, label %bb.az

bb.ay:                                            ; preds = %bb.aw
end_hunk_8
begin_hunk_9_@_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_:bb.a
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load i64, ptr %i.o, align 8, !range !44, !noundef !3
  %4 = trunc nuw i64 %i.er to i1
  br i1 %4, label %bb.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuarduEECsgO8S5jLFugx_23deltalake_catalog_unity.exit70

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
end_hunk_9

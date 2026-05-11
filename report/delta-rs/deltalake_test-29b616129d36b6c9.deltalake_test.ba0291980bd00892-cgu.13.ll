inline.NumInlined: 319
inline.NumDeleted: 202
begin_hunk_0_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.04 = alloca [32 x i8], align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %i.o = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, i64 noundef %i.k) ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !16
  %i.t = add i64 %i.s, 1
  invoke void @_RNvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q, i64 noundef %i.t)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load i64, ptr %i.u, align 8, !noundef !16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !544
  %i.w = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 113) 24, i64 noundef 8) #27, !noalias !544 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
end_hunk_1
begin_hunk_2_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  store i64 1, ptr %.sroa.4.0..sroa_idx30.peel, align 8
  %.sroa.5.0..sroa_idx31.peel = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx31.peel, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.y = load ptr, ptr %i.b, align 8, !alias.scope !547, !noundef !16 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
end_hunk_2
begin_hunk_3_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB2v_4util11SharedValueIB14_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEINtB39_7RawIterB3U_EEEECsfY7SmN0bPrO_14deltalake_test.exit.peel: ; preds = %bb.g, %bb.f, %bb.e
  store ptr %i.w, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %i.v, ptr %i.c, align 8
  %i.ac = load i64, ptr %i.e, align 8, !noundef !16
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.e, align 8
end_hunk_3
begin_hunk_4_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %i.at = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ah, i64 noundef %i.ag) ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !16
  %i.ay = add i64 %i.ax, 1
  invoke void @_RNvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.av, ptr noundef nonnull %i.av, i64 noundef %i.ay)
          to label %bb.o unwind label %.loopexit86

.loopexit85:                                      ; preds = %bb.i, %bb.b
end_hunk_4
begin_hunk_5_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !noundef !16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !544
  %i.bb = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 113) 24, i64 noundef 8) #27, !noalias !544 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
end_hunk_5
begin_hunk_6_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  store i64 1, ptr %.sroa.4.0..sroa_idx30, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.at, ptr %.sroa.5.0..sroa_idx31, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.bh = load ptr, ptr %i.b, align 8, !alias.scope !557, !noundef !16 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
end_hunk_6
begin_hunk_7_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %.lcssa81 = phi ptr [ %i.bb, %.thread.loopexit ], [ %i.w, %.thread.loopexit.split-lp ]
  %lpad.phi90 = phi { ptr, i32 } [ %lpad.loopexit88, %.thread.loopexit ], [ %lpad.loopexit.split-lp89, %.thread.loopexit.split-lp ]
  store ptr %.lcssa81, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %.lcssa83, ptr %i.c, align 8
  br label %.noexc26

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB2v_4util11SharedValueIB14_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEINtB39_7RawIterB3U_EEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.t, %bb.s, %bb.u
  store ptr %i.bb, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %i.ba, ptr %i.c, align 8
  %i.bl = load i64, ptr %i.e, align 8, !noundef !16
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.e, align 8
end_hunk_7

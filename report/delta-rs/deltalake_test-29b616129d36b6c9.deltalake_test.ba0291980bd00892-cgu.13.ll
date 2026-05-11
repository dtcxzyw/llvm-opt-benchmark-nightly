inline.NumInlined: 319
inline.NumDeleted: 202
begin_hunk_0_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema5errorNtB5_10ArrowErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %.sroa.510 = alloca [32 x i8], align 8          ; 8 uses
  %.sroa.04 = alloca [32 x i8], align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
end_hunk_0
begin_hunk_1_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %i.n = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k, i64 noundef %i.j) ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !16
  %i.s = add i64 %i.r, 1
  invoke void @_RNvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.510, ptr noundef nonnull %i.p, ptr noundef nonnull %i.p, i64 noundef %i.s)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = load i64, ptr %i.t, align 8, !noundef !16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !544
  %i.v = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 113) 24, i64 noundef 8) #27, !noalias !544 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
end_hunk_1
begin_hunk_2_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  store i64 1, ptr %.sroa.4.0..sroa_idx30.peel, align 8
  %.sroa.5.0..sroa_idx31.peel = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx31.peel, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %i.x = load ptr, ptr %i.a, align 8, !alias.scope !547, !noundef !16 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
end_hunk_2
begin_hunk_3_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB2v_4util11SharedValueIB14_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEINtB39_7RawIterB3U_EEEECsfY7SmN0bPrO_14deltalake_test.exit.peel: ; preds = %bb.g, %bb.f, %bb.e
  store ptr %i.v, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %i.u, ptr %i.b, align 8
  %i.ab = load i64, ptr %i.d, align 8, !noundef !16
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.d, align 8
end_hunk_3
begin_hunk_4_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %i.as = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17__yield_read_shardCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ag, i64 noundef %i.af) ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.510)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !16
  %i.ax = add i64 %i.aw, 1
  invoke void @_RNvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB5_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE3newCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %.sroa.510, ptr noundef nonnull %i.au, ptr noundef nonnull %i.au, i64 noundef %i.ax)
          to label %bb.o unwind label %.loopexit86

.loopexit85:                                      ; preds = %bb.i, %bb.b
end_hunk_4
begin_hunk_5_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.510, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.510)
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !544
  %i.ba = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 24, 113) 24, i64 noundef 8) #27, !noalias !544 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
end_hunk_5
begin_hunk_6_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  store i64 1, ptr %.sroa.4.0..sroa_idx30, align 8
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx31, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.bg = load ptr, ptr %i.a, align 8, !alias.scope !557, !noundef !16 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
end_hunk_6
begin_hunk_7_@_RNvXs6_NtCs3JXekYNd0JR_7dashmap4iterINtB5_4IterNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsfY7SmN0bPrO_14deltalake_test:.peel.begin
  %.lcssa81 = phi ptr [ %i.ba, %.thread.loopexit ], [ %i.v, %.thread.loopexit.split-lp ]
  %lpad.phi90 = phi { ptr, i32 } [ %lpad.loopexit88, %.thread.loopexit ], [ %lpad.loopexit.split-lp89, %.thread.loopexit.split-lp ]
  store ptr %.lcssa81, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %.lcssa83, ptr %i.b, align 8
  br label %.noexc26

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock15RwLockReadGuardNtNtCs3JXekYNd0JR_7dashmap4lock9RawRwLockINtNtNtCsbZMnTeWjWd9_9hashbrown3raw5inner8RawTableTNtCseo6ZV82fEK1_3url3UrlINtNtB2v_4util11SharedValueIB14_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEEEEINtB39_7RawIterB3U_EEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.t, %bb.s, %bb.u
  store ptr %i.ba, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04, i64 32, i1 false)
  store i64 %i.az, ptr %i.b, align 8
  %i.bk = load i64, ptr %i.d, align 8, !noundef !16
  %i.bl = add i64 %i.bk, 1
  store i64 %i.bl, ptr %i.d, align 8
end_hunk_7

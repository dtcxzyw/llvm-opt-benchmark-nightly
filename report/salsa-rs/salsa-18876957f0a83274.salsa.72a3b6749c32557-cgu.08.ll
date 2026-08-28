Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.08?download=true
inline.NumInlined: 240
inline.NumDeleted: 151
begin_hunk_0_@_RNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB5_13RevisionQueue3new:bb.a
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !187
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 0, ptr %i.c, align 8, !alias.scope !190, !noalias !187
  store i64 0, ptr %i.a, align 8, !alias.scope !190, !noalias !187
  invoke void @_RINvXst_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3G_13RevisionQueue3new0EEBN_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef 0, i64 noundef range(i64 1, -1) %1)
          to label %_RINvXss_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3Q_13RevisionQueue3new0EEBN_.exit unwind label %bb.c, !noalias !187

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EEB1f_.exit.i unwind label %bb.d, !noalias !187

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !187
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsi1wr4QBDb3z_8smallvec8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EEB1f_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvXss_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3Q_13RevisionQueue3new0EEBN_.exit: ; preds = %bb.b
  %.sroa.0.0.copyload2 = load i64, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx3, i64 24, i1 false)
  %.sroa.34.0.copyload6 = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !187
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvXss_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3Q_13RevisionQueue3new0EEBN_.exit
  %.sroa.34.0 = phi i64 [ %.sroa.34.0.copyload6, %_RINvXss_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3Q_13RevisionQueue3new0EEBN_.exit ], [ 0, %bb.a ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload2, %_RINvXss_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBJ_E9from_iterINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3Q_13RevisionQueue3new0EEBN_.exit ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.f, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, i64 24, i1 false)
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.34.0, ptr %.sroa.34.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCsC8CapfvpQ1_5salsa8interned10new_shards() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa8interned10new_shards6SHARDS, i64 8) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockjE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zEB1D_.exit, label %bb.b, !prof !106

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockjE10initializeNCINvB2_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zEB1y_(ptr noundef nonnull align 8 @_RNvNvNtCsC8CapfvpQ1_5salsa8interned10new_shards6SHARDS)
  br label %_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockjE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zEB1D_.exit

_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockjE15get_or_try_initNCINvB2_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zEB1D_.exit: ; preds = %bb.a, %bb.b
  %i.c = load i64, ptr @_RNvNvNtCsC8CapfvpQ1_5salsa8interned10new_shards6SHARDS, align 8, !noundef !3
  %i.d = tail call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB4e_8adapters3map3MapINtNtNtB4g_3ops5range5RangejENCNvB3j_10new_shardss_0EEB3l_(i64 noundef 0, i64 noundef %i.c)
  ret { ptr, i64 } %i.d
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtNtCsC8CapfvpQ1_5salsa5table4memo18type_assert_failed(i32 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsn_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_19MemoIngredientIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsC8CapfvpQ1_5salsa8function7specify24validate_specified_value(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 4 captures(address) dead_on_return dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 3 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i32, ptr %i.g, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !193, !noalias !196, !nonnull !3, !align !175, !noundef !3 ; 2 uses
  %i.k = zext i32 %i.h to i64                     ; 3 uses
  %i.l = load atomic ptr, ptr %i.j acquire, align 8, !noalias !198 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !198, !noundef !3
  %.not.i = icmp ugt i64 %i.o, %i.k
  br i1 %.not.i, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.q = load ptr, ptr %3, align 8, !alias.scope !193, !noalias !196, !nonnull !3, !align !175, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noalias !198, !noundef !3
  %i.t = icmp ugt i64 %i.s, %i.k
  tail call void @llvm.assume(i1 %i.t)
  %i.u = load atomic ptr, ptr %i.p acquire, align 8, !noalias !198 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.w)
  %i.x = load i32, ptr %i.f, align 8, !range !199, !noundef !3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f, !prof !106

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !3
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.i, !prof !106

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtra6origin(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(13) %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.af, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsC_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginRefNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.e, align 4, !range !200, !noundef !3
  %i.ah = load i32, ptr %1, align 4, !range !200, !noundef !3
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !106

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 4, !noundef !3
  %i.an = icmp eq i32 %i.ak, %i.am
  br i1 %i.an, label %bb.j, label %bb.i, !prof !106

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexBM_EBQ_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.ap = load ptr, ptr %i.ao, align 8, !noundef !3
  %.not7 = icmp eq ptr %i.ap, null
  br i1 %.not7, label %bb.l, label %bb.k, !prof !106

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @18)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = load i64, ptr %i.aq, align 8, !range !80, !noundef !3
  call void @_RNvMs1_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevision5store(ptr noundef nonnull align 8 %i.u, i64 noundef %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 29
  call void @_RNvMs4_NtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB5_28AtomicInputAccumulatedValues5store(ptr noundef nonnull %i.as, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtB7_14IngredientImplpE11clear_memos5inner(ptr noundef nonnull align 8 %0, i32 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(16) %3, i32 noundef range(i32 1, 0) %4, i32 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %.sroa.42.i.i.i.i = alloca [8 x i8], align 8    ; 5 uses
  %.sroa.7.i.i.i.i = alloca [8 x i8], align 8     ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.g, align 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !201, !noundef !3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val1.i = load i64, ptr %i.h, align 8, !noalias !201
  %i.i = icmp eq ptr %.val.i, null                ; 2 uses
  %.sroa.4.0.i.i = select i1 %i.i, i64 0, i64 %.val1.i
  %.sroa.0.0.i.i = select i1 %i.i, ptr inttoptr (i64 8 to ptr), ptr %.val.i ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !201, !nonnull !3, !noundef !3 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !201, !noundef !3
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !204
  store ptr %.sroa.0.0.i.i, ptr %i.e, align 8, !noalias !207
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.j, ptr %i.p, align 8, !noalias !207
  store ptr %i.l, ptr %i.d, align 8, !noalias !207
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !207
  %i.r = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBR_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.s = invoke noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsC8CapfvpQ1_5salsa5table4memo13MemoEntryTypeENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBO_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %.noexc3 unwind label %.loopexit.split-lp

.noexc3:                                          ; preds = %.noexc
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !204
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i.i, label %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.y = zext i32 %1 to i64                       ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.019.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.z, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i ] ; 4 uses
  %i.z = add nuw i64 %.sroa.0.019.i.i, 1          ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.0.019.i.i ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.019.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !213, !noalias !218 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !226, !noalias !229, !noundef !3 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !alias.scope !226, !noalias !229
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %i.ae = invoke { ptr, ptr } %.val.i.i.i.i.i(ptr noundef nonnull %i.ac)
          to label %.noexc4 unwind label %.loopexit, !inline_history !230 ; 2 uses

.noexc4:                                          ; preds = %bb.c
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = invoke noundef i32 @_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize(i64 noundef %.sroa.0.019.i.i)
          to label %bb.e unwind label %bb.d, !noalias !231

bb.d:                                             ; preds = %.noexc4
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEB1g_(ptr nonnull %i.af, ptr nonnull %i.ag) #29
          to label %.body unwind label %bb.f, !noalias !231

bb.e:                                             ; preds = %.noexc4
  store ptr %i.af, ptr %.sroa.42.i.i.i.i, align 8, !alias.scope !215, !noalias !232
  %i.aj = zext i32 %i.ah to i64
  br label %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !231
  unreachable

_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i2.i = phi i64 [ 0, %bb.b ], [ %i.aj, %bb.e ] ; 3 uses
  %.sink4.i.sroa.phi.i.i.i.i = phi ptr [ %.sroa.42.i.i.i.i, %bb.b ], [ %.sroa.7.i.i.i.i, %bb.e ]
  %.sink.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.ag, %bb.e ]
  store ptr %.sink.i.i.i.i.i, ptr %.sink4.i.sroa.phi.i.i.i.i, align 8, !alias.scope !215, !noalias !232
  %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i = load ptr, ptr %.sroa.42.i.i.i.i, align 8, !noalias !233 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i
  %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.i.i.i.i, align 8, !noalias !233 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.al = load i64, ptr %i.t, align 8, !noalias !237, !noundef !3 ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.y
  br i1 %i.am, label %bb.h, label %.invoke.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.u, align 8, !noalias !237, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.y ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !237, !noundef !3 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %.sroa.0.0.i.i.i2.i
  br i1 %i.ar, label %bb.j, label %.invoke.i.i.i.i.i.i.i

.invoke.i.i.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %i.as = phi i64 [ %i.y, %bb.g ], [ %.sroa.0.0.i.i.i2.i, %bb.h ]
  %i.at = phi i64 [ %i.al, %bb.g ], [ %i.aq, %bb.h ]
  %i.au = phi ptr [ @2, %bb.g ], [ @3, %bb.h ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au) #28
          to label %.cont.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !237

.cont.i.i.i.i.i.i.i:                              ; preds = %.invoke.i.i.i.i.i.i.i
  unreachable

.loopexit.i.i:                                    ; preds = %bb.l, %bb.k
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i.i:                           ; preds = %.invoke.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCsC8CapfvpQ1_5salsa5table4memo4MemoEL_EEB1g_(ptr nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, ptr nonnull readonly align 8 dereferenceable(56) %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i) #29
          to label %.body unwind label %bb.s, !noalias !243

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !237, !nonnull !3, !noundef !3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %.sroa.0.0.i.i.i2.i
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !237, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !237
  store i32 %4, ptr %i.c, align 4, !noalias !237
  store i32 %5, ptr %i.v, align 4, !noalias !237
  store i32 %i.ay, ptr %i.w, align 4, !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !237
  store ptr %i.c, ptr %i.b, align 8, !noalias !237
  %i.az = load ptr, ptr %i.x, align 8, !noalias !237, !noundef !3
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k, !prof !106

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0)
          to label %bb.l unwind label %.loopexit.i.i, !noalias !237

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !237
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !invariant.load !3, !alias.scope !234, !noalias !243, !nonnull !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false), !noalias !237
  invoke void %i.bb(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.a)
          to label %bb.m unwind label %.loopexit.i.i, !noalias !237

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !237
  %i.bc = load ptr, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, align 8, !invariant.load !3, !alias.scope !234, !noalias !243 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void %i.bc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i)
          to label %bb.o unwind label %bb.q, !noalias !237

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !4, !invariant.load !3, !alias.scope !234, !noalias !243 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !5, !invariant.load !3, !alias.scope !234, !noalias !243
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #27, !noalias !237
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i

bb.q:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !4, !invariant.load !3, !alias.scope !234, !noalias !243 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.i.0..sroa.7.i.i.0..sroa.7.i.i.0..sroa.7.i.0..sroa.7.i.0..sroa.7.0..sroa.7.0..sroa.6.sroa.0.0.copyload.i.i.i.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !5, !invariant.load !3, !alias.scope !234, !noalias !243
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.i.0..sroa.42.i.i.0..sroa.42.i.i.0..sroa.42.i.0..sroa.42.i.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.0..sroa.42.8..i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #27, !noalias !237
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !237
  unreachable

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i: ; preds = %bb.p, %bb.o, %_RNCINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB8_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBc_8internedINtB1u_14IngredientImplpE11clear_memos5inner0E0Bc_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i)
  %exitcond.not.i.i = icmp eq i64 %i.z, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i, label %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit, label %bb.b

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.a, %.noexc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTQNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryRNtB25_13MemoEntryTypeEuNCINvNtBb_10filter_map15filter_map_foldTjB21_ETNtNtB29_5zalsa19MemoIngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB25_4MemoEL_EEuNCINvMs6_B25_NtB25_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtB29_8internedINtB6n_14IngredientImplpE11clear_memos5inner0E0NCINvNvB1e_8for_each4callB3V_NCB5n_s_0E0E0E0B29_.exit.i.i, %.noexc3
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.bp = load ptr, ptr %3, align 8, !alias.scope !250, !noundef !3 ; 2 uses
  store ptr null, ptr %3, align 8, !alias.scope !250
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit, label %bb.t

bb.t:                                             ; preds = %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit
  %i.br = load i64, ptr %i.h, align 8, !alias.scope !250, !noundef !3 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = shl nuw nsw i64 %i.br, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef range(i64 1, -9223372036854775808) %i.bt, i64 noundef 8) #27, !noalias !250
  br label %_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit

_RNvMNtNtCsC8CapfvpQ1_5salsa5table4memoNtB2_9MemoTable5reset.exit: ; preds = %bb.u, %bb.t, %_RINvMs6_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB6_21MemoTableWithTypesMut10take_memosNCNvNvMs6_NtBa_8internedINtB1s_14IngredientImplpE11clear_memos5inner0EBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.v:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.q, %bb.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.i ], [ %i.ai, %bb.d ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtBa_14IngredientImplpE11clear_memos5innerNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.f)
          to label %bb.v unwind label %bb.w

bb.w:                                             ; preds = %.body
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNvMs6_NtCsC8CapfvpQ1_5salsa8internedINtB7_14IngredientImplpE12insert_value5inner(ptr noalias noundef align 8 dereferenceable(48) %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br i1 %4, label %bb.c, label %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit

_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit: ; preds = %bb.g, %bb.f, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !257, !noalias !258, !nonnull !3, !noundef !3 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val6.i.i = load i64, ptr %i.a, align 8, !alias.scope !257, !noalias !258, !noundef !3 ; 4 uses
  %.sroa.0.07.i.i.i = and i64 %.val6.i.i, %1      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.b, align 1, !noalias !261
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !153

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.d, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i.i.i, %i.f
  %i.h = and i64 %i.g, %.val6.i.i                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noalias !264, !noundef !3 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, !prof !129

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !264
  %i.l = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.o
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !264
  br label %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 0, %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.r, %.val6.i.i     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !261
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !155

_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.v = phi i8 [ %.pre.i.i, %bb.b ], [ %i.j, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !257, !noalias !258, !noundef !3 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = trunc i8 %i.v to i1
  %or.cond.i.i = and i1 %i.y, %i.z
  br i1 %or.cond.i.i, label %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i, label %_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit, !prof !158

_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i
  %i.aa = tail call { i64, i64 } @_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE14reserve_rehashRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1, ptr noundef nonnull %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %6, i1 noundef zeroext true) ; 0 uses
  %.val7.i.i = load ptr, ptr %0, align 8, !alias.scope !257, !noalias !258 ; 3 uses
  %.val8.i.i = load i64, ptr %i.a, align 8, !alias.scope !257, !noalias !258, !noundef !3 ; 2 uses
  %i.ab = tail call fastcc noundef i64 @_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val7.i.i, i64 %.val8.i.i, i64 noundef %1) ; 2 uses
  %.phi.trans.insert9.i.i = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 %i.ab
  %.pre10.i.i = load i8, ptr %.phi.trans.insert9.i.i, align 1, !noalias !265
  %.pre11.i.i = load i64, ptr %i.w, align 8, !alias.scope !268, !noalias !258
  br label %_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit

_RNvNtCsC8CapfvpQ1_5salsa8interned20insert_unique_erased.exit: ; preds = %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i
  %i.ac = phi i64 [ %.val8.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.val6.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.ad = phi i64 [ %.pre11.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %i.x, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.ae = phi i8 [ %.pre10.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %i.v, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ]
  %i.af = phi ptr [ %.val7.i.i, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.val.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ab, %_RINvMs6_NtCsgMW4BsFgQdt_9hashbrown3rawINtB6_8RawTableNtNtCsC8CapfvpQ1_5salsa8interned8ValueKeyE7reserveRDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL0_BP_EEp6OutputyEL_EBT_.exit.i.i ], [ %.sroa.0.0.i5.i.i.i, %_RNvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i ] ; 3 uses
  %i.ag = lshr i64 %1, 57
  %i.ah = trunc nuw nsw i64 %i.ag to i8           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i
  %i.aj = and i8 %i.ae, 1
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = sub i64 %i.ad, %i.ak
  store i64 %i.al, ptr %i.w, align 8, !alias.scope !268, !noalias !258
  %i.am = add i64 %.sroa.0.0.i.i, -16
  %i.an = and i64 %i.am, %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !noalias !265
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store i8 %i.ah, ptr %i.ap, align 1, !noalias !265
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !268, !noalias !258, !noundef !3
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !alias.scope !268, !noalias !258
  %i.at = sub nsw i64 0, %.sroa.0.0.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  store ptr %2, ptr %i.av, align 8, !noalias !265
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %3) ]
  %i.ax = load ptr, ptr %3, align 8, !noundef !3
  %cond.i.i.i = icmp eq ptr %i.ax, inttoptr (i64 1 to ptr)
  br i1 %cond.i.i.i, label %bb.d, label %_RNvXs4_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listNtB5_7LinkOpsNtNtB7_8link_ops7LinkOps12acquire_link.exit.i.i

_RNvXs4_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listNtB5_7LinkOpsNtNtB7_8link_ops7LinkOps12acquire_link.exit.i.i: ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 52, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.aw, align 8, !noundef !3 ; 3 uses
  %.not6.i5.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i5.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %3, ptr %i.az, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.ay, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.ba, align 8
  store ptr %3, ptr %i.aw, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !noundef !3
  %.not1.i = icmp eq ptr %i.bc, null
  br i1 %.not1.i, label %bb.g, label %_RNvMsa_NtCsj8k30Q1C9TB_21intrusive_collections11linked_listINtB5_9CursorMutNtNtCsC8CapfvpQ1_5salsa8interned15LruEntryAdapterE12insert_afterB1f_.exit

bb.g:                                             ; preds = %bb.f
  store ptr %3, ptr %i.bb, align 8
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.02?download=true
inline.NumInlined: 553
inline.NumDeleted: 272
begin_hunk_0_@_RNvMs5_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB5_19InsertOrModifyStateINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1f_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1I_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBb_6future10base_cacheINtB4A_9BaseCacheB1I_B39_E19do_insert_with_hash00E18into_insert_bucketB3d_:bb.a

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !3
  store i64 %i.o, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = invoke noundef nonnull align 8 ptr @_RNvXso_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops5deref8DerefMut9deref_mutB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.n unwind label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !779
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %common.resume

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #26
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.u, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.v = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 16, i64 noundef 8) #23 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3d_.exit, !prof !27

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #22
          to label %.noexc12 unwind label %bb.i

.noexc12:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !784
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #26
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit, %bb.j, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.x, %bb.i ], [ %i.r, %bb.e ], [ %i.r, %bb.f ], [ %lpad.phi19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3d_.exit: ; preds = %bb.g
  store ptr %i.i, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.k, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = ptrtoint ptr %i.v to i64
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3d_.exit, %bb.c
  %.sroa.0.0 = phi i64 [ %i.ac, %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB4_4sync3ArcNtNtB4_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2a_10ValueEntryB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE3newB3d_.exit ], [ %i.m, %bb.c ], [ %i.ai, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit ]
  ret i64 %.sroa.0.0

bb.m:                                             ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit, %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.thread:                                          ; preds = %bb.q, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit

bb.n:                                             ; preds = %bb.d
  %.sroa.03.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.03.0.copyload, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.03.0.copyload, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx5, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx7, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.af = invoke fastcc noundef nonnull ptr @_RNCNCNvMs4_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE19do_insert_with_hash00B1L_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.q unwind label %.thread

bb.p:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.02.0 = phi ptr [ %.sroa.5.0.copyload, %bb.p ], [ %i.af, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !3, !noundef !3
  store ptr %.sroa.02.0, ptr %i.ag, align 8
  store ptr %i.ah, ptr %i.c, align 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit unwind label %.thread

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtBL_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2B_.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ai = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit: ; preds = %bb.r, %bb.s, %.thread
  %lpad.phi19 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.s ], [ %lpad.thr_comm.split-lp, %bb.r ]
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %common.resume unwind label %bb.m

bb.r:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.d, align 8, !alias.scope !791, !noundef !3
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit

bb.s:                                             ; preds = %bb.r
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket15ValueOrFunctionINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB1J_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNCNvMs4_NtNtBP_6future10base_cacheINtB4H_9BaseCacheB2E_B3g_E19do_insert_with_hash00EEB3k_.exit unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBM_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE24with_capacity_and_hasherCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB21_10ValueEntryB1z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE11with_lengthB34_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.e = load i64, ptr %i.a, align 8, !range !44, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !369, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = shl i64 %2, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.o, i1 false)
  store i64 %2, ptr %i.n, align 8
  %i.p = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB6_4sync3ArcNtNtB6_6string6StringEINtNtNtNtB1B_6common10concurrent3arc7MiniArcINtB2Y_10ValueEntryB2x_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE16into_boxed_sliceB42_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.s = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 24, i64 noundef 8) #23 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtB3A_10ValueEntryB39_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4E_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.r, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtB3A_10ValueEntryB39_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4E_.exit

bb.i:                                             ; preds = %bb.e
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ab, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtB3A_10ValueEntryB39_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4E_.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 4611686018427387905) i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB21_10ValueEntryB1z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE8capacityB34_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE11with_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.e = load i64, ptr %i.a, align 8, !range !44, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !369, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = shl i64 %2, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.o, i1 false)
  store i64 %2, ptr %i.n, align 8
  %i.p = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtB6_4sync3ArcNtNtB6_6string6StringEINtNtNtNtB1B_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEE16into_boxed_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.s = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 24, i64 noundef 8) #23 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.r, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.e
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ab, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 4611686018427387905) i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE8capacityCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE11with_lengthB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.e = load i64, ptr %i.a, align 8, !range !44, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !369, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = shl i64 %2, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.o, i1 false)
  store i64 %2, ptr %i.n, align 8
  %i.p = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtB6_6string6StringINtNtNtB1B_6future11invalidator9PredicateB2g_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE16into_boxed_sliceB3o_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.s = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 24, i64 noundef 8) #23 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtBL_6string6StringINtNtNtB2d_6future11invalidator9PredicateB2S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB40_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.r, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtBL_6string6StringINtNtNtB2d_6future11invalidator9PredicateB2S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB40_.exit

bb.i:                                             ; preds = %bb.e
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ab, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtBL_6string6StringINtNtNtB2d_6future11invalidator9PredicateB2S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB40_.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 4611686018427387905) i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE8capacityB2p_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE11with_lengthB4N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.e = load i64, ptr %i.a, align 8, !range !44, !noundef !3
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !369, !noundef !3 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e, !prof !27

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = shl i64 %2, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.o, i1 false)
  store i64 %2, ptr %i.n, align 8
  %i.p = call { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtB6_4sync3ArcNtNtB6_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1B_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1B_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEE16into_boxed_sliceB5M_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 4 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 3 uses
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.s = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 281) 24, i64 noundef 8) #23 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.i, !prof !27

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #22
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtBL_4sync3ArcNtNtBL_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB2d_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB68_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.r, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.w, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtBL_4sync3ArcNtNtBL_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB2d_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB68_.exit

bb.i:                                             ; preds = %bb.e
  store i64 1, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  store ptr %i.q, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ab, align 8
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtBL_4sync3ArcNtNtBL_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtB2d_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB2d_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEEB68_.exit: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 4611686018427387905) i64 @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE8capacityB4N_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.b)
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.b, 1
  ret i64 %i.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 54, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMsh_CseKAYRfgxGTE_14event_listenerINtB5_13InnerListeneruINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.417.i.i = alloca [23 x i8], align 1      ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.46.i.i = alloca [23 x i8], align 1       ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !3, !align !4, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCseKAYRfgxGTE_14event_listener3sys5InneruEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !align !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i8 %i.p, ptr %i.r, align 8
  store ptr %i.k, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load i64, ptr %0, align 8, !range !44, !noalias !794, !noundef !3
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.b, label %_RNCNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB8_5InneruE8register0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.02.0.copyload.i.i = load i8, ptr %i.v, align 8, !noalias !794
  %.sroa.4.0..sroa.01.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 3, ptr %i.v, align 8, !noalias !794
  switch i8 %.sroa.02.0.copyload.i.i, label %bb.c [
    i8 1, label %bb.h
    i8 2, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.417.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !794
  invoke void @_RNvMsn_CseKAYRfgxGTE_14event_listenerNtB5_7TaskRef9into_task(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.d, i64 noundef 0, ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %bb.c
  %.sroa.417.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.417.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.417.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !794
  store i8 2, ptr %i.v, align 8, !noalias !794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.01.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.417.i.i, i64 23, i1 false), !noalias !794
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.w = load i8, ptr %i.b, align 8, !range !317, !alias.scope !797, !noalias !794, !noundef !3
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !803, !noalias !794, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !803, !noalias !794, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !804, !nonnull !3, !noundef !3
  invoke void %i.ac(ptr noundef %.val1.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ae, !inline_history !805

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.ad = load ptr, ptr %i.aa, align 8, !alias.scope !815, !noalias !794, !nonnull !3, !noundef !3
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !816
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCseKAYRfgxGTE_14event_listener5StateuEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  br label %_RNCNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB8_5InneruE8register0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !794
  invoke void @_RNvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB5_5InneruE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 %0, i1 noundef zeroext false)
          to label %.noexc7.i unwind label %bb.ae

.noexc7.i:                                        ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.ag = load i8, ptr %i.g, align 8, !range !820, !alias.scope !817, !noalias !794, !noundef !3 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 4
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !821)
  %i.ai = icmp eq i8 %i.ag, 2
  br i1 %i.ai, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !827, !noalias !794, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !827, !noalias !794, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !827, !nonnull !3, !noundef !3
  invoke void %i.an(ptr noundef %.val1.i.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ae, !inline_history !805

bb.l:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !828)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !837, !noalias !794, !nonnull !3, !noundef !3
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !837
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs218QlbNgm4w_7parking5InnerE9drop_slowCseKAYRfgxGTE_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ae

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCseKAYRfgxGTE_14event_listener5StateuEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !794
  br label %_RNCNvMs_NtCseKAYRfgxGTE_14event_listener3sysINtB8_5InneruE8register0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.n:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !794
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.46.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !794
  %i.as = load ptr, ptr %i.f, align 8, !noalias !794, !noundef !3 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !794, !noundef !3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !794, !noundef !3
  %i.ay = icmp eq ptr %i.av, %i.ax
end_hunk_0

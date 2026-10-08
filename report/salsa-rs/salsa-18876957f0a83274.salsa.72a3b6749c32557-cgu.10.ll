Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.10?download=true
inline.NumInlined: 248
inline.NumDeleted: 157
begin_hunk_0_@_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0B2m_:bb.a
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #27
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 24, i64 noundef 8) #27
  resume { ptr, i32 } %i.t

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 24, i64 noundef 8) #27
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %bb.b
  %i.z = shl i64 %i.g, 2                          ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.c, %bb.c
  %.sroa.0.01114.i.i.i = phi i64 [ %i.z, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i ], [ 4, %bb.c ], [ 4, %bb.c ], [ 4, %bb.d ], [ 4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i ]
  %i.ab = add i64 %.sroa.0.01114.i.i.i, -1
  %i.ac = tail call range(i64 0, 63) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = lshr i64 -1, %i.ac
  %i.ae = add i64 %i.ad, 1
  br label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit

_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockjE10initializeNCINvB4_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0B1A_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i
  %.sroa.03.0.i.i.i = phi i64 [ %i.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.thread.i.i.i ], [ 1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa.exit.i.i.i ]
  store i64 %.sroa.03.0.i.i.i, ptr %i.b, align 8
  ret void

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1f_11get_or_initNCNvB1N_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1P_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !40, !noalias !41, !align !8, !noundef !4 ; 2 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !40, !noalias !41
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26, !noalias !42
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1N_.exit: ; preds = %bb.a
  %i.c = tail call noundef i64 @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE13with_capacityBK_(i64 noundef 0), !noalias !42
  store i64 %i.c, ptr %i.b, align 8, !noalias !42
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockjE10initializeNCINvB1f_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB2r_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !45
  call void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvNtCsC8CapfvpQ1_5salsa8interned10new_shards0E0zE0E0B2m_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs1_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa26next_memo_ingredient_index(ptr noalias noundef align 8 dereferenceable(1368) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1
  tail call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexEE11resize_withNvMB5_BE_3newEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e)
  %i.f = load i64, ptr %i.b, align 8, !noundef !4
  %i.g = icmp ugt i64 %i.f, %i.a
  br i1 %i.g, label %bb.d, label %bb.c, !prof !3

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pn = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %.sroa.01.0 = getelementptr inbounds nuw [24 x i8], ptr %.pn, i64 %i.a ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 6 uses
  %i.k = icmp ult i64 %i.j, 2305843009213693952
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.j, 4294967296
  br i1 %i.l, label %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit, label %bb.e, !prof !3

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #26
  unreachable

_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit: ; preds = %bb.d
  %i.m = load i64, ptr %.sroa.01.0, align 8, !range !5, !alias.scope !48, !noundef !4
  %i.n = icmp eq i64 %i.j, %i.m
  br i1 %i.n, label %bb.f, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit

bb.f:                                             ; preds = %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.01.0)
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit: ; preds = %_RNvMs_NtCsC8CapfvpQ1_5salsa5zalsaNtB4_19MemoIngredientIndex10from_usize.exit, %bb.f
  %i.o = trunc nuw i64 %i.j to i32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !48, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.j
  store i32 %2, ptr %i.r, align 4
  %i.s = add nuw nsw i64 %i.j, 1
  store i64 %i.s, ptr %i.i, align 8, !alias.scope !48
  ret i32 %i.o
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E3getB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.c
  %.sroa.0.0 = select i1 %i.h, ptr null, ptr %i.i
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E7get_mutB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(464) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 2 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a
  %i.c = sub i64 %1, %i.b
  %i.d = sub nsw i64 58, %i.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.c
  %.sroa.0.0 = select i1 %i.g, ptr null, ptr %i.h
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E12get_or_allocB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 3 uses
  %i.b = lshr exact i64 -9223372036854775808, %i.a ; 3 uses
  %i.c = sub i64 %1, %i.b                         ; 2 uses
  %i.d = sub nsw i64 58, %i.a                     ; 2 uses
  %i.e = lshr i64 1152921504606846976, %i.a
  %i.f = sub i64 %i.b, %i.e
  %i.g = icmp eq i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E18alloc_bucket_afterB1g_(ptr noundef nonnull align 8 %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = icmp ult i64 %i.d, 58
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.j = load atomic ptr, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef ptr @_RINvNtCs36qfJazsBC0_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1m_(ptr noundef nonnull align 8 %i.i, i64 noundef %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.l, %bb.d ], [ %i.j, %bb.c ]
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0, i64 %i.c
  ret ptr %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEKj3a_E18alloc_bucket_afterB1g_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %1, i1 true) ; 3 uses
  %i.c = sub nsw i64 59, %i.b                     ; 3 uses
  %i.d = icmp ugt i64 %i.c, 57
  br i1 %i.d, label %_RINvNtCs36qfJazsBC0_6boxcar7buckets13allocate_raceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sub nsw i64 58, %i.b
  %i.e = getelementptr [8 x i8], ptr %0, i64 %2
  %3 = getelementptr i8, ptr %i.e, i64 8
  %i.f = shl nuw nsw i64 32, %i.c                 ; 3 uses
  %i.g = icmp samesign ugt i64 %i.c, 52
  br i1 %i.g, label %.split5.i.i, label %.split.i.i

.split5.i.i:                                      ; preds = %bb.b
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable

.split.i.i:                                       ; preds = %bb.b
  %i.h = sub nuw nsw i64 64, %i.b
  %i.i = shl nuw i64 48, %i.h                     ; 4 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.j = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef %i.i, i64 noundef 8) #27 ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i, !prof !6

bb.c:                                             ; preds = %.split.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.i) #26
  unreachable

_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i: ; preds = %.split.i.i
  %i.l = cmpxchg ptr %3, ptr null, ptr %i.j release monotonic, align 8
  %.sroa.18.0.in.i.i = extractvalue { ptr, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCs36qfJazsBC0_6boxcar7buckets13allocate_raceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1e_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i.preheader

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i.preheader
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEEB1U_.exit.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i.preheader

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i.preheader: ; preds = %_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i ], [ 0, %_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke void @_RNvXs6_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i.i: ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i.i4, 1     ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i.i, label %.lr.ph

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i.preheader
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i.i
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i4
  invoke void @_RNvXs6_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit7.i.i.i, %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #27
  resume { ptr, i32 } %i.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEEB1U_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1l_.exit.i.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #27
  br label %_RINvNtCs36qfJazsBC0_6boxcar7buckets13allocate_raceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1e_.exit

_RINvNtCs36qfJazsBC0_6boxcar7buckets13allocate_raceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1e_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCs36qfJazsBC0_6boxcar3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEEB1U_.exit.i, %_RINvNtCs36qfJazsBC0_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5views10ViewCasterEEB1f_.exit.i, %bb.a
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10event_cold(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  call void %i.f(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %1)
  %i.g = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !4, !align !8, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !4, !nonnull !4
  call void %i.j(ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10insert_jar(ptr noalias noundef align 8 dereferenceable(1368) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  call void %i.k(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ult i64 %i.n, 576460752303423488
  call void @llvm.assume(i1 %i.o)
  %i.p = trunc i64 %i.n to i32                    ; 4 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %_RNvMNtCsC8CapfvpQ1_5salsa5zalsaNtB2_15IngredientIndex3new.exit, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #26
  unreachable

_RNvMNtCsC8CapfvpQ1_5salsa5zalsaNtB2_15IngredientIndex3new.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !86, !noalias !87, !noundef !4
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvMNtCsC8CapfvpQ1_5salsa5zalsaNtB2_15IngredientIndex3new.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = call noundef i64 @_RINvYINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtNtCsC8CapfvpQ1_5salsa4hash12TypeIdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdEBU_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.x = lshr i64 %i.w, 57
  %i.y = trunc nuw nsw i64 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !91, !noalias !92, !noundef !4 ; 2 uses
  %i.ab = load ptr, ptr %i.r, align 8, !alias.scope !91, !noalias !92, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i128, ptr %i.j, align 16, !alias.scope !92, !noalias !93
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.011.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.au, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.av, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.aa   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !94 ; 2 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.ad
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.05.0.i33.i.i = phi i16 [ %i.at, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %i.ah = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.01.0.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.aa
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ab, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -24
  %.val2.i.i.i = load i128, ptr %i.an, align 8, !noalias !95
  %i.ao = icmp eq i128 %.val.i.i.i.i, %.val2.i.i.i
  br i1 %i.ao, label %_RINvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE12contains_keyBO_EB1q_.exit, label %bb.e, !prof !3

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %.loopexit, !prof !6

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.as = add i16 %.sroa.05.0.i33.i.i, -1
  %i.at = and i16 %i.as, %.sroa.05.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.at, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.au = add i64 %.sroa.011.0.i.i.i, 16          ; 2 uses
  %i.av = add i64 %.sroa.01.0.i.i.i, %i.au
  br label %bb.d

.loopexit:                                        ; preds = %._crit_edge.i.i, %_RNvMNtCsC8CapfvpQ1_5salsa5zalsaNtB2_15IngredientIndex3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4
  call void %i.ax(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(1368) %0, i32 noundef %i.p)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ba = load i64, ptr %i.i, align 8, !range !5, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 576460752303423488
  call void @llvm.assume(i1 %i.bd)
  %.idx = shl nuw nsw i64 %i.bc, 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.az, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.be, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa10insert_jar:bb.a
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %bb.j
  %.sroa.05.033.i.i.i = phi i16 [ %i.cq, %bb.j ], [ %i.cg, %bb.i ] ; 3 uses
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.033.i.i.i, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add i64 %.sroa.0.021.i.i.i, %i.ci
  %i.ck = and i64 %i.cj, %.val7.i.i
  %i.cl = sub nsw i64 0, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -24
  %.val2.i.i.i.i = load i128, ptr %i.cn, align 8, !noalias !108
  %i.co = icmp eq i128 %.val.i.i.i.i.i, %.val2.i.i.i.i
  br i1 %i.co, label %_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBR_4hash18BuildHasherDefaultNtNtB1p_4hash12TypeIdHasherEE6insertB1p_.exit, label %bb.j, !prof !3

._crit_edge.i.i.i:                                ; preds = %bb.j, %bb.i
  %.not12.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i25, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.k, !prof !6

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = add i16 %.sroa.05.033.i.i.i, -1
  %i.cq = and i16 %i.cp, %.sroa.05.033.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.cr = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, zeroinitializer
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %.thread28.i.i.i, !prof !6

.thread28.i.i.i:                                  ; preds = %bb.k
  %i.ct = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cs, i1 true)
  %i.cu = zext nneg i16 %i.ct to i64
  %i.cv = add i64 %.sroa.0.021.i.i.i, %i.cu
  %i.cw = and i64 %i.cv, %.val7.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread28.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.125.i.i.i = phi i64 [ %i.cw, %.thread28.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = icmp eq i16 %i.cy, 0
  br i1 %i.cz, label %bb.l, label %bb.m, !prof !6

bb.l:                                             ; preds = %.thread.i.i.i, %bb.k
  %.sroa.01.126.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.k ]
  %.sroa.4.124.i.i.i = phi i64 [ %.sroa.4.125.i.i.i, %.thread.i.i.i ], [ undef, %bb.k ]
  %i.da = add i64 %i.cd, 16                       ; 2 uses
  %i.db = add i64 %i.da, %.sroa.0.021.i.i.i
  br label %bb.i

bb.m:                                             ; preds = %.thread.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.125.i.i.i
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !100, !noundef !4 ; 2 uses
  %i.de = icmp sgt i8 %i.dd, -1
  br i1 %i.de, label %bb.n, label %bb.o, !prof !6

bb.n:                                             ; preds = %bb.m
  %.val72.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !100
  %i.df = icmp slt <16 x i8> %.val72.i.i.i.i, zeroinitializer
  %i.dg = bitcast <16 x i1> %i.df to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.dg, 0
  %i.dh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dg, i1 true)
  %i.di = zext nneg i16 %i.dh to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.di
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !109
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dj = phi i8 [ %.pre.i, %bb.n ], [ %i.dd, %bb.m ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.di, %bb.n ], [ %.sroa.4.125.i.i.i, %bb.m ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.dl = and i8 %i.dj, 1
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.do = and i64 %i.dn, %.val7.i.i
  store i8 %i.ca, ptr %i.dk, align 1, !noalias !109
  %i.dp = getelementptr i8, ptr %.val.i.i, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store i8 %i.ca, ptr %i.dq, align 1, !noalias !109
  %i.dr = load <2 x i64>, ptr %i.bu, align 8, !alias.scope !111, !noalias !112
  %i.ds = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dm, i64 0
  %i.dt = sub <2 x i64> %i.dr, %i.ds
  store <2 x i64> %i.dt, ptr %i.bu, align 8, !alias.scope !111, !noalias !112
  %i.du = sub nsw i64 0, %.sroa.3.0.i.ph.i.i      ; 2 uses
  %i.dv = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.du
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !110
  br label %_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBR_4hash18BuildHasherDefaultNtNtB1p_4hash12TypeIdHasherEE6insertB1p_.exit

_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBR_4hash18BuildHasherDefaultNtNtB1p_4hash12TypeIdHasherEE6insertB1p_.exit: ; preds = %.lr.ph.i.i.i, %bb.o
  %i.dx = phi i64 [ %i.du, %bb.o ], [ %i.cl, %.lr.ph.i.i.i ]
  %i.dy = getelementptr inbounds [24 x i8], ptr %.val.i.i, i64 %i.dx
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.dy, i64 -8
  store i32 %i.p, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !4, !noundef !4
  call void %i.ea(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b)
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE6insertBR_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bs, i32 noundef %i.p, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE12contains_keyBO_EB1q_.exit

_RINvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB6_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBS_4hash18BuildHasherDefaultNtNtB1q_4hash12TypeIdHasherEE12contains_keyBO_EB1q_.exit: ; preds = %.lr.ph.i.i, %_RNvMs3_NtCsgMW4BsFgQdt_9hashbrown3mapINtB5_7HashMapNtNtCs4NRVxsYgnAr_4core3any6TypeIdNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtBR_4hash18BuildHasherDefaultNtNtB1p_4hash12TypeIdHasherEE6insertB1p_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.body:                                            ; preds = %bb.aa, %bb.ab
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.p:                                             ; preds = %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.ec = load ptr, ptr %i.eb, align 8, !invariant.load !4, !nonnull !4
  %i.ed = invoke noundef zeroext i1 %i.ec(ptr noundef nonnull %i.bm)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  br i1 %i.ed, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ee = load i64, ptr %i.bh, align 8, !alias.scope !113, !noundef !4 ; 3 uses
  %i.ef = load i64, ptr %i.bg, align 8, !range !5, !alias.scope !113, !noundef !4
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.s, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit unwind label %bb.ad

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit: ; preds = %bb.s, %bb.r
  %i.eh = load ptr, ptr %i.bi, align 8, !alias.scope !113, !nonnull !4, !noundef !4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ee
  store i32 %i.br, ptr %i.ei, align 4
  %i.ej = add i64 %i.ee, 1
  store i64 %i.ej, ptr %i.bh, align 8, !alias.scope !113
  br label %bb.t

bb.t:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexE8push_mutBI_.exit, %bb.q
  %i.ek = load i64, ptr %i.m, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 8 uses
  %i.el = load i64, ptr %i.l, align 8, !range !5, !alias.scope !114, !noalias !115, !noundef !4
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.x unwind label %bb.v, !noalias !115

bb.v:                                             ; preds = %bb.u
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_(ptr nonnull %i.bm, ptr nonnull readonly align 8 dereferenceable(192) %i.bo) #24
          to label %.body.thread unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !115
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ep = load ptr, ptr %i.bj, align 8, !alias.scope !114, !noalias !115, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ep, i64 %i.ek ; 2 uses
  store ptr %i.bm, ptr %i.eq, align 8, !noalias !115
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.bo, ptr %i.er, align 8, !noalias !115
  %i.es = add nsw i64 %i.ek, 1                    ; 2 uses
  store i64 %i.es, ptr %i.m, align 8, !alias.scope !114, !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.et = icmp slt i64 %i.ek, 576460752303423487
  call void @llvm.assume(i1 %i.et)
  store i64 %i.ek, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.eu = zext i32 %i.br to i64                   ; 2 uses
  store i64 %i.eu, ptr %i.f, align 8
  %i.ev = icmp eq i64 %i.ek, %i.eu
  br i1 %i.ev, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not = icmp eq i64 %i.ek, -1
  br i1 %.not, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ew = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !116, !nonnull !4, !noundef !4
  %i.ex = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !116, !nonnull !4, !noundef !4 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ew
  br i1 %i.ey, label %._crit_edge, label %bb.g

bb.aa:                                            ; preds = %bb.y
  %i.ez = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  %i.fa = getelementptr [16 x i8], ptr %i.ez, i64 %i.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.br, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.fa, ptr %i.d, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsn_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_ENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBL_, ptr %.sroa.49.0..sroa_idx, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.fb, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsW_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.fc, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noundef nonnull @21, ptr nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #26
          to label %bb.ac unwind label %.body

bb.ab:                                            ; preds = %bb.y
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef -1, i64 noundef %i.es, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #26
          to label %bb.ac unwind label %.body

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.g, %bb.s, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_(ptr nonnull %i.bm, ptr nonnull %i.bo) #24
          to label %.body.thread unwind label %bb.ae

bb.ae:                                            ; preds = %.body.thread, %bb.ad
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtBI_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEEB1L_.exit: ; preds = %.body.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa12new_revision(ptr noalias noundef align 8 dereferenceable(1368) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = tail call noundef i64 @_RNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB5_7Runtime12new_revision(ptr noalias noundef nonnull align 8 dereferenceable(720) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0.04 = phi ptr [ %i.d, %.lr.ph ], [ %i.q, %bb.c ] ; 2 uses
  %i.l = load i32, ptr %.sroa.0.04, align 4, !noundef !4
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.m
  br i1 %i.o, label %bb.c, label %bb.d

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i64 %i.b

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !4, !align !8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.w(ptr noundef nonnull %i.s, ptr noalias noundef nonnull align 8 dereferenceable(520) %i.k)
  %i.x = icmp eq ptr %i.q, %i.g
  br i1 %i.x, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa15take_ingredient(ptr noalias noundef align 8 dereferenceable(1368) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = zext i32 %1 to i64
  %i.c = tail call { ptr, ptr } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE6removeB10_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24)
  ret { ptr, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa18replace_ingredient(ptr noalias noundef align 8 dereferenceable(1368) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = zext i32 %1 to i64                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 7 uses
  %i.e = icmp ult i64 %i.d, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, %i.b
  br i1 %i.f, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !range !5, !alias.scope !120, !noalias !121, !noundef !4
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNvMs_NtCscdodAO9FK5_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 4294967296) %i.b, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #26
          to label %bb.h unwind label %bb.f, !noalias !122

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE8grow_oneB18_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.f, !noalias !121

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.b ; 4 uses
  %i.l = icmp samesign ugt i64 %i.d, %i.b
  br i1 %i.l, label %bb.g, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE10insert_mutB10_.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_(ptr nonnull %2, ptr nonnull readonly align 8 dereferenceable(192) %3) #24
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = sub nuw nsw i64 %i.d, %i.b
  %i.p = shl nuw nsw i64 %i.o, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.k, i64 %i.p, i1 false), !noalias !121
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE10insert_mutB10_.exit

bb.h:                                             ; preds = %bb.c
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !121
  unreachable

bb.j:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.m

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtB6_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EE10insert_mutB10_.exit: ; preds = %bb.e, %bb.g
  store ptr %2, ptr %i.k, align 8, !noalias !121
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %3, ptr %i.r, align 8, !noalias !121
  %i.s = add nuw nsw i64 %i.d, 1
  store i64 %i.s, ptr %i.c, align 8, !alias.scope !120, !noalias !121
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsC8CapfvpQ1_5salsa5zalsaNtB5_5Zalsa21lookup_ingredient_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(1368) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = zext i32 %2 to i64                       ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp ugt i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @26, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = load <2 x ptr>, ptr %i.i, align 8
  store <2 x ptr> %i.k, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_1

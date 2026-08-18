inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBL_14IngredientImplpE11clear_memos5inner14TableDropGuardEBN_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !2087, !invariant.load !3, !noalias !2792
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) %i.w) #63, !noalias !2792
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEEB1C_.exit.i.i

.split.i.i:                                       ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !2137, !invariant.load !3, !noalias !2792 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %.split.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !2087, !invariant.load !3, !noalias !2792
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) %i.ac) #63, !noalias !2792
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_.exit5.i.i.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %.split.i.i
  resume { ptr, i32 } %i.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEEB1C_.exit.i.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.d, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not.i.i, label %_RNvXNvNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBa_14IngredientImplpE11clear_memos5innerNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop.exit, label %.lr.ph.split.i.i

_RNvXNvNvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBa_14IngredientImplpE11clear_memos5innerNtB2_14TableDropGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEEB1C_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !3, !align !2086, !noundef !3 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !2137, !invariant.load !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !2087, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #63
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !2137, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !2087, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #63
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit: ; preds = %bb.c, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph25
  %i.r = add i64 %.sroa.0.124, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i4.i
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.e
  %.sroa.0.124 = phi i64 [ %i.r, %bb.e ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !3, !align !2086, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs45bxiIjzMqg_5salsa10ingredient10IngredientEL_EEB1e_(ptr %.val, ptr nonnull %.val7) #65
          to label %bb.e unwind label %bb.f

._crit_edge26:                                    ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.k

bb.f:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCs45bxiIjzMqg_5salsa10durability10DurabilityBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @46, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCs45bxiIjzMqg_5salsa5cycle14IterationStampBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdBM_ECs45bxiIjzMqg_5salsa(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @28, ptr noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RINvNtCsc4HYy37PfYO_6boxcar7buckets21allocate_race_and_getINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1m_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = icmp ugt i64 %1, 192153584101141162
  br i1 %i.b, label %.split5.i, label %.split.i

.split5.i:                                        ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @113, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #62
  unreachable

.split.i:                                         ; preds = %bb.a
  %i.c = mul nuw nsw i64 %1, 48                   ; 3 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63
  %i.d = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed(i64 noundef %i.c, i64 noundef 8) #63 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvNtCsc4HYy37PfYO_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1f_.exit, !prof !4

bb.b:                                             ; preds = %.split.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.c) #62
  unreachable

_RINvNtCsc4HYy37PfYO_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1f_.exit: ; preds = %.split.i
  %i.f = cmpxchg ptr %0, ptr null, ptr %i.d release acquire, align 8 ; 2 uses
  %.sroa.18.0.in.i = extractvalue { ptr, i1 } %i.f, 1
  br i1 %.sroa.18.0.in.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEEB1U_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEEB1U_.exit: ; preds = %_RINvNtCsc4HYy37PfYO_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1f_.exit
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.f, 0
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 8) #63
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsc4HYy37PfYO_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1f_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEEB1U_.exit
  %.sroa.0.0 = phi ptr [ %.sroa.01.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEEB1U_.exit ], [ %i.d, %_RINvNtCsc4HYy37PfYO_6boxcar7buckets14allocate_sliceINtNtNtB4_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1f_.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCINvMs1_B11_NtB11_5Zalsa3newNtNtB13_13database_impl12DatabaseImplE0E0INtNtB1L_3vec3VecBZ_EEB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nsw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 200000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i11, 103         ; 3 uses
  br i1 %i.d, label %bb.c, label %3

3:                                                ; preds = %bb.a
  %4 = mul i64 %.sroa.0.0.i12, 40                 ; 3 uses
  %or.cond.i.i.i = icmp ugt i64 %i.c, 230584300921369395
  br i1 %or.cond.i.i.i, label %.noexc, label %5, !prof !2076

5:                                                ; preds = %3
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %7, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2800
  %i.e = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %4, i64 noundef range(i64 1, 129) 8) #63, !noalias !2800 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %7

.noexc:                                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %3
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %3 ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %4) #62
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit13, label %bb.f

7:                                                ; preds = %5, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %5 ], [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %5 ], [ %.sroa.0.0.i12, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %8 = icmp samesign ule i64 %.sroa.0.0.i12, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %8)
  %9 = mul nuw i64 %.sroa.4.0.i.i, 40
  br label %bb.c

bb.c:                                             ; preds = %7, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %.sroa.10.0.i.i, %7 ] ; 4 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %9, %7 ]   ; 2 uses
  %.sroa.4.0 = phi i64 [ 102, %bb.a ], [ %.sroa.4.0.i.i, %7 ]
  %.pn25 = phi ptr [ %i.a, %bb.a ], [ %.sroa.10.0.i.i, %7 ]
  %i.h = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn25, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.h, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit, label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %.sroa.0.1, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit13: ; preds = %bb.f, %bb.b
  resume { ptr, i32 } %i.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %.sroa.0.1, i64 noundef range(i64 1, -9223372036854775807) 8) #63
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEEB1b_.exit13
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBY_2id2IdENCINvMB6_SBT_16sort_unstable_byNCNvMs1_BW_NtBW_11IdentityMap5drain0E0EBY_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !2815, !noalias !2816, !noundef !3 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !2816, !noalias !2815, !noundef !3 ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %.split, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

.split:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !2816, !noalias !2815, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !2815, !noalias !2816, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !77, !alias.scope !2816, !noalias !2815, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !range !77, !alias.scope !2815, !noalias !2816, !noundef !3 ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.l
  %i.p = icmp ult i32 %i.n, %i.l
  %i.q = icmp ult i32 %i.j, %i.h
  %spec.select.i = select i1 %i.o, i1 %i.q, i1 %i.p
  br i1 %spec.select.i, label %.preheader, label %.preheader17

.preheader:                                       ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.split
  %.not27 = icmp eq i64 %1, 2
  br i1 %.not27, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph23

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit: ; preds = %bb.b
  %i.r = icmp ult i32 %i.c, %i.e
  br i1 %i.r, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %.split
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %i.s = phi i32 [ %i.x, %bb.c ], [ %i.c, %.preheader17 ] ; 2 uses
  %.sroa.01.0.i19 = phi i64 [ %i.am, %bb.c ], [ 2, %.preheader17 ] ; 5 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 3 uses
  %i.u = add nsw i64 %.sroa.01.0.i19, -1          ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  tail call void @llvm.assume(i1 %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2825)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !2827, !noalias !2828, !noundef !3 ; 3 uses
  %i.y = icmp eq i32 %i.x, %i.s
  br i1 %i.y, label %.split11, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5

.split11:                                         ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !alias.scope !2828, !noalias !2827, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !2827, !noalias !2828, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !range !77, !alias.scope !2828, !noalias !2827, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !range !77, !alias.scope !2827, !noalias !2828, !noundef !3 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.af
  %i.aj = icmp ult i32 %i.ah, %i.af
  %i.ak = icmp ult i32 %i.ad, %i.ab
  %spec.select.i4 = select i1 %i.ai, i1 %i.ak, i1 %i.aj
  br i1 %spec.select.i4, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %bb.c

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5: ; preds = %.lr.ph
  %i.al = icmp ult i32 %i.x, %i.s
  br i1 %i.al, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %bb.c

bb.c:                                             ; preds = %.split11, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5
  %i.am = add nuw nsw i64 %.sroa.01.0.i19, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph

.lr.ph23:                                         ; preds = %.preheader, %bb.d
  %i.an = phi i32 [ %i.as, %bb.d ], [ %i.c, %.preheader ] ; 2 uses
  %.sroa.01.1.i22 = phi i64 [ %i.bh, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.1.i22 ; 3 uses
  %i.ap = add nsw i64 %.sroa.01.1.i22, -1         ; 2 uses
  %i.aq = icmp samesign ult i64 %i.ap, %1
  tail call void @llvm.assume(i1 %i.aq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !2839, !noalias !2840, !noundef !3 ; 3 uses
  %i.at = icmp eq i32 %i.as, %i.an
  br i1 %i.at, label %.split12, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8

.split12:                                         ; preds = %.lr.ph23
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ap ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !2840, !noalias !2839, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !2839, !noalias !2840, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !range !77, !alias.scope !2840, !noalias !2839, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !range !77, !alias.scope !2839, !noalias !2840, !noundef !3 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, %i.ba
  %i.be = icmp ult i32 %i.bc, %i.ba
  %i.bf = icmp ult i32 %i.ay, %i.aw
  %spec.select.i7 = select i1 %i.bd, i1 %i.bf, i1 %i.be
  br i1 %spec.select.i7, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8: ; preds = %.lr.ph23
  %i.bg = icmp ult i32 %i.as, %i.an
  br i1 %i.bg, label %bb.d, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit

bb.d:                                             ; preds = %.split12, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8
  %i.bh = add nuw nsw i64 %.sroa.01.1.i22, 1      ; 2 uses
  %exitcond31.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond31.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit, label %.lr.ph23

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5, %bb.c, %.split11, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8, %bb.d, %.split12, %.preheader17, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader17 ], [ true, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8 ], [ true, %.split12 ], [ true, %bb.d ], [ false, %.split11 ], [ false, %bb.c ], [ false, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader17 ], [ %.sroa.01.1.i22, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit8 ], [ %1, %bb.d ], [ %.sroa.01.1.i22, %.split12 ], [ %.sroa.01.0.i19, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit5 ], [ %1, %bb.c ], [ %.sroa.01.0.i19, %.split11 ] ; 2 uses
  %i.bi = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB17_2id2IdENCINvMB6_SB12_16sort_unstable_byNCNvMs1_B15_NtB15_11IdentityMap5drain0E0EB17_.exit
  %i.bk = or i64 %1, 1
  %i.bl = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 1
  %i.bo = xor i32 %i.bn, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1c_2id2IdENCINvMB8_SB17_16sort_unstable_byNCNvMs1_B1a_NtB1a_11IdentityMap5drain0E0EB1c_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, i32 noundef %i.bo, ptr noalias noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.bp = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.by, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.br = xor i64 %.sroa.0.016.i.i, -1
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.bt = getelementptr [24 x i8], ptr %i.bq, i64 %i.br ; 3 uses
  %i.bu = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !2846, !noalias !2844
  %i.bv = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !2852, !noalias !2841
  store <2 x i64> %i.bv, ptr %i.bs, align 8, !alias.scope !2846, !noalias !2844
  store <2 x i64> %i.bu, ptr %i.bt, align 8, !alias.scope !2852, !noalias !2841
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !2859, !noalias !2860
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !2861, !noalias !2862
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bw, align 8, !alias.scope !2859, !noalias !2860
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.bx, align 8, !alias.scope !2861, !noalias !2862
  %i.by = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.by, %i.bp
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE7reverseBz_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBz_2id2IdE12split_at_mutBz_.exit11.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSj7reverseCs45bxiIjzMqg_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load i64, ptr %i.b, align 8, !alias.scope !2863, !noalias !2866, !noundef !3 ; 3 uses
  %.val7 = load i64, ptr %0, align 8, !alias.scope !2866, !noalias !2863, !noundef !3
  %i.c = icmp ult i64 %.val6, %.val7              ; 2 uses
  %.not22 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader12

.preheader12:                                     ; preds = %bb.b
  br i1 %.not22, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3001)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !3003, !noalias !3004, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !alias.scope !3004, !noalias !3003, !noundef !3 ; 2 uses
  %i.e = icmp eq i32 %i.b, %i.d
  %i.f = icmp ult i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !3004, !noalias !3003, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3003, !noalias !3004, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !77, !alias.scope !3004, !noalias !3003, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !range !77, !alias.scope !3003, !noalias !3004, !noundef !3 ; 2 uses
  %i.o = icmp eq i32 %i.n, %i.l
  %i.p = icmp ult i32 %i.n, %i.l
  %i.q = icmp ult i32 %i.j, %i.h
  %spec.select.i = select i1 %i.o, i1 %i.q, i1 %i.p
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.a ], [ %spec.select.i, %bb.b ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3013)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !3015, !noalias !3016, !noundef !3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !3016, !noalias !3015, !noundef !3 ; 2 uses
  %i.v = icmp eq i32 %i.s, %i.u
  %i.w = icmp ult i32 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3

bb.c:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !3016, !noalias !3015, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !3015, !noalias !3016, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !range !77, !alias.scope !3016, !noalias !3015, !noundef !3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load i32, ptr %i.ad, align 8, !range !77, !alias.scope !3015, !noalias !3016, !noundef !3 ; 2 uses
  %i.af = icmp eq i32 %i.ae, %i.ac
  %i.ag = icmp ult i32 %i.ae, %i.ac
  %i.ah = icmp ult i32 %i.aa, %i.y
  %spec.select.i2 = select i1 %i.af, i1 %i.ah, i1 %i.ag
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit, %bb.c
  %.sroa.0.0.i.i1 = phi i1 [ %i.w, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit ], [ %spec.select.i2, %bb.c ] ; 2 uses
  %i.ai = zext i1 %.sroa.0.0.i.i to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ai ; 5 uses
  %i.ak = xor i1 %.sroa.0.0.i.i, true
  %i.al = zext i1 %i.ak to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.al ; 6 uses
  %i.an = select i1 %.sroa.0.0.i.i1, i64 3, i64 2
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.an ; 6 uses
  %i.ap = select i1 %.sroa.0.0.i.i1, i64 2, i64 3
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ap ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3025)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !alias.scope !3027, !noalias !3028, !noundef !3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !3028, !noalias !3027, !noundef !3 ; 2 uses
  %i.av = icmp eq i32 %i.as, %i.au
  %i.aw = icmp ult i32 %i.as, %i.au
  br i1 %i.av, label %bb.d, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6

bb.d:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !3028, !noalias !3027, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !alias.scope !3027, !noalias !3028, !noundef !3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !range !77, !alias.scope !3028, !noalias !3027, !noundef !3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !range !77, !alias.scope !3027, !noalias !3028, !noundef !3 ; 2 uses
  %i.bf = icmp eq i32 %i.be, %i.bc
  %i.bg = icmp ult i32 %i.be, %i.bc
  %i.bh = icmp ult i32 %i.ba, %i.ay
  %spec.select.i5 = select i1 %i.bf, i1 %i.bh, i1 %i.bg
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3, %bb.d
  %.sroa.0.0.i.i4 = phi i1 [ %i.aw, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit3 ], [ %spec.select.i5, %bb.d ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !3039, !noalias !3040, !noundef !3 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !3040, !noalias !3039, !noundef !3 ; 2 uses
  %i.bm = icmp eq i32 %i.bj, %i.bl
  %i.bn = icmp ult i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.e, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9

bb.e:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !3040, !noalias !3039, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !3039, !noalias !3040, !noundef !3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !range !77, !alias.scope !3040, !noalias !3039, !noundef !3 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !range !77, !alias.scope !3039, !noalias !3040, !noundef !3 ; 2 uses
  %i.bw = icmp eq i32 %i.bv, %i.bt
  %i.bx = icmp ult i32 %i.bv, %i.bt
  %i.by = icmp ult i32 %i.br, %i.bp
  %spec.select.i8 = select i1 %i.bw, i1 %i.by, i1 %i.bx
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6, %bb.e
  %.sroa.0.0.i.i7 = phi i1 [ %i.bn, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit6 ], [ %spec.select.i8, %bb.e ] ; 3 uses
  %i.bz = select i1 %.sroa.0.0.i.i7, ptr %i.ao, ptr %i.am, !unpredictable !3
  %i.ca = select i1 %.sroa.0.0.i.i4, ptr %i.aj, ptr %i.bz, !unpredictable !3 ; 5 uses
  %i.cb = select i1 %.sroa.0.0.i.i4, ptr %i.am, ptr %i.ao, !unpredictable !3
  %i.cc = select i1 %.sroa.0.0.i.i7, ptr %i.aq, ptr %i.cb, !unpredictable !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !alias.scope !3051, !noalias !3052, !noundef !3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !alias.scope !3052, !noalias !3051, !noundef !3 ; 2 uses
  %i.ch = icmp eq i32 %i.ce, %i.cg
  %i.ci = icmp ult i32 %i.ce, %i.cg
  br i1 %i.ch, label %bb.f, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12

bb.f:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !3052, !noalias !3051, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !alias.scope !3051, !noalias !3052, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !range !77, !alias.scope !3052, !noalias !3051, !noundef !3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cq = load i32, ptr %i.cp, align 8, !range !77, !alias.scope !3051, !noalias !3052, !noundef !3 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %i.co
  %i.cs = icmp ult i32 %i.cq, %i.co
  %i.ct = icmp ult i32 %i.cm, %i.ck
  %spec.select.i11 = select i1 %i.cr, i1 %i.ct, i1 %i.cs
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit12: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9, %bb.f
  %.sroa.0.0.i.i10 = phi i1 [ %i.ci, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit9 ], [ %spec.select.i11, %bb.f ] ; 2 uses
  %i.cu = select i1 %.sroa.0.0.i.i7, ptr %i.am, ptr %i.aq, !unpredictable !3
  %i.cv = select i1 %.sroa.0.0.i.i4, ptr %i.ao, ptr %i.aj, !unpredictable !3
  %i.cw = select i1 %.sroa.0.0.i.i10, ptr %i.cc, ptr %i.ca, !unpredictable !3
  %i.cx = select i1 %.sroa.0.0.i.i10, ptr %i.ca, ptr %i.cc, !unpredictable !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1k_2id2IdENCINvMB8_SB1f_16sort_unstable_byNCNvMs1_B1i_NtB1i_11IdentityMap5drain0E0EB1k_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1152 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3053)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %1, 1                           ; 6 uses
  %i.d = icmp samesign ugt i64 %1, 7
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.f = getelementptr [24 x i8], ptr %i.a, i64 %i.c ; 7 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1e_2id2IdENCINvMB8_SB19_16sort_unstable_byNCNvMs1_B1c_NtB1c_11IdentityMap5drain0E0EB1e_(ptr noundef %i.e, ptr noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !3056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !3056
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 4 uses
  %i.g = sub nsw i64 %1, %i.c                     ; 2 uses
  %i.h = icmp samesign ult i64 %.sroa.0.0.i, %i.c
  br i1 %i.h, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i, %bb.e
  %i.i = icmp ult i64 %.sroa.0.0.i, %i.g
  br i1 %i.i, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ar, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.05.08.1.i
  %.idx.1.i = mul nuw nsw i64 %.sroa.05.08.1.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.1.i ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !alias.scope !3056
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3058)
  call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  call void @llvm.experimental.noalias.scope.decl(metadata !3063)
  call void @llvm.experimental.noalias.scope.decl(metadata !3066)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i32, ptr %i.m, align 8, !alias.scope !3068, !noalias !3069, !noundef !3 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 -16
  %i.p = load i32, ptr %i.o, align 8, !alias.scope !3070, !noalias !3071, !noundef !3 ; 2 uses
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %.split.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i: ; preds = %.lr.ph.1.i
  %i.r = icmp ult i32 %i.n, %i.p
  br i1 %i.r, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.622.0.copyload.pre.i.1.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i.1.i, align 8, !alias.scope !3072, !noalias !3053
  %.sroa.723.0..sroa_idx.phi.trans.insert.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.723.0.copyload.pre.i.1.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i.1.i, align 4, !alias.scope !3072, !noalias !3053
  br label %bb.f

.split.i.1.i:                                     ; preds = %.lr.ph.1.i
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !3070, !noalias !3071, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.v = load i32, ptr %i.u, align 4, !alias.scope !3068, !noalias !3069, !noundef !3 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !range !77, !alias.scope !3070, !noalias !3071, !noundef !3 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.z = load i32, ptr %i.y, align 8, !range !77, !alias.scope !3068, !noalias !3069, !noundef !3 ; 3 uses
  %i.aa = icmp eq i32 %i.z, %i.x
  %i.ab = icmp ult i32 %i.z, %i.x
  %i.ac = icmp ult i32 %i.v, %i.t
  %spec.select.i.i32.1.i = select i1 %i.aa, i1 %i.ac, i1 %i.ab
  br i1 %spec.select.i.i32.1.i, label %bb.f, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

bb.f:                                             ; preds = %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i
  %.sroa.723.0.copyload.i.1.i = phi i32 [ %.sroa.723.0.copyload.pre.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i ], [ %i.v, %.split.i.1.i ] ; 2 uses
  %.sroa.622.0.copyload.i.1.i = phi i32 [ %.sroa.622.0.copyload.pre.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.1.i ], [ %i.z, %.split.i.1.i ] ; 3 uses
  %.sroa.019.0.copyload.i.1.i = load i64, ptr %i.k, align 8, !alias.scope !3072, !noalias !3053
  %.sroa.521.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.521.0.copyload.i.1.i = load i32, ptr %.sroa.521.0..sroa_idx.i.1.i, align 4, !alias.scope !3072, !noalias !3053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !alias.scope !3072, !noalias !3053
  %i.ad = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ad, label %.split5._crit_edge.i.1.i, label %.lr.ph.i31.1.i

.lr.ph.i31.1.i:                                   ; preds = %bb.f, %.backedge.i.1.i
  %.sroa.0.06.i.1.i = phi ptr [ %i.ae, %.backedge.i.1.i ], [ %i.l, %bb.f ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -24 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -16
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !3073, !noalias !3078, !noundef !3 ; 2 uses
  %i.ah = icmp eq i32 %i.n, %i.ag
  br i1 %i.ah, label %.split5.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i: ; preds = %.lr.ph.i31.1.i
  %i.ai = icmp ult i32 %i.n, %i.ag
  br i1 %i.ai, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.split5.i.1.i:                                    ; preds = %.lr.ph.i31.1.i
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !3073, !noalias !3078, !noundef !3
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -8
  %i.am = load i32, ptr %i.al, align 8, !range !77, !alias.scope !3073, !noalias !3078, !noundef !3 ; 2 uses
  %i.an = icmp eq i32 %.sroa.622.0.copyload.i.1.i, %i.am
  %i.ao = icmp ult i32 %.sroa.622.0.copyload.i.1.i, %i.am
  %i.ap = icmp ult i32 %.sroa.723.0.copyload.i.1.i, %i.ak
  %spec.select.i9.i.1.i = select i1 %i.an, i1 %i.ap, i1 %i.ao
  br i1 %spec.select.i9.i.1.i, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.1.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !alias.scope !3072, !noalias !3053
  %i.aq = icmp eq ptr %i.ae, %i.f
  br i1 %i.aq, label %.split5._crit_edge.i.1.i, label %.lr.ph.i31.1.i

.split5._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i, %bb.f
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.l, %bb.f ], [ %.sroa.0.06.i.1.i, %.split5.i.1.i ], [ %.sroa.0.06.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.1.i ], [ %i.f, %.backedge.i.1.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i.1.i, ptr %.sroa.0.0.lcssa.i.1.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 8
  store i32 %i.n, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 12
  store i32 %.sroa.521.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !3072, !noalias !3081
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 16
  store i32 %.sroa.622.0.copyload.i.1.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.1.i, i64 20
  store i32 %.sroa.723.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !3072, !noalias !3081
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i: ; preds = %.split5._crit_edge.i.1.i, %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.1.i
  %i.ar = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.1.i, %.loopexit.i
  %i.as = add nsw i64 %1, -1                      ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.as
  %i.av = getelementptr i8, ptr %i.f, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i
  %i.aw = getelementptr i8, ptr %i.cm, i64 24     ; 2 uses
  %i.ax = getelementptr i8, ptr %i.cl, i64 24
  %i.ay = and i64 %1, 1
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.j, label %bb.i

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bs, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ba, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.a, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.f, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cm, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.av, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cl, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.au, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cn, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i ], [ %i.at, %.loopexit.1.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  call void @llvm.experimental.noalias.scope.decl(metadata !3089)
  call void @llvm.experimental.noalias.scope.decl(metadata !3091)
  call void @llvm.experimental.noalias.scope.decl(metadata !3094)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !alias.scope !3096, !noalias !3099, !noundef !3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !alias.scope !3100, !noalias !3101, !noundef !3 ; 2 uses
  %i.bf = icmp eq i32 %i.bc, %i.be
  %i.bg = icmp ult i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.g, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !alias.scope !3100, !noalias !3101, !noundef !3
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 20
  %i.bk = load i32, ptr %i.bj, align 4, !alias.scope !3096, !noalias !3099, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !range !77, !alias.scope !3100, !noalias !3101, !noundef !3 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !range !77, !alias.scope !3096, !noalias !3099, !noundef !3 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, %i.bm
  %i.bq = icmp ult i32 %i.bo, %i.bm
  %i.br = icmp ult i32 %i.bk, %i.bi
  %spec.select.i.i.i = select i1 %i.bp, i1 %i.br, i1 %i.bq
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.bg, %.lr.ph.i.i ], [ %spec.select.i.i.i, %bb.g ] ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !3056, !noalias !3102
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i.i, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  call void @llvm.experimental.noalias.scope.decl(metadata !3109)
  call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !alias.scope !3116, !noalias !3117, !noundef !3 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !alias.scope !3118, !noalias !3119, !noundef !3 ; 2 uses
  %i.bx = icmp eq i32 %i.bu, %i.bw
  %i.by = icmp ult i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.h, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i

bb.h:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !alias.scope !3118, !noalias !3119, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !alias.scope !3116, !noalias !3117, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.015.06.i.i, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !range !77, !alias.scope !3118, !noalias !3119, !noundef !3 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.017.05.i.i, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !range !77, !alias.scope !3116, !noalias !3117, !noundef !3 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, %i.ce
  %i.ci = icmp ult i32 %i.cg, %i.ce
  %i.cj = icmp ult i32 %i.cc, %i.ca
  %spec.select.i25.i.i = select i1 %i.ch, i1 %i.cj, i1 %i.ci
  br label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit26.i.i: ; preds = %bb.h, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i
  %.sroa.0.0.i.i24.i.i = phi i1 [ %i.by, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i.i ], [ %spec.select.i25.i.i, %bb.h ] ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i24.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ck = xor i1 %.sroa.0.0.i.i24.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !3056, !noalias !3120
  %.neg.i.i.i = sext i1 %i.ck to i64
  %i.cl = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i24.i.i to i64
  %i.cm = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.aw ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !3056
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 24, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.i ]
  %i.co = icmp ne ptr %.sroa.06.1.i.i, %i.aw
  %i.cp = icmp ne ptr %.sroa.011.1.i.i, %i.ax
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp, !prof !3124
  br i1 %or.cond.i.i, label %bb.k, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit, !prof !3124

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #62
          to label %.noexc.i unwind label %bb.l, !noalias !3053

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.cr, i1 false), !alias.scope !3056, !noalias !3125
  resume { ptr, i32 } %i.cq

.lr.ph.i:                                         ; preds = %bb.e, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ea, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i ], [ %.sroa.0.0.i, %bb.e ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx.i = mul nuw nsw i64 %.sroa.05.08.i, 24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !3056
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3130)
  call void @llvm.experimental.noalias.scope.decl(metadata !3132)
  call void @llvm.experimental.noalias.scope.decl(metadata !3134)
  call void @llvm.experimental.noalias.scope.decl(metadata !3136)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !alias.scope !3138, !noalias !3139, !noundef !3 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 -16
  %i.cy = load i32, ptr %i.cx, align 8, !alias.scope !3140, !noalias !3141, !noundef !3 ; 2 uses
  %i.cz = icmp eq i32 %i.cw, %i.cy
  br i1 %i.cz, label %.split.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.da = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.db = load i32, ptr %i.da, align 4, !alias.scope !3140, !noalias !3141, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !3138, !noalias !3139, !noundef !3 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.df = load i32, ptr %i.de, align 8, !range !77, !alias.scope !3140, !noalias !3141, !noundef !3 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dh = load i32, ptr %i.dg, align 8, !range !77, !alias.scope !3138, !noalias !3139, !noundef !3 ; 3 uses
  %i.di = icmp eq i32 %i.dh, %i.df
  %i.dj = icmp ult i32 %i.dh, %i.df
  %i.dk = icmp ult i32 %i.dd, %i.db
  %spec.select.i.i32.i = select i1 %i.di, i1 %i.dk, i1 %i.dj
  br i1 %spec.select.i.i32.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i: ; preds = %.lr.ph.i
  %i.dl = icmp ult i32 %i.cw, %i.cy
  br i1 %i.dl, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.622.0.copyload.pre.i.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i.i, align 8, !alias.scope !3072, !noalias !3053
  %.sroa.723.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %.sroa.723.0.copyload.pre.i.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !3072, !noalias !3053
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i, %.split.i.i
  %.sroa.723.0.copyload.i.i = phi i32 [ %.sroa.723.0.copyload.pre.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i ], [ %i.dd, %.split.i.i ] ; 2 uses
  %.sroa.622.0.copyload.i.i = phi i32 [ %.sroa.622.0.copyload.pre.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i.i ], [ %i.dh, %.split.i.i ] ; 3 uses
  %.sroa.019.0.copyload.i.i = load i64, ptr %i.ct, align 8, !alias.scope !3072, !noalias !3053
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %.sroa.521.0.copyload.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i, align 4, !alias.scope !3072, !noalias !3053
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !alias.scope !3072, !noalias !3053
  %i.dm = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dm, label %.split5._crit_edge.i.i, label %.lr.ph.i31.i

.lr.ph.i31.i:                                     ; preds = %bb.m, %.backedge.i.i
  %.sroa.0.06.i.i = phi ptr [ %i.dn, %.backedge.i.i ], [ %i.cu, %bb.m ] ; 7 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -24 ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -16
  %i.dp = load i32, ptr %i.do, align 8, !alias.scope !3073, !noalias !3078, !noundef !3 ; 2 uses
  %i.dq = icmp eq i32 %i.cw, %i.dp
  br i1 %i.dq, label %.split5.i.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i

.split5.i.i:                                      ; preds = %.lr.ph.i31.i
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !3073, !noalias !3078, !noundef !3
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.06.i.i, i64 -8
  %i.du = load i32, ptr %i.dt, align 8, !range !77, !alias.scope !3073, !noalias !3078, !noundef !3 ; 2 uses
  %i.dv = icmp eq i32 %.sroa.622.0.copyload.i.i, %i.du
  %i.dw = icmp ult i32 %.sroa.622.0.copyload.i.i, %i.du
  %i.dx = icmp ult i32 %.sroa.723.0.copyload.i.i, %i.ds
  %spec.select.i9.i.i = select i1 %i.dv, i1 %i.dx, i1 %i.dw
  br i1 %spec.select.i9.i.i, label %.backedge.i.i, label %.split5._crit_edge.i.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i: ; preds = %.lr.ph.i31.i
  %i.dy = icmp ult i32 %i.cw, %i.dp
  br i1 %i.dy, label %.backedge.i.i, label %.split5._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !3072, !noalias !3053
  %i.dz = icmp eq ptr %i.dn, %i.a
  br i1 %i.dz, label %.split5._crit_edge.i.i, label %.lr.ph.i31.i

.split5._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i, %.split5.i.i, %bb.m
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.cu, %bb.m ], [ %.sroa.0.06.i.i, %.split5.i.i ], [ %.sroa.0.06.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i.i ], [ %i.a, %.backedge.i.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i.i, ptr %.sroa.0.0.lcssa.i.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8
  store i32 %i.cw, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 12
  store i32 %.sroa.521.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !3072, !noalias !3081
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  store i32 %.sroa.622.0.copyload.i.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3072, !noalias !3081
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 20
  store i32 %.sroa.723.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !3072, !noalias !3081
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit.i: ; preds = %.split5._crit_edge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i30.i, %.split.i.i
  %i.ea = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ea, %i.c
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1x_2id2IdENCINvMB8_SB1s_16sort_unstable_byNCNvMs1_B1v_NtB1v_11IdentityMap5drain0E0EB1x_.exit: ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvMs1_B1o_NtB1o_5Zalsa3newNtNtB1q_13database_impl12DatabaseImplE0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 5 uses
  %.idx = mul nuw nsw i64 %1, 40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.03 = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit
  %.sroa.0.06 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit ], [ %.sroa.0.03, %.lr.ph.preheader ] ; 7 uses
  %.pn5 = phi ptr [ %.sroa.0.06, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %i.b = getelementptr i8, ptr %.pn5, i64 48      ; 2 uses
  %.val11.i = load ptr, ptr %i.b, align 8, !alias.scope !3142, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %.pn5, i64 72      ; 2 uses
  %.val12.i = load i8, ptr %i.c, align 8, !range !2090, !noundef !3 ; 2 uses
  %i.d = getelementptr i8, ptr %.pn5, i64 8
  %.val13.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %i.e = getelementptr i8, ptr %.pn5, i64 32
  %.val14.i = load i8, ptr %i.e, align 8, !range !2090, !noundef !3 ; 2 uses
  %i.f = sub nsw i8 %.val12.i, %.val14.i
  %i.g = tail call { ptr, i64 } %.val11.i(), !noalias !3145, !inline_history !3148 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.j = tail call { ptr, i64 } %.val13.i(), !noalias !3149, !inline_history !3148 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l)
  %i.m = tail call i32 @memcmp(ptr %i.h, ptr %i.k, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %i.p = sub i64 %i.i, %i.l
  %spec.select.i.i.i = select i1 %i.o, i64 %i.p, i64 %i.n
  %i.q = icmp eq i8 %.val12.i, %.val14.i
  %i.r = icmp slt i64 %spec.select.i.i.i, 0
  %i.s = icmp eq i8 %i.f, -1
  %i.t = select i1 %i.q, i1 %i.r, i1 %i.s
  br i1 %i.t, label %bb.a, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit

bb.a:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %.sroa.018.0.copyload.i = load i64, ptr %.sroa.0.06, align 8 ; 2 uses
  %.sroa.419.0.copyload.i = load ptr, ptr %i.b, align 8 ; 3 uses
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn5, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i, i64 16, i1 false)
  %.sroa.621.0.copyload.i = load i8, ptr %i.c, align 8 ; 4 uses
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn5, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.722.0..sroa_idx.i, i64 7, i1 false)
  %.sroa.0.0.i4 = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i4, i64 40, i1 false)
  %i.u = icmp eq ptr %.sroa.0.0.i4, %0
  br i1 %i.u, label %._crit_edge9, label %.lr.ph8

bb.b:                                             ; preds = %bb.c
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -40 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i, i64 40, i1 false)
  %i.v = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.v, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.a, %bb.b
  %.sroa.0.0.i6 = phi ptr [ %.sroa.0.0.i, %bb.b ], [ %.sroa.0.0.i4, %bb.a ] ; 6 uses
  %.sroa.5.0.i5 = phi ptr [ %.sroa.0.0.i6, %bb.b ], [ %.sroa.0.06, %bb.a ] ; 7 uses
  %i.w = getelementptr i8, ptr %.sroa.5.0.i5, i64 -72
  %.val9.i = load ptr, ptr %i.w, align 8          ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.5.0.i5, i64 -48
  %.val10.i = load i8, ptr %i.x, align 8, !range !2090, !noundef !3 ; 2 uses
  %i.y = sub nsw i8 %.sroa.621.0.copyload.i, %.val10.i
  %i.z = invoke { ptr, i64 } %.sroa.419.0.copyload.i()
          to label %.noexc.i unwind label %bb.d, !inline_history !3152 ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.aa = invoke { ptr, i64 } %.val9.i()
          to label %bb.c unwind label %bb.d, !inline_history !3152 ; 2 uses

bb.c:                                             ; preds = %.noexc.i
  %i.ab = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.z, 0
  %i.ad = extractvalue { ptr, i64 } %i.aa, 0
  %i.ae = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr %i.ac, ptr %i.ad, i64 %spec.store.select.i.i15.i) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.ab, %i.ae
  %spec.select.i.i16.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp eq i8 %.sroa.621.0.copyload.i, %.val10.i
  %i.ak = icmp slt i64 %spec.select.i.i16.i, 0
  %i.al = icmp eq i8 %i.y, -1
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge9

._crit_edge9:                                     ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.06, %bb.a ], [ %.sroa.0.0.i6, %bb.b ], [ %.sroa.5.0.i5, %bb.c ] ; 4 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %.sroa.0.0.i6, %bb.c ]
  store i64 %.sroa.018.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3153
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -32
  store ptr %.sroa.419.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !3153
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !3153
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i8 %.sroa.621.0.copyload.i, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !3153
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, i64 7, i1 false), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit

bb.d:                                             ; preds = %.noexc.i, %.lr.ph8
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.018.0.copyload.i, ptr %.sroa.0.0.i6, align 8, !noalias !3158
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i5, i64 -32
  store ptr %.sroa.419.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !3158
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i5, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !3158
  %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i5, i64 -8
  store i8 %.sroa.621.0.copyload.i, ptr %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i, align 8, !noalias !3158
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i5, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i, i64 7, i1 false), !noalias !3158
  resume { ptr, i32 } %i.an

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit: ; preds = %.lr.ph, %._crit_edge9
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1r_2id2IdENCINvMB8_SB1m_16sort_unstable_byNCNvMs1_B1p_NtB1p_11IdentityMap5drain0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #12 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = mul nuw nsw i64 %1, 24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit ], [ %0, %.lr.ph.preheader ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  %i.b = getelementptr inbounds nuw i8, ptr %.pn3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !3173, !noalias !3174, !noundef !3 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pn3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !3174, !noalias !3173, !noundef !3 ; 2 uses
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %.split.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i

.split.i:                                         ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.pn3, i64 20
  %i.h = load i32, ptr %i.g, align 4, !alias.scope !3174, !noalias !3173, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 44
  %i.j = load i32, ptr %i.i, align 4, !alias.scope !3173, !noalias !3174, !noundef !3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn3, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !77, !alias.scope !3174, !noalias !3173, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %i.n = load i32, ptr %i.m, align 8, !range !77, !alias.scope !3173, !noalias !3174, !noundef !3 ; 3 uses
  %i.o = icmp eq i32 %i.n, %i.l
  %i.p = icmp ult i32 %i.n, %i.l
  %i.q = icmp ult i32 %i.j, %i.h
  %spec.select.i.i = select i1 %i.o, i1 %i.q, i1 %i.p
  br i1 %spec.select.i.i, label %bb.a, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i: ; preds = %.lr.ph
  %i.r = icmp ult i32 %i.c, %i.e
  br i1 %i.r, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i: ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i
  %.sroa.622.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 40
  %.sroa.622.0.copyload.pre.i = load i32, ptr %.sroa.622.0..sroa_idx.phi.trans.insert.i, align 8
  %.sroa.723.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 44
  %.sroa.723.0.copyload.pre.i = load i32, ptr %.sroa.723.0..sroa_idx.phi.trans.insert.i, align 4
  br label %bb.a

bb.a:                                             ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i, %.split.i
  %.sroa.723.0.copyload.i = phi i32 [ %.sroa.723.0.copyload.pre.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i ], [ %i.j, %.split.i ] ; 2 uses
  %.sroa.622.0.copyload.i = phi i32 [ %.sroa.622.0.copyload.pre.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit._crit_edge.i ], [ %i.n, %.split.i ] ; 3 uses
  %.sroa.019.0.copyload.i = load i64, ptr %.sroa.0.04, align 8
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn3, i64 36
  %.sroa.521.0.copyload.i = load i32, ptr %.sroa.521.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(24) %.pn3, i64 24, i1 false)
  %i.s = icmp eq ptr %.pn3, %0
  br i1 %i.s, label %.split5._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %.sroa.0.06.i = phi ptr [ %i.t, %.backedge.i ], [ %.pn3, %bb.a ] ; 7 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -24 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -16
  %i.v = load i32, ptr %i.u, align 8, !alias.scope !3175, !noalias !3180, !noundef !3 ; 2 uses
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %.split5.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i

.split5.i:                                        ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !alias.scope !3175, !noalias !3180, !noundef !3
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.06.i, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !range !77, !alias.scope !3175, !noalias !3180, !noundef !3 ; 2 uses
  %i.ab = icmp eq i32 %.sroa.622.0.copyload.i, %i.aa
  %i.ac = icmp ult i32 %.sroa.622.0.copyload.i, %i.aa
  %i.ad = icmp ult i32 %.sroa.723.0.copyload.i, %i.y
  %spec.select.i9.i = select i1 %i.ab, i1 %i.ad, i1 %i.ac
  br i1 %spec.select.i9.i, label %.backedge.i, label %.split5._crit_edge.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i: ; preds = %.lr.ph.i
  %i.ae = icmp ult i32 %i.c, %i.v
  br i1 %i.ae, label %.backedge.i, label %.split5._crit_edge.i

.backedge.i:                                      ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i, %.split5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.af = icmp eq ptr %i.t, %0
  br i1 %i.af, label %.split5._crit_edge.i, label %.lr.ph.i

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i, %.split5.i, %bb.a
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit10.i ], [ %.sroa.0.06.i, %.split5.i ] ; 5 uses
  store i64 %.sroa.019.0.copyload.i, ptr %.sroa.0.0.lcssa.i, align 8, !noalias !3183
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 8
  store i32 %i.c, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !3183
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 12
  store i32 %.sroa.521.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3183
  %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 16
  store i32 %.sroa.622.0.copyload.i, ptr %.sroa.512.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !3183
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i, i64 20
  store i32 %.sroa.723.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3183
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtB1d_2id2IdENCINvMB8_SB18_16sort_unstable_byNCNvMs1_B1b_NtB1b_11IdentityMap5drain0E0EB1d_.exit: ; preds = %.split.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs45bxiIjzMqg_5salsa14tracked_struct8IdentityNtNtBC_2id2IdE16sort_unstable_byNCNvMs1_BA_NtBA_11IdentityMap5drain0E0BC_.exit.i, %.split5._crit_edge.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 1, 32) %1, i64 noundef range(i64 1, 14) %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %2, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not1 = icmp samesign eq i64 %2, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit
  %.sroa.0.02 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.02, i64 -8 ; 3 uses
  %.val9.i = load i64, ptr %.sroa.0.02, align 8, !alias.scope !3188, !noalias !3191, !noundef !3 ; 3 uses
  %.val10.i = load i64, ptr %i.d, align 8, !alias.scope !3191, !noalias !3188, !noundef !3 ; 2 uses
  %i.e = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i64 %.val10.i, ptr %.sroa.0.02, align 8
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge8, label %.lr.ph7

.preheader:                                       ; preds = %.lr.ph7
  store i64 %.val8.i, ptr %.sroa.0.0.i6, align 8
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge8, label %.lr.ph7

.lr.ph7:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i6 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i6, i64 -8 ; 3 uses
  %.val8.i = load i64, ptr %i.h, align 8, !alias.scope !3191, !noalias !3188, !noundef !3 ; 2 uses
  %i.i = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader, %.lr.ph7, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i6, %.lr.ph7 ]
  store i64 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3193
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs45bxiIjzMqg_5salsa.exit: ; preds = %.lr.ph, %._crit_edge8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i124 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.hb, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gz, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.dc, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph79, label %._crit_edge

.lr.ph79:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3198)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 48
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !3201, !noalias !3204, !nonnull !3, !noundef !3
  %i.r = getelementptr i8, ptr %i.o, i64 72
  %.val15.i = load i8, ptr %i.r, align 8, !range !2090, !alias.scope !3198, !noalias !3204, !noundef !3 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !3198, !noalias !3204 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load i8, ptr %i.t, align 8, !range !2090, !alias.scope !3198, !noalias !3204, !noundef !3 ; 2 uses
  %i.u = sub nsw i8 %.val15.i, %.val17.i
  %i.v = tail call { ptr, i64 } %.val14.i(), !noalias !3207, !inline_history !3210 ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16.i) ], !noalias !3211
  %i.y = tail call { ptr, i64 } %.val16.i(), !noalias !3212, !inline_history !3210 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  %spec.store.select.i.i43 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ab = tail call i32 @memcmp(ptr %i.w, ptr %i.z, i64 %spec.store.select.i.i43), !noalias !3211 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %i.x, %i.aa
  %spec.select.i.i44 = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = icmp eq i8 %.val15.i, %.val17.i
  %i.ag = icmp slt i64 %spec.select.i.i44, 0
  %i.ah = icmp eq i8 %i.u, -1
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah     ; 2 uses
  %.not86 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ai, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.k
  br i1 %.not86, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not86, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122, label %.lr.ph73

.lr.ph:                                           ; preds = %.preheader54, %bb.l
  %.val13.i = phi i8 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.sroa.01.0.i.i69 = phi i64 [ %i.bd, %bb.l ], [ 2, %.preheader54 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.0.i.i69 ; 2 uses
  %i.ak = getelementptr [40 x i8], ptr %i.o, i64 %.sroa.01.0.i.i69
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val10.i = load ptr, ptr %i.al, align 8, !alias.scope !3201, !noalias !3204, !nonnull !3, !noundef !3
  %i.am = getelementptr i8, ptr %i.aj, i64 32
  %.val11.i = load i8, ptr %i.am, align 8, !range !2090, !alias.scope !3198, !noalias !3204, !noundef !3 ; 3 uses
  %i.an = getelementptr i8, ptr %i.ak, i64 -32
  %.val12.i = load ptr, ptr %i.an, align 8, !alias.scope !3198, !noalias !3204 ; 2 uses
  %i.ao = sub nsw i8 %.val11.i, %.val13.i
  %i.ap = tail call { ptr, i64 } %.val10.i(), !noalias !3215, !inline_history !3210 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ], !noalias !3211
  %i.as = tail call { ptr, i64 } %.val12.i(), !noalias !3218, !inline_history !3210 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 2 uses
  %spec.store.select.i.i41 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.au)
  %i.av = tail call i32 @memcmp(ptr %i.aq, ptr %i.at, i64 %spec.store.select.i.i41), !noalias !3211 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %i.ar, %i.au
  %spec.select.i.i42 = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp eq i8 %.val11.i, %.val13.i
  %i.ba = icmp slt i64 %spec.select.i.i42, 0
  %i.bb = icmp eq i8 %i.ao, -1
  %i.bc = select i1 %i.az, i1 %i.ba, i1 %i.bb
  br i1 %i.bc, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bd = add nuw i64 %.sroa.01.0.i.i69, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph

.lr.ph73:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i8 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i72 = phi i64 [ %i.by, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.01.1.i.i72 ; 2 uses
  %i.bf = getelementptr [40 x i8], ptr %i.o, i64 %.sroa.01.1.i.i72
  %i.bg = getelementptr i8, ptr %i.be, i64 8
  %.val.i = load ptr, ptr %i.bg, align 8, !alias.scope !3201, !noalias !3204, !nonnull !3, !noundef !3
  %i.bh = getelementptr i8, ptr %i.be, i64 32
  %.val7.i = load i8, ptr %i.bh, align 8, !range !2090, !alias.scope !3198, !noalias !3204, !noundef !3 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.bf, i64 -32
  %.val8.i = load ptr, ptr %i.bi, align 8, !alias.scope !3198, !noalias !3204 ; 2 uses
  %i.bj = sub nsw i8 %.val7.i, %.val9.i
  %i.bk = tail call { ptr, i64 } %.val.i(), !noalias !3221, !inline_history !3210 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ], !noalias !3211
  %i.bn = tail call { ptr, i64 } %.val8.i(), !noalias !3224, !inline_history !3210 ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bp)
  %i.bq = tail call i32 @memcmp(ptr %i.bl, ptr %i.bo, i64 %spec.store.select.i.i), !noalias !3211 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %i.bt = sub i64 %i.bm, %i.bp
  %spec.select.i.i40 = select i1 %i.bs, i64 %i.bt, i64 %i.br
  %i.bu = icmp eq i8 %.val7.i, %.val9.i
  %i.bv = icmp slt i64 %spec.select.i.i40, 0
  %i.bw = icmp eq i8 %i.bj, -1
  %i.bx = select i1 %i.bu, i1 %i.bv, i1 %i.bw
  br i1 %i.bx, label %bb.m, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph73
  %i.by = add nuw i64 %.sroa.01.1.i.i72, 1        ; 2 uses
  %exitcond99.not = icmp eq i64 %i.by, %i.n
  br i1 %exitcond99.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i, label %.lr.ph73

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph73
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i72, %.lr.ph73 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i69, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.bz = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bz)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122: ; preds = %.preheader
  br i1 %.not5.i124, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i
  br i1 %i.ai, label %bb.q, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar7reverseBy_.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.n, i64 %.sroa.01.0)
  %i.ca = shl nuw nsw i64 %.sroa.0.0.i39, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i38, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3227
  %i.cb = shl nuw nsw i64 %.sroa.0.0.i38, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar7reverseBy_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4952 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i120127131, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i ]
  %i.cd = shl nuw nsw i64 %.sroa.0.0.i.i4952, 1
  %i.ce = or disjoint i64 %i.cd, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB13_7sort_byNCINvMs1_B15_NtB15_5Zalsa3newNtNtB17_13database_impl12DatabaseImplE0E0EB17_.exit

bb.q:                                             ; preds = %bb.n
  %i.cf = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3228), !noalias !3204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231), !noalias !3204
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar7reverseBy_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122, %bb.q
  %i.cg = phi i64 [ %i.cf, %bb.q ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122 ]
  %.sroa.0.0.i.i120127131 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB12_7sort_byNCINvMs1_B14_NtB14_5Zalsa3newNtNtB16_13database_impl12DatabaseImplE0E0EB16_.exit.i.thread122 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.0.0.i.i120127131
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ct, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit11.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ci = xor i64 %.sroa.0.016.i.i, -1
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_:bb.a
  %i.fd = zext i1 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [40 x i8], ptr %i.eg, i64 %i.fd ; 3 uses
  %i.ff = zext i1 %i.fb to i64
  %i.fg = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %i.ff ; 3 uses
  %i.fh = icmp eq ptr %i.fe, %i.do
  %i.fi = icmp eq ptr %i.fg, %2
  %or.cond.i.i = select i1 %i.fh, i1 true, i1 %i.fi
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCINvMs1_B1c_NtB1c_5Zalsa3newNtNtB1e_13database_impl12DatabaseImplE0E0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc25.i
  %.sroa.13.1.i = phi ptr [ %i.gh, %.noexc25.i ], [ %i.do, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i37 = phi ptr [ %i.ge, %.noexc25.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gg, %.noexc25.i ], [ %i.ed, %.critedge.i ] ; 4 uses
  %i.fj = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.fj, align 8, !alias.scope !3275, !noalias !3278, !nonnull !3, !noundef !3
  %i.fk = getelementptr i8, ptr %.sroa.0.02.i.i, i64 32
  %.sroa.0.0.val6.i.i = load i8, ptr %i.fk, align 8, !range !2090, !alias.scope !3259, !noalias !3278, !noundef !3 ; 2 uses
  %i.fl = getelementptr i8, ptr %.sroa.0.0.i37, i64 8
  %.val.i20.i = load ptr, ptr %i.fl, align 8, !alias.scope !3262, !noalias !3281 ; 2 uses
  %i.fm = getelementptr i8, ptr %.sroa.0.0.i37, i64 32
  %.val7.i.i = load i8, ptr %i.fm, align 8, !range !2090, !alias.scope !3262, !noalias !3281, !noundef !3 ; 2 uses
  %i.fn = sub nsw i8 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.fo = invoke { ptr, i64 } %.sroa.0.0.val.i.i()
          to label %.noexc24.i unwind label %.loopexit.split-lp.i, !noalias !3264, !inline_history !3282 ; 2 uses

.noexc24.i:                                       ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i20.i) ]
  %i.fp = invoke { ptr, i64 } %.val.i20.i()
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !3264, !inline_history !3282 ; 2 uses

.noexc25.i:                                       ; preds = %.noexc24.i
  %i.fq = extractvalue { ptr, i64 } %i.fo, 1      ; 2 uses
  %i.fr = extractvalue { ptr, i64 } %i.fo, 0
  %i.fs = extractvalue { ptr, i64 } %i.fp, 0
  %i.ft = extractvalue { ptr, i64 } %i.fp, 1      ; 2 uses
  %spec.store.select.i.i.i21.i = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 %i.ft)
  %i.fu = tail call i32 @memcmp(ptr %i.fr, ptr %i.fs, i64 %spec.store.select.i.i.i21.i), !noalias !3283 ; 2 uses
  %i.fv = sext i32 %i.fu to i64
  %i.fw = icmp eq i32 %i.fu, 0
  %i.fx = sub i64 %i.fq, %i.ft
  %spec.select.i.i.i22.i = select i1 %i.fw, i64 %i.fx, i64 %i.fv
  %i.fy = icmp eq i8 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.fz = icmp slt i64 %spec.select.i.i.i22.i, 0
  %i.ga = icmp eq i8 %i.fn, -1
  %i.gb = select i1 %i.fy, i1 %i.fz, i1 %i.ga     ; 3 uses
  %i.gc = xor i1 %i.gb, true
  %spec.select.i.i = select i1 %i.gb, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(40) %spec.select.i.i, i64 40, i1 false), !alias.scope !3264, !noalias !3284
  %i.gd = zext i1 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.i37, i64 %i.gd ; 3 uses
  %i.gf = zext i1 %i.gb to i64
  %i.gg = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.02.i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 40 ; 2 uses
  %i.gi = icmp ne ptr %i.ge, %i.ef
  %i.gj = icmp ne ptr %i.gg, %i.m
  %or.cond.i23.i = select i1 %i.gi, i1 %i.gj, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCINvMs1_B1c_NtB1c_5Zalsa3newNtNtB1e_13database_impl12DatabaseImplE0E0EB1e_.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCINvMs1_B1c_NtB1c_5Zalsa3newNtNtB1e_13database_impl12DatabaseImplE0E0EB1e_.exit.i: ; preds = %.noexc25.i, %.noexc18.i
  %.sroa.13.4.i = phi ptr [ %i.fe, %.noexc18.i ], [ %i.gh, %.noexc25.i ]
  %.sroa.7.2.i = phi ptr [ %i.fg, %.noexc18.i ], [ %i.ef, %.noexc25.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc18.i ], [ %i.ge, %.noexc25.i ] ; 2 uses
  %i.gk = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gl = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gm = sub nuw i64 %i.gk, %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gm, i1 false), !alias.scope !3264, !noalias !3285
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %.noexc24.i, %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ef, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i37, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gn = ptrtoint ptr %.sroa.7.1.i to i64
  %i.go = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gp = sub nuw i64 %i.gn, %i.go
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gp, i1 false), !alias.scope !3264, !noalias !3290
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_7sort_byNCINvMs1_B1c_NtB1c_5Zalsa3newNtNtB1e_13database_impl12DatabaseImplE0E0EB1e_.exit.i
  %i.gq = shl nuw nsw i64 %i.dm, 1
  %i.gr = or disjoint i64 %i.gq, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit

bb.aa:                                            ; preds = %bb.v
  %i.gs = getelementptr inbounds nuw [40 x i8], ptr %i.do, i64 %i.dk
  %i.gt = or i64 %i.dl, 1
  %i.gu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.gt, i1 true)
  %i.gv = trunc nuw nsw i64 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 1
  %i.gx = xor i32 %i.gw, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %i.gs, i64 noundef range(i64 0, 230584300921369396) %i.dl, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.gx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3258
  br label %bb.x

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB16_7sort_byNCINvMs1_B18_NtB18_5Zalsa3newNtNtB1a_13database_impl12DatabaseImplE0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.gr, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBX_7sort_byNCINvMs1_BZ_NtBZ_5Zalsa3newNtNtB11_13database_impl12DatabaseImplE0E0EB11_.exit ], [ %i.du, %bb.u ] ; 2 uses
  %i.gy = icmp ugt i64 %i.dd, 1
  br i1 %i.gy, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.gz = add i64 %.sroa.02.1.lcssa, 1
  %i.ha = lshr i64 %.sroa.018.0, 1
  %i.hb = add nuw i64 %i.ha, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.hc = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.hc, 0
  br i1 %.not31, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hd = or i64 %1, 1
  %i.he = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.hd, i1 true)
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = shl nuw nsw i32 %i.hf, 1
  %i.hh = xor i32 %i.hg, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.hh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3258
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB15_7sort_byNCINvMs1_B17_NtB17_5Zalsa3newNtNtB19_13database_impl12DatabaseImplE0E0EB19_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 9 uses
  %.sroa.7.i.i = alloca [7 x i8], align 1         ; 9 uses
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph118 = phi ptr [ %i.mg, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph117 = phi i64 [ %i.lr, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph116 = phi i32 [ %i.fl, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph115 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph118, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph118, i64 32
  %i.e = ptrtoint ptr %.sroa.0.0.ph118 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph115, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph115, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph115, i64 32
  %i.h = icmp eq i32 %.sroa.025.0.ph116, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph277

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit
  %i.i = icmp eq i32 %i.fl, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph277

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit, %bb.a
  %.sroa.0.0.ph.lcssa109 = phi ptr [ %.sroa.0.0.ph118, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %0, %bb.a ], [ %i.mg, %.outer ] ; 7 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJar12split_at_mutBy_.exit ], [ %1, %bb.a ], [ %i.lr, %.outer ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3295)
  %i.j = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.k = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.l = icmp samesign ult i64 %3, %i.k
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = lshr i64 %.sroa.16.0.lcssa, 1            ; 6 uses
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa109, i64 %i.m ; 3 uses
  %i.p = getelementptr [40 x i8], ptr %2, i64 %i.m ; 8 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa109, ptr noundef nonnull align 8 %2)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_7sort_byNCINvMs1_B1b_NtB1b_5Zalsa3newNtNtB1d_13database_impl12DatabaseImplE0E0EB1d_(ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.ph.lcssa109, i64 40, i1 false), !alias.scope !3298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !alias.scope !3298
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %i.q = sub nsw i64 %.sroa.16.0.lcssa, %i.m      ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %i.m
  br i1 %i.r, label %.noexc37.i, label %.loopexit4.i

.loopexit4.i:                                     ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i, %bb.h
  %i.s = icmp ult i64 %.sroa.0.0.i, %i.q
  br i1 %i.s, label %.noexc37.1.i, label %.loopexit4.1.i

.noexc37.1.i:                                     ; preds = %.loopexit4.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i
  %.sroa.05.011.1.i = phi i64 [ %i.bh, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit4.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %.sroa.05.011.1.i
  %.idx303 = mul nuw nsw i64 %.sroa.05.011.1.i, 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx303 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false), !alias.scope !3298
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %.val11.i.1.i = load ptr, ptr %i.v, align 8, !alias.scope !3300, !noalias !3295, !nonnull !3, !noundef !3
  %i.w = getelementptr i8, ptr %i.u, i64 32       ; 2 uses
  %.val12.i.1.i = load i8, ptr %i.w, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -32
  %.val13.i.1.i = load ptr, ptr %i.x, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %i.y = getelementptr i8, ptr %i.u, i64 -8
  %.val14.i.1.i = load i8, ptr %i.y, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.z = sub nsw i8 %.val12.i.1.i, %.val14.i.1.i
  %i.aa = call { ptr, i64 } %.val11.i.1.i(), !noalias !3295, !inline_history !3304 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.1.i) ]
  %i.ad = call { ptr, i64 } %.val13.i.1.i(), !noalias !3295, !inline_history !3304 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  %spec.store.select.i.i.i34.1.i = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.af)
  %i.ag = call i32 @memcmp(ptr %i.ab, ptr %i.ae, i64 %spec.store.select.i.i.i34.1.i), !noalias !3295 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp eq i32 %i.ag, 0
  %i.aj = sub i64 %i.ac, %i.af
  %spec.select.i.i.i35.1.i = select i1 %i.ai, i64 %i.aj, i64 %i.ah
  %i.ak = icmp eq i8 %.val12.i.1.i, %.val14.i.1.i
  %i.al = icmp slt i64 %spec.select.i.i.i35.1.i, 0
  %i.am = icmp eq i8 %i.z, -1
  %i.an = select i1 %i.ak, i1 %i.al, i1 %i.am
  br i1 %i.an, label %bb.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

bb.i:                                             ; preds = %.noexc37.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.018.0.copyload.i.1.i = load i64, ptr %i.u, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %.sroa.419.0.copyload.i.1.i = load ptr, ptr %i.v, align 8, !alias.scope !3303, !noalias !3295 ; 3 uses
  %.sroa.520.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i.1.i, i64 16, i1 false), !noalias !3295
  %.sroa.621.0.copyload.i.1.i = load i8, ptr %i.w, align 8, !alias.scope !3303, !noalias !3295 ; 4 uses
  %.sroa.722.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.722.0..sroa_idx.i.1.i, i64 7, i1 false), !noalias !3295
  %.sroa.0.0.i36.1.i292 = getelementptr inbounds i8, ptr %i.u, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.1.i292, i64 40, i1 false), !alias.scope !3303, !noalias !3295
  %i.ao = icmp eq i64 %.sroa.05.011.1.i, 1
  br i1 %i.ao, label %._crit_edge297, label %.lr.ph296

bb.j:                                             ; preds = %bb.k
  %.sroa.0.0.i36.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i36.1.i294, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.1.i294, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.1.i, i64 40, i1 false), !alias.scope !3303, !noalias !3295
  %i.ap = icmp eq ptr %.sroa.0.0.i36.1.i, %i.p
  br i1 %i.ap, label %._crit_edge297, label %.lr.ph296

.lr.ph296:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i36.1.i294 = phi ptr [ %.sroa.0.0.i36.1.i, %bb.j ], [ %.sroa.0.0.i36.1.i292, %bb.i ] ; 6 uses
  %.sroa.5.0.i.1.i293 = phi ptr [ %.sroa.0.0.i36.1.i294, %bb.j ], [ %i.u, %bb.i ] ; 4 uses
  %i.aq = getelementptr i8, ptr %.sroa.5.0.i.1.i293, i64 -72
  %.val9.i.1.i = load ptr, ptr %i.aq, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %i.ar = getelementptr i8, ptr %.sroa.5.0.i.1.i293, i64 -48
  %.val10.i.1.i = load i8, ptr %i.ar, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.as = sub nsw i8 %.sroa.621.0.copyload.i.1.i, %.val10.i.1.i
  %i.at = invoke { ptr, i64 } %.sroa.419.0.copyload.i.1.i()
          to label %.noexc.i.1.i unwind label %.loopexit.split-lp23.i, !noalias !3295, !inline_history !3152 ; 2 uses

.noexc.i.1.i:                                     ; preds = %.lr.ph296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.1.i) ]
  %i.au = invoke { ptr, i64 } %.val9.i.1.i()
          to label %bb.k unwind label %.loopexit.split-lp23.i, !noalias !3295, !inline_history !3152 ; 2 uses

bb.k:                                             ; preds = %.noexc.i.1.i
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.at, 0
  %i.ax = extractvalue { ptr, i64 } %i.au, 0
  %i.ay = extractvalue { ptr, i64 } %i.au, 1      ; 2 uses
  %spec.store.select.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ay)
  %i.az = call i32 @memcmp(ptr %i.aw, ptr %i.ax, i64 %spec.store.select.i.i15.i.1.i), !noalias !3295 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %i.av, %i.ay
  %spec.select.i.i16.i.1.i = select i1 %i.bb, i64 %i.bc, i64 %i.ba
  %i.bd = icmp eq i8 %.sroa.621.0.copyload.i.1.i, %.val10.i.1.i
  %i.be = icmp slt i64 %spec.select.i.i16.i.1.i, 0
  %i.bf = icmp eq i8 %i.as, -1
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf
  br i1 %i.bg, label %bb.j, label %._crit_edge297

._crit_edge297:                                   ; preds = %bb.j, %bb.k, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.u, %bb.i ], [ %.sroa.0.0.i36.1.i294, %bb.j ], [ %.sroa.5.0.i.1.i293, %bb.k ] ; 4 uses
  %.sroa.0.0.i36.lcssa.1.i = phi ptr [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %.sroa.0.0.i36.1.i294, %bb.k ]
  store i64 %.sroa.018.0.copyload.i.1.i, ptr %.sroa.0.0.i36.lcssa.1.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -32
  store ptr %.sroa.419.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !3305
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i8 %.sroa.621.0.copyload.i.1.i, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i, i64 7, i1 false), !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i: ; preds = %._crit_edge297, %.noexc37.1.i
  %i.bh = add i64 %.sroa.05.011.1.i, 1            ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bh, %i.q
  br i1 %exitcond.1.not.i, label %.loopexit4.1.i, label %.noexc37.1.i

.loopexit4.1.i:                                   ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.1.i, %.loopexit4.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3310)
  %i.bi = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa109, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.p, i64 -40
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc32.i
  %i.bm = getelementptr i8, ptr %i.dl, i64 40     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.dk, i64 40
  %i.bo = and i64 %.sroa.16.0.lcssa, 1
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.l

.lr.ph.i.i:                                       ; preds = %.noexc32.i, %.loopexit4.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cp, %.noexc32.i ], [ %.sroa.0.0.ph.lcssa109, %.loopexit4.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.bq, %.noexc32.i ], [ 0, %.loopexit4.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.co, %.noexc32.i ], [ %2, %.loopexit4.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.cm, %.noexc32.i ], [ %i.p, %.loopexit4.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dl, %.noexc32.i ], [ %i.bl, %.loopexit4.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dk, %.noexc32.i ], [ %i.bk, %.loopexit4.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dm, %.noexc32.i ], [ %i.bj, %.loopexit4.1.i ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.br = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load ptr, ptr %i.br, align 8, !alias.scope !3313, !noalias !3295, !nonnull !3, !noundef !3
  %i.bs = getelementptr i8, ptr %.sroa.011.07.i.i, i64 32
  %.sroa.011.0.val24.i.i = load i8, ptr %i.bs, align 8, !range !2090, !alias.scope !3316, !noalias !3295, !noundef !3 ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !3316, !noalias !3295 ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.06.08.i.i, i64 32
  %.sroa.06.0.val25.i.i = load i8, ptr %i.bu, align 8, !range !2090, !alias.scope !3316, !noalias !3295, !noundef !3 ; 2 uses
  %i.bv = sub nsw i8 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.bw = invoke { ptr, i64 } %.sroa.011.0.val.i.i()
          to label %.noexc.i unwind label %.loopexit.i, !noalias !3295, !inline_history !3317 ; 2 uses

.noexc.i:                                         ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.val.i.i) ]
  %i.bx = invoke { ptr, i64 } %.sroa.06.0.val.i.i()
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !3295, !inline_history !3317 ; 2 uses

.noexc30.i:                                       ; preds = %.noexc.i
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.bw, 0
  %i.ca = extractvalue { ptr, i64 } %i.bx, 0
  %i.cb = extractvalue { ptr, i64 } %i.bx, 1      ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.by, i64 %i.cb)
  %i.cc = call i32 @memcmp(ptr %i.bz, ptr %i.ca, i64 %spec.store.select.i.i.i.i), !noalias !3318 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i32 %i.cc, 0
  %i.cf = sub i64 %i.by, %i.cb
  %spec.select.i.i.i.i = select i1 %i.ce, i64 %i.cf, i64 %i.cd
  %i.cg = icmp eq i8 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.ch = icmp slt i64 %spec.select.i.i.i.i, 0
  %i.ci = icmp eq i8 %i.bv, -1
  %i.cj = select i1 %i.cg, i1 %i.ch, i1 %i.ci     ; 3 uses
  %..i23.i.i = select i1 %i.cj, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.ck = xor i1 %i.cj, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i23.i.i, i64 40, i1 false), !alias.scope !3298, !noalias !3319
  %i.cl = zext i1 %i.cj to i64
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %.sroa.011.07.i.i, i64 %i.cl ; 4 uses
  %i.cn = zext i1 %i.ck to i64
  %i.co = getelementptr inbounds nuw [40 x i8], ptr %.sroa.06.08.i.i, i64 %i.cn ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 40 ; 2 uses
  %i.cq = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !3313, !noalias !3295, !nonnull !3, !noundef !3
  %i.cr = getelementptr i8, ptr %.sroa.017.05.i.i, i64 32
  %.sroa.017.0.val26.i.i = load i8, ptr %i.cr, align 8, !range !2090, !alias.scope !3316, !noalias !3295, !noundef !3 ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !3316, !noalias !3295 ; 2 uses
  %i.ct = getelementptr i8, ptr %.sroa.015.06.i.i, i64 32
  %.sroa.015.0.val27.i.i = load i8, ptr %i.ct, align 8, !range !2090, !alias.scope !3316, !noalias !3295, !noundef !3 ; 2 uses
  %i.cu = sub nsw i8 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.cv = invoke { ptr, i64 } %.sroa.017.0.val.i.i()
          to label %.noexc31.i unwind label %.loopexit.i, !noalias !3295, !inline_history !3317 ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val.i.i) ]
  %i.cw = invoke { ptr, i64 } %.sroa.015.0.val.i.i()
          to label %.noexc32.i unwind label %.loopexit.i, !noalias !3295, !inline_history !3317 ; 2 uses

.noexc32.i:                                       ; preds = %.noexc31.i
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1      ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cv, 0
  %i.cz = extractvalue { ptr, i64 } %i.cw, 0
  %i.da = extractvalue { ptr, i64 } %i.cw, 1      ; 2 uses
  %spec.store.select.i.i28.i.i = call i64 @llvm.umin.i64(i64 %i.cx, i64 %i.da)
  %i.db = call i32 @memcmp(ptr %i.cy, ptr %i.cz, i64 %spec.store.select.i.i28.i.i), !noalias !3318 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %i.de = sub i64 %i.cx, %i.da
  %spec.select.i.i29.i.i = select i1 %i.dd, i64 %i.de, i64 %i.dc
  %i.df = icmp eq i8 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.dg = icmp slt i64 %spec.select.i.i29.i.i, 0
  %i.dh = icmp eq i8 %i.cu, -1
  %i.di = select i1 %i.df, i1 %i.dg, i1 %i.dh     ; 3 uses
  %..i.i.i = select i1 %i.di, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dj = xor i1 %i.di, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(40) %..i.i.i, i64 40, i1 false), !alias.scope !3298, !noalias !3323
  %.neg.i.i.i = sext i1 %i.dj to i64
  %i.dk = getelementptr [40 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.di to i64
  %i.dl = getelementptr [40 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -40
  %exitcond.not.i.i = icmp eq i64 %i.bq, %i.m
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.dn = icmp ult ptr %i.co, %i.bm               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dn, ptr %i.co, ptr %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.0..sroa.011.0.i.i, i64 40, i1 false), !alias.scope !3298
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [40 x i8], ptr %i.co, i64 %i.do
  %i.dq = xor i1 %i.dn, true
  %i.dr = zext i1 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [40 x i8], ptr %i.cm, i64 %i.dr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.cm, %._crit_edge.i.i ], [ %i.ds, %bb.l ]
  %.sroa.06.1.i.i = phi ptr [ %i.co, %._crit_edge.i.i ], [ %i.dp, %bb.l ]
  %i.dt = icmp ne ptr %.sroa.06.1.i.i, %i.bm
  %i.du = icmp ne ptr %.sroa.011.1.i.i, %i.bn
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du, !prof !3124
  br i1 %or.cond.i.i, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit, !prof !3124

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #62
          to label %.noexc33.i unwind label %.loopexit.split-lp.i, !noalias !3295

.noexc33.i:                                       ; preds = %bb.n
  unreachable

.loopexit.i:                                      ; preds = %.noexc31.i, %.noexc30.i, %.noexc.i, %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = mul nuw nsw i64 %.sroa.16.0.lcssa, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa109, ptr nonnull align 8 %2, i64 %i.dv, i1 false), !alias.scope !3298, !noalias !3327
  br label %.body.i

.body.i:                                          ; preds = %bb.s, %bb.o
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.o ], [ %lpad.phi32.i, %bb.s ]
  resume { ptr, i32 } %.pn.i

.noexc37.i:                                       ; preds = %bb.h, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i
  %.sroa.05.011.i = phi i64 [ %i.fk, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.h ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph.lcssa109, i64 %.sroa.05.011.i
  %.idx = mul nuw nsw i64 %.sroa.05.011.i, 40
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 8 dereferenceable(40) %i.dw, i64 40, i1 false), !alias.scope !3298
  %i.dy = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %.val11.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !3300, !noalias !3295, !nonnull !3, !noundef !3
  %i.dz = getelementptr i8, ptr %i.dx, i64 32     ; 2 uses
  %.val12.i.i = load i8, ptr %i.dz, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dx, i64 -32
  %.val13.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dx, i64 -8
  %.val14.i.i = load i8, ptr %i.eb, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.ec = sub nsw i8 %.val12.i.i, %.val14.i.i
  %i.ed = call { ptr, i64 } %.val11.i.i(), !noalias !3295, !inline_history !3304 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i) ]
  %i.eg = call { ptr, i64 } %.val13.i.i(), !noalias !3295, !inline_history !3304 ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 2 uses
  %spec.store.select.i.i.i34.i = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ei)
  %i.ej = call i32 @memcmp(ptr %i.ee, ptr %i.eh, i64 %spec.store.select.i.i.i34.i), !noalias !3295 ; 2 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp eq i32 %i.ej, 0
  %i.em = sub i64 %i.ef, %i.ei
  %spec.select.i.i.i35.i = select i1 %i.el, i64 %i.em, i64 %i.ek
  %i.en = icmp eq i8 %.val12.i.i, %.val14.i.i
  %i.eo = icmp slt i64 %spec.select.i.i.i35.i, 0
  %i.ep = icmp eq i8 %i.ec, -1
  %i.eq = select i1 %i.en, i1 %i.eo, i1 %i.ep
  br i1 %i.eq, label %bb.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i

bb.p:                                             ; preds = %.noexc37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  %.sroa.018.0.copyload.i.i = load i64, ptr %i.dx, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %.sroa.419.0.copyload.i.i = load ptr, ptr %i.dy, align 8, !alias.scope !3303, !noalias !3295 ; 3 uses
  %.sroa.520.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i.i, i64 16, i1 false), !noalias !3295
  %.sroa.621.0.copyload.i.i = load i8, ptr %i.dz, align 8, !alias.scope !3303, !noalias !3295 ; 4 uses
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.722.0..sroa_idx.i.i, i64 7, i1 false), !noalias !3295
  %.sroa.0.0.i36.i281 = getelementptr inbounds i8, ptr %i.dx, i64 -40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.i281, i64 40, i1 false), !alias.scope !3303, !noalias !3295
  %i.er = icmp eq i64 %.sroa.05.011.i, 1
  br i1 %i.er, label %._crit_edge286, label %.lr.ph285

bb.q:                                             ; preds = %bb.r
  %.sroa.0.0.i36.i = getelementptr inbounds i8, ptr %.sroa.0.0.i36.i283, i64 -40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.i283, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i36.i, i64 40, i1 false), !alias.scope !3303, !noalias !3295
  %i.es = icmp eq ptr %.sroa.0.0.i36.i, %2
  br i1 %i.es, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.p, %bb.q
  %.sroa.0.0.i36.i283 = phi ptr [ %.sroa.0.0.i36.i, %bb.q ], [ %.sroa.0.0.i36.i281, %bb.p ] ; 6 uses
  %.sroa.5.0.i.i282 = phi ptr [ %.sroa.0.0.i36.i283, %bb.q ], [ %i.dx, %bb.p ] ; 4 uses
  %i.et = getelementptr i8, ptr %.sroa.5.0.i.i282, i64 -72
  %.val9.i.i = load ptr, ptr %i.et, align 8, !alias.scope !3303, !noalias !3295 ; 2 uses
  %i.eu = getelementptr i8, ptr %.sroa.5.0.i.i282, i64 -48
  %.val10.i.i = load i8, ptr %i.eu, align 8, !range !2090, !alias.scope !3303, !noalias !3295, !noundef !3 ; 2 uses
  %i.ev = sub nsw i8 %.sroa.621.0.copyload.i.i, %.val10.i.i
  %i.ew = invoke { ptr, i64 } %.sroa.419.0.copyload.i.i()
          to label %.noexc.i.i unwind label %.loopexit22.i, !noalias !3295, !inline_history !3152 ; 2 uses

.noexc.i.i:                                       ; preds = %.lr.ph285
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i.i) ]
  %i.ex = invoke { ptr, i64 } %.val9.i.i()
          to label %bb.r unwind label %.loopexit22.i, !noalias !3295, !inline_history !3152 ; 2 uses

bb.r:                                             ; preds = %.noexc.i.i
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1      ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %i.ew, 0
  %i.fa = extractvalue { ptr, i64 } %i.ex, 0
  %i.fb = extractvalue { ptr, i64 } %i.ex, 1      ; 2 uses
  %spec.store.select.i.i15.i.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.fb)
  %i.fc = call i32 @memcmp(ptr %i.ez, ptr %i.fa, i64 %spec.store.select.i.i15.i.i), !noalias !3295 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp eq i32 %i.fc, 0
  %i.ff = sub i64 %i.ey, %i.fb
  %spec.select.i.i16.i.i = select i1 %i.fe, i64 %i.ff, i64 %i.fd
  %i.fg = icmp eq i8 %.sroa.621.0.copyload.i.i, %.val10.i.i
  %i.fh = icmp slt i64 %spec.select.i.i16.i.i, 0
  %i.fi = icmp eq i8 %i.ev, -1
  %i.fj = select i1 %i.fg, i1 %i.fh, i1 %i.fi
  br i1 %i.fj, label %bb.q, label %._crit_edge286

._crit_edge286:                                   ; preds = %bb.q, %bb.r, %bb.p
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.dx, %bb.p ], [ %.sroa.0.0.i36.i283, %bb.q ], [ %.sroa.5.0.i.i282, %bb.r ] ; 4 uses
  %.sroa.0.0.i36.lcssa.i = phi ptr [ %2, %bb.p ], [ %2, %bb.q ], [ %.sroa.0.0.i36.i283, %bb.r ]
  store i64 %.sroa.018.0.copyload.i.i, ptr %.sroa.0.0.i36.lcssa.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -32
  store ptr %.sroa.419.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !3305
  %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i8 %.sroa.621.0.copyload.i.i, ptr %.sroa.611.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !3303, !noalias !3305
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i, i64 7, i1 false), !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i

.loopexit22.i:                                    ; preds = %.noexc.i.i, %.lr.ph285
  %lpad.loopexit30.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp23.i:                           ; preds = %.noexc.i.1.i, %.lr.ph296
  %lpad.loopexit.split-lp31.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp23.i, %.loopexit22.i
  %.sroa.018.0.copyload.i.lcssa.i = phi i64 [ %.sroa.018.0.copyload.i.i, %.loopexit22.i ], [ %.sroa.018.0.copyload.i.1.i, %.loopexit.split-lp23.i ]
  %.sroa.419.0.copyload.i.lcssa.i = phi ptr [ %.sroa.419.0.copyload.i.i, %.loopexit22.i ], [ %.sroa.419.0.copyload.i.1.i, %.loopexit.split-lp23.i ]
  %.sroa.621.0.copyload.i.lcssa.i = phi i8 [ %.sroa.621.0.copyload.i.i, %.loopexit22.i ], [ %.sroa.621.0.copyload.i.1.i, %.loopexit.split-lp23.i ]
  %.sroa.5.0.i.lcssa19.i = phi ptr [ %.sroa.5.0.i.i282, %.loopexit22.i ], [ %.sroa.5.0.i.1.i293, %.loopexit.split-lp23.i ] ; 4 uses
  %.sroa.0.0.i36.lcssa18.i = phi ptr [ %.sroa.0.0.i36.i283, %.loopexit22.i ], [ %.sroa.0.0.i36.1.i294, %.loopexit.split-lp23.i ]
  %lpad.phi32.i = phi { ptr, i32 } [ %lpad.loopexit30.i, %.loopexit22.i ], [ %lpad.loopexit.split-lp31.i, %.loopexit.split-lp23.i ]
  store i64 %.sroa.018.0.copyload.i.lcssa.i, ptr %.sroa.0.0.i36.lcssa18.i, align 8, !alias.scope !3303, !noalias !3332
  %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa19.i, i64 -32
  store ptr %.sroa.419.0.copyload.i.lcssa.i, ptr %.sroa.5.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !3303, !noalias !3332
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa19.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !3332
  %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa19.i, i64 -8
  store i8 %.sroa.621.0.copyload.i.lcssa.i, ptr %.sroa.611.0..sroa.0.0.lcssa6.sroa_idx.i.i, align 8, !alias.scope !3303, !noalias !3332
  %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa19.i, i64 -7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa.0.0.lcssa6.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.i, i64 7, i1 false), !noalias !3332
  br label %.body.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtB1c_13database_impl12DatabaseImplE0E0EB1c_.exit.i: ; preds = %._crit_edge286, %.noexc37.i
  %i.fk = add i64 %.sroa.05.011.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fk, %i.m
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.noexc37.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0111.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph117, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph118, i64 noundef %.sroa.16.0111.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit

.lr.ph277:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0110276 = phi i32 [ %i.fl, %bb.b ], [ %.sroa.025.0.ph116, %.lr.ph ]
  %.sroa.16.0111275 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph117, %.lr.ph ] ; 21 uses
  %i.fl = add i32 %.sroa.025.0110276, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3337)
  %i.fm = lshr i64 %.sroa.16.0111275, 3           ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.fm, 160
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph118, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.fm, 280
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph118, i64 %.idx2.i ; 4 uses
  %i.fp = icmp samesign ult i64 %.sroa.16.0111275, 64
  br i1 %i.fp, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph277
  %i.fq = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCINvMs1_B16_NtB16_5Zalsa3newNtNtB18_13database_impl12DatabaseImplE0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph118, ptr noundef readonly %i.fn, ptr noundef readonly %i.fo, i64 noundef %i.fm)
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph277
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !3340, !nonnull !3, !noundef !3 ; 2 uses
  %.val11.i = load i8, ptr %i.d, align 8, !range !2090, !alias.scope !3337, !noundef !3 ; 4 uses
  %i.fr = getelementptr i8, ptr %i.fn, i64 8
  %.val12.i = load ptr, ptr %i.fr, align 8, !alias.scope !3337 ; 3 uses
  %i.fs = getelementptr i8, ptr %i.fn, i64 32
  %.val13.i = load i8, ptr %i.fs, align 8, !range !2090, !alias.scope !3337, !noundef !3 ; 4 uses
  %i.ft = sub nsw i8 %.val11.i, %.val13.i
  %i.fu = call { ptr, i64 } %.val10.i(), !noalias !3343, !inline_history !3346 ; 2 uses
  %i.fv = extractvalue { ptr, i64 } %i.fu, 0
  %i.fw = extractvalue { ptr, i64 } %i.fu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i) ]
  %i.fx = call { ptr, i64 } %.val12.i(), !noalias !3347, !inline_history !3346 ; 2 uses
  %i.fy = extractvalue { ptr, i64 } %i.fx, 0
  %i.fz = extractvalue { ptr, i64 } %i.fx, 1      ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fz)
  %i.ga = call i32 @memcmp(ptr %i.fv, ptr %i.fy, i64 %spec.store.select.i.i.i), !noalias !3337 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp eq i32 %i.ga, 0
  %i.gd = sub i64 %i.fw, %i.fz
  %spec.select.i.i.i = select i1 %i.gc, i64 %i.gd, i64 %i.gb
  %i.ge = icmp eq i8 %.val11.i, %.val13.i
  %i.gf = icmp slt i64 %spec.select.i.i.i, 0
  %i.gg = icmp eq i8 %i.ft, -1
  %i.gh = select i1 %i.ge, i1 %i.gf, i1 %i.gg     ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fo, i64 8
  %.val8.i = load ptr, ptr %i.gi, align 8, !alias.scope !3337 ; 3 uses
  %i.gj = getelementptr i8, ptr %i.fo, i64 32
  %.val9.i = load i8, ptr %i.gj, align 8, !range !2090, !alias.scope !3337, !noundef !3 ; 4 uses
  %i.gk = sub nsw i8 %.val11.i, %.val9.i
  %i.gl = call { ptr, i64 } %.val10.i(), !noalias !3350, !inline_history !3346 ; 2 uses
  %i.gm = extractvalue { ptr, i64 } %i.gl, 0
  %i.gn = extractvalue { ptr, i64 } %i.gl, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.go = call { ptr, i64 } %.val8.i(), !noalias !3353, !inline_history !3346 ; 2 uses
  %i.gp = extractvalue { ptr, i64 } %i.go, 0
  %i.gq = extractvalue { ptr, i64 } %i.go, 1      ; 2 uses
  %spec.store.select.i.i14.i = call i64 @llvm.umin.i64(i64 %i.gn, i64 %i.gq)
  %i.gr = call i32 @memcmp(ptr %i.gm, ptr %i.gp, i64 %spec.store.select.i.i14.i), !noalias !3337 ; 2 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp eq i32 %i.gr, 0
  %i.gu = sub i64 %i.gn, %i.gq
  %spec.select.i.i15.i = select i1 %i.gt, i64 %i.gu, i64 %i.gs
  %i.gv = icmp eq i8 %.val11.i, %.val9.i
  %i.gw = icmp slt i64 %spec.select.i.i15.i, 0
  %i.gx = icmp eq i8 %i.gk, -1
  %i.gy = select i1 %i.gv, i1 %i.gw, i1 %i.gx
  %i.gz = xor i1 %i.gh, %i.gy
  br i1 %i.gz, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ha = sub nsw i8 %.val13.i, %.val9.i
  %i.hb = call { ptr, i64 } %.val12.i(), !noalias !3356, !inline_history !3346 ; 2 uses
  %i.hc = extractvalue { ptr, i64 } %i.hb, 0
  %i.hd = extractvalue { ptr, i64 } %i.hb, 1      ; 2 uses
  %i.he = call { ptr, i64 } %.val8.i(), !noalias !3359, !inline_history !3346 ; 2 uses
  %i.hf = extractvalue { ptr, i64 } %i.he, 0
  %i.hg = extractvalue { ptr, i64 } %i.he, 1      ; 2 uses
  %spec.store.select.i.i16.i = call i64 @llvm.umin.i64(i64 %i.hd, i64 %i.hg)
  %i.hh = call i32 @memcmp(ptr %i.hc, ptr %i.hf, i64 %spec.store.select.i.i16.i), !noalias !3337 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = icmp eq i32 %i.hh, 0
  %i.hk = sub i64 %i.hd, %i.hg
  %spec.select.i.i17.i = select i1 %i.hj, i64 %i.hk, i64 %i.hi
  %i.hl = icmp eq i8 %.val13.i, %.val9.i
  %i.hm = icmp slt i64 %spec.select.i.i17.i, 0
  %i.hn = icmp eq i8 %i.ha, -1
  %i.ho = select i1 %i.hl, i1 %i.hm, i1 %i.hn
  %i.hp = xor i1 %i.gh, %i.ho
  %..i.i = select i1 %i.hp, ptr %i.fo, ptr %i.fn
  br label %bb.w

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_7sort_byNCINvMs1_B1u_NtB1u_5Zalsa3newNtNtB1w_13database_impl12DatabaseImplE0E0EB1w_.exit: ; preds = %.outer._crit_edge.thread, %bb.m, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.0.0.i.sink.i = phi ptr [ %i.fq, %bb.t ], [ %.sroa.0.0.ph118, %bb.u ], [ %..i.i, %bb.v ]
  %i.hq = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.hr = sub nuw i64 %i.hq, %i.e                 ; 2 uses
  %.sroa.0.0.i39 = udiv exact i64 %i.hr, 40       ; 3 uses
  %i.hs = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0111275
  call void @llvm.assume(i1 %i.hs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph118, i64 %i.hr ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ht, i64 40, i1 false)
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !alias.scope !2905, !nonnull !3, !noundef !3
  %.sroa.028.0.val37 = load i8, ptr %i.g, align 8, !range !2090, !noundef !3 ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 8
  %.val = load ptr, ptr %i.hu, align 8            ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 32
  %.val38 = load i8, ptr %i.hv, align 8, !range !2090, !noundef !3 ; 2 uses
  %i.hw = sub nsw i8 %.sroa.028.0.val37, %.val38
  %i.hx = call { ptr, i64 } %.sroa.028.0.val(), !noalias !3362, !inline_history !2911 ; 2 uses
  %i.hy = extractvalue { ptr, i64 } %i.hx, 0
  %i.hz = extractvalue { ptr, i64 } %i.hx, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ia = call { ptr, i64 } %.val(), !noalias !3365, !inline_history !2911 ; 2 uses
  %i.ib = extractvalue { ptr, i64 } %i.ia, 0
  %i.ic = extractvalue { ptr, i64 } %i.ia, 1      ; 2 uses
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.hz, i64 %i.ic)
  %i.id = call i32 @memcmp(ptr %i.hy, ptr %i.ib, i64 %spec.store.select.i.i) ; 2 uses
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp eq i32 %i.id, 0
  %i.ig = sub i64 %i.hz, %i.ic
  %spec.select.i.i = select i1 %i.if, i64 %i.ig, i64 %i.ie
  %i.ih = icmp eq i8 %.sroa.028.0.val37, %.val38
  %i.ii = icmp slt i64 %spec.select.i.i, 0
  %i.ij = icmp eq i8 %i.hw, -1
  %i.ik = select i1 %i.ih, i1 %i.ii, i1 %i.ij
  br i1 %i.ik, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.w, %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %.not75 = icmp samesign ult i64 %3, %.sroa.16.0111275
  br i1 %.not75, label %bb.aa, label %bb.z, !prof !3124

bb.z:                                             ; preds = %bb.y
  %i.il = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.0111275 ; 4 uses
  %i.im = getelementptr i8, ptr %i.ht, i64 8
  %i.in = getelementptr i8, ptr %i.ht, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.19.0.i = phi ptr [ %i.il, %bb.z ], [ %i.jo, %bb.ac ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.z ], [ %.sroa.11.1.lcssa.i, %bb.ac ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph118, %bb.z ], [ %i.jq, %bb.ac ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.z ], [ %.sroa.16.0111275, %bb.ac ] ; 2 uses
  %i.io = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph118, i64 %.sroa.0.0.i40 ; 2 uses
  %i.ip = icmp ult ptr %.sroa.5.0.i, %i.io
  br i1 %i.ip, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ab
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.ab ], [ %i.ji, %.lr.ph.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.ab ], [ %i.jl, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.ab ], [ %i.jm, %.lr.ph.i ] ; 2 uses
  %i.iq = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0111275
  br i1 %i.iq, label %bb.ad, label %bb.ac

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %i.jm, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.ab ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.jl, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.ab ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.ji, %.lr.ph.i ], [ %.sroa.19.0.i, %bb.ab ]
  %i.ir = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ir, align 8, !alias.scope !3373, !noalias !3371, !nonnull !3, !noundef !3
  %i.is = getelementptr i8, ptr %.sroa.5.111.i, i64 32
  %.val12.i42 = load i8, ptr %i.is, align 8, !range !2090, !alias.scope !3368, !noalias !3371, !noundef !3 ; 2 uses
  %.val13.i43 = load ptr, ptr %i.im, align 8, !alias.scope !3368, !noalias !3371 ; 2 uses
  %.val14.i = load i8, ptr %i.in, align 8, !range !2090, !alias.scope !3368, !noalias !3371, !noundef !3 ; 2 uses
  %i.it = sub nsw i8 %.val12.i42, %.val14.i
  %i.iu = call { ptr, i64 } %.val.i(), !noalias !3376, !inline_history !3379 ; 2 uses
  %i.iv = extractvalue { ptr, i64 } %i.iu, 0
  %i.iw = extractvalue { ptr, i64 } %i.iu, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i43) ]
  %i.ix = call { ptr, i64 } %.val13.i43(), !noalias !3380, !inline_history !3379 ; 2 uses
  %i.iy = extractvalue { ptr, i64 } %i.ix, 0
  %i.iz = extractvalue { ptr, i64 } %i.ix, 1      ; 2 uses
  %spec.store.select.i.i.i44 = call i64 @llvm.umin.i64(i64 %i.iw, i64 %i.iz)
  %i.ja = call i32 @memcmp(ptr %i.iv, ptr %i.iy, i64 %spec.store.select.i.i.i44), !noalias !3383 ; 2 uses
  %i.jb = sext i32 %i.ja to i64
  %i.jc = icmp eq i32 %i.ja, 0
  %i.jd = sub i64 %i.iw, %i.iz
  %spec.select.i.i.i45 = select i1 %i.jc, i64 %i.jd, i64 %i.jb
  %i.je = icmp eq i8 %.val12.i42, %.val14.i
  %i.jf = icmp slt i64 %spec.select.i.i.i45, 0
  %i.jg = icmp eq i8 %i.it, -1
  %i.jh = select i1 %i.je, i1 %i.jf, i1 %i.jg     ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
end_hunk_2

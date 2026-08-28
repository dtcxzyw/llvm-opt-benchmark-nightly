Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.12?download=true
inline.NumInlined: 302
inline.NumDeleted: 213
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEBF_:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit7: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct16DisambiguatorMapEBF_.exit6
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtB1h_11accumulator11accumulated14AnyAccumulatedEL_EENtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalEB1h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit8 unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit, %bb.h
  %.pn4 = phi { ptr, i32 } [ %i.u, %bb.h ], [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !137, !nonnull !3, !noundef !3
  %i.t = icmp eq ptr %i.s, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit, label %bb.g, !prof !99

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit unwind label %bb.j

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit7
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit8: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit7
  %i.v = load ptr, ptr %i.q, align 8, !alias.scope !144, !nonnull !3, !noundef !3
  %i.w = icmp eq ptr %i.v, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit9, label %bb.i, !prof !99

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit8
  tail call void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit9

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit8, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct11IdentityMapEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa14tracked_struct16DisambiguatorMapEBF_.exit, %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_.exit, %bb.g
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !151, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !151, !noundef !3 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1d_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit.i.i: ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1d_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.0.0.i.i1
  %i.i = add i64 %.sroa.0.0.i.i1, 1               ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit.i.i unwind label %bb.b, !noalias !151, !inline_history !154

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit7.i.i: ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit7.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.c, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8SlotInfoEBH_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit7.i.i unwind label %bb.c, !noalias !151, !inline_history !154

bb.c:                                             ; preds = %.lr.ph3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !151, !inline_history !155
  unreachable

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit unwind label %bb.d

bb.d:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !inline_history !156
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1k_.exit: ; preds = %.body
  resume { ptr, i32 } %i.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEEB1d_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoEBH_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa8database12memory_usage8MemoInfoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1f_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.010 ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  %.val8 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9 = load ptr, ptr %i.d, align 8, !nonnull !3, !align !51, !noundef !3 ; 5 uses
  %i.e = load ptr, ptr %.val9, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  invoke void %i.e(ptr noundef nonnull %.val8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !52, !invariant.load !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #20
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !3 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val9, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !52, !invariant.load !3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #20
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit: ; preds = %bb.c, %bb.d
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_.exit, %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph25
  %i.r = add i64 %.sroa.0.124, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge26, label %.lr.ph25

.body:                                            ; preds = %bb.e, %bb.f
  %i.t = icmp eq i64 %i.c, %1
  br i1 %i.t, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %.body, %bb.g
  %.sroa.0.124 = phi i64 [ %i.r, %bb.g ], [ %i.c, %.body ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.124 ; 2 uses
  %.val = load ptr, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val7 = load ptr, ptr %i.v, align 8, !nonnull !3, !align !51, !noundef !3
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1e_(ptr %.val, ptr nonnull %.val7) #21
          to label %bb.g unwind label %bb.h

._crit_edge26:                                    ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %.lr.ph25
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCINvMs1_B11_NtB11_5Zalsa3newNtNtB13_13database_impl12DatabaseImplE0E0INtNtB1K_3vec3VecBZ_EEB13_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4096 x i8], align 8              ; 3 uses
  %i.d = lshr i64 %1, 1
  %i.e = sub nuw nsw i64 %1, %i.d
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 200000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.e) ; 2 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i8, 102 ; 3 uses
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 103, 0) %.sroa.0.0.i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
  %i.g = load i64, ptr %i.a, align 8, !range !160, !noalias !157, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !161, !noalias !157, !noundef !3 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc10, label %bb.c, !prof !13

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !157
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !157, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = icmp ule i64 %.sroa.0.0.i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 102, %bb.a ], [ %i.j, %bb.c ]
  %.pn18 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSBW_7sort_byNCINvMs1_BY_NtBY_5Zalsa3newNtNtB10_13database_impl12DatabaseImplE0E0EB10_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn18, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit: ; preds = %bb.h, %bb.b
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB1b_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1a_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1a_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtBa_11collections4hash3set7HashSetNtNtB2K_3key16DatabaseKeyIndexB3q_EEEEEB2K_(ptr noundef initializes((88, 89)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 2, ptr %i.a, align 1
  %i.b = load i64, ptr %0, align 8, !range !162, !alias.scope !163, !noundef !3
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RINvMsa_NtCsgMW4BsFgQdt_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs7xVMhx9V0in_14allocator_api26stable5alloc6global6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %.body.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.e, %bb.c
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i.i.i.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsffXo9NmvYC7_8indexmap3map8IndexMapNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEEB1k_.exit.i.i.i.i.i.i.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i.i.i.i.i
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.h

.noexc1.i:                                        ; preds = %.body.i
  unreachable

bb.h:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCs4NRVxsYgnAr_4core4cell4CellINtNtB1E_6option6OptionTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB1E_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtB6_11collections4hash3set7HashSetNtNtB3e_3key16DatabaseKeyIndexB3U_EEEEE0EB3e_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCsffXo9NmvYC7_8indexmap3set8IndexSetNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCs3CTDFEpwZhE_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB21_EEEB1l_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateECsC8CapfvpQ1_5salsa(ptr noundef initializes((40, 41)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.c = load i64, ptr %i.b, align 8, !range !182, !alias.scope !183, !noundef !3 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !196, !nonnull !3, !noundef !3
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !196
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCsjvLTWb8VeNU_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE0ECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable8heapsort8heapsortTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB1a_2id2IdENCINvMB8_SB15_16sort_unstable_byNCNvMs1_B18_NtB18_11IdentityMap5drain0E0EB1a_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.c, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19
end_hunk_0
begin_hunk_1_@_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4H_3ops5range5RangejENCNvB3n_10new_shardss_0EE9from_iterB3p_
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4H_3ops5range5RangejENCNvB3n_10new_shardss_0EE9from_iterB3p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !240
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !240
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128), !noalias !240
  %i.d = load i64, ptr %i.b, align 8, !range !160, !noalias !240, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !161, !noalias !240, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4m_3ops5range5RangejENCNvB39_10new_shardss_0EEB3b_.exit.i.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !240
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22, !noalias !240
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4m_3ops5range5RangejENCNvB39_10new_shardss_0EEB3b_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !240, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !240
  store i64 %i.g, ptr %i.c, align 8, !noalias !240
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !240
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !243
  store ptr %i.m, ptr %i.a, align 8, !noalias !243
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !243
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCsC8CapfvpQ1_5salsa8interned10new_shardss_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtB1t_15IngredientShardEENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6g_3VecB3g_E14extend_trustedBN_E0E0EB1v_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4X_3ops5range5RangejENCNvB3w_10new_shardss_0EE9from_iterB3y_.exit unwind label %bb.c, !noalias !240

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4m_3ops5range5RangejENCNvB39_10new_shardss_0EEB3b_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEEB3D_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.e unwind label %bb.d, !noalias !240

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !240
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4X_3ops5range5RangejENCNvB3w_10new_shardss_0EE9from_iterB3y_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCsksLH4kKx6iM_15crossbeam_utils12cache_padded11CachePaddedINtNtCsUsIPftNhTL_8lock_api5mutex5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtCsC8CapfvpQ1_5salsa8interned15IngredientShardEEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB4m_3ops5range5RangejENCNvB39_10new_shardss_0EEB3b_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !240
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2c_3rev3RevINtNtNtB2g_5slice4iter4IterNtBV_11ActiveQueryEENCNCNCNvMs7_BV_NtBV_9Backtrace7capture000EE9from_iterBX_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !248
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 184                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !248
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !248
  %i.h = load i64, ptr %i.b, align 8, !range !160, !noalias !248, !noundef !3
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !161, !noalias !248, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3rev3RevINtNtNtB1V_5slice4iter4IterNtBH_11ActiveQueryEENCNCNCNvMs7_BH_NtBH_9Backtrace7capture000EEBJ_.exit.i.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !248
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #22, !noalias !248
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3rev3RevINtNtNtB1V_5slice4iter4IterNtBH_11ActiveQueryEENCNCNCNvMs7_BH_NtBH_9Backtrace7capture000EEBJ_.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !248, !nonnull !3, !noundef !3 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !248
  store i64 %i.k, ptr %i.c, align 8, !noalias !248
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !248
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !251
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !251
  store ptr %i.q, ptr %i.a, align 8, !noalias !251
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !251
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa12active_query11ActiveQueryEENCNCNCNvMs7_B1F_NtB1F_9Backtrace7capture000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callNtB1F_13CapturedQueryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4I_3VecB4e_E14extend_trustedBN_E0E0EB1H_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2s_3rev3RevINtNtNtB2w_5slice4iter4IterNtB14_11ActiveQueryEENCNCNCNvMs7_B14_NtB14_9Backtrace7capture000EE9from_iterB16_.exit unwind label %bb.c, !noalias !248

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3rev3RevINtNtNtB1V_5slice4iter4IterNtBH_11ActiveQueryEENCNCNCNvMs7_BH_NtBH_9Backtrace7capture000EEBJ_.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.e unwind label %bb.d, !noalias !248

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !248
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2s_3rev3RevINtNtNtB2w_5slice4iter4IterNtB14_11ActiveQueryEENCNCNCNvMs7_B14_NtB14_9Backtrace7capture000EE9from_iterB16_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1R_3rev3RevINtNtNtB1V_5slice4iter4IterNtBH_11ActiveQueryEENCNCNCNvMs7_BH_NtBH_9Backtrace7capture000EEBJ_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !248
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2a_3ops5range5RangejENCNvMs_BV_NtBV_15LazyMemoEntries10initialize0EE9from_iterBZ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !256
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !256
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !256
  %i.d = load i64, ptr %i.b, align 8, !range !160, !noalias !256, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !161, !noalias !256, !noundef !3 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMs_BH_NtBH_15LazyMemoEntries10initialize0EEBL_.exit.i.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !256
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22, !noalias !256
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMs_BH_NtBH_15LazyMemoEntries10initialize0EEBL_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !256, !nonnull !3, !noundef !3 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !256
  store i64 %i.g, ptr %i.c, align 8, !noalias !256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !256
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !259
  store ptr %i.m, ptr %i.a, align 8, !noalias !259
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !259
  invoke void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtNtCsC8CapfvpQ1_5salsa5table4memoNtB1w_15LazyMemoEntries10initialize0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callNtB1w_9MemoEntryNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB47_3VecB3I_E14extend_trustedBN_E0E0EB1A_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2q_3ops5range5RangejENCNvMs_B14_NtB14_15LazyMemoEntries10initialize0EE9from_iterB18_.exit unwind label %bb.c, !noalias !256

bb.c:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMs_BH_NtBH_15LazyMemoEntries10initialize0EEBL_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1d_.exit.i unwind label %bb.d, !noalias !256

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !256
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEEB1d_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2q_3ops5range5RangejENCNvMs_B14_NtB14_15LazyMemoEntries10initialize0EE9from_iterB18_.exit: ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCsC8CapfvpQ1_5salsa5table4memo9MemoEntryE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1P_3ops5range5RangejENCNvMs_BH_NtBH_15LazyMemoEntries10initialize0EEBL_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !256
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2d_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterB10_EEINtNtB4_9into_iter8IntoIterB10_EEE9from_iterB14_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %2 = alloca [24 x i8], align 8                  ; 4 uses
  %.sroa.0.i.i = alloca [32 x i8], align 8        ; 5 uses
  %.sroa.10.i.i = alloca [7 x i8], align 1        ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 12 uses
  %3 = alloca [24 x i8], align 8                  ; 5 uses
  %.sroa.021 = alloca [32 x i8], align 8          ; 6 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 6 uses
  %.sroa.0 = alloca [32 x i8], align 8            ; 6 uses
  %.sroa.10 = alloca [7 x i8], align 1            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !270
  %i.l = load i64, ptr %1, align 8, !range !160, !alias.scope !273, !noalias !274, !noundef !3
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.b, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator4nextB1G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.p = load i8, ptr %i.o, align 8, !range !275, !noalias !270, !noundef !3 ; 5 uses
  %.not.i.i = icmp eq i8 %i.p, 2
  br i1 %.not.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i, label %bb.f

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i: ; preds = %.noexc
  store i64 0, ptr %1, align 8, !alias.scope !273, !noalias !274
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !270
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !279, !noalias !282, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.thread58, label %bb.c

.thread58:                                        ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit

bb.c:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !289, !noalias !290, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !289, !noalias !290, !nonnull !3, !noundef !3 ; 5 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %.thread57, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.aa, ptr %i.w, align 8, !alias.scope !289, !noalias !290
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.6.0.copyload19 = load i8, ptr %.sroa.6.0..sroa_idx18, align 8, !noalias !292 ; 2 uses
  %.not = icmp eq i8 %.sroa.6.0.copyload19, 2
  br i1 %.not, label %.thread57, label %.thread53

.thread53:                                        ; preds = %bb.e
  %.sroa.10.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx20, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.i

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !264
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i, i64 7, i1 false), !noalias !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !270
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.pre = load i64, ptr %1, align 8, !range !160, !alias.scope !294, !noalias !297
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !294, !noalias !297
  %i.ab = trunc nuw i64 %.pre to i1
  %i.ac = icmp eq ptr %.pre40, null               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.021)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ac, label %bb.k, label %bb.j

bb.h:                                             ; preds = %bb.f
  br i1 %i.ac, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.thread53, %bb.h
  %.sroa.6.0375256 = phi i8 [ %.sroa.6.0.copyload19, %.thread53 ], [ %i.p, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11.i = load ptr, ptr %i.ae, align 8, !alias.scope !294, !noalias !297, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val12.i = load ptr, ptr %i.af, align 8, !alias.scope !294, !noalias !297, !nonnull !3, !noundef !3
  %i.ag = ptrtoint ptr %.val12.i to i64
  %i.ah = ptrtoint ptr %.val11.i to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  %i.aj = udiv exact i64 %i.ai, 40
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !299
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator9size_hintB1G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %.noexc8 unwind label %bb.l

.noexc8:                                          ; preds = %bb.j
  %i.ak = load i64, ptr %i.h, align 8, !noalias !299, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !299
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.al, align 8, !alias.scope !294, !noalias !297, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val10.i = load ptr, ptr %i.am, align 8, !alias.scope !294, !noalias !297, !nonnull !3, !noundef !3
  %i.an = ptrtoint ptr %.val10.i to i64
  %i.ao = ptrtoint ptr %.val.i to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 40
  %i.ar = call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 %i.aq)
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator9size_hintB1G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad)
          to label %._crit_edge unwind label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.pre41 = load i64, ptr %3, align 8
  br label %bb.m

.thread57:                                        ; preds = %bb.c, %bb.e
  store i64 0, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7 = load i64, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !300
  store i64 %.val7, ptr %i.g, align 8, !noalias !300
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.av, align 8, !noalias !300
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !300
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit: ; preds = %.thread58, %.thread57, %.loopexit
  ret void

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %bb.h, %._crit_edge, %bb.i, %.noexc8
  %.sroa.6.03751 = phi i8 [ %i.p, %._crit_edge ], [ %.sroa.6.0375256, %bb.i ], [ %i.p, %.noexc8 ], [ %i.p, %bb.h ]
  %i.ax = phi i64 [ %.pre41, %._crit_edge ], [ %i.aj, %bb.i ], [ %i.ar, %.noexc8 ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ay = call i64 @llvm.uadd.sat.i64(i64 %i.ax, i64 1)
  %.sroa.0.0.i = call noundef i64 @llvm.umax.i64(i64 %i.ay, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.sroa.0.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40)
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.m
  %i.az = load i64, ptr %i.f, align 8, !range !160, !noundef !3
  %i.ba = trunc nuw i64 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !161, !noundef !3 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %.noexc10
  %i.be = load i64, ptr %i.bd, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.be) #22
          to label %.noexc11 unwind label %bb.l

.noexc11:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %.noexc10
  %i.bf = load ptr, ptr %i.bd, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.bg = icmp ule i64 %.sroa.0.0.i, %i.bc
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021, i64 32, i1 false)
  %.sroa.424.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.bf, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.424.0..sroa_idx.a, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i8 %.sroa.6.03751, ptr %.sroa.525.0..sroa_idx, align 8
  store i64 %i.bc, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.bf, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.021)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE7reserveBH_.exit.i.i, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !319
  %i.bm = load i64, ptr %i.j, align 8, !range !160, !alias.scope !322, !noalias !323, !noundef !3
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator4nextB1G_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh)
          to label %.noexc.i.i unwind label %bb.u

.noexc.i.i:                                       ; preds = %bb.q
  %i.bo = load i8, ptr %i.bi, align 8, !range !275, !noalias !319, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.bo, 2
  br i1 %.not.i.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i.i.i, label %.thread21.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i.i.i: ; preds = %.noexc.i.i
  store i64 0, ptr %i.j, align 8, !alias.scope !322, !noalias !323
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i.i.i

.thread21.i.i:                                    ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  br label %bb.w

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread7.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !319
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.bp = load ptr, ptr %i.bj, align 8, !alias.scope !331, !noalias !332, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.bq = load ptr, ptr %i.bk, align 8, !alias.scope !339, !noalias !340, !nonnull !3, !noundef !3
  %i.br = load ptr, ptr %i.bl, align 8, !alias.scope !339, !noalias !340, !nonnull !3, !noundef !3 ; 5 uses
  %i.bs = icmp eq ptr %i.br, %i.bq
  br i1 %i.bs, label %.loopexit.thread.i.i, label %bb.v

bb.s:                                             ; preds = %bb.ad, %bb.u
  %.pn.i.i = phi { ptr, i32 } [ %i.cu, %bb.ad ], [ %i.bw, %bb.u ] ; 2 uses
  %.val5.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !342, !noalias !343, !noundef !3 ; 2 uses
  %i.bt = icmp eq ptr %.val5.i.i, null
  br i1 %i.bt, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val6.i.i = load i64, ptr %i.bu, align 8, !alias.scope !342, !noalias !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !344
  store i64 %.val6.i.i, ptr %i.d, align 8, !noalias !344
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.val5.i.i, ptr %i.bv, align 8, !noalias !344
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.noexc7.i.i unwind label %bb.af

.noexc7.i.i:                                      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !344
  br label %.body

bb.u:                                             ; preds = %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.v:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  store ptr %i.bx, ptr %i.bl, align 8, !alias.scope !339, !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false)
  %.sroa.6.0..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.6.0.copyload13.i.i = load i8, ptr %.sroa.6.0..sroa_idx12.i.i, align 8, !noalias !347 ; 2 uses
  %.sroa.10.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.0..sroa_idx14.i.i, i64 7, i1 false)
  %.not.i.i12 = icmp eq i8 %.sroa.6.0.copyload13.i.i, 2
  br i1 %.not.i.i12, label %.loopexit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread21.i.i
  %.sroa.6.024.i.i = phi i8 [ %i.bo, %.thread21.i.i ], [ %.sroa.6.0.copyload13.i.i, %bb.v ]
  %i.by = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !343, !noalias !342, !noundef !3 ; 4 uses
  %i.bz = icmp ult i64 %i.by, 230584300921369396
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load i64, ptr %i.k, align 8, !range !7, !alias.scope !343, !noalias !342, !noundef !3
  %i.cb = icmp eq i64 %i.by, %i.ca
  br i1 %i.cb, label %bb.x, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE7reserveBH_.exit.i.i

.loopexit.thread.i.i:                             ; preds = %bb.v, %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.val4.i.i = load i64, ptr %i.cc, align 8, !alias.scope !342, !noalias !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !348
  store i64 %.val4.i.i, ptr %i.c, align 8, !noalias !348
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bp, ptr %i.cd, align 8, !noalias !348
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc13 unwind label %bb.ag

.noexc13:                                         ; preds = %.loopexit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !348
  br label %.loopexit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !324
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ce = load i64, ptr %i.j, align 8, !range !160, !alias.scope !354, !noalias !355, !noundef !3
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = load ptr, ptr %i.bj, align 8, !alias.scope !354, !noalias !355, !noundef !3
  %.not8.i.i.i = icmp eq ptr %i.cg, null          ; 2 uses
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br i1 %.not8.i.i.i, label %bb.ac, label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %.not8.i.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val11.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !354, !noalias !355, !nonnull !3, !noundef !3
  %.val12.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !354, !noalias !355, !nonnull !3, !noundef !3
  %i.ch = ptrtoint ptr %.val12.i.i.i to i64
  %i.ci = ptrtoint ptr %.val11.i.i.i to i64
  %i.cj = sub nuw i64 %i.ch, %i.ci
  %i.ck = udiv exact i64 %i.cj, 40
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !357
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator9size_hintB1G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh)
          to label %.noexc9.i.i unwind label %bb.ad

.noexc9.i.i:                                      ; preds = %bb.ab
  %i.cl = load i64, ptr %i.b, align 8, !noalias !357, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !357
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !354, !noalias !355, !nonnull !3, !noundef !3
  %.val10.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !354, !noalias !355, !nonnull !3, !noundef !3
  %i.cm = ptrtoint ptr %.val10.i.i.i to i64
  %i.cn = ptrtoint ptr %.val.i.i.i to i64
  %i.co = sub nuw i64 %i.cm, %i.cn
  %i.cp = udiv exact i64 %i.co, 40
  %i.cq = call i64 @llvm.uadd.sat.i64(i64 %i.cl, i64 %i.cp)
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i

bb.ac:                                            ; preds = %bb.y
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEENtNtNtB8_6traits8iterator8Iterator9size_hintB1G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh)
          to label %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit_crit_edge.i.i unwind label %bb.ad

._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit_crit_edge.i.i: ; preds = %bb.ac
  %.pre.i.i = load i64, ptr %2, align 8, !noalias !324
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE7reserveBH_.exit.i.i: ; preds = %bb.ae, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i, %bb.w
  %i.cr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !343, !noalias !342, !nonnull !3, !noundef !3
  %i.cs = getelementptr inbounds nuw [40 x i8], ptr %i.cr, i64 %i.by ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i, i64 32, i1 false)
  %.sroa.417.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.cs, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.417.0..sroa_idx.i.i.a, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i, i64 7, i1 false)
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store i8 %.sroa.6.024.i.i, ptr %.sroa.518.0..sroa_idx.i.i, align 8
  %i.ct = add nuw nsw i64 %i.by, 1
  store i64 %i.ct, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !343, !noalias !342
  br label %bb.p

bb.ad:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i: ; preds = %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit_crit_edge.i.i, %.noexc9.i.i, %bb.aa, %bb.z
  %i.cv = phi i64 [ %.pre.i.i, %._RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit_crit_edge.i.i ], [ %i.cq, %.noexc9.i.i ], [ %i.ck, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !324
  %i.cw = call i64 @llvm.uadd.sat.i64(i64 %i.cv, i64 1) ; 2 uses
  %i.cx = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !358, !noalias !342, !noundef !3 ; 2 uses
  %i.cy = load i64, ptr %i.k, align 8, !range !7, !alias.scope !358, !noalias !342, !noundef !3
  %i.cz = sub i64 %i.cy, %i.cx
  %i.da = icmp ugt i64 %i.cw, %i.cz
  br i1 %i.da, label %bb.ae, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE7reserveBH_.exit.i.i, !prof !13

bb.ae:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB1W_EENtNtNtB8_6traits8iterator8Iterator9size_hintB20_.exit.i.i
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.cx, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarE7reserveBH_.exit.i.i unwind label %bb.ad

bb.af:                                            ; preds = %bb.t
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ag:                                            ; preds = %.loopexit.thread.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %.noexc7.i.i, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.dc, %bb.ag ], [ %.pn.i.i, %.noexc7.i.i ], [ %.pn.i.i, %bb.s ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit16 unwind label %bb.ah

.loopexit:                                        ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEB21_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB25_.exit.thread.i.i.i, %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit

bb.ah:                                            ; preds = %bb.aj, %.body
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit16: ; preds = %.noexc15, %bb.ai, %.body
  %.pn28 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.ai ], [ %.pn.ph, %.noexc15 ]
  resume { ptr, i32 } %.pn28

bb.ai:                                            ; preds = %bb.l, %bb.d
  %.pn.ph = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.aw, %bb.l ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.de, align 8, !noundef !3 ; 2 uses
  %i.df = icmp eq ptr %.val, null
  br i1 %i.df, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit16, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val5 = load i64, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !361
  store i64 %.val5, ptr %i.a, align 8, !noalias !361
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.dh, align 8, !noalias !361
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc15 unwind label %bb.ah

.noexc15:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !361
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6copied6CopiedINtNvCseiUJRdNtLVy_9inventory1__4IterNtNtCsC8CapfvpQ1_5salsa5zalsa9ErasedJarEEINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterB2a_EEEB2e_.exit16
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCs2AWtUsOyxgP_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECsC8CapfvpQ1_5salsa(ptr %i.b)
  call void @_RNvNtCs2AWtUsOyxgP_3std7process5abort() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicbENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB5_6AtomicbENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !51, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs1j_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomictENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !364, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXsV_NtNtCs4NRVxsYgnAr_4core4sync6atomicINtB5_6AtomictENtNtB9_3fmt5Debug3fmt(ptr noundef nonnull align 2 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !51, !noundef !3
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtCs4NRVxsYgnAr_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { i32, i32 } @_RNvXs_NtNtCsC8CapfvpQ1_5salsa5input9singletonNtB4_9SingletonNtB4_15SingletonChoice5index(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %i.a to i32                    ; 2 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i64 %i.a, 32
  %i.f = trunc nuw i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.h = insertvalue { i32, i32 } %i.g, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.e, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCsffXo9NmvYC7_8indexmap6BucketNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1m_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1i_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EEB1f_(ptr noalias noundef nonnull align 8 %.val, i64 noundef %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !3
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !3
  store i64 %i.p, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.n, ptr %i.q, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDNtNtCsC8CapfvpQ1_5salsa10ingredient10IngredientEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
end_hunk_1

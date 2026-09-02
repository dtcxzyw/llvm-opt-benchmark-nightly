Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers:bb.a
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !662
  store i64 0, ptr %i.c, align 8, !noalias !662
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !662
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !662
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.g, align 8, !noalias !662
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !662
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !662
  store ptr %i.c, ptr %i.b, align 8, !noalias !662
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @191, ptr %i.h, align 8, !noalias !662
  %i.i = invoke noundef zeroext i1 @_RNvXsm_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtBL_3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !663

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %.body unwind label %bb.e, !noalias !663

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %bb.g, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #29
          to label %.noexc.i.i unwind label %bb.b, !noalias !663

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !663
  unreachable

bb.f:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.j, %bb.b ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #30
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !662
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.n = load ptr, ptr %1, align 8, !invariant.load !4, !noalias !665 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.n(ptr noundef nonnull %0)
          to label %bb.j unwind label %bb.l, !noalias !665

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !4, !noalias !665 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !4, !noalias !665
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #28, !noalias !665
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !4, !noalias !665 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !4, !noalias !665
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #28, !noalias !665
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.t, %bb.m ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %bb.k
  ret ptr %i.m

bb.n:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customNtCsblNeYnuIT2i_15spm_precompiled16PrecompiledErrorECs2JiOgHzbbc7_10tokenizers(i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = zext i1 %0 to i8
  store i8 %i.f, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !672
  store i64 0, ptr %i.c, align 8, !noalias !672
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !672
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !672
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.g, align 8, !noalias !672
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !672
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !672
  store ptr %i.c, ptr %i.b, align 8, !noalias !672
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @191, ptr %i.h, align 8, !noalias !672
  %i.i = invoke noundef zeroext i1 @_RNvXs1_CsblNeYnuIT2i_15spm_precompiledNtB5_16PrecompiledErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !673

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #30
          to label %bb.f unwind label %bb.e, !noalias !673

bb.c:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.d, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtCsblNeYnuIT2i_15spm_precompiled16PrecompiledErrorNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @192, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @194) #29
          to label %.noexc.i.i unwind label %bb.b, !noalias !673

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !673
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtCsblNeYnuIT2i_15spm_precompiled16PrecompiledErrorNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !672
  %i.l = call noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.l
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %2 = trunc i64 %i.c to i1
  %i.d = lshr i64 %i.c, 1                         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  br i1 %2, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !699
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !699
  %i.e = load i64, ptr %i.a, align 8, !range !13, !noalias !699, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noalias !699, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !noalias !699
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #29, !noalias !699
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !noalias !699, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !699
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !noalias !700
  br label %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !701, !noalias !702
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !701, !noalias !702
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !701, !noalias !702
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.a
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noundef nonnull %1), !noalias !703
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit

_RNvXsB_NtCscdodAO9FK5_5alloc6stringNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvYNvYeNtNtCscdodAO9FK5_5alloc6borrow7ToOwned8to_ownedINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTReEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %bb.e
  %i.m = call noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.m
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.d, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !713
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !range !13, !noalias !713, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noalias !713, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !5

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8, !noalias !713
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #29
          to label %.noexc2 unwind label %bb.d

.noexc2:                                          ; preds = %bb.b
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !noalias !713, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp ule i64 %.val1, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !713
  %.not.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !714
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.c, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !715
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !715
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.val1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !715
  %i.n = invoke noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.m, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %i.n

bb.i:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !725
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !725
  %i.c = load i64, ptr %i.a, align 8, !range !13, !noalias !725, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !725, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !725
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #29, !noalias !725
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !725, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !725
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !726
  br label %_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit

_RNvXsB_NtCscdodAO9FK5_5alloc6stringReNtB5_8ToString9to_stringCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !727
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !727
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !727
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCs5PtHgSLqj5O_10serde_json5error10make_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces1_1__NtB3c_16WhitespaceHelperNtB22_11Deserialize11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaces1_1__NtB26_16WhitespaceHelperNtBW_11Deserialize11deserialize9___VisitorEB2a_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @52, i64 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtNtB7_5model3BPENtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBb_(ptr dead_on_unwind noalias noundef writable sret([304 x i8]) align 8 captures(address) dereferenceable(304) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
end_hunk_0
begin_hunk_1_@_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys_1__NtBa_10AddedTokenNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1u_7Visitor14visit_byte_bufNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_:bb.a
bb.al:                                            ; preds = %bb.a
  %i.da = load i8, ptr %i.b, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.db = icmp eq i8 %i.da, 110
  br i1 %i.db, label %bb.am, label %bb.c

bb.am:                                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.de = icmp eq i8 %i.dd, 111
  br i1 %i.de, label %bb.an, label %bb.c

bb.an:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dh = icmp eq i8 %i.dg, 114
  br i1 %i.dh, label %bb.ao, label %bb.c

bb.ao:                                            ; preds = %bb.an
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dk = icmp eq i8 %i.dj, 109
  br i1 %i.dk, label %bb.ap, label %bb.c

bb.ap:                                            ; preds = %bb.ao
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dm = load i8, ptr %i.dl, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dn = icmp eq i8 %i.dm, 97
  br i1 %i.dn, label %bb.aq, label %bb.c

bb.aq:                                            ; preds = %bb.ap
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dq = icmp eq i8 %i.dp, 108
  br i1 %i.dq, label %bb.ar, label %bb.c

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dt = icmp eq i8 %i.ds, 105
  br i1 %i.dt, label %bb.as, label %bb.c

bb.as:                                            ; preds = %bb.ar
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dw = icmp eq i8 %i.dv, 122
  br i1 %i.dw, label %bb.at, label %bb.c

bb.at:                                            ; preds = %bb.as
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.dz = icmp eq i8 %i.dy, 101
  br i1 %i.dz, label %bb.au, label %bb.c

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !800, !noalias !799, !noundef !4
  %i.ec = icmp eq i8 %i.eb, 100
  br i1 %i.ec, label %bb.av, label %bb.c

bb.av:                                            ; preds = %bb.au, %bb.ak, %bb.ag, %bb.z, %bb.o, %bb.j, %bb.c
  %.sink.i = phi i8 [ 3, %bb.ak ], [ 2, %bb.ag ], [ 1, %bb.z ], [ 5, %bb.o ], [ 6, %bb.c ], [ 4, %bb.au ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink.i, ptr %i.ed, align 1, !alias.scope !799, !noalias !800
  store i8 0, ptr %0, align 8, !alias.scope !799, !noalias !800
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.aw
  resume { ptr, i32 } %i.ee

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.av
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularys_1__NtBa_10AddedTokenNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1u_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %trunc..i = tail call i8 @llvm.umin.i8(i8 %1, i8 6)
  store i8 %trunc..i, ptr %i.a, align 1, !alias.scope !803
  store i8 0, ptr %0, align 8, !alias.scope !803
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0E0Cs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !8, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !12, !noundef !4
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0Cs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #29
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0Cs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !810, !noalias !811, !align !8, !noundef !4 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !810, !noalias !811
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !12, !noalias !812, !noundef !4
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #29, !noalias !812
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #29, !noalias !812
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !812, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !812
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !812, !inline_history !809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !812
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 154
  %i.g = load i8, ptr %i.f, align 2, !range !34, !noundef !4
  %cond = icmp eq i8 %i.g, 2
  br i1 %cond, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !820, !noalias !821, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !820, !noalias !821, !noundef !4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !820, !noalias !821, !noundef !4
  %i.n = icmp ult i64 %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.p = load ptr, ptr %i.o, align 8, !noalias !822 ; 7 uses
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.r = load ptr, ptr %i.q, align 8, !noalias !822, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  %i.t = load i32, ptr %i.s, align 4, !noalias !822, !noundef !4
  %2 = trunc i32 %i.t to i1
  br i1 %2, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = load i32, ptr %i.u, align 8, !noalias !822, !noundef !4
  %i.w = and i32 %i.v, 2
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13

._crit_edge:                                      ; preds = %bb.c, %bb.e
  %i.y = load i64, ptr %i.p, align 8, !range !13, !noalias !822, !noundef !4
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.f, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !822
  %i.ac = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %i.i) ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  br i1 %i.ad, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %1, align 8, !range !27, !alias.scope !820, !noalias !821, !noundef !4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !822, !noundef !4
  %3 = trunc i32 %i.ah to i1
  br i1 %3, label %bb.i, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !822, !noundef !4
  %i.ak = and i32 %i.aj, 2
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !13, !noalias !822, !noundef !4
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !822
  %i.ar = icmp ugt i64 %i.ac, %i.aq
  br i1 %i.ar, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13: ; preds = %bb.d, %bb.f, %bb.e, %bb.a, %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit
  store i64 0, ptr %0, align 8
  br label %_RNvMs4_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread: ; preds = %bb.i, %bb.h, %bb.j, %._crit_edge, %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.as = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105), !noalias !823 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !823 ; 2 uses
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.k, !prof !11

bb.k:                                             ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread
  call fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE8get_slowCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.8.val, i64 noundef %i.as, i64 noundef %i.au)
  br label %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit

bb.l:                                             ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread
  store atomic i64 1, ptr %i.at release, align 8, !noalias !823
  %i.aw = inttoptr i64 %i.as to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.8.val, ptr %i.ax, align 8
  store i64 1, ptr %i.b, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.az, align 8
  br label %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k, %bb.l
  %i.ba = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !10, !invariant.load !4
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = and i64 %i.bf, -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.b, align 8, !range !13, !noundef !4
  %i.bk = trunc nuw i64 %i.bj to i1               ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4
  %.sroa.0.0 = select i1 %i.bk, ptr %i.bn, ptr %i.bp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.br(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.bi, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8 ; 7 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8 ; 4 uses
  %i.bs = ptrtoint ptr %.sroa.46.0.copyload to i64 ; 2 uses
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !824
  store i64 %i.bs, ptr %i.a, align 8, !noalias !824
  %i.bt = icmp eq ptr %.sroa.46.0.copyload, inttoptr (i64 2 to ptr)
  br i1 %i.bt, label %.noexc9, label %.noexc10, !prof !5

bb.o:                                             ; preds = %bb.m
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.68.0.copyload = load i8, ptr %.sroa.68.0..sroa_idx, align 8
  %i.bu = trunc nuw i8 %.sroa.68.0.copyload to i1
  br i1 %i.bu, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload) ]
  tail call fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %.sroa.57.0.copyload, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload)
  br label %_RNvMs4_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCs2JiOgHzbbc7_10tokenizers.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload)
          to label %.noexc8 unwind label %.body.thread

.body.thread:                                     ; preds = %bb.q
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef 1400, i64 noundef 8) #28
  br label %bb.r

.noexc8:                                          ; preds = %bb.q
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload, i64 noundef 1400, i64 noundef 8) #28
  br label %_RNvMs4_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCs2JiOgHzbbc7_10tokenizers.exit

.noexc9:                                          ; preds = %bb.n
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #29
  unreachable

.noexc10:                                         ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload) ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload, i64 40
  store atomic i64 %i.bs, ptr %i.bw release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !824
  br label %_RNvMs4_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs4_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc8, %.noexc10, %bb.p, %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13
  ret void

bb.r:                                             ; preds = %.body.thread, %bb.s
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.bv, %.body.thread ], [ %lpad.thr_comm.split-lp, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body17

bb.s:                                             ; preds = %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #30
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevel7builder(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB2_16WordLevelBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevel9from_file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 10 uses
  %i.d = alloca [112 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs1_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevelNtB5_9WordLevel9read_file(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.o, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs2JiOgHzbbc7_10tokenizers:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

.loopexit:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.9, %bb.cf, %bb.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.8, %bb.by, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.7, %bb.br, %bb.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.6, %bb.bk, %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.5, %bb.bd, %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.4, %bb.aw, %bb.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.3, %bb.ap, %bb.ak, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.2, %bb.ai, %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20.1, %bb.ab, %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutex10MutexGuardINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEEEECs2JiOgHzbbc7_10tokenizers.exit.sink.split.i20, %bb.f, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %bb.c, %bb.g, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheEECs2JiOgHzbbc7_10tokenizers(ptr %1) #30
          to label %common.resume unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE3popCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !12, !noundef !4
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.c, -1                         ; 5 uses
  store atomic i64 %i.k, ptr %i.b monotonic, align 8
  fence seq_cst
  %i.l = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = sub i64 %i.k, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 3 uses
  %i.r = sub i64 %i.q, %i.c
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 4 uses
  %i.x = add i64 %i.w, -1
  %i.y = and i64 %i.x, %i.q
  %i.z = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.y
  %i.aa = load volatile { [2 x i64] }, ptr %i.z, align 8 ; 2 uses
  %.fca.0.0.extract = extractvalue { [2 x i64] } %i.aa, 0, 0
  %.fca.0.1.extract = extractvalue { [2 x i64] } %i.aa, 0, 1
  %i.ab = inttoptr i64 %.fca.0.0.extract to ptr   ; 2 uses
  %i.ac = inttoptr i64 %.fca.0.1.extract to ptr   ; 2 uses
  %i.ad = icmp ugt i64 %i.w, 64
  %i.ae = sdiv i64 %i.w, 4
  %i.af = icmp sle i64 %i.f, %i.ae
  %or.cond = and i1 %i.ad, %i.af
  br i1 %or.cond, label %bb.g, label %bb.n, !prof !17

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 256
  store atomic i64 %i.q, ptr %i.ah monotonic, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.ai = lshr i64 %i.w, 1
  tail call fastcc void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE6resizeCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %0, i64 noundef %i.ai)
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noundef !4 ; 4 uses
  %i.an = add i64 %i.am, -1
  %i.ao = and i64 %i.an, %i.k
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load volatile { [2 x i64] }, ptr %i.ap, align 8 ; 2 uses
  %.fca.0.0.extract22 = extractvalue { [2 x i64] } %i.aq, 0, 0 ; 2 uses
  %.fca.0.1.extract23 = extractvalue { [2 x i64] } %i.aq, 0, 1
  %i.ar = inttoptr i64 %.fca.0.0.extract22 to ptr
  %i.as = inttoptr i64 %.fca.0.1.extract23 to ptr
  %i.at = icmp eq i64 %i.k, %i.n
  br i1 %i.at, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store atomic i64 %i.c, ptr %i.au monotonic, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.av = cmpxchg ptr %i.m, i64 %i.k, i64 %i.c seq_cst monotonic, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  %i.ax = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 264
  store atomic i64 %i.c, ptr %i.ay monotonic, align 8
  br i1 %i.aw, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.az = icmp ugt i64 %i.am, 64
  %i.ba = sdiv i64 %i.am, 4
  %i.bb = icmp slt i64 %i.o, %i.ba
  %or.cond3 = and i1 %i.az, %i.bb
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.m
  %i.bc = icmp ne i64 %.fca.0.0.extract22, 0
  tail call void @llvm.assume(i1 %i.bc)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bd = lshr i64 %i.am, 1
  tail call fastcc void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE6resizeCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %0, i64 noundef %i.bd)
  br label %bb.l

bb.n:                                             ; preds = %bb.j, %bb.g, %bb.e, %bb.a, %bb.i, %bb.l, %bb.f
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.i ], [ %i.ac, %bb.e ], [ %i.as, %bb.l ], [ undef, %bb.f ], [ %i.ac, %bb.g ], [ undef, %bb.j ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.ab, %bb.e ], [ %i.ar, %bb.l ], [ null, %bb.f ], [ %i.ab, %bb.g ], [ null, %bb.j ]
  %i.be = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bf = insertvalue { ptr, ptr } %i.be, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.bf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE4pushCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 3 uses
  %i.h = sub i64 %i.c, %i.e
  %.not = icmp slt i64 %i.h, %i.g
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.g, 1
  tail call fastcc void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE6resizeCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %0, i64 noundef %i.i)
  %i.j = load i64, ptr %i.f, align 8, !noundef !4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.j, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0 = load ptr, ptr %i.k, align 8, !noundef !4
  %i.l = add i64 %.sroa.02.0, -1
  %i.m = and i64 %i.l, %i.c
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.01.0, i64 %i.m ; 2 uses
  store volatile ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store volatile ptr %2, ptr %i.o, align 8
  fence release
  %i.p = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.q = add i64 %i.c, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  store atomic i64 %i.q, ptr %i.r monotonic, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE6resizeCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = tail call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs4NRVxsYgnAr_4core3mem12maybe_uninit11MaybeUninitNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefEEINtNtNtNtBW_4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB2y_8adapters3map3MapINtNtNtBW_3ops5range5RangejENCNvMs_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB4q_6BufferB1K_E5alloc0EECs2JiOgHzbbc7_10tokenizers(i64 noundef 0, i64 noundef %1)
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.not7 = icmp eq i64 %i.f, %i.d
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = add i64 %i.j, -1                         ; 3 uses
  %i.n = add i64 %1, -1                           ; 3 uses
  %i.o = sub i64 %i.d, %i.f
  %.neg = add i64 %i.f, 1
  %2 = trunc i64 %i.o to i1
  br i1 %2, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.p = and i64 %i.f, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.f, %i.n
  %i.s = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.t = add i64 %i.f, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.sroa.0.08.unr = phi i64 [ %i.f, %.lr.ph ], [ %i.t, %.prol.loopexit.unr-lcssa ]
  %i.u = icmp eq i64 %i.d, %.neg
  br i1 %i.u, label %._crit_edge, label %.lr.ph.new

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = tail call fastcc noundef ptr @_RINvNtCs1D9TkrBnOxz_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECs2JiOgHzbbc7_10tokenizers() ; 7 uses
  store ptr %i.v, ptr %i.a, align 8
  store ptr %i.l, ptr %i.g, align 8
  store i64 %1, ptr %i.i, align 8
  %i.w = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.x = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 16, i64 noundef range(i64 1, 9) 8) #28 ; 4 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.b, label %bb.d, !prof !7

bb.b:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #29
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.sroa.0.08 = phi i64 [ %i.ai, %.lr.ph.new ], [ %.sroa.0.08.unr, %.prol.loopexit ] ; 4 uses
  %i.z = and i64 %.sroa.0.08, %i.m
  %i.aa = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.z
  %i.ab = and i64 %.sroa.0.08, %i.n
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.ad = add i64 %.sroa.0.08, 1                  ; 2 uses
  %i.ae = and i64 %i.ad, %i.m
  %i.af = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.ae
  %i.ag = and i64 %i.ad, %i.n
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ai = add i64 %.sroa.0.08, 2                  ; 2 uses
  %.not.1 = icmp eq i64 %i.ai, %i.d
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new

bb.c:                                             ; preds = %bb.b, %bb.g, %bb.e, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers(ptr %i.v) #30
          to label %bb.m unwind label %bb.l

bb.d:                                             ; preds = %._crit_edge
  store ptr %i.l, ptr %i.x, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = invoke noundef i64 @_RINvMs7_NtCs1D9TkrBnOxz_15crossbeam_epoch6atomicINtB6_6AtomicINtNtCs37HRbLTrFyI_15crossbeam_deque5deque6BufferNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefEE4swapINtB6_6SharedBX_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %i.al, i64 noundef %i.am, i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvMNtCs1D9TkrBnOxz_15crossbeam_epoch5guardNtB3_5Guard15defer_uncheckedNCNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB1g_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE6resize0uECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, i64 noundef %i.an)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %1, 1152921504606846912
  %.not5 = icmp eq i64 %i.ao, 0
  br i1 %.not5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMNtCs1D9TkrBnOxz_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.c

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = icmp eq ptr %i.v, null
  br i1 %i.ap, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 2072 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 2176
  store atomic i64 0, ptr %i.au release, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 2080
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_RNvMs6_NtCs1D9TkrBnOxz_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.v)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1D9TkrBnOxz_15crossbeam_epoch5guard5GuardECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.l:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.aj
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs4_NtCs37HRbLTrFyI_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs5NXVUOdy9du_10rayon_core3job6JobRefE8is_emptyCs2JiOgHzbbc7_10tokenizers(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d seq_cst, align 8
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp slt i64 %i.f, 1
  ret i1 %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtCsJJoyqXSI9P_5regex5regex6stringNtB5_5Regex7find_at(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
_RINvMNtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers.exit:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1202, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 154
  %i.i = load i8, ptr %i.h, align 2, !range !34, !noalias !1202, !noundef !4
  %cond.i = icmp eq i8 %i.i, 2
  br i1 %cond.i, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RINvMNtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1203 ; 6 uses
  %i.l = load i64, ptr %i.k, align 8, !range !13, !noalias !1203, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.a, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

bb.a:                                             ; preds = %._crit_edge.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !1203
  %i.p = icmp ult i64 %2, %i.o
  br i1 %i.p, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.r = load i32, ptr %i.q, align 4, !noalias !1203, !noundef !4
  %3 = trunc i32 %i.r to i1
  br i1 %3, label %bb.c, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.t = load i32, ptr %i.s, align 8, !noalias !1203, !noundef !4
  %i.u = and i32 %i.t, 2
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !13, !noalias !1203, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !1203
  %i.ab = icmp ugt i64 %2, %i.aa
  br i1 %i.ab, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.a, %_RINvMNtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers.exit
  store i64 0, ptr %i.c, align 8, !alias.scope !1201, !noalias !1204
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.d, %bb.c, %bb.b, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ac = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105), !noalias !1205 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !1205 ; 2 uses
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i.thread, label %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !11

_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i.thread: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  store atomic i64 1, ptr %i.ad release, align 8, !noalias !1205
  %i.ag = inttoptr i64 %i.ac to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.8.val, ptr %i.ah, align 8, !noalias !1202
  store i64 1, ptr %i.b, align 8, !noalias !1202
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !noalias !1202
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.aj, align 8, !noalias !1202
  %i.ak = load ptr, ptr %i.e, align 8, !noalias !1202, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1202, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !10, !invariant.load !4, !noalias !1202
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = and i64 %i.ap, -16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %bb.e

_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  call fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE8get_slowCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.8.val, i64 noundef %i.ac, i64 noundef %i.ae), !noalias !1202
  %.pre = load i64, ptr %i.b, align 8, !range !13, !noalias !1202
  %i.at = trunc nuw i64 %.pre to i1
  %i.au = load ptr, ptr %i.e, align 8, !noalias !1202, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1202, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !10, !invariant.load !4, !noalias !1202
  %i.az = add nsw i64 %i.ay, -1
  %i.ba = and i64 %i.az, -16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i.thread, %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bd = phi ptr [ %i.as, %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i.thread ], [ %i.bc, %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.be = phi ptr [ %i.am, %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i.thread ], [ %i.aw, %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !1202, !nonnull !4, !align !8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1202, !nonnull !4, !noundef !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bk = phi ptr [ %i.bd, %bb.e ], [ %i.bc, %bb.f ]
  %i.bl = phi ptr [ %i.be, %bb.e ], [ %i.aw, %bb.f ]
  %i.bm = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.bh, %bb.e ], [ %i.bj, %bb.f ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !4, !noalias !1202, !nonnull !4
  invoke void %i.bo(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %i.bk, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %.sroa.46.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i2, align 8, !noalias !1202 ; 7 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !1202 ; 4 uses
  %i.bp = ptrtoint ptr %.sroa.46.0.copyload.i to i64 ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1206
  store i64 %i.bp, ptr %i.a, align 8, !noalias !1206
  %i.bq = icmp eq ptr %.sroa.46.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.bq, label %.noexc9.i, label %.noexc10.i, !prof !5

bb.j:                                             ; preds = %bb.h
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.68.0.copyload.i = load i8, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !1202
  %i.br = trunc nuw i8 %.sroa.68.0.copyload.i to i1
  br i1 %i.br, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  call fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i), !noalias !1201
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdMFwaIVqAhb_14regex_automata4meta5regex5CacheECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i)
          to label %.noexc8.i unwind label %.body.thread.i, !noalias !1201

.body.thread.i:                                   ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #28, !noalias !1201
  br label %bb.m

.noexc8.i:                                        ; preds = %bb.l
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #28, !noalias !1201
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

.noexc9.i:                                        ; preds = %bb.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #29, !noalias !1201
  unreachable

.noexc10.i:                                       ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i, i64 40
  store atomic i64 %i.bp, ptr %i.bt release, align 8, !noalias !1201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1206
  br label %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit

bb.m:                                             ; preds = %bb.n, %.body.thread.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.bs, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body17.i

bb.n:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #30
          to label %bb.m unwind label %bb.o, !noalias !1201

bb.o:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !1201
  unreachable

_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, %bb.k, %.noexc8.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bv = load i64, ptr %i.c, align 8, !range !13, !noundef !4
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load <2 x i64>, ptr %i.bx, align 8
  store <2 x i64> %i.by, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit, %bb.p
  %.sink = phi ptr [ %1, %bb.p ], [ null, %_RNvMs0_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_5Regex6search.exit ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE10merge_word(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 37 uses
  %i.o = alloca [24 x i8], align 8                ; 14 uses
  %i.p = alloca [8 x i8], align 8                 ; 11 uses
end_hunk_2
begin_hunk_3_@_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularyNtB5_15AddedVocabularyNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 18, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 18, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @147)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 21, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @149)
  %i.j = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternRNtNtNtCsJJoyqXSI9P_5regex5regex6string5RegexNtB5_7Pattern12find_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.417.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [120 x i8], align 8               ; 22 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = icmp eq i64 %3, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.o = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 24, i64 noundef range(i64 1, 9) 8) #28 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.o, i8 0, i64 17, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %3, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.q = load i64, ptr %i.k, align 8, !range !13, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !14, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g, !prof !5

bb.e:                                             ; preds = %bb.ao, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  ret void

bb.f:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.u, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #29
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.x = icmp ule i64 %3, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 %i.t, ptr %i.m, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  store i64 0, ptr %i.z, align 8
  %i.aa = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1453, !noalias !1454, !nonnull !4, !noundef !4 ; 3 uses
  %i.ad = invoke noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @105)
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !1455 ; 2 uses
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !11

bb.h:                                             ; preds = %.noexc
  invoke fastcc void @_RNvMs2_NtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE8get_slowCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.ac, i64 noundef %i.ad, i64 noundef %i.af)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  store atomic i64 1, ptr %i.ae release, align 8, !noalias !1455
  %i.ah = inttoptr i64 %i.ad to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ac, ptr %i.ai, align 8, !noalias !1456
  store i64 1, ptr %i.j, align 8, !noalias !1456
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !noalias !1456
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.ak, align 8, !noalias !1456
  br label %bb.k

.body33:                                          ; preds = %.body, %bb.j, %.body.i.i
  %.pn = phi { ptr, i32 } [ %i.dq, %.body.i.i ], [ %i.al, %bb.j ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.m) #30
          to label %bb.ax unwind label %bb.aw

bb.j:                                             ; preds = %.noexc4.i.i, %bb.aj, %bb.an, %bb.h, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body33

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 3 uses
  store i32 0, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %2, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 3 uses
  store i64 %3, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 3 uses
  store i64 0, ptr %.sroa.08.sroa.8.0..sroa_idx, align 8
  %.sroa.08.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80 ; 4 uses
  store i64 %3, ptr %.sroa.08.sroa.9.0..sroa_idx, align 8
  %.sroa.08.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store i8 0, ptr %.sroa.08.sroa.10.0..sroa_idx, align 8
  %.sroa.08.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  store ptr %i.aa, ptr %.sroa.08.sroa.12.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.527.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.av, %bb.k
  %i.as = phi ptr [ %i.aa, %bb.k ], [ %.pre, %bb.av ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 0, %bb.k ], [ %.sroa.11.i.sroa.0.0.copyload, %bb.av ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.417.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.at = load i64, ptr %i.l, align 8, !range !13, !alias.scope !1465, !noalias !1466, !noundef !4
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = load ptr, ptr %i.ao, align 8, !nonnull !4, !align !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.an, align 8, !nonnull !4
  %.sroa.0.0.i.i.i = select i1 %i.au, ptr %i.aw, ptr %i.ax
  %.val.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !1467, !noalias !1468, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1469)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1470, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 154
  %i.bc = load i8, ptr %i.bb, align 2, !range !34, !noalias !1470, !noundef !4
  %cond.i.i.i.i = icmp eq i8 %i.bc, 2
  br i1 %cond.i.i.i.i, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.bd = load i64, ptr %.sroa.08.sroa.8.0..sroa_idx, align 8, !alias.scope !1472, !noalias !1473, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 0
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 184
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1474 ; 8 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.n

._crit_edge.i.i.i:                                ; preds = %bb.n, %bb.m
  %i.be = load i64, ptr %.sroa.08.sroa.9.0..sroa_idx, align 8, !alias.scope !1472, !noalias !1473, !noundef !4 ; 3 uses
  %i.bf = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !1472, !noalias !1473, !noundef !4 ; 2 uses
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.o, label %._crit_edge.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !1474, !noundef !4
  %4 = trunc i32 %i.bi to i1
  br i1 %4, label %bb.ag, label %._crit_edge.i.i.i

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !noalias !1474, !noundef !4
  %i.bl = and i32 %i.bk, 2
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %._crit_edge.i.i.i.i, label %bb.ag

._crit_edge.i.i.i.i:                              ; preds = %bb.o, %._crit_edge.i.i.i
  %i.bn = load i64, ptr %.pre.i.i.i, align 8, !range !13, !noalias !1474, !noundef !4
  %i.bo = trunc nuw i64 %i.bn to i1
  br i1 %i.bo, label %bb.p, label %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !1474
  %i.br = call i64 @llvm.usub.sat.i64(i64 %i.be, i64 %i.bd) ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  br i1 %i.bs, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load i32, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8, !range !27, !alias.scope !1472, !noalias !1473, !noundef !4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 60
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !1474, !noundef !4
  %5 = trunc i32 %i.bw to i1
  br i1 %5, label %bb.s, label %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 64
  %i.by = load i32, ptr %i.bx, align 8, !noalias !1474, !noundef !4
  %i.bz = and i32 %i.by, 2
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !13, !noalias !1474, !noundef !4
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, label %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i: ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !1474
  %i.cg = icmp ugt i64 %i.br, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i

_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %bb.t, %bb.s, %bb.r, %._crit_edge.i.i.i.i
  %i.ch = load ptr, ptr %i.ay, align 8, !noalias !1470, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1470, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !10, !invariant.load !4, !noalias !1470
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !1470, !nonnull !4
  invoke void %i.cr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.cp, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.08.sroa.4.0..sroa_idx)
          to label %.noexc21 unwind label %.loopexit, !inline_history !1433

.noexc21:                                         ; preds = %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i
  %.sroa.034.0.copyload.pr.i.i = load i64, ptr %i.e, align 8, !noalias !1475
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1475 ; 5 uses
  switch i64 %.sroa.034.0.copyload.pr.i.i, label %bb.v [
    i64 2, label %bb.u
    i64 0, label %bb.ag
  ]

bb.u:                                             ; preds = %.noexc21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  br label %bb.ac

bb.v:                                             ; preds = %.noexc21
  store ptr %.sroa.6.0.copyload.i.i, ptr %i.f, align 8, !noalias !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !noalias !1475
  %.cast.i.i = ptrtoint ptr %.sroa.6.0.copyload.i.i to i64
  %i.cs = load i64, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1475, !noundef !4 ; 3 uses
  %.not.i.i = icmp ule i64 %i.cs, %.cast.i.i
  %i.ct = load i64, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8, !range !13
  %i.cu = trunc nuw i64 %i.ct to i1
  %or.cond = select i1 %.not.i.i, i1 %i.cu, i1 false
  %i.cv = load i64, ptr %i.ap, align 8
  %i.cw = icmp eq i64 %i.cs, %i.cv
  %or.cond63 = select i1 %or.cond, i1 %i.cw, i1 false, !prof !17
  br i1 %or.cond63, label %bb.y, label %bb.w, !prof !17

bb.w:                                             ; preds = %bb.ab, %bb.v
  %.sroa.6.0.copyload.i5.i = phi ptr [ %.sroa.6.0.copyload.i.i, %bb.v ], [ %i.dd, %bb.ab ]
  %i.cx = phi i64 [ %i.bf, %bb.v ], [ %.pre45.i.i, %bb.ab ] ; 2 uses
  %i.cy = phi i64 [ %i.be, %bb.v ], [ %.pre44.i.i, %bb.ab ] ; 4 uses
  %.sroa.11.i.sroa.0.0.copyload = phi i64 [ %i.cs, %bb.v ], [ %.pre.i.i, %bb.ab ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1477
  store i64 %.sroa.11.i.sroa.0.0.copyload, ptr %i.d, align 8, !noalias !1477
  store i64 %i.cy, ptr %i.ar, align 8, !noalias !1477
  %.not.i33.i.i = icmp ugt i64 %i.cy, %i.cx
  %i.cz = add i64 %i.cy, 1
  %.not8.i.i.i = icmp ugt i64 %.sroa.11.i.sroa.0.0.copyload, %i.cz
  %or.cond.i.i.i = or i1 %.not.i33.i.i, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.af, !prof !1478

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1477
  store i64 %i.cx, ptr %i.c, align 8, !noalias !1477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1477
  store ptr %i.d, ptr %i.b, align 8, !noalias !1477
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs2_NtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB5_4SpanNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1477
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.da, align 8, !noalias !1477
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !1477
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #29
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1475
  invoke void @_RINvMNtNtCsdMFwaIVqAhb_14regex_automata4util4iterNtB3_8Searcher30handle_overlapping_empty_matchNCNvXs6_NtNtB7_4meta5regexNtB1D_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0EB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.08.sroa.2.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.y
  %i.db = load i64, ptr %i.g, align 8, !range !20, !noalias !1475, !noundef !4 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 2
  %i.dd = load ptr, ptr %i.aq, align 8, !noalias !1475 ; 2 uses
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1475
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.527.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1475
  %i.de = trunc nuw i64 %i.db to i1
  br i1 %i.de, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.417.i.i, i64 16, i1 false), !noalias !1475
  %.pre.i.i = load i64, ptr %.sroa.4.8..sroa_idx.i.i, align 8, !noalias !1475
  %.pre44.i.i = load i64, ptr %.sroa.08.sroa.9.0..sroa_idx, align 8, !alias.scope !1479, !noalias !1480
  %.pre45.i.i = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !1481, !noalias !1480
  br label %bb.w

bb.ac:                                            ; preds = %bb.z, %bb.u
  %.sroa.7.2.i = phi ptr [ %i.dd, %bb.z ], [ %.sroa.6.0.copyload.i.i, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1463
  store ptr %.sroa.7.2.i, ptr %i.i, align 8, !noalias !1463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1463
  store ptr %i.i, ptr %i.h, align 8, !noalias !1463
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsl_NtNtCsdMFwaIVqAhb_14regex_automata4util6searchNtB5_10MatchErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1463
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #29
          to label %bb.ad unwind label %bb.ae, !noalias !1482

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          cleanup
  %.val.i = load ptr, ptr %i.i, align 8, !noalias !1463, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #28, !noalias !1482
  br label %.body

.loopexit:                                        ; preds = %_RNCNvXs6_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB7_11FindMatchesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Cs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.y, %bb.ar, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ae
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsdMFwaIVqAhb_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.l)
          to label %.body33 unwind label %bb.aw

bb.af:                                            ; preds = %bb.w
  store i64 %.sroa.11.i.sroa.0.0.copyload, ptr %.sroa.08.sroa.8.0..sroa_idx, align 8, !alias.scope !1481, !noalias !1480
  store i64 %i.cy, ptr %.sroa.08.sroa.9.0..sroa_idx, align 8, !alias.scope !1481, !noalias !1480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1477
  store i64 1, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8, !alias.scope !1479, !noalias !1480
  store i64 %.sroa.11.i.sroa.0.0.copyload, ptr %i.ap, align 8, !alias.scope !1479, !noalias !1480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  %i.dg = ptrtoint ptr %.sroa.6.0.copyload.i5.i to i64 ; 3 uses
  %.not18 = icmp eq i64 %.sroa.04.0, %i.dg
  %.pre78 = load i64, ptr %i.z, align 8, !noalias !4 ; 4 uses
  br i1 %.not18, label %bb.as, label %bb.aq

bb.ag:                                            ; preds = %bb.aa, %bb.n, %bb.o, %bb.p, %_RNvMs4_NtNtCsdMFwaIVqAhb_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i.i.i.i, %.noexc21, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.417.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.dh = load i64, ptr %i.l, align 8, !range !13, !alias.scope !1487, !noundef !4
  %i.di = load ptr, ptr %i.an, align 8, !alias.scope !1487, !noundef !4 ; 7 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  store i64 1, ptr %i.l, align 8, !alias.scope !1487
  store ptr inttoptr (i64 2 to ptr), ptr %i.an, align 8, !alias.scope !1487
  %i.dk = trunc nuw i64 %i.dh to i1
  br i1 %i.dk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1487
  store i64 %i.dj, ptr %i.a, align 8, !noalias !1487
  %i.dl = icmp eq ptr %i.di, inttoptr (i64 2 to ptr)
  br i1 %i.dl, label %.noexc4.i.i, label %bb.al, !prof !5

bb.ai:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !range !12, !alias.scope !1487, !noundef !4
  %i.do = trunc nuw i8 %i.dn to i1
end_hunk_3

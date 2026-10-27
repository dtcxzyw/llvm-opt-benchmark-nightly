Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvXs6_NtCs261H7cERR92_10serde_json5errorNtB6_5ErrorNtNtCs7PiwjADO7TO_10serde_core2de5Error6customNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit:bb.a
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3370
  store i64 0, ptr %i.d, align 8, !noalias !3370
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3370
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3370
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.f, align 8, !noalias !3370
  store ptr %i.d, ptr %i.c, align 8, !noalias !3370
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @368, ptr %i.g, align 8, !noalias !3370
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !3371, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.i, -1            ; 3 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load ptr, ptr %0, align 8, !alias.scope !3371 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3371
  %.sroa.3.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %i.n, i64 %i.k
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.l, ptr %0
  %i.o = invoke noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i unwind label %bb.b, !noalias !3372

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !21, !alias.scope !3375, !noalias !3370, !noundef !17 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.q, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !3375, !noalias !3370, !nonnull !17, !noundef !17
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !3376
  br label %.body

_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i: ; preds = %bb.a
  br i1 %i.o, label %bb.d, label %bb.f, !prof !23

bb.d:                                             ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @369, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #47
          to label %.noexc.i.i unwind label %bb.b, !noalias !3372

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.p, %bb.c ], [ %i.p, %bb.b ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #44
          to label %bb.k unwind label %bb.j

bb.f:                                             ; preds = %_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3370
  %i.s = invoke noundef nonnull align 8 ptr @_RNvNtCs261H7cERR92_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %.not.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.not.i.i.i.i.i = icmp eq ptr %i.l, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %bb.h
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !3378
  %.not.i.i.i.i1 = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i1, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3378
  %i.v = getelementptr i8, ptr %i.l, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !3378, !noundef !17 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %bb.i, !prof !16

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #43, !noalias !3378
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.t, ptr %i.x, align 8, !noalias !3378
  store i64 8, ptr %i.b, align 8, !noalias !3378
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.w, ptr %i.y, align 8, !noalias !3378
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !3378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3378
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.g, %bb.h, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  ret ptr %i.s

bb.j:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCs261H7cERR92_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3396)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !3396, !nonnull !17, !align !25, !noundef !17 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3398), !noalias !3399
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !3400, !noalias !3399, !noundef !17 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !3401, !noalias !3399 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3400, !noalias !3399, !nonnull !17, !noundef !17
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3402), !noalias !3399
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3403, !noundef !17
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !63

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !3404, !noalias !3399
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3405
  store i64 3, ptr %i.a, align 8, !noalias !3405
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !3399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3405
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3405
  store i64 6, ptr %i.b, align 8, !noalias !3405
  %i.o = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !3399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3405
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8, !alias.scope !3395
  store i8 -1, ptr %0, align 8, !alias.scope !3395
  br label %_RINvXs9_NtCs261H7cERR92_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9MapAccess15next_value_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !3406, !noalias !3399
  tail call fastcc void @_RINvXs5_NtCs261H7cERR92_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #48, !noalias !3396, !inline_history !3394
  br label %_RINvXs9_NtCs261H7cERR92_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9MapAccess15next_value_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit

_RINvXs9_NtCs261H7cERR92_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9MapAccess15next_value_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtCs261H7cERR92_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess12next_elementNtNtB8_5value5ValueECsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3433)
  %i.f = load ptr, ptr %1, align 8, !alias.scope !3433, !noalias !3432, !nonnull !17, !align !25, !noundef !17 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434), !noalias !3432
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !3435, !noalias !3436, !noundef !17 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.g, align 8, !alias.scope !3434, !noalias !3436 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %.loopexit22.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3435, !noalias !3436, !nonnull !17, !noundef !17 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.m = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437), !noalias !3432
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !3438, !noundef !17 ; 2 uses
  switch i8 %i.o, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %_RINvNvXs7_NtCs261H7cERR92_10serde_json2deINtB8_9SeqAccesspENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsc4241EHy6Do_9typst_kit.exit
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !3439, !noalias !3436
  %exitcond.not.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit22.i, label %bb.b

.loopexit22.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3436
  store i64 2, ptr %i.d, align 8, !noalias !3436
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3436
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !41, !alias.scope !3433, !noalias !3432, !noundef !17
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp eq i8 %i.o, 44
  br i1 %i.u, label %bb.g, label %bb.i, !prof !16

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.r, align 8, !alias.scope !3433, !noalias !3432
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.v = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !3440, !noalias !3436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441), !noalias !3432
  %i.w = icmp ult i64 %i.v, %i.i
  br i1 %i.w, label %.lr.ph.i7.i, label %.loopexit.i

.lr.ph.i7.i:                                      ; preds = %bb.g, %bb.h
  %i.x = phi i64 [ %i.aa, %bb.h ], [ %i.v, %bb.g ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !3442, !noundef !17
  switch i8 %i.z, label %.loopexit [
    i8 32, label %bb.h
    i8 10, label %bb.h
    i8 9, label %bb.h
    i8 13, label %bb.h
    i8 93, label %bb.j
  ], !prof !3443

bb.h:                                             ; preds = %.lr.ph.i7.i, %.lr.ph.i7.i, %.lr.ph.i7.i, %.lr.ph.i7.i
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.g, align 8, !alias.scope !3444, !noalias !3436
  %exitcond.not.i8.i = icmp eq i64 %i.aa, %i.i
  br i1 %exitcond.not.i8.i, label %.loopexit.i, label %.lr.ph.i7.i

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3436
  store i64 7, ptr %i.a, align 8, !noalias !3436
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3436
  br label %bb.k

.loopexit.i:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3436
  store i64 5, ptr %i.b, align 8, !noalias !3436
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3436
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3436
  store i64 21, ptr %i.c, align 8, !noalias !3436
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs261H7cERR92_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3436
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %bb.j, %bb.i, %.loopexit22.i
  %.sroa.101.0.ph = phi ptr [ %i.q, %.loopexit22.i ], [ %i.ab, %bb.i ], [ %i.ad, %bb.j ], [ %i.ac, %.loopexit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.101.0.ph, ptr %i.ae, align 8, !alias.scope !3432
  store i8 -2, ptr %0, align 8, !alias.scope !3432
  br label %_RINvXs7_NtCs261H7cERR92_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit

_RINvNvXs7_NtCs261H7cERR92_10serde_json2deINtB8_9SeqAccesspENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.b
  store i8 -1, ptr %0, align 8, !alias.scope !3432
  br label %_RINvXs7_NtCs261H7cERR92_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit

.loopexit:                                        ; preds = %.lr.ph.i7.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3445
  call fastcc void @_RINvXs5_NtCs261H7cERR92_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.f) #48, !noalias !3445, !inline_history !3431
  %i.af = load i8, ptr %i.e, align 8, !range !42, !noalias !3445, !noundef !17
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.l, label %2

bb.l:                                             ; preds = %.loopexit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !3445, !nonnull !17, !align !25, !noundef !17
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !alias.scope !3432
  store i8 -2, ptr %0, align 8, !alias.scope !3432
  br label %bb.m

2:                                                ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3446
  br label %bb.m

bb.m:                                             ; preds = %2, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3445
  br label %_RINvXs7_NtCs261H7cERR92_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit

_RINvXs7_NtCs261H7cERR92_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seedINtNtCs3oUPovFnLWP_4core6marker11PhantomDataNtNtB8_5value5ValueEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.m, %bb.k, %_RINvNvXs7_NtCs261H7cERR92_10serde_json2deINtB8_9SeqAccesspENtNtCs7PiwjADO7TO_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsc4241EHy6Do_9typst_kit.exit
  ret void
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nofree captures(none) %.0.val) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #43
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3461)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !3462, !nonnull !17, !noundef !17
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !3462
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !3466, !nonnull !17, !noundef !17
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !3466
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nofree captures(none) %.0.val) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #43
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !3482, !nonnull !17, !noundef !17
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !3482
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !3486, !nonnull !17, !noundef !17
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !3486
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nofree captures(none) %.0.val) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChanneluE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #43
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3501)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !3502, !nonnull !17, !noundef !17
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !3502
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RNCNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtBa_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerE00Csc4241EHy6Do_9typst_kit:bb.a
  %i.mm = icmp eq i64 %i.ml, 1
  br i1 %i.mm, label %bb.cn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i: ; preds = %bb.cn, %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4120
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i

bb.co:                                            ; preds = %bb.ck
  %i.mn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mo = atomicrmw add ptr %i.lx, i64 -1 release, align 8, !noalias !4133
  %i.mp = icmp eq i64 %i.mo, 1
  br i1 %i.mp, label %bb.cp, label %.body34

bb.cp:                                            ; preds = %bb.co
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %.body34 unwind label %bb.cj, !noalias !4120

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %.noexc42
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChanneluE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.g) #48
          to label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i20.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4120
  br label %bb.af

.split.i22.i:                                     ; preds = %.noexc41
  %i.mq = extractvalue { i64, i32 } %i.lq, 1      ; 2 uses
  %i.mr = icmp ult i32 %i.mq, 1000000000
  call void @llvm.assume(i1 %i.mr)
  %.not25.i.i = icmp samesign ult i32 %i.mq, %i.cn
  br i1 %.not25.i.i, label %bb.cd, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

bb.cq:                                            ; preds = %.noexc41
  %.not24.i.i = icmp slt i64 %i.lr, %i.lp
  br i1 %.not24.i.i, label %bb.cd, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.cq, %.split.i22.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #47
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge: ; preds = %bb.ca, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.r

bb.cr:                                            ; preds = %bb.u
  %i.ms = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http7request7RequestECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(176) %i.n) #44
          to label %.body34 unwind label %bb.p

.thread:                                          ; preds = %bb.j, %bb.z, %bb.cs
  %.pn.pn.pn.pn64 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.z ], [ %i.ae, %bb.cs ], [ %i.ag, %bb.j ]
  resume { ptr, i32 } %.pn.pn.pn.pn64

bb.cs:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.s) #44
          to label %.thread unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvMNtCsc4241EHy6Do_9typst_kit6serverNtB4_10HttpServer10set_bundle0B6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [96 x i8], align 8                ; 16 uses
  %i.g = alloca [16 x i8], align 8                ; 13 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 13 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4282
  call void @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path10components(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !noalias !4283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4282
  call void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g), !noalias !4285
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 89 ; 2 uses
  %.promoted69.i.i = load i8, ptr %i.q, align 1, !alias.scope !4286, !noalias !4282 ; 2 uses
  %.promoted70.i.i = load i64, ptr %i.p, align 8, !noalias !4282 ; 4 uses
  %.promoted76.i.i = load i64, ptr %i.o, align 8, !noalias !4282 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.val.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !noalias !4282, !nonnull !17 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.val1.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !4282 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load i64, ptr %i.t, align 8, !noalias !4282 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.u, %.val1.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.x = load i8, ptr %i.w, align 8, !noalias !4282 ; 2 uses
  %i.y = zext nneg i8 %i.x to i64                 ; 4 uses
  %i.z = icmp ult i8 %i.x, 5
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.ad = load i8, ptr %i.ac, align 8, !range !41, !noalias !4282
  %i.ae = trunc nuw i8 %i.ad to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.pre2.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !noalias !4282 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val.i.i.i = load i64, ptr %i.af, align 8, !noalias !4282
  %i.ag = icmp eq i64 %.val.i.i.i, 0              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 9 ; 2 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not.i.i.i.i.i.fr.i.i = freeze i1 %.not.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.fr.i.i, label %.split.us.i.i, label %.split.i.preheader.i

.split.i.preheader.i:                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.promoted81.i.i = load i64, ptr %i.aj, align 8, !noalias !4282
  br label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  %i.ak = trunc nuw i8 %.promoted69.i.i to i1
  br i1 %i.ak, label %.loopexit186, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i: ; preds = %.split.us.i.i
  %.not.i3.i.i.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.promoted70.i.i
  %or.cond.not.i.i.i.i.i.us.i.i = select i1 %i.ae, i1 true, i1 %.not.i3.i.i.i.i.us.i.i
  %i.al = sub nuw i64 %.pre2.i.i.i.i.i.i.i, %.promoted70.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.promoted70.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  br i1 %or.cond.not.i.i.i.i.i.us.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i, label %.loopexit186

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i
  switch i64 %i.al, label %bb.e [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %bb.b
  ]

bb.b:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %i.am = load i16, ptr %.sroa.0.1.i.i.i.i.us.i.i, align 1
  %i.an = icmp ne i16 %i.am, 11822
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread.us.us.i.i, label %bb.e

bb.c:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %lhsc1.i.i.us.us.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.us.i.i, align 1, !noalias !4292
  %i.aq = icmp eq i8 %lhsc1.i.i.us.us.i.i, 46
  br i1 %i.aq, label %.thread.us.us.i.i, label %bb.e

bb.d:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  %i.ar = icmp ne i64 %.promoted76.i.i, 0
  %or.cond.i.i.us.us.i.i = select i1 %i.ar, i1 true, i1 %i.ag
  %spec.select.i.us.us.i.i = zext i1 %or.cond.i.i.us.us.i.i to i64
  br label %.thread.us.us.i.i

bb.e:                                             ; preds = %bb.c, %bb.b, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4293
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i, i64 noundef %i.al)
          to label %.noexc24.us.us.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

.noexc24.us.us.i.i:                               ; preds = %bb.e
  %i.as = load i64, ptr %i.d, align 8, !range !19, !noalias !4293, !noundef !17
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %.split95.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc24.us.us.i.i
  %i.au = load ptr, ptr %i.ah, align 8, !noalias !4293, !nonnull !17, !noundef !17
  %i.av = load i64, ptr %i.ai, align 8, !noalias !4293, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4293
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.us.us.i.i = trunc i64 %i.aw to i8
  %.sroa.829.1.extract.shift.us.us.i.i = lshr i64 %i.aw, 8
  %.sroa.829.1.extract.trunc.us.us.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.us.us.i.i to i56
  br label %.thread.us.us.i.i

.thread.us.us.i.i:                                ; preds = %bb.f, %bb.d, %bb.c, %bb.b
  %.sroa.829.1.extract.trunc46.us.us.i.i = phi i56 [ %.sroa.829.1.extract.trunc.us.us.i.i, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ]
  %.sroa.829.0.extract.trunc45.us.us.i.i = phi i8 [ %.sroa.829.0.extract.trunc.us.us.i.i, %bb.f ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ]
  %.sroa.0.0.ph44.us.us.i.i = phi i64 [ 3, %bb.f ], [ 1, %bb.c ], [ %spec.select.i.us.us.i.i, %bb.d ], [ 2, %bb.b ]
  %.sroa.11.0.ph43.us.us.i.i = phi i64 [ %i.av, %bb.f ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %bb.b ]
  store i64 %.sroa.0.0.ph44.us.us.i.i, ptr %i.e, align 8, !noalias !4282
  store i8 %.sroa.829.0.extract.trunc45.us.us.i.i, ptr %.sroa.610.0..sroa_idx11.i.i, align 8, !noalias !4282
  store i56 %.sroa.829.1.extract.trunc46.us.us.i.i, ptr %.sroa.8.0..sroa_idx13.i.i, align 1, !noalias !4282
  store i64 %.sroa.11.0.ph43.us.us.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i, align 8, !noalias !4282
  %i.ax = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

bb.g:                                             ; preds = %.thread.us.us.i.i
  %.not20.us.us.i.i = icmp eq i8 %i.ax, 2
  br i1 %.not20.us.us.i.i, label %.loopexit186, label %.split100.i.i

.split.i.i:                                       ; preds = %bb.u, %.split.i.preheader.i
  %.lcssa6884.i.i = phi i64 [ %.lcssa6882.i.i, %bb.u ], [ %.promoted81.i.i, %.split.i.preheader.i ] ; 3 uses
  %i.ay = phi i64 [ %i.bw, %bb.u ], [ %.promoted76.i.i, %.split.i.preheader.i ] ; 2 uses
  %.lcssa6072.i.i = phi i64 [ %.lcssa6071.i.i, %bb.u ], [ %.promoted70.i.i, %.split.i.preheader.i ] ; 4 uses
  %i.az = phi i8 [ %i.bv, %bb.u ], [ %.promoted69.i.i, %.split.i.preheader.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  call void @llvm.experimental.noalias.scope.decl(metadata !4289)
  call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.loopexit186, label %bb.h

bb.h:                                             ; preds = %.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  %i.bb = icmp ult i64 %i.u, %.lcssa6884.i.i
  br i1 %i.bb, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i:             ; preds = %bb.h
  call void @llvm.assume(i1 %i.z)
  %.pre.i.i.i.i.i.i.i = load i8, ptr %i.ab, align 1, !alias.scope !4294, !noalias !4282 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.k, %.lr.ph.split.preheader.i.i.i.i.i.i.i
  %i.bc = phi i64 [ %i.bq, %bb.k ], [ %.lcssa6884.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i ] ; 4 uses
  %i.bd = sub nuw i64 %i.u, %i.bc                 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %i.bf = icmp samesign ult i64 %i.bd, 16
  br i1 %i.bf, label %.preheader.i.i.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.bg = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef range(i64 0, -9223372036854775808) %i.bd)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.i
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  %i.bj = trunc nuw i64 %i.bh to i1
  br i1 %i.bj, label %.loopexit.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.j
  %.sroa.04.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.04.011.i.i.i.i.i.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !4295, !noalias !4296, !noundef !17
  %i.bm = icmp eq i8 %i.bl, %.pre.i.i.i.i.i.i.i
  br i1 %i.bm, label %.loopexit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bn, %i.bd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.noexc.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i, %i.bd
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %i.bc, 1
  %i.bq = add i64 %i.bp, %.sroa.5.0.i.i.i.i.i.i.i.i ; 8 uses
  %.not11.i.i.i.i.i.i.i = icmp ult i64 %i.bq, %i.y
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.bq, %.val1.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %.loopexit.i.i.i.i.i.i.i
  %i.br = icmp ult i64 %i.u, %i.bq
  br i1 %i.br, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.l:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.bs = sub nuw i64 %i.bq, %i.y                 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.bs
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bt, ptr nonnull %i.v, i64 %i.y), !noalias !4297
  %i.bu = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i, label %bb.k

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.k, %.noexc.i.i, %.preheader.i.i.i.i.i.i.i.i, %bb.j, %bb.h
  %.lcssa6883.i.i = phi i64 [ %i.u, %bb.j ], [ %.lcssa6884.i.i, %bb.h ], [ %i.u, %.noexc.i.i ], [ %i.u, %.preheader.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.k ]
  store i8 1, ptr %i.q, align 1, !alias.scope !4298, !noalias !4282
  %.not.i3.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i, %.lcssa6072.i.i
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.ae, i1 true, i1 %.not.i3.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i, label %.loopexit186

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i: ; preds = %bb.l, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %.lcssa6882.i.i = phi i64 [ %.lcssa6883.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bq, %bb.l ]
  %.lcssa6071.i.i = phi i64 [ %.lcssa6072.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bq, %bb.l ]
  %i.bv = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ 0, %bb.l ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i ], [ %i.bs, %bb.l ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa6072.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.lcssa6072.i.i ; 3 uses
  %i.bw = add i64 %i.ay, 1
  switch i64 %.sroa.4.1.i.i.i.i.i.i, label %bb.p [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

bb.m:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %i.bx = icmp ne i64 %i.ay, 0
  %or.cond.i.i.i.i = select i1 %i.bx, i1 true, i1 %i.ag
  %spec.select.i.i.i = zext i1 %or.cond.i.i.i.i to i64
  br label %.thread.i.i

bb.n:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %lhsc1.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i.i, align 1, !noalias !4292
  %i.by = icmp eq i8 %lhsc1.i.i.i.i, 46
  br i1 %i.by, label %.thread.i.i, label %bb.p

bb.o:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  %i.bz = load i16, ptr %.sroa.0.1.i.i.i.i.i.i, align 1
  %i.ca = icmp ne i16 %i.bz, 11822
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.thread.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4293
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i)
          to label %.noexc24.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

.noexc24.i.i:                                     ; preds = %bb.p
  %i.cd = load i64, ptr %i.d, align 8, !range !19, !noalias !4293, !noundef !17
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %.split95.i.i, label %bb.s

.split95.i.i:                                     ; preds = %.noexc24.i.i, %.noexc24.us.us.i.i
  %i.cf = load i64, ptr %i.ai, align 8, !noalias !4293, !noundef !17
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r, !prof !16

bb.q:                                             ; preds = %.split95.i.i
  %i.ch = load ptr, ptr %i.ah, align 8, !noalias !4293, !nonnull !17, !noundef !17
  %lhsc.i.i.i.i = load i8, ptr %i.ch, align 1, !noalias !4292
  %i.ci = icmp eq i8 %lhsc.i.i.i.i, 92
  br i1 %i.ci, label %bb.t, label %bb.r, !prof !16

bb.r:                                             ; preds = %bb.q, %.split95.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #47
          to label %.noexc25.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

.noexc25.i.i:                                     ; preds = %bb.r
  unreachable

.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %.thread.i.i, %bb.p, %bb.r, %.thread.us.us.i.i, %bb.e
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  %.val22.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4299, !noalias !4282
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %.val23.i.i = load i8, ptr %i.cj, align 1, !alias.scope !4299, !noalias !4282, !noundef !17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsECsc4241EHy6Do_9typst_kit(ptr %.val22.i.i, i8 %.val23.i.i) #44
          to label %common.resume unwind label %bb.x, !noalias !4285

bb.s:                                             ; preds = %.noexc24.i.i
  %i.ck = load ptr, ptr %i.ah, align 8, !noalias !4293, !nonnull !17, !noundef !17
  %i.cl = load i64, ptr %i.ai, align 8, !noalias !4293, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4293
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.i.i = trunc i64 %i.cm to i8
  %.sroa.829.1.extract.shift.i.i = lshr i64 %i.cm, 8
  %.sroa.829.1.extract.trunc.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.i.i to i56
  br label %.thread.i.i

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4293
  br label %.split100.i.i

.thread.i.i:                                      ; preds = %bb.s, %bb.o, %bb.n, %bb.m
  %.sroa.829.1.extract.trunc46.i.i = phi i56 [ %.sroa.829.1.extract.trunc.i.i, %bb.s ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ]
  %.sroa.829.0.extract.trunc45.i.i = phi i8 [ %.sroa.829.0.extract.trunc.i.i, %bb.s ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.o ]
  %.sroa.0.0.ph44.i.i = phi i64 [ 3, %bb.s ], [ 1, %bb.n ], [ %spec.select.i.i.i, %bb.m ], [ 2, %bb.o ]
  %.sroa.11.0.ph43.i.i = phi i64 [ %i.cl, %bb.s ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.o ]
  store i64 %.sroa.0.0.ph44.i.i, ptr %i.e, align 8, !noalias !4282
  store i8 %.sroa.829.0.extract.trunc45.i.i, ptr %.sroa.610.0..sroa_idx11.i.i, align 8, !noalias !4282
  store i56 %.sroa.829.1.extract.trunc46.i.i, ptr %.sroa.8.0..sroa_idx13.i.i, align 1, !noalias !4282
  store i64 %.sroa.11.0.ph43.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i, align 8, !noalias !4282
  %i.cn = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4285

bb.u:                                             ; preds = %.thread.i.i
  %.not20.i.i = icmp eq i8 %i.cn, 2
  br i1 %.not20.i.i, label %.split.i.i, label %.split100.i.i

.split100.i.i:                                    ; preds = %bb.u, %bb.t, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4282
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4299, !noalias !4282 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %.val21.i.i = load i8, ptr %i.co, align 1, !alias.scope !4299, !noalias !4282, !noundef !17
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val21.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %bb.y

bb.v:                                             ; preds = %.split100.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i26.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.cp = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i26.i.i, label %bb.y, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !noalias !4300
  %.not.i.i.i.i.i27.i.i = icmp eq i64 %i.cq, 1
  br i1 %.not.i.i.i.i.i27.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i, label %bb.y

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4301
  %i.cr = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !noalias !4300, !noundef !17 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i, label %bb.w, !prof !16

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #43, !noalias !4300
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  %i.cs = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cp, ptr %i.ct, align 8, !noalias !4301
  store i64 8, ptr %i.c, align 8, !noalias !4301
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !noalias !4301
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !4300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4301
  br label %bb.y

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !4285
  unreachable

common.resume:                                    ; preds = %bb.bq, %bb.ab, %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp341, %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn, %bb.ab ], [ %lpad.thr_comm, %bb.bq ]
  resume { ptr, i32 } %common.resume.op

.loopexit186:                                     ; preds = %.split.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %.split.us.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.us.lr.ph.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4282
  %.sroa.8.i.sroa.3.6.copyload = load ptr, ptr %i.g, align 8, !noalias !4302 ; 2 uses
  %.sroa.8.i.sroa.5.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.sroa.5.6..sroa_idx, i64 7, i1 false)
  %.sroa.8.i.sroa.6.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %.sroa.8.i.sroa.6.6.copyload = load i8, ptr %.sroa.8.i.sroa.6.6..sroa_idx, align 1, !noalias !4302 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4284
  store ptr %.sroa.8.i.sroa.3.6.copyload, ptr %i.n, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  store i8 %.sroa.8.i.sroa.6.6.copyload, ptr %.sroa.5135.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath4join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @129, i64 noundef 10)
          to label %bb.z unwind label %bb.bq

bb.y:                                             ; preds = %.split100.i.i, %bb.v, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4284
  store i64 -2, ptr %0, align 8
  br label %bb.an

bb.z:                                             ; preds = %.loopexit186
  call void @llvm.experimental.noalias.scope.decl(metadata !4303)
  %i.cw = load i8, ptr %i.m, align 8, !range !41, !alias.scope !4303, !noundef !17
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.aa, label %.lr.ph, !prof !23

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4304
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !41, !alias.scope !4303, !noundef !17
  store i8 %i.cz, ptr %i.h, align 1, !noalias !4304
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @195, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #47
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.aa
  unreachable

.lr.ph:                                           ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.da, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %.sroa.526.0..sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !4305, !noundef !17 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !17 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 15 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 39
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !nonnull !17 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.ac

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.iy, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathKj2_EECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #44
          to label %common.resume unwind label %bb.bp

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ds, ptr %i.k, align 8
  br label %bb.ab

.loopexit.split-lp:                               ; preds = %.invoke, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i117
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ac:                                            ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathECsc4241EHy6Do_9typst_kit.exit
  %i.dr = phi i64 [ 0, %.lr.ph ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathECsc4241EHy6Do_9typst_kit.exit ] ; 2 uses
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 5 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.627.0..sroa_idx, i64 %i.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4306)
  call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  call void @llvm.experimental.noalias.scope.decl(metadata !4308)
  call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  switch i64 %i.dd, label %bb.ae [
    i64 0, label %.thread-pre-split_crit_edge
    i64 1, label %bb.ad
  ]

.thread-pre-split_crit_edge:                      ; preds = %bb.ac
  %.val39.pr.pre = load ptr, ptr %i.j, align 8, !alias.scope !38
  %.val40.pre.pre = load i8, ptr %i.dg, align 1, !alias.scope !38
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  call void @llvm.experimental.noalias.scope.decl(metadata !4314)
  call void @llvm.experimental.noalias.scope.decl(metadata !4315)
  %i.du = load i8, ptr %i.dg, align 1, !alias.scope !4316, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp sgt i8 %i.du, -1     ; 2 uses
  %i.dv = and i8 %i.du, 127
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = load i64, ptr %i.dh, align 8, !alias.scope !4316 ; 3 uses
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i51, i64 %i.dx, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.di, align 1, !alias.scope !4317, !noalias !4318, !noundef !17 ; 2 uses
  %.not.i1.i.i.i.i.i = icmp sgt i8 %i.dy, -1      ; 2 uses
  %i.dz = and i8 %i.dy, 127
  %i.ea = zext nneg i8 %i.dz to i64
  %i.eb = load i64, ptr %i.dj, align 8, !alias.scope !4317, !noalias !4318
  %.sroa.3.0.i2.i.i.i.i.i = select i1 %.not.i1.i.i.i.i.i, i64 %i.eb, i64 %i.ea
  %i.ec = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, %.sroa.3.0.i2.i.i.i.i.i
  %i.ed = lshr i64 %i.dx, 56
  %i.ee = trunc nuw i64 %i.ed to i8               ; 3 uses
  %.val39.pr.pre237 = load ptr, ptr %i.j, align 8 ; 4 uses
  br i1 %i.ec, label %_RINvMs3_NtCsjFU9swAW47b_8indexmap3mapINtB6_8IndexMapNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12get_index_ofBO_ECsc4241EHy6Do_9typst_kit.exit.i, label %thread-pre-split

bb.ae:                                            ; preds = %bb.ac
  %i.ef = load i8, ptr %i.dg, align 1, !alias.scope !4319, !noalias !4320, !noundef !17 ; 2 uses
  %.not.i.i.i.i.i.i.i52 = icmp sgt i8 %i.ef, -1   ; 2 uses
  %i.eg = and i8 %i.ef, 127
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = load ptr, ptr %i.j, align 8, !alias.scope !4319, !noalias !4320 ; 4 uses
end_hunk_1

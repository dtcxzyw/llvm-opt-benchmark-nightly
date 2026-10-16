Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_realize-4a354b9ff5239a8d.typst_realize.d3c69a4675098945-cgu.0?download=true
inline.NumInlined: 1838
inline.NumDeleted: 1082
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECsibhcYuwTAtB_13typst_realize:bb.a
  %i.d = tail call noundef align 16 dereferenceable_or_null(128) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 128, i64 noundef range(i64 8, 17) 16) #29, !noalias !538 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 128) #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtBG_12SequenceElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %i.a) #31
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations7content1__NtB9_12SequenceElemNtNtB9_7element13NativeElement4ELEM6VTABLE, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.i, align 8
  ret void

.body:                                            ; preds = %bb.g, %bb.d
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body17

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtB9_4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 12 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.sroa.518.0.copyload = load i8, ptr %.sroa.518.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs1_NtCs6xpQEr8gLsQ_11typst_utils6bitsetNtB5_11SmallBitSet3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i128 0, ptr %i.a, align 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.68.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i128 0, ptr %.sroa.8.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 1, ptr %.sroa.9.0..sroa_idx, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %.sroa.0.0.copyload, ptr %i.c, align 16
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.516.0..sroa_idx17, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.516.0..sroa_idx, i64 7, i1 false)
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 111
  store i8 %.sroa.518.0.copyload, ptr %.sroa.518.0..sroa_idx19, align 1
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !541
  %i.d = tail call noundef align 16 dereferenceable_or_null(112) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 112, i64 noundef range(i64 8, 17) 16) #29, !noalias !541 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 112) #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtBK_4text8TextElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.a) #31
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.d, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.i, align 8
  ret void

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body23 = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body23

bb.g:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr %.sroa.0.0.copyload, i8 %.sroa.518.0.copyload) #31
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i64 noundef range(i64 1, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %1)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.b = extractvalue { i64, i64 } %i.a, 1
  %i.c = extractvalue { i64, i64 } %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.d, align 8
  store i64 %i.c, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.j, align 8
  ret void

bb.c:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %2) #31
          to label %bb.d unwind label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.d, align 8, !alias.scope !20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 55
  %.val1 = load i8, ptr %i.e, align 1, !alias.scope !20, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.f = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !544
  %.not.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !544
  %i.g = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !544, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !544
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.h = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !noalias !544
  store i64 8, ptr %i.a, align 8, !noalias !544
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8, !noalias !544
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !544
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !575, !noundef !11 ; 2 uses
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.r, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %.not.i = icmp eq i8 %i.f, 2
  br i1 %.not.i, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !578, !nonnull !11, !noundef !11 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !578 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.i = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !578
  %.not.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !578
  %i.j = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !578, !noundef !11 ; 2 uses
  %narrow.i.not.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i.i.i.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, !prof !12

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i.i unwind label %bb.m, !noalias !578

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.k = mul nuw nsw i64 %.val.i.i.i.i.i, 24
  %i.l = add nuw nsw i64 %i.k, 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.m, align 8, !noalias !578
  store i64 8, ptr %i.d, align 8, !noalias !578
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.l, ptr %i.n, align 8, !noalias !578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.o = icmp eq i64 %.val1.i.i, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.012.i.i.i.i.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.0.012.i.i.i.i.i, 1 ; 4 uses
  %.val8.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !580, !noalias !578 ; 4 uses
  %i.t = getelementptr i8, ptr %i.r, i64 15
  %.val9.i.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !580, !noalias !578, !noundef !11
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.u = getelementptr inbounds i8, ptr %.val8.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %2 = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !581
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !581
  %i.v = getelementptr i8, ptr %.val8.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !581, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g, !prof !21

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i, !noalias !582

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.u, ptr %i.p, align 8, !noalias !581
  store i64 8, ptr %i.c, align 8, !noalias !581
  store i64 %i.w, ptr %i.q, align 8, !noalias !581
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !582

.noexc10.i.i.i.i.i:                               ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !581
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %.noexc10.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.e
  %i.x = icmp eq i64 %i.s, %.val1.i.i
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.e

.loopexit.i.i.i.i.i:                              ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i.i.i.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %lpad.phi.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i ]
  %i.y = icmp eq i64 %i.s, %.val1.i.i
  br i1 %i.y, label %.body.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.1.i4.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i4.i.i.i.i ; 2 uses
  %i.ac = add i64 %.sroa.0.1.i4.i.i.i.i, 1        ; 2 uses
  %.val.i10.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !580, !noalias !578 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 15
  %.val7.i.i.i.i.i = load i8, ptr %i.ad, align 1, !alias.scope !580, !noalias !578, !noundef !11
  %.not.i.i.i.i.i.i.i.i = icmp sgt i8 %.val7.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i.i.i.i) ], !noalias !579
  %.not.i.i.i.i.i.i11.i.i.i.i = icmp eq ptr %.val.i10.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.ae = getelementptr inbounds i8, ptr %.val.i10.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  %3 = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !583
  %.not.i.i.i.i.i12.i.i.i.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i.i12.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i
  fence acquire, !noalias !579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !583
  %i.af = getelementptr i8, ptr %.val.i10.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !583, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !578

.noexc.i.i.i.i:                                   ; preds = %bb.k
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i
  %i.ag = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i.i, 16
  store ptr %i.ae, ptr %i.z, align 8, !noalias !583
  store i64 8, ptr %i.b, align 8, !noalias !583
  store i64 %i.ag, ptr %i.aa, align 8, !noalias !583
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc13.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !578

.noexc13.i.i.i.i:                                 ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !583
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %.noexc13.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i, %bb.j, %bb.i
  %i.ah = icmp eq i64 %i.ac, %.val1.i.i
  br i1 %i.ah, label %.body.i.i.i.i, label %bb.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i.i.i, %bb.k
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !582
  unreachable

.body.i.i.i.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.h
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body.i.i unwind label %bb.l, !noalias !578

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc2.i.i unwind label %bb.m, !noalias !578

.noexc2.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !578
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i

bb.l:                                             ; preds = %.body.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !578
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.m, %.body.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %lpad.phi.i.i.i.i.i, %.body.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ak) #31
          to label %bb.q unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.noexc2.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !584)
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !585 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 31
  %.val1.i.i.i = load i8, ptr %i.am, align 1, !alias.scope !585, !noundef !11
  %.not.i.i.i3.i.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i3.i.i, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECsibhcYuwTAtB_13typst_realize.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.an = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.n
  %4 = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !585
  %.not.i.i.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !585
  %i.ao = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !585, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.o, !prof !21

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !585
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.ap = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.an, ptr %i.aq, align 8, !noalias !585
  store i64 8, ptr %i.a, align 8, !noalias !585
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !noalias !585
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !585
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %.body.i.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !578
  unreachable

bb.q:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  %i.at = load i64, ptr %0, align 8, !range !17, !alias.scope !588, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  switch i64 %i.at, label %bb.s [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.u
    i64 3, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !591, !nonnull !11, !noundef !11
  %5 = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !591
  %i.aw = icmp eq i64 %5, 1
  br i1 %i.aw, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.u:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.ax = load ptr, ptr %i.au, align 8, !alias.scope !594, !nonnull !11, !noundef !11
  %6 = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !594
  %i.ay = icmp eq i64 %6, 1
  br i1 %i.ay, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.az = load ptr, ptr %i.au, align 8, !alias.scope !597, !nonnull !11, !noundef !11
  %7 = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !597
  %i.ba = icmp eq i64 %7, 1
  br i1 %i.ba, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingECsibhcYuwTAtB_13typst_realize.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 16, !range !22, !noundef !11
  switch i8 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i [
    i8 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBC_EECsibhcYuwTAtB_13typst_realize.exit
    i8 0, label %bb.b
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBC_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i8, ptr %i.d, align 16, !range !18, !alias.scope !604, !noundef !11
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit2.i

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit2.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i8, ptr %i.h, align 16, !range !18, !alias.scope !605, !noundef !11
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBC_EECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBC_EECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit2.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBC_INtNtBG_5boxed3BoxNtNtNtB1h_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 64 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 64 dereferenceable(64) %i.k) #31
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !608
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexIBw_INtNtB7_5boxed3BoxNtNtNtBO_4meta5regex5CacheEEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBG_3vec3VecINtNtBG_5boxed3BoxNtNtNtB1o_4meta5regex5CacheEEEEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model4list8ListItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model4list8ListItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.b
  %.val4 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model4list8ListItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model4list8ListItemEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model4list8ListItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model4list8ListItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize:bb.a

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5enum_8EnumItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5enum_8EnumItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5enum_8EnumItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5enum_8EnumItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.b
  %.val4 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5enum_8EnumItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5enum_8EnumItemEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5enum_8EnumItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5enum_8EnumItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5terms8TermItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5terms8TermItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.b
  %.val4 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5terms8TermItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model5terms8TermItemEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5terms8TermItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model5terms8TermItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1o_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val5
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val5
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val2, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.p = mul nuw i64 %.val, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.e
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !11 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !626, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !627
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !631, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !632
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !16, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %i.t = shl nuw i64 %.val2, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(1400) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #29
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 1400, i64 noundef 8) #29
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr %.16.val, i8 %.31.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.31.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.16.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.16.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.b
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !635
  %.not.i.i.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  %i.c = getelementptr i8, ptr %.16.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !635, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !635
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.d = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !635
  store i64 8, ptr %i.a, align 8, !noalias !635
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8, !noalias !635
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.e = load i64, ptr %0, align 8, !range !17, !alias.scope !648, !noundef !11 ; 2 uses
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 1)
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.i
    i64 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !650 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i = load i8, ptr %i.h, align 1, !alias.scope !650, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.i = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.c
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !650
  %.not.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !650
  %i.j = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !650, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !650
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.k = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.i, ptr %i.l, align 8, !noalias !650
  store i64 8, ptr %i.d, align 8, !noalias !650
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.m, align 8, !noalias !650
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !650
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.n = icmp eq i64 %i.e, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !653 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i = load i8, ptr %i.p, align 1, !alias.scope !653, !noundef !11
  %.not.i.i.i.i1.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i1.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.q = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.g
  %2 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !653
  %.not.i.i.i.i.i2.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i2.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !653
  %i.r = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !653, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.h, !prof !21

bb.h:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !653
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.s = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.q, ptr %i.t, align 8, !noalias !653
  store i64 8, ptr %i.c, align 8, !noalias !653
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.s, ptr %i.u, align 8, !noalias !653
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !653
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.val.i3.i = load ptr, ptr %i.v, align 8, !alias.scope !655 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i4.i = load i8, ptr %i.w, align 1, !alias.scope !655, !noundef !11
  %.not.i.i.i5.i = icmp sgt i8 %.val1.i4.i, -1
  br i1 %.not.i.i.i5.i, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i3.i) ]
  %.not.i.i.i.i.i6.i = icmp eq ptr %.val.i3.i, inttoptr (i64 16 to ptr)
  %i.x = getelementptr inbounds i8, ptr %.val.i3.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i6.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i: ; preds = %bb.j
  %3 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !655
  %.not.i.i.i.i8.i = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i8.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !655
  %i.y = getelementptr i8, ptr %.val.i3.i, i64 -8
  %.val.i.i.i.i.i10.i = load i64, ptr %i.y, align 8, !noalias !655, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i11.i = icmp ult i64 %.val.i.i.i.i.i10.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i11.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i, label %bb.k, !prof !21

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !655
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i9.i
  %i.z = add nuw nsw i64 %.val.i.i.i.i.i10.i, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.x, ptr %i.aa, align 8, !noalias !655
  store i64 8, ptr %i.b, align 8, !noalias !655
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !655
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !655
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.l:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %.val.i14.i = load ptr, ptr %i.ac, align 8, !alias.scope !657 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i15.i = load i8, ptr %i.ad, align 1, !alias.scope !657, !noundef !11
  %.not.i.i.i16.i = icmp sgt i8 %.val1.i15.i, -1
  br i1 %.not.i.i.i16.i, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i14.i) ]
  %.not.i.i.i.i.i17.i = icmp eq ptr %.val.i14.i, inttoptr (i64 16 to ptr)
  %i.ae = getelementptr inbounds i8, ptr %.val.i14.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i17.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i: ; preds = %bb.m
  %4 = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !657
  %.not.i.i.i.i19.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i19.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !657
  %i.af = getelementptr i8, ptr %.val.i14.i, i64 -8
  %.val.i.i.i.i.i21.i = load i64, ptr %i.af, align 8, !noalias !657, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i22.i = icmp ult i64 %.val.i.i.i.i.i21.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i22.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i, label %bb.n, !prof !21

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !657
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i20.i
  %i.ag = add nuw nsw i64 %.val.i.i.i.i.i21.i, 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !noalias !657
  store i64 8, ptr %i.a, align 8, !noalias !657
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !657
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !657
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.e, %bb.f, %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.i, %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i7.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i12.i, %bb.l, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i18.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i23.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.b = load i64, ptr %i.a, align 16, !range !23, !alias.scope !685, !noundef !11 ; 4 uses
  %i.c = icmp ne i64 %i.b, 4
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -3
  %i.e = icmp samesign ugt i64 %i.b, 2
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit [
    i64 0, label %bb.b
    i64 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !685 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.h, align 16, !alias.scope !685, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.i = load ptr, ptr %.val1.i, align 8, !invariant.load !11, !noalias !685 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !685
  invoke void %i.i(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e, !noalias !685

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !16, !invariant.load !11, !noalias !685 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !24, !invariant.load !11, !noalias !685
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !685
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #29, !noalias !685
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !16, !invariant.load !11, !noalias !685 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !24, !invariant.load !11, !noalias !685
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #29, !noalias !685
  br label %common.resume

common.resume:                                    ; preds = %bb.h, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.z, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load i64, ptr %i.u, align 16, !range !25, !alias.scope !686, !noundef !11
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.u)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge unwind label %bb.h, !inline_history !664

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 16, !range !26, !alias.scope !687
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge, %bb.f
  %i.x = phi i64 [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge ], [ %i.b, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  switch i64 %i.x, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.a) #31
          to label %common.resume unwind label %bb.r, !inline_history !667

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.y), !inline_history !668
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.aa = load i64, ptr %i.y, align 8, !range !17, !alias.scope !690, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  switch i64 %i.aa, label %bb.l [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.n
    i64 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ac = load ptr, ptr %i.ab, align 16, !alias.scope !693, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !693
  %i.ad = icmp eq i64 %1, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.ae = load ptr, ptr %i.ab, align 16, !alias.scope !696, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !696
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.ag = load ptr, ptr %i.ab, align 16, !alias.scope !699, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !699
  %i.ah = icmp eq i64 %3, 1
  br i1 %i.ah, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !667
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.j, %bb.i, %bb.k, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.e, align 8, !noundef !11 ; 2 uses
  %i.f = icmp ult i64 %.val.i.i, 576460752303423488
  %i.g = shl nuw i64 %.val.i.i, 5
  %i.h = or disjoint i64 %i.g, 16                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.j, align 8
  store i64 8, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.l = icmp eq i64 %.8.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %i.q = getelementptr i8, ptr %i.o, i64 16
  %.val8.i.i = load ptr, ptr %i.q, align 8, !alias.scope !709 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 31
  %.val9.i.i = load i8, ptr %i.r, align 1, !alias.scope !709, !noundef !11
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.s = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %1 = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !710
  %.not.i.i.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !710
  %i.t = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !710, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !708

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  %i.u = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.s, ptr %i.m, align 8, !noalias !710
  store i64 8, ptr %i.b, align 8, !noalias !710
  store i64 %i.u, ptr %i.n, align 8, !noalias !710
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !708

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !710
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.v = icmp eq i64 %i.p, %.8.val
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.c

.loopexit.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i:                           ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.w = icmp eq i64 %i.p, %.8.val
  br i1 %i.w, label %.body.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.p, %.lr.ph.i ], [ %i.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.aa = add i64 %.sroa.0.1.i4.i, 1              ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val.i10.i = load ptr, ptr %i.ab, align 8, !alias.scope !709 ; 4 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 31
  %.val7.i.i = load i8, ptr %i.ac, align 1, !alias.scope !709, !noundef !11
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !708
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.ad = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.h
  %2 = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !711
  %.not.i.i.i.i.i12.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire, !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !711
  %i.ae = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !711, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.i, !prof !21

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.af = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.ad, ptr %i.x, align 8, !noalias !711
  store i64 8, ptr %i.a, align 8, !noalias !711
  store i64 %i.af, ptr %i.y, align 8, !noalias !711
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !711
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.ag = icmp eq i64 %i.aa, %.8.val
  br i1 %i.ag, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !708
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %.body.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECsibhcYuwTAtB_13typst_realize.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.d = icmp ult i64 %.val.i.i, 576460752303423488
  %i.e = shl nuw i64 %.val.i.i, 5
  %i.f = or disjoint i64 %i.e, 16                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775799
  %narrow.i.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  store i64 8, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.i, align 8
  %i.j = icmp eq i64 %.8.val, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %.8.val
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, %bb.c
  %.sroa.0.0.i10.i2 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i10.i2, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.l)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph4
  %i.n = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.o = icmp eq i64 %i.n, %.8.val
  br i1 %i.o, label %.body.i, label %.lr.ph4

bb.e:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %.8.val
  br i1 %i.q, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i3 = phi i64 [ %i.n, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.r) #31
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !714
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %.body.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.p

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.d = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.e = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775784
  %narrow.i.i.i = and i1 %i.d, %i.f
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.g = add nuw nsw i64 %i.e, 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  store i64 8, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.i, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 128102389400760774
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, !prof !12

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.d = mul nuw nsw i64 %.val.i.i, 72
  %i.e = add nuw nsw i64 %i.d, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  %i.h = icmp eq i64 %.8.val, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %.8.val
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.k, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.k = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.j)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph3
  %i.l = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.m = icmp eq i64 %i.l, %.8.val
  br i1 %i.m, label %.body.i, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2 = phi i64 [ %i.l, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.p) #31
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !717
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.n

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !11
  %i.d = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i.i, i64 48) ; 2 uses
  %i.e = extractvalue { i64, i1 } %i.d, 1
  %i.f = extractvalue { i64, i1 } %i.d, 0         ; 2 uses
  %i.g = or disjoint i64 %i.f, 14
  %i.h = icmp ugt i64 %i.g, 9223372036854775797
  %narrow.i.not.i.i = or i1 %i.e, %i.h
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, !prof !12

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.i = add nuw nsw i64 %i.f, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  store i64 8, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.k, align 8
  %i.l = icmp eq i64 %.8.val, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.010.i.i ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !726, !noundef !11
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.p)
          to label %.body.i.i unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !727, !noundef !11
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.f, %bb.e
  %i.w = icmp eq i64 %i.n, %.8.val
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.x = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.y = icmp eq i64 %i.x, %.8.val
  br i1 %i.y, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.o, %bb.d ], [ %i.o, %bb.c ]
  %i.aa = icmp eq i64 %i.n, %.8.val
  br i1 %i.aa, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i22 = phi i64 [ %i.x, %bb.h ], [ %i.n, %.body.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i22
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ab) #31
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %.body.i
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECsibhcYuwTAtB_13typst_realize.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.a
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %0, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.d = add nuw nsw i64 %.val.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !18, !alias.scope !730, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !730, !nonnull !11 ; 6 uses
  %.not.i = icmp ne ptr %i.e, inttoptr (i64 16 to ptr) ; 2 uses
  %or.cond.not.i = select i1 %i.d, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !730
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !730, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !730, !noundef !11
  %i.l = sub i64 %i.k, %i.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef %i.l)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize(ptr nonnull %i.e, i64 0) #31
          to label %common.resume unwind label %bb.h

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  br i1 %.not.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i_crit_edge, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i_crit_edge: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit
  %.val16.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.pre = load i64, ptr %.val16.in.phi.trans.insert, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i_crit_edge, %bb.b
  %.val16 = phi i64 [ %.val16.pre, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i_crit_edge ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %1 = atomicrmw sub ptr %i.n, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.e, i64 -8
  %.val.i.i.i = load i64, ptr %i.o, align 8, !noundef !11 ; 2 uses
  %i.p = icmp ult i64 %.val.i.i.i, 1152921504606846976
  %i.q = shl i64 %.val.i.i.i, 4                   ; 2 uses
  %i.r = icmp ult i64 %i.q, 9223372036854775784
  %narrow.i.i.i.i = and i1 %i.p, %i.r
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.s = add nuw nsw i64 %i.q, 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.t, align 8
  store i64 8, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %i.e, i64 noundef %.val16)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.a = load i64, ptr %0, align 8, !alias.scope !746, !noundef !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !746, !noundef !11 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i.i4, 1       ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #31
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !747
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !750, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !750, !nonnull !11, !noundef !11 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 24                  ; 3 uses
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !750, !noundef !11 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !750, !nonnull !11, !noundef !11
  %i.l = mul nuw i64 %i.i, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !750
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i3 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.c, !noalias !750

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph5
  %i.p = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i4 = phi i64 [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.d, !noalias !750

bb.d:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !750
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !750, !noundef !11 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i
  %i.y = load ptr, ptr %0, align 8, !alias.scope !750, !nonnull !11, !noundef !11
  %i.z = mul nuw i64 %i.w, 24
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !750
  br label %_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBO_5alloc6GlobalEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.r

_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3v_10UnwindSafeNtB3c_4SyncEL_EEECsibhcYuwTAtB_13typst_realize:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !773, !noundef !11 ; 7 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !773
  store ptr inttoptr (i64 2 to ptr), ptr %i.c, align 8, !alias.scope !773
  %i.f = trunc nuw i64 %i.b to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !773
  store i64 %i.e, ptr %i.a, align 8, !noalias !773
  %i.g = icmp eq ptr %i.d, inttoptr (i64 2 to ptr)
  br i1 %i.g, label %.noexc4.i, label %bb.f, !prof !12

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !18, !alias.scope !773, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !773, !nonnull !11, !align !13, !noundef !11
  tail call fastcc void @_RNvMs2_NtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3m_10UnwindSafeNtB32_4SyncEL_EE9put_valueCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %i.l, ptr noalias noundef nonnull align 8 %i.d) #32, !noalias !770
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %.body.i, !noalias !774

.body.i:                                          ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1400, i64 noundef 8) #29, !noalias !774
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 1400, i64 noundef 8) #29, !noalias !774
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

.noexc4.i:                                        ; preds = %bb.b
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #27, !noalias !770
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !773, !nonnull !11, !align !13, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store atomic i64 %i.e, ptr %i.p release, align 8, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !773
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3D_10UnwindSafeNtB3k_4SyncEL_EEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs7lTeezpKIYd_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB2y_5boxed3BoxNtNtNtBK_4meta5regex5CacheEEEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !786, !nonnull !11, !noundef !11 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !786, !noundef !11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw nsw i64 %.sroa.0.08.i.i.i.i.i, 1 ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !787, !noalias !786, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i unwind label %.body.i.i.i.i.i, !noalias !788

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !788
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #29, !noalias !788
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !787, !noalias !786, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize(ptr %.val.i.i.i.i.i) #31
          to label %bb.b unwind label %bb.c, !noalias !788

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !788
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !16, !alias.scope !786, !noundef !11 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEECsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !786
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEECsibhcYuwTAtB_13typst_realize.exit.i.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !16, !alias.scope !786, !noundef !11 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !786
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1v_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !815, !noundef !11 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !817, !noundef !11 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !817, !nonnull !11, !noundef !11 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !818
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i, %bb.d ]
  %.val9.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !819
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.107.013.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !820)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !821)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !824, !noalias !817, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !825
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #33, !noalias !817
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.d

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = and i64 %i.aa, -16                      ; 2 uses
  %i.ac = add i64 %i.ab, 32                       ; 2 uses
  %i.ad = add i64 %i.b, 17
  %i.ae = add i64 %i.ad, %i.ac                    ; 4 uses
  %i.af = icmp uge i64 %i.ae, %i.ac
  %i.ag = icmp ult i64 %i.ae, 9223372036854775793
  tail call void @llvm.assume(i1 %i.af)
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.ai = load ptr, ptr %0, align 8, !alias.scope !815, !nonnull !11, !noundef !11
  %i.aj = sub i64 -32, %i.ab
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !815
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1o_6hybrid2id11LazyStateIDNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB1B_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEEECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #33
  br i1 %i.f, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB18_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.e:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB18_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit

_RNvXsc_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_10MutexGuardINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB18_5boxed3BoxNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtBG_12SequenceElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !838, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content12SequenceElemECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content12SequenceElemECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtBK_4text8TextElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !alias.scope !853, !nonnull !11, !noundef !11
  %i.d = icmp eq ptr %i.c, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val2 = load ptr, ptr %i.f, align 16, !alias.scope !29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 111
  %.val3 = load i8, ptr %i.g, align 1, !alias.scope !29, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr %.val2, i8 %.val3) #31
          to label %bb.g unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.h, align 16, !alias.scope !29 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 111
  %.val1 = load i8, ptr %i.i, align 1, !alias.scope !29, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize.exit

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.j = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.d
  %1 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !854
  %.not.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !854
  %i.k = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !854, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !854
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.l = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.m, align 8, !noalias !854
  store i64 8, ptr %i.a, align 8, !noalias !854
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %i.n, align 8, !noalias !854
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !854
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  ret void

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.g:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_4math8equation12EquationElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !867, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math8equation12EquationElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #31
          to label %bb.e unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math8equation12EquationElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(136) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_5model3par7ParElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(336) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !880, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model3par7ParElemECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model3par7ParElemECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_5model4cite9CiteGroupEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !893, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4cite9CiteGroupECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4cite9CiteGroupECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_5model4list8ListElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(240) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !906, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(136) %i.e) #31
          to label %bb.e unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(136) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_5model5enum_8EnumElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !919, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(160) %i.e) #31
          to label %common.resume unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #31
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw5InnerNtNtNtBK_5model5terms9TermsElemEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !alias.scope !938, !nonnull !11, !noundef !11
  %i.c = icmp eq ptr %i.b, @_RNvCsieRLDaoupkO_8thin_vec12EMPTY_HEADER
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvXs6_CsieRLDaoupkO_8thin_vecINtB8_7ThinVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop18drop_non_singletonjECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #31
          to label %common.resume unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !alias.scope !939, !noundef !11
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #31
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3raw6HeaderECsibhcYuwTAtB_13typst_realize.exit, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh3_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %i.a = load i64, ptr %0, align 8, !range !965, !alias.scope !964, !noundef !11 ; 4 uses
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.c = icmp eq i64 %i.a, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.d = icmp eq i64 %i.a, 2
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.e = icmp eq i64 %i.a, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.g = load i64, ptr %i.f, align 8, !range !17, !alias.scope !971, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.g, label %bb.g [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.i
    i64 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !974, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !974
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !977, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !977
  %i.l = icmp eq i64 %2, 1
  br i1 %i.l, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !980, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !980
  %i.n = icmp eq i64 %3, 1
  br i1 %i.n, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartIBC_NtNtNtB14_5model9reference10SupplementEEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.b = load i64, ptr %0, align 8, !range !26, !alias.scope !987, !noundef !11 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !990 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !990, !noundef !11
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.g = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.d
  %1 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !990
  %.not.i.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !990
  %i.h = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !990, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !990
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.i = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %i.j, align 8, !noalias !990
  store i64 8, ptr %i.a, align 8, !noalias !990
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !990
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !990
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsibhcYuwTAtB_13typst_realize10RegexMatchEBD_(ptr %.40.val, i8 %.55.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.55.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.40.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.40.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.40.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.b
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !20
  %.not.i.i.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20
  %i.c = getelementptr i8, ptr %.40.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !20, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !20
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.d = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !20
  store i64 8, ptr %i.a, align 8, !noalias !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8, !noalias !20
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.val1 = load i8, ptr %i.b, align 1, !noundef !11
  %.not.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %.not.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !993 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 63
  %.val1.i = load i8, ptr %i.c, align 1, !alias.scope !993, !noundef !11
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !993
  %.not.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !993
  %i.e = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !993, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8, !noalias !993
  store i64 8, ptr %i.a, align 8, !noalias !993
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8, !noalias !993
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc9 unwind label %bb.d

.noexc9:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !993
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.k, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val3, i64 %.val4) #31
          to label %bb.e unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2 = load i64, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val, i64 %.val2)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.n, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val7, i64 %.val8) #31
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load i64, ptr %i.r, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val5, i64 %.val6)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr %.0.val, i8 %.15.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.15.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.b
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !29
  %.not.i.i.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29
  %i.c = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !29, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !29
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.d = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8, !noalias !29
  store i64 8, ptr %i.a, align 8, !noalias !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.d, ptr %i.f, align 8, !noalias !29
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1024, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1024
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures9GroupInfoECsibhcYuwTAtB_13typst_realize.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures9GroupInfoECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !1020 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !1020, !nonnull !11, !noundef !11
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures9GroupInfoECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !1020 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures8CapturesECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures9GroupInfoECsibhcYuwTAtB_13typst_realize.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !1020, !nonnull !11, !noundef !11
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures8CapturesECsibhcYuwTAtB_13typst_realize.exit

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11PikeVMCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(216) %i.l) #31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val9 = load i64, ptr %i.n, align 8, !range !30, !noundef !11 ; 2 uses
  %i.o = icmp sgt i64 %.val9, 0
  br i1 %i.o, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures8CapturesECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures9GroupInfoECsibhcYuwTAtB_13typst_realize.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11PikeVMCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(216) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %i.r = load i64, ptr %i.q, align 8, !range !30, !alias.scope !1027, !noundef !11 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures8CapturesECsibhcYuwTAtB_13typst_realize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1029, !nonnull !11, !noundef !11
  %i.v = shl nuw i64 %i.r, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1029
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !1029 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1029, !nonnull !11, !noundef !11
  %i.z = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1029
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %.body
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val10 = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ab = shl nuw i64 %.val9, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util8captures8CapturesECsibhcYuwTAtB_13typst_realize.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.ac, align 8, !range !30, !noundef !11 ; 2 uses
  %i.ad = icmp sgt i64 %.val, 0
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit13

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val8 = load ptr, ptr %i.ae, align 8, !nonnull !11, !noundef !11
  %i.af = shl nuw i64 %.val, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.i, %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(704) %0) #31
          to label %.body14 unwind label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit13: ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize.exit
  %i.ag = load i64, ptr %0, align 8, !range !26, !alias.scope !1030, !noundef !11
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit13
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(352) %i.aj) #31
          to label %.body14 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(352) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.o

.body14:                                          ; preds = %bb.o, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit
  %.pn6 = phi { ptr, i32 } [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit ], [ %i.ap, %bb.o ], [ %i.ai, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !range !26, !alias.scope !1031, !noundef !11
  %i.ao = icmp eq i64 %i.an, 2
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit, label %bb.n

bb.n:                                             ; preds = %.body14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.q

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body14

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit13, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !26, !alias.scope !1032, !noundef !11
  %i.as = icmp eq i64 %i.ar, 2
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit17, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize.exit
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.aq)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit17

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit17: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers12OnePassCacheECsibhcYuwTAtB_13typst_realize.exit
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers18ReverseHybridCacheECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body14, %bb.n
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11HybridCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !alias.scope !1035, !noundef !11
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(352) %i.d) #31
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(352) %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid5regex5CacheEECsibhcYuwTAtB_13typst_realize.exit
end_hunk_2
begin_hunk_3_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers11PikeVMCacheECsibhcYuwTAtB_13typst_realize:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta8wrappers23BoundedBacktrackerCacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.a = load i64, ptr %0, align 8, !range !30, !alias.scope !1063, !noundef !11 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5CacheEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !1065, !nonnull !11, !noundef !11
  %i.e = shl nuw i64 %i.a, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1065
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.f, align 8, !alias.scope !1065 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5CacheEECsibhcYuwTAtB_13typst_realize.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1065, !nonnull !11, !noundef !11
  %i.i = shl nuw i64 %.val2.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1065
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5CacheEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5CacheEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata3nfa8thompson9backtrack5FrameEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %.val4.i = load i64, ptr %0, align 8, !alias.scope !1070 ; 2 uses
  %i.a = icmp eq i64 %.val4.i, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load ptr, ptr %i.b, align 8, !alias.scope !1070, !nonnull !11, !noundef !11
  %i.c = shl nuw i64 %.val4.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1070
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !1070 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !1070, !nonnull !11, !noundef !11
  %i.g = shl nuw i64 %.val.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1070
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %.val4.i1 = load i64, ptr %i.h, align 8, !alias.scope !1071 ; 2 uses
  %i.i = icmp eq i64 %.val4.i1, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5.i2 = load ptr, ptr %i.j, align 8, !alias.scope !1071, !nonnull !11, !noundef !11
  %i.k = shl nuw i64 %.val4.i1, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1071
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i4 = load i64, ptr %i.l, align 8, !alias.scope !1071 ; 2 uses
  %i.m = icmp eq i64 %.val.i4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit6, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i5 = load ptr, ptr %i.n, align 8, !alias.scope !1071, !nonnull !11, !noundef !11
  %i.o = shl nuw i64 %.val.i4, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1071
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa5CacheECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i64 %.val19, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %i.d = shl nuw i64 %.val19, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val15 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq i64 %.val15, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit26, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11
  %i.h = shl nuw i64 %.val15, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit26

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit26: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit26
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(48) %i.k) #31
          to label %bb.k unwind label %bb.y

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1123, !noundef !11 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1125, !noundef !11 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !1125, !nonnull !11, !noundef !11 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !1126
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.g
  %.sroa.05.016.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.05.1.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i = phi i16 [ %i.v, %bb.g ], [ %i.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %i.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !1127
  %i.y = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i.i.i.i.i, i64 %i.af
  %i.ah = add i64 %.sroa.107.013.i.i.i.i.i.i, -1  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1132, !noalias !1125, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !1133
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB13_6hybrid2id11LazyStateIDEE9next_implKb0_ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.h

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtBK_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.f
  %i.am = mul i64 %i.n, 24
  %i.an = and i64 %i.am, -16                      ; 2 uses
  %i.ao = add i64 %i.an, 32                       ; 2 uses
  %i.ap = add i64 %i.n, 17
  %i.aq = add i64 %i.ap, %i.ao                    ; 4 uses
  %i.ar = icmp uge i64 %i.aq, %i.ao
  %i.as = icmp ult i64 %i.aq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ar)
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit, label %bb.j

bb.j:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.au = load ptr, ptr %i.l, align 8, !alias.scope !1123, !nonnull !11, !noundef !11
  %i.av = sub i64 -32, %i.an
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !1123
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn4 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.j, %bb.d ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ax) #31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val13 = load i64, ptr %i.ay, align 8          ; 2 uses
  %i.az = icmp eq i64 %.val13, 0
  br i1 %i.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit, label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.j, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1i_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %.val4.i.i = load i64, ptr %i.bb, align 8, !alias.scope !1136 ; 2 uses
  %i.bc = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !1136, !nonnull !11, !noundef !11
  %i.be = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1136
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bf, align 8, !alias.scope !1136 ; 2 uses
  %i.bg = icmp eq i64 %.val.i.i, 0
  br i1 %i.bg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1136, !nonnull !11, !noundef !11
  %i.bi = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1136
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %.val4.i1.i = load i64, ptr %i.bj, align 8, !alias.scope !1138 ; 2 uses
  %i.bk = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bl, align 8, !alias.scope !1138, !nonnull !11, !noundef !11
  %i.bm = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bm, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1138
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3.i: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set9SparseSetECsibhcYuwTAtB_13typst_realize.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bn, align 8, !alias.scope !1138 ; 2 uses
  %i.bo = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bp, align 8, !alias.scope !1138, !nonnull !11, !noundef !11
  %i.bq = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 4) #29, !noalias !1138
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize.exit

bb.q:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.br, align 8, !nonnull !11, !noundef !11
  %i.bs = shl nuw i64 %.val13, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit.i3.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bu = icmp eq i64 %.val, 0
  br i1 %i.bu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit27, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bv, align 8, !nonnull !11, !noundef !11
  %i.bw = shl nuw i64 %.val, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit27

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.q, %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.bx, align 8          ; 2 uses
  %i.by = icmp eq i64 %.val23, 0
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.bz, align 8, !nonnull !11, !noundef !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit27: ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4util10sparse_set10SparseSetsECsibhcYuwTAtB_13typst_realize.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.ca, align 8          ; 2 uses
  %i.cb = icmp eq i64 %.val21, 0
  br i1 %i.cb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit28, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit27
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.cc, align 8, !nonnull !11, !noundef !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit28

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  %i.ce = load i32, ptr %i.cd, align 8, !range !1140, !alias.scope !1139, !noundef !11
  %i.cf = icmp eq i32 %i.ce, 1
  br i1 %i.cf, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !1144, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !1144
  %i.ci = icmp eq i64 %2, 1
  br i1 %i.ci, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cg) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit28: ; preds = %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7lTeezpKIYd_14regex_automata4util10primitives7StateIDEECsibhcYuwTAtB_13typst_realize.exit27
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1145)
  %i.ck = load i32, ptr %i.cj, align 8, !range !1140, !alias.scope !1145, !noundef !11
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit30

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit28
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1149, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !1149
  %i.co = icmp eq i64 %3, 1
  br i1 %i.co, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit30

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcShE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.cm) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit28, %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata6hybrid3dfa10StateSaverECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7lTeezpKIYd_14regex_automata4util11determinize5state17StateBuilderEmptyECsibhcYuwTAtB_13typst_realize.exit, %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = load i64, ptr %0, align 8, !range !1248, !noundef !11 ; 4 uses
  %i.g = icmp ne i64 %i.f, 30
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -2
  %i.i = icmp samesign ugt i64 %i.f, 1
  %i.j = select i1 %i.i, i64 %i.h, i64 28
  switch i64 %i.j, label %bb.b [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 5, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 6, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 7, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 8, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 9, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 10, label %bb.d
    i64 11, label %bb.g
    i64 12, label %bb.n
    i64 13, label %bb.p
    i64 14, label %bb.s
    i64 15, label %bb.u
    i64 16, label %bb.x
    i64 17, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 18, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 19, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 20, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 21, label %bb.z
    i64 22, label %bb.aa
    i64 23, label %bb.ab
    i64 24, label %bb.ai
    i64 25, label %bb.ak
    i64 26, label %bb.ar
    i64 27, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 28, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1252, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !1252
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ar, %bb.ab, %bb.bd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i, %bb.av, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %bb.y, %bb.x, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.v, %bb.u, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.aa, %bb.z, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  %i.o = load i32, ptr %i.n, align 8, !range !1254, !alias.scope !1253, !noundef !11
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1258, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1258
  %i.s = icmp eq i64 %2, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.u = load i64, ptr %i.t, align 8, !range !26, !alias.scope !1259, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.u, label %bb.h [
    i64 0, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1262, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1262
  %i.x = icmp eq i64 %3, 1
  br i1 %i.x, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.y = load ptr, ptr %i.v, align 8, !alias.scope !1265, !nonnull !11, !noundef !11
  %4 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1265
  %i.z = icmp eq i64 %4, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.l:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.aa = load ptr, ptr %i.v, align 8, !alias.scope !1268, !nonnull !11, !noundef !11
  %5 = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !1268
  %i.ab = icmp eq i64 %5, 1
  br i1 %i.ab, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1272, !nonnull !11, !noundef !11
  %6 = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1272
  %i.ae = icmp eq i64 %6, 1
  br i1 %i.ae, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %i.ag = load i64, ptr %i.af, align 8, !range !26, !alias.scope !1275, !noundef !11
  %switch.i.i = icmp samesign ult i64 %i.ag, 2
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1278, !nonnull !11, !noundef !11
  %7 = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !1278
  %i.aj = icmp eq i64 %7, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol8ModifiedE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.s:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ak, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.al = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.s
  %8 = atomicrmw sub ptr %i.al, i64 1 release, align 8
  %.not.i.i.i = icmp eq i64 %8, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.am = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.am, align 8, !noundef !11 ; 3 uses
  %i.an = icmp ugt i64 %.val.i.i.i.i, 4611686018427387903
  br i1 %i.an, label %.thread.i.i.i.i, label %bb.t, !prof !12

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.ao = icmp samesign ult i64 %.val.i.i.i.i, 4611686018427387900
  %i.ap = shl nuw i64 %.val.i.i.i.i, 2
  %i.aq = add i64 %i.ap, 16                       ; 2 uses
  %i.ar = icmp ult i64 %i.aq, 9223372036854775799
  %narrow.i.i.i.i.i = select i1 %i.ao, i1 %i.ar, i1 false
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i, label %.thread.i.i.i.i, !prof !31

.thread.i.i.i.i:                                  ; preds = %bb.t, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.al, ptr %i.as, align 8
  store i64 8, ptr %i.e, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.aq, ptr %i.at, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.u:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.au, align 8, !alias.scope !1279 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val2 = load i8, ptr %i.av, align 1, !alias.scope !1279, !noundef !11
  %.not.i.i.i.i3 = icmp sgt i8 %.val2, -1
  br i1 %.not.i.i.i.i3, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val1, inttoptr (i64 16 to ptr)
  %i.aw = getelementptr inbounds i8, ptr %.val1, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.v
  %9 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !1280
  %.not.i.i.i.i.i = icmp eq i64 %9, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1280
  %i.ax = getelementptr i8, ptr %.val1, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.ax, align 8, !noalias !1280, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.w, !prof !21

bb.w:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !1280
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.ay = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.aw, ptr %i.az, align 8, !noalias !1280
  store i64 8, ptr %i.d, align 8, !noalias !1280
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ay, ptr %i.ba, align 8, !noalias !1280
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1280
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.x:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1284, !nonnull !11, !noundef !11
  %10 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !1284
  %i.bd = icmp eq i64 %10, 1
  br i1 %i.bd, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.y:                                             ; preds = %bb.x
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashDNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes8BytelikeEL_EE9drop_slowB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.z:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.aa:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bf), !inline_history !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ab:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %.val4.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !1287, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i11 = icmp eq ptr %.val4.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i11, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ab
  %i.bh = getelementptr inbounds i8, ptr %.val4.i.i, i64 -16
  %11 = atomicrmw sub ptr %i.bh, i64 1 release, align 8
  %.not28 = icmp eq i64 %11, 1
  br i1 %.not28, label %bb.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ac:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire, !noalias !1287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1287
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !1287, !nonnull !11, !noundef !11 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -16
  %.not.i8 = icmp eq ptr %i.bi, inttoptr (i64 16 to ptr)
  br i1 %.not.i8, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = getelementptr i8, ptr %i.bi, i64 -8
  %.val.i = load i64, ptr %i.bk, align 8, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ac, %bb.ad
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.bl = icmp ult i64 %.sroa.02.0.i, 576460752303423488
  %i.bm = shl nuw i64 %.sroa.02.0.i, 5
  %i.bn = or disjoint i64 %i.bm, 16               ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 9223372036854775799
  %narrow.i.i = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.ae, !prof !21

bb.ae:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !1287
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bj, ptr %i.bp, align 8, !noalias !1287
  store i64 8, ptr %i.b, align 8, !noalias !1287
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bn, ptr %i.bq, align 8, !noalias !1287
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1287, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef %i.bs)
          to label %bb.ag unwind label %bb.af, !noalias !1287, !inline_history !1206

bb.af:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.ah

bb.ag:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1287
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ah:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !1287, !inline_history !1206
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.bc, %bb.au, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.cs, %bb.au ], [ %i.bt, %bb.af ], [ %i.dc, %bb.bc ], [ %i.dc, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

bb.ai:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1291, !nonnull !11, !noundef !11
  %12 = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !1291
  %i.bx = icmp eq i64 %12, 1
  br i1 %i.bx, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1p_5value5ValueNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEE9drop_slowB1r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ak:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.bz = load i64, ptr %i.by, align 8, !range !17, !alias.scope !1294, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.bz, label %bb.al [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.an
    i64 3, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !1297, !nonnull !11, !noundef !11
  %13 = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1297
  %i.cc = icmp eq i64 %13, 1
  br i1 %i.cc, label %bb.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.am:                                            ; preds = %bb.al
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.an:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.cd = load ptr, ptr %i.ca, align 8, !alias.scope !1300, !nonnull !11, !noundef !11
  %14 = atomicrmw sub ptr %i.cd, i64 1 release, align 8, !noalias !1300
  %i.ce = icmp eq i64 %14, 1
  br i1 %i.ce, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ao:                                            ; preds = %bb.an
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ap:                                            ; preds = %bb.ak
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.cf = load ptr, ptr %i.ca, align 8, !alias.scope !1303, !nonnull !11, !noundef !11
  %15 = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !1303
  %i.cg = icmp eq i64 %15, 1
  br i1 %i.cg, label %bb.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.aq:                                            ; preds = %bb.ap
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.ar:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %.val4.i.i6 = load ptr, ptr %i.ch, align 8, !alias.scope !1306, !nonnull !11, !noundef !11 ; 2 uses
  %.not.i21 = icmp eq ptr %.val4.i.i6, inttoptr (i64 16 to ptr)
  br i1 %.not.i21, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.ar
  %i.ci = getelementptr inbounds i8, ptr %.val4.i.i6, i64 -16
  %16 = atomicrmw sub ptr %i.ci, i64 1 release, align 8
  %.not = icmp eq i64 %16, 1
  br i1 %.not, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.as:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire, !noalias !1306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1306
  %i.cj = load ptr, ptr %i.ch, align 8, !alias.scope !1306, !nonnull !11, !noundef !11 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -16
  %.not.i17 = icmp eq ptr %i.cj, inttoptr (i64 16 to ptr)
  br i1 %.not.i17, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.as
  %i.cl = getelementptr i8, ptr %i.cj, i64 -8
  %.val.i15 = load i64, ptr %i.cl, align 8, !noundef !11 ; 2 uses
  %narrow.i.not.i = icmp ugt i64 %.val.i15, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.at, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsibhcYuwTAtB_13typst_realize.exit, !prof !1307

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !1306
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.as, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.02.0.i1627 = phi i64 [ %.val.i15, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECsibhcYuwTAtB_13typst_realize.exit ], [ 0, %bb.as ]
  %i.cm = mul nuw nsw i64 %.sroa.02.0.i1627, 72
  %i.cn = add nuw nsw i64 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ck, ptr %i.co, align 8, !noalias !1306
  store i64 8, ptr %i.a, align 8, !noalias !1306
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.cn, ptr %i.cp, align 8, !noalias !1306
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !1306, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %i.cj, i64 noundef %i.cr)
          to label %bb.av unwind label %bb.au, !noalias !1306, !inline_history !1233

bb.au:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsibhcYuwTAtB_13typst_realize.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.aw

bb.av:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1306
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.aw:                                            ; preds = %bb.au
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !1306, !inline_history !1233
  unreachable

bb.ax:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.cu = icmp eq i64 %i.f, 0
  br i1 %i.cu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %.val.i.i.i = load ptr, ptr %i.cv, align 8, !alias.scope !1311 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i = load i8, ptr %i.cw, align 1, !alias.scope !1311, !noundef !11
  %.not.i.i.i.i.i4 = icmp sgt i8 %.val1.i.i.i, -1
  br i1 %.not.i.i.i.i.i4, label %bb.az, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.cx = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.az
  %17 = atomicrmw sub ptr %i.cx, i64 1 release, align 8, !noalias !1311
  %.not.i.i.i.i.i.i5 = icmp eq i64 %17, 1
  br i1 %.not.i.i.i.i.i.i5, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1311
  %i.cy = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !noalias !1311, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.ba, !prof !21

bb.ba:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i unwind label %bb.bb, !noalias !1308

.noexc.i:                                         ; preds = %bb.ba
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.cz = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.cx, ptr %i.da, align 8, !noalias !1311
  store i64 8, ptr %i.c, align 8, !noalias !1311
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.cz, ptr %i.db, align 8, !noalias !1311
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc1.i unwind label %bb.bb, !noalias !1308

.noexc1.i:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1311
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i

bb.bb:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.ba
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.de = load ptr, ptr %i.dd, align 8, !alias.scope !1314, !nonnull !11, !noundef !11
  %18 = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !1314
  %i.df = icmp eq i64 %18, 1
  br i1 %i.df, label %bb.bc, label %common.resume

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dd) #33
          to label %common.resume unwind label %bb.be

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.noexc1.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.az, %bb.ay, %bb.ax
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !1317, !nonnull !11, !noundef !11
  %19 = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !1317
  %i.di = icmp eq i64 %19, 1
  br i1 %i.di, label %bb.bd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.bd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsibhcYuwTAtB_13typst_realize.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value7DynamicECsibhcYuwTAtB_13typst_realize.exit

bb.be:                                            ; preds = %bb.bc
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !inline_history !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.c = load i64, ptr %i.b, align 8, !range !17, !alias.scope !1336, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.c, label %bb.e [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.g
    i64 3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1339, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1339
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  %i.g = load ptr, ptr %i.d, align 8, !alias.scope !1342, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1342
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1345, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1345
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !1412, !noundef !11 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit
    i64 3, label %bb.k
    i64 4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit
    i64 5, label %bb.s
    i64 6, label %bb.t
    i64 7, label %bb.u
    i64 8, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1415, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1415
  %i.e = icmp eq i64 %1, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !1418, !noundef !11 ; 6 uses
  %i.i = icmp ugt i64 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.preheader

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.preheader: ; preds = %bb.e
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f, !inline_history !1354

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i: ; preds = %.lr.ph23
  %i.m = add nuw nsw i64 %.sroa.0.1.i22, 1        ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %common.resume, label %.lr.ph23

bb.f:                                             ; preds = %.lr.ph
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = icmp eq i64 %i.h, 1
  br i1 %i.p, label %common.resume, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i
  %.sroa.0.1.i22 = phi i64 [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i ], [ 1, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %.sroa.0.1.i22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i unwind label %bb.g, !inline_history !1354

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i, %bb.f, %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.ag, %bb.af, %.body.i.i, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bw, %bb.af ], [ %eh.lpad-body.i.i, %bb.p ], [ %i.bp, %bb.ac ], [ %i.bh, %bb.y ], [ %i.bh, %bb.z ], [ %i.bp, %bb.ad ], [ %i.bw, %bb.ag ], [ %i.o, %bb.f ], [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.lr.ph23
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !1355
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.j, align 16, !alias.scope !1418, !nonnull !11, !noundef !11 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1418, !noundef !11 ; 4 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph25

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph25
  %i.x = icmp eq i64 %i.z, %i.v
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.0.0.i.i24 = phi i64 [ %i.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.sroa.0.0.i.i24
  %i.z = add i64 %.sroa.0.0.i.i24, 1              ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.i, !noalias !1419, !inline_history !1358

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i.i: ; preds = %.lr.ph27
  %i.ab = add i64 %.sroa.0.1.i.i26, 1             ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.v
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph27

bb.i:                                             ; preds = %.lr.ph25
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = icmp eq i64 %i.z, %i.v
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit.i, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i.i
  %.sroa.0.1.i.i26 = phi i64 [ %i.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i.i ], [ %i.z, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.sroa.0.1.i.i26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i.i unwind label %bb.j, !noalias !1419, !inline_history !1358

bb.j:                                             ; preds = %.lr.ph27
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !1419, !inline_history !1359
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit7.i.i, %bb.i
  %i.ai = mul nuw i64 %i.h, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.ai, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1419, !inline_history !1360
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.h
  %i.aj = mul nuw i64 %i.h, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !1419, !inline_history !1360
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECsibhcYuwTAtB_13typst_realize.exit.i.preheader, %.lr.ph, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit5, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit3, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECsibhcYuwTAtB_13typst_realize.exit, %bb.t, %bb.s, %bb.a, %bb.a, %bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1425, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1425
  %i.am = icmp eq i64 %2, 1
  br i1 %i.am, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECsibhcYuwTAtB_13typst_realize.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ak) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECsibhcYuwTAtB_13typst_realize.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.ao, align 16, !alias.scope !1426, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val1.i.i.i) #31
          to label %.body.i.i unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.ap, align 16, !alias.scope !1426, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.an, %bb.m ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1429, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1430
  %i.au = icmp eq i64 %3, 1
  br i1 %i.au, label %bb.p, label %common.resume

bb.p:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.as) #33
          to label %common.resume unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !1433, !nonnull !11, !noundef !11
  %4 = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !1434
  %i.ax = icmp eq i64 %4, 1
  br i1 %i.ax, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECsibhcYuwTAtB_13typst_realize.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.s:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.az), !inline_history !1379
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.t:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba), !inline_history !1379
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.u:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1437, !nonnull !11, !noundef !11
  %5 = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !1437
  %i.bd = icmp eq i64 %5, 1
  br i1 %i.bd, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit3

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit3 unwind label %bb.y

bb.w:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1440, !nonnull !11, !noundef !11
  %6 = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !1440
  %i.bg = icmp eq i64 %6, 1
  br i1 %i.bg, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit5

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.be) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit5 unwind label %bb.ac

bb.y:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.bj = load ptr, ptr %i.bi, align 16, !alias.scope !1443, !nonnull !11, !noundef !11
  %7 = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !1443
  %i.bk = icmp eq i64 %7, 1
  br i1 %i.bk, label %bb.z, label %common.resume

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #33
          to label %common.resume unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit3: ; preds = %bb.u, %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.bm = load ptr, ptr %i.bl, align 16, !alias.scope !1446, !nonnull !11, !noundef !11
  %8 = atomicrmw sub ptr %i.bm, i64 1 release, align 8, !noalias !1446
  %i.bn = icmp eq i64 %8, 1
  br i1 %i.bn, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit3
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bl) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.ab:                                            ; preds = %bb.ag, %bb.ad, %bb.z
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.br = load ptr, ptr %i.bq, align 16, !alias.scope !1449, !nonnull !11, !noundef !11
  %9 = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !1449
  %i.bs = icmp eq i64 %9, 1
  br i1 %i.bs, label %bb.ad, label %common.resume

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bq) #33
          to label %common.resume unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit5: ; preds = %bb.w, %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.bu = load ptr, ptr %i.bt, align 16, !alias.scope !1452, !nonnull !11, !noundef !11
  %10 = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !1452
  %i.bv = icmp eq i64 %10, 1
  br i1 %i.bv, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit5
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bt) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.af:                                            ; preds = %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1454)
  %i.by = load ptr, ptr %i.bx, align 16, !alias.scope !1455, !nonnull !11, !noundef !11
  %11 = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1455
  %i.bz = icmp eq i64 %11, 1
  br i1 %i.bz, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bx) #33
          to label %common.resume unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1456)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.cb = load ptr, ptr %i.ca, align 16, !alias.scope !1458, !nonnull !11, !noundef !11
  %12 = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !1458
  %i.cc = icmp eq i64 %12, 1
  br i1 %i.cc, label %bb.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit

bb.ah:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECsibhcYuwTAtB_13typst_realize.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4math8equation12EquationElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i8, ptr %i.b, align 8, !range !1471, !alias.scope !1472, !noundef !11
  %i.d = icmp eq i8 %i.c, -2
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh1_EECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh3_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #31
          to label %bb.d unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh1_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh3_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #31
          to label %bb.k unwind label %bb.m

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh1_EECsibhcYuwTAtB_13typst_realize.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh1_EECsibhcYuwTAtB_13typst_realize.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474)
  %i.j = load i64, ptr %0, align 8, !range !26, !alias.scope !1475, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1477)
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !1478 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !1478, !noundef !11
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val1.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.o = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %1 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1478
  %.not.i.i.i.i.i.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1478
  %i.p = getelementptr i8, ptr %.val.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !noalias !1478, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %bb.j, !prof !21

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc4 unwind label %bb.l

.noexc4:                                          ; preds = %bb.j
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  %i.q = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.r, align 8, !noalias !1478
  store i64 8, ptr %i.a, align 8, !noalias !1478
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.s, align 8, !noalias !1478
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc5 unwind label %bb.l

.noexc5:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1478
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn2 = phi { ptr, i32 } [ %i.u, %bb.l ], [ %.pn, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.m

bb.l:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_4math8equation12EquationElemKh4_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc5, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, %bb.i, %bb.h, %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  ret void

bb.m:                                             ; preds = %bb.k, %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model4list8ListElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %i.b = load i64, ptr %i.a, align 8, !range !26, !alias.scope !1503, !noundef !11 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1504)
  %i.d = icmp eq i64 %i.b, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1506)
  %i.f = load i64, ptr %i.e, align 8, !range !17, !alias.scope !1507, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  switch i64 %i.f, label %bb.e [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.g
    i64 3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1510, !nonnull !11, !noundef !11
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1510
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  %i.j = load ptr, ptr %i.g, align 8, !alias.scope !1513, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1513
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !1516, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !1516
  %i.m = icmp eq i64 %3, 1
  br i1 %i.m, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #31
          to label %bb.m unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model4list8ListElemKh1_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.i, %bb.g, %bb.e, %bb.d, %bb.d, %bb.a, %bb.c, %bb.f, %bb.h, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model4list8ListItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
  ret void

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5enum_8EnumElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library5model10numbering_9NumberingEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model5enum_8EnumElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #31
          to label %bb.d unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model5enum_8EnumElemKh1_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5enum_8EnumItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library5model5terms9TermsElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1521, !noundef !11
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model5terms9TermsElemKh1_EECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model5terms9TermsElemKh1_EECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %bb.e unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5field8SettableNtNtNtBK_5model5terms9TermsElemKh1_EECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1h_5model5terms8TermItemEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !23, !noundef !11
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val15 = load i64, ptr %i.d, align 8           ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val14, inttoptr (i64 16 to ptr)
  %i.e = getelementptr inbounds i8, ptr %.val14, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %1, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %.val14, i64 -8
  %.val.i.i.i = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %i.g = icmp ult i64 %.val.i.i.i, 1152921504606846976
  %i.h = shl i64 %.val.i.i.i, 4                   ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775784
  %narrow.i.i.i.i = and i1 %i.g, %i.i
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.j = add nuw nsw i64 %i.h, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.k, align 8
  store i64 8, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.l, align 8
  %i.m = icmp eq i64 %.val15, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.09.i.i.i, 1     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1549, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1550
  %i.q = icmp eq i64 %2, 1
  br i1 %i.q, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.r = icmp eq i64 %i.o, %.val15
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.o, %.val15
  br i1 %i.t, label %.body.i.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i
  %.sroa.0.110.i.i.i = phi i64 [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.v = add i64 %.sroa.0.110.i.i.i, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  %i.w = load ptr, ptr %i.u, align 8, !alias.scope !1554, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !1555
  %i.x = icmp eq i64 %3, 1
  br i1 %i.x, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i

bb.f:                                             ; preds = %.lr.ph12.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i: ; preds = %bb.f, %.lr.ph12.i.i.i
  %i.y = icmp eq i64 %i.v, %.val15
  br i1 %i.y, label %.body.i.i, label %.lr.ph12.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit8.i.i.i, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc20 unwind label %bb.t

.noexc20:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit

bb.h:                                             ; preds = %.body.i.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1559, !nonnull !11, !noundef !11
  %4 = atomicrmw sub ptr %i.ac, i64 1 release, align 8, !noalias !1559
  %i.ad = icmp eq i64 %4, 1
  br i1 %i.ad, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab) #33
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.af, align 8, !nonnull !11, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load i64, ptr %i.ag, align 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val12, i64 %.val13)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ah)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai)
          to label %bb.q unwind label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.r, %bb.q, %bb.j, %bb.i, %bb.z, %bb.m, %bb.l, %bb.k
  ret void

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1560, !noundef !11
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ak)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1561, !noundef !11
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.an), !inline_history !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit

bb.s:                                             ; preds = %bb.p, %bb.x, %.body, %bb.u
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.o, %bb.p, %bb.x
  %.pn2.pn = phi { ptr, i32 } [ %.pn2, %bb.x ], [ %i.aj, %bb.p ], [ %i.aj, %bb.o ]
  resume { ptr, i32 } %.pn2.pn

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.s, %.body.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load ptr, ptr %i.as, align 8, !nonnull !11, !noundef !11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load i64, ptr %i.at, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val10, i64 %.val11) #31
          to label %bb.u unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc20, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i, %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8 = load ptr, ptr %i.au, align 8, !nonnull !11, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load i64, ptr %i.av, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val8, i64 %.val9)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %.body, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.v ], [ %eh.lpad-body, %.body ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.aw, align 8, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val7 = load i64, ptr %i.ax, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val6, i64 %.val7) #31
          to label %bb.x unwind label %bb.s

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECsibhcYuwTAtB_13typst_realize.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5 = load i64, ptr %i.ba, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val, i64 %.val5)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.u, %bb.y
  %.pn2 = phi { ptr, i32 } [ %i.bd, %bb.y ], [ %.pn, %bb.u ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val18 = load ptr, ptr %i.bb, align 8, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val19 = load i64, ptr %i.bc, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val18, i64 %.val19) #31
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.s

bb.y:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.be, align 8, !nonnull !11, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val17 = load i64, ptr %i.bf, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val16, i64 %.val17)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECsibhcYuwTAtB_13typst_realize.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.0.09 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.09 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.09, 1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1564 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.val1.i = load i8, ptr %i.g, align 1, !alias.scope !1564, !noundef !11
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.h = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.c
  %2 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1564
  %.not.i.i.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1564
  %i.i = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !1564, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.j = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.h, ptr %i.c, align 8, !noalias !1564
  store i64 8, ptr %i.a, align 8, !noalias !1564
  store i64 %i.j, ptr %i.d, align 8, !noalias !1564
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1564
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %.noexc7
  %i.k = icmp eq i64 %i.f, %1
  br i1 %i.k, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph20
  %i.l = add i64 %.sroa.0.118, 1                  ; 2 uses
  %i.m = icmp eq i64 %i.l, %1
  br i1 %i.m, label %._crit_edge21, label %.lr.ph20

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.n = icmp eq i64 %i.f, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.118 = phi i64 [ %i.l, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.118
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #31
          to label %bb.e unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %.lr.ph20
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit._crit_edge, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit
  %i.f = icmp eq i64 %i.h, %1
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.0.069 = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.069 ; 5 uses
  %i.h = add nuw nsw i64 %.sroa.0.069, 1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  %i.i = load i64, ptr %i.g, align 8, !range !28, !alias.scope !1582, !noundef !11
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !1583 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  %.val1.i = load i8, ptr %i.l, align 1, !alias.scope !1583, !noundef !11
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.m = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.c
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1584
  %.not.i.i.i.i.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1584
  %i.n = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !1584, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.d, !prof !21

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.o = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.m, ptr %i.c, align 8, !noalias !1584
  store i64 8, ptr %i.b, align 8, !noalias !1584
  store i64 %i.o, ptr %i.d, align 8, !noalias !1584
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1584
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.body unwind label %bb.f, !inline_history !1571

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc8, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.c, %bb.b, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.g, !inline_history !1571

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !1572
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit, %bb.a
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i
  %i.s = icmp eq i64 %i.y, %1
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30._crit_edge, label %.lr.ph71

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.g ], [ %lpad.phi, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = icmp eq i64 %i.h, %1
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30
  %.sroa.0.170 = phi i64 [ %i.y, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30 ], [ %i.h, %.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.0.170 ; 5 uses
  %i.y = add i64 %.sroa.0.170, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1585)
  call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  %i.z = load i64, ptr %i.x, align 8, !range !28, !alias.scope !1587, !noundef !11
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph71
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1588 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %.val1.i.i = load i8, ptr %i.ac, align 1, !alias.scope !1588, !noundef !11
  %.not.i.i.i.i.i.i25 = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i.i.i25, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.ad = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %3 = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !1589
  %.not.i.i.i.i.i.i.i26 = icmp eq i64 %3, 1
  br i1 %.not.i.i.i.i.i.i.i26, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1589
  %i.ae = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !1589, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, label %bb.j, !prof !21

bb.j:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc.i unwind label %.loopexit.split-lp32.loopexit.split-lp, !noalias !1585, !inline_history !1572

.noexc.i:                                         ; preds = %bb.j
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  %i.af = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.ad, ptr %i.u, align 8, !noalias !1589
  store i64 8, ptr %i.a, align 8, !noalias !1589
  store i64 %i.af, ptr %i.v, align 8, !noalias !1589
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc1.i unwind label %.loopexit.split-lp32.loopexit.split-lp, !noalias !1585, !inline_history !1572

.noexc1.i:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1589
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i

.loopexit.split-lp32.loopexit.split-lp:           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, %bb.j
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag)
          to label %.body28 unwind label %bb.k, !inline_history !1581

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.noexc1.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i.i, %bb.i, %bb.h, %.lr.ph71
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30 unwind label %bb.l, !inline_history !1572

bb.k:                                             ; preds = %.loopexit.split-lp32.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !1572
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECsibhcYuwTAtB_13typst_realize.exit30, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECsibhcYuwTAtB_13typst_realize.exit.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body28

.body28:                                          ; preds = %.loopexit.split-lp32.loopexit.split-lp, %bb.l
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add i64 %.sroa.0.18, 1                   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.18
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #31
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1594, !noundef !11
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1595, !noundef !11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.e), !inline_history !4
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %0) unnamed_addr #2 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKeyNvYBT_NtNtB8_3cmp10PartialOrd2ltECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location11LocationKey7reverseCsibhcYuwTAtB_13typst_realize.exit, label %bb.b
end_hunk_3
begin_hunk_4_@_RNvCsibhcYuwTAtB_13typst_realize16visit_show_rules:bb.a
  call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.bh), !inline_history !4
  br label %bb.gs

bb.gu:                                            ; preds = %.body178
  %i.so = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.so)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 unwind label %bb.eh

bb.gv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184
  %i.sp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sp)
          to label %.thread239 unwind label %bb.eh

bb.gw:                                            ; preds = %bb.eg, %.body166, %bb.bt, %bb.cn, %bb.dx, %bb.dw
  %.sroa.077.0.ph = phi i8 [ 1, %.body166 ], [ 1, %bb.cn ], [ 1, %bb.eg ], [ %.sroa.077.1, %bb.bt ], [ 1, %bb.dx ], [ 1, %bb.dw ]
  %.sroa.076.0.ph = phi i1 [ true, %.body166 ], [ true, %bb.cn ], [ true, %bb.eg ], [ %.sroa.076.1, %bb.bt ], [ true, %bb.dx ], [ true, %bb.dw ]
  %.pn.pn.ph = phi { ptr, i32 } [ %eh.lpad-body167, %.body166 ], [ %i.kf, %bb.cn ], [ %i.ni, %bb.eg ], [ %i.gw, %bb.bt ], [ %i.mv, %bb.dx ], [ %i.mv, %bb.dw ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagBY_EEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(96) %i.bf) #31
          to label %bb.dc unwind label %bb.eh

.thread239:                                       ; preds = %bb.gv, %bb.dd, %bb.cs, %bb.cr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184, %bb.dc
  %.pn.pn.pn246 = phi { ptr, i32 } [ %.pn.pn.ph, %bb.dc ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 ], [ %i.kl, %bb.cr ], [ %i.li, %bb.dd ], [ %i.kl, %bb.cs ], [ %.pn, %bb.gv ] ; 2 uses
  %.sroa.077.2245 = phi i8 [ %.sroa.077.0.ph, %bb.dc ], [ %.sroa.077.5, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 ], [ 1, %bb.cr ], [ 1, %bb.dd ], [ 1, %bb.cs ], [ %.sroa.077.5, %bb.gv ]
  %.sroa.082.1244 = phi i8 [ 1, %bb.dc ], [ %.sroa.082.6, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagECsibhcYuwTAtB_13typst_realize.exit184 ], [ 1, %bb.cr ], [ 1, %bb.dd ], [ 1, %bb.cs ], [ %.sroa.082.6, %bb.gv ] ; 2 uses
  %i.sq = load ptr, ptr %i.bg, align 8, !noundef !11
  %i.sr = icmp ne ptr %i.sq, null
  %i.ss = trunc nuw i8 %.sroa.077.2245 to i1
  %or.cond9 = select i1 %i.sr, i1 %i.ss, i1 false
  br i1 %or.cond9, label %bb.gx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188

bb.gx:                                            ; preds = %.thread239
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188 unwind label %bb.eh

.thread247:                                       ; preds = %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188
  %.pn126251 = phi { ptr, i32 } [ %.pn126, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECsibhcYuwTAtB_13typst_realize.exit188 ], [ %.pn.pn.ph, %bb.dc ]
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.bh)
          to label %common.resume unwind label %bb.eh, !inline_history !5
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize17visit_regex_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 288230376151711744) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [15 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [15 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [15 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [15 x i8], align 8                ; 6 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 7 uses
  %i.aa = alloca [15 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [15 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 2 uses
  %.sroa.633 = alloca [16 x i8], align 8          ; 3 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [64 x i8], align 8               ; 14 uses
  %i.am = alloca [24 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 5 uses
  %i.ap = alloca [112 x i8], align 16             ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 8 uses
  %i.au = alloca [64 x i8], align 16              ; 7 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.az = load i64, ptr %i.ay, align 8, !noundef !11 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 55
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !11 ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bf = load i64, ptr %i.be, align 8
  %.not311 = icmp slt i8 %i.bb, 0
  %.sroa.01.0 = select i1 %.not311, i64 %i.bd, i64 %i.bf ; 2 uses
  %i.bg = add i64 %.sroa.01.0, %i.az              ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false)
  %.idx = shl nuw nsw i64 %2, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.bi = icmp eq i64 %2, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %.not.i.i.i121 = icmp eq i64 %.sroa.01.0, 0     ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aw, i64 15 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.553.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i238 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.8..8..8..8..8..sroa_idx1066 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.8..8..8..8..8..sroa_idx1067 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.8..8..8..8..8..sroa_idx1068 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.8..8..8..8..8..sroa_idx1069 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.8..8..8..8..8..sroa_idx1070 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.02.0481 = phi i64 [ 0, %.lr.ph ], [ %.sroa.02.0.be, %.backedge ] ; 10 uses
  %.sroa.04.0480 = phi ptr [ %1, %.lr.ph ], [ %i.cq, %.backedge ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.04.0480, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %.sroa.04.0480, align 8, !nonnull !11, !align !13, !noundef !11 ; 12 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.04.0480, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !11, !align !13, !noundef !11 ; 4 uses
  %i.cv = icmp eq ptr %i.cu, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.cv, label %bb.g, label %bb.f

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.cw = load ptr, ptr %i.al, align 8, !noundef !11
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.val.i = load ptr, ptr %i.cy, align 8          ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 55
  %.val1.i = load i8, ptr %i.cz, align 1, !noundef !11
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.da = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %bb.d
  %4 = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !2968
  %.not.i.i.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2968
  %i.db = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.db, align 8, !noalias !2968, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !2968
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i
  %i.dc = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.da, ptr %i.dd, align 8, !noalias !2968
  store i64 8, ptr %i.ai, align 8, !noalias !2968
  %i.de = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.dc, ptr %i.de, align 8, !noalias !2968
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !2968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2968
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

bb.f:                                             ; preds = %bb.b
  %i.df = icmp eq ptr %i.cu, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  br i1 %i.df, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.dg = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cs)
          to label %bb.fk unwind label %.loopexit ; 2 uses

bb.h:                                             ; preds = %bb.f
  %i.dh = icmp eq ptr %i.cu, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.dh, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.di = load ptr, ptr %i.cr, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 111
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !11 ; 2 uses
  %.not86 = icmp sgt i8 %i.dk, -1
  br i1 %.not86, label %bb.n, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.cr, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 111
  %i.dn = load i8, ptr %i.dm, align 1, !noundef !11 ; 2 uses
  %.not85 = icmp sgt i8 %i.dn, -1
  br i1 %.not85, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.n, %bb.o, %bb.l, %bb.m, %bb.h
  %.sroa.011.0 = phi i64 [ %i.ds, %bb.l ], [ 1, %bb.h ], [ %i.du, %bb.m ], [ %i.dy, %bb.o ], [ %i.dw, %bb.n ]
  %i.do = add i64 %.sroa.011.0, %.sroa.02.0481    ; 6 uses
  %i.dp = icmp ule i64 %i.do, %i.az
  %i.dq = icmp ule i64 %i.bg, %.sroa.02.0481
  %or.cond = or i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.p, label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 104
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !11
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  %i.dt = and i8 %i.dn, 127
  %i.du = zext nneg i8 %i.dt to i64
  br label %bb.k

bb.n:                                             ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  %i.dw = load i64, ptr %i.dv, align 8, !noundef !11
  br label %bb.k

bb.o:                                             ; preds = %bb.i
  %i.dx = and i8 %i.dk, 127
  %i.dy = zext nneg i8 %i.dx to i64
  br label %bb.k

bb.p:                                             ; preds = %bb.k
  %i.dz = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cs)
          to label %bb.fe unwind label %.loopexit ; 2 uses

bb.q:                                             ; preds = %bb.k
  %i.ea = icmp ult i64 %.sroa.02.0481, %i.az
  br i1 %i.ea, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.aw, %bb.q
  %.sroa.026.0.copyload = load ptr, ptr %i.al, align 8 ; 3 uses
  %.sroa.729.0.copyload = load ptr, ptr %.sroa.729.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr null, ptr %i.al, align 8
  %.not88 = icmp eq ptr %.sroa.026.0.copyload, null
  br i1 %.not88, label %bb.dp, label %bb.ay

bb.s:                                             ; preds = %bb.q
  %i.eb = sub nuw i64 %i.az, %.sroa.02.0481       ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br i1 %i.df, label %bb.aj, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = icmp eq ptr %i.cu, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ec, label %bb.v, label %.invoke, !prof !21

.invoke:                                          ; preds = %bb.t, %bb.dv
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.body.i:                                          ; preds = %bb.ag, %bb.ac, %bb.z, %bb.u
  %.pn.pn.i = phi { ptr, i32 } [ %i.fg, %bb.ag ], [ %lpad.phi316, %bb.ac ], [ %i.ed, %bb.u ], [ %i.eu, %bb.z ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body unwind label %bb.ah, !noalias !2969

bb.u:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2970
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc111 unwind label %.loopexit

.noexc111:                                        ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2970
  %i.ee = load ptr, ptr %i.af, align 8, !noalias !2970, !nonnull !11, !noundef !11 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 96 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 111
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !2971, !noalias !2969, !noundef !11 ; 2 uses
  %.not.i12.i = icmp sgt i8 %i.eh, -1             ; 2 uses
  %i.ei = and i8 %i.eh, 127
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = load ptr, ptr %i.ef, align 8, !alias.scope !2971, !noalias !2969, !nonnull !11
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !2971, !noalias !2969
  %.sroa.3.0.i13.i = select i1 %.not.i12.i, i64 %i.em, i64 %i.ej ; 3 uses
  %.sroa.0.0.i14.i = select i1 %.not.i12.i, ptr %i.ek, ptr %i.ef ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.eb, %.sroa.3.0.i13.i
  br i1 %.not.i.i.i, label %bb.w, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.noexc111
  %i.en = icmp eq i64 %i.eb, %.sroa.3.0.i13.i
  br i1 %i.en, label %bb.y, label %bb.x

bb.w:                                             ; preds = %.noexc111
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i, i64 %i.eb
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !2972, !noalias !2969, !noundef !11
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %.split.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i14.i, i64 noundef %.sroa.3.0.i13.i, i64 noundef 0, i64 noundef %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i unwind label %bb.u, !noalias !2969

.noexc.i:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w, %.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.er = icmp samesign ugt i64 %i.eb, 15
  br i1 %i.er, label %.lr.ph.i.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.ad, i8 0, i64 15, i1 false), !noalias !2973
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull readonly align 1 %.sroa.0.0.i14.i, i64 range(i64 0, -9223372036854775808) %i.eb, i1 false), !noalias !2974
  %.0..0..0..0..0..sroa.051.0.copyload52.pre.i = load ptr, ptr %i.ad, align 8, !noalias !2975
  %.8..8..8..8..8..sroa.553.0.copyload55.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx, align 8, !noalias !2975
  %i.es = zext i56 %.8..8..8..8..8..sroa.553.0.copyload55.pre.i to i64
  %i.et = shl nuw nsw i64 %i.eb, 56
  %.sroa.553.15.insert.shift.i = or disjoint i64 %i.et, %i.es
  %.sroa.553.15.insert.insert.i = or disjoint i64 %.sroa.553.15.insert.shift.i, -9223372036854775808
  br label %bb.ab

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2976
  store ptr inttoptr (i64 16 to ptr), ptr %i.ac, align 8, !noalias !2976
  store i64 0, ptr %i.bj, align 8, !noalias !2976
  call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.eb)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i unwind label %bb.z, !noalias !2978

bb.z:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !2976, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i.i) #31
          to label %.body.i unwind label %bb.aa, !noalias !2978

bb.aa:                                            ; preds = %bb.z
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2978
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ew = load ptr, ptr %i.ac, align 8, !alias.scope !2977, !noalias !2976, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !2977, !noalias !2976 ; 2 uses
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.ew, i64 %.promoted.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i, ptr nonnull readonly align 1 %.sroa.0.0.i14.i, i64 range(i64 0, -9223372036854775808) %i.eb, i1 false), !noalias !2979
  %i.ex = add i64 %.promoted.i.i.i.i, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2976
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.preheader.i.i.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i
  %.sroa.553.0.i = phi i64 [ %i.ex, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i ], [ %.sroa.553.15.insert.insert.i, %.lr.ph.preheader.i.i.i ]
  %.sroa.051.0.i = phi ptr [ %i.ew, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i ], [ %.0..0..0..0..0..sroa.051.0.copyload52.pre.i, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store ptr %.sroa.051.0.i, ptr %i.ae, align 8, !noalias !2970
  store i64 %.sroa.553.0.i, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !2970
  %i.ey = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.ad unwind label %bb.ag, !noalias !2969

.loopexit312:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.loopexit.split-lp313:                            ; preds = %bb.af
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit.split-lp313, %.loopexit312
  %lpad.phi316 = phi { ptr, i32 } [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !noalias !2969
  br label %.body.i

bb.ad:                                            ; preds = %bb.ab
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  store i128 0, ptr %i.ez, align 16, !noalias !2969
  %i.fa = load ptr, ptr %i.af, align 8, !noalias !2970, !nonnull !11, !noundef !11 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %.val.i.i = load ptr, ptr %i.fb, align 8, !alias.scope !2980, !noalias !2969 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 111
  %.val1.i.i = load i8, ptr %i.fc, align 1, !alias.scope !2980, !noalias !2969, !noundef !11
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.not.i.i.i.i.i.i107 = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  %i.fd = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i107, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %bb.ae
  %5 = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !2981
  %.not.i.i.i.i.i108 = icmp eq i64 %5, 1
  br i1 %.not.i.i.i.i.i108, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2982
  %i.fe = getelementptr i8, ptr %.val.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.fe, align 8, !noalias !2981, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, label %bb.af, !prof !21

bb.af:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc16.i unwind label %.loopexit.split-lp313, !noalias !2969

.noexc16.i:                                       ; preds = %bb.af
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  %i.ff = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  store ptr %i.fd, ptr %i.bk, align 8, !noalias !2982
  store i64 8, ptr %i.ab, align 8, !noalias !2982
  store i64 %i.ff, ptr %i.bl, align 8, !noalias !2982
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.noexc17.i unwind label %.loopexit312, !noalias !2969

.noexc17.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2982
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %.noexc17.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i, %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !2983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2970
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit

bb.ag:                                            ; preds = %bb.ab
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae) #31
          to label %.body.i unwind label %bb.ah, !noalias !2969

bb.ah:                                            ; preds = %bb.au, %.body32.i, %bb.ag, %.body.i
  %i.fh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2969
  unreachable

.body32.i:                                        ; preds = %bb.au, %bb.aq, %bb.an, %bb.ai
  %.pn8.pn.i = phi { ptr, i32 } [ %i.gl, %bb.au ], [ %lpad.phi321, %bb.aq ], [ %i.fi, %bb.ai ], [ %i.fz, %bb.an ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body unwind label %bb.ah, !noalias !2969

bb.ai:                                            ; preds = %bb.al
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body32.i

bb.aj:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2970
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc112 unwind label %.loopexit

.noexc112:                                        ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2970
  %i.fj = load ptr, ptr %i.ah, align 8, !noalias !2970, !nonnull !11, !noundef !11 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 96 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 111
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !2984, !noalias !2969, !noundef !11 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.fm, -1               ; 2 uses
  %i.fn = and i8 %i.fm, 127
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = load ptr, ptr %i.fk, align 8, !alias.scope !2984, !noalias !2969, !nonnull !11
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !2984, !noalias !2969
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.fr, i64 %i.fo ; 3 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.fp, ptr %i.fk ; 4 uses
  %.not.i.i19.i = icmp ult i64 %i.eb, %.sroa.3.0.i.i
  br i1 %.not.i.i19.i, label %bb.ak, label %.split.i.i20.i

.split.i.i20.i:                                   ; preds = %.noexc112
  %i.fs = icmp eq i64 %i.eb, %.sroa.3.0.i.i
  br i1 %i.fs, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.noexc112
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.eb
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !2985, !noalias !2969, !noundef !11
  %i.fv = icmp sgt i8 %i.fu, -65
  br i1 %i.fv, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.split.i.i20.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i, i64 noundef 0, i64 noundef %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc21.i unwind label %bb.ai, !noalias !2969

.noexc21.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak, %.split.i.i20.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.fw = icmp samesign ugt i64 %i.eb, 15
  br i1 %i.fw, label %.lr.ph.i.i.i26.i, label %.lr.ph.preheader.i.i24.i

.lr.ph.preheader.i.i24.i:                         ; preds = %bb.am
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.aa, i8 0, i64 15, i1 false), !noalias !2986
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull readonly align 1 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.eb, i1 false), !noalias !2987
  %.0..0..0..0..0..sroa.0.0.copyload48.pre.i = load ptr, ptr %i.aa, align 8, !noalias !2988
  %.8..8..8..8..8..sroa.5.0.copyload50.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx1066, align 8, !noalias !2988
  %i.fx = zext i56 %.8..8..8..8..8..sroa.5.0.copyload50.pre.i to i64
  %i.fy = shl nuw nsw i64 %i.eb, 56
  %.sroa.5.15.insert.shift.i = or disjoint i64 %i.fy, %i.fx
  %.sroa.5.15.insert.insert.i = or disjoint i64 %.sroa.5.15.insert.shift.i, -9223372036854775808
  br label %bb.ap

.lr.ph.i.i.i26.i:                                 ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2989
  store ptr inttoptr (i64 16 to ptr), ptr %i.z, align 8, !noalias !2989
  store i64 0, ptr %i.bm, align 8, !noalias !2989
  call void @llvm.experimental.noalias.scope.decl(metadata !2990)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.eb)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i unwind label %bb.an, !noalias !2991

bb.an:                                            ; preds = %.lr.ph.i.i.i26.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %.val.i.i27.i = load ptr, ptr %i.z, align 8, !noalias !2989, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i27.i) #31
          to label %.body32.i unwind label %bb.ao, !noalias !2991

bb.ao:                                            ; preds = %bb.an
  %i.ga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2991
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i: ; preds = %.lr.ph.i.i.i26.i
  %i.gb = load ptr, ptr %i.z, align 8, !alias.scope !2990, !noalias !2989, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i29.i = load i64, ptr %i.bm, align 8, !alias.scope !2990, !noalias !2989 ; 2 uses
  %scevgep.i.i.i30.i = getelementptr nuw i8, ptr %i.gb, i64 %.promoted.i.i.i29.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i30.i, ptr nonnull readonly align 1 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.eb, i1 false), !noalias !2992
  %i.gc = add i64 %.promoted.i.i.i29.i, %i.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2989
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i.i24.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i
  %.sroa.5.0.i = phi i64 [ %i.gc, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i ], [ %.sroa.5.15.insert.insert.i, %.lr.ph.preheader.i.i24.i ]
  %.sroa.0.0.i109 = phi ptr [ %i.gb, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i ], [ %.0..0..0..0..0..sroa.0.0.copyload48.pre.i, %.lr.ph.preheader.i.i24.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %.sroa.0.0.i109, ptr %i.ag, align 8, !noalias !2970
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2970
  %i.gd = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.ar unwind label %bb.au, !noalias !2969

.loopexit317:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp318:                            ; preds = %bb.at
  %lpad.loopexit.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp318, %.loopexit317
  %lpad.phi321 = phi { ptr, i32 } [ %lpad.loopexit319, %.loopexit317 ], [ %lpad.loopexit.split-lp320, %.loopexit.split-lp318 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !2969
  br label %.body32.i

bb.ar:                                            ; preds = %bb.ap
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  store i128 0, ptr %i.ge, align 16, !noalias !2969
  %i.gf = load ptr, ptr %i.ah, align 8, !noalias !2970, !nonnull !11, !noundef !11 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2993)
  %.val.i35.i = load ptr, ptr %i.gg, align 8, !alias.scope !2993, !noalias !2969 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 111
  %.val1.i36.i = load i8, ptr %i.gh, align 1, !alias.scope !2993, !noalias !2969, !noundef !11
  %.not.i.i.i37.i = icmp sgt i8 %.val1.i36.i, -1
  br i1 %.not.i.i.i37.i, label %bb.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i35.i) ]
  %.not.i.i.i.i.i38.i = icmp eq ptr %.val.i35.i, inttoptr (i64 16 to ptr)
  %i.gi = getelementptr inbounds i8, ptr %.val.i35.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i38.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i: ; preds = %bb.as
  %6 = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !2994
  %.not.i.i.i.i40.i = icmp eq i64 %6, 1
  br i1 %.not.i.i.i.i40.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2995
  %i.gj = getelementptr i8, ptr %.val.i35.i, i64 -8
  %.val.i.i.i.i.i42.i = load i64, ptr %i.gj, align 8, !noalias !2994, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i43.i = icmp ult i64 %.val.i.i.i.i.i42.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i43.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i, label %bb.at, !prof !21

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc45.i unwind label %.loopexit.split-lp318, !noalias !2969

.noexc45.i:                                       ; preds = %bb.at
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i
  %i.gk = add nuw nsw i64 %.val.i.i.i.i.i42.i, 16
  store ptr %i.gi, ptr %i.bn, align 8, !noalias !2995
  store i64 8, ptr %i.y, align 8, !noalias !2995
  store i64 %i.gk, ptr %i.bo, align 8, !noalias !2995
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.noexc46.i unwind label %.loopexit317, !noalias !2969

.noexc46.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2995
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i: ; preds = %.noexc46.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i, %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !2969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !2970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !2983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2970
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit

bb.au:                                            ; preds = %bb.ap
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ag) #31
          to label %.body32.i unwind label %bb.ah, !noalias !2969

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body.i186, %.body32.i225, %.body32.i, %.body.i, %.body154.thread, %.body154
  %.pn96 = phi { ptr, i32 } [ %.pn.pn, %.body154 ], [ %.pn.pn303, %.body154.thread ], [ %.pn8.pn.i, %.body32.i ], [ %.pn.pn.i, %.body.i ], [ %.pn8.pn.i226, %.body32.i225 ], [ %.pn.pn.i187, %.body.i186 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.al) #31
          to label %bb.fm unwind label %bb.dr

.loopexit:                                        ; preds = %bb.g, %bb.p, %bb.av, %bb.fb, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit, %bb.v, %bb.aj, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.dx, %bb.en
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke793, %.invoke, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i177
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i
  %.val106 = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11
  %i.gm = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val106, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.av unwind label %.loopexit

bb.av:                                            ; preds = %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range7RangeTojEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.gn = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gm, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cs)
          to label %bb.aw unwind label %.loopexit ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.go = extractvalue { ptr, i64 } %i.gn, 0      ; 2 uses
  %.not87 = icmp eq ptr %i.go, null
  br i1 %.not87, label %bb.r, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = extractvalue { ptr, i64 } %i.gn, 1
  br label %bb.fg

bb.ay:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.729.0.copyload) ]
  %.not89 = icmp ugt i64 %i.bg, %i.do
  br i1 %.not89, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtB9_4text8TextElemECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %i.cp)
          to label %bb.cp unwind label %.loopexit322

bb.ba:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.ct, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  %i.gs = icmp eq ptr %i.gq, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  %or.cond99 = or i1 %i.gr, %i.gs
  br i1 %or.cond99, label %bb.bb, label %bb.az

bb.bb:                                            ; preds = %bb.ba
  %i.gt = sub i64 %i.az, %.sroa.02.0481           ; 12 uses
  %i.gu = sub nuw i64 %i.bg, %.sroa.02.0481       ; 12 uses
  br i1 %i.gr, label %bb.by, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.gs, label %bb.bf, label %bb.bd, !prof !21

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc151 unwind label %.body154.thread662

.noexc151:                                        ; preds = %bb.bd
  unreachable

.body.i116:                                       ; preds = %bb.bv, %bb.br, %bb.bn, %bb.be
  %.pn.pn.i117 = phi { ptr, i32 } [ %i.ig, %bb.bv ], [ %lpad.phi331, %bb.br ], [ %i.gv, %bb.be ], [ %i.hu, %bb.bn ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body154.thread unwind label %bb.bw, !noalias !2996

bb.be:                                            ; preds = %bb.bk
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i116

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2997
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc152 unwind label %.loopexit322

.noexc152:                                        ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2997
  %i.gw = load ptr, ptr %i.v, align 8, !noalias !2997, !nonnull !11, !noundef !11 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 96 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 111
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !2998, !noalias !2996, !noundef !11 ; 2 uses
  %.not.i12.i113 = icmp sgt i8 %i.gz, -1          ; 2 uses
  %i.ha = and i8 %i.gz, 127
  %i.hb = zext nneg i8 %i.ha to i64
  %i.hc = load ptr, ptr %i.gx, align 8, !alias.scope !2998, !noalias !2996, !nonnull !11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 104
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !2998, !noalias !2996
  %.sroa.3.0.i13.i114 = select i1 %.not.i12.i113, i64 %i.he, i64 %i.hb ; 4 uses
  %.sroa.0.0.i14.i115 = select i1 %.not.i12.i113, ptr %i.hc, ptr %i.gx ; 4 uses
  %i.hf = icmp ugt i64 %i.gt, %i.gu
  %i.hg = icmp ugt i64 %i.gu, %.sroa.3.0.i13.i114
  %or.cond.i.i.i.i.i = or i1 %i.hf, %i.hg
  br i1 %or.cond.i.i.i.i.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %.noexc152
  %i.hh = icmp eq i64 %i.gt, %.sroa.3.0.i13.i114
  br i1 %i.hh, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hi = icmp eq i64 %i.az, %.sroa.02.0481
  br i1 %i.hi, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %bb.bh
  %i.hj = icmp eq i64 %i.gu, %.sroa.3.0.i13.i114
  br i1 %i.hj, label %bb.bl, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gt
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !2999, !noalias !2996, !noundef !11
  %i.hm = icmp sgt i8 %i.hl, -65
  br i1 %i.hm, label %bb.bi, label %bb.bk

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i: ; preds = %bb.bi
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gu
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !2999, !noalias !2996, !noundef !11
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.bj, %.noexc152
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i14.i115, i64 noundef %.sroa.3.0.i13.i114, i64 noundef %i.gt, i64 noundef %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i120 unwind label %bb.be, !noalias !2996

.noexc.i120:                                      ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i, %bb.bi, %bb.bg
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i115, i64 %i.gt ; 2 uses
  %i.hr = sub nuw i64 %i.gu, %i.gt                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.hs = icmp samesign ugt i64 %i.hr, 15
  br i1 %i.hs, label %.lr.ph.i.i.i.i136, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.t, i8 0, i64 15, i1 false), !noalias !3000
  br i1 %.not.i.i.i121, label %bb.bp, label %.lr.ph.preheader.i.i.i122

.lr.ph.preheader.i.i.i122:                        ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 1 %i.hq, i64 range(i64 0, -9223372036854775808) %i.hr, i1 false), !noalias !3001
  %.0..0..0..0..0..sroa.050.0.copyload51.pre.i = load ptr, ptr %i.t, align 8, !noalias !3002
  %.8..8..8..8..8..sroa.552.0.copyload54.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx1067, align 8, !noalias !3002
  %i.ht = zext i56 %.8..8..8..8..8..sroa.552.0.copyload54.pre.i to i64
  br label %bb.bp

.lr.ph.i.i.i.i136:                                ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3003
  store ptr inttoptr (i64 16 to ptr), ptr %i.s, align 8, !noalias !3003
  store i64 0, ptr %i.bq, align 8, !noalias !3003
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.hr)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 unwind label %bb.bn, !noalias !3005

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i136
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i137 = load ptr, ptr %i.s, align 8, !noalias !3003, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i.i137) #31
          to label %.body.i116 unwind label %bb.bo, !noalias !3005

bb.bo:                                            ; preds = %bb.bn
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3005
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138: ; preds = %.lr.ph.i.i.i.i136
  %i.hw = load ptr, ptr %i.s, align 8, !alias.scope !3004, !noalias !3003, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i139 = load i64, ptr %i.bq, align 8, !alias.scope !3004, !noalias !3003 ; 2 uses
  %scevgep.i.i.i.i140 = getelementptr nuw i8, ptr %i.hw, i64 %.promoted.i.i.i.i139
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i140, ptr nonnull readonly align 1 %i.hq, i64 range(i64 0, -9223372036854775808) %i.hr, i1 false), !noalias !3006
  %i.hx = add i64 %.promoted.i.i.i.i139, %i.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3003
  br label %bb.bq

bb.bp:                                            ; preds = %.lr.ph.preheader.i.i.i122, %bb.bm
  %.8..8..sroa.552.0.copyload54.i = phi i64 [ %i.ht, %.lr.ph.preheader.i.i.i122 ], [ 0, %bb.bm ]
  %.0..0..sroa.050.0.copyload51.i = phi ptr [ %.0..0..0..0..0..sroa.050.0.copyload51.pre.i, %.lr.ph.preheader.i.i.i122 ], [ null, %bb.bm ]
  %.sroa.552.15.insert.ext.i = shl nuw nsw i64 %i.hr, 56
  %.sroa.552.15.insert.shift.i = or disjoint i64 %.8..8..sroa.552.0.copyload54.i, %.sroa.552.15.insert.ext.i
  %.sroa.552.15.insert.insert.i = or disjoint i64 %.sroa.552.15.insert.shift.i, -9223372036854775808
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138
  %.sroa.552.0.i = phi i64 [ %i.hx, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 ], [ %.sroa.552.15.insert.insert.i, %bb.bp ]
  %.sroa.050.0.i = phi ptr [ %i.hw, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i138 ], [ %.0..0..sroa.050.0.copyload51.i, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store ptr %.sroa.050.0.i, ptr %i.u, align 8, !noalias !2997
  store i64 %.sroa.552.0.i, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !2997
  %i.hy = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.bs unwind label %bb.bv, !noalias !2996

.loopexit327:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i134
  %lpad.loopexit329 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp328:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp330 = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp328, %.loopexit327
  %lpad.phi331 = phi { ptr, i32 } [ %lpad.loopexit329, %.loopexit327 ], [ %lpad.loopexit.split-lp330, %.loopexit.split-lp328 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !2996
  br label %.body.i116

bb.bs:                                            ; preds = %bb.bq
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 64
  store i128 0, ptr %i.hz, align 16, !noalias !2996
  %i.ia = load ptr, ptr %i.v, align 8, !noalias !2997, !nonnull !11, !noundef !11 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3007)
  %.val.i.i124 = load ptr, ptr %i.ib, align 8, !alias.scope !3007, !noalias !2996 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 111
  %.val1.i.i125 = load i8, ptr %i.ic, align 1, !alias.scope !3007, !noalias !2996, !noundef !11
  %.not.i.i.i.i126 = icmp sgt i8 %.val1.i.i125, -1
  br i1 %.not.i.i.i.i126, label %bb.bt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i124) ]
  %.not.i.i.i.i.i.i128 = icmp eq ptr %.val.i.i124, inttoptr (i64 16 to ptr)
  %i.id = getelementptr inbounds i8, ptr %.val.i.i124, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i128, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129: ; preds = %bb.bt
  %7 = atomicrmw sub ptr %i.id, i64 1 release, align 8, !noalias !3008
  %.not.i.i.i.i.i130 = icmp eq i64 %7, 1
  br i1 %.not.i.i.i.i.i130, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3009
  %i.ie = getelementptr i8, ptr %.val.i.i124, i64 -8
  %.val.i.i.i.i.i.i132 = load i64, ptr %i.ie, align 8, !noalias !3008, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i133 = icmp ult i64 %.val.i.i.i.i.i.i132, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i133, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i134, label %bb.bu, !prof !21

bb.bu:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc15.i unwind label %.loopexit.split-lp328, !noalias !2996

.noexc15.i:                                       ; preds = %bb.bu
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i134: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i131
  %i.if = add nuw nsw i64 %.val.i.i.i.i.i.i132, 16
  store ptr %i.id, ptr %i.br, align 8, !noalias !3009
  store i64 8, ptr %i.r, align 8, !noalias !3009
  store i64 %i.if, ptr %i.bs, align 8, !noalias !3009
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.noexc16.i135 unwind label %.loopexit327, !noalias !2996

.noexc16.i135:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3009
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127: ; preds = %.noexc16.i135, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i129, %bb.bt, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !2996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2997
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit

bb.bv:                                            ; preds = %bb.bq
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #31
          to label %.body.i116 unwind label %bb.bw, !noalias !2996

bb.bw:                                            ; preds = %bb.co, %.body31.i, %bb.bv, %.body.i116
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !2996
  unreachable

.body31.i:                                        ; preds = %bb.co, %bb.ck, %bb.cg, %bb.bx
  %.pn8.pn.i144 = phi { ptr, i32 } [ %i.jt, %bb.co ], [ %lpad.phi336, %bb.ck ], [ %i.ii, %bb.bx ], [ %i.jh, %bb.cg ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body154.thread unwind label %bb.bw, !noalias !2996

bb.bx:                                            ; preds = %bb.cd
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

bb.by:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2997
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc153 unwind label %.loopexit322

.noexc153:                                        ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2997
  %i.ij = load ptr, ptr %i.x, align 8, !noalias !2997, !nonnull !11, !noundef !11 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 96 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 111
  %i.im = load i8, ptr %i.il, align 1, !alias.scope !3011, !noalias !2996, !noundef !11 ; 2 uses
  %.not.i.i141 = icmp sgt i8 %i.im, -1            ; 2 uses
  %i.in = and i8 %i.im, 127
  %i.io = zext nneg i8 %i.in to i64
  %i.ip = load ptr, ptr %i.ik, align 8, !alias.scope !3011, !noalias !2996, !nonnull !11
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !3011, !noalias !2996
  %.sroa.3.0.i.i142 = select i1 %.not.i.i141, i64 %i.ir, i64 %i.io ; 4 uses
  %.sroa.0.0.i.i143 = select i1 %.not.i.i141, ptr %i.ip, ptr %i.ik ; 4 uses
  %i.is = icmp ugt i64 %i.gt, %i.gu
  %i.it = icmp ugt i64 %i.gu, %.sroa.3.0.i.i142
  %or.cond.i.i.i.i18.i = or i1 %i.is, %i.it
  br i1 %or.cond.i.i.i.i18.i, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %.noexc153
  %i.iu = icmp eq i64 %i.gt, %.sroa.3.0.i.i142
  br i1 %i.iu, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iv = icmp eq i64 %i.az, %.sroa.02.0481
  br i1 %i.iv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.cc, %bb.ca
  %i.iw = icmp eq i64 %i.gu, %.sroa.3.0.i.i142
  br i1 %i.iw, label %bb.ce, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i19.i

bb.cc:                                            ; preds = %bb.ca
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143, i64 %i.gt
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !3012, !noalias !2996, !noundef !11
  %i.iz = icmp sgt i8 %i.iy, -65
  br i1 %i.iz, label %bb.cb, label %bb.cd

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i19.i: ; preds = %bb.cb
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143, i64 %i.gu
  %i.jb = load i8, ptr %i.ja, align 1, !alias.scope !3012, !noalias !2996, !noundef !11
  %i.jc = icmp sgt i8 %i.jb, -65
  br i1 %i.jc, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i19.i, %bb.cc, %.noexc153
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i143, i64 noundef %.sroa.3.0.i.i142, i64 noundef %i.gt, i64 noundef %i.gu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc20.i unwind label %bb.bx, !noalias !2996

.noexc20.i:                                       ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i19.i, %bb.cb, %bb.bz
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i143, i64 %i.gt ; 2 uses
  %i.je = sub nuw i64 %i.gu, %i.gt                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.jf = icmp samesign ugt i64 %i.je, 15
  br i1 %i.jf, label %.lr.ph.i.i.i25.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.q, i8 0, i64 15, i1 false), !noalias !3013
  br i1 %.not.i.i.i121, label %bb.ci, label %.lr.ph.preheader.i.i23.i

.lr.ph.preheader.i.i23.i:                         ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 1 %i.jd, i64 range(i64 0, -9223372036854775808) %i.je, i1 false), !noalias !3014
  %.0..0..0..0..0..sroa.0.0.copyload47.pre.i = load ptr, ptr %i.q, align 8, !noalias !3015
  %.8..8..8..8..8..sroa.5.0.copyload49.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx1068, align 8, !noalias !3015
  %i.jg = zext i56 %.8..8..8..8..8..sroa.5.0.copyload49.pre.i to i64
  br label %bb.ci

.lr.ph.i.i.i25.i:                                 ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3016
  store ptr inttoptr (i64 16 to ptr), ptr %i.p, align 8, !noalias !3016
  store i64 0, ptr %i.bt, align 8, !noalias !3016
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, i64 noundef range(i64 0, -9223372036854775808) %i.je)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i27.i unwind label %bb.cg, !noalias !3018

bb.cg:                                            ; preds = %.lr.ph.i.i.i25.i
  %i.jh = landingpad { ptr, i32 }
          cleanup
  %.val.i.i26.i = load ptr, ptr %i.p, align 8, !noalias !3016, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i26.i) #31
          to label %.body31.i unwind label %bb.ch, !noalias !3018

bb.ch:                                            ; preds = %bb.cg
  %i.ji = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3018
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i27.i: ; preds = %.lr.ph.i.i.i25.i
  %i.jj = load ptr, ptr %i.p, align 8, !alias.scope !3017, !noalias !3016, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i28.i = load i64, ptr %i.bt, align 8, !alias.scope !3017, !noalias !3016 ; 2 uses
  %scevgep.i.i.i29.i = getelementptr nuw i8, ptr %i.jj, i64 %.promoted.i.i.i28.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i29.i, ptr nonnull readonly align 1 %i.jd, i64 range(i64 0, -9223372036854775808) %i.je, i1 false), !noalias !3019
  %i.jk = add i64 %.promoted.i.i.i28.i, %i.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3016
  br label %bb.cj

bb.ci:                                            ; preds = %.lr.ph.preheader.i.i23.i, %bb.cf
  %.8..8..sroa.5.0.copyload49.i = phi i64 [ %i.jg, %.lr.ph.preheader.i.i23.i ], [ 0, %bb.cf ]
  %.0..0..sroa.0.0.copyload47.i = phi ptr [ %.0..0..0..0..0..sroa.0.0.copyload47.pre.i, %.lr.ph.preheader.i.i23.i ], [ null, %bb.cf ]
  %.sroa.5.15.insert.ext.i = shl nuw nsw i64 %i.je, 56
  %.sroa.5.15.insert.shift.i145 = or disjoint i64 %.8..8..sroa.5.0.copyload49.i, %.sroa.5.15.insert.ext.i
  %.sroa.5.15.insert.insert.i146 = or disjoint i64 %.sroa.5.15.insert.shift.i145, -9223372036854775808
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i27.i
  %.sroa.5.0.i147 = phi i64 [ %i.jk, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i27.i ], [ %.sroa.5.15.insert.insert.i146, %bb.ci ]
  %.sroa.0.0.i148 = phi ptr [ %i.jj, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i27.i ], [ %.0..0..sroa.0.0.copyload47.i, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %.sroa.0.0.i148, ptr %i.w, align 8, !noalias !2997
  store i64 %.sroa.5.0.i147, ptr %.sroa.5.0..sroa_idx.i149, align 8, !noalias !2997
  %i.jl = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %bb.cl unwind label %bb.co, !noalias !2996

.loopexit332:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i43.i
  %lpad.loopexit334 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp333:                            ; preds = %bb.cn
  %lpad.loopexit.split-lp335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp333, %.loopexit332
  %lpad.phi336 = phi { ptr, i32 } [ %lpad.loopexit334, %.loopexit332 ], [ %lpad.loopexit.split-lp335, %.loopexit.split-lp333 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !2996
  br label %.body31.i

bb.cl:                                            ; preds = %bb.cj
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 64
  store i128 0, ptr %i.jm, align 16, !noalias !2996
  %i.jn = load ptr, ptr %i.x, align 8, !noalias !2997, !nonnull !11, !noundef !11 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3020)
  %.val.i34.i = load ptr, ptr %i.jo, align 8, !alias.scope !3020, !noalias !2996 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 111
  %.val1.i35.i = load i8, ptr %i.jp, align 1, !alias.scope !3020, !noalias !2996, !noundef !11
  %.not.i.i.i36.i = icmp sgt i8 %.val1.i35.i, -1
  br i1 %.not.i.i.i36.i, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34.i) ]
  %.not.i.i.i.i.i37.i = icmp eq ptr %.val.i34.i, inttoptr (i64 16 to ptr)
  %i.jq = getelementptr inbounds i8, ptr %.val.i34.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i37.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i38.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i38.i: ; preds = %bb.cm
  %8 = atomicrmw sub ptr %i.jq, i64 1 release, align 8, !noalias !3021
  %.not.i.i.i.i39.i = icmp eq i64 %8, 1
  br i1 %.not.i.i.i.i39.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i40.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i40.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i38.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3022
  %i.jr = getelementptr i8, ptr %.val.i34.i, i64 -8
  %.val.i.i.i.i.i41.i = load i64, ptr %i.jr, align 8, !noalias !3021, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i42.i = icmp ult i64 %.val.i.i.i.i.i41.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i42.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i43.i, label %bb.cn, !prof !21

bb.cn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i40.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc44.i unwind label %.loopexit.split-lp333, !noalias !2996

.noexc44.i:                                       ; preds = %bb.cn
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i43.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i40.i
  %i.js = add nuw nsw i64 %.val.i.i.i.i.i41.i, 16
  store ptr %i.jq, ptr %i.bu, align 8, !noalias !3022
  store i64 8, ptr %i.o, align 8, !noalias !3022
  store i64 %i.js, ptr %i.bv, align 8, !noalias !3022
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.noexc45.i150 unwind label %.loopexit332, !noalias !2996

.noexc45.i150:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i43.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3022
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i: ; preds = %.noexc45.i150, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i38.i, %bb.cm, %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jo, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !2996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2997
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit

bb.co:                                            ; preds = %bb.cj
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w) #31
          to label %.body31.i unwind label %bb.bw, !noalias !2996

.body154:                                         ; preds = %.loopexit322, %.body157.thread.thread308, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.060.0 = phi i8 [ %.sroa.060.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.060.2, %.body157.thread.thread308 ], [ %.sroa.060.1.ph, %.loopexit322 ]
  %.pn.pn = phi { ptr, i32 } [ %.pn286, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit ], [ %lpad.thr_comm306, %.body157.thread.thread308 ], [ %lpad.loopexit324, %.loopexit322 ] ; 2 uses
  %i.ju = trunc nuw i8 %.sroa.060.0 to i1
  br i1 %i.ju, label %.body154.thread, label %.body

.loopexit322:                                     ; preds = %bb.az, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit, %bb.bf, %bb.by
  %.sroa.060.1.ph = phi i8 [ 1, %bb.bf ], [ 0, %bb.az ], [ 1, %bb.by ], [ %.sroa.060.2, %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit ]
  %lpad.loopexit324 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.body154.thread662:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp325 = landingpad { ptr, i32 }
          cleanup
  br label %.body154.thread

bb.cp:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.jv = load i64, ptr %i.bw, align 8, !range !14, !noundef !11
  %i.jw = icmp eq i64 %i.jv, 1
  br i1 %i.jw, label %bb.cq, label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit

bb.cq:                                            ; preds = %bb.cp
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !range !14, !noundef !11
  store i64 %i.jy, ptr %i.bw, align 8
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit

_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127, %bb.cq, %bb.cp
  %.sroa.060.2 = phi i8 [ 0, %bb.cp ], [ 0, %bb.cq ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i127 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit46.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633, i64 16, i1 false)
  store i128 0, ptr %i.au, align 16
  store ptr %.sroa.026.0.copyload, ptr %i.bx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.jz = load ptr, ptr %i.by, align 8, !nonnull !11, !align !13, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.ka = atomicrmw add ptr @_RNvNtCsloFShupyl5J_6comemo10accelerate2ID, i64 1 seq_cst, align 8
  store ptr %i.au, ptr %i.ar, align 8
  store ptr null, ptr %i.bz, align 8
  store i64 %i.ka, ptr %i.ca, align 8
  invoke void @_RNvMsh_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_6Recipe5apply(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %.sroa.729.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.jz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.cr unwind label %.loopexit322

bb.cr:                                            ; preds = %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.kb = load ptr, ptr %i.as, align 8, !noundef !11 ; 2 uses
  %i.kc = icmp eq ptr %i.kb, null
  %i.kd = load ptr, ptr %.sroa.477.0..sroa_idx, align 8 ; 2 uses
  %i.ke = load i64, ptr %.sroa.578.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br i1 %i.kc, label %.loopexit921, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.kb, ptr %i.at, align 8
  store ptr %i.kd, ptr %.sroa.445.0..sroa_idx, align 8
  store i64 %i.ke, ptr %.sroa.546.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 %.sroa.9.0.copyload, ptr %i.cb, align 8
  store i64 5, ptr %i.ap, align 16
  %i.kf = invoke { ptr, i64 } @_RNvXs1_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_6StylesINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_5StyleE4from(ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.ap)
          to label %bb.ct unwind label %.thread   ; 2 uses

.body157.thread.thread308:                        ; preds = %bb.di, %bb.dj
  %lpad.thr_comm306 = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.body157.thread:                                  ; preds = %bb.dd
  %lpad.thr_comm.split-lp307 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit

.thread:                                          ; preds = %bb.cs
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit

bb.ct:                                            ; preds = %bb.cs
  %i.kh = extractvalue { ptr, i64 } %i.kf, 0      ; 5 uses
  %i.ki = extractvalue { ptr, i64 } %i.kf, 1      ; 5 uses
  store ptr %i.kh, ptr %i.aq, align 8
  store i64 %i.ki, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.kj = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 128
  %i.kl = load ptr, ptr %i.kk, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ko = load ptr, ptr %i.kl, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = and i64 %i.kp, 7
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr i8, ptr %i.kn, i64 %i.kr  ; 3 uses
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = icmp ult ptr %i.ks, %i.ko
  %i.kx = icmp ult i64 %i.kv, 24
  %or.cond.i = or i1 %i.kw, %i.kx
  br i1 %or.cond.i, label %bb.cu, label %.noexc101

.noexc101:                                        ; preds = %bb.ct
  %i.ky = getelementptr i8, ptr %i.ks, i64 -24    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ky) ]
  store ptr %i.ky, ptr %i.km, align 8
  br label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kj, i64 112
  %i.la = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.kz, i64 noundef 8, i64 noundef 24) #33
          to label %.noexc102 unwind label %.loopexit337 ; 2 uses

.noexc102:                                        ; preds = %bb.cu
  %.not5.i = icmp eq ptr %i.la, null
  br i1 %.not5.i, label %bb.cv, label %bb.cw, !prof !12

bb.cv:                                            ; preds = %.noexc102
  invoke void @_RNvCsaPYV88GQHqL_7bumpalo3oom() #27
          to label %.noexc103 unwind label %.loopexit.split-lp338

.noexc103:                                        ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %.noexc102, %.noexc101
  %.sroa.0.0.i = phi ptr [ %i.ky, %.noexc101 ], [ %i.la, %.noexc102 ] ; 4 uses
  %.sroa.4278.0..sroa.0.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4278.0..sroa.0.0.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.633, i64 16, i1 false)
  store ptr %.sroa.026.0.copyload, ptr %.sroa.0.0.i, align 8, !noalias !3023
  %i.lb = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.kh, ptr %i.n, align 8, !noalias !3024
  store i64 %i.ki, ptr %i.cd, align 8, !noalias !3024
  %i.ld = load i64, ptr %i.lc, align 8, !noalias !3024, !noundef !11
  %.not.i156 = icmp eq i64 %i.ld, 0
  br i1 %.not.i156, label %bb.cx, label %bb.cy, !prof !21

bb.cx:                                            ; preds = %bb.cw
  store i64 -1, ptr %i.lc, align 8, !noalias !3024
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 80 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !noalias !3024, !noundef !11 ; 5 uses
  %i.lh = icmp ult i64 %i.lg, 576460752303423488
  call void @llvm.assume(i1 %i.lh)
  %i.li = load i64, ptr %i.le, align 8, !range !16, !noalias !3024, !noundef !11
  %i.lj = icmp samesign ult i64 %i.lg, %i.li
  br i1 %i.lj, label %.thread296, label %bb.dc

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #30
          to label %bb.da unwind label %bb.db, !noalias !3024

.thread296:                                       ; preds = %bb.cx
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lb, i64 72 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !3025, !noalias !3024
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.lg ; 2 uses
  store ptr %i.kh, ptr %i.lk, align 8, !noalias !3024
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store i64 %i.ki, ptr %i.ll, align 8, !noalias !3024
  %i.lm = add nuw nsw i64 %i.lg, 1
  store i64 %i.lm, ptr %i.lf, align 8, !alias.scope !3025, !noalias !3024
  %i.ln = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !3024, !nonnull !11, !noundef !11
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.ln, i64 %i.lg
  %i.lp = ptrtoint ptr %i.lo to i64
  %.pre10.i = load i64, ptr %i.lc, align 8, !noalias !3024
  %i.lq = add i64 %.pre10.i, 1
  store i64 %i.lq, ptr %i.lc, align 8, !noalias !3024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.de

bb.cz:                                            ; preds = %bb.db
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3024
  unreachable

bb.da:                                            ; preds = %bb.cy
  unreachable

bb.db:                                            ; preds = %bb.cy
  %i.ls = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.cz, !noalias !3024, !inline_history !5

bb.dc:                                            ; preds = %bb.cx
  store i64 0, ptr %i.lc, align 8, !noalias !3024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not90 = icmp eq ptr %i.kh, null
  br i1 %.not90, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lt = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsauuqoTeRoFb_11typed_arenaINtB2_5ArenaNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesE15alloc_slow_pathCsibhcYuwTAtB_13typst_realize(ptr noundef nonnull align 8 %i.lc, ptr noundef nonnull %i.kh, i64 noundef %i.ki)
          to label %bb.df unwind label %.body157.thread

bb.de:                                            ; preds = %.thread296, %bb.dc
  %.sroa.5.0300 = phi i64 [ %i.lp, %.thread296 ], [ %i.ki, %bb.dc ]
  %i.lu = inttoptr i64 %.sroa.5.0300 to ptr
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.sroa.047.0 = phi ptr [ %i.lu, %bb.de ], [ %i.lt, %bb.dd ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !noundef !11 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i, i64 24, i1 false)
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.ly = load ptr, ptr %.sroa.047.0, align 8, !nonnull !11, !noundef !11
  store ptr %i.ly, ptr %i.ao, align 8
  store i64 %i.lw, ptr %i.ce, align 8
  store ptr %.sroa.0.0.i, ptr %i.cf, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %.val105 = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11
  %i.lz = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val105, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.dj unwind label %.body157.thread.thread308

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ma = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.dk unwind label %.body157.thread.thread308 ; 2 uses

bb.dk:                                            ; preds = %bb.dj
  %i.mb = extractvalue { ptr, i64 } %i.ma, 0      ; 2 uses
  %.not93 = icmp eq ptr %i.mb, null
  br i1 %.not93, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.mc = extractvalue { ptr, i64 } %i.ma, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %.loopexit921

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.md = trunc nuw i8 %.sroa.060.2 to i1
  br i1 %i.md, label %bb.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc165, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %bb.do, %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  %.val.i159 = load ptr, ptr %i.aw, align 8, !alias.scope !3026 ; 4 uses
  %.val1.i160 = load i8, ptr %i.cg, align 1, !alias.scope !3026, !noundef !11
  %.not.i.i.i161 = icmp sgt i8 %.val1.i160, -1
  br i1 %.not.i.i.i161, label %bb.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.do:                                            ; preds = %bb.dn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i159) ]
  %.not.i.i.i.i.i162 = icmp eq ptr %.val.i159, inttoptr (i64 16 to ptr)
  %i.me = getelementptr inbounds i8, ptr %.val.i159, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i162, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %bb.do
  %9 = atomicrmw sub ptr %i.me, i64 1 release, align 8, !noalias !3026
  %.not.i.i.i.i163 = icmp eq i64 %9, 1
  br i1 %.not.i.i.i.i163, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3026
  %i.mf = getelementptr i8, ptr %.val.i159, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.mf, align 8, !noalias !3026, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, label %.invoke793, !prof !21

.invoke793:                                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i174
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.cont794 unwind label %.loopexit.split-lp

.cont794:                                         ; preds = %.invoke793
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  %i.mg = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.me, ptr %i.ch, align 8, !noalias !3026
  store i64 8, ptr %i.m, align 8, !noalias !3026
  store i64 %i.mg, ptr %i.ci, align 8, !noalias !3026
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc165 unwind label %.loopexit

.noexc165:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3026
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit

bb.dp:                                            ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit
  %i.mh = icmp ugt i64 %i.do, %i.bg
  br i1 %i.mh, label %bb.du, label %.backedge

.loopexit921:                                     ; preds = %bb.cr, %bb.dl
  %.sroa.8.0 = phi i64 [ %i.mc, %bb.dl ], [ %i.ke, %bb.cr ]
  %.sroa.0.0 = phi ptr [ %i.mb, %bb.dl ], [ %i.kd, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.mi = trunc nuw i8 %.sroa.060.2 to i1
  br i1 %i.mi, label %bb.ds, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180

.loopexit337:                                     ; preds = %bb.cu
  %lpad.loopexit339 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

.loopexit.split-lp338:                            ; preds = %bb.cv
  %lpad.loopexit.split-lp340 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dq:                                            ; preds = %.loopexit.split-lp338, %.loopexit337
  %lpad.phi341 = phi { ptr, i32 } [ %lpad.loopexit339, %.loopexit337 ], [ %lpad.loopexit.split-lp340, %.loopexit.split-lp338 ]
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.dr, !inline_history !5

bb.dr:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit, %bb.dq, %.body154.thread, %.body
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.db, %.body157.thread, %bb.dq, %.thread
  %.pn286 = phi { ptr, i32 } [ %i.kg, %.thread ], [ %lpad.thr_comm.split-lp307, %.body157.thread ], [ %lpad.phi341, %bb.dq ], [ %i.ls, %bb.db ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body154 unwind label %bb.dr

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180: ; preds = %.noexc179, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i172, %bb.dt, %bb.ds, %.loopexit921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.fg

bb.ds:                                            ; preds = %.loopexit921
  call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  %.val.i168 = load ptr, ptr %i.aw, align 8, !alias.scope !3027 ; 4 uses
  %.val1.i169 = load i8, ptr %i.cg, align 1, !alias.scope !3027, !noundef !11
  %.not.i.i.i170 = icmp sgt i8 %.val1.i169, -1
  br i1 %.not.i.i.i170, label %bb.dt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i168) ]
  %.not.i.i.i.i.i171 = icmp eq ptr %.val.i168, inttoptr (i64 16 to ptr)
  %i.mk = getelementptr inbounds i8, ptr %.val.i168, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i171, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i172

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i172: ; preds = %bb.dt
  %10 = atomicrmw sub ptr %i.mk, i64 1 release, align 8, !noalias !3027
  %.not.i.i.i.i173 = icmp eq i64 %10, 1
  br i1 %.not.i.i.i.i173, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i174, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i174: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i172
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3027
  %i.ml = getelementptr i8, ptr %.val.i168, i64 -8
  %.val.i.i.i.i.i175 = load i64, ptr %i.ml, align 8, !noalias !3027, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i176 = icmp ult i64 %.val.i.i.i.i.i175, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i176, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i177, label %.invoke793, !prof !21

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i177: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i174
  %i.mm = add nuw nsw i64 %.val.i.i.i.i.i175, 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.mk, ptr %i.mn, align 8, !noalias !3027
  store i64 8, ptr %i.l, align 8, !noalias !3027
  %i.mo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.mm, ptr %i.mo, align 8, !noalias !3027
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc179 unwind label %.loopexit.split-lp

.noexc179:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3027
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180

.body154.thread:                                  ; preds = %.body154.thread662, %.body31.i, %.body.i116, %.body154
  %.pn.pn303 = phi { ptr, i32 } [ %.pn.pn, %.body154 ], [ %.pn.pn.i117, %.body.i116 ], [ %.pn8.pn.i144, %.body31.i ], [ %lpad.loopexit.split-lp325, %.body154.thread662 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aw) #31
          to label %.body unwind label %bb.dr

.backedge:                                        ; preds = %bb.fe, %bb.fk, %bb.dp, %bb.fc
  %.sroa.02.0.be = phi i64 [ %i.do, %bb.dp ], [ %i.do, %bb.fc ], [ %i.do, %bb.fe ], [ %.sroa.02.0481, %bb.fk ]
  %i.mp = icmp eq ptr %i.cq, %i.bh
  br i1 %i.mp, label %._crit_edge, label %bb.b

bb.du:                                            ; preds = %bb.dp
  %i.mq = sub nuw i64 %i.bg, %.sroa.02.0481       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  %i.mr = load ptr, ptr %i.ct, align 8, !alias.scope !3028, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.ms = icmp eq ptr %i.mr, @_RNvNvXs0_NvNtCsdaEETE4DqmE_13typst_library4text1__NtB9_8TextElemNtNtNtNtBb_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ms, label %bb.en, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mt = icmp eq ptr %i.mr, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library11foundations6symbol1__NtB9_10SymbolElemNtNtNtBb_7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.mt, label %bb.dx, label %.invoke, !prof !21

.body.i186:                                       ; preds = %bb.ek, %bb.eg, %bb.ec, %bb.dw
  %.pn.pn.i187 = phi { ptr, i32 } [ %i.ny, %bb.ek ], [ %lpad.phi346, %bb.eg ], [ %i.mu, %bb.dw ], [ %i.nm, %bb.ec ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.el, !noalias !3029

bb.dw:                                            ; preds = %bb.dz
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i186

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3030
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc258 unwind label %.loopexit

.noexc258:                                        ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3030
  %i.mv = load ptr, ptr %i.i, align 8, !noalias !3030, !nonnull !11, !noundef !11 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 96 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 111
  %i.my = load i8, ptr %i.mx, align 1, !alias.scope !3031, !noalias !3029, !noundef !11 ; 2 uses
  %.not.i12.i181 = icmp sgt i8 %i.my, -1          ; 2 uses
  %i.mz = and i8 %i.my, 127
  %i.na = zext nneg i8 %i.mz to i64
  %i.nb = load ptr, ptr %i.mw, align 8, !alias.scope !3031, !noalias !3029, !nonnull !11
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 104
  %i.nd = load i64, ptr %i.nc, align 8, !alias.scope !3031, !noalias !3029
  %.sroa.3.0.i13.i182 = select i1 %.not.i12.i181, i64 %i.nd, i64 %i.na ; 6 uses
  %.sroa.0.0.i14.i183 = select i1 %.not.i12.i181, ptr %i.nb, ptr %i.mw ; 3 uses
  %.not.i.i.i184 = icmp ult i64 %i.mq, %.sroa.3.0.i13.i182
  br i1 %.not.i.i.i184, label %bb.dy, label %.split.i.i.i185

.split.i.i.i185:                                  ; preds = %.noexc258
  %i.ne = icmp eq i64 %i.mq, %.sroa.3.0.i13.i182
  br i1 %i.ne, label %bb.ea, label %bb.dz

bb.dy:                                            ; preds = %.noexc258
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i183, i64 %i.mq
  %i.ng = load i8, ptr %i.nf, align 1, !alias.scope !3032, !noalias !3029, !noundef !11
  %i.nh = icmp sgt i8 %i.ng, -65
  br i1 %i.nh, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.split.i.i.i185
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i14.i183, i64 noundef %.sroa.3.0.i13.i182, i64 noundef %i.mq, i64 noundef %.sroa.3.0.i13.i182, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i190 unwind label %bb.dw, !noalias !3029

.noexc.i190:                                      ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dy, %.split.i.i.i185
  %i.ni = sub nuw i64 %.sroa.3.0.i13.i182, %i.mq  ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i14.i183, i64 %i.mq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.nk = icmp samesign ugt i64 %i.ni, 15
  br i1 %i.nk, label %.lr.ph.i.i.i.i215, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.g, i8 0, i64 15, i1 false), !noalias !3033
  %.not.i.i15.i = icmp eq i64 %.sroa.3.0.i13.i182, %i.mq
  br i1 %.not.i.i15.i, label %bb.ee, label %.lr.ph.preheader.i.i.i191

.lr.ph.preheader.i.i.i191:                        ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull readonly align 1 %i.nj, i64 range(i64 0, -9223372036854775808) %i.ni, i1 false), !noalias !3034
  %.0..0..0..0..0..sroa.051.0.copyload52.pre.i192 = load ptr, ptr %i.g, align 8, !noalias !3035
  %.8..8..8..8..8..sroa.553.0.copyload55.pre.i194 = load i56, ptr %.8..8..8..8..8..sroa_idx1069, align 8, !noalias !3035
  %i.nl = zext i56 %.8..8..8..8..8..sroa.553.0.copyload55.pre.i194 to i64
  br label %bb.ee

.lr.ph.i.i.i.i215:                                ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3036
  store ptr inttoptr (i64 16 to ptr), ptr %i.f, align 8, !noalias !3036
  store i64 0, ptr %i.cj, align 8, !noalias !3036
  call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.ni)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i217 unwind label %bb.ec, !noalias !3038

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i215
  %i.nm = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i216 = load ptr, ptr %i.f, align 8, !noalias !3036, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i.i216) #31
          to label %.body.i186 unwind label %bb.ed, !noalias !3038

bb.ed:                                            ; preds = %bb.ec
  %i.nn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3038
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i217: ; preds = %.lr.ph.i.i.i.i215
  %i.no = load ptr, ptr %i.f, align 8, !alias.scope !3037, !noalias !3036, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i.i218 = load i64, ptr %i.cj, align 8, !alias.scope !3037, !noalias !3036 ; 2 uses
  %scevgep.i.i.i.i219 = getelementptr nuw i8, ptr %i.no, i64 %.promoted.i.i.i.i218
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i219, ptr nonnull readonly align 1 %i.nj, i64 range(i64 0, -9223372036854775808) %i.ni, i1 false), !noalias !3039
  %i.np = add i64 %.promoted.i.i.i.i218, %i.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3036
  br label %bb.ef

bb.ee:                                            ; preds = %.lr.ph.preheader.i.i.i191, %bb.eb
  %.8..8..sroa.553.0.copyload55.i195 = phi i64 [ %i.nl, %.lr.ph.preheader.i.i.i191 ], [ 0, %bb.eb ]
  %.0..0..sroa.051.0.copyload52.i196 = phi ptr [ %.0..0..0..0..0..sroa.051.0.copyload52.pre.i192, %.lr.ph.preheader.i.i.i191 ], [ null, %bb.eb ]
  %.sroa.553.15.insert.ext.i = shl nuw nsw i64 %i.ni, 56
  %.sroa.553.15.insert.shift.i197 = or disjoint i64 %.8..8..sroa.553.0.copyload55.i195, %.sroa.553.15.insert.ext.i
  %.sroa.553.15.insert.insert.i198 = or disjoint i64 %.sroa.553.15.insert.shift.i197, -9223372036854775808
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i217
  %.sroa.553.0.i199 = phi i64 [ %i.np, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i217 ], [ %.sroa.553.15.insert.insert.i198, %bb.ee ]
  %.sroa.051.0.i200 = phi ptr [ %i.no, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i.i217 ], [ %.0..0..sroa.051.0.copyload52.i196, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %.sroa.051.0.i200, ptr %i.h, align 8, !noalias !3030
  store i64 %.sroa.553.0.i199, ptr %.sroa.553.0..sroa_idx.i201, align 8, !noalias !3030
  %i.nq = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.eh unwind label %bb.ek, !noalias !3029

.loopexit342:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i213
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

.loopexit.split-lp343:                            ; preds = %bb.ej
  %lpad.loopexit.split-lp345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.eg:                                            ; preds = %.loopexit.split-lp343, %.loopexit342
  %lpad.phi346 = phi { ptr, i32 } [ %lpad.loopexit344, %.loopexit342 ], [ %lpad.loopexit.split-lp345, %.loopexit.split-lp343 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !3029
  br label %.body.i186

bb.eh:                                            ; preds = %bb.ef
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 64
  store i128 0, ptr %i.nr, align 16, !noalias !3029
  %i.ns = load ptr, ptr %i.i, align 8, !noalias !3030, !nonnull !11, !noundef !11 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  %.val.i.i202 = load ptr, ptr %i.nt, align 8, !alias.scope !3040, !noalias !3029 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 111
  %.val1.i.i203 = load i8, ptr %i.nu, align 1, !alias.scope !3040, !noalias !3029, !noundef !11
  %.not.i.i.i.i204 = icmp sgt i8 %.val1.i.i203, -1
  br i1 %.not.i.i.i.i204, label %bb.ei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i202) ]
  %.not.i.i.i.i.i.i206 = icmp eq ptr %.val.i.i202, inttoptr (i64 16 to ptr)
  %i.nv = getelementptr inbounds i8, ptr %.val.i.i202, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i206, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i207

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i207: ; preds = %bb.ei
  %11 = atomicrmw sub ptr %i.nv, i64 1 release, align 8, !noalias !3041
  %.not.i.i.i.i.i208 = icmp eq i64 %11, 1
  br i1 %.not.i.i.i.i.i208, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i209, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i209: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i207
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3042
  %i.nw = getelementptr i8, ptr %.val.i.i202, i64 -8
  %.val.i.i.i.i.i.i210 = load i64, ptr %i.nw, align 8, !noalias !3041, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i211 = icmp ult i64 %.val.i.i.i.i.i.i210, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i211, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i213, label %bb.ej, !prof !21

bb.ej:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i209
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc16.i212 unwind label %.loopexit.split-lp343, !noalias !3029

.noexc16.i212:                                    ; preds = %bb.ej
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i213: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i209
  %i.nx = add nuw nsw i64 %.val.i.i.i.i.i.i210, 16
  store ptr %i.nv, ptr %i.ck, align 8, !noalias !3042
  store i64 8, ptr %i.e, align 8, !noalias !3042
  store i64 %i.nx, ptr %i.cl, align 8, !noalias !3042
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc17.i214 unwind label %.loopexit342, !noalias !3029

.noexc17.i214:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3042
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205: ; preds = %.noexc17.i214, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i207, %bb.ei, %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !3029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3030
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit

bb.ek:                                            ; preds = %bb.ef
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #31
          to label %.body.i186 unwind label %bb.el, !noalias !3029

bb.el:                                            ; preds = %bb.fa, %.body32.i225, %bb.ek, %.body.i186
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3029
  unreachable

.body32.i225:                                     ; preds = %bb.fa, %bb.ew, %bb.es, %bb.em
  %.pn8.pn.i226 = phi { ptr, i32 } [ %i.pe, %bb.fa ], [ %lpad.phi351, %bb.ew ], [ %i.oa, %bb.em ], [ %i.os, %bb.es ]
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.el, !noalias !3029

bb.em:                                            ; preds = %bb.ep
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body32.i225

bb.en:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3030
  invoke void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr)
          to label %.noexc259 unwind label %.loopexit

.noexc259:                                        ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3030
  %i.ob = load ptr, ptr %i.k, align 8, !noalias !3030, !nonnull !11, !noundef !11 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 96 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 111
  %i.oe = load i8, ptr %i.od, align 1, !alias.scope !3043, !noalias !3029, !noundef !11 ; 2 uses
  %.not.i.i220 = icmp sgt i8 %i.oe, -1            ; 2 uses
  %i.of = and i8 %i.oe, 127
  %i.og = zext nneg i8 %i.of to i64
  %i.oh = load ptr, ptr %i.oc, align 8, !alias.scope !3043, !noalias !3029, !nonnull !11
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 104
  %i.oj = load i64, ptr %i.oi, align 8, !alias.scope !3043, !noalias !3029
  %.sroa.3.0.i.i221 = select i1 %.not.i.i220, i64 %i.oj, i64 %i.og ; 6 uses
  %.sroa.0.0.i.i222 = select i1 %.not.i.i220, ptr %i.oh, ptr %i.oc ; 3 uses
  %.not.i.i19.i223 = icmp ult i64 %i.mq, %.sroa.3.0.i.i221
  br i1 %.not.i.i19.i223, label %bb.eo, label %.split.i.i20.i224

.split.i.i20.i224:                                ; preds = %.noexc259
  %i.ok = icmp eq i64 %i.mq, %.sroa.3.0.i.i221
  br i1 %i.ok, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %.noexc259
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 %i.mq
  %i.om = load i8, ptr %i.ol, align 1, !alias.scope !3044, !noalias !3029, !noundef !11
  %i.on = icmp sgt i8 %i.om, -65
  br i1 %i.on, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %.split.i.i20.i224
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i222, i64 noundef %.sroa.3.0.i.i221, i64 noundef %i.mq, i64 noundef %.sroa.3.0.i.i221, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc21.i227 unwind label %bb.em, !noalias !3029

.noexc21.i227:                                    ; preds = %bb.ep
  unreachable

bb.eq:                                            ; preds = %bb.eo, %.split.i.i20.i224
  %i.oo = sub nuw i64 %.sroa.3.0.i.i221, %i.mq    ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i222, i64 %i.mq ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.oq = icmp samesign ugt i64 %i.oo, 15
  br i1 %i.oq, label %.lr.ph.i.i.i26.i252, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false), !noalias !3045
  %.not.i.i23.i = icmp eq i64 %.sroa.3.0.i.i221, %i.mq
  br i1 %.not.i.i23.i, label %bb.eu, label %.lr.ph.preheader.i.i24.i228

.lr.ph.preheader.i.i24.i228:                      ; preds = %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull readonly align 1 %i.op, i64 range(i64 0, -9223372036854775808) %i.oo, i1 false), !noalias !3046
  %.0..0..0..0..0..sroa.0.0.copyload48.pre.i229 = load ptr, ptr %i.d, align 8, !noalias !3047
  %.8..8..8..8..8..sroa.5.0.copyload50.pre.i230 = load i56, ptr %.8..8..8..8..8..sroa_idx1070, align 8, !noalias !3047
  %i.or = zext i56 %.8..8..8..8..8..sroa.5.0.copyload50.pre.i230 to i64
  br label %bb.eu

.lr.ph.i.i.i26.i252:                              ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3048
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8, !noalias !3048
  store i64 0, ptr %i.cm, align 8, !noalias !3048
  call void @llvm.experimental.noalias.scope.decl(metadata !3049)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef range(i64 0, -9223372036854775808) %i.oo)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i254 unwind label %bb.es, !noalias !3050

bb.es:                                            ; preds = %.lr.ph.i.i.i26.i252
  %i.os = landingpad { ptr, i32 }
          cleanup
  %.val.i.i27.i253 = load ptr, ptr %i.c, align 8, !noalias !3048, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i.i27.i253) #31
          to label %.body32.i225 unwind label %bb.et, !noalias !3050

bb.et:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !noalias !3050
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i254: ; preds = %.lr.ph.i.i.i26.i252
  %i.ou = load ptr, ptr %i.c, align 8, !alias.scope !3049, !noalias !3048, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i.i.i29.i255 = load i64, ptr %i.cm, align 8, !alias.scope !3049, !noalias !3048 ; 2 uses
  %scevgep.i.i.i30.i256 = getelementptr nuw i8, ptr %i.ou, i64 %.promoted.i.i.i29.i255
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i30.i256, ptr nonnull readonly align 1 %i.op, i64 range(i64 0, -9223372036854775808) %i.oo, i1 false), !noalias !3051
  %i.ov = add i64 %.promoted.i.i.i29.i255, %i.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3048
  br label %bb.ev

bb.eu:                                            ; preds = %.lr.ph.preheader.i.i24.i228, %bb.er
  %.8..8..sroa.5.0.copyload50.i231 = phi i64 [ %i.or, %.lr.ph.preheader.i.i24.i228 ], [ 0, %bb.er ]
  %.0..0..sroa.0.0.copyload48.i232 = phi ptr [ %.0..0..0..0..0..sroa.0.0.copyload48.pre.i229, %.lr.ph.preheader.i.i24.i228 ], [ null, %bb.er ]
  %.sroa.5.15.insert.ext.i233 = shl nuw nsw i64 %i.oo, 56
  %.sroa.5.15.insert.shift.i234 = or disjoint i64 %.8..8..sroa.5.0.copyload50.i231, %.sroa.5.15.insert.ext.i233
  %.sroa.5.15.insert.insert.i235 = or disjoint i64 %.sroa.5.15.insert.shift.i234, -9223372036854775808
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i254
  %.sroa.5.0.i236 = phi i64 [ %i.ov, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i254 ], [ %.sroa.5.15.insert.insert.i235, %bb.eu ]
  %.sroa.0.0.i237 = phi ptr [ %i.ou, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCsibhcYuwTAtB_13typst_realize.exit.i28.i254 ], [ %.0..0..sroa.0.0.copyload48.i232, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %.sroa.0.0.i237, ptr %i.j, align 8, !noalias !3030
  store i64 %.sroa.5.0.i236, ptr %.sroa.5.0..sroa_idx.i238, align 8, !noalias !3030
  %i.ow = invoke noundef nonnull align 16 ptr @_RNvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB2_10RawContent10header_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.ex unwind label %bb.fa, !noalias !3029

.loopexit347:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i250
  %lpad.loopexit349 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp348:                            ; preds = %bb.ez
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ew:                                            ; preds = %.loopexit.split-lp348, %.loopexit347
  %lpad.phi351 = phi { ptr, i32 } [ %lpad.loopexit349, %.loopexit347 ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp348 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !3029
  br label %.body32.i225

bb.ex:                                            ; preds = %bb.ev
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 64
  store i128 0, ptr %i.ox, align 16, !noalias !3029
  %i.oy = load ptr, ptr %i.k, align 8, !noalias !3030, !nonnull !11, !noundef !11 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 96 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %.val.i35.i239 = load ptr, ptr %i.oz, align 8, !alias.scope !3052, !noalias !3029 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 111
  %.val1.i36.i240 = load i8, ptr %i.pa, align 1, !alias.scope !3052, !noalias !3029, !noundef !11
  %.not.i.i.i37.i241 = icmp sgt i8 %.val1.i36.i240, -1
  br i1 %.not.i.i.i37.i241, label %bb.ey, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i35.i239) ]
  %.not.i.i.i.i.i38.i243 = icmp eq ptr %.val.i35.i239, inttoptr (i64 16 to ptr)
  %i.pb = getelementptr inbounds i8, ptr %.val.i35.i239, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i38.i243, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i244

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i244: ; preds = %bb.ey
  %12 = atomicrmw sub ptr %i.pb, i64 1 release, align 8, !noalias !3053
  %.not.i.i.i.i40.i245 = icmp eq i64 %12, 1
  br i1 %.not.i.i.i.i40.i245, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i246, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i246: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i244
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3054
  %i.pc = getelementptr i8, ptr %.val.i35.i239, i64 -8
  %.val.i.i.i.i.i42.i247 = load i64, ptr %i.pc, align 8, !noalias !3053, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i43.i248 = icmp ult i64 %.val.i.i.i.i.i42.i247, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i43.i248, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i250, label %bb.ez, !prof !21

bb.ez:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i246
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc45.i249 unwind label %.loopexit.split-lp348, !noalias !3029

.noexc45.i249:                                    ; preds = %bb.ez
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i250: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i41.i246
  %i.pd = add nuw nsw i64 %.val.i.i.i.i.i42.i247, 16
  store ptr %i.pb, ptr %i.cn, align 8, !noalias !3054
  store i64 8, ptr %i.b, align 8, !noalias !3054
  store i64 %i.pd, ptr %i.co, align 8, !noalias !3054
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc46.i251 unwind label %.loopexit347, !noalias !3029

.noexc46.i251:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i44.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3054
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242: ; preds = %.noexc46.i251, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i39.i244, %bb.ey, %bb.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.oz, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !noalias !3029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !3028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3030
  br label %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit

bb.fa:                                            ; preds = %bb.ev
  %i.pe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #31
          to label %.body32.i225 unwind label %bb.el, !noalias !3029

_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit47.i242, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit.i205
  %.val = load ptr, ptr %i.bp, align 8, !nonnull !11, !align !13, !noundef !11
  %i.pf = invoke fastcc noundef nonnull align 8 ptr @_RNvMCsibhcYuwTAtB_13typst_realizeNtB2_5State5store(ptr nonnull %.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.am)
          to label %bb.fb unwind label %.loopexit

bb.fb:                                            ; preds = %_RINvCsibhcYuwTAtB_13typst_realize13slice_textualINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEEB2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.pg = invoke fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize5visit(ptr noalias nofree noundef align 8 dereferenceable(168) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj)
          to label %bb.fc unwind label %.loopexit ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.ph = extractvalue { ptr, i64 } %i.pg, 0      ; 2 uses
  %.not94 = icmp eq ptr %i.ph, null
  br i1 %.not94, label %.backedge, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pi = extractvalue { ptr, i64 } %i.pg, 1
  br label %bb.fg

bb.fe:                                            ; preds = %bb.p
  %i.pj = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %.not95 = icmp eq ptr %i.pj, null
  br i1 %.not95, label %.backedge, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.pk = extractvalue { ptr, i64 } %i.dz, 1
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180, %bb.fd, %bb.ff, %bb.fl
  %.sroa.8.1 = phi i64 [ %i.pv, %bb.fl ], [ %i.pk, %bb.ff ], [ %i.gp, %bb.ax ], [ %.sroa.8.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180 ], [ %i.pi, %bb.fd ] ; 5 uses
  %.sroa.0.1 = phi ptr [ %i.pu, %bb.fl ], [ %i.pj, %bb.ff ], [ %i.go, %bb.ax ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize.exit180 ], [ %i.ph, %bb.fd ] ; 5 uses
  %i.pl = load ptr, ptr %i.al, align 8, !noundef !11
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %.val.i262 = load ptr, ptr %i.pn, align 8       ; 4 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.al, i64 55
  %.val1.i263 = load i8, ptr %i.po, align 1, !noundef !11
  %.not.i.i.i.i.i264 = icmp sgt i8 %.val1.i263, -1
  br i1 %.not.i.i.i.i.i264, label %bb.fi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i262) ]
  %.not.i.i.i.i.i.i.i265 = icmp eq ptr %.val.i262, inttoptr (i64 16 to ptr)
  %i.pp = getelementptr inbounds i8, ptr %.val.i262, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i265, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266: ; preds = %bb.fi
  %13 = atomicrmw sub ptr %i.pp, i64 1 release, align 8, !noalias !3055
  %.not.i.i.i.i.i.i267 = icmp eq i64 %13, 1
  br i1 %.not.i.i.i.i.i.i267, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i268, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i268: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3055
  %i.pq = getelementptr i8, ptr %.val.i262, i64 -8
  %.val.i.i.i.i.i.i.i269 = load i64, ptr %i.pq, align 8, !noalias !3055, !noundef !11 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i270 = icmp ult i64 %.val.i.i.i.i.i.i.i269, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i270, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i271, label %bb.fj, !prof !21

bb.fj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i268
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30, !noalias !3055
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i271: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i268
  %i.pr = add nuw nsw i64 %.val.i.i.i.i.i.i.i269, 16
  %i.ps = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.pp, ptr %i.ps, align 8, !noalias !3055
  store i64 8, ptr %i.a, align 8, !noalias !3055
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.pr, ptr %i.pt, align 8, !noalias !3055
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !3055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3055
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit

bb.fk:                                            ; preds = %bb.g
  %i.pu = extractvalue { ptr, i64 } %i.dg, 0      ; 2 uses
  %.not98 = icmp eq ptr %i.pu, null
  br i1 %.not98, label %.backedge, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.pv = extractvalue { ptr, i64 } %i.dg, 1
  br label %bb.fg

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsibhcYuwTAtB_13typst_realize10RegexMatchEEBZ_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i271, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266, %bb.fi, %bb.fh, %bb.fg, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i, %bb.d, %bb.c, %._crit_edge
  %.sroa.8.2 = phi i64 [ undef, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ], [ undef, %._crit_edge ], [ undef, %bb.c ], [ undef, %bb.d ], [ undef, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ], [ %.sroa.8.1, %bb.fg ], [ %.sroa.8.1, %bb.fh ], [ %.sroa.8.1, %bb.fi ], [ %.sroa.8.1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266 ], [ %.sroa.8.1, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i271 ]
  %.sroa.0.2 = phi ptr [ null, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ], [ null, %._crit_edge ], [ null, %bb.c ], [ null, %bb.d ], [ null, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i ], [ %.sroa.0.1, %bb.fg ], [ %.sroa.0.1, %bb.fh ], [ %.sroa.0.1, %bb.fi ], [ %.sroa.0.1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i266 ], [ %.sroa.0.1, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i.i.i.i.i271 ]
  %i.pw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %i.px = insertvalue { ptr, i64 } %i.pw, i64 %.sroa.8.2, 1
  ret { ptr, i64 } %i.px

bb.fm:                                            ; preds = %.body
  resume { ptr, i32 } %.pn96
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsibhcYuwTAtB_13typst_realize18visit_filter_rules(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %1, ptr nofree readonly captures(none) %.0.val, ptr nofree readnone captures(address) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !17, !noundef !11
  %i.c = icmp samesign ugt i64 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = icmp eq ptr %.8.val, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text5space1__NtB9_9SpaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit, %bb.g, %bb.b, %bb.f, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread
  %.sink = phi i8 [ 1, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit ], [ 1, %bb.b ], [ 1, %bb.f ], [ 0, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread ], [ 1, %bb.g ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %.8.val, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3pars_1__NtB9_12ParbreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 161 ; 3 uses
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i8, ptr %i.g, align 1, !range !18, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp ne ptr %.8.val, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacings_1__NtB9_5VElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %or.cond.not = or i1 %i.j, %i.i
  br i1 %or.cond.not, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.g

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.g, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 162
  store i8 1, ptr %i.k, align 2
  br label %bb.c

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.g, %bb.h, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit, %bb.e
  %i.l = icmp eq ptr %.8.val, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3par1__NtB9_7ParElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %i.g, align 1
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 129
  %.val = load i8, ptr %i.n, align 1, !range !22, !noundef !11
  switch i8 %.val, label %bb.c [
    i8 2, label %bb.h
    i8 0, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread
  ]

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacings_1__NtB9_5VElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 2) ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3069)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3069, !noalias !3070, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3069, !noalias !3070, !nonnull !11, !align !13, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !11, !noalias !3071, !nonnull !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3072
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !11, !noalias !3071, !nonnull !11
  call void %i.v(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.p) #32, !noalias !3071, !inline_history !3066
  %i.w = load i128, ptr %i.a, align 16, !noalias !3072, !noundef !11
  %i.x = icmp eq i128 %i.w, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3072
  br i1 %i.x, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacings_1__NtB9_5VElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 3) 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) #30, !noalias !3070
  unreachable

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.i
  %i.y = load i8, ptr %i.p, align 1, !range !18, !alias.scope !3073, !noalias !3074, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5VElemKh2_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.thread
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCsibhcYuwTAtB_13typst_realize20visit_grouping_rules(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(168) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !noalias !3100, !nonnull !11, !align !13, !noundef !11
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3100, !nonnull !11, !noundef !11
  %i.p = tail call noundef i8 %i.o(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2), !noalias !3100, !inline_history !3077
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit, label %bb.b

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.m, %.lr.ph ], [ null, %bb.b ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %.not32 = icmp eq ptr %.sroa.0.0.i, null
  br i1 %.not32, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split.us, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split.us: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit, %bb.e
  %.sroa.04.0.us = phi i32 [ %i.af, %bb.e ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit ]
  %.val.i.us = load i32, ptr %i.r, align 8, !alias.scope !3101, !noundef !11 ; 2 uses
  %.not.us = icmp eq i32 %.val.i.us, 0
  br i1 %.not.us, label %.split.us, label %bb.c

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split.us
  %i.t = zext i32 %.val.i.us to i64               ; 2 uses
  %i.u = getelementptr [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !align !13, !noundef !11
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !noundef !11
  %i.y = tail call noundef i8 %i.x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 -8
  %i.aa = load i8, ptr %i.z, align 8, !range !18, !noundef !11
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = icmp eq i8 %i.y, 3
  %or.cond.us = or i1 %i.ac, %i.ab
  br i1 %or.cond.us, label %bb.d, label %.split104.us

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call fastcc { ptr, i64 } @_RNvCsibhcYuwTAtB_13typst_realize25finish_innermost_grouping(ptr noalias nofree noundef align 8 dereferenceable(168) %1) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0      ; 2 uses
  %.not33.us = icmp eq ptr %i.ae, null
  br i1 %.not33.us, label %bb.e, label %.split108.us

bb.e:                                             ; preds = %bb.d
  %i.af = add nuw nsw i32 %.sroa.04.0.us, 1       ; 2 uses
  %exitcond146 = icmp eq i32 %i.af, 513
  br i1 %exitcond146, label %.split112.us, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split.us

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit.split: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit, %bb.j
  %.sroa.04.0 = phi i32 [ %i.bs, %bb.j ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterRNtCsibhcYuwTAtB_13typst_realize12GroupingRuleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvBT_20visit_grouping_rules0EBT_.exit ]
  %.val.i = load i32, ptr %i.r, align 8, !alias.scope !3101, !noundef !11 ; 4 uses
end_hunk_4
begin_hunk_5_@_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCsibhcYuwTAtB_13typst_realize:bb.a

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc25.thread:                                  ; preds = %.noexc26, %.noexc25, %.noexc
  %i.ao = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %i.u, i64 %i.v)
          to label %bb.q unwind label %bb.p

bb.q:                                             ; preds = %.noexc25.thread
  store ptr %i.ao, ptr %0, align 8
  store i64 %i.ap, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, %bb.q
  ret void

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  %.val12 = load i64, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val11, i64 %.val12) #31
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %.thread
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !12

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i18, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i18 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 8)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.not.i19 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i19, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre3.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i20 = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val.i20) #31
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %lpad.phi, %bb.p ], [ %i.ai, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre3.i, %._crit_edge.i ], [ 0, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !11 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %.not.i22 = icmp eq i64 %i.v, 0
  br i1 %.not.i22, label %._crit_edge, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.k
  %.pre45.pre = load ptr, ptr %i.c, align 8
  %.pre46.pre = load i64, ptr %i.t, align 8
  br label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp, !inline_history !3514

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc23
  %.val.i26 = phi ptr [ %i.ad, %.noexc23 ], [ %.pre45.pre, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi i64 [ %i.ag, %.noexc23 ], [ %.pre46.pre, %.lr.ph.preheader ]
  %.sroa.031.043 = phi ptr [ %i.y, %.noexc23 ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 1 ; 2 uses
  %i.z = load i8, ptr %.sroa.031.043, align 1, !alias.scope !3522, !noalias !3523, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3524)
  %.not.i.i27 = icmp eq ptr %.val.i26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i27, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.val.i26, i64 -8
  %.val.i.i = load i64, ptr %i.aa, align 8, !noalias !3524, !noundef !11
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.l, %.lr.ph
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.l ], [ 0, %.lr.ph ]
  %i.ab = icmp eq i64 %i.x, %.sroa.02.0.i.i
  %i.ac = zext i1 %i.ab to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.ac)
          to label %.noexc23 unwind label %.loopexit, !inline_history !3521

.noexc23:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %i.ad = load ptr, ptr %i.c, align 8, !alias.scope !3524, !nonnull !11, !noundef !11 ; 3 uses
  %i.ae = load i64, ptr %i.t, align 8, !alias.scope !3524, !noundef !11 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.z, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !3524
  %.not = icmp eq ptr %i.y, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit
  %i.ah = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.ah, label %bb.r, label %bb.o

bb.m:                                             ; preds = %bb.n, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  br label %common.resume

._crit_edge:                                      ; preds = %.noexc23, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit
  %i.aj = phi i64 [ %i.r, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit ], [ %i.ag, %.noexc23 ] ; 2 uses
  %i.ak = phi ptr [ %i.s, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCsibhcYuwTAtB_13typst_realize.exit ], [ %i.ad, %.noexc23 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, inttoptr (i64 16 to ptr)
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %._crit_edge
  %2 = atomicrmw sub ptr %i.al, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = getelementptr i8, ptr %i.u, i64 -8
  %.val.i.i.i = load i64, ptr %i.am, align 8, !noundef !11 ; 2 uses
  %narrow.i.i.i.i = icmp ult i64 %.val.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i, label %bb.n, !prof !21

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.n
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i.i
  %i.an = add nuw nsw i64 %.val.i.i.i, 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.ao, align 8
  store i64 8, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.an, ptr %i.ap, align 8
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsibhcYuwTAtB_13typst_realize.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.noexc25, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.i.i, %._crit_edge
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize.exit
  ret void

.loopexit:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsibhcYuwTAtB_13typst_realize.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !11, !noundef !11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val11) #31
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECsibhcYuwTAtB_13typst_realize.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsibhcYuwTAtB_13typst_realize6spaces15collapse_spaces(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 13 uses
  %i.e = icmp ult i64 %i.d, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ult i64 %1, %i.d
  br i1 %i.f, label %.lr.ph.lr.ph, label %.outer._crit_edge.thread

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 5 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph106 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.bl, %.outer ] ; 8 uses
  %.sroa.03.0.ph103 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.bx, %.outer ] ; 18 uses
  %.sroa.013.0.ph101 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %.sroa.013.1, %.outer ] ; 7 uses
  %.sroa.017.0.ph99 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %.sroa.017.1, %.outer ] ; 15 uses
  %.not = icmp eq i8 %.sroa.013.0.ph101, 2
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %.sroa.0.0.ph106, 1      ; 5 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.0.0.ph106 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.val.us = load ptr, ptr %i.k, align 8          ; 2 uses
  %i.m = getelementptr i8, ptr %i.k, i64 8
  %.val23.us = load ptr, ptr %i.m, align 8, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.n = icmp eq ptr %.val23.us, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.n, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.o = icmp eq ptr %.val23.us, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacing1__NtB9_5HElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.o, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %.val23.us, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text9linebreak1__NtB9_13LinebreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.p, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq ptr %.val23.us, @_RNvNvXs0_NvCs9gmjTwvRRSu_10typst_html1__NtB9_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.q, label %.split93.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %.val23.us, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text5space1__NtB9_9SpaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE ; 2 uses
  %spec.select = select i1 %i.r, i64 %.sroa.03.0.ph103, i64 %.sroa.017.0.ph99
  %spec.select110 = select i1 %i.r, i8 3, i8 2
  br label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

.outer._crit_edge:                                ; preds = %.outer, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit
  %.sroa.017.0.ph.lcssa71 = phi i64 [ %.sroa.017.0.ph99, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit ], [ %.sroa.017.1, %.outer ] ; 3 uses
  %.sroa.013.0.ph.lcssa66 = phi i8 [ %.sroa.013.0.ph101, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit ], [ %.sroa.013.1, %.outer ]
  %.sroa.03.0.ph.lcssa61 = phi i64 [ %.sroa.03.0.ph103, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit ], [ %i.bx, %.outer ] ; 7 uses
  %i.s = icmp eq i8 %.sroa.013.0.ph.lcssa66, 3
  br i1 %i.s, label %bb.g, label %.outer._crit_edge.thread

.outer._crit_edge.thread:                         ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit, %.outer._crit_edge
  %.sroa.03.1 = phi i64 [ %i.ae, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit ], [ %.sroa.03.0.ph.lcssa61, %.outer._crit_edge ], [ %1, %bb.a ] ; 2 uses
  %i.t = icmp ugt i64 %.sroa.03.1, %i.d
  br i1 %i.t, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit, label %bb.f

bb.f:                                             ; preds = %.outer._crit_edge.thread
  store i64 %.sroa.03.1, ptr %i.c, align 8, !alias.scope !3552
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBK_6styles10StyleChainEE8truncateCsibhcYuwTAtB_13typst_realize.exit: ; preds = %.outer._crit_edge.thread, %bb.f
  ret void

bb.g:                                             ; preds = %.outer._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.w = add i64 %.sroa.017.0.ph.lcssa71, 1       ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3553)
  %i.x = icmp ugt i64 %.sroa.03.0.ph.lcssa61, %i.d
  br i1 %i.x, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0.ph.lcssa61, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #27, !noalias !3554
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = icmp ugt i64 %i.w, %.sroa.03.0.ph.lcssa61
  br i1 %i.y, label %bb.j, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i, !prof !12

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.w, i64 noundef %.sroa.03.0.ph.lcssa61, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27, !noalias !3554
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.i
  %i.z = sub nuw nsw i64 %.sroa.03.0.ph.lcssa61, %i.w ; 2 uses
  %i.aa = sub nuw nsw i64 %i.d, %i.z
  %.not.i = icmp ugt i64 %.sroa.017.0.ph.lcssa71, %i.aa
  br i1 %.not.i, label %bb.k, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.k:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #27, !noalias !3553
  unreachable

_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %i.w
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %.sroa.017.0.ph.lcssa71
  %i.ad = shl nuw nsw i64 %i.z, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false), !alias.scope !3553
  %i.ae = add nsw i64 %.sroa.03.0.ph.lcssa61, -1
  br label %.outer._crit_edge.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit
  %.sroa.0.072 = phi i64 [ %i.af, %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit ], [ %.sroa.0.0.ph106, %.lr.ph ] ; 7 uses
  %i.af = add nuw nsw i64 %.sroa.0.072, 1         ; 7 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.0.072 ; 7 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !11, !align !13, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  %.val = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 8
  %.val23 = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.ak = icmp eq ptr %.val23, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ak, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split
  %i.al = icmp eq ptr %.val23, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacing1__NtB9_5HElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.al, label %.split.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq ptr %.val23, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text9linebreak1__NtB9_13LinebreakElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.am, label %.loopexit, label %bb.n

.split.us:                                        ; preds = %bb.l, %bb.b
  %.us-phi83 = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.l ] ; 6 uses
  %.us-phi85 = phi ptr [ %i.j, %bb.b ], [ %i.ag, %bb.l ] ; 6 uses
  %.us-phi86 = phi ptr [ %.val.us, %bb.b ], [ %.val, %bb.l ] ; 3 uses
  %.us-phi87 = phi i64 [ %.sroa.0.0.ph106, %bb.b ], [ %.sroa.0.072, %bb.l ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi86) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.us-phi86, i64 96
  %.sroa.02.0.copyload.i = load i64, ptr %i.an, align 16, !noalias !3555
  %i.ao = icmp eq i64 %.sroa.02.0.copyload.i, 1
  br i1 %i.ao, label %.loopexit, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp eq ptr %.val23, @_RNvNvXs0_NvCs9gmjTwvRRSu_10typst_html1__NtB9_8HtmlElemNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.ap, label %.split93.us, label %bb.o

.split93.us:                                      ; preds = %bb.n, %bb.d
  %.us-phi94 = phi i64 [ %i.i, %bb.d ], [ %i.af, %bb.n ] ; 2 uses
  %.us-phi96 = phi ptr [ %i.j, %bb.d ], [ %i.ag, %bb.n ] ; 2 uses
  %.us-phi97 = phi ptr [ %.val.us, %bb.d ], [ %.val, %bb.n ] ; 2 uses
  %.us-phi98 = phi i64 [ %.sroa.0.0.ph106, %bb.d ], [ %.sroa.0.072, %bb.n ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi97) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.us-phi97, i64 192
  %i.ar = load i64, ptr %i.aq, align 16, !range !14, !noalias !3555, !noundef !11
  %i.as = call noundef zeroext i1 @_RNvNtCs9gmjTwvRRSu_10typst_html3tag24is_whitespace_collapsing(i64 noundef %i.ar), !noalias !3555
  br i1 %i.as, label %.loopexit, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.at = icmp eq ptr %.val23, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4text5space1__NtB9_9SpaceElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.at, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

bb.p:                                             ; preds = %.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %.us-phi86, i64 128
  %.val.i = load i8, ptr %i.au, align 16, !range !22, !noalias !3555, !noundef !11
  switch i8 %.val.i, label %.loopexit [
    i8 2, label %bb.q
    i8 0, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.av = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacing1__NtB9_5HElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1) ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3556, !noalias !3557, !nonnull !11, !noundef !11 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !3556, !noalias !3557, !nonnull !11, !align !13, !noundef !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !invariant.load !11, !noalias !3558, !nonnull !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3559
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !11, !noalias !3558, !nonnull !11
  call void %i.bc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.aw) #32, !noalias !3558, !inline_history !3544
  %i.bd = load i128, ptr %i.a, align 16, !noalias !3559, !noundef !11
  %i.be = icmp eq i128 %i.bd, 74484837202795168974482589160156483361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3559
  br i1 %i.be, label %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, label %bb.s, !prof !21

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout7spacing1__NtB9_5HElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 0, 3) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.av) #30, !noalias !3557
  unreachable

_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %bb.r
  %i.bf = load i8, ptr %i.aw, align 1, !range !18, !alias.scope !3560, !noalias !3561, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %.loopexit, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

.loopexit:                                        ; preds = %bb.m, %.split.us, %bb.p, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, %.split93.us
  %i.bh = phi i64 [ %.us-phi94, %.split93.us ], [ %.us-phi83, %.split.us ], [ %.us-phi83, %bb.p ], [ %.us-phi83, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.af, %bb.m ] ; 2 uses
  %i.bi = phi ptr [ %.us-phi96, %.split93.us ], [ %.us-phi85, %.split.us ], [ %.us-phi85, %bb.p ], [ %.us-phi85, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.ag, %bb.m ] ; 2 uses
  %.sroa.0.038 = phi i64 [ %.us-phi98, %.split93.us ], [ %.us-phi87, %.split.us ], [ %.us-phi87, %bb.p ], [ %.us-phi87, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.0.072, %bb.m ] ; 2 uses
  %i.bj = icmp eq i8 %.sroa.013.0.ph101, 3
  br i1 %i.bj, label %bb.t, label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = icmp ult i64 %i.af, %i.d
  br i1 %i.bk, label %.lr.ph.split, label %.outer._crit_edge

_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread: ; preds = %bb.o, %.lr.ph.split, %bb.c, %bb.e, %.lr.ph.split.us, %.split93.us, %bb.q, %bb.p, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i, %.loopexit, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26
  %i.bl = phi i64 [ %.us-phi83, %bb.q ], [ %i.bh, %.loopexit ], [ %.us-phi83, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bh, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi83, %bb.p ], [ %.us-phi94, %.split93.us ], [ %i.i, %.lr.ph.split.us ], [ %i.i, %bb.e ], [ %i.i, %bb.c ], [ %i.af, %.lr.ph.split ], [ %i.af, %bb.o ] ; 2 uses
  %i.bm = phi ptr [ %.us-phi85, %bb.q ], [ %i.bi, %.loopexit ], [ %.us-phi85, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bi, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi85, %bb.p ], [ %.us-phi96, %.split93.us ], [ %i.j, %.lr.ph.split.us ], [ %i.j, %bb.e ], [ %i.j, %bb.c ], [ %i.ag, %.lr.ph.split ], [ %i.ag, %bb.o ]
  %.sroa.0.037 = phi i64 [ %.us-phi87, %bb.q ], [ %.sroa.0.038, %.loopexit ], [ %.us-phi87, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.0.038, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.us-phi87, %bb.p ], [ %.us-phi98, %.split93.us ], [ %.sroa.0.0.ph106, %.lr.ph.split.us ], [ %.sroa.0.0.ph106, %bb.e ], [ %.sroa.0.0.ph106, %bb.c ], [ %.sroa.0.072, %.lr.ph.split ], [ %.sroa.0.072, %bb.o ]
  %.sroa.017.1 = phi i64 [ %.sroa.017.0.ph99, %bb.q ], [ %.sroa.017.0.ph99, %.loopexit ], [ %.sroa.017.0.ph99, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %.sroa.017.0.ph99, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.017.0.ph99, %bb.p ], [ %.sroa.017.0.ph99, %.split93.us ], [ %.sroa.017.0.ph99, %.lr.ph.split.us ], [ %spec.select, %bb.e ], [ %.sroa.017.0.ph99, %bb.c ], [ %.sroa.017.0.ph99, %.lr.ph.split ], [ %.sroa.017.0.ph99, %bb.o ] ; 2 uses
  %.sroa.013.1 = phi i8 [ %.sroa.013.0.ph101, %bb.q ], [ 1, %.loopexit ], [ %.sroa.013.0.ph101, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.013.0.ph101, %bb.p ], [ 2, %.split93.us ], [ 2, %.lr.ph.split.us ], [ %spec.select110, %bb.e ], [ 1, %bb.c ], [ 2, %bb.o ], [ %.sroa.013.0.ph101, %.lr.ph.split ] ; 2 uses
  %.sroa.03.2 = phi i64 [ %.sroa.03.0.ph103, %bb.q ], [ %.sroa.03.0.ph103, %.loopexit ], [ %.sroa.03.0.ph103, %_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout7spacing5HElemKh1_E10get_clonedCsibhcYuwTAtB_13typst_realize.exit.i ], [ %i.bw, %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26 ], [ %.sroa.03.0.ph103, %bb.p ], [ %.sroa.03.0.ph103, %.split93.us ], [ %.sroa.03.0.ph103, %.lr.ph.split.us ], [ %.sroa.03.0.ph103, %bb.e ], [ %.sroa.03.0.ph103, %bb.c ], [ %.sroa.03.0.ph103, %.lr.ph.split ], [ %.sroa.03.0.ph103, %bb.o ] ; 3 uses
  %i.bn = icmp ult i64 %.sroa.03.2, %.sroa.0.037
  br i1 %i.bn, label %bb.y, label %.outer

bb.t:                                             ; preds = %.loopexit
  %i.bo = add i64 %.sroa.017.0.ph99, 1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3562)
  %i.bp = icmp ugt i64 %.sroa.03.0.ph103, %i.d
  br i1 %i.bp, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.0.ph103, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #27, !noalias !3563
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bq = icmp ugt i64 %i.bo, %.sroa.03.0.ph103
  br i1 %i.bq, label %bb.w, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24, !prof !12

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bo, i64 noundef %.sroa.03.0.ph103, i64 noundef range(i64 0, 288230376151711744) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #27, !noalias !3563
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24: ; preds = %bb.v
  %i.br = sub nuw nsw i64 %.sroa.03.0.ph103, %i.bo ; 2 uses
  %i.bs = sub nuw nsw i64 %i.d, %i.br
  %.not.i25 = icmp ugt i64 %.sroa.017.0.ph99, %i.bs
  br i1 %.not.i25, label %bb.x, label %_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26, !prof !12

bb.x:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #27, !noalias !3562
  unreachable

_RINvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBB_6styles10StyleChainE11copy_withinINtNtNtB5_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit26: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECsibhcYuwTAtB_13typst_realize.exit.i24
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.bo
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.017.0.ph99
  %i.bv = shl nuw nsw i64 %i.br, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr nonnull align 8 %i.bt, i64 %i.bv, i1 false), !alias.scope !3562
  %i.bw = add nsw i64 %.sroa.03.0.ph103, -1
  br label %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread

.outer:                                           ; preds = %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread, %bb.y
  %i.bx = add i64 %.sroa.03.2, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.by = icmp ult i64 %i.bl, %i.d
  br i1 %i.by, label %.lr.ph, label %.outer._crit_edge

bb.y:                                             ; preds = %_RNvNtCsibhcYuwTAtB_13typst_realize6spaces14collapse_state.exit.thread
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.03.2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false)
  br label %.outer
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtCs4Q1BBFz20BJ_8arrayvec6errorsINtB5_13CapacityErrorNtCsibhcYuwTAtB_13typst_realize8GroupingENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBY_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @80, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsibhcYuwTAtB_13typst_realize, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !13, !noundef !11
  %i.e = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @81, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.d = icmp ult i64 %.val.i, 144115188075855872
  %i.e = shl nuw i64 %.val.i, 7
  %i.f = or disjoint i64 %i.e, 16                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775791
  %narrow.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  store i64 16, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
  %.sroa.0.0.i1027 = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.0.i1027 ; 6 uses
  %i.n = add nuw i64 %.sroa.0.0.i1027, 1          ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 16, !range !23, !alias.scope !3593, !noundef !11 ; 4 uses
  %i.q = icmp ne i64 %i.p, 4
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add nsw i64 %i.p, -3
  %i.s = icmp samesign ugt i64 %i.p, 2
  %i.t = select i1 %i.s, i64 %i.r, i64 1
  switch i64 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit [
    i64 0, label %bb.c
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !3593 ; 5 uses
  %i.v = getelementptr i8, ptr %i.m, i64 32
  %.val1.i.i = load ptr, ptr %i.v, align 16, !alias.scope !3593, !nonnull !11, !align !13, !noundef !11 ; 5 uses
  %i.w = load ptr, ptr %.val1.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !24, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #29
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !16, !invariant.load !11 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body17, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !24, !invariant.load !11
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #29
  br label %.body17

bb.g:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 16, !range !25, !alias.scope !3594, !noundef !11
  %i.ak = icmp eq i64 %i.aj, -1
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ai)
          to label %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge unwind label %bb.i, !inline_history !3572

._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge: ; preds = %bb.h
  %.pre = load i64, ptr %i.o, align 16, !range !26, !alias.scope !3595
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i: ; preds = %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge, %bb.g
  %i.al = phi i64 [ %.pre, %._RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i_crit_edge ], [ %i.p, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  switch i64 %i.al, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.o) #31
          to label %.body17 unwind label %bb.s, !inline_history !3575

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3575

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3575

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECsibhcYuwTAtB_13typst_realize.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3597)
  %i.ao = load i64, ptr %i.am, align 8, !range !17, !alias.scope !3598, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 6 uses
  switch i64 %i.ao, label %bb.m [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
    i64 2, label %bb.o
    i64 3, label %bb.q
  ]

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3600)
  %i.aq = load ptr, ptr %i.ap, align 16, !alias.scope !3601, !nonnull !11, !noundef !11
  %2 = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !3602
  %i.ar = icmp eq i64 %2, 1
  br i1 %i.ar, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3575

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3604)
  %i.as = load ptr, ptr %i.ap, align 16, !alias.scope !3605, !nonnull !11, !noundef !11
  %3 = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !3606
  %i.at = icmp eq i64 %3, 1
  br i1 %i.at, label %bb.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3575

bb.q:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  %i.au = load ptr, ptr %i.ap, align 16, !alias.scope !3609, !nonnull !11, !noundef !11
  %4 = atomicrmw sub ptr %i.au, i64 1 release, align 8, !noalias !3610
  %i.av = icmp eq i64 %4, 1
  br i1 %i.av, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #33
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.u, !inline_history !3575

bb.s:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3575
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.l, %bb.l, %bb.m, %bb.o, %bb.q, %bb.n, %bb.p, %bb.r, %bb.k, %bb.j, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %.lr.ph
  %i.ax = icmp eq i64 %i.n, %i.k
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph55
  %i.ay = add i64 %.sroa.0.1.i54, 1               ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.k
  br i1 %i.az, label %.body, label %.lr.ph55

bb.u:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body17

.body17:                                          ; preds = %bb.u, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f, %bb.i
  %eh.lpad-body18 = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ba, %bb.u ], [ %i.ac, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.ac, %bb.f ]
  %i.bb = icmp eq i64 %i.n, %i.k
  br i1 %i.bb, label %.body, label %.lr.ph55

.lr.ph55:                                         ; preds = %.body17, %bb.t
  %.sroa.0.1.i54 = phi i64 [ %i.ay, %bb.t ], [ %i.n, %.body17 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [128 x i8], ptr %.val4, i64 %.sroa.0.1.i54
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(128) %i.bc) #31
          to label %bb.t unwind label %bb.v, !inline_history !3592

bb.v:                                             ; preds = %.lr.ph55
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3592
  unreachable

.body:                                            ; preds = %bb.t, %.body17
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.w:                                             ; preds = %.body
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body18
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val4 = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %.not.i = icmp eq ptr %.val4, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4, i64 -16 ; 2 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr i8, ptr %.val4, i64 -8
  %.val.i = load i64, ptr %i.c, align 8, !noundef !11 ; 2 uses
  %i.d = icmp ult i64 %.val.i, 288230376151711744
  %i.e = shl nuw i64 %.val.i, 6
  %i.f = or disjoint i64 %i.e, 16                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775791
  %narrow.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #30
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE8capacity0ECsibhcYuwTAtB_13typst_realize.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  store i64 16, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !11 ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.k
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit, %bb.c
  %.sroa.0.0.i1013 = phi i64 [ %i.o, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.0.i1013
  %i.o = add i64 %.sroa.0.0.i1013, 1              ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(64) %i.n)
          to label %bb.c unwind label %bb.e, !inline_history !3611

bb.d:                                             ; preds = %.lr.ph15
  %i.p = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %.body, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.k
  br i1 %i.s, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.p, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.val4, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef align 16 dereferenceable(64) %i.t) #31
          to label %bb.d unwind label %bb.f, !inline_history !3611

bb.f:                                             ; preds = %.lr.ph15
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !inline_history !3611
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE4sizeCsibhcYuwTAtB_13typst_realize.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit.thread: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtB5_3ops4drop4Drop4drop0ECsibhcYuwTAtB_13typst_realize.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECsibhcYuwTAtB_13typst_realize.exit
  ret void

bb.g:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECsibhcYuwTAtB_13typst_realize.exit: ; preds = %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !18, !noundef !11
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !11
  %.not = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.e, align 8             ; 5 uses
  %.val21 = load i64, ptr %i.h, align 8
  br i1 %.not, label %bb.b, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.val, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val) #30
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.06.0 = phi ptr [ %.val, %bb.c ], [ inttoptr (i64 16 to ptr), %bb.b ], [ %.val, %bb.a ]
  store ptr %.sroa.06.0, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val21, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.i, !prof !12

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val24, i64 noundef %.val25) #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.q, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsibhcYuwTAtB_13typst_realize(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #31
          to label %bb.o unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsibhcYuwTAtB_13typst_realize.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m, !prof !12

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECsibhcYuwTAtB_13typst_realize(ptr noundef nonnull %.val26, i64 noundef %.val27) #30
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECsibhcYuwTAtB_13typst_realize(ptr nonnull %.val24, i64 %.val25) #31
          to label %bb.g unwind label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.c, ptr %i.x, align 8
  store <2 x i64> %i.d, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.val24, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.val26, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val27, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.n:                                             ; preds = %bb.l, %bb.g
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
end_hunk_5

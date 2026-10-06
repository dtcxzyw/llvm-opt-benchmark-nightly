Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB16_11foundations7content6packed6PackedNtNtNtB16_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyB10_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0INtNtB3j_3vec3VecBZ_EEB4c_:bb.a
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.d) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp samesign ugt i64 %..i8, 128         ; 3 uses
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %i.f = shl nuw nsw i64 %..i9, 5                 ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !12418
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 17) 8) #56, !noalias !12418 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.f) #57
  unreachable

bb.b:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %i.e, label %bb.g, label %common.resume

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %..i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = phi ptr [ undef, %bb.a ], [ %i.g, %bb.c ]
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %..i9, %bb.c ]
  %.pn14 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.c ]
  %i.k = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB48_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn14, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.k, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerEEEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerEEEECs7tN9tvpkfrg_12typst_layout.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

common.resume:                                    ; preds = %bb.b, %bb.g
  resume { ptr, i32 } %i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.e
  %i.l = shl nuw nsw i64 %..i9, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !12419
  br label %bb.f

bb.g:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1f_11foundations7content6packed6PackedNtNtNtB1f_5model3par13ParLineMarkerEEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB14_5point5PointNtNtB14_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyTB10_B1O_ENCNvMs_NtB1S_8layouterNtB4C_12GridLayouter20render_fills_strokesse_0E0INtNtB3E_3vec3VecBZ_EEB1U_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 38461)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c)
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = mul nuw nsw i64 %..i9, 208               ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !12426
  %i.e = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef range(i64 1, 17) 16) #56, !noalias !12426 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.a

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 16, i64 %i.d) #57
  unreachable

bb.a:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %..i9, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB11_5point5PointNtNtB11_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyTBX_B1L_ENCNvMs_NtB1P_8layouterNtB4y_12GridLayouter20render_fills_strokesse_0E0EB1R_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 16 %i.e, i64 noundef %..i9, i1 noundef zeroext %i.g, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBK_5point5PointNtNtBK_5frame9FrameItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1A_.exit.i unwind label %bb.b

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBK_5point5PointNtNtBK_5frame9FrameItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1A_.exit.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !12427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

common.resume:                                    ; preds = %bb.b
  resume { ptr, i32 } %i.h

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1d_5point5PointNtNtB1d_5frame9FrameItemEEEB23_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #54
          to label %common.resume unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable14driftsort_mainTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB15_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0INtNtB2D_3vec3VecBZ_EEB3t_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 250000)
  %..i11 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.c) ; 2 uses
  %..i12 = tail call noundef i64 @llvm.umax.i64(i64 %..i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %..i11, 128        ; 3 uses
  br i1 %i.d, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %..i12, 5                ; 2 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !12432
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 17) 8) #56, !noalias !12432 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #57
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit13, label %bb.f

bb.c:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %..i12, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB12_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  %i.j = shl nuw nsw i64 %..i12, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %bb.e

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit13, %bb.b
  resume { ptr, i32 } %i.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainEEECs7tN9tvpkfrg_12typst_layout.exit13: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %..i12, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %bb.f
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBY_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SBT_20sort_unstable_by_keyB21_NCNvB23_6commits0_0E0EB27_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE7reverseB1I_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val5 = load i64, ptr %i.b, align 8, !noundef !41 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val6 = load i64, ptr %i.c, align 8, !noundef !41
  %i.d = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.d, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.h, %bb.c ], [ 2, %.preheader11 ] ; 4 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i13
  %3 = add nsw i64 %.sroa.01.0.i13, -1
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %i.f = getelementptr i8, ptr %i.e, i64 56
  %.val3 = load i64, ptr %i.f, align 8, !noundef !41 ; 2 uses
  %i.g = icmp ult i64 %.val3, %.val4
  br i1 %i.g, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.l, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.1.i16
  %5 = add nsw i64 %.sroa.01.1.i16, -1
  %6 = icmp samesign ult i64 %5, %1
  tail call void @llvm.assume(i1 %6)
  %i.j = getelementptr i8, ptr %i.i, i64 56
  %.val = load i64, ptr %i.j, align 8, !noundef !41 ; 2 uses
  %i.k = icmp ult i64 %.val, %.val2
  br i1 %i.k, label %bb.d, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.l = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.l, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread, label %.lr.ph17

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.m = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.n, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread, label %bb.e

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit
  br i1 %i.d, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE7reverseB1I_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit
  %i.o = or i64 %1, 1
  %i.p = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 1
  %i.s = xor i32 %i.r, 126
  tail call fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB1c_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB17_20sort_unstable_by_keyB2g_NCNvB2i_6commits0_0E0EB2m_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, i32 noundef %i.s, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE7reverseB1I_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE7reverseB1I_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i, %bb.a, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread, %bb.e
  ret void

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB17_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB6_SB12_20sort_unstable_by_keyB2b_NCNvB2d_6commits0_0E0EB2h_.exit.thread
  %i.t = lshr i64 %1, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12456)
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.am, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.preheader.i.i ] ; 3 uses
  %i.v = xor i64 %.sroa.0.016.i.i, -1
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 5 uses
  %i.x = getelementptr [64 x i8], ptr %i.u, i64 %i.v ; 5 uses
  %i.y = load <2 x i64>, ptr %i.w, align 8, !alias.scope !12457, !noalias !12456
  %i.z = load <2 x i64>, ptr %i.x, align 8, !alias.scope !12458, !noalias !12455
  store <2 x i64> %i.z, ptr %i.w, align 8, !alias.scope !12457, !noalias !12456
  store <2 x i64> %i.y, ptr %i.x, align 8, !alias.scope !12458, !noalias !12455
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !12459, !noalias !12456
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !12460, !noalias !12455
  store <2 x i64> %i.ad, ptr %i.aa, align 8, !alias.scope !12459, !noalias !12456
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !alias.scope !12460, !noalias !12455
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !12461, !noalias !12456
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !12462, !noalias !12455
  store <2 x i64> %i.ah, ptr %i.ae, align 8, !alias.scope !12461, !noalias !12456
  store <2 x i64> %i.ag, ptr %i.af, align 8, !alias.scope !12462, !noalias !12455
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !12463, !noalias !12456
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !12464, !noalias !12455
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !12463, !noalias !12456
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !12464, !noalias !12455
  %i.am = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, %i.t
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE7reverseB1I_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtBz_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexE12split_at_mutB1I_.exit11.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB14_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0) ; 2 uses
  %i.o = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0)
  %i.p = xor i8 %i.o, %i.n
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.08.0)
  %i.s = xor i8 %i.r, %i.n
  %i.t = icmp slt i8 %i.s, 0
  %..i = select i1 %i.t, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1b_11foundations7content6packed6PackedNtNtNtB1b_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyB15_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4i_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef range(i64 0, 36028797018963968) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = icmp samesign ugt i64 %3, 7
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 3                           ; 5 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.i
  %i.k = mul nuw nsw i64 %i.h, 7                  ; 3 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.k
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1b_11foundations7content6packed6PackedNtNtNtB1b_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyB15_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4i_(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.h)
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.k
  %i.p = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1b_11foundations7content6packed6PackedNtNtNtB1b_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyB15_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4i_(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.h)
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.i
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.k
  %i.s = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1b_11foundations7content6packed6PackedNtNtNtB1b_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_11sort_by_keyB15_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4i_(ptr noundef %2, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.s, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val13 = load double, ptr %.sroa.0.0, align 8, !noundef !41
  %.sroa.04.0.val14 = load double, ptr %.sroa.04.0, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %.sroa.0.0.val13, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %.sroa.04.0.val14, ptr %i.e, align 8
  %i.t = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.val = load double, ptr %.sroa.0.0, align 8, !noundef !41
  %.sroa.08.0.val12 = load double, ptr %.sroa.08.0, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %.sroa.0.0.val, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %.sroa.08.0.val12, ptr %i.c, align 8
  %i.u = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.v = xor i8 %i.u, %i.t
  %i.w = icmp slt i8 %i.v, 0
  br i1 %i.w, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB16_11foundations7content6packed6PackedNtNtNtB16_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyB10_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4c_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.04.0.val = load double, ptr %.sroa.04.0, align 8, !noundef !41
  %.sroa.08.0.val = load double, ptr %.sroa.08.0, align 8, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %.sroa.04.0.val, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %.sroa.08.0.val, ptr %i.a, align 8
  %i.x = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = xor i8 %i.x, %i.t
  %i.z = icmp slt i8 %i.y, 0
  %..i = select i1 %i.z, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB16_11foundations7content6packed6PackedNtNtNtB16_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyB10_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4c_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB16_11foundations7content6packed6PackedNtNtNtB16_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_11sort_by_keyB10_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4c_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB19_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB14_20sort_unstable_by_keyB2d_NCNvB2f_6commits0_0E0EB2j_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 18014398509481984) %3) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB14_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SBZ_20sort_unstable_by_keyB28_NCNvB2a_6commits0_0E0EB2e_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtB19_5frame5FrameNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4line12LogicalIndexENCINvMB8_SB14_20sort_unstable_by_keyB2d_NCNvB2f_6commits0_0E0EB2j_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1s_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1m_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3R_:.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.ac, align 1, !noalias !12562 ; 2 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.ab
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.ar, %bb.g ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.01.0.i.i.i.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.y
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [16 x i8], ptr %i.z, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -16
  %.val2.i.i.i.i.i = load i128, ptr %i.al, align 16, !noalias !12563, !noundef !41
  %i.am = icmp eq i128 %i.k, %.val2.i.i.i.i.i
  br i1 %i.am, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i, label %bb.g, !prof !43

._crit_edge.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %i.an = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = icmp eq i16 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i, !prof !44

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aq = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.ar = and i16 %i.aq, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.as = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.at = add i64 %.sroa.01.0.i.i.i.i.i, %i.as
  br label %bb.f

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i: ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i, %.noexc, %.lr.ph7
  %.sroa.0.0.i.i = phi i32 [ 0, %.lr.ph7 ], [ -1, %.lr.ph.i.i.i.i ], [ 1, %.noexc ], [ 1, %._crit_edge.i.i.i.i ]
  %.val.i = load ptr, ptr %.0.val, align 8        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i) ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !41, !align !46, !noundef !41
  %i.aw = icmp eq ptr %i.av, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.aw, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ax = load ptr, ptr %.val9.i, align 8, !nonnull !41, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = invoke noundef i128 @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB2_3Tag8location(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.ay)
          to label %.noexc4 unwind label %bb.n    ; 3 uses

.noexc4:                                          ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12564)
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !12564, !noundef !41
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.noexc4
  %i.bd = trunc i128 %i.az to i64
  %i.be = mul i64 %i.bd, -1065810590584100411
  %i.bf = lshr i128 %i.az, 64
  %i.bg = trunc nuw i128 %i.bf to i64
  %i.bh = add i64 %i.be, %i.bg
  %i.bi = mul i64 %i.bh, -1065810590584100411     ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12566)
  %i.bk = lshr i64 %i.bj, 57
  %i.bl = trunc nuw nsw i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !12567, !noalias !12568, !noundef !41 ; 2 uses
  %i.bo = load ptr, ptr %.val.i, align 8, !alias.scope !12567, !noalias !12568, !nonnull !41, !noundef !41 ; 2 uses
  %i.bp = insertelement <16 x i8> poison, i8 %i.bl, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i.i5.i = phi i64 [ 0, %bb.j ], [ %i.ch, %bb.m ]
  %.pn.i.i.i6.i = phi i64 [ %i.bj, %bb.j ], [ %i.ci, %bb.m ]
  %.sroa.01.0.i.i.i.i7.i = and i64 %.pn.i.i.i6.i, %i.bn ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.01.0.i.i.i.i7.i
  %.sroa.0.0.copyload.i24.i.i.i8.i = load <16 x i8>, ptr %i.br, align 1, !noalias !12569 ; 2 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i8.i, %i.bq
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not.i.not30.i.i.i9.i = icmp eq i16 %i.bt, 0
  br i1 %.not.i.not30.i.i.i9.i, label %._crit_edge.i.i.i14.i, label %.lr.ph.i.i.i10.i

.lr.ph.i.i.i10.i:                                 ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i.i11.i = phi i16 [ %i.cg, %bb.l ], [ %i.bt, %bb.k ] ; 3 uses
  %i.bu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i11.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.01.0.i.i.i.i7.i, %i.bv
  %i.bx = and i64 %i.bw, %i.bn
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -16
  %.val2.i.i.i.i12.i = load i128, ptr %i.ca, align 16, !noalias !12570, !noundef !41
  %i.cb = icmp eq i128 %i.az, %.val2.i.i.i.i12.i
  br i1 %i.cb, label %.loopexit, label %bb.l, !prof !43

._crit_edge.i.i.i14.i:                            ; preds = %bb.l, %bb.k
  %i.cc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i8.i, splat (i8 -1)
  %i.cd = bitcast <16 x i1> %i.cc to i16
  %i.ce = icmp eq i16 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %.loopexit, !prof !44

bb.l:                                             ; preds = %.lr.ph.i.i.i10.i
  %i.cf = add i16 %.sroa.06.0.i31.i.i.i11.i, -1
  %i.cg = and i16 %i.cf, %.sroa.06.0.i31.i.i.i11.i ; 2 uses
  %.not.i.not.i.i.i13.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.not.i.i.i13.i, label %._crit_edge.i.i.i14.i, label %.lr.ph.i.i.i10.i

bb.m:                                             ; preds = %._crit_edge.i.i.i14.i
  %i.ch = add i64 %.sroa.9.0.i.i.i.i5.i, 16       ; 2 uses
  %i.ci = add i64 %.sroa.01.0.i.i.i.i7.i, %i.ch
  br label %bb.k

.loopexit:                                        ; preds = %._crit_edge.i.i.i14.i, %.lr.ph.i.i.i10.i, %.noexc4, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i
  %.sroa.0.0.i4.i = phi i32 [ 0, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i ], [ -1, %.lr.ph.i.i.i10.i ], [ 1, %.noexc4 ], [ 1, %._crit_edge.i.i.i14.i ]
  %i.cj = icmp slt i32 %.sroa.0.0.i.i, %.sroa.0.0.i4.i
  br i1 %i.cj, label %bb.c, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %bb.c, %.loopexit, %bb.b
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.b ], [ %0, %bb.c ], [ %.sroa.0.0.i5, %.loopexit ] ; 2 uses
  store ptr %.sroa.010.0.copyload.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !12571
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !12571
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3D_.exit

bb.n:                                             ; preds = %bb.i, %bb.d
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.010.0.copyload.i, ptr %.sroa.0.0.i5, align 8, !noalias !12572
  %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa.0.0.lcssa6.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !12572
  resume { ptr, i32 } %i.ck

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1e_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3D_.exit: ; preds = %bb.a, %.loopexit._crit_edge
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.07, i64 32 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBW_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i107 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i112 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.021.0 = phi i8 [ %i.bi, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 10 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o), !noalias !12600
  %i.s = icmp slt i8 %i.r, 0                      ; 2 uses
  %.not79 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.sroa.01.0.i.i62 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i62
  %6 = add nsw i64 %.sroa.01.0.i.i62, -1          ; 2 uses
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %6
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %8), !noalias !12600
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i62, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.sroa.01.1.i.i65 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i65
  %9 = add nsw i64 %.sroa.01.1.i.i65, -1          ; 2 uses
  %10 = icmp ult i64 %9, %i.n
  tail call void @llvm.assume(i1 %10)
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %9
  %i.y = tail call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %11), !noalias !12600
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.aa = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph66

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110: ; preds = %.preheader
  br i1 %.not5.i112, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i107, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12576
  %i.ad = shl nuw nsw i64 %..i36, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %middle.block, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread ], [ %.sroa.0.0.i.i108115119, %middle.block ], [ %.sroa.0.0.i.i108115119, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12601), !noalias !12600
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12602), !noalias !12600
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110 ] ; 4 uses
  %.sroa.0.0.i.i108115119 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB12_NtNtB8_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i.thread110 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i108115119 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i
  %n.vec = and i64 %i.ai, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = xor i64 %index, -1
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !alias.scope !12603, !noalias !12604
  %wide.load144 = load <2 x double>, ptr %i.an, align 8, !alias.scope !12603, !noalias !12604
  %i.ao = getelementptr i8, ptr %i.am, i64 -8
  %i.ap = getelementptr i8, ptr %i.am, i64 -24
  %wide.load145 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !12605, !noalias !12606
  %wide.load146 = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !12605, !noalias !12606
  %reverse = shufflevector <2 x i64> %wide.load145, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse147 = shufflevector <2 x i64> %wide.load146, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %reverse, ptr %i.al, align 8, !alias.scope !12603, !noalias !12604
  store <2 x i64> %reverse147, ptr %i.aq, align 8, !alias.scope !12603, !noalias !12604
  %i.ar = getelementptr i8, ptr %i.am, i64 -8
  %i.as = getelementptr i8, ptr %i.am, i64 -24
  %reverse148 = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse149 = shufflevector <2 x double> %wide.load144, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse148, ptr %i.ar, align 8, !alias.scope !12605, !noalias !12606
  store <2 x double> %reverse149, ptr %i.as, align 8, !alias.scope !12605, !noalias !12606
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !12582

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.az, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i.preheader ] ; 3 uses
  %i.au = xor i64 %.sroa.0.016.i.i, -1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.aj, i64 %i.au ; 2 uses
  %i.ax = load double, ptr %i.av, align 8, !alias.scope !12603, !noalias !12604, !noundef !41
  %i.ay = load i64, ptr %i.aw, align 8, !alias.scope !12605, !noalias !12606
  store i64 %i.ay, ptr %i.av, align 8, !alias.scope !12603, !noalias !12604
  store double %i.ax, ptr %i.aw, align 8, !alias.scope !12605, !noalias !12606
  %i.az = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.ai
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, !llvm.loop !12583

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB13_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Abs7reverseCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.ba = lshr i64 %.sroa.023.0, 1
  %i.bb = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bc = sub nsw i64 %factor, %i.ba
  %i.bd = add nuw nsw i64 %i.bb, %factor
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = mul i64 %i.bd, %.sroa.0.0
  %i.bg = xor i64 %i.bf, %i.be
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bi = trunc nuw nsw i64 %i.bh to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bj, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 4 uses
  %i.bj = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.bl, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bn, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bj
  %i.bp = load i64, ptr %i.bo, align 8, !noundef !41 ; 3 uses
  %i.bq = lshr i64 %i.bp, 1                       ; 8 uses
  %i.br = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bs = add nuw i64 %i.bq, %i.br                ; 4 uses
  %i.bt = sub i64 %.sroa.09.0, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt ; 6 uses
  %i.bv = icmp samesign ugt i64 %i.bs, %3
  %i.bw = trunc i64 %.sroa.023.170 to i1
  %i.bx = or i64 %i.bp, %.sroa.023.170
  %i.by = trunc i64 %i.bx to i1
  %or.cond3.i = or i1 %i.bv, %i.by
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc i64 %i.bp to i1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ca = shl nuw nsw i64 %i.bs, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bw, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cb = or i64 %i.bq, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bq
  %i.ch = or i64 %i.br, 1
  %i.ci = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %i.cg, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12607)
  %i.cm = icmp eq i64 %i.bq, 0
  %i.cn = icmp eq i64 %i.br, 0
  %or.cond.i = or i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 range(i64 0, -9223372036854775808) %i.bq) ; 2 uses
  %i.co = icmp samesign ult i64 %3, %..i.i
  br i1 %i.co, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bq ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bq, %i.br  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cp, ptr %i.bu
  %i.cq = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cq, i1 false), !alias.scope !12608
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cp, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cr, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cv, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cs = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cu = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cs)
          to label %.noexc.i unwind label %.loopexit.i ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -8 ; 2 uses
  %i.cw = icmp sgt i8 %i.cu, -1                   ; 2 uses
  %..i17.i = select i1 %i.cw, ptr %i.ct, ptr %i.cs
  %i.cx = load i64, ptr %..i17.i, align 8, !alias.scope !12608, !noalias !12609
  store i64 %i.cx, ptr %i.cv, align 8, !alias.scope !12610, !noalias !12611
  %i.cy = zext i1 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cy ; 3 uses
  %.lobit.i.i = lshr i8 %i.cu, 7
  %i.da = zext nneg i8 %.lobit.i.i to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bu
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dl, %.noexc21.i ], [ %i.bu, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.di, %.noexc21.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dk, %.noexc21.i ], [ %i.cp, %.critedge.i ] ; 3 uses
  %i.de = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i34)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i ; 2 uses

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.df = icmp sgt i8 %i.de, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.df, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  %i.dg = load i64, ptr %.sroa.05.0.i.i, align 8, !alias.scope !12608, !noalias !12612
  store i64 %i.dg, ptr %.sroa.13.1.i, align 8, !alias.scope !12610, !noalias !12613
  %i.dh = zext i1 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i34, i64 %i.dh ; 3 uses
  %.lobit.i19.i = lshr i8 %i.de, 7
  %i.dj = zext nneg i8 %.lobit.i19.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 8 ; 2 uses
  %i.dm = icmp ne ptr %i.di, %i.cr
  %i.dn = icmp ne ptr %i.dk, %i.m
  %or.cond.i20.i = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.dl, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cr, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.di, %.noexc21.i ] ; 2 uses
  %i.do = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dp = ptrtoint ptr %.sroa.0.3.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.dq, i1 false), !alias.scope !12608, !noalias !12614
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cr, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dr = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ds = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dt = sub nuw i64 %i.dr, %i.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dt, i1 false), !alias.scope !12608, !noalias !12615
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.du = shl nuw nsw i64 %i.bs, 1
  %i.dv = or disjoint i64 %i.du, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB16_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i = phi i64 [ %i.dv, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYBX_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ca, %bb.u ] ; 2 uses
  %i.dw = icmp ugt i64 %i.bj, 1
  br i1 %i.dw, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dy = lshr i64 %.sroa.018.0, 1
  %i.dz = add nuw i64 %i.dy, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ea = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ea, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eb = or i64 %1, 1
  %i.ec = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.eb, i1 true)
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = xor i32 %i.ee, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB15_NtNtBa_3cmp10PartialOrd2ltECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #58, !inline_history !12584
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB13_11foundations7content6packed6PackedNtNtNtB13_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB48_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ab ] ; 3 uses
  %i.u = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit
  %.sroa.021.0 = phi i8 [ %i.bm, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.v = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.v, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.x = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12651)
  %.not.i31 = icmp ult i64 %i.x, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.z = icmp samesign ult i64 %i.x, 2
  br i1 %i.z, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.val10.i = load double, ptr %i.aa, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 3 uses
  %.val11.i = load double, ptr %i.y, align 8, !alias.scope !12651, !noalias !12652, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12653
  store double %.val10.i, ptr %i.b, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12653
  store double %.val11.i, ptr %i.a, align 8, !noalias !12653
  %i.ab = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !12653
  %i.ac = icmp slt i8 %i.ab, 0                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12653
  %.not79 = icmp eq i64 %i.x, 2                   ; 2 uses
  br i1 %i.ac, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not79, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113, label %.lr.ph66

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.val9.i = phi double [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader47 ]
  %.sroa.01.0.i.i62 = phi i64 [ %i.ag, %bb.l ], [ 2, %.preheader47 ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.01.0.i.i62
  %6 = add nsw i64 %.sroa.01.0.i.i62, -1
  %7 = icmp ult i64 %6, %i.x
  call void @llvm.assume(i1 %7)
  %.val8.i = load double, ptr %i.ad, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12653
  store double %.val8.i, ptr %i.d, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12653
  store double %.val9.i, ptr %i.c, align 8, !noalias !12653
  %i.ae = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !12653
  %i.af = icmp slt i8 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12653
  br i1 %i.af, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ag = add nuw i64 %.sroa.01.0.i.i62, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %.lr.ph

.lr.ph66:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi double [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i65 = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.01.1.i.i65
  %8 = add nsw i64 %.sroa.01.1.i.i65, -1
  %9 = icmp ult i64 %8, %i.x
  call void @llvm.assume(i1 %9)
  %.val.i = load double, ptr %i.ah, align 8, !alias.scope !12651, !noalias !12652, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12653
  store double %.val.i, ptr %i.f, align 8, !noalias !12653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12653
  store double %.val7.i, ptr %i.e, align 8, !noalias !12653
  %i.ai = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e), !noalias !12653
  %i.aj = icmp slt i8 %i.ai, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12653
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i

bb.m:                                             ; preds = %.lr.ph66
  %i.ak = add nuw i64 %.sroa.01.1.i.i65, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ak, %i.x
  br i1 %exitcond92.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i, label %.lr.ph66

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph66
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i65, %.lr.ph66 ], [ %i.x, %bb.m ], [ %.sroa.01.0.i.i62, %.lr.ph ], [ %i.x, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.x
  call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i110, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i
  br i1 %i.ac, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.x, i64 %.sroa.01.0)
  %i.am = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.x, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12620
  %i.an = shl nuw nsw i64 %..i36, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.x, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ]
  %i.ap = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit

bb.q:                                             ; preds = %bb.n
  %i.ar = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12654), !noalias !12652
  call void @llvm.experimental.noalias.scope.decl(metadata !12655), !noalias !12652
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113, %bb.q
  %i.as = phi i64 [ %i.ar, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113 ]
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB19_11foundations7content6packed6PackedNtNtNtB19_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4g_.exit.i.thread113 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.0.0.i.i111118122
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bd, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i ] ; 3 uses
  %i.au = xor i64 %.sroa.0.016.i.i, -1
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aw = getelementptr [32 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !alias.scope !12656, !noalias !12657
  %i.ay = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !12658, !noalias !12659
  store <2 x i64> %i.ay, ptr %i.av, align 8, !alias.scope !12656, !noalias !12657
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !alias.scope !12658, !noalias !12659
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !12660, !noalias !12657
  %i.bc = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !12661, !noalias !12659
  store <2 x i64> %i.bc, ptr %i.az, align 8, !alias.scope !12660, !noalias !12657
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !12661, !noalias !12659
  %i.bd = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bd, %i.as
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1a_11foundations7content6packed6PackedNtNtNtB1a_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4h_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtBB_11foundations7content6packed6PackedNtNtNtBB_5model3par13ParLineMarkerEE7reverseCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.be = lshr i64 %.sroa.023.0, 1
  %i.bf = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bg = sub nsw i64 %factor, %i.be
  %i.bh = add nuw nsw i64 %i.bf, %factor
  %i.bi = mul i64 %i.bg, %.sroa.0.0
  %i.bj = mul i64 %i.bh, %.sroa.0.0
  %i.bk = xor i64 %i.bj, %i.bi
  %i.bl = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 false)
  %i.bm = trunc nuw nsw i64 %i.bl to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph72, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit
  %.sroa.02.171 = phi i64 [ %.sroa.02.0, %.lr.ph72 ], [ %i.bn, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 2 uses
  %.sroa.023.170 = phi i64 [ %.sroa.023.0, %.lr.ph72 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 4 uses
  %i.bn = add i64 %.sroa.02.171, -1               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.bp, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.170, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.171, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.br, align 1
  br i1 %i.u, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.bn
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !41 ; 3 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 8 uses
  %i.bv = lshr i64 %.sroa.023.170, 1              ; 6 uses
  %i.bw = add nuw i64 %i.bu, %i.bv                ; 4 uses
  %i.bx = sub i64 %.sroa.09.0, %i.bw
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bx ; 6 uses
  %i.bz = icmp samesign ugt i64 %i.bw, %3
  %i.ca = trunc i64 %.sroa.023.170 to i1
  %i.cb = or i64 %i.bt, %.sroa.023.170
  %i.cc = trunc i64 %i.cb to i1
  %or.cond3.i = or i1 %i.bz, %i.cc
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = trunc i64 %i.bt to i1
  br i1 %i.cd, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ce = shl nuw nsw i64 %i.bw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ca, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cf = or i64 %i.bu, 1
  %i.cg = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 288230376151711744) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bu
  %i.cl = or i64 %i.bv, 1
  %i.cm = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %i.ck, i64 noundef range(i64 0, 288230376151711744) %i.bv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !12662)
  call void @llvm.experimental.noalias.scope.decl(metadata !12663)
  %i.cq = icmp eq i64 %i.bu, 0
  %i.cr = icmp eq i64 %i.bv, 0
  %or.cond.i = or i1 %i.cr, %i.cq
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bu) ; 2 uses
  %i.cs = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cs, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bu ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bu, %i.bv  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ct, ptr %i.by
  %i.cu = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cu, i1 false), !alias.scope !12664
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.ct, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.de, %.noexc.i ], [ %i.cv, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.cz, %.noexc.i ], [ %i.w, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 3 uses
  %.val.i.i = load double, ptr %i.cx, align 8, !alias.scope !12663, !noalias !12665, !noundef !41
  %.val12.i.i = load double, ptr %i.cw, align 8, !alias.scope !12662, !noalias !12666, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12667
  store double %.val.i.i, ptr %i.j, align 8, !noalias !12667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12667
  store double %.val12.i.i, ptr %i.i, align 8, !noalias !12667
  %i.cy = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !12664 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -32 ; 2 uses
  %i.da = icmp sgt i8 %i.cy, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12667
  %..i17.i = select i1 %i.da, ptr %i.cx, ptr %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %..i17.i, i64 32, i1 false), !alias.scope !12664, !noalias !12668
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.cw, i64 %i.db ; 3 uses
  %.lobit.i.i = lshr i8 %i.cy, 7
  %i.dd = zext nneg i8 %.lobit.i.i to i64
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.cx, i64 %i.dd ; 3 uses
  %i.df = icmp eq ptr %i.dc, %i.by
  %i.dg = icmp eq ptr %i.de, %2
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.dn, %.noexc22.i ], [ %i.by, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dk, %.noexc22.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dm, %.noexc22.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 8, !alias.scope !12662, !noalias !12669, !noundef !41
  %.val.i19.i = load double, ptr %.sroa.0.0.i34, align 8, !alias.scope !12663, !noalias !12670, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12671
  store double %.sroa.0.0.val.i.i, ptr %i.h, align 8, !noalias !12671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12671
  store double %.val.i19.i, ptr %i.g, align 8, !noalias !12671
  %i.dh = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !12664 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.di = icmp sgt i8 %i.dh, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12671
  %.sroa.05.0.i.i = select i1 %i.di, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i.i, i64 32, i1 false), !alias.scope !12664, !noalias !12672
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i34, i64 %i.dj ; 3 uses
  %.lobit.i20.i = lshr i8 %i.dh, 7
  %i.dl = zext nneg i8 %.lobit.i20.i to i64
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 32 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cv
  %i.dp = icmp ne ptr %i.dm, %i.w
  %or.cond.i21.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dc, %.noexc.i ], [ %i.dn, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.de, %.noexc.i ], [ %i.cv, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dk, %.noexc22.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ds, i1 false), !alias.scope !12664, !noalias !12673
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cv, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dt = ptrtoint ptr %.sroa.7.1.i to i64
  %i.du = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.dv, i1 false), !alias.scope !12664, !noalias !12674
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1h_11foundations7content6packed6PackedNtNtNtB1h_5model3par13ParLineMarkerEEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4B_.exit.i
  %i.dw = shl nuw nsw i64 %i.bw, 1
  %i.dx = or disjoint i64 %i.dw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1d_11foundations7content6packed6PackedNtNtNtB1d_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4k_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit
  %.sroa.0.0.i = phi i64 [ %i.dx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB14_11foundations7content6packed6PackedNtNtNtB14_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB49_.exit ], [ %i.ce, %bb.u ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bn, 1
  br i1 %i.dy, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dz = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ec, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = or i64 %1, 1
  %i.ee = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsINtNtNtNtB1c_11foundations7content6packed6PackedNtNtNtB1c_5model3par13ParLineMarkerEENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose19layout_line_numbers0E0EB4j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12635
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB11_5point5PointNtNtB11_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyTBX_B1L_ENCNvMs_NtB1P_8layouterNtB4y_12GridLayouter20render_fills_strokesse_0E0EB1R_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = icmp samesign ult i64 %1, 2
  br i1 %i.m, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = udiv i64 4611686018427387904, %1
  %i.o = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.o, 0
  %i.p = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.n, %i.p         ; 2 uses
  %i.q = icmp samesign ult i64 %1, 4097
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %1, 1
  %i.t = sub nuw nsw i64 %1, %i.s
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.t, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.r, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gx, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gv, %bb.ab ] ; 3 uses
  %i.ae = icmp ult i64 %.sroa.09.0, %1            ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit
  %.sroa.021.0 = phi i8 [ %i.dy, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.af = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.af, label %.lr.ph75, label %._crit_edge

.lr.ph75:                                         ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.ah = sub nuw nsw i64 %1, %.sroa.09.0         ; 13 uses
  %i.ai = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12754)
  %.not.i31 = icmp ult i64 %i.ah, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp samesign ult i64 %i.ah, 2
  br i1 %i.aj, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 208
  %.val14.i = load double, ptr %i.ak, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 232
  %.val15.i = load i8, ptr %i.al, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 4 uses
  %.val16.i = load double, ptr %i.ai, align 16, !alias.scope !12754, !noalias !12755, !noundef !41
  %i.am = getelementptr i8, ptr %i.ai, i64 24
  %.val17.i = load i8, ptr %i.am, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12756
  store double %.val14.i, ptr %i.b, align 8, !noalias !12756
  store i8 %.val15.i, ptr %i.u, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12756
  store double %.val16.i, ptr %i.a, align 8, !noalias !12756
  store i8 %.val17.i, ptr %i.v, align 8, !noalias !12756
  %i.an = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !12756 ; 2 uses
  %i.ao = icmp eq i8 %i.an, 0
  %i.ap = icmp slt i8 %i.an, 0
  %i.aq = icmp samesign ult i8 %.val15.i, %.val17.i
  %.sroa.0.0.i.i40 = select i1 %i.ao, i1 %i.aq, i1 %i.ap ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12756
  %.not82 = icmp eq i64 %i.ah, 2                  ; 2 uses
  br i1 %.sroa.0.0.i.i40, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not82, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121, label %.lr.ph69

.lr.ph:                                           ; preds = %.preheader50, %bb.l
  %.val13.i = phi i8 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader50 ] ; 2 uses
  %.val12.i = phi double [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader50 ]
  %.sroa.01.0.i.i65 = phi i64 [ %i.ax, %bb.l ], [ 2, %.preheader50 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.01.0.i.i65 ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i.i65, -1
  %7 = icmp ult i64 %6, %i.ah
  call void @llvm.assume(i1 %7)
  %.val10.i = load double, ptr %i.ar, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 24
  %.val11.i = load i8, ptr %i.as, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12756
  store double %.val10.i, ptr %i.d, align 8, !noalias !12756
  store i8 %.val11.i, ptr %i.w, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12756
  store double %.val12.i, ptr %i.c, align 8, !noalias !12756
  store i8 %.val13.i, ptr %i.x, align 8, !noalias !12756
  %i.at = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !noalias !12756 ; 2 uses
  %i.au = icmp eq i8 %i.at, 0
  %i.av = icmp slt i8 %i.at, 0
  %i.aw = icmp samesign ult i8 %.val11.i, %.val13.i
  %.sroa.0.0.i.i39 = select i1 %i.au, i1 %i.aw, i1 %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12756
  br i1 %.sroa.0.0.i.i39, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ax = add nuw i64 %.sroa.01.0.i.i65, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.ah
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %.lr.ph

.lr.ph69:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i8 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi double [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i68 = phi i64 [ %i.be, %bb.m ], [ 2, %.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.01.1.i.i68 ; 2 uses
  %8 = add nsw i64 %.sroa.01.1.i.i68, -1
  %9 = icmp ult i64 %8, %i.ah
  call void @llvm.assume(i1 %9)
  %.val.i = load double, ptr %i.ay, align 16, !alias.scope !12754, !noalias !12755, !noundef !41 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 24
  %.val7.i = load i8, ptr %i.az, align 8, !range !48, !alias.scope !12754, !noalias !12755, !noundef !41 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12756
  store double %.val.i, ptr %i.f, align 8, !noalias !12756
  store i8 %.val7.i, ptr %i.y, align 8, !noalias !12756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12756
  store double %.val8.i, ptr %i.e, align 8, !noalias !12756
  store i8 %.val9.i, ptr %i.z, align 8, !noalias !12756
  %i.ba = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e), !noalias !12756 ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = icmp slt i8 %i.ba, 0
  %i.bd = icmp samesign ult i8 %.val7.i, %.val9.i
  %.sroa.0.0.i.i38 = select i1 %i.bb, i1 %i.bd, i1 %i.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12756
  br i1 %.sroa.0.0.i.i38, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i

bb.m:                                             ; preds = %.lr.ph69
  %i.be = add nuw i64 %.sroa.01.1.i.i68, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.be, %i.ah
  br i1 %exitcond96.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i, label %.lr.ph69

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph69
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i68, %.lr.ph69 ], [ %i.ah, %bb.m ], [ %.sroa.01.0.i.i65, %.lr.ph ], [ %i.ah, %bb.l ] ; 6 uses
  %i.bf = icmp samesign ule i64 %.sroa.0.0.i.i, %i.ah
  call void @llvm.assume(i1 %i.bf)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i
  br i1 %.sroa.0.0.i.i40, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 44343134792571038) %i.ah, i64 %.sroa.01.0)
  %i.bg = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 44343134792571038) %i.ah, i64 32) ; 2 uses
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1a_5point5PointNtNtB1a_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyTB16_B1U_ENCNvMs_NtB1Y_8layouterNtB4J_12GridLayouter20render_fills_strokesse_0E0EB20_(ptr noalias nofree noundef nonnull align 16 %i.ai, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12679
  %i.bh = shl nuw nsw i64 %..i36, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4548 = phi i64 [ %i.ah, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i ]
  %i.bj = shl nuw nsw i64 %.sroa.0.0.i.i4548, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit

bb.q:                                             ; preds = %bb.n
  %i.bl = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12757), !noalias !12755
  call void @llvm.experimental.noalias.scope.decl(metadata !12758), !noalias !12755
  %.not.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121, %bb.q
  %i.bm = phi i64 [ %i.bl, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB17_5point5PointNtNtB17_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyTB13_B1R_ENCNvMs_NtB1V_8layouterNtB4G_12GridLayouter20render_fills_strokesse_0E0EB1X_.exit.i.thread121 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.0.0.i.i119126130
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.dp, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.preheader.i.i ] ; 3 uses
  %i.bo = xor i64 %.sroa.0.016.i.i, -1
  %i.bp = getelementptr inbounds nuw [208 x i8], ptr %i.ai, i64 %.sroa.0.016.i.i ; 14 uses
  %i.bq = getelementptr [208 x i8], ptr %i.bn, i64 %i.bo ; 14 uses
  %i.br = load <2 x i64>, ptr %i.bp, align 16, !alias.scope !12759, !noalias !12760
  %i.bs = load <2 x i64>, ptr %i.bq, align 16, !alias.scope !12761, !noalias !12762
  store <2 x i64> %i.bs, ptr %i.bp, align 16, !alias.scope !12759, !noalias !12760
  store <2 x i64> %i.br, ptr %i.bq, align 16, !alias.scope !12761, !noalias !12762
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bv = load <2 x i64>, ptr %i.bt, align 16, !alias.scope !12763, !noalias !12760
  %i.bw = load <2 x i64>, ptr %i.bu, align 16, !alias.scope !12764, !noalias !12762
  store <2 x i64> %i.bw, ptr %i.bt, align 16, !alias.scope !12763, !noalias !12760
  store <2 x i64> %i.bv, ptr %i.bu, align 16, !alias.scope !12764, !noalias !12762
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.bx, align 16, !alias.scope !12765, !noalias !12760
  %i.ca = load <2 x i64>, ptr %i.by, align 16, !alias.scope !12766, !noalias !12762
  store <2 x i64> %i.ca, ptr %i.bx, align 16, !alias.scope !12765, !noalias !12760
  store <2 x i64> %i.bz, ptr %i.by, align 16, !alias.scope !12766, !noalias !12762
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %i.cd = load <2 x i64>, ptr %i.cb, align 16, !alias.scope !12767, !noalias !12760
  %i.ce = load <2 x i64>, ptr %i.cc, align 16, !alias.scope !12768, !noalias !12762
  store <2 x i64> %i.ce, ptr %i.cb, align 16, !alias.scope !12767, !noalias !12760
  store <2 x i64> %i.cd, ptr %i.cc, align 16, !alias.scope !12768, !noalias !12762
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 64 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cf, align 16, !alias.scope !12769, !noalias !12760
  %i.ci = load <2 x i64>, ptr %i.cg, align 16, !alias.scope !12770, !noalias !12762
  store <2 x i64> %i.ci, ptr %i.cf, align 16, !alias.scope !12769, !noalias !12760
  store <2 x i64> %i.ch, ptr %i.cg, align 16, !alias.scope !12770, !noalias !12762
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bp, i64 80 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 80 ; 2 uses
  %i.cl = load <2 x i64>, ptr %i.cj, align 16, !alias.scope !12771, !noalias !12760
  %i.cm = load <2 x i64>, ptr %i.ck, align 16, !alias.scope !12772, !noalias !12762
  store <2 x i64> %i.cm, ptr %i.cj, align 16, !alias.scope !12771, !noalias !12760
  store <2 x i64> %i.cl, ptr %i.ck, align 16, !alias.scope !12772, !noalias !12762
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 96 ; 2 uses
  %i.cp = load <2 x i64>, ptr %i.cn, align 16, !alias.scope !12773, !noalias !12760
  %i.cq = load <2 x i64>, ptr %i.co, align 16, !alias.scope !12774, !noalias !12762
  store <2 x i64> %i.cq, ptr %i.cn, align 16, !alias.scope !12773, !noalias !12760
  store <2 x i64> %i.cp, ptr %i.co, align 16, !alias.scope !12774, !noalias !12762
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112 ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cr, align 16, !alias.scope !12775, !noalias !12760
  %i.cu = load <2 x i64>, ptr %i.cs, align 16, !alias.scope !12776, !noalias !12762
  store <2 x i64> %i.cu, ptr %i.cr, align 16, !alias.scope !12775, !noalias !12760
  store <2 x i64> %i.ct, ptr %i.cs, align 16, !alias.scope !12776, !noalias !12762
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 128 ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cv, align 16, !alias.scope !12777, !noalias !12760
  %i.cy = load <2 x i64>, ptr %i.cw, align 16, !alias.scope !12778, !noalias !12762
  store <2 x i64> %i.cy, ptr %i.cv, align 16, !alias.scope !12777, !noalias !12760
  store <2 x i64> %i.cx, ptr %i.cw, align 16, !alias.scope !12778, !noalias !12762
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bp, i64 144 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bq, i64 144 ; 2 uses
  %i.db = load <2 x i64>, ptr %i.cz, align 16, !alias.scope !12779, !noalias !12760
  %i.dc = load <2 x i64>, ptr %i.da, align 16, !alias.scope !12780, !noalias !12762
  store <2 x i64> %i.dc, ptr %i.cz, align 16, !alias.scope !12779, !noalias !12760
  store <2 x i64> %i.db, ptr %i.da, align 16, !alias.scope !12780, !noalias !12762
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 160 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 160 ; 2 uses
  %i.df = load <2 x i64>, ptr %i.dd, align 16, !alias.scope !12781, !noalias !12760
  %i.dg = load <2 x i64>, ptr %i.de, align 16, !alias.scope !12782, !noalias !12762
  store <2 x i64> %i.dg, ptr %i.dd, align 16, !alias.scope !12781, !noalias !12760
  store <2 x i64> %i.df, ptr %i.de, align 16, !alias.scope !12782, !noalias !12762
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 176 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bq, i64 176 ; 2 uses
  %i.dj = load <2 x i64>, ptr %i.dh, align 16, !alias.scope !12783, !noalias !12760
  %i.dk = load <2 x i64>, ptr %i.di, align 16, !alias.scope !12784, !noalias !12762
  store <2 x i64> %i.dk, ptr %i.dh, align 16, !alias.scope !12783, !noalias !12760
  store <2 x i64> %i.dj, ptr %i.di, align 16, !alias.scope !12784, !noalias !12762
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 192 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bq, i64 192 ; 2 uses
  %i.dn = load <2 x i64>, ptr %i.dl, align 16, !alias.scope !12785, !noalias !12760
  %i.do = load <2 x i64>, ptr %i.dm, align 16, !alias.scope !12786, !noalias !12762
  store <2 x i64> %i.do, ptr %i.dl, align 16, !alias.scope !12785, !noalias !12760
  store <2 x i64> %i.dn, ptr %i.dm, align 16, !alias.scope !12786, !noalias !12762
  %i.dp = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dp, %i.bm
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE12split_at_mutB1p_.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB18_5point5PointNtNtB18_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyTB14_B1S_ENCNvMs_NtB1W_8layouterNtB4H_12GridLayouter20render_fills_strokesse_0E0EB1Y_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bk, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtBz_5point5PointNtNtBz_5frame9FrameItemE7reverseB1p_.exit ], [ %i.bi, %bb.p ], [ %i.bg, %bb.o ] ; 2 uses
  %i.dq = lshr i64 %.sroa.023.0, 1
  %i.dr = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ds = sub nsw i64 %factor, %i.dq
  %i.dt = add nuw nsw i64 %i.dr, %factor
  %i.du = mul i64 %i.ds, %.sroa.0.0
  %i.dv = mul i64 %i.dt, %.sroa.0.0
  %i.dw = xor i64 %i.dv, %i.du
  %i.dx = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dw, i1 false)
  %i.dy = trunc nuw nsw i64 %i.dx to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph75, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit
  %.sroa.02.174 = phi i64 [ %.sroa.02.0, %.lr.ph75 ], [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 2 uses
  %.sroa.023.173 = phi i64 [ %.sroa.023.0, %.lr.ph75 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 4 uses
  %i.dz = add i64 %.sroa.02.174, -1               ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.eb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.173, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.174, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ed, align 1
  br i1 %i.ae, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dz
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !41 ; 3 uses
  %i.eg = lshr i64 %i.ef, 1                       ; 8 uses
  %i.eh = lshr i64 %.sroa.023.173, 1              ; 6 uses
  %i.ei = add nuw i64 %i.eg, %i.eh                ; 4 uses
  %i.ej = sub i64 %.sroa.09.0, %i.ei
  %i.ek = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.ej ; 6 uses
  %i.el = icmp samesign ugt i64 %i.ei, %3
  %i.em = trunc i64 %.sroa.023.173 to i1
  %i.en = or i64 %i.ef, %.sroa.023.173
  %i.eo = trunc i64 %i.en to i1
  %or.cond3.i = or i1 %i.el, %i.eo
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB11_5point5PointNtNtB11_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyTBX_B1L_ENCNvMs_NtB1P_8layouterNtB4y_12GridLayouter20render_fills_strokesse_0E0EB1R_:bb.a
  %.sroa.0.0.i.i35 = phi ptr [ %i.fn, %.noexc.i ], [ %i.ag, %.critedge.i ]
  %i.fi = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -208 ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -208 ; 3 uses
  %.val.i.i = load double, ptr %i.fj, align 16, !alias.scope !12788, !noalias !12790, !noundef !41
  %i.fk = getelementptr i8, ptr %.sroa.7.0.i, i64 -184
  %.val12.i.i = load i8, ptr %i.fk, align 8, !range !48, !alias.scope !12788, !noalias !12790, !noundef !41 ; 2 uses
  %.val13.i.i = load double, ptr %i.fi, align 16, !alias.scope !12787, !noalias !12791, !noundef !41
  %i.fl = getelementptr i8, ptr %.sroa.13.0.i, i64 -184
  %.val14.i.i = load i8, ptr %i.fl, align 8, !range !48, !alias.scope !12787, !noalias !12791, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12792
  store double %.val.i.i, ptr %i.j, align 8, !noalias !12792
  store i8 %.val12.i.i, ptr %i.ac, align 8, !noalias !12792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12792
  store double %.val13.i.i, ptr %i.i, align 8, !noalias !12792
  store i8 %.val14.i.i, ptr %i.ad, align 8, !noalias !12792
  %i.fm = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !12789 ; 2 uses

.noexc.i:                                         ; preds = %.preheader83
  %i.fn = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -208 ; 2 uses
  %i.fo = icmp eq i8 %i.fm, 0
  %i.fp = icmp slt i8 %i.fm, 0
  %i.fq = icmp samesign ult i8 %.val12.i.i, %.val14.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.fo, i1 %i.fq, i1 %i.fp ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12792
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12792
  %..i17.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.fi, ptr %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %i.fn, ptr noundef nonnull align 16 dereferenceable(208) %..i17.i, i64 208, i1 false), !alias.scope !12789, !noalias !12793
  %i.fr = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.fs = zext i1 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [208 x i8], ptr %i.fi, i64 %i.fs ; 3 uses
  %i.fu = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.fv = getelementptr inbounds nuw [208 x i8], ptr %i.fj, i64 %i.fu ; 3 uses
  %i.fw = icmp eq ptr %i.ft, %i.ek
  %i.fx = icmp eq ptr %i.fv, %2
  %or.cond.i.i = select i1 %i.fw, i1 true, i1 %i.fx
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i, label %.preheader83

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.gj, %.noexc22.i ], [ %i.ek, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.gg, %.noexc22.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.gi, %.noexc22.i ], [ %i.ff, %.critedge.i ] ; 4 uses
  %.sroa.0.0.val.i.i = load double, ptr %.sroa.0.02.i.i, align 16, !alias.scope !12787, !noalias !12794, !noundef !41
  %i.fy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 24
  %.sroa.0.0.val6.i.i = load i8, ptr %i.fy, align 8, !range !48, !alias.scope !12787, !noalias !12794, !noundef !41 ; 2 uses
  %.val.i19.i = load double, ptr %.sroa.0.0.i34, align 16, !alias.scope !12788, !noalias !12795, !noundef !41
  %i.fz = getelementptr i8, ptr %.sroa.0.0.i34, i64 24
  %.val7.i.i = load i8, ptr %i.fz, align 8, !range !48, !alias.scope !12788, !noalias !12795, !noundef !41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12796
  store double %.sroa.0.0.val.i.i, ptr %i.h, align 8, !noalias !12796
  store i8 %.sroa.0.0.val6.i.i, ptr %i.aa, align 8, !noalias !12796
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12796
  store double %.val.i19.i, ptr %i.g, align 8, !noalias !12796
  store i8 %.val7.i.i, ptr %i.ab, align 8, !noalias !12796
  %i.ga = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !12789 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.gb = icmp eq i8 %i.ga, 0
  %i.gc = icmp slt i8 %i.ga, 0
  %i.gd = icmp samesign ult i8 %.sroa.0.0.val6.i.i, %.val7.i.i
  %.sroa.0.0.i.i.i20.i = select i1 %i.gb, i1 %i.gd, i1 %i.gc ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12796
  %i.ge = xor i1 %.sroa.0.0.i.i.i20.i, true
  %.sroa.05.0.i.i = select i1 %.sroa.0.0.i.i.i20.i, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.13.1.i, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.05.0.i.i, i64 208, i1 false), !alias.scope !12789, !noalias !12797
  %i.gf = zext i1 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0.0.i34, i64 %i.gf ; 3 uses
  %i.gh = zext i1 %.sroa.0.0.i.i.i20.i to i64
  %i.gi = getelementptr inbounds nuw [208 x i8], ptr %.sroa.0.02.i.i, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 208 ; 2 uses
  %i.gk = icmp ne ptr %i.gg, %i.fh
  %i.gl = icmp ne ptr %i.gi, %i.ag
  %or.cond.i21.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.ft, %.noexc.i ], [ %i.gj, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.fv, %.noexc.i ], [ %i.fh, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.gg, %.noexc22.i ] ; 2 uses
  %i.gm = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gn = ptrtoint ptr %.sroa.0.3.i to i64
  %i.go = sub nuw i64 %i.gm, %i.gn
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.4.i, ptr align 16 %.sroa.0.3.i, i64 %i.go, i1 false), !alias.scope !12789, !noalias !12798
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit

.loopexit.i:                                      ; preds = %.preheader83
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.fh, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gp = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gr = sub nuw i64 %i.gp, %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %.sroa.13.3.i, ptr nonnull align 16 %.sroa.0.2.i, i64 %i.gr, i1 false), !alias.scope !12789, !noalias !12799
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1f_5point5PointNtNtB1f_5frame9FrameItemEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyTB1b_B1Z_ENCNvMs_NtB23_8layouterNtB51_12GridLayouter20render_fills_strokesse_0E0EB25_.exit.i
  %i.gs = shl nuw nsw i64 %i.ei, 1
  %i.gt = or disjoint i64 %i.gs, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1b_5point5PointNtNtB1b_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyTB17_B1V_ENCNvMs_NtB1Z_8layouterNtB4K_12GridLayouter20render_fills_strokesse_0E0EB21_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit
  %.sroa.0.0.i = phi i64 [ %i.gt, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB12_5point5PointNtNtB12_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyTBY_B1M_ENCNvMs_NtB1Q_8layouterNtB4z_12GridLayouter20render_fills_strokesse_0E0EB1S_.exit ], [ %i.eq, %bb.u ] ; 2 uses
  %i.gu = icmp ugt i64 %i.dz, 1
  br i1 %i.gu, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.gv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.gw = lshr i64 %.sroa.018.0, 1
  %i.gx = add nuw i64 %i.gw, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.gy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gy, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gz = or i64 %1, 1
  %i.ha = call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.gz, i1 true)
  %i.hb = trunc nuw nsw i64 %i.ha to i32
  %i.hc = shl nuw nsw i32 %i.hb, 1
  %i.hd = xor i32 %i.hc, 126
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityNtNtB1a_5point5PointNtNtB1a_5frame9FrameItemENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyTB16_B1U_ENCNvMs_NtB1Y_8layouterNtB4J_12GridLayouter20render_fills_strokesse_0E0EB20_(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 44343134792571038) %3, i32 noundef %i.hd, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(208) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12738
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB12_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i158 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i163 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.av, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.av ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.jw, %bb.av ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ju, %bb.av ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit
  %.sroa.021.0 = phi i8 [ %i.az, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val12.i = load ptr, ptr %5, align 8, !alias.scope !12884, !noalias !12885, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %.val13.i = load ptr, ptr %i.q, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !12883, !noalias !12886
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val13.i, ptr %.val14.i) #59, !noalias !12887, !inline_history !12804 ; 2 uses
  %.not115 = icmp eq i64 %i.n, 2                  ; 2 uses
  br i1 %i.r, label %.preheader82, label %.preheader83

.preheader83:                                     ; preds = %bb.k
  br i1 %.not115, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, label %.lr.ph

.preheader82:                                     ; preds = %bb.k
  br i1 %.not115, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, label %.lr.ph102

.lr.ph:                                           ; preds = %.preheader83, %bb.l
  %.val11.i = phi ptr [ %.val10.i, %bb.l ], [ %.val13.i, %.preheader83 ]
  %.sroa.01.0.i.i98 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader83 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i.i98
  %6 = add nsw i64 %.sroa.01.0.i.i98, -1
  %7 = icmp ult i64 %6, %i.n
  tail call void @llvm.assume(i1 %7)
  %.val10.i = load ptr, ptr %i.s, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val10.i, ptr nonnull %.val11.i) #59, !noalias !12887, !inline_history !12804
  br i1 %i.t, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i98, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %.lr.ph

.lr.ph102:                                        ; preds = %.preheader82, %bb.m
  %.val8.i = phi ptr [ %.val7.i, %bb.m ], [ %.val13.i, %.preheader82 ]
  %.sroa.01.1.i.i101 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader82 ] ; 4 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i.i101
  %8 = add nsw i64 %.sroa.01.1.i.i101, -1
  %9 = icmp ult i64 %8, %i.n
  tail call void @llvm.assume(i1 %9)
  %.val7.i = load ptr, ptr %i.v, align 8, !alias.scope !12883, !noalias !12886, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBE_6styles10StyleChainE11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0B2p_(ptr nonnull %.val12.i, ptr nonnull %.val7.i, ptr nonnull %.val8.i) #59, !noalias !12887, !inline_history !12804
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i

bb.m:                                             ; preds = %.lr.ph102
  %i.x = add nuw i64 %.sroa.01.1.i.i101, 1        ; 2 uses
  %exitcond132.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond132.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i, label %.lr.ph102

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph102
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i101, %.lr.ph102 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i98, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161: ; preds = %.preheader82
  br i1 %.not5.i163, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread: ; preds = %.preheader83
  br i1 %.not5.i158, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1b_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3A_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12804
  %i.aa = shl nuw nsw i64 %..i36, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i7376 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread ], [ %.sroa.0.0.i.i159166170, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i7376, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12888), !noalias !12886
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12889), !noalias !12886
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161 ]
  %.sroa.0.0.i.i159166170 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB18_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3x_.exit.i.thread161 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i.i159166170
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.preheader.i.i ] ; 3 uses
  %i.ah = xor i64 %.sroa.0.016.i.i, -1
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.aj = getelementptr [32 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !12890, !noalias !12891
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !alias.scope !12892, !noalias !12893
  store <2 x i64> %i.al, ptr %i.ai, align 8, !alias.scope !12890, !noalias !12891
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !alias.scope !12892, !noalias !12893
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ao = load <2 x i64>, ptr %i.am, align 8, !alias.scope !12894, !noalias !12891
  %i.ap = load <2 x i64>, ptr %i.an, align 8, !alias.scope !12895, !noalias !12893
  store <2 x i64> %i.ap, ptr %i.am, align 8, !alias.scope !12894, !noalias !12891
  store <2 x i64> %i.ao, ptr %i.an, align 8, !alias.scope !12895, !noalias !12893
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aq, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE12split_at_mutCs7tN9tvpkfrg_12typst_layout.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB19_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3y_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtBA_6styles10StyleChainE7reverseCs7tN9tvpkfrg_12typst_layout.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.ar = lshr i64 %.sroa.023.0, 1
  %i.as = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.at = sub nsw i64 %factor, %i.ar
  %i.au = add nuw nsw i64 %i.as, %factor
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false)
  %i.az = trunc nuw nsw i64 %i.ay to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph108, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit
  %.sroa.02.1107 = phi i64 [ %.sroa.02.0, %.lr.ph108 ], [ %i.ba, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit ] ; 2 uses
  %.sroa.023.1106 = phi i64 [ %.sroa.023.0, %.lr.ph108 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit ] ; 4 uses
  %i.ba = add i64 %.sroa.02.1107, -1              ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !41
  %.not28 = icmp ult i8 %i.bc, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1106, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1107, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.be, align 1
  br i1 %i.k, label %bb.av, label %bb.aw

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ba
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !41 ; 3 uses
  %i.bh = lshr i64 %i.bg, 1                       ; 8 uses
  %i.bi = lshr i64 %.sroa.023.1106, 1             ; 6 uses
  %i.bj = add nuw i64 %i.bh, %i.bi                ; 4 uses
  %i.bk = sub i64 %.sroa.09.0, %i.bj
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bk ; 6 uses
  %i.bm = icmp samesign ugt i64 %i.bj, %3
  %i.bn = trunc i64 %.sroa.023.1106 to i1
  %i.bo = or i64 %i.bg, %.sroa.023.1106
  %i.bp = trunc i64 %i.bo to i1
  %or.cond3.i = or i1 %i.bm, %i.bp
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = trunc i64 %i.bg to i1
  br i1 %i.bq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.br = shl nuw nsw i64 %i.bj, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1c_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3B_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bn, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bs = or i64 %i.bh, 1
  %i.bt = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = trunc nuw nsw i64 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 1
  %i.bw = xor i32 %i.bv, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1b_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3A_(ptr noalias nofree noundef nonnull align 8 %i.bl, i64 noundef range(i64 0, 288230376151711744) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12819
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bh
  %i.by = or i64 %i.bi, 1
  %i.bz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB1b_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3A_(ptr noalias nofree noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 288230376151711744) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #58, !inline_history !12819
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12897)
  %i.cd = icmp eq i64 %i.bh, 0
  %i.ce = icmp eq i64 %i.bi, 0
  %or.cond.i = or i1 %i.ce, %i.cd
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 range(i64 0, -9223372036854775808) %i.bh) ; 2 uses
  %i.cf = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cf, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentNtNtB13_6styles10StyleChainENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keylNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0E0EB3r_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bh ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bh, %i.bi  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cg, ptr %i.bl
  %i.ch = shl nuw nsw i64 %..i.i, 5               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ch, i1 false), !alias.scope !12898
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.ft, %.noexc.i ], [ %i.cg, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.fv, %.noexc.i ], [ %i.ci, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.fq, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.cj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -32 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -32 ; 3 uses
  %.val12.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !12897, !noalias !12899, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %.val13.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !12896, !noalias !12900 ; 3 uses
  %.val2.i41 = load ptr, ptr %.val, align 8, !noalias !12898 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !12898, !nonnull !41, !align !46, !noundef !41
  %i.cn = icmp eq ptr %i.cm, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library13introspection3tag1__NtB9_7TagElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  br i1 %i.cn, label %bb.aa, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout5pages7collect25migrate_unterminated_tagss1_0B7_.exit.i42

bb.aa:                                            ; preds = %.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i41) ], !noalias !12898
  %i.co = load ptr, ptr %.val12.i.i, align 8, !noalias !12898, !nonnull !41, !noundef !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 96
  %i.cq = invoke noundef i128 @_RNvMNtNtCsdaEETE4DqmE_13typst_library13introspection3tagNtB2_3Tag8location(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.cp)
          to label %.noexc66 unwind label %.loopexit.i ; 3 uses

.noexc66:                                         ; preds = %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12901), !noalias !12898
  %i.cr = getelementptr inbounds nuw i8, ptr %.val2.i41, i64 24
end_hunk_2

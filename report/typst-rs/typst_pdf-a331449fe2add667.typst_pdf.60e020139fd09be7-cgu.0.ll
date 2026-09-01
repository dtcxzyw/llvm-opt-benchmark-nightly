Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8traverseNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1r_:bb.a
          cleanup
  store ptr %i.q, ptr %i.l, align 8
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.invoke, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit
  %i.p = phi ptr [ %.promoted, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 8 uses
  %.sroa.032.0.copyload = load i64, ptr %i.p, align 8, !noalias !1705 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.6.sroa.4.0.copyload = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !1705 ; 9 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 55
  %.sroa.6.sroa.6.0.copyload = load i8, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 1, !noalias !1705 ; 3 uses
  %.not = icmp eq i64 %.sroa.032.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread, label %bb.d

bb.d:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.17.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, i64 24, i1 false)
  store i64 %.sroa.032.0.copyload, ptr %i.c, align 8
  %i.r = invoke fastcc noundef zeroext i1 @_RINvNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7Content8traverse10walk_valueNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1F_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.f unwind label %bb.l

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit, %bb.b
  %i.s = phi ptr [ %.promoted, %bb.b ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit ], [ %i.q, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit ]
  store ptr %i.s, ptr %i.l, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19, %.noexc26, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread
  %.sroa.0.0.ph = phi i1 [ false, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread ], [ true, %.noexc26 ], [ true, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19 ], [ true, %bb.k ], [ true, %bb.j ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1r_5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i.i.i = icmp sgt i8 %.sroa.6.sroa.6.0.copyload, -1
  br i1 %.not.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.4.0.copyload) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.6.sroa.4.0.copyload, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.h
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1708
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1708
  %i.v = getelementptr i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !1708, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.i, !prof !85

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  store ptr %i.q, ptr %i.l, align 8
  br label %.invoke

.invoke:                                          ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21, %bb.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.n, align 8, !noalias !1708
  store i64 8, ptr %i.b, align 8, !noalias !1708
  store i64 %i.w, ptr %i.o, align 8, !noalias !1708
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1708
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.noexc16, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, %bb.h, %bb.g
  %i.x = icmp eq ptr %i.q, %i.k
  br i1 %i.x, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit

bb.j:                                             ; preds = %bb.f
  store ptr %i.q, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i.i.i.i17 = icmp sgt i8 %.sroa.6.sroa.6.0.copyload, -1
  br i1 %.not.i.i.i.i17, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.4.0.copyload) ]
  %.not.i.i.i.i.i.i18 = icmp eq ptr %.sroa.6.sroa.4.0.copyload, inttoptr (i64 16 to ptr)
  %i.y = getelementptr inbounds i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i18, label %.sink.split, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19: ; preds = %bb.k
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1711
  %.not.i.i.i.i.i20 = icmp eq i64 %i.z, 1
  br i1 %.not.i.i.i.i.i20, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21, label %.sink.split

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1711
  %i.aa = getelementptr i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -8
  %.val.i.i.i.i.i.i22 = load i64, ptr %i.aa, align 8, !noalias !1711, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i23 = icmp ult i64 %.val.i.i.i.i.i.i22, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i23, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24, label %.invoke, !prof !85

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21
  %i.ab = add nuw nsw i64 %.val.i.i.i.i.i.i22, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !noalias !1711
  store i64 8, ptr %i.a, align 8, !noalias !1711
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !1711
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1711
  br label %.sink.split

bb.l:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr %i.q, ptr %i.l, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf(ptr %.sroa.6.sroa.4.0.copyload, i8 %.sroa.6.sroa.6.0.copyload) #44
          to label %bb.c unwind label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.n:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.69.sroa.7.i = alloca [39 x i8], align 1  ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.6.sroa.7.i = alloca [39 x i8], align 1   ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [80 x i8], align 8                ; 11 uses
  %i.i = alloca [56 x i8], align 8                ; 18 uses
  %.sroa.0210 = alloca ptr, align 8               ; 5 uses
  %.sroa.0206 = alloca ptr, align 8               ; 5 uses
  %.sroa.0202 = alloca ptr, align 8               ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.0123 = alloca ptr, align 8               ; 5 uses
  %.sroa.0380 = alloca ptr, align 8               ; 5 uses
  %.sroa.5381 = alloca double, align 8            ; 5 uses
  %.sroa.0377 = alloca ptr, align 8               ; 5 uses
  %.sroa.5378 = alloca double, align 8            ; 5 uses
  %.sroa.0374 = alloca ptr, align 8               ; 5 uses
  %.sroa.5375 = alloca double, align 8            ; 5 uses
  %.sroa.4108 = alloca double, align 8            ; 5 uses
  %.sroa.4103 = alloca double, align 8            ; 5 uses
  %.sroa.0372 = alloca ptr, align 8               ; 5 uses
  %.sroa.5 = alloca double, align 8               ; 5 uses
  %.sroa.495 = alloca double, align 8             ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [16 x i8], align 16               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  %i.q = alloca [80 x i8], align 8                ; 13 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [16 x i8], align 16               ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 16               ; 8 uses
  %i.z = alloca [24 x i8], align 8                ; 12 uses
  %i.aa = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.0 = alloca i32, align 4                  ; 13 uses
  %.sroa.22 = alloca float, align 4               ; 11 uses
  %i.ab = alloca [80 x i8], align 8               ; 15 uses
  %i.ac = alloca [80 x i8], align 8               ; 18 uses
  %i.ad = alloca [48 x i8], align 8               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  %i.af = load i32, ptr %1, align 8, !range !47, !alias.scope !1723, !noalias !1724, !noundef !21
  %i.ag = trunc nuw i32 %i.af to i1               ; 2 uses
  %.sroa.5.0.i274.ph.sroa.gep640 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.i274.ph.sroa.gep643 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1723, !noalias !1724, !nonnull !21, !noundef !21 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !1738
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !1723, !noalias !1724
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !1723, !noalias !1724
  br label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %.sroa.6.0.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ undef, %bb.b ]
  %i.an = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %.sroa.7.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load <2 x double>, ptr %.sroa.7.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !1723, !noalias !1724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.ap = load i32, ptr %i.ae, align 8, !range !47, !alias.scope !1741, !noalias !1724, !noundef !21
  %i.aq = trunc nuw i32 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.01.0.copyload.i.i.i.1.i.i.i.i = load i32, ptr %i.ar, align 4, !alias.scope !1741, !noalias !1724
  %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.pre.i.i.i.1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i, align 8, !alias.scope !1741, !noalias !1724
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1741, !noalias !1724, !nonnull !21, !noundef !21 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !1742
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.0.i.i.i.1.i.i.i.i = phi ptr [ %.sroa.6.0.pre.i.i.i.1.i.i.i.i, %bb.f ], [ %i.at, %bb.g ]
  %.sroa.5.0.i.i.i.1.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.1.i.i.i.i, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.1.i.i.i.i = phi i32 [ 0, %bb.f ], [ 1, %bb.g ]
  %.sroa.7.0.in.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.ac, align 8, !alias.scope !1743
  %.sroa.4.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx351, align 8, !alias.scope !1743
  %.sroa.5.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.an, ptr %.sroa.5.0..sroa_idx352, align 8, !alias.scope !1743
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx352.sroa_idx, align 4, !alias.scope !1743
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.am, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !1743
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store <2 x double> %i.ao, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !1743
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i32 %.sroa.0.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !1743
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  store i32 %.sroa.5.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx352.sroa_idx, align 4, !alias.scope !1743
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %.sroa.6.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !1743
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aw = load <2 x double>, ptr %.sroa.7.0.in.i.i.i.1.i.i.i.i, align 8, !alias.scope !1741, !noalias !1724
  store <2 x double> %i.aw, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !1743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1752)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1754
  %i.ax = load i64, ptr %2, align 8, !range !1755, !alias.scope !1750, !noalias !1756, !noundef !21
  %.not.i = icmp eq i64 %i.ax, -2
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !1757, !noalias !1752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1754
  br i1 %i.ag, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1758
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i unwind label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, !noalias !1757

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1769)
  call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.bc = load i32, ptr %i.bb, align 8, !range !47, !alias.scope !1773, !noalias !1757, !noundef !21
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit439, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  call void @llvm.experimental.noalias.scope.decl(metadata !1792)
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1796, !noalias !1757, !nonnull !21, !noundef !21
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !1797
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.m, label %.loopexit439

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #38
          to label %.loopexit439 unwind label %.thread720, !noalias !1757

.thread720:                                       ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit438

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  %i.bl = load i32, ptr %i.bk, align 8, !range !47, !alias.scope !1804, !noalias !1757, !noundef !21
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit438, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !1814, !noalias !1757, !nonnull !21, !noundef !21
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !1815
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.o, label %.loopexit438

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn) #38
          to label %.loopexit438 unwind label %bb.p, !noalias !1757

bb.p:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1757
  unreachable

bb.q:                                             ; preds = %bb.h
  store i64 0, ptr %i.i, align 8, !noalias !1754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i64 80, i1 false), !noalias !1757
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !1816, !noalias !1823, !noundef !21 ; 2 uses
  %i.bu = load i64, ptr %i.h, align 8, !alias.scope !1816, !noalias !1823, !noundef !21 ; 4 uses
  %.not.i.i.i159.i = icmp eq i64 %i.bt, %i.bu
  br i1 %.not.i.i.i159.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENCINvMB1F_NtB1F_5Color8mix_iterB19_AB1D_B2I_E0EECs8jFhWeO2DFb_9typst_pdf.exit51.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.lr.ph.i: ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %.sroa.6.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 23 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 31 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.69.sroa.7.0..sroa.69.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1829)
end_hunk_0
begin_hunk_1_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.fm = icmp eq i64 %.pr.pre.i, 2
  br i1 %i.fm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i, label %_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.thread.i

_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.thread.i: ; preds = %bb.ax, %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i, %_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.av
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %i.fn = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i, label %bb.be

bb.be:                                            ; preds = %_RNvXsU_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12SpotColorantNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %.val.i.i.i.i79.i = load ptr, ptr %i.cb, align 8, !alias.scope !1978, !noalias !1754 ; 4 uses
  %.val1.i.i.i.i80.i = load i8, ptr %i.bz, align 1, !alias.scope !1978, !noalias !1754, !noundef !21
  %.not.i.i.i.i.i.i81.i = icmp sgt i8 %.val1.i.i.i.i80.i, -1
  br i1 %.not.i.i.i.i.i.i81.i, label %bb.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i79.i) ]
  %.not.i.i.i.i.i.i.i.i82.i = icmp eq ptr %.val.i.i.i.i79.i, inttoptr (i64 16 to ptr)
  %i.fo = getelementptr inbounds i8, ptr %.val.i.i.i.i79.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i82.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i: ; preds = %bb.bf
  %i.fp = atomicrmw sub ptr %i.fo, i64 1 release, align 8, !noalias !1979
  %.not.i.i.i.i.i.i.i84.i = icmp eq i64 %i.fp, 1
  br i1 %.not.i.i.i.i.i.i.i84.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i83.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1979
  %i.fq = getelementptr i8, ptr %.val.i.i.i.i79.i, i64 -8
  %.val.i.i.i.i.i.i.i.i86.i = load i64, ptr %i.fq, align 8, !noalias !1979, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i87.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i86.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i87.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i, label %bb.bg, !prof !85

bb.bg:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc89.i unwind label %.loopexit.split-lp124.i, !noalias !1754

.noexc89.i:                                       ; preds = %bb.bg
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i85.i
  %i.fr = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i86.i, 16
  store ptr %i.fo, ptr %i.ch, align 8, !noalias !1979
  store i64 8, ptr %i.c, align 8, !noalias !1979
  store i64 %i.fr, ptr %i.ci, align 8, !noalias !1979
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc90.i unwind label %.loopexit123.i, !noalias !1754

.noexc90.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1979
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i

bb.bh:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #44
          to label %bb.ae unwind label %bb.bi, !noalias !1754

bb.bi:                                            ; preds = %bb.bp, %bb.bo, %bb.bh, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit53.i
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1754
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i: ; preds = %.noexc103.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69.sroa.7.i)
  br label %bb.ak

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit91.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %i.ft = icmp eq i64 %i.fk, 2
  br i1 %i.ft, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.fu = icmp eq i64 %i.fk, 0
  br i1 %i.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %.val.i.i.i.i92.i = load ptr, ptr %i.cc, align 8, !alias.scope !1992, !noalias !1754 ; 4 uses
  %.val1.i.i.i.i93.i = load i8, ptr %i.bx, align 1, !alias.scope !1992, !noalias !1754, !noundef !21
  %.not.i.i.i.i.i.i94.i = icmp sgt i8 %.val1.i.i.i.i93.i, -1
  br i1 %.not.i.i.i.i.i.i94.i, label %bb.bm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i92.i) ]
  %.not.i.i.i.i.i.i.i.i95.i = icmp eq ptr %.val.i.i.i.i92.i, inttoptr (i64 16 to ptr)
  %i.fv = getelementptr inbounds i8, ptr %.val.i.i.i.i92.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i95.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i: ; preds = %bb.bm
  %i.fw = atomicrmw sub ptr %i.fv, i64 1 release, align 8, !noalias !1993
  %.not.i.i.i.i.i.i.i97.i = icmp eq i64 %i.fw, 1
  br i1 %.not.i.i.i.i.i.i.i97.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i96.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1993
  %i.fx = getelementptr i8, ptr %.val.i.i.i.i92.i, i64 -8
  %.val.i.i.i.i.i.i.i.i99.i = load i64, ptr %i.fx, align 8, !noalias !1993, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i100.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i99.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i100.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i, label %bb.bn, !prof !85

bb.bn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc102.i unwind label %.loopexit.split-lp.i, !noalias !1754

.noexc102.i:                                      ; preds = %bb.bn
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i98.i
  %i.fy = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i99.i, 16
  store ptr %i.fv, ptr %i.cj, align 8, !noalias !1993
  store i64 8, ptr %i.b, align 8, !noalias !1993
  store i64 %i.fy, ptr %i.ck, align 8, !noalias !1993
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc103.i unwind label %.loopexit.i, !noalias !1754

.noexc103.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1993
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf.exit104.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit59.i: ; preds = %bb.am, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1754
  %i.fz = load i64, ptr %i.bs, align 8, !alias.scope !1816, !noalias !1994, !noundef !21 ; 2 uses
  %i.ga = load i64, ptr %i.h, align 8, !alias.scope !1816, !noalias !1994, !noundef !21 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.fz, %i.ga
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENCINvMB1F_NtB1F_5Color8mix_iterB19_AB1D_B2I_E0EECs8jFhWeO2DFb_9typst_pdf.exit51.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.i.i

.thread.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i.i49.i, %bb.an, %bb.v
  %.pn42.pn114.i = phi { ptr, i32 } [ %.pn42.i, %bb.an ], [ %i.dh, %bb.v ], [ %i.dh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i.i49.i ] ; 3 uses
  %i.gb = load i64, ptr %i.i, align 8, !range !1841, !noalias !1754, !noundef !21
  switch i64 %i.gb, label %.loopexit438 [
    i64 1, label %bb.bo
    i64 2, label %bb.bp
  ]

bb.bo:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #44
          to label %.loopexit438 unwind label %bb.bi, !noalias !1754

bb.bp:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bw) #44
          to label %.loopexit438 unwind label %bb.bi, !noalias !1754

.body286:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313, %bb.gb, %bb.eb, %bb.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, %bb.fb, %bb.dt, %.thread, %.body
  %.sroa.0129.0 = phi i1 [ %.sroa.0129.2, %.body ], [ %.sroa.0129.2395, %.thread ], [ %.not230, %bb.fb ], [ true, %bb.dt ], [ true, %bb.gb ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322 ], [ true, %bb.ff ], [ true, %bb.eb ], [ %.not230, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i ]
  %.pn237 = phi { ptr, i32 } [ %.pn235, %.body ], [ %.pn235396, %.thread ], [ %i.qb, %bb.fb ], [ %i.mf, %bb.dt ], [ %i.te, %bb.gb ], [ %i.te, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 ], [ %i.ns, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 ], [ %.pn226, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322 ], [ %i.qn, %bb.ff ], [ %i.ns, %bb.eb ], [ %i.qb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 ], [ %i.mf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i ] ; 2 uses
  %i.gc = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %i.gd = icmp ne i64 %i.gc, -1
  %or.cond = and i1 %.sroa.0129.0, %i.gd
  br i1 %or.cond, label %bb.gj, label %.thread427

.loopexit439:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.m, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %.sroa.56.0..sroa_idx.i253 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.56.0..sroa_idx.i253, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  store i64 0, ptr %i.ab, align 8, !alias.scope !1998, !noalias !2001
  %.sroa.45.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store i64 2, ptr %.sroa.45.0..sroa_idx.i252, align 8, !alias.scope !1998, !noalias !2001
  %.val244 = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %.not.i254 = icmp eq i64 %.val244, -1
  br i1 %.not.i254, label %.thread407, label %bb.br

.body:                                            ; preds = %bb.ej, %bb.bq
  %.sroa.0125.0 = phi i8 [ %.sroa.0125.2, %bb.ej ], [ %.sroa.0125.1, %bb.bq ]
  %.sroa.0129.2 = phi i1 [ false, %bb.ej ], [ true, %bb.bq ] ; 2 uses
  %.pn235 = phi { ptr, i32 } [ %i.oq, %bb.ej ], [ %i.gg, %bb.bq ] ; 2 uses
  %i.gf = trunc nuw i8 %.sroa.0125.0 to i1
  br i1 %i.gf, label %.thread, label %.body286

bb.bq:                                            ; preds = %bb.fg, %bb.dn, %bb.dd, %bb.bt
  %.sroa.0125.1 = phi i8 [ 1, %bb.bt ], [ 1, %bb.dn ], [ 0, %bb.fg ], [ 1, %bb.dd ]
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread407:                                       ; preds = %.loopexit439
  %.val245 = load i8, ptr %i.ge, align 8
  switch i8 %.val245, label %bb.br [
    i8 1, label %bb.bs
    i8 5, label %bb.bs
    i8 6, label %bb.bs
  ]

bb.br:                                            ; preds = %.loopexit439, %.thread407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.ab, i64 80, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2003, !noalias !2008, !noundef !21 ; 2 uses
  %i.gj = load i64, ptr %i.q, align 8, !alias.scope !2003, !noalias !2008, !noundef !21 ; 3 uses
  %.not.i.i288508 = icmp eq i64 %i.gi, %i.gj
  br i1 %.not.i.i288508, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph

bb.bs:                                            ; preds = %.thread407, %.thread407, %.thread407
  store i32 0, ptr %.sroa.0, align 4
  store float 0.000000e+00, ptr %.sroa.22, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  store i64 1, ptr %i.ab, align 8, !alias.scope !2017, !noalias !2020
  %.sroa.0356.0.copyload = load i32, ptr %.sroa.56.0..sroa_idx.i253, align 8, !alias.scope !2021 ; 2 uses
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %.sroa.6360.0.copyload = load double, ptr %.sroa.6360.0..sroa_idx, align 8, !alias.scope !2021
  %.not228 = icmp eq i32 %.sroa.0356.0.copyload, 2
  br i1 %.not228, label %bb.bt, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262, !prof !24

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #39
          to label %bb.bu unwind label %bb.bq

bb.bu:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread, %bb.bt
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264: ; preds = %bb.bz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, %bb.ca, %bb.bx
  %.pn233 = phi { ptr, i32 } [ %i.gq, %bb.bx ], [ %.pn231, %bb.ca ], [ %.pn231, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 ], [ %.pn231, %bb.bz ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %i.gk = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2022, !noundef !21
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264
  %i.gm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  call void @llvm.experimental.noalias.scope.decl(metadata !2028)
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !2034, !nonnull !21, !noundef !21
  %i.go = atomicrmw sub ptr %i.gn, i64 1 release, align 8, !noalias !2034
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gm) #38
          to label %.thread unwind label %bb.di

bb.bx:                                            ; preds = %bb.dl, %bb.db, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262: ; preds = %bb.bs
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4389.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4389.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.gr, i64 20, i1 false)
  store i32 %.sroa.0356.0.copyload, ptr %i.aa, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2035)
  call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  store i64 2, ptr %i.ab, align 8, !alias.scope !2041, !noalias !2044
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0361.0.copyload = load i32, ptr %i.gs, align 8, !alias.scope !2045 ; 2 uses
  %.sroa.6365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %.sroa.6365.0.copyload = load double, ptr %.sroa.6365.0..sroa_idx, align 8, !alias.scope !2045
  %.not229 = icmp eq i32 %.sroa.0361.0.copyload, 2
  br i1 %.not229, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread, label %bb.by, !prof !2046

bb.by:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.4391.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4391.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.gt, i64 20, i1 false)
  store i32 %.sroa.0361.0.copyload, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.cc unwind label %bb.cb

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262.thread: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit262
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #39
          to label %bb.bu unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266: ; preds = %bb.cp, %bb.co, %bb.cq, %bb.cg, %bb.cf, %bb.ch, %bb.df, %bb.cb
  %.pn231 = phi { ptr, i32 } [ %i.ha, %bb.cb ], [ %i.ky, %bb.df ], [ %i.hj, %bb.cg ], [ %i.hj, %bb.ch ], [ %i.hj, %bb.cf ], [ %i.ic, %bb.cq ], [ %i.ic, %bb.co ], [ %i.ic, %bb.cp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  %i.gu = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2047, !noundef !21
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266
  %i.gw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2050)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !2059, !nonnull !21, !noundef !21
  %i.gy = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !2059
  %i.gz = icmp eq i64 %i.gy, 1
  br i1 %i.gz, label %bb.ca, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gw) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 unwind label %bb.di

bb.cb:                                            ; preds = %bb.dg, %bb.ct, %bb.ck, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268, %bb.by
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.cc:                                            ; preds = %bb.by
  %i.hb = load i32, ptr %i.w, align 8, !range !2060, !noundef !21 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 2
  br i1 %i.hc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !21, !noundef !21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.he, ptr %i.hh, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hg, ptr %i.hi, align 8
  store i32 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dj

bb.ce:                                            ; preds = %bb.cc
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.4151.0.copyload = load i32, ptr %.sroa.4151.0..sroa_idx, align 4
  %.sroa.5152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5152.0.copyload = load ptr, ptr %.sroa.5152.0..sroa_idx, align 8
  %.sroa.6153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6153.0.copyload = load i64, ptr %.sroa.6153.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i32 %i.hb, ptr %i.x, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.4151.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  store ptr %.sroa.5152.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6153.0.copyload, ptr %.sroa.612.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %bb.ci unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.hk = load i32, ptr %i.x, align 8, !range !47, !alias.scope !2061, !noundef !21
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2070)
  %i.hm = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2073, !nonnull !21, !noundef !21
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !2073
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !2074)
  %i.hp = load i32, ptr %i.x, align 8, !range !47, !alias.scope !2074, !noundef !21
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  call void @llvm.experimental.noalias.scope.decl(metadata !2080)
  call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  %i.hr = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2086, !nonnull !21, !noundef !21
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !2086
  %i.ht = icmp eq i64 %i.hs, 1
  br i1 %i.ht, label %bb.ck, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268

bb.ck:                                            ; preds = %bb.cj
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268 unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268: ; preds = %bb.cj, %bb.ci, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.cl unwind label %bb.cb

bb.cl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268
  %i.hu = load i32, ptr %i.t, align 8, !range !2060, !noundef !21 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 2
  br i1 %i.hv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !21, !noundef !21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hx, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hz, ptr %i.ib, align 8
  store i32 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.dh

bb.cn:                                            ; preds = %bb.cl
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.4155.0.copyload = load i32, ptr %.sroa.4155.0..sroa_idx, align 4
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5156.0.copyload = load ptr, ptr %.sroa.5156.0..sroa_idx, align 8
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.6157.0.copyload = load i64, ptr %.sroa.6157.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i32 %i.hu, ptr %i.u, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %.sroa.4155.0.copyload, ptr %.sroa.425.0..sroa_idx, align 4
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %.sroa.5156.0.copyload, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %.sroa.6157.0.copyload, ptr %.sroa.627.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %bb.cr unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.id = load i32, ptr %i.u, align 8, !range !47, !alias.scope !2087, !noundef !21
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !2090)
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.if = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2099, !nonnull !21, !noundef !21
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !2099
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !2100)
  %i.ii = load i32, ptr %i.u, align 8, !range !47, !alias.scope !2100, !noundef !21
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %i.ik = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2112, !nonnull !21, !noundef !21
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !2112
  %i.im = icmp eq i64 %i.il, 1
  br i1 %i.im, label %bb.ct, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272

bb.ct:                                            ; preds = %bb.cs
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272 unwind label %bb.cb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272: ; preds = %bb.cs, %bb.cr, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.in = fptrunc double %.sroa.6360.0.copyload to float ; 3 uses
  %i.io = fptrunc double %.sroa.6365.0.copyload to float ; 3 uses
  %i.ip = fadd float %i.in, %i.io                 ; 3 uses
  %i.iq = fcmp ugt float %i.ip, 0.000000e+00
  br i1 %i.iq, label %.preheader.preheader, label %bb.cu

.preheader.preheader:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272
  %i.ir = load float, ptr %i.y, align 16, !noundef !21 ; 2 uses
  %i.is = load float, ptr %i.v, align 16, !noundef !21 ; 2 uses
  %i.it = load <4 x float>, ptr %i.y, align 16
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = load <4 x float>, ptr %i.v, align 16
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ix = load float, ptr %.sroa.5.0.i274.ph.sroa.gep640, align 8, !noundef !21 ; 2 uses
  %i.iy = load float, ptr %.sroa.5.0.i274.ph.sroa.gep643, align 8, !noundef !21 ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.ja = insertelement <2 x float> %i.iz, float %i.ix, i64 1
  %i.jb = insertelement <2 x float> poison, float %i.in, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jd = fmul <2 x float> %i.ja, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jf = insertelement <2 x float> %i.je, float %i.iy, i64 1
  %i.jg = insertelement <2 x float> poison, float %i.io, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = fmul <2 x float> %i.jf, %i.jh
  %i.jj = fadd <2 x float> %i.jd, %i.ji
  %i.jk = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jm = fdiv <2 x float> %i.jj, %i.jl           ; 2 uses
  %bc = bitcast <2 x float> %i.jm to <2 x i32>
  %i.jn = extractelement <2 x i32> %bc, i64 0
  store i32 %i.jn, ptr %.sroa.0, align 4
  %3 = extractelement <2 x float> %i.jm, i64 1
  store float %3, ptr %.sroa.22, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.jp = load float, ptr %i.jo, align 4, !noundef !21
  %i.jq = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.jr = load float, ptr %i.jq, align 4, !noundef !21
  %i.js = insertelement <2 x float> %i.iu, float %i.jp, i64 1
  %i.jt = fmul <2 x float> %i.js, %i.jc
  %i.ju = insertelement <2 x float> %i.iw, float %i.jr, i64 1
  %i.jv = fmul <2 x float> %i.ju, %i.jh
  %i.jw = fadd <2 x float> %i.jt, %i.jv
  %i.jx = fdiv <2 x float> %i.jw, %i.jl
  %.val = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %.not.i273 = icmp eq i64 %.val, -1
  br i1 %.not.i273, label %bb.cv, label %bb.cz

bb.cu:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.r, i8 0, i64 15, i1 false)
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  store i8 -128, ptr %.sroa.4163.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 31)
          to label %bb.dg unwind label %bb.df

bb.cv:                                            ; preds = %.preheader.preheader
  %.val241 = load i8, ptr %i.ge, align 8
  switch i8 %.val241, label %bb.cz [
    i8 1, label %bb.cx
    i8 5, label %bb.cw
    i8 6, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %i.jy = phi float [ %i.is, %bb.cw ], [ %i.iy, %bb.cv ] ; 4 uses
  %i.jz = phi float [ %i.ir, %bb.cw ], [ %i.ix, %bb.cv ] ; 4 uses
  %.sroa.5.0.i274.ph.sroa.phi = phi ptr [ %.sroa.0, %bb.cw ], [ %.sroa.22, %bb.cv ]
  %i.ka = fsub float %i.jz, %i.jy
  %i.kb = call float @llvm.fabs.f32(float %i.ka)
  %i.kc = fcmp ogt float %i.kb, 1.800000e+02
  br i1 %i.kc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.kd = fcmp olt float %i.jz, %i.jy             ; 2 uses
  %i.ke = fadd float %i.jz, 3.600000e+02
  %i.kf = fadd float %i.jy, 3.600000e+02
  %.sroa.038.0 = select i1 %i.kd, float %i.ke, float %i.jz
  %.sroa.034.0 = select i1 %i.kd, float %i.jy, float %i.kf
  %i.kg = fmul float %.sroa.038.0, %i.in
  %i.kh = fmul float %.sroa.034.0, %i.io
  %i.ki = fadd float %i.kg, %i.kh
  %i.kj = fdiv float %i.ki, %i.ip
  store float %i.kj, ptr %.sroa.5.0.i274.ph.sroa.phi, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %.preheader.preheader, %bb.cv, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  %i.kk = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2113, !noundef !21
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.km = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.experimental.noalias.scope.decl(metadata !2119)
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !2125, !nonnull !21, !noundef !21
  %i.ko = atomicrmw sub ptr %i.kn, i64 1 release, align 8, !noalias !2125
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278

bb.db:                                            ; preds = %bb.da
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.km) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278: ; preds = %bb.da, %bb.cz, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2126)
  %i.kq = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2126, !noundef !21
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278
  %i.ks = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !2138, !nonnull !21, !noundef !21
  %i.ku = atomicrmw sub ptr %i.kt, i64 1 release, align 8, !noalias !2138
  %i.kv = icmp eq i64 %i.ku, 1
  br i1 %i.kv, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ks) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 unwind label %bb.bq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280: ; preds = %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.de

bb.de:                                            ; preds = %bb.eg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280
  %.sroa.0125.2 = phi i8 [ 0, %bb.eg ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 2 uses
  %i.kw = phi <2 x float> [ %i.ok, %bb.eg ], [ %i.jx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 15 uses
  %i.kx = load i64, ptr %i.ad, align 8, !range !1922, !noundef !21
  %.not230 = icmp eq i64 %i.kx, -1                ; 3 uses
  br i1 %.not230, label %bb.el, label %bb.eh

bb.df:                                            ; preds = %bb.cu
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.dg:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.kz = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.s)
          to label %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.cb ; 2 uses

_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.dg
  %i.la = extractvalue { ptr, i64 } %i.kz, 0
  %i.lb = extractvalue { ptr, i64 } %i.kz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.la, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.lb, ptr %i.ld, align 8
  store i32 2, ptr %0, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dj

bb.di:                                            ; preds = %bb.fr, %bb.fi, %bb.cq, %bb.ch, %bb.ca, %bb.bw, %.loopexit438, %bb.gj, %.thread, %bb.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, %bb.df
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.dj:                                            ; preds = %bb.dh, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  %i.lf = load i32, ptr %i.z, align 8, !range !47, !alias.scope !2139, !noundef !21
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lh = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !2151, !nonnull !21, !noundef !21
  %i.lj = atomicrmw sub ptr %i.li, i64 1 release, align 8, !noalias !2151
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lh) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283: ; preds = %bb.dk, %bb.dj, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  %i.ll = load i32, ptr %i.aa, align 8, !range !47, !alias.scope !2152, !noundef !21
  %i.lm = icmp eq i32 %i.ll, 0
  br i1 %i.lm, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283
  %i.ln = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2155)
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  call void @llvm.experimental.noalias.scope.decl(metadata !2161)
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !2164, !nonnull !21, !noundef !21
  %i.lp = atomicrmw sub ptr %i.lo, i64 1 release, align 8, !noalias !2164
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ln) #38
          to label %bb.do unwind label %bb.bq

bb.do:                                            ; preds = %bb.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.lr = load i64, ptr %i.ab, align 8, !alias.scope !2165, !noundef !21 ; 3 uses
  %i.ls = load i64, ptr %.sroa.45.0..sroa_idx.i252, align 8, !alias.scope !2165, !noundef !21 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, %i.lr
  br i1 %i.lt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lu = sub nuw i64 %i.ls, %i.lr                ; 3 uses
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.56.0..sroa_idx.i253, i64 %i.lr ; 2 uses
  br label %bb.dq
end_hunk_1
begin_hunk_2_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2205)
  call void @llvm.experimental.noalias.scope.decl(metadata !2208)
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.mm = load ptr, ptr %i.ml, align 8, !alias.scope !2214, !nonnull !21, !noundef !21
  %i.mn = atomicrmw sub ptr %i.mm, i64 1 release, align 8, !noalias !2215
  %i.mo = icmp eq i64 %i.mn, 1
  br i1 %i.mo, label %bb.dv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ml) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i unwind label %bb.dw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i: ; preds = %bb.dv, %bb.du, %.lr.ph.i.i.i.i.i.i.i
  %i.mp = icmp eq i64 %i.mi, %i.lu
  br i1 %i.mp, label %.body286, label %.lr.ph.i.i.i.i.i.i.i

bb.dw:                                            ; preds = %bb.dv
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph: ; preds = %bb.br
  %i.mr = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %.sroa.8369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.mu = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2216)
  call void @llvm.experimental.noalias.scope.decl(metadata !2218)
  %i.mv = add nuw nsw i64 %i.gj, 1                ; 2 uses
  store i64 %i.mv, ptr %i.q, align 8, !alias.scope !2003, !noalias !2220
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mr, i64 %i.gj ; 2 uses
  %.sroa.0367.0.copyload886 = load i32, ptr %i.mw, align 8, !alias.scope !2221 ; 2 uses
  %.not887 = icmp eq i32 %.sroa.0367.0.copyload886, 2
  br i1 %.not887, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread, label %.lr.ph890

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322: ; preds = %.loopexit, %.loopexit.split-lp, %bb.fh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326, %bb.fi
  %.pn226 = phi { ptr, i32 } [ %.pn, %bb.fh ], [ %.pn, %bb.fi ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.q) #44
          to label %.body286 unwind label %bb.di

.loopexit:                                        ; preds = %bb.fw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322

.loopexit.split-lp:                               ; preds = %bb.fn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  %i.mx = add nuw nsw i64 %i.sp, 1                ; 2 uses
  store i64 %i.mx, ptr %i.q, align 8, !alias.scope !2003, !noalias !2226
  %i.my = getelementptr inbounds nuw [32 x i8], ptr %i.mr, i64 %i.sp ; 2 uses
  %.sroa.0367.0.copyload = load i32, ptr %i.my, align 8, !alias.scope !2227 ; 2 uses
  %.not = icmp eq i32 %.sroa.0367.0.copyload, 2
  br i1 %.not, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread, label %.lr.ph890

.lr.ph890:                                        ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289
  %.sroa.0367.0.copyload889 = phi i32 [ %.sroa.0367.0.copyload, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ], [ %.sroa.0367.0.copyload886, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ]
  %i.mz = phi ptr [ %i.my, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ], [ %i.mw, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ] ; 2 uses
  %.sroa.0366.0509888 = phi float [ %i.si, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ], [ 0.000000e+00, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ]
  %i.na = phi <2 x float> [ %i.sh, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ], [ zeroinitializer, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ]
  %i.nb = phi <2 x float> [ %i.sd, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ], [ zeroinitializer, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ]
  %.sroa.8369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %.sroa.8371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %.sroa.8371.0.copyload = load double, ptr %.sroa.8371.0..sroa_idx, align 8, !alias.scope !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i32 %.sroa.0367.0.copyload889, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8369.0..sroa_idx370, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.8369.0..sroa_idx, i64 20, i1 false)
  %i.nc = fptrunc double %.sroa.8371.0.copyload to float ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color8to_space(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ad)
          to label %bb.fk unwind label %bb.fj

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph
  %.lcssa835 = phi i64 [ %i.gi, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ], [ %i.so, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ] ; 2 uses
  %.sroa.0366.0509.lcssa = phi float [ 0.000000e+00, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ], [ %i.si, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ] ; 2 uses
  %.lcssa818 = phi i64 [ %i.mv, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ], [ %i.mx, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ] ; 3 uses
  %i.nd = phi <2 x float> [ zeroinitializer, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ], [ %i.sh, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ] ; 2 uses
  %i.ne = phi <2 x float> [ zeroinitializer, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.lr.ph ], [ %i.sd, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289 ] ; 2 uses
  %i.nf = icmp eq i64 %.lcssa835, %.lcssa818
  br i1 %i.nf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299, label %bb.dx

bb.dx:                                            ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread
  %i.ng = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.nh = sub nuw i64 %.lcssa835, %.lcssa818      ; 3 uses
  %i.ni = getelementptr inbounds nuw [32 x i8], ptr %i.ng, i64 %.lcssa818 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291, %bb.dx
  %.sroa.0.09.i.i.i.i.i.i.i290 = phi i64 [ 0, %bb.dx ], [ %i.nk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291 ] ; 2 uses
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.ni, i64 %.sroa.0.09.i.i.i.i.i.i.i290 ; 2 uses
  %i.nk = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i290, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  %i.nl = load i32, ptr %i.nj, align 8, !range !47, !alias.scope !2237, !noundef !21
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  call void @llvm.experimental.noalias.scope.decl(metadata !2255)
  call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  %i.no = load ptr, ptr %i.nn, align 8, !alias.scope !2261, !nonnull !21, !noundef !21
  %i.np = atomicrmw sub ptr %i.no, i64 1 release, align 8, !noalias !2262
  %i.nq = icmp eq i64 %i.np, 1
  br i1 %i.nq, label %bb.ea, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291

bb.ea:                                            ; preds = %bb.dz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.nn) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291 unwind label %bb.eb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291: ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.nr = icmp eq i64 %i.nk, %i.nh
  br i1 %i.nr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299, label %bb.dy

bb.eb:                                            ; preds = %bb.ea
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = icmp eq i64 %i.nk, %i.nh
  br i1 %i.nt, label %.body286, label %.lr.ph.i.i.i.i.i.i.i292

.lr.ph.i.i.i.i.i.i.i292:                          ; preds = %bb.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294
  %.sroa.0.110.i.i.i.i.i.i.i293 = phi i64 [ %i.nv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 ], [ %i.nk, %bb.eb ] ; 2 uses
  %i.nu = getelementptr inbounds nuw [32 x i8], ptr %i.ni, i64 %.sroa.0.110.i.i.i.i.i.i.i293 ; 2 uses
  %i.nv = add i64 %.sroa.0.110.i.i.i.i.i.i.i293, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  call void @llvm.experimental.noalias.scope.decl(metadata !2266)
  %i.nw = load i32, ptr %i.nu, align 8, !range !47, !alias.scope !2269, !noundef !21
  %i.nx = icmp eq i32 %i.nw, 0
  br i1 %i.nx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i292
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  %i.nz = load ptr, ptr %i.ny, align 8, !alias.scope !2279, !nonnull !21, !noundef !21
  %i.oa = atomicrmw sub ptr %i.nz, i64 1 release, align 8, !noalias !2280
  %i.ob = icmp eq i64 %i.oa, 1
  br i1 %i.ob, label %bb.ed, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ny) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294 unwind label %bb.ee

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i294: ; preds = %bb.ed, %bb.ec, %.lr.ph.i.i.i.i.i.i.i292
  %i.oc = icmp eq i64 %i.nv, %i.nh
  br i1 %i.oc, label %.body286, label %.lr.ph.i.i.i.i.i.i.i292

bb.ee:                                            ; preds = %bb.ed
  %i.od = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291, %bb.br, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread
  %.sroa.0366.0.lcssa731 = phi float [ %.sroa.0366.0509.lcssa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291 ], [ %.sroa.0366.0509.lcssa, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread ], [ 0.000000e+00, %bb.br ], [ %i.si, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330 ] ; 2 uses
  %i.oe = phi <2 x float> [ %i.nd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291 ], [ %i.nd, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread ], [ zeroinitializer, %bb.br ], [ %i.sh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330 ]
  %i.of = phi <2 x float> [ %i.ne, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i291 ], [ %i.ne, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289.thread ], [ zeroinitializer, %bb.br ], [ %i.sd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.og = fcmp ugt float %.sroa.0366.0.lcssa731, 0.000000e+00
  br i1 %i.og, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.k, i8 0, i64 15, i1 false)
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 15
  store i8 -128, ptr %.sroa.4187.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 31)
          to label %bb.fg unwind label %bb.ff

bb.eg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299
  %i.oh = insertelement <2 x float> poison, float %.sroa.0366.0.lcssa731, i64 0
  %i.oi = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oj = fdiv <2 x float> %i.of, %i.oi           ; 2 uses
  %i.ok = fdiv <2 x float> %i.oe, %i.oi
  %bc942 = bitcast <2 x float> %i.oj to <2 x i32>
  %i.ol = extractelement <2 x i32> %bc942, i64 0
  store i32 %i.ol, ptr %.sroa.0, align 4
  %4 = extractelement <2 x float> %i.oj, i64 1
  store float %4, ptr %.sroa.22, align 4
  br label %bb.de

bb.eh:                                            ; preds = %bb.de
  %i.om = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.om, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  store i64 1, ptr %i.j, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.on, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !2281
  %i.oo = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !2281 ; 3 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %bb.ei, label %bb.ev, !prof !24

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #39
          to label %.noexc301 unwind label %bb.ej

.noexc301:                                        ; preds = %bb.ei
  unreachable

bb.ej:                                            ; preds = %bb.ei
  %i.oq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.j) #44
          to label %.body unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.or = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.el:                                            ; preds = %bb.de
  %i.os = load i8, ptr %i.ge, align 8, !range !2284, !noundef !21
  switch i8 %i.os, label %default.unreachable705 [
    i8 0, label %bb.em
    i8 1, label %bb.er
    i8 2, label %bb.en
    i8 3, label %bb.eo
    i8 4, label %bb.ep
    i8 5, label %bb.es
    i8 6, label %bb.et
    i8 7, label %bb.eu
  ]

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.495)
  %.sroa.0.0..sroa.0.0..sroa.0.0.612718956 = load float, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.631719957 = load float, ptr %.sroa.22, align 4, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0202)
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.612718956, ptr %.sroa.0202, align 8
  %i.ot = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0202.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0202, i64 4
  store float %i.ot, ptr %.sroa.0202.4..sroa_idx, align 4
  %.sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.094.0.copyload = load ptr, ptr %.sroa.0202, align 8
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.631719957, ptr %.sroa.495, align 8
  %i.ou = extractelement <2 x float> %i.kw, i64 1
  %.sroa.495.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.495, i64 4
  store float %i.ou, ptr %.sroa.495.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0202)
  %.sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.8..sroa.693.4.copyload = load double, ptr %.sroa.495, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.495)
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4103)
  %.sroa.0.0..sroa.0.0..sroa.0.0.614714952 = load float, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.629715953 = load float, ptr %.sroa.22, align 4, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0206)
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.614714952, ptr %.sroa.0206, align 8
  %i.ov = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0206.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0206, i64 4
  store float %i.ov, ptr %.sroa.0206.4..sroa_idx, align 4
  %.sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0102.0.copyload = load ptr, ptr %.sroa.0206, align 8
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.629715953, ptr %.sroa.4103, align 8
  %i.ow = extractelement <2 x float> %i.kw, i64 1
  %.sroa.4103.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4103, i64 4
  store float %i.ow, ptr %.sroa.4103.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0206)
  %.sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.8..sroa.6101.4.copyload = load double, ptr %.sroa.4103, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4103)
  br label %bb.eq

bb.eo:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0123)
  %.sroa.0.0..sroa.0.0..sroa.0.0.615713951 = load float, ptr %.sroa.0, align 4, !noundef !21
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.615713951, ptr %.sroa.0123, align 8
  %i.ox = extractelement <2 x float> %i.kw, i64 1
  %.sroa.0123.4..sroa_idx940 = getelementptr inbounds nuw i8, ptr %.sroa.0123, i64 4
  store float %i.ox, ptr %.sroa.0123.4..sroa_idx940, align 4
  %.sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.4121.4.copyload = load ptr, ptr %.sroa.0123, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0123)
  br label %bb.eq

bb.ep:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4108)
  %.sroa.0.0..sroa.0.0..sroa.0.0.616711949 = load float, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.628712950 = load float, ptr %.sroa.22, align 4, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0210)
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.616711949, ptr %.sroa.0210, align 8
  %i.oy = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0210.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0210, i64 4
  store float %i.oy, ptr %.sroa.0210.4..sroa_idx, align 4
  %.sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0107.0.copyload = load ptr, ptr %.sroa.0210, align 8
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.628712950, ptr %.sroa.4108, align 8
  %i.oz = extractelement <2 x float> %i.kw, i64 1
  %.sroa.4108.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4108, i64 4
  store float %i.oz, ptr %.sroa.4108.4..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0210)
  %.sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.8..sroa.6106.4.copyload = load double, ptr %.sroa.4108, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4108)
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.ep, %bb.eo, %bb.en, %bb.em
  %.sroa.21.0 = phi double [ %spec.store.select.i308, %bb.ev ], [ %.sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.0..sroa.495.8..sroa.693.4.copyload, %bb.em ], [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.698.4.copyload, %bb.er ], [ %.sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.0..sroa.4103.8..sroa.6101.4.copyload, %bb.en ], [ undef, %bb.eo ], [ %.sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.0..sroa.4108.8..sroa.6106.4.copyload, %bb.ep ], [ %.sroa.5375.0..sroa.5375.0..sroa.5375.0..sroa.5375.8..sroa.6111.4.copyload, %bb.es ], [ %.sroa.5378.0..sroa.5378.0..sroa.5378.0..sroa.5378.8..sroa.6115.4.copyload, %bb.et ], [ %.sroa.5381.0..sroa.5381.0..sroa.5381.0..sroa.5381.8..sroa.6119.4.copyload, %bb.eu ]
  %.sroa.20.0 = phi ptr [ %i.oo, %bb.ev ], [ %.sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.0202.0..sroa.094.0.copyload, %bb.em ], [ %.sroa.0372.0..sroa.0372.0..sroa.0372.0..sroa.0372.0..sroa.497.4.copyload, %bb.er ], [ %.sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0206.0..sroa.0102.0.copyload, %bb.en ], [ %.sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.0123.0..sroa.4121.4.copyload, %bb.eo ], [ %.sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0210.0..sroa.0107.0.copyload, %bb.ep ], [ %.sroa.0374.0..sroa.0374.0..sroa.0374.0..sroa.0374.0..sroa.4110.4.copyload, %bb.es ], [ %.sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.4114.4.copyload, %bb.et ], [ %.sroa.0380.0..sroa.0380.0..sroa.0380.0..sroa.0380.0..sroa.4118.4.copyload, %bb.eu ]
  %i.pa = phi <2 x i32> [ <i32 1, i32 undef>, %bb.ev ], [ <i32 0, i32 1>, %bb.em ], [ <i32 0, i32 2>, %bb.er ], [ <i32 0, i32 3>, %bb.en ], [ zeroinitializer, %bb.eo ], [ <i32 0, i32 4>, %bb.ep ], [ <i32 0, i32 6>, %bb.es ], [ <i32 0, i32 7>, %bb.et ], [ <i32 0, i32 5>, %bb.eu ]
  store <2 x i32> %i.pa, ptr %0, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.20.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.21.0, ptr %.sroa.21.0..sroa_idx, align 8
  %i.pb = trunc nuw i8 %.sroa.0125.2 to i1
  br i1 %i.pb, label %bb.ew, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit317

bb.er:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0372)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.0.0..sroa.0.0..sroa.0.0.613716954 = load float, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.630717955 = load float, ptr %.sroa.22, align 4, !noundef !21
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.613716954, ptr %.sroa.0372, align 8, !alias.scope !2285
  %i.pc = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0372.4..sroa_idx936 = getelementptr inbounds nuw i8, ptr %.sroa.0372, i64 4
  store float %i.pc, ptr %.sroa.0372.4..sroa_idx936, align 4, !alias.scope !2285
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.630717955, ptr %.sroa.5, align 8, !alias.scope !2285
  %i.pd = extractelement <2 x float> %i.kw, i64 1
  %.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 4
  store float %i.pd, ptr %.sroa.5.4..sroa_idx, align 4, !alias.scope !2285
  %.sroa.0372.0..sroa.0372.0..sroa.0372.0..sroa.0372.0..sroa.497.4.copyload = load ptr, ptr %.sroa.0372, align 8
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8..sroa.698.4.copyload = load double, ptr %.sroa.5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0372)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.eq

bb.es:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0374)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5375)
  %.sroa.0.0..sroa.0.0..sroa.0.0.619 = load i32, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.627710948 = load float, ptr %.sroa.22, align 4, !noundef !21
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0.619, ptr %.sroa.0374, align 8, !alias.scope !2288
  %i.pe = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0374.4..sroa_idx937 = getelementptr inbounds nuw i8, ptr %.sroa.0374, i64 4
  store float %i.pe, ptr %.sroa.0374.4..sroa_idx937, align 4, !alias.scope !2288
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.627710948, ptr %.sroa.5375, align 8, !alias.scope !2288
  %i.pf = extractelement <2 x float> %i.kw, i64 1
  %.sroa.5375.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5375, i64 4
  store float %i.pf, ptr %.sroa.5375.4..sroa_idx, align 4, !alias.scope !2288
  %.sroa.0374.0..sroa.0374.0..sroa.0374.0..sroa.0374.0..sroa.4110.4.copyload = load ptr, ptr %.sroa.0374, align 8
  %.sroa.5375.0..sroa.5375.0..sroa.5375.0..sroa.5375.8..sroa.6111.4.copyload = load double, ptr %.sroa.5375, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0374)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5375)
  br label %bb.eq

bb.et:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0377)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5378)
  %.sroa.0.0..sroa.0.0..sroa.0.0.618 = load i32, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.626709947 = load float, ptr %.sroa.22, align 4, !noundef !21
  store i32 %.sroa.0.0..sroa.0.0..sroa.0.0.618, ptr %.sroa.0377, align 8, !alias.scope !2291
  %i.pg = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0377.4..sroa_idx938 = getelementptr inbounds nuw i8, ptr %.sroa.0377, i64 4
  store float %i.pg, ptr %.sroa.0377.4..sroa_idx938, align 4, !alias.scope !2291
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.626709947, ptr %.sroa.5378, align 8, !alias.scope !2291
  %i.ph = extractelement <2 x float> %i.kw, i64 1
  %.sroa.5378.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5378, i64 4
  store float %i.ph, ptr %.sroa.5378.4..sroa_idx, align 4, !alias.scope !2291
  %.sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.0377.0..sroa.4114.4.copyload = load ptr, ptr %.sroa.0377, align 8
  %.sroa.5378.0..sroa.5378.0..sroa.5378.0..sroa.5378.8..sroa.6115.4.copyload = load double, ptr %.sroa.5378, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0377)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5378)
  br label %bb.eq

bb.eu:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0380)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5381)
  %.sroa.0.0..sroa.0.0..sroa.0.0.617707945 = load float, ptr %.sroa.0, align 4, !noundef !21
  %.sroa.22.0..sroa.22.0..sroa.22.8.708946 = load float, ptr %.sroa.22, align 4, !noundef !21
  store float %.sroa.0.0..sroa.0.0..sroa.0.0.617707945, ptr %.sroa.0380, align 8, !alias.scope !2294
  %i.pi = extractelement <2 x float> %i.kw, i64 0
  %.sroa.0380.4..sroa_idx939 = getelementptr inbounds nuw i8, ptr %.sroa.0380, i64 4
  store float %i.pi, ptr %.sroa.0380.4..sroa_idx939, align 4, !alias.scope !2294
  store float %.sroa.22.0..sroa.22.0..sroa.22.8.708946, ptr %.sroa.5381, align 8, !alias.scope !2294
  %i.pj = extractelement <2 x float> %i.kw, i64 1
  %.sroa.5381.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5381, i64 4
  store float %i.pj, ptr %.sroa.5381.4..sroa_idx, align 4, !alias.scope !2294
  %.sroa.0380.0..sroa.0380.0..sroa.0380.0..sroa.0380.0..sroa.4118.4.copyload = load ptr, ptr %.sroa.0380, align 8
  %.sroa.5381.0..sroa.5381.0..sroa.5381.0..sroa.5381.8..sroa.6119.4.copyload = load double, ptr %.sroa.5381, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0380)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5381)
end_hunk_2
begin_hunk_3_@_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRoECs8jFhWeO2DFb_9typst_pdf:bb.a
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtNtCsdaEETE4DqmE_13typst_library9visualize5curve9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #0 {
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
  %.idx = mul nuw nsw i64 %1, 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit
  %.sroa.0.03 = phi ptr [ %i.m, %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit ], [ %0, %bb.a ] ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10179)
  %i.n = load i64, ptr %.sroa.0.03, align 8, !range !10182, !alias.scope !10179, !noalias !10183, !noundef !21 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, i64 noundef range(i64 -9223372036854775808, 4294967297) %i.n), !noalias !10179
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10185
  store i64 %i.p, ptr %i.j, align 8, !noalias !10185
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10185
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10188
  store i64 %i.r, ptr %i.i, align 8, !noalias !10188
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10188
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10191
  store i64 %i.t, ptr %i.h, align 8, !noalias !10191
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10191
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10194
  store i64 %i.v, ptr %i.g, align 8, !noalias !10194
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10194
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10197
  store i64 %i.x, ptr %i.f, align 8, !noalias !10197
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10197
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10200
  store i64 %i.z, ptr %i.e, align 8, !noalias !10200
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10200
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10203
  store i64 %i.ab, ptr %i.d, align 8, !noalias !10203
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10203
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10206
  store i64 %i.ad, ptr %i.c, align 8, !noalias !10206
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10206
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10209
  store i64 %i.af, ptr %i.b, align 8, !noalias !10209
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10209
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !10179, !noalias !10183, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10212
  store i64 %i.ah, ptr %i.a, align 8, !noalias !10212
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !10179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10212
  br label %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit

_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.lr.ph, %bb.b, %bb.c, %bb.d
  %i.ai = icmp eq ptr %i.m, %i.k
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsL_NtNtCsdaEETE4DqmE_13typst_library9visualize5curveNtB6_9CurveItemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs8jFhWeO2DFb_9typst_pdf.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB1a_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3Q_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0E0B3S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i = alloca [40 x i8], align 8    ; 6 uses
  %.sroa.4.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !21, !align !1206, !noundef !21 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.o, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 16
  %.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !nonnull !21, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !21, !noundef !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !range !10215, !noundef !21
  switch i64 %i.i, label %default.unreachable [
    i64 5, label %bb.c
    i64 4, label %bb.c
    i64 1, label %bb.c
    i64 0, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.m
    i64 6, label %bb.m
    i64 7, label %bb.m
    i64 8, label %bb.m
    i64 9, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  call void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage8to_luma8(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.4.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  %.sroa.7.24.copyload.i = load i64, ptr %.sroa.4.i.i.i, align 8 ; 3 uses
  %.sroa.9.24..sroa.4.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i, i64 8
  %.sroa.9.24.copyload.i = load ptr, ptr %.sroa.9.24..sroa.4.i.i.sroa_idx.i, align 8 ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10216
  %i.j = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !10216 ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit21.i.i.i, !prof !24

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #39
          to label %.noexc.i.i.i unwind label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %.sroa.7.24.copyload.i, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %2

2:                                                ; preds = %bb.e
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.24.copyload.i, i64 noundef %.sroa.7.24.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10219
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.f:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = icmp eq i64 %.sroa.738.24.copyload.i, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i.sink.split: ; preds = %bb.f
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.939.24.copyload.i, i64 noundef %.sroa.738.24.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10219
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i.sink.split, %bb.f, %2, %bb.e
  %common.resume.op.i.i49.i = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.l, %2 ], [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEECs8jFhWeO2DFb_9typst_pdf.exit.i.sink.split ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i49.i

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit21.i.i.i: ; preds = %bb.c
  store i64 1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.7.24.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr %.sroa.9.24.copyload.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB34_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0B36_.exit

bb.g:                                             ; preds = %bb.b
  %i.p = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.r = atomicrmw add ptr %i.g, i64 1 monotonic, align 8
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB34_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0B36_.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.f, align 8, !nonnull !21, !noundef !21
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB34_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0B36_.exit

bb.l:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @_RNvMs_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB4_12DynamicImage7to_rgb8(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %.sroa.410.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
  %.sroa.738.24.copyload.i = load i64, ptr %.sroa.410.i.i.i, align 8 ; 3 uses
  %.sroa.939.24..sroa.410.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i, i64 8
  %.sroa.939.24.copyload.i = load ptr, ptr %.sroa.939.24..sroa.410.i.i.sroa_idx.i, align 8 ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10224
  %i.v = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #41, !noalias !10224 ; 8 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i, !prof !24

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #39
          to label %.noexc22.i.i.i unwind label %bb.f

.noexc22.i.i.i:                                   ; preds = %bb.n
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i: ; preds = %bb.m
  store i64 1, ptr %i.v, align 8
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %.sroa.436.0..sroa_idx.i, align 8
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 2, ptr %.sroa.537.0..sroa_idx.i, align 8
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.738.24.copyload.i, ptr %.sroa.738.0..sroa_idx.i, align 8
  %.sroa.939.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %.sroa.939.24.copyload.i, ptr %.sroa.939.0..sroa_idx.i, align 8
  %.sroa.1940.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1940.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB34_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0B36_.exit

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB34_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13color_channel0E0zE0B36_.exit: ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit21.i.i.i, %bb.i, %bb.k, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.j, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit21.i.i.i ], [ %i.t, %bb.i ], [ %i.u, %bb.k ], [ %i.v, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCsbMQOdixSu6G_5image6images8dynimage12DynamicImageEE3newCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.5.sroa.0.0.copyload, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  ret void

bb.o:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB1a_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3z_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0E0B3B_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !1206, !noundef !21 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.h, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !nonnull !21, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noalias !10227, !nonnull !21, !noundef !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !10227, !nonnull !21, !noundef !21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !range !10215, !noalias !10227, !noundef !21
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit
    i64 1, label %bb.c
    i64 2, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit
    i64 3, label %bb.c
    i64 4, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit
    i64 5, label %bb.c
    i64 6, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit
    i64 7, label %bb.c
    i64 8, label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit
    i64 9, label %bb.c
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 48
  %.val.i.i.i = load i32, ptr %i.i, align 8, !noalias !10227, !noundef !21 ; 3 uses
  %i.j = getelementptr i8, ptr %i.f, i64 52
  %.val1.i.i.i = load i32, ptr %i.j, align 4, !noalias !10227, !noundef !21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10232
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i, 0
  %i.k = zext i1 %.not.i.i.i.i.i.i to i32         ; 3 uses
  %.not4.i.i.i.i.i.i = icmp ugt i32 %.val1.i.i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %bb.d, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef i32 @_RNvXsc_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB5_12DynamicImageNtNtB7_13generic_image16GenericImageView9get_pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i32 noundef 0, i32 noundef %i.k), !noalias !10236
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !10242
  %i.m = tail call noundef dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, 17) 1) #41, !noalias !10242 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #39, !noalias !10232
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.d
  %.sroa.44.11.extract.shift.i.i.i.i.i = lshr i32 %i.l, 24
  %.sroa.44.11.extract.trunc.i.i.i.i.i = trunc nuw i32 %.sroa.44.11.extract.shift.i.i.i.i.i to i8
  store i8 %.sroa.44.11.extract.trunc.i.i.i.i.i, ptr %i.m, align 1, !noalias !10232
  store i64 8, ptr %i.a, align 8, !noalias !10232
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10232
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !10232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10248)
  %.not.i.i.i1.i.i.i.i.i = icmp ult i32 %.val.i.i.i, 2 ; 2 uses
  %i.o = zext i1 %.not.i.i.i1.i.i.i.i.i to i32
  %spec.select.i2.i.i.i.i.i = add nuw nsw i32 %i.k, %i.o ; 2 uses
  %.not4.i.i.i3.i.i.i.i.i = icmp ult i32 %spec.select.i2.i.i.i.i.i, %.val1.i.i.i
  br i1 %.not4.i.i.i3.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %i.p = phi ptr [ %i.x, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.m, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %i.q = phi i64 [ %i.z, %._crit_edge.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ] ; 5 uses
  %spec.select.i5.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %spec.select.i2.i.i.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ] ; 2 uses
  %.not.i.i.i4.i.i.i.i.i = phi i1 [ %.not.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %.not.i.i.i1.i.i.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %i.r = phi i32 [ %i.t, %._crit_edge.i.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %spec.select8.i.i.i.i.i.i = select i1 %.not.i.i.i4.i.i.i.i.i, i32 0, i32 %i.r ; 2 uses
  %i.s = invoke noundef i32 @_RNvXsc_NtNtCsbMQOdixSu6G_5image6images8dynimageNtB5_12DynamicImageNtNtB7_13generic_image16GenericImageView9get_pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, i32 noundef %spec.select8.i.i.i.i.i.i, i32 noundef %spec.select.i5.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !10232

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.i
  %i.t = add nuw i32 %spec.select8.i.i.i.i.i.i, 1 ; 2 uses
  %.sroa.44.11.extract.shift.i.i.i.i.i.i.i = lshr i32 %i.s, 24
  %.sroa.44.11.extract.trunc.i.i.i.i.i.i.i = trunc nuw i32 %.sroa.44.11.extract.shift.i.i.i.i.i.i.i to i8
  %i.u = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i64, ptr %i.a, align 8, !range !98, !alias.scope !10251, !noalias !10252, !noundef !21
  %i.w = icmp eq i64 %i.q, %i.v
  br i1 %i.w, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.q, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.._crit_edge.i.i.i.i_crit_edge.i.i.i.i unwind label %bb.f, !noalias !10232

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.._crit_edge.i.i.i.i_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10251, !noalias !10252
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.._crit_edge.i.i.i.i_crit_edge.i.i.i.i, %.noexc.i.i.i.i
  %i.x = phi ptr [ %.pre.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.._crit_edge.i.i.i.i_crit_edge.i.i.i.i ], [ %i.p, %.noexc.i.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.q
  store i8 %.sroa.44.11.extract.trunc.i.i.i.i.i.i.i, ptr %i.y, align 1, !noalias !10255
  %i.z = add nuw i64 %i.q, 1                      ; 3 uses
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !10251, !noalias !10252
  %.not.i.i.i.i.i.i.i.i = icmp uge i32 %i.t, %.val.i.i.i ; 2 uses
  %i.aa = zext i1 %.not.i.i.i.i.i.i.i.i to i32
  %spec.select.i.i.i.i.i.i = add nuw i32 %spec.select.i5.i.i.i.i.i, %i.aa ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp ult i32 %spec.select.i.i.i.i.i.i, %.val1.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i

bb.f:                                             ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !10232 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val7.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10232, !nonnull !21, !noundef !21
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !10232
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload1.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !10256
  %.sroa.5.0.copyload4.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10256
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.ab

_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i, %bb.c
  %.sroa.6.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.z, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i ], [ 1, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %.sroa.5.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.c ], [ %.sroa.5.0.copyload4.pre.i.i.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i ], [ %i.m, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.0.0.copyload1.pre.i.i.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB25_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3C_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE11spec_extendB3E_.exit.i.loopexit.i.i.i ], [ 8, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10232
  br label %_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit

_RNCINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB5_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VechEEE10initializeNCINvB4_11get_or_initNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB2N_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel0E0zE0B2P_.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i
  %.sroa.6.0.i.i = phi i64 [ %.sroa.6.0.i.i.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ]
  %.sroa.5.0.i.i = phi ptr [ %.sroa.5.0.i.i.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %bb.b ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCsbMQOdixSu6G_5image6images13generic_image6PixelsNtNtB2n_8dynimage12DynamicImageENCNCNCNvXs0_NtCs8jFhWeO2DFb_9typst_pdf5imageNtB3U_14PdfRasterImageNtNtNtCsidf7BFzONoc_6krilla8graphics5image11CustomImage13alpha_channel000EE9from_iterB3W_.exit.i.i.i ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ], [ -1, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i64 %.sroa.0.0.i.i, ptr %.sroa.5.sroa.0.0.copyload, align 8
  %.sroa.411.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  store ptr %.sroa.5.0.i.i, ptr %.sroa.411.0..8.val.sroa_idx.i, align 8
  %.sroa.512.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.512.0..8.val.sroa_idx.i, align 8
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB1a_11get_or_initFEB1G_E0zE0E0Cs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !21, !align !1206, !noundef !21 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %.sroa.0.0.copyload(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !10257
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #42
  unreachable
}
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_located:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  %.sroa.0.07.i.i = and i64 %.val2.i, %i.z        ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bd, align 1, !noalias !12626
  %i.be = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i14, label %._crit_edge.i.i12, !prof !1245

._crit_edge.i.i12:                                ; preds = %.lr.ph.i.i14, %bb.k
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.k ], [ %.sroa.0.0.i.i, %.lr.ph.i.i14 ]
  %.lcssa.i.i = phi i16 [ %i.bf, %bb.k ], [ %i.bw, %.lr.ph.i.i14 ]
  %i.bg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = add i64 %.sroa.0.0.lcssa.i.i, %i.bh
  %i.bj = and i64 %i.bi, %.val2.i                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !12629, !noundef !21 ; 2 uses
  %i.bm = icmp sgt i8 %i.bl, -1
  br i1 %i.bm, label %bb.l, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit, !prof !24

bb.l:                                             ; preds = %._crit_edge.i.i12
  %.val2.i.i.i13 = load <16 x i8>, ptr %.val.i, align 16, !noalias !12629
  %i.bn = icmp slt <16 x i8> %.val2.i.i.i13, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.bo, 0
  %i.bp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bo, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !12629
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit

.lr.ph.i.i14:                                     ; preds = %bb.k, %.lr.ph.i.i14
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i, %.lr.ph.i.i14 ], [ %.sroa.0.07.i.i, %bb.k ]
  %i.br = phi i64 [ %i.bs, %.lr.ph.i.i14 ], [ 0, %bb.k ]
  %i.bs = add i64 %i.br, 16                       ; 2 uses
  %i.bt = add i64 %i.bs, %.sroa.0.010.i.i
  %.sroa.0.0.i.i = and i64 %i.bt, %.val2.i        ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !12626
  %i.bv = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i14, label %._crit_edge.i.i12, !prof !1247

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit: ; preds = %._crit_edge.i.i12, %bb.l
  %i.bx = phi i8 [ %.pre.i, %bb.l ], [ %i.bl, %._crit_edge.i.i12 ]
  %.sroa.0.0.i5.i.i = phi i64 [ %i.bq, %bb.l ], [ %i.bj, %._crit_edge.i.i12 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i5.i.i
  %i.bz = add i64 %.sroa.0.0.i5.i.i, -16
  %i.ca = and i64 %i.bz, %.val2.i
  store i8 %i.ab, ptr %i.by, align 1, !noalias !12629
  %i.cb = getelementptr i8, ptr %.val.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  store i8 %i.ab, ptr %i.cc, align 1, !noalias !12629
  %i.cd = sub nsw i64 0, %.sroa.0.0.i5.i.i
  %i.ce = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.cd ; 4 uses
  %i.cf = and i8 %i.bx, 1
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 -32
  store i64 %i.t, ptr %i.ch, align 16, !noalias !12621
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -24
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !12621
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -16
  store i32 %i.m, ptr %.sroa.5.0..sroa_idx, align 16, !noalias !12621
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ce, i64 -12
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !12621
  %i.ci = load <2 x i64>, ptr %i.az, align 8, !alias.scope !12621, !noalias !12624
  %i.cj = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.cg, i64 0
  %i.ck = sub <2 x i64> %i.ci, %i.cj
  store <2 x i64> %i.ck, ptr %i.az, align 8, !alias.scope !12621, !noalias !12624
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.cl = getelementptr inbounds i8, ptr %i.ap, i64 -12
  store i8 1, ptr %i.cl, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupEE14insert_no_growB21_.exit
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups11new_virtual(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 5 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12630)
  %i.i = load i64, ptr %0, align 8, !range !98, !alias.scope !12630, !noalias !12633, !noundef !21
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit unwind label %bb.c, !noalias !12633

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #44
          to label %bb.e unwind label %bb.d, !noalias !12630

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !12630
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.m = trunc i64 %i.g to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12630, !noalias !12633, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !12630
  %i.q = add nuw nsw i64 %i.g, 1
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !12630, !noalias !12633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define i56 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i56 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !21 ; 2 uses
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !noundef !21
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %i.a ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !6627, !alias.scope !12635, !noundef !21
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 2, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 3, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 9, label %bb.e
    i8 10, label %bb.c
    i8 11, label %bb.e
    i8 12, label %bb.e
    i8 13, label %bb.e
    i8 14, label %bb.e
    i8 15, label %bb.e
    i8 16, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 17, label %bb.e
    i8 18, label %bb.e
    i8 19, label %bb.e
    i8 20, label %bb.e
    i8 21, label %bb.e
    i8 22, label %bb.e
    i8 23, label %bb.e
    i8 24, label %bb.e
    i8 25, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 26, label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit
    i8 27, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
  unreachable

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.c
  %.sink = phi i64 [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 26, %bb.c ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ], [ 25, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink ; 7 uses
  %.sroa.0.0.extract.trunc.i = trunc i56 %2 to i8 ; 3 uses
  %.sroa.617.0.extract.shift.i = lshr i56 %2, 8
  %.sroa.617.0.extract.trunc.i = trunc i56 %.sroa.617.0.extract.shift.i to i16 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i56 %2, 24
  %.sroa.8.0.extract.trunc.i = trunc i56 %.sroa.8.0.extract.shift.i to i24 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i56 %2, 48
  %.sroa.9.0.extract.trunc.i = trunc nuw i56 %.sroa.9.0.extract.shift.i to i8 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.0.0.extract.trunc.i, 2
  br i1 %.not.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %i.j, align 1, !alias.scope !12638, !noalias !12645 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %.cont.i

.cont.i:                                          ; preds = %bb.f
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !12638, !noalias !12645
  %i.k = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i, %.sroa.9.0.extract.trunc.i
  %i.l = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i, %.sroa.8.0.extract.trunc.i
  %or.cond.i.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.i.i.i, label %.cont22.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

.cont22.i:                                        ; preds = %.cont.i
  %i.m = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  %i.n = trunc i56 %2 to i1                       ; 2 uses
  br i1 %i.m, label %3, label %bb.g

3:                                                ; preds = %.cont22.i
  br i1 %i.n, label %.split.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

bb.g:                                             ; preds = %.cont22.i
  br i1 %i.n, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i

.split.i:                                         ; preds = %3
  %4 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i, %.sroa.617.0.extract.trunc.i
  br i1 %4, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i: ; preds = %.split.i, %bb.g, %bb.f
  store i8 %.sroa.0.0.extract.trunc.i, ptr %i.j, align 1, !alias.scope !12648
  store i16 %.sroa.617.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !12648
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i24 %.sroa.8.0.extract.trunc.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !12648
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i8 %.sroa.9.0.extract.trunc.i, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !12648
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit: ; preds = %bb.e, %.cont.i, %3, %bb.g, %.split.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i
  %.sroa.0.1.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i ], [ 1, %bb.g ], [ 1, %.split.i ], [ 2, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %.cont.i ], [ 0, %3 ]
  %.sroa.617.0.insert.insert.i = and i56 %2, -256
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.1.i to i56
  %.sroa.0.0.insert.insert.i = or disjoint i56 %.sroa.617.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  br label %_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit

_RNvMs6_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_9GroupKind8lang_mut.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit
  %.sroa.03.0 = phi i56 [ %.sroa.0.0.insert.insert.i, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ], [ %2, %bb.b ]
  ret i56 %.sroa.03.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define { i32, i8 } @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups6by_loc(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(16) %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i128, ptr %1, align 16             ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12649)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12649, !noundef !21
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = trunc i128 %.val to i64
  %i.f = mul i64 %i.e, -1065810590584100411
  %i.g = lshr i128 %.val, 64
  %i.h = trunc nuw i128 %i.g to i64
  %i.i = add i64 %i.f, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411       ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 26) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12655)
  %i.l = lshr i64 %i.k, 57
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !12658, !noalias !12659, !noundef !21 ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !12658, !noalias !12659, !nonnull !21, !noundef !21 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ai, %bb.e ]
  %.pn.i.i = phi i64 [ %i.k, %bb.b ], [ %i.aj, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.o      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.s, align 1, !noalias !12662 ; 2 uses
  %i.t = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.r
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ah, %bb.d ], [ %i.u, %bb.c ] ; 3 uses
  %i.v = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = add i64 %.sroa.01.0.i.i.i, %i.w
  %i.y = and i64 %i.x, %i.o
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %.val2.i.i.i = load i128, ptr %i.ab, align 16, !noalias !12665, !noundef !21
  %i.ac = icmp eq i128 %.val, %.val2.i.i.i
  br i1 %i.ac, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit, label %bb.d, !prof !85

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread, !prof !24

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ag = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ah = and i16 %i.ag, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ai = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.aj = add i64 %.sroa.01.0.i.i.i, %i.ai
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit: ; preds = %.lr.ph.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.al = load i32, ptr %i.ak, align 4, !noundef !21
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %i.an = load i8, ptr %i.am, align 4, !range !22, !noundef !21
  br label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit
  %.sroa.3.0 = phi i8 [ %i.an, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit ], [ 2, %bb.a ], [ 2, %._crit_edge.i.i ]
  %.sroa.0.0 = phi i32 [ %i.al, %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups12LocatedGroupNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE3getBO_EB20_.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %i.ao = insertvalue { i32, i8 } poison, i32 %.sroa.0.0, 0
  %i.ap = insertvalue { i32, i8 } %i.ao, i8 %.sroa.3.0, 1
  ret { i32, i8 } %i.ap
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups8new_weak(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i64 noundef range(i64 1, 0) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i8 1, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 5 uses
  %i.h = icmp ult i64 %i.g, 115292150460684698
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12668)
  %i.i = load i64, ptr %0, align 8, !range !98, !alias.scope !12668, !noalias !12671, !noundef !21
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit unwind label %bb.c, !noalias !12671

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #44
          to label %bb.e unwind label %bb.d, !noalias !12668

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !12668
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags6groups5GroupE8push_mutBL_.exit: ; preds = %bb.a, %bb.b
  %i.m = trunc i64 %i.g to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !12668, !noalias !12671, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !12668
  %i.q = add nuw nsw i64 %i.g, 1
  store i64 %i.q, ptr %i.f, align 8, !alias.scope !12668, !noalias !12671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.m
}

; Function Attrs: nonlazybind uwtable
define { i8, i8 } @_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups9breakable(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !6627, !noundef !21
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %bb.g
    i8 1, label %bb.i
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.g
    i8 7, label %bb.g
    i8 8, label %bb.g
    i8 9, label %bb.g
    i8 10, label %bb.g
    i8 11, label %bb.g
    i8 12, label %bb.g
    i8 13, label %bb.g
    i8 14, label %bb.g
    i8 15, label %bb.g
    i8 16, label %bb.g
    i8 17, label %bb.g
    i8 18, label %bb.g
    i8 19, label %bb.g
    i8 20, label %bb.g
    i8 21, label %bb.j
    i8 22, label %bb.g
    i8 23, label %bb.g
    i8 24, label %bb.h
    i8 25, label %bb.b
    i8 26, label %bb.g
    i8 27, label %bb.c
  ]

default.unreachable2:                             ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12673)
  %i.d = zext i32 %i.c to i64                     ; 3 uses
end_hunk_4
begin_hunk_5_@_RNvNtCs8jFhWeO2DFb_9typst_pdf7convert12handle_frame:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !15435
  invoke fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text12compute_deco(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(72) %i.ao, i8 %.val29.i, double %i.aac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.agv, i8 noundef 1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.am)
          to label %bb.fe unwind label %.loopexit.i.i.i346, !noalias !15437

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !15435
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionbE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.ff:                                            ; preds = %.noexc105.i.i.i, %.noexc104.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.al, ptr noundef nonnull align 8 dereferenceable(112) %i.p, i64 112, i1 false), !noalias !15642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !15610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !15435
  invoke fastcc void @_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text12compute_deco(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(72) %i.ao, i8 %.val29.i, double %i.aac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahd, i8 noundef 2, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.al)
          to label %bb.fg unwind label %.loopexit.i.i.i346, !noalias !15437

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !15435
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionbE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i

bb.fh:                                            ; preds = %bb.et
  %i.ail = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15437
  unreachable

bb.fi:                                            ; preds = %._crit_edge.i.i.i350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.513.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !15435
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i

_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i: ; preds = %bb.fi, %._crit_edge.i.i.i350, %._crit_edge.thread.i.i.i
  %.sroa.6.0.lcssa139.i.i.i = phi i32 [ -1, %._crit_edge.thread.i.i.i ], [ %.sroa.6.3.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.6.3.i.i.i, %bb.fi ]
  %.sroa.16.0.lcssa136.i.i.i = phi i8 [ 2, %._crit_edge.thread.i.i.i ], [ %.sroa.16.2.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.16.2.i.i.i, %bb.fi ]
  %.sroa.18.0.lcssa135.i.i.i = phi i8 [ 2, %._crit_edge.thread.i.i.i ], [ %.sroa.18.2.i.i.i, %._crit_edge.i.i.i350 ], [ %.sroa.18.2.i.i.i, %bb.fi ]
  %.sroa.14.sroa.6.sroa.0.0.lcssa134.i.i.i = phi i32 [ 2, %._crit_edge.thread.i.i.i ], [ %i.aaz, %._crit_edge.i.i.i350 ], [ %i.aaz, %bb.fi ]
  %.sroa.312.0.copyload133.i.i.i = phi i32 [ 2, %._crit_edge.thread.i.i.i ], [ 2, %._crit_edge.i.i.i350 ], [ %.sroa.312.0.copyload.pre.i.i.i, %bb.fi ]
  %i.aim = phi <2 x float> [ <float undef, float 0.000000e+00>, %._crit_edge.thread.i.i.i ], [ %i.ahn, %._crit_edge.i.i.i350 ], [ %i.ahn, %bb.fi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.i.i.i, i64 12, i1 false), !noalias !15435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.41.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.52.i.i.i, i64 12, i1 false), !noalias !15643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(72) %.sroa.11.sroa.3.6..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ao, i64 72, i1 false), !noalias !15644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !15435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !15434
  store i32 %.sroa.312.0.copyload133.i.i.i, ptr %i.ax, align 4, !alias.scope !15408, !noalias !15643
  store i32 %.sroa.6.0.lcssa139.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i351, align 4, !alias.scope !15408, !noalias !15643
  store <2 x float> %i.aim, ptr %.sroa.6.0..sroa_idx.i34.i, align 4, !alias.scope !15408, !noalias !15643
  store i32 %.sroa.14.sroa.6.sroa.0.0.lcssa134.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !alias.scope !15408, !noalias !15643
  store i8 %.sroa.16.0.lcssa136.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !alias.scope !15408, !noalias !15643
  store i8 %.sroa.18.0.lcssa135.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 1, !alias.scope !15408, !noalias !15643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !15434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull align 2 dereferenceable(72) %.sroa.11.sroa.3.6..sroa_idx.i.i, i64 72, i1 false), !noalias !15434
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.sroa.3.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !15645)
  call void @llvm.experimental.noalias.scope.decl(metadata !15648)
  %.val.i.i.i352 = load i8, ptr %i.mj, align 8, !range !9051, !alias.scope !15648, !noalias !15650, !noundef !21 ; 2 uses
  %.not.i9.i.i353 = icmp eq i8 %.val.i.i.i352, 2
  br i1 %.not.i9.i.i353, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %bb.fk

.lr.ph.split.us.i.i.i354:                         ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ar, i64 64, i1 false), !noalias !15650
  store i8 %.val.i.i.i352, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !noalias !15651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i355, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.8.0..sroa_idx.i10.i.i, i64 7, i1 false), !noalias !15650
  call void @llvm.experimental.noalias.scope.decl(metadata !15652)
  %i.ain = load i64, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656, !noundef !21
  %.val.i.us.i.i.i = load ptr, ptr %i.mi, align 8, !alias.scope !15655, !noalias !15656, !nonnull !21, !noundef !21 ; 2 uses
  %.not.i.i.us.i.i.i = icmp eq ptr %.val.i.us.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.split.us.i.i.i354
  %i.aio = getelementptr i8, ptr %.val.i.us.i.i.i, i64 -8
  %.val.i.i.us.i.i.i = load i64, ptr %i.aio, align 8, !noalias !15658, !noundef !21
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i: ; preds = %bb.fj, %.lr.ph.split.us.i.i.i354
  %.sroa.02.0.i.i.us.i.i.i = phi i64 [ %.val.i.i.us.i.i.i, %bb.fj ], [ 0, %.lr.ph.split.us.i.i.i354 ]
  %i.aip = icmp eq i64 %i.ain, %.sroa.02.0.i.i.us.i.i.i
  %i.aiq = zext i1 %i.aip to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mi, i64 noundef %i.aiq)
          to label %._crit_edge.split.us.i.i.i unwind label %bb.fl, !noalias !15659, !inline_history !15660

._crit_edge.split.us.i.i.i:                       ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i
  %i.air = load ptr, ptr %i.mi, align 8, !alias.scope !15655, !noalias !15656, !nonnull !21, !noundef !21
  %i.ais = load i64, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656, !noundef !21 ; 2 uses
  %i.ait = getelementptr inbounds nuw [72 x i8], ptr %i.air, i64 %i.ais
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ait, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !15661
  %i.aiu = add i64 %i.ais, 1
  store i64 %i.aiu, ptr %i.mk, align 8, !alias.scope !15655, !noalias !15656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15651
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i

bb.fk:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mi, i64 noundef 1)
          to label %.lr.ph.split.us.i.i.i354 unwind label %bb.fo, !noalias !15662

bb.fl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.us.i.i.i
  %i.aiv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.j) #44
          to label %.body399 unwind label %bb.fm, !noalias !15661, !inline_history !15660

bb.fm:                                            ; preds = %bb.fl
  %i.aiw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15658, !inline_history !15660
  unreachable

bb.fn:                                            ; preds = %bb.fo
  %i.aix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15663
  unreachable

bb.fo:                                            ; preds = %bb.fk
  %i.aiy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.ar)
          to label %.body399 unwind label %bb.fn, !noalias !15664

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %._crit_edge.split.us.i.i.i, %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text13compute_attrs.exit.i.i
  %i.aiz = load i64, ptr %i.iu, align 8, !alias.scope !15665, !noalias !15668, !noundef !21 ; 2 uses
  %.not.i11.i.i = icmp eq i64 %i.aiz, 0
  br i1 %.not.i11.i.i, label %.invoke2422.a, label %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356, !prof !24

_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356: ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtB1M_6option6OptionBI_EECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %i.aja = load ptr, ptr %i.iv, align 8, !alias.scope !15665, !noalias !15668, !nonnull !21, !noundef !21
  %i.ajb = getelementptr [160 x i8], ptr %i.aja, i64 %i.aiz ; 2 uses
  %i.ajc = getelementptr i8, ptr %i.ajb, i64 -160
  store i128 %i.aab, ptr %i.ajc, align 16, !noalias !15428
  %.sroa.42.0..sroa_idx.i.i357 = getelementptr i8, ptr %i.ajb, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %.sroa.42.0..sroa_idx.i.i357, ptr noundef nonnull align 4 dereferenceable(36) %i.ax, i64 36, i1 false), !noalias !15429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !15434
  br label %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i

_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i: ; preds = %_RNvXs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut.exit.i.i356, %bb.cs
  %i.ajd = load i64, ptr %i.io, align 8, !alias.scope !15353, !noalias !15360, !noundef !21 ; 3 uses
  %i.aje = load i64, ptr %i.ip, align 8, !alias.scope !15353, !noalias !15360, !noundef !21 ; 2 uses
  %i.ajf = icmp ult i64 %i.ajd, %i.aje
  br i1 %i.ajf, label %bb.fp, label %.invoke2424.a

bb.fp:                                            ; preds = %_RNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree4text18resolve_text_attrs.exit.i
  %i.ajg = load ptr, ptr %i.iq, align 8, !alias.scope !15353, !noalias !15360, !nonnull !21, !noundef !21
  %i.ajh = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 188
  %.sroa.018.0.copyload.i = load i24, ptr %i.ajh, align 4, !alias.scope !15358, !noalias !15407 ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 184
  %.sroa.06.0.copyload.i = load i32, ptr %i.aji, align 8, !alias.scope !15358, !noalias !15407 ; 4 uses
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.ajg, i64 %i.ajd ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !noalias !15407, !noundef !21
  %.sroa.016.0.insert.ext.i = zext i24 %.sroa.018.0.copyload.i to i56 ; 2 uses
  %.sroa.016.3.insert.ext.i = zext i32 %.sroa.06.0.copyload.i to i56
  %.sroa.016.3.insert.shift.i = shl nuw i56 %.sroa.016.3.insert.ext.i, 24
  %.sroa.016.3.insert.insert.i = or disjoint i56 %.sroa.016.3.insert.shift.i, %.sroa.016.0.insert.ext.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15669)
  %i.ajl = zext i32 %i.ajk to i64                 ; 3 uses
  %i.ajm = load i64, ptr %i.ix, align 8, !alias.scope !15672, !noalias !15360, !noundef !21 ; 4 uses
  %i.ajn = icmp ugt i64 %i.ajm, %i.ajl
  br i1 %i.ajn, label %bb.fq, label %.invoke2424.a

bb.fq:                                            ; preds = %bb.fp
  %i.ajo = load ptr, ptr %i.iw, align 8, !alias.scope !15672, !noalias !15360, !nonnull !21, !noundef !21 ; 2 uses
  %i.ajp = getelementptr inbounds nuw [80 x i8], ptr %i.ajo, i64 %i.ajl ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 24
  %i.ajr = load i8, ptr %i.ajq, align 8, !range !6627, !alias.scope !15673, !noalias !15676, !noundef !21
  switch i8 %i.ajr, label %default.unreachable [
    i8 0, label %bb.fs
    i8 1, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 2, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 3, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 4, label %bb.fs
    i8 5, label %bb.fs
    i8 6, label %bb.fs
    i8 7, label %bb.fs
    i8 8, label %bb.fs
    i8 9, label %bb.fs
    i8 10, label %bb.fr
    i8 11, label %bb.fs
    i8 12, label %bb.fs
    i8 13, label %bb.fs
    i8 14, label %bb.fs
    i8 15, label %bb.fs
    i8 16, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 17, label %bb.fs
    i8 18, label %bb.fs
    i8 19, label %bb.fs
    i8 20, label %bb.fs
    i8 21, label %bb.fs
    i8 22, label %bb.fs
    i8 23, label %bb.fs
    i8 24, label %bb.fs
    i8 25, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 26, label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
    i8 27, label %bb.fs
  ]

bb.fr:                                            ; preds = %bb.fq
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq
  %.sink.i.i358 = phi i64 [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 26, %bb.fr ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ], [ 25, %bb.fq ]
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %.sink.i.i358 ; 6 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i24 %.sroa.018.0.copyload.i to i8 ; 3 uses
  %.sroa.617.0.extract.shift.i.i.i = lshr i56 %.sroa.016.0.insert.ext.i, 8
  %.sroa.617.0.extract.trunc.i.i.i = trunc nuw i56 %.sroa.617.0.extract.shift.i.i.i to i16 ; 2 uses
  %.sroa.8.0.extract.trunc.i.i.i = trunc i32 %.sroa.06.0.copyload.i to i24
  %.sroa.9.0.extract.shift.i.i.i = lshr i32 %.sroa.06.0.copyload.i, 24
  %.sroa.9.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.9.0.extract.shift.i.i.i to i8
  %.not.i.i36.i = icmp eq i8 %.sroa.0.0.extract.trunc.i.i.i, 2
  br i1 %.not.i.i36.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.sroa.01.0.copyload.i.i.i.i.i = load i8, ptr %i.ajs, align 1, !alias.scope !15677, !noalias !15684 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %.not.i.i.i.i37.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i37.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, label %.cont.i.i38.i

.cont.i.i38.i:                                    ; preds = %bb.ft
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i, align 1, !alias.scope !15677, !noalias !15684
  %i.ajt = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i.i.i, %.sroa.9.0.extract.trunc.i.i.i
  %i.aju = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i.i.i, %.sroa.8.0.extract.trunc.i.i.i
  %or.cond.i.i.i.i.i359 = select i1 %i.ajt, i1 %i.aju, i1 false
  br i1 %or.cond.i.i.i.i.i359, label %.cont22.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

.cont22.i.i.i:                                    ; preds = %.cont.i.i38.i
  %i.ajv = trunc nuw i8 %.sroa.01.0.copyload.i.i.i.i.i to i1
  %i.ajw = trunc i24 %.sroa.018.0.copyload.i to i1 ; 2 uses
  br i1 %i.ajv, label %6, label %bb.fu

6:                                                ; preds = %.cont22.i.i.i
  br i1 %i.ajw, label %.split.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

bb.fu:                                            ; preds = %.cont22.i.i.i
  br i1 %i.ajw, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i

.split.i.i.i:                                     ; preds = %6
  %7 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i.i.i, %.sroa.617.0.extract.trunc.i.i.i
  br i1 %7, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i: ; preds = %.split.i.i.i, %bb.fu, %bb.ft
  store i8 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.ajs, align 1, !alias.scope !15687, !noalias !15676
  store i16 %.sroa.617.0.extract.trunc.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !15687, !noalias !15676
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ajs, i64 3
  store i32 %.sroa.06.0.copyload.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !15687, !noalias !15676
  br label %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i

_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i, %.split.i.i.i, %bb.fu, %6, %.cont.i.i38.i, %bb.fs
  %.sroa.0.1.i.i.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i.i.i ], [ 1, %bb.fu ], [ 1, %.split.i.i.i ], [ 2, %bb.fs ], [ %.sroa.0.0.extract.trunc.i.i.i, %.cont.i.i38.i ], [ 0, %6 ]
  %.sroa.617.0.insert.insert.i.i.i = and i56 %.sroa.016.3.insert.insert.i, -256
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.0.1.i.i.i to i56
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i56 %.sroa.617.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  br label %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i

_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i: ; preds = %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq, %bb.fq
  %.sroa.03.0.i.i = phi i56 [ %.sroa.0.0.insert.insert.i.i.i, %_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang.exit.i.i ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ], [ %.sroa.016.3.insert.insert.i, %bb.fq ] ; 2 uses
  %.sroa.019.0.extract.trunc.i = trunc i56 %.sroa.03.0.i.i to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !15362
  %.not27.i = icmp eq i8 %.sroa.019.0.extract.trunc.i, 2
  br i1 %.not27.i, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
  store i64 0, ptr %i.aw, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15362
  br label %bb.fw

bb.fw:                                            ; preds = %.noexc404.a, %bb.fv
  %.sroa.012.0.i = phi ptr [ %.sroa.0.0.i.i, %.noexc404.a ], [ null, %bb.fv ]
  %.sroa.513.0.i = phi i64 [ %.sroa.3.0.i.i, %.noexc404.a ], [ undef, %bb.fv ]
  store ptr %.sroa.012.0.i, ptr %i.mo, align 8, !noalias !15362
  store i64 %.sroa.513.0.i, ptr %.sroa.3.0..sroa_idx.i361, align 8, !noalias !15362
  store ptr null, ptr %.sroa.511.0..sroa_idx.i362, align 8, !noalias !15362
  store ptr null, ptr %.sroa.7.0..sroa_idx.i363, align 8, !noalias !15362
  store ptr null, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !15362
  store i32 1, ptr %i.av, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !15362
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface12start_tagged(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.av)
          to label %bb.fz unwind label %.loopexit483, !noalias !15688

.loopexit483:                                     ; preds = %bb.fw, %bb.ga
  %lpad.loopexit485 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit.split-lp484:                            ; preds = %bb.gb
  %lpad.loopexit.split-lp486 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fx:                                            ; preds = %.loopexit.split-lp484, %.loopexit483
  %lpad.phi487 = phi { ptr, i32 } [ %lpad.loopexit485, %.loopexit483 ], [ %lpad.loopexit.split-lp486, %.loopexit.split-lp484 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #44
          to label %.body399 unwind label %bb.gf, !noalias !15688

bb.fy:                                            ; preds = %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB4_6Groups14propagate_lang.exit.i
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library4text4langNtB4_6Locale8rfc_3066(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ml, i56 %.sroa.03.0.i.i)
          to label %.noexc404.a unwind label %.loopexit478

.noexc404.a:                                      ; preds = %bb.fy
  store i64 1, ptr %i.aw, align 8, !noalias !15362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !15362
  %i.ajx = load i8, ptr %i.mm, align 1, !alias.scope !15689, !noalias !15362, !noundef !21 ; 2 uses
  %.not.i40.i360 = icmp sgt i8 %i.ajx, -1         ; 2 uses
  %i.ajy = and i8 %i.ajx, 127
  %i.ajz = zext nneg i8 %i.ajy to i64
  %i.aka = load ptr, ptr %i.ml, align 8, !alias.scope !15689, !noalias !15362, !nonnull !21
  %i.akb = load i64, ptr %i.mn, align 8, !alias.scope !15689, !noalias !15362
  %.sroa.3.0.i.i = select i1 %.not.i40.i360, i64 %i.akb, i64 %i.ajz
  %.sroa.0.0.i.i = select i1 %.not.i40.i360, ptr %i.aka, ptr %i.ml
  br label %bb.fw

bb.fz:                                            ; preds = %bb.fw
  %i.akc = load i32, ptr %i.ajj, align 4, !noalias !15692, !noundef !21
  %i.akd = zext i32 %i.akc to i64                 ; 3 uses
  %i.ake = icmp ugt i64 %i.ajm, %i.akd
  br i1 %i.ake, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.akf = getelementptr inbounds nuw [80 x i8], ptr %i.ajo, i64 %i.akd
  invoke void @_RNvMs4_NtNtCs8jFhWeO2DFb_9typst_pdf4tags6groupsNtB5_5Group9push_text(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.akf, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(36) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.au)
          to label %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i unwind label %.loopexit483, !noalias !15688

bb.gb:                                            ; preds = %bb.fz
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.akd, i64 noundef %i.ajm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #42
          to label %.noexc42.i unwind label %.loopexit.split-lp484, !noalias !15688

.noexc42.i:                                       ; preds = %bb.gb
  unreachable

_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i: ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !15362
  call void @llvm.experimental.noalias.scope.decl(metadata !15697)
  %i.akg = load i64, ptr %i.aw, align 8, !range !176, !alias.scope !15697, !noalias !15362, !noundef !21
  %i.akh = icmp eq i64 %i.akg, 0
  br i1 %i.akh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.gc

bb.gc:                                            ; preds = %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !15700)
  %.val.i.i43.i = load ptr, ptr %i.ml, align 8, !alias.scope !15703, !noalias !15362 ; 4 uses
  %.val1.i.i.i364 = load i8, ptr %i.mm, align 1, !alias.scope !15703, !noalias !15362, !noundef !21
  %.not.i.i.i.i44.i = icmp sgt i8 %.val1.i.i.i364, -1
  br i1 %.not.i.i.i.i44.i, label %bb.gd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43.i) ]
  %.not.i.i.i.i.i.i.i365 = icmp eq ptr %.val.i.i43.i, inttoptr (i64 16 to ptr)
  %i.aki = getelementptr inbounds i8, ptr %.val.i.i43.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i365, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.gd
  %i.akj = atomicrmw sub ptr %i.aki, i64 1 release, align 8, !noalias !15704
  %.not.i.i.i.i.i.i366 = icmp eq i64 %i.akj, 1
  br i1 %.not.i.i.i.i.i.i366, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !15705
  %i.akk = getelementptr i8, ptr %.val.i.i43.i, i64 -8
  %.val.i.i.i.i.i.i45.i = load i64, ptr %i.akk, align 8, !noalias !15704, !noundef !21 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i45.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %bb.ge, !prof !85

bb.ge:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc405 unwind label %.loopexit.split-lp479

.noexc405:                                        ; preds = %bb.ge
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %i.akl = add nuw nsw i64 %.val.i.i.i.i.i.i45.i, 16
  store ptr %i.aki, ptr %i.mp, align 8, !noalias !15705
  store i64 8, ptr %i.i, align 8, !noalias !15705
  store i64 %i.akl, ptr %i.mq, align 8, !noalias !15705
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.noexc406 unwind label %.loopexit478

.noexc406:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !15705
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.noexc406, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.gd, %bb.gc, %_RNvMNtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB2_4Tags9push_text.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !15362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !15362
  br label %bb.gi

bb.gf:                                            ; preds = %bb.fx
  %i.akm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !15688
  unreachable

.body399:                                         ; preds = %.loopexit478, %.loopexit.split-lp479, %.body329, %bb.gh, %bb.fx, %bb.fo, %bb.fl, %bb.et, %.body.i.i.i
  %.pn48.i = phi { ptr, i32 } [ %lpad.phi487, %bb.fx ], [ %.pn46.i, %.body329 ], [ %i.aiv, %bb.fl ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.et ], [ %i.aiy, %bb.fo ], [ %.pn46.i, %bb.gh ], [ %lpad.loopexit480, %.loopexit478 ], [ %lpad.loopexit.split-lp481, %.loopexit.split-lp479 ] ; 2 uses
  %i.akn = load ptr, ptr %i.et, align 8, !alias.scope !15706, !noalias !15709, !noundef !21
  %i.ako = icmp eq ptr %i.akn, null
  br i1 %i.ako, label %.body, label %bb.gg

bb.gg:                                            ; preds = %.body399
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.et)
          to label %.body unwind label %bb.qg

.loopexit478:                                     ; preds = %bb.qe, %bb.cq, %.split.preheader.i.i.i, %.noexc384.a, %.noexc385.a, %.noexc386.a, %.noexc387.a, %.noexc388.a, %.noexc389.a, %.noexc390.a, %.noexc391.a, %.noexc392.a, %.noexc393.a, %.noexc394, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i32.i, %.noexc397, %bb.fy, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %lpad.loopexit480 = landingpad { ptr, i32 }
          cleanup
  br label %.body399

.loopexit.split-lp479:                            ; preds = %.invoke2424.a, %.invoke2422.a, %bb.qj, %bb.ge
  %lpad.loopexit.split-lp481 = landingpad { ptr, i32 }
          cleanup
  br label %.body399

.body329:                                         ; preds = %.loopexit502, %.loopexit.split-lp503, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit, %bb.oa, %.body.i, %bb.go
  %.pn46.i = phi { ptr, i32 } [ %.pn.i284, %.body.i ], [ %.pn44.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4FillECs8jFhWeO2DFb_9typst_pdf.exit ], [ %.pn.i284, %bb.go ], [ %.pn44.i, %bb.oa ], [ %lpad.loopexit504, %.loopexit502 ], [ %lpad.loopexit.split-lp505, %.loopexit.split-lp503 ] ; 2 uses
  br i1 %.sroa.4.0.i, label %bb.gh, label %.body399

bb.gh:                                            ; preds = %.body329
  invoke void @_RNvMNtCsidf7BFzONoc_6krilla7surfaceNtB2_7Surface10end_tagged(ptr noalias nofree noundef nonnull align 8 dereferenceable(976) %4)
          to label %.body399 unwind label %bb.qg

.loopexit502:                                     ; preds = %bb.qd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs8jFhWeO2DFb_9typst_pdf.exit9.sink.split.i
  %lpad.loopexit504 = landingpad { ptr, i32 }
          cleanup
  br label %.body329

.loopexit.split-lp503:                            ; preds = %bb.qi
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %.body329

bb.gi:                                            ; preds = %bb.cj, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i340, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.4.0.i = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ false, %bb.cj ], [ false, %_RNvXs0_NtNtCs8jFhWeO2DFb_9typst_pdf4tags4treeNtB5_15TraversalStatesNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref.exit.i.i340 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !15348
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.07.01146, i64 152 ; 2 uses
  %i.akq = load ptr, ptr %i.akp, align 8, !alias.scope !15345, !noalias !15710, !nonnull !21, !noundef !21
  %i.akr = atomicrmw add ptr %i.akq, i64 1 monotonic, align 8, !noalias !15709
  %i.aks = icmp slt i64 %i.akr, 0
  br i1 %i.aks, label %bb.nw, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.akt = load ptr, ptr %i.akp, align 8, !alias.scope !15345, !noalias !15710, !nonnull !21, !noundef !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  store ptr %i.akt, ptr %i.cg, align 8, !noalias !15714
  call void @llvm.experimental.noalias.scope.decl(metadata !15716), !noalias !15709
  %i.aku = load i64, ptr %i.ms, align 8, !alias.scope !15719, !noalias !15720, !noundef !21
  %i.akv = icmp eq i64 %i.aku, 0
  br i1 %i.akv, label %select.unfold.i297, label %bb.gk
end_hunk_5
begin_hunk_6_@_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !20682
  store i64 -1, ptr %i.al, align 8, !noalias !20682
  br i1 %.not1.i, label %.thread, label %switch.lookup151

bb.l:                                             ; preds = %bb.j, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit
  %.sroa.5.sroa.0.0.i37 = phi i64 [ %i.bx, %bb.j ], [ undef, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %.sroa.0.0.i38 = phi i64 [ 1, %bb.j ], [ 0, %_RNvMs_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB4_3Ctx4bbox.exit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.ca = load i8, ptr %i.bz, align 8, !range !22, !alias.scope !20690, !noalias !20693, !noundef !21
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.569.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.i, i64 32, i1 false), !noalias !21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.4.i)
  store i64 %.sroa.0.0.i38, ptr %i.am, align 8, !noalias !20682
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.5.sroa.0.0.i37, ptr %.sroa.468.0..sroa_idx, align 8, !noalias !20682
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 %i.ca, ptr %.sroa.670.0..sroa_idx, align 8, !noalias !20682
  br label %bb.k

.thread97.loopexit:                               ; preds = %.lr.ph149
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

.thread97.loopexit.split-lp.loopexit:             ; preds = %.lr.ph
  %lpad.loopexit123 = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

.thread97.loopexit.split-lp.loopexit.split-lp:    ; preds = %.noexc20, %bb.ad, %bb.w, %bb.u, %switch.lookup151
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.thread97

switch.lookup151:                                 ; preds = %bb.k
  %switch.gep152 = getelementptr inbounds i8, ptr @switch.table._RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node.1707, i64 %.val54.i
  %switch.load153 = load i8, ptr %switch.gep152, align 1 ; 2 uses
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit: ; preds = %switch.lookup151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20705)
  %i.cb = load i64, ptr %i.al, align 8, !range !1338, !alias.scope !20708, !noalias !20703, !noundef !21
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %bb.t, label %bb.m

bb.m:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20709)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.al)
          to label %bb.p unwind label %bb.n, !noalias !20703

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !range !1338, !alias.scope !20712, !noalias !20703, !noundef !21
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %.thread92, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ce)
          to label %.thread92 unwind label %bb.r, !noalias !20703

bb.p:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !1338, !alias.scope !20715, !noalias !20703, !noundef !21
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ch)
          to label %bb.t unwind label %bb.s, !noalias !20703

bb.r:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20718
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.thread92

.thread92:                                        ; preds = %bb.n, %bb.o, %bb.s
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cd, %bb.o ], [ %i.cd, %bb.n ]
  store i64 0, ptr %i.al, align 8, !alias.scope !20719
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !20719
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20719
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !20719
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load153, ptr %.sroa.856.0..sroa_idx, align 8, !alias.scope !20719
  br label %.thread97

bb.t:                                             ; preds = %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator4nest.exit, %bb.p, %bb.q
  store i64 0, ptr %i.al, align 8, !alias.scope !20719
  %.sroa.5.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx49, align 8, !alias.scope !20719
  store i64 0, ptr %.sroa.02.0.i.sroa.gep, align 8, !alias.scope !20719
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 -1, ptr %.sroa.7.0..sroa_idx53, align 8, !alias.scope !20719
  %.sroa.856.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i8 %switch.load153, ptr %.sroa.856.0..sroa_idx57, align 8, !alias.scope !20719
  %.pre = load i64, ptr %i.ao, align 8, !range !3975, !noalias !20682
  %i.cm = icmp eq i64 %.pre, -1
  br i1 %i.cm, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = invoke { ptr, i64 } @_RNvMsm_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagNtB5_7TagKind8alt_text(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ao)
          to label %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit: ; preds = %bb.u
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = icmp ne ptr %i.co, null
  %i.cq = zext i1 %i.cp to i8
  br label %.thread

.thread:                                          ; preds = %bb.k, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit, %bb.t
  %.sroa.02.0.i143 = phi ptr [ %i.al, %bb.t ], [ %i.al, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %3, %bb.k ] ; 3 uses
  %.sroa.02.0.i.sroa.phi142 = phi ptr [ %.sroa.02.0.i.sroa.gep, %bb.t ], [ %.sroa.02.0.i.sroa.gep, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ %.sroa.02.0.i.sroa.gep127, %bb.k ]
  %.sroa.03.0.i = phi i8 [ 0, %bb.t ], [ %i.cq, %_RNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve18resolve_group_nodes_0B7_.exit ], [ 0, %bb.k ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20720)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 2, !range !22, !alias.scope !20720, !noalias !20723, !noundef !21 ; 2 uses
  %i.ct = or i8 %i.cs, %.sroa.03.0.i
  store i8 %i.ct, ptr %i.cr, align 2, !alias.scope !20720, !noalias !20723
  %i.cu = load i8, ptr %i.an, align 8, !range !10080, !noalias !20725, !noundef !21
  %.not.i.i = icmp eq i8 %i.cu, -1
  %.sroa.06.0.i.i = select i1 %.not.i.i, ptr %1, ptr %i.an
  %i.cv = load i64, ptr %i.am, align 8, !range !1841, !noalias !20725, !noundef !21
  %.not10.i.i = icmp eq i64 %i.cv, 2
  %spec.select = select i1 %.not10.i.i, ptr %2, ptr %i.am ; 2 uses
  %.val16.i.i = load i8, ptr %i.be, align 8, !range !6627, !noalias !20725, !noundef !21
  %i.cw = icmp eq i8 %.val16.i.i, 1
  %i.cx = getelementptr i8, ptr %i.bd, i64 8      ; 2 uses
  br i1 %i.cw, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.thread
  %i.cy = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %.val15.i.i = load i64, ptr %i.cy, align 8, !noalias !20725, !noundef !21 ; 3 uses
  %i.cz = load i64, ptr %.sroa.02.0.i.sroa.phi142, align 8, !alias.scope !20729, !noundef !21 ; 2 uses
  %i.da = load i64, ptr %.sroa.02.0.i143, align 8, !range !98, !alias.scope !20729, !noundef !21
  %i.db = sub i64 %i.da, %i.cz
  %i.dc = icmp ugt i64 %.val15.i.i, %i.db
  br i1 %i.dc, label %bb.w, label %.noexc25.a, !prof !24

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.02.0.i143, i64 noundef %i.cz, i64 noundef %.val15.i.i, i64 noundef 8, i64 noundef 88)
          to label %..noexc25_crit_edge unwind label %.thread97.loopexit.split-lp.loopexit.split-lp

..noexc25_crit_edge:                              ; preds = %bb.w
  %.val13.i.i.pre = load i64, ptr %i.cy, align 8, !noalias !20725
  br label %.noexc25.a

.noexc25.a:                                       ; preds = %..noexc25_crit_edge, %bb.v
  %.val13.i.i = phi i64 [ %.val13.i.i.pre, %..noexc25_crit_edge ], [ %.val15.i.i, %bb.v ] ; 2 uses
  %.val12.i.i = load ptr, ptr %i.cx, align 8, !noalias !20725, !nonnull !21, !noundef !21 ; 2 uses
  %.idx = shl nuw nsw i64 %.val13.i.i, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 %.idx
  %i.de = icmp eq i64 %.val13.i.i, 0
  br i1 %i.de, label %.loopexit, label %.lr.ph

bb.x:                                             ; preds = %.thread
  %.val.i.i = load ptr, ptr %i.cx, align 8, !noalias !20725, !nonnull !21, !noundef !21 ; 2 uses
  %i.df = getelementptr i8, ptr %i.bd, i64 16
  %.val11.i.i = load i64, ptr %i.df, align 8, !noalias !20725, !noundef !21 ; 2 uses
  %.idx150 = shl nuw nsw i64 %.val11.i.i, 6
  %i.dg = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx150
  %i.dh = icmp eq i64 %.val11.i.i, 0
  br i1 %i.dh, label %.loopexit, label %.lr.ph149

.noexc26.a:                                       ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i147, i64 64 ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.dd
  br i1 %i.dj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc25.a, %.noexc26.a
  %.sroa.03.0.i.i147 = phi ptr [ %i.di, %.noexc26.a ], [ %.val12.i.i, %.noexc25.a ] ; 2 uses
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve12resolve_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef dereferenceable(7) %.sroa.06.0.i.i, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, ptr noalias nofree noundef align 8 dereferenceable(56) %.sroa.02.0.i143, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %.sroa.03.0.i.i147)
          to label %.noexc26.a unwind label %.thread97.loopexit.split-lp.loopexit, !inline_history !20734

.noexc27:                                         ; preds = %.lr.ph149
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i148, i64 64 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.dg
  br i1 %i.dl, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.x, %.noexc27
  %.sroa.01.0.i.i148 = phi ptr [ %i.dk, %.noexc27 ], [ %.val.i.i, %bb.x ] ; 3 uses
  %.sroa.01.0.val.i.i = load i64, ptr %.sroa.01.0.i.i148, align 8, !range !3932, !noalias !20725, !noundef !21
  %i.dm = getelementptr i8, ptr %.sroa.01.0.i.i148, i64 8
  %.sroa.01.0.val17.i.i = load i32, ptr %i.dm, align 8, !noalias !20725
  invoke fastcc void @_RNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve21resolve_artifact_node(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %spec.select, i64 %.sroa.01.0.val.i.i, i32 %.sroa.01.0.val17.i.i)
          to label %.noexc27 unwind label %.thread97.loopexit, !inline_history !20734

.loopexit:                                        ; preds = %.noexc26.a, %.noexc27, %.noexc25.a, %bb.x
  store i8 %i.cs, ptr %i.cr, align 2, !alias.scope !20720, !noalias !20723
  %.sroa.011.0.copyload.i = load i8, ptr %i.an, align 8, !noalias !20682 ; 5 uses
  %.not41.i = icmp eq i8 %.sroa.011.0.copyload.i, -1
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.512.sroa.0.0.copyload.i = load i48, ptr %.sroa.512.0..sroa_idx.i, align 1, !noalias !20682
  %i.dn = zext i48 %.sroa.512.sroa.0.0.copyload.i to i56
  %.sroa.034.1.insert.ext.i = select i1 %.not41.i, i56 0, i56 %i.dn ; 4 uses
  %.sroa.034.1.insert.shift.i = shl nuw i56 %.sroa.034.1.insert.ext.i, 8
  %.sroa.617.0.extract.trunc.i = trunc i56 %.sroa.034.1.insert.ext.i to i16 ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 16
  %.sroa.8.0.extract.trunc.i = trunc i56 %.sroa.8.0.extract.shift.i to i24 ; 2 uses
  %.sroa.9.0.extract.shift.i = lshr i56 %.sroa.034.1.insert.ext.i, 40
  %.sroa.9.0.extract.trunc.i = trunc nuw i56 %.sroa.9.0.extract.shift.i to i8 ; 2 uses
  switch i8 %.sroa.011.0.copyload.i, label %bb.y [
    i8 -1, label %bb.aa
    i8 2, label %bb.aa
  ]

bb.y:                                             ; preds = %.loopexit
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %1, align 1, !alias.scope !20735, !noalias !20742 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.sroa.5.sroa.0.0.copyload.i.i.i = load i16, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %.not.i.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %.cont.i

.cont.i:                                          ; preds = %bb.y
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.sroa.5.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 1, !alias.scope !20735, !noalias !20742
  %i.do = icmp eq i8 %.sroa.5.sroa.5.0.copyload.i.i.i, %.sroa.9.0.extract.trunc.i
  %i.dp = icmp eq i24 %.sroa.5.sroa.4.sroa.0.0.copyload.i.i.i, %.sroa.8.0.extract.trunc.i
  %or.cond.i.i.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i.i.i, label %.cont22.i, label %bb.aa

.cont22.i:                                        ; preds = %.cont.i
  %i.dq = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  %i.dr = trunc i8 %.sroa.011.0.copyload.i to i1  ; 2 uses
  br i1 %i.dq, label %5, label %bb.z

5:                                                ; preds = %.cont22.i
  br i1 %i.dr, label %.split.i, label %bb.aa

bb.z:                                             ; preds = %.cont22.i
  br i1 %i.dr, label %bb.aa, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i

.split.i:                                         ; preds = %5
  %6 = icmp eq i16 %.sroa.5.sroa.0.0.copyload.i.i.i, %.sroa.617.0.extract.trunc.i
  br i1 %6, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i, label %bb.aa

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i: ; preds = %.split.i, %bb.z, %bb.y
  store i8 %.sroa.011.0.copyload.i, ptr %1, align 1, !alias.scope !20745, !noalias !20746
  store i16 %.sroa.617.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !alias.scope !20745, !noalias !20746
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i24 %.sroa.8.0.extract.trunc.i, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20745, !noalias !20746
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %.sroa.9.0.extract.trunc.i, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i, align 1, !alias.scope !20745, !noalias !20746
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %.loopexit, %.cont.i, %5, %bb.z, %.split.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i
  %.sroa.0.1.i = phi i8 [ 2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionQNtNtNtCsdaEETE4DqmE_13typst_library4text4lang6LocaleE6map_orbNCNvNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util14propagate_lang0EB1Q_.exit.thread34.i ], [ 1, %bb.z ], [ 1, %.split.i ], [ 2, %.loopexit ], [ %.sroa.011.0.copyload.i, %.cont.i ], [ 0, %5 ], [ 2, %.loopexit ] ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i8 %.sroa.0.1.i to i56
  %.sroa.0.0.insert.insert.i = or disjoint i56 %.sroa.034.1.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ds = load i64, ptr %2, align 8, !range !1841, !noundef !21
  %.not42.i = icmp eq i64 %i.ds, 2
  %i.dt = load i64, ptr %i.am, align 8, !range !1841, !noalias !20682, !noundef !21 ; 2 uses
  %.not43.i = icmp eq i64 %i.dt, 2
  %i.du = or i1 %.not42.i, %.not43.i
  br i1 %i.du, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20747)
  call void @llvm.experimental.noalias.scope.decl(metadata !20750)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.dw = load i8, ptr %i.dv, align 8, !range !22, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 8, !range !22, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.dz = or i8 %i.dy, %i.dw                      ; 2 uses
  %.not9.i = icmp eq i8 %i.dz, 0
  store i8 %i.dz, ptr %i.dx, align 8, !alias.scope !20747, !noalias !20750
  %i.ea = trunc nuw i64 %i.dt to i1
  %or.cond.i18 = select i1 %.not9.i, i1 %i.ea, i1 false
  br i1 %or.cond.i18, label %bb.ac, label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !20750, !noalias !20747, !noundef !21 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ee = load double, ptr %i.ed, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.ef = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.eg = load double, ptr %i.ef, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.eh = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  %i.ej = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ek = load double, ptr %i.ej, align 8, !alias.scope !20750, !noalias !20747, !noundef !21
  call void @llvm.experimental.noalias.scope.decl(metadata !20752)
  %i.el = load i64, ptr %2, align 8, !range !176, !alias.scope !20755, !noalias !20757, !noundef !21
  %i.em = trunc nuw i64 %i.el to i1
  br i1 %i.em, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i: ; preds = %bb.ac
  store i64 1, ptr %2, align 8, !alias.scope !20755, !noalias !20757
  %.sroa.4.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ec, ptr %.sroa.4.0..sroa_idx.i.i19, align 8, !alias.scope !20758, !noalias !20750
  %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> splat (double +inf), ptr %.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20758, !noalias !20750
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> splat (double -inf), ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 8, !alias.scope !20758, !noalias !20750
  br label %bb.ad

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %i.en, align 8, !alias.scope !20747, !noalias !20750
  %i.eo = icmp eq i64 %.pre.i, %i.ec
  br i1 %i.eo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.thread.i
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.et = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3min(double noundef %i.eq, double noundef %i.es, double noundef %i.ee, double noundef %i.eg)
          to label %.noexc20 unwind label %.thread97.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc20:                                         ; preds = %bb.ad
  %i.eu = extractvalue { double, double } %i.et, 0
  %i.ev = extractvalue { double, double } %i.et, 1
  store double %i.eu, ptr %i.ep, align 8, !alias.scope !20747, !noalias !20750
  store double %i.ev, ptr %i.er, align 8, !alias.scope !20747, !noalias !20750
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !alias.scope !20747, !noalias !20750, !noundef !21
  %i.fa = invoke { double, double } @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5pointNtB2_5Point3max(double noundef %i.ex, double noundef %i.ez, double noundef %i.ei, double noundef %i.ek)
          to label %.noexc21 unwind label %.thread97.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.fb = extractvalue { double, double } %i.fa, 0
  %i.fc = extractvalue { double, double } %i.fa, 1
  store double %i.fb, ptr %i.ew, align 8, !alias.scope !20747, !noalias !20750
  store double %i.fc, ptr %i.ey, align 8, !alias.scope !20747, !noalias !20750
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

bb.ae:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTjNtNtNtCsdaEETE4DqmE_13typst_library6layout4rect4RectEE18get_or_insert_withNCNvB2_13get_or_insert0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  store i8 1, ptr %i.dx, align 8, !alias.scope !20747, !noalias !20750
  store i64 0, ptr %2, align 8, !alias.scope !20747, !noalias !20750
  br label %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit

_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit: ; preds = %bb.ae, %.noexc21, %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.765)
  %.sroa.074.0.copyload = load i64, ptr %i.ao, align 8, !noalias !20682 ; 3 uses
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20759
  store i64 %.sroa.074.0.copyload, ptr %i.b, align 8, !noalias !20764
  %.sroa.576.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx77, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx, i64 56, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fd, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  %.not.i13 = icmp eq i64 %.sroa.074.0.copyload, -1 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !range !1338, !noalias !20759
  %.not7.i = icmp eq i64 %i.fe, -1                ; 2 uses
  %or.cond.i = select i1 %.not.i13, i1 true, i1 %.not7.i
  br i1 %or.cond.i, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  br i1 %.not.i13, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  br i1 %.not7.i, label %bb.at, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %i.b), !noalias !20759
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.experimental.noalias.scope.decl(metadata !20765)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.fd)
          to label %bb.al unwind label %bb.aj, !noalias !20759

bb.aj:                                            ; preds = %bb.ai
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !range !1338, !alias.scope !20768, !noalias !20759, !noundef !21
  %i.fi = icmp eq i64 %i.fh, -1
  br i1 %i.fi, label %common.resume, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fg)
          to label %common.resume unwind label %bb.an, !noalias !20759

bb.al:                                            ; preds = %bb.ai
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !range !1338, !alias.scope !20771, !noalias !20759, !noundef !21
  %i.fl = icmp eq i64 %i.fk, -1
  br i1 %i.fl, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fj)
  br label %bb.at

bb.an:                                            ; preds = %bb.ak
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20774
  unreachable

bb.ao:                                            ; preds = %_RNvMs1_NtNtCs8jFhWeO2DFb_9typst_pdf4tags7contextNtB5_7BBoxCtx11expand_page.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.473)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.576.0..sroa_idx, i64 56, i1 false)
  %.sroa.473.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.473, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.473.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.al, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.765, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.473, i64 112, i1 false), !noalias !20775
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.473)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !20682
  store i64 %.sroa.074.0.copyload, ptr %i.ak, align 8, !noalias !20682
  %.sroa.765.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765.0..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765, i64 56, i1 false), !noalias !20682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20682
  %.sroa.765.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.765, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.765.64..sroa_idx, i64 56, i1 false), !noalias !20682
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !20682
  call void @llvm.experimental.noalias.scope.decl(metadata !20776)
  call void @llvm.experimental.noalias.scope.decl(metadata !20779)
  invoke fastcc void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator19flush_grouping_span(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj)
          to label %bb.aq unwind label %bb.ap, !noalias !20776

bb.ap:                                            ; preds = %bb.ao
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulator11AccumulatorEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.aj) #44
          to label %bb.cb unwind label %bb.as, !noalias !20776

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 24, i1 false), !alias.scope !20781
  %i.fo = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !range !1338, !alias.scope !20782, !noalias !20776, !noundef !21
  %i.fq = icmp eq i64 %i.fp, -1
  br i1 %i.fq, label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging4NodeEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.fo)
          to label %_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7resolve11accumulatorNtB2_11Accumulator6finish.exit unwind label %bb.au

bb.as:                                            ; preds = %bb.ap
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20781
  unreachable

bb.at:                                            ; preds = %bb.am, %bb.ag, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.765)
  br label %bb.ca

bb.au:                                            ; preds = %bb.ar, %bb.ax
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb
end_hunk_6

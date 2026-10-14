Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8traverseNCNvNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4tree5build19progress_tree_start0uEB1r_:bb.a

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit.lr.ph: ; preds = %bb.b
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1r_5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #44
          to label %bb.n unwind label %bb.m

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
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
  %.sroa.032.0.copyload = load i64, ptr %i.p, align 8, !noalias !1776 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.6.sroa.4.0.copyload = load ptr, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !1776 ; 9 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 55
  %.sroa.6.sroa.6.0.copyload = load i8, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 1, !noalias !1776 ; 3 uses
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
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1777
  %.not.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1777
  %i.v = getelementptr i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !1777, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.i, !prof !16

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
  store ptr %i.t, ptr %i.n, align 8, !noalias !1777
  store i64 8, ptr %i.b, align 8, !noalias !1777
  store i64 %i.w, ptr %i.o, align 8, !noalias !1777
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc16 unwind label %.loopexit

.noexc16:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1777
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
  %i.z = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !1778
  %.not.i.i.i.i.i20 = icmp eq i64 %i.z, 1
  br i1 %.not.i.i.i.i.i20, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21, label %.sink.split

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i19
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1778
  %i.aa = getelementptr i8, ptr %.sroa.6.sroa.4.0.copyload, i64 -8
  %.val.i.i.i.i.i.i22 = load i64, ptr %i.aa, align 8, !noalias !1778, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i23 = icmp ult i64 %.val.i.i.i.i.i.i22, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i23, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24, label %.invoke, !prof !16

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i21
  %i.ab = add nuw nsw i64 %.val.i.i.i.i.i.i22, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.y, ptr %i.ac, align 8, !noalias !1778
  store i64 8, ptr %i.a, align 8, !noalias !1778
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !noalias !1778
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc26 unwind label %.loopexit.split-lp

.noexc26:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1778
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  %i.af = load i32, ptr %1, align 8, !range !14, !alias.scope !2266, !noalias !2267, !noundef !10
  %i.ag = trunc nuw i32 %i.af to i1               ; 2 uses
  %.sroa.5.0.i274.ph.sroa.gep640 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5.0.i274.ph.sroa.gep643 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !2266, !noalias !2267, !nonnull !10, !noundef !10 ; 2 uses
  %i.aj = atomicrmw add ptr %i.ai, i64 1 monotonic, align 8, !noalias !2268
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.al, align 4, !alias.scope !2266, !noalias !2267
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.pre.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2266, !noalias !2267
  br label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.am = phi ptr [ %.sroa.6.0.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.ai, %bb.b ] ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ undef, %bb.b ]
  %i.an = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  %.sroa.7.0.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load <2 x double>, ptr %.sroa.7.0.in.i.i.i.i.i.i.i, align 8, !alias.scope !2266, !noalias !2267
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2269)
  %i.ap = load i32, ptr %i.ae, align 8, !range !14, !alias.scope !2270, !noalias !2267, !noundef !10
  %i.aq = trunc nuw i32 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.01.0.copyload.i.i.i.1.i.i.i.i = load i32, ptr %i.ar, align 4, !alias.scope !2270, !noalias !2267
  %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.pre.i.i.i.1.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i, align 8, !alias.scope !2270, !noalias !2267
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !2270, !noalias !2267, !nonnull !10, !noundef !10 ; 2 uses
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !2271
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.6.0.i.i.i.1.i.i.i.i = phi ptr [ %.sroa.6.0.pre.i.i.i.1.i.i.i.i, %bb.f ], [ %i.at, %bb.g ]
  %.sroa.5.0.i.i.i.1.i.i.i.i = phi i32 [ %.sroa.01.0.copyload.i.i.i.1.i.i.i.i, %bb.f ], [ undef, %bb.g ]
  %.sroa.0.0.i.i.i.1.i.i.i.i = phi i32 [ 0, %bb.f ], [ 1, %bb.g ]
  %.sroa.7.0.in.i.i.i.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.ac, align 8, !alias.scope !2272
  %.sroa.4.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx351, align 8, !alias.scope !2272
  %.sroa.5.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i32 %i.an, ptr %.sroa.5.0..sroa_idx352, align 8, !alias.scope !2272
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  store i32 %.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx352.sroa_idx, align 4, !alias.scope !2272
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.am, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !2272
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store <2 x double> %i.ao, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !2272
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i32 %.sroa.0.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !2272
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  store i32 %.sroa.5.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx352.sroa_idx, align 4, !alias.scope !2272
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %.sroa.6.0.i.i.i.1.i.i.i.i, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !2272
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx352.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.aw = load <2 x double>, ptr %.sroa.7.0.in.i.i.i.1.i.i.i.i, align 8, !alias.scope !2270, !noalias !2267
  store <2 x double> %i.aw, ptr %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx352.sroa_idx, align 8, !alias.scope !2272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2276
  %i.ax = load i64, ptr %2, align 8, !range !2277, !alias.scope !2274, !noalias !2278, !noundef !10
  %.not.i = icmp eq i64 %i.ax, -2
  br i1 %.not.i, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !alias.scope !2279, !noalias !2275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2276
  br i1 %i.ag, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2280
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i unwind label %.lr.ph.i.i.i.i.i.i.i.i.i, !noalias !2279

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.bc = load i32, ptr %i.bb, align 8, !range !14, !alias.scope !2283, !noalias !2279, !noundef !10
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.loopexit439, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !2287, !noalias !2279, !nonnull !10, !noundef !10
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !2288
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.m, label %.loopexit439

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #38
          to label %.loopexit439 unwind label %.thread713, !noalias !2279

.thread713:                                       ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit438

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.k
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %i.bl = load i32, ptr %i.bk, align 8, !range !14, !alias.scope !2291, !noalias !2279, !noundef !10
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit438, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !2295, !noalias !2279, !nonnull !10, !noundef !10
  %i.bp = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !2296
  %i.bq = icmp eq i64 %i.bp, 1
  br i1 %i.bq, label %bb.o, label %.loopexit438

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn) #38
          to label %.loopexit438 unwind label %bb.p, !noalias !2279

bb.p:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !2279
  unreachable

bb.q:                                             ; preds = %bb.h
  store i64 0, ptr %i.i, align 8, !noalias !2276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.ac, i64 80, i1 false), !noalias !2279
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !2297, !noalias !2298, !noundef !10 ; 2 uses
  %i.bu = load i64, ptr %i.h, align 8, !alias.scope !2297, !noalias !2298, !noundef !10 ; 4 uses
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
end_hunk_0
begin_hunk_1_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2385)
  %i.gu = load i32, ptr %i.z, align 8, !range !14, !alias.scope !2385, !noundef !10
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266
  %i.gw = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !2389, !nonnull !10, !noundef !10
  %i.gy = atomicrmw sub ptr %i.gx, i64 1 release, align 8, !noalias !2389
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
  %i.hb = load i32, ptr %i.w, align 8, !range !32, !noundef !10 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 2
  br i1 %i.hc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !10, !noundef !10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noundef !10
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  %i.hk = load i32, ptr %i.x, align 8, !range !14, !alias.scope !2390, !noundef !10
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  call void @llvm.experimental.noalias.scope.decl(metadata !2392)
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  %i.hm = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2394, !nonnull !10, !noundef !10
  %i.hn = atomicrmw sub ptr %i.hm, i64 1 release, align 8, !noalias !2394
  %i.ho = icmp eq i64 %i.hn, 1
  br i1 %i.ho, label %bb.ch, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.ch:                                            ; preds = %bb.cg
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  %i.hp = load i32, ptr %i.x, align 8, !range !14, !alias.scope !2395, !noundef !10
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit268, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.hr = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2399, !nonnull !10, !noundef !10
  %i.hs = atomicrmw sub ptr %i.hr, i64 1 release, align 8, !noalias !2399
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
  %i.hu = load i32, ptr %i.t, align 8, !range !32, !noundef !10 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 2
  br i1 %i.hv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.hw = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !nonnull !10, !noundef !10
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !noundef !10
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
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  %i.id = load i32, ptr %i.u, align 8, !range !14, !alias.scope !2400, !noundef !10
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !2401)
  call void @llvm.experimental.noalias.scope.decl(metadata !2402)
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  %i.if = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2404, !nonnull !10, !noundef !10
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !2404
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.cr:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  %i.ii = load i32, ptr %i.u, align 8, !range !14, !alias.scope !2405, !noundef !10
  %i.ij = icmp eq i32 %i.ii, 0
  br i1 %i.ij, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit272, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.ik = load ptr, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !2409, !nonnull !10, !noundef !10
  %i.il = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !2409
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
  %i.ir = load float, ptr %i.y, align 16, !noundef !10 ; 2 uses
  %i.is = load float, ptr %i.v, align 16, !noundef !10 ; 2 uses
  %3 = load <4 x float>, ptr %i.y, align 16
  %i.it = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %4 = load <4 x float>, ptr %i.v, align 16
  %i.iu = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iv = load float, ptr %.sroa.5.0.i274.ph.sroa.gep640, align 8, !noundef !10 ; 2 uses
  %i.iw = load float, ptr %.sroa.5.0.i274.ph.sroa.gep643, align 8, !noundef !10 ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.iv, i64 1
  %i.iz = insertelement <2 x float> poison, float %i.in, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jb = fmul <2 x float> %i.iy, %i.ja
  %i.jc = insertelement <2 x float> poison, float %i.is, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.iw, i64 1
  %i.je = insertelement <2 x float> poison, float %i.io, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jg = fmul <2 x float> %i.jd, %i.jf
  %i.jh = fadd <2 x float> %i.jb, %i.jg
  %i.ji = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fdiv <2 x float> %i.jh, %i.jj           ; 2 uses
  %bc = bitcast <2 x float> %i.jk to <2 x i32>
  %i.jl = extractelement <2 x i32> %bc, i64 0
  store i32 %i.jl, ptr %.sroa.0, align 4
  %i.jm = extractelement <2 x float> %i.jk, i64 1
  store float %i.jm, ptr %.sroa.22, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.jo = load float, ptr %i.jn, align 4, !noundef !10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.jq = load float, ptr %i.jp, align 4, !noundef !10
  %i.jr = insertelement <2 x float> %i.it, float %i.jo, i64 1
  %i.js = fmul <2 x float> %i.jr, %i.ja
  %i.jt = insertelement <2 x float> %i.iu, float %i.jq, i64 1
  %i.ju = fmul <2 x float> %i.jt, %i.jf
  %i.jv = fadd <2 x float> %i.js, %i.ju
  %i.jw = fdiv <2 x float> %i.jv, %i.jj
  %.val = load i64, ptr %i.ad, align 8, !range !30, !noundef !10
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
  %i.jx = phi float [ %i.is, %bb.cw ], [ %i.iw, %bb.cv ] ; 4 uses
  %i.jy = phi float [ %i.ir, %bb.cw ], [ %i.iv, %bb.cv ] ; 4 uses
  %.sroa.5.0.i274.ph.sroa.phi = phi ptr [ %.sroa.0, %bb.cw ], [ %.sroa.22, %bb.cv ]
  %i.jz = fsub float %i.jy, %i.jx
  %i.ka = call float @llvm.fabs.f32(float %i.jz)
  %i.kb = fcmp ogt float %i.ka, 1.800000e+02
  br i1 %i.kb, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.kc = fcmp olt float %i.jy, %i.jx             ; 2 uses
  %i.kd = fadd float %i.jy, 3.600000e+02
  %i.ke = fadd float %i.jx, 3.600000e+02
  %.sroa.038.0 = select i1 %i.kc, float %i.kd, float %i.jy
  %.sroa.034.0 = select i1 %i.kc, float %i.jx, float %i.ke
  %i.kf = fmul float %.sroa.038.0, %i.in
  %i.kg = fmul float %.sroa.034.0, %i.io
  %i.kh = fadd float %i.kf, %i.kg
  %i.ki = fdiv float %i.kh, %i.ip
  store float %i.ki, ptr %.sroa.5.0.i274.ph.sroa.phi, align 4
  br label %bb.cz

bb.cz:                                            ; preds = %.preheader.preheader, %bb.cv, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  %i.kj = load i32, ptr %i.z, align 8, !range !14, !alias.scope !2410, !noundef !10
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kl = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  call void @llvm.experimental.noalias.scope.decl(metadata !2413)
  %i.km = load ptr, ptr %i.kl, align 8, !alias.scope !2414, !nonnull !10, !noundef !10
  %i.kn = atomicrmw sub ptr %i.km, i64 1 release, align 8, !noalias !2414
  %i.ko = icmp eq i64 %i.kn, 1
  br i1 %i.ko, label %bb.db, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278

bb.db:                                            ; preds = %bb.da
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kl) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278: ; preds = %bb.da, %bb.cz, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  %i.kp = load i32, ptr %i.aa, align 8, !range !14, !alias.scope !2415, !noundef !10
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278
  %i.kr = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  call void @llvm.experimental.noalias.scope.decl(metadata !2418)
  %i.ks = load ptr, ptr %i.kr, align 8, !alias.scope !2419, !nonnull !10, !noundef !10
  %i.kt = atomicrmw sub ptr %i.ks, i64 1 release, align 8, !noalias !2419
  %i.ku = icmp eq i64 %i.kt, 1
  br i1 %i.ku, label %bb.dd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.kr) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 unwind label %bb.bq

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280: ; preds = %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit278, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.de

bb.de:                                            ; preds = %bb.eg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280
  %.sroa.0125.2 = phi i8 [ 0, %bb.eg ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 2 uses
  %i.kv = phi <2 x float> [ %i.oj, %bb.eg ], [ %i.jw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit280 ] ; 15 uses
  %i.kw = load i64, ptr %i.ad, align 8, !range !30, !noundef !10
  %.not230 = icmp eq i64 %i.kw, -1                ; 3 uses
  br i1 %.not230, label %bb.el, label %bb.eh

bb.df:                                            ; preds = %bb.cu
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #44
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit266 unwind label %bb.di

bb.dg:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ky = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.s)
          to label %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.cb ; 2 uses

_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.dg
  %i.kz = extractvalue { ptr, i64 } %i.ky, 0
  %i.la = extractvalue { ptr, i64 } %i.ky, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kz, ptr %i.lb, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.la, ptr %i.lc, align 8
  store i32 2, ptr %0, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dj

bb.di:                                            ; preds = %bb.fr, %bb.fi, %bb.cq, %bb.ch, %bb.ca, %bb.bw, %.loopexit438, %bb.gj, %.thread, %bb.ff, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, %bb.df
  %i.ld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.dj:                                            ; preds = %bb.dh, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !2420)
  %i.le = load i32, ptr %i.z, align 8, !range !14, !alias.scope !2420, !noundef !10
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.lg = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  call void @llvm.experimental.noalias.scope.decl(metadata !2423)
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !2424, !nonnull !10, !noundef !10
  %i.li = atomicrmw sub ptr %i.lh, i64 1 release, align 8, !noalias !2424
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283

bb.dl:                                            ; preds = %bb.dk
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.lg) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283 unwind label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283: ; preds = %bb.dk, %bb.dj, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  %i.lk = load i32, ptr %i.aa, align 8, !range !14, !alias.scope !2425, !noundef !10
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit283
  %i.lm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  call void @llvm.experimental.noalias.scope.decl(metadata !2428)
end_hunk_1
begin_hunk_2_@_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %i.px = load ptr, ptr %i.pw, align 8, !alias.scope !2484, !nonnull !10, !noundef !10
  %i.py = atomicrmw sub ptr %i.px, i64 1 release, align 8, !noalias !2485
  %i.pz = icmp eq i64 %i.py, 1
  br i1 %i.pz, label %bb.fa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i310

bb.fa:                                            ; preds = %bb.ez
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.pw) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i310 unwind label %bb.fb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i310: ; preds = %bb.fa, %bb.ez, %bb.ey
  %i.qa = icmp eq i64 %i.pt, %i.pq
  br i1 %i.qa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit317, label %bb.ey

bb.fb:                                            ; preds = %bb.fa
  %i.qb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qc = icmp eq i64 %i.pt, %i.pq
  br i1 %i.qc, label %.body286, label %.lr.ph.i.i.i.i.i.i.i311

.lr.ph.i.i.i.i.i.i.i311:                          ; preds = %bb.fb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313
  %.sroa.0.110.i.i.i.i.i.i.i312 = phi i64 [ %i.qe, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 ], [ %i.pt, %bb.fb ] ; 2 uses
  %i.qd = getelementptr inbounds nuw [32 x i8], ptr %i.pr, i64 %.sroa.0.110.i.i.i.i.i.i.i312 ; 2 uses
  %i.qe = add i64 %.sroa.0.110.i.i.i.i.i.i.i312, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  %i.qf = load i32, ptr %i.qd, align 8, !range !14, !alias.scope !2488, !noundef !10
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i311
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  call void @llvm.experimental.noalias.scope.decl(metadata !2490)
  call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !2492, !nonnull !10, !noundef !10
  %i.qj = atomicrmw sub ptr %i.qi, i64 1 release, align 8, !noalias !2493
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %bb.fd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313

bb.fd:                                            ; preds = %bb.fc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.qh) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313 unwind label %bb.fe

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i313: ; preds = %bb.fd, %bb.fc, %.lr.ph.i.i.i.i.i.i.i311
  %i.ql = icmp eq i64 %i.qe, %i.pq
  br i1 %i.ql, label %.body286, label %.lr.ph.i.i.i.i.i.i.i311

bb.fe:                                            ; preds = %bb.fd
  %i.qm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit, %bb.gf, %bb.gg, %bb.gh, %bb.gi, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.ff:                                            ; preds = %bb.ef
  %i.qn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #44
          to label %.body286 unwind label %bb.di

bb.fg:                                            ; preds = %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.qo = invoke { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l)
          to label %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit320 unwind label %bb.bq ; 2 uses

_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit320: ; preds = %bb.fg
  %i.qp = extractvalue { ptr, i64 } %i.qo, 0
  %i.qq = extractvalue { ptr, i64 } %i.qo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qp, ptr %i.qr, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.qq, ptr %i.qs, align 8
  store i32 2, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326: ; preds = %bb.fq, %bb.fp, %bb.fr, %bb.fj
  %.pn = phi { ptr, i32 } [ %i.qy, %bb.fj ], [ %i.rk, %bb.fr ], [ %i.rk, %bb.fp ], [ %i.rk, %bb.fq ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  %i.qt = load i32, ptr %i.p, align 8, !range !14, !alias.scope !2494, !noundef !10
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322, label %bb.fh

bb.fh:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326
  call void @llvm.experimental.noalias.scope.decl(metadata !2495)
  call void @llvm.experimental.noalias.scope.decl(metadata !2496)
  call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.qv = load ptr, ptr %i.mt, align 8, !alias.scope !2498, !nonnull !10, !noundef !10
  %i.qw = atomicrmw sub ptr %i.qv, i64 1 release, align 8, !noalias !2498
  %i.qx = icmp eq i64 %i.qw, 1
  br i1 %i.qx, label %bb.fi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322

bb.fi:                                            ; preds = %bb.fh
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mt) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit322 unwind label %bb.di

bb.fj:                                            ; preds = %bb.fu, %.lr.ph883
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326

bb.fk:                                            ; preds = %.lr.ph883
  %i.qz = load i32, ptr %i.m, align 8, !range !32, !noundef !10 ; 2 uses
  %i.ra = icmp eq i32 %i.qz, 2
  br i1 %i.ra, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %bb.fk
  %i.rb = load ptr, ptr %.sroa.5180.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.rc = load i64, ptr %.sroa.6181.0..sroa_idx, align 8, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rb, ptr %i.rd, align 8
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.rc, ptr %i.re, align 8
  store i32 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  %i.rf = load i32, ptr %i.p, align 8, !range !14, !alias.scope !2499, !noundef !10
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  call void @llvm.experimental.noalias.scope.decl(metadata !2501)
  call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %i.rh = load ptr, ptr %i.mt, align 8, !alias.scope !2503, !nonnull !10, !noundef !10
  %i.ri = atomicrmw sub ptr %i.rh, i64 1 release, align 8, !noalias !2503
  %i.rj = icmp eq i64 %i.ri, 1
  br i1 %i.rj, label %bb.fn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324

bb.fn:                                            ; preds = %bb.fm
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mt) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324 unwind label %.loopexit.split-lp

bb.fo:                                            ; preds = %bb.fk
  %.sroa.4179.0.copyload = load i32, ptr %.sroa.4179.0..sroa_idx, align 4
  %.sroa.5180.0.copyload = load ptr, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0.copyload = load i64, ptr %.sroa.6181.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 %i.qz, ptr %i.n, align 8
  store i32 %.sroa.4179.0.copyload, ptr %.sroa.451.0..sroa_idx, align 4
  store ptr %.sroa.5180.0.copyload, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 %.sroa.6181.0.copyload, ptr %.sroa.653.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB2_5Color7to_vec4(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.fs unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2504)
  %i.rl = load i32, ptr %i.n, align 8, !range !14, !alias.scope !2504, !noundef !10
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.experimental.noalias.scope.decl(metadata !2505)
  call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.rn = load ptr, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !2508, !nonnull !10, !noundef !10
  %i.ro = atomicrmw sub ptr %i.rn, i64 1 release, align 8, !noalias !2508
  %i.rp = icmp eq i64 %i.ro, 1
  br i1 %i.rp, label %bb.fr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326

bb.fr:                                            ; preds = %bb.fq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit326 unwind label %bb.di

bb.fs:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %i.rq = load i32, ptr %i.n, align 8, !range !14, !alias.scope !2509, !noundef !10
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.experimental.noalias.scope.decl(metadata !2510)
  call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.experimental.noalias.scope.decl(metadata !2512)
  %i.rs = load ptr, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !2513, !nonnull !10, !noundef !10
  %i.rt = atomicrmw sub ptr %i.rs, i64 1 release, align 8, !noalias !2513
  %i.ru = icmp eq i64 %i.rt, 1
  br i1 %i.ru, label %bb.fu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328

bb.fu:                                            ; preds = %bb.ft
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.552.0..sroa_idx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328 unwind label %bb.fj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328: ; preds = %bb.ft, %bb.fs, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %5 = load <4 x float>, ptr %i.o, align 16       ; 2 uses
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.rv = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rw = load float, ptr %i.mr, align 8, !noundef !10
  %i.rx = insertelement <2 x float> %6, float %i.rw, i64 1
  %i.ry = insertelement <2 x float> poison, float %i.nb, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sa = fmul <2 x float> %i.rx, %i.rz
  %i.sb = fadd <2 x float> %i.na, %i.sa           ; 3 uses
  %i.sc = load float, ptr %i.ms, align 4, !noundef !10
  %i.sd = insertelement <2 x float> %i.rv, float %i.sc, i64 1
  %i.se = fmul <2 x float> %i.sd, %i.rz
  %i.sf = fadd <2 x float> %i.mz, %i.se           ; 3 uses
  %i.sg = fadd float %.sroa.0366.0509881, %i.nb   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2514)
  %i.sh = load i32, ptr %i.p, align 8, !range !14, !alias.scope !2514, !noundef !10
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330, label %bb.fv

bb.fv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328
  call void @llvm.experimental.noalias.scope.decl(metadata !2515)
  call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  %i.sj = load ptr, ptr %i.mt, align 8, !alias.scope !2518, !nonnull !10, !noundef !10
  %i.sk = atomicrmw sub ptr %i.sj, i64 1 release, align 8, !noalias !2518
  %i.sl = icmp eq i64 %i.sk, 1
  br i1 %i.sl, label %bb.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330

bb.fw:                                            ; preds = %bb.fv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.mt) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit330: ; preds = %bb.fv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit328, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.sm = load i64, ptr %i.gh, align 8, !alias.scope !2368, !noalias !2519, !noundef !10 ; 2 uses
  %i.sn = load i64, ptr %i.q, align 8, !alias.scope !2368, !noalias !2519, !noundef !10 ; 3 uses
  %.not.i.i288 = icmp eq i64 %i.sm, %i.sn
  br i1 %.not.i.i288, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit299, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs8jFhWeO2DFb_9typst_pdf.exit289

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324: ; preds = %bb.fm, %bb.fl, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.so = load i64, ptr %i.q, align 8, !alias.scope !2520, !noundef !10 ; 3 uses
  %i.sp = load i64, ptr %i.gh, align 8, !alias.scope !2520, !noundef !10 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, %i.so
  br i1 %i.sq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit340, label %bb.fx

bb.fx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324
  %i.sr = sub nuw i64 %i.sp, %i.so                ; 3 uses
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %i.so ; 2 uses
  br label %bb.fy

bb.fy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332, %bb.fx
  %.sroa.0.09.i.i.i.i.i.i.i331 = phi i64 [ 0, %bb.fx ], [ %i.su, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332 ] ; 2 uses
  %i.st = getelementptr inbounds nuw [32 x i8], ptr %i.ss, i64 %.sroa.0.09.i.i.i.i.i.i.i331 ; 2 uses
  %i.su = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i331, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %i.sv = load i32, ptr %i.st, align 8, !range !14, !alias.scope !2523, !noundef !10
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.sx = getelementptr inbounds nuw i8, ptr %i.st, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !2527, !nonnull !10, !noundef !10
  %i.sz = atomicrmw sub ptr %i.sy, i64 1 release, align 8, !noalias !2528
  %i.ta = icmp eq i64 %i.sz, 1
  br i1 %i.ta, label %bb.ga, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.sx) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332 unwind label %bb.gb

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332: ; preds = %bb.ga, %bb.fz, %bb.fy
  %i.tb = icmp eq i64 %i.su, %i.sr
  br i1 %i.tb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit340, label %bb.fy

bb.gb:                                            ; preds = %bb.ga
  %i.tc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.td = icmp eq i64 %i.su, %i.sr
  br i1 %i.td, label %.body286, label %.lr.ph.i.i.i.i.i.i.i333

.lr.ph.i.i.i.i.i.i.i333:                          ; preds = %bb.gb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335
  %.sroa.0.110.i.i.i.i.i.i.i334 = phi i64 [ %i.tf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 ], [ %i.su, %bb.gb ] ; 2 uses
  %i.te = getelementptr inbounds nuw [32 x i8], ptr %i.ss, i64 %.sroa.0.110.i.i.i.i.i.i.i334 ; 2 uses
  %i.tf = add i64 %.sroa.0.110.i.i.i.i.i.i.i334, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.tg = load i32, ptr %i.te, align 8, !range !14, !alias.scope !2531, !noundef !10
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i333
  %i.ti = getelementptr inbounds nuw i8, ptr %i.te, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2532)
  call void @llvm.experimental.noalias.scope.decl(metadata !2533)
  call void @llvm.experimental.noalias.scope.decl(metadata !2534)
  %i.tj = load ptr, ptr %i.ti, align 8, !alias.scope !2535, !nonnull !10, !noundef !10
  %i.tk = atomicrmw sub ptr %i.tj, i64 1 release, align 8, !noalias !2536
  %i.tl = icmp eq i64 %i.tk, 1
  br i1 %i.tl, label %bb.gd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335

bb.gd:                                            ; preds = %bb.gc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ti) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335 unwind label %bb.ge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit8.i.i.i.i.i.i.i335: ; preds = %bb.gd, %bb.gc, %.lr.ph.i.i.i.i.i.i.i333
  %i.tm = icmp eq i64 %i.tf, %i.sr
  br i1 %i.tm, label %.body286, label %.lr.ph.i.i.i.i.i.i.i333

bb.ge:                                            ; preds = %bb.gd
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit340: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i332, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i, %_RNvXs9_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedStringINtNtCs3oUPovFnLWP_4core7convert4FromNtNtCsakL8LGkl72C_4ecow6string9EcoStringE4fromCs8jFhWeO2DFb_9typst_pdf.exit320, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit340, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !2537)
  %i.to = load i64, ptr %i.ad, align 8, !range !30, !alias.scope !2537, !noundef !10 ; 3 uses
  %i.tp = icmp eq i64 %i.to, -1
  br i1 %i.tp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.gf

bb.gf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  call void @llvm.experimental.noalias.scope.decl(metadata !2539)
  %i.tq = icmp eq i64 %i.to, 2
  br i1 %i.tq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.experimental.noalias.scope.decl(metadata !2540)
  %i.tr = icmp eq i64 %i.to, 0
  br i1 %i.tr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %.val.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !2542 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  %.val1.i.i.i.i.i = load i8, ptr %i.ts, align 1, !alias.scope !2542, !noundef !10
  %.not.i.i.i.i.i.i.i341 = icmp sgt i8 %.val1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i341, label %bb.gi, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  %i.tt = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342: ; preds = %bb.gi
  %i.tu = atomicrmw sub ptr %i.tt, i64 1 release, align 8, !noalias !2542
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.tu, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i342
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2542
  %i.tv = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i344 = load i64, ptr %i.tv, align 8, !noalias !2542, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i345 = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i344, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i345, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i346, label %.noexc347, !prof !16

.noexc347:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i346: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i.i.i343
  %i.tw = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i344, 16
  %i.tx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.tt, ptr %i.tx, align 8, !noalias !2542
  store i64 8, ptr %i.a, align 8, !noalias !2542
  %i.ty = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.tw, ptr %i.ty, align 8, !noalias !2542
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2542
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECs8jFhWeO2DFb_9typst_pdf.exit

.thread:                                          ; preds = %bb.bv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264, %bb.bw, %.body
  %.pn235396 = phi { ptr, i32 } [ %.pn235, %.body ], [ %.pn233, %bb.bw ], [ %.pn233, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 ], [ %.pn233, %bb.bv ]
  %.sroa.0129.2395 = phi i1 [ %.sroa.0129.2, %.body ], [ true, %bb.bw ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit264 ], [ true, %bb.bv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorKj2_EECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ab) #44
          to label %.body286 unwind label %bb.di

bb.gj:                                            ; preds = %.body286
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ad) #44
          to label %.thread427 unwind label %bb.di

.thread427:                                       ; preds = %.body286, %bb.gj, %.loopexit438
  %.pn239430 = phi { ptr, i32 } [ %eh.lpad-body251, %.loopexit438 ], [ %.pn237, %.body286 ], [ %.pn237, %bb.gj ]
  resume { ptr, i32 } %.pn239430

.loopexit438:                                     ; preds = %.thread713, %bb.o, %bb.n, %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %.thread.i, %bb.an
  %eh.lpad-body251 = phi { ptr, i32 } [ %.pn42.pn114.i, %.thread.i ], [ %i.bi, %.thread713 ], [ %.pn42.i, %bb.an ], [ %.pn42.pn114.i, %bb.bp ], [ %.pn42.pn114.i, %bb.bo ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bj, %bb.n ], [ %i.bj, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtNtCsdaEETE4DqmE_13typst_library9visualize5color13WeightedColorj2_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %1) #44
          to label %.thread427 unwind label %bb.di
end_hunk_2
begin_hunk_3_@_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5tableNtB2_8TableCtx6insert:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = add i64 %indvars.iv.i, %i.el            ; 3 uses
  %.not20.i = icmp ult i64 %i.ep, %i.dz
  br i1 %.not20.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw [136 x i8], ptr %i.ec, i64 %i.ep ; 6 uses
  %i.er = load i8, ptr %i.eq, align 8, !range !39, !alias.scope !11280, !noalias !11278, !noundef !10
  %i.es = icmp samesign ult i8 %i.er, 3
  br i1 %i.es, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBG_5table13TableCellDataEEBK_.exit25.i

bb.au:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid7CtxCellNtNtBG_5table13TableCellDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.eq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBG_5table13TableCellDataEEBK_.exit25.i unwind label %.thread32.i, !noalias !11278

bb.av:                                            ; preds = %bb.as
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef %i.dz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #39
          to label %bb.am unwind label %bb.aw, !noalias !11278

.thread32.i:                                      ; preds = %bb.au
  %i.et = landingpad { ptr, i32 }
          cleanup
  store i8 3, ptr %i.eq, align 8, !noalias !11278
  %.sroa.5139.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.dx, ptr %.sroa.5139.0..sroa_idx140, align 8, !noalias !11278
  br label %bb.ay

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid9GridEntryNtNtBG_5table13TableCellDataEEBK_.exit25.i: ; preds = %bb.au, %bb.at
  store i8 3, ptr %i.eq, align 8, !noalias !11278
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store i64 %i.dx, ptr %.sroa.5139.0..sroa_idx, align 8, !noalias !11278
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ej, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.i, label %bb.as

bb.aw:                                            ; preds = %bb.av
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.ay, %bb.aq
  %.pn18.pn30.i = phi { ptr, i32 } [ %.pn18.pn.ph.i, %bb.ay ], [ %i.en, %bb.aq ]
  resume { ptr, i32 } %.pn18.pn30.i

bb.ay:                                            ; preds = %bb.aw, %.thread32.i, %bb.al
  %.pn18.pn.ph.i = phi { ptr, i32 } [ %i.eg, %bb.al ], [ %i.et, %.thread32.i ], [ %i.eu, %bb.aw ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4grid7CtxCellNtNtBG_5table13TableCellDataEEBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.l) #44
          to label %bb.ax unwind label %bb.ar, !noalias !11276

_RNvMs0_NtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context4gridINtB5_9GridCellsNtNtB7_5table13TableCellDataE6insertBb_.exit: ; preds = %._crit_edge.split.thread.i, %._crit_edge.split.i, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ed, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !11278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.az:                                            ; preds = %bb.y
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context5tableNtB2_8TableCtx9build_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [12 x i8], align 1                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr inttoptr (i64 16 to ptr), ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 672 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.n = load i64, ptr %i.m, align 16, !range !29, !noundef !10
  %.not = icmp eq i64 %i.n, 2
  br i1 %.not, label %bb.b, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit

bb.b:                                             ; preds = %bb.a
  %i.o = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtB9_9TableElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 10)
          to label %.noexc unwind label %bb.u     ; 4 uses

.noexc:                                           ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11305)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !11305, !noalias !11306, !nonnull !10, !noundef !10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11305, !noalias !11306, !nonnull !10, !align !21, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !10, !noalias !11307, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11308
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !10, !noalias !11307, !nonnull !10
  invoke void %i.v(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.p) #40
          to label %.noexc13 unwind label %bb.u, !inline_history !11289

.noexc13:                                         ; preds = %bb.c
  %i.w = load i128, ptr %i.c, align 16, !noalias !11308, !noundef !10
  %i.x = icmp eq i128 %i.w, 124621761046433884973416990177579333221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11308
  br i1 %i.x, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %.noexc13
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtB9_9TableElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 1, 11) 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o) #39
          to label %.noexc14 unwind label %bb.u

.noexc14:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc
  %i.y = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXsh_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtBb_9TableElemINtNtNtNtBf_11foundations7content5field13SettableFieldKha_E5FIELDs0_04LOCK, i64 24) acquire, align 8, !noalias !11309
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB2_11get_or_initFEBT_E0zECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull align 8 @_RNvNCNvXsh_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtBb_9TableElemINtNtNtNtBf_11foundations7content5field13SettableFieldKha_E5FIELDs0_04LOCK)
          to label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.u

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.e, %.noexc13, %bb.f, %bb.a
  %.sroa.06.0 = phi ptr [ %i.m, %bb.a ], [ %i.p, %.noexc13 ], [ @_RNvNCNvXsh_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtBb_9TableElemINtNtNtNtBf_11foundations7content5field13SettableFieldKha_E5FIELDs0_04LOCK, %bb.e ], [ @_RNvNCNvXsh_NvNtNtCsdaEETE4DqmE_13typst_library5model5table1__NtBb_9TableElemINtNtNtNtBf_11foundations7content5field13SettableFieldKha_E5FIELDs0_04LOCK, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aa = load i64, ptr %.sroa.06.0, align 8, !range !19, !noundef !10
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11310)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 23
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !11311, !noalias !11312, !noundef !10 ; 2 uses
  %.not.i.i16 = icmp sgt i8 %i.ae, -1             ; 2 uses
  %i.af = and i8 %i.ae, 127
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = load ptr, ptr %i.ac, align 8, !alias.scope !11311, !noalias !11312, !nonnull !10
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !11311, !noalias !11312
  %.sroa.3.0.i.i = select i1 %.not.i.i16, i64 %i.aj, i64 %i.ag ; 7 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i16, ptr %i.ah, ptr %i.ac
  %.not.i1.i = icmp slt i64 %.sroa.3.0.i.i, 0
  br i1 %.not.i1.i, label %bb.i, label %bb.h, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ak, label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.h
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !11313
  %i.al = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11313 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i, %bb.g
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.sroa.3.0.i.i) #39
          to label %.noexc17 unwind label %bb.u

.noexc17:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i, i1 false), !noalias !11312
  br label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit

bb.k:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model5table9TableElemKha_ECs8jFhWeO2DFb_9typst_pdf.exit
  store i64 -1, ptr %i.f, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit, %bb.k
  call void @_RNvMsU_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE12with_summary(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load i32, ptr %i.an, align 8, !range !14, !noundef !10
  %i.ap = trunc nuw i32 %i.ao to i1
  br i1 %i.ap, label %bb.m, label %bb.n

_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit: ; preds = %bb.j, %bb.h
  %i.aq = phi ptr [ %i.al, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.h ]
  store i64 %.sroa.3.0.i.i, ptr %i.f, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aq, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.3.0.i.i, ptr %.sroa.524.0..sroa_idx, align 8
  br label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 60
  %2 = load <4 x float>, ptr %i.ar, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11314
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 8, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !11314
  %.sroa.2.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.as = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.as, ptr %.sroa.2.i.sroa.3.0..sroa.5.0..sroa_idx.i.sroa_idx, align 4, !noalias !11314
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !11315)
  call void @llvm.experimental.noalias.scope.decl(metadata !11316)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11314
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i = phi i8 [ 8, %bb.m ], [ -1, %bb.n ]
  store i8 %.sink.i, ptr %i.b, align 8, !noalias !11314
  invoke fastcc void @_RNvMs2_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_10OrdinalSetNtB5_4AttrE13set_or_removeCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.b)
          to label %_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE21with_border_thicknessCs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.p, !noalias !11317

common.resume:                                    ; preds = %bb.u, %bb.t, %bb.p
  %.sink = phi ptr [ %i.g, %bb.u ], [ %i.i, %bb.t ], [ %i.h, %bb.p ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm, %bb.u ], [ %i.az, %bb.t ], [ %i.at, %bb.p ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag3TagNtNtBE_4kind5TableEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(56) %.sink) #44
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE21with_border_thicknessCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !alias.scope !11318, !noalias !11319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.03.0.copyload = load i8, ptr %i.au, align 8
  %i.av = trunc nuw i8 %.sroa.03.0.copyload to i1
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE21with_border_thicknessCs8jFhWeO2DFb_9typst_pdf.exit
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 89 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aw, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ax, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.44.0..sroa_idx, i64 3, i1 false)
  %.sroa.5.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.5.0..sroa_idx.i19, ptr noundef nonnull align 1 dereferenceable(12) %i.d, i64 12, i1 false)
  %.sroa.43.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 6, ptr %.sroa.43.0..sroa_idx.i20, align 8, !noalias !11320
  br label %bb.s

bb.r:                                             ; preds = %_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE21with_border_thicknessCs8jFhWeO2DFb_9typst_pdf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11320
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i18 = phi i8 [ 8, %bb.q ], [ -1, %bb.r ]
  store i8 %.sink.i18, ptr %i.a, align 8, !noalias !11320
  invoke fastcc void @_RNvMs2_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_10OrdinalSetNtB5_4AttrE13set_or_removeCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE17with_border_colorCs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.t, !noalias !11321

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvMso_NtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tagINtB5_3TagNtNtB5_4kind5TableE17with_border_colorCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11320
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 15, ptr %0, align 8
  ret void

bb.u:                                             ; preds = %bb.i, %bb.f, %bb.b, %bb.c, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context6figureNtB2_9FigureCtx17build_wrapper_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !11325, !noalias !11326, !noundef !10 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11325, !noalias !11326
  %.sink10.i = select i1 %i.d, i64 %i.f, i64 %i.c
  %.not = icmp eq i64 %.sink10.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  store i64 3, ptr %i.a, align 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag7TagKindECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags7context6figureNtB2_9FigureCtx9build_tag(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.j = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr inttoptr (i64 16 to ptr), ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load i64, ptr %i.l, align 8, !range !29, !noundef !10
  %.not = icmp eq i64 %i.m, 2
  br i1 %.not, label %bb.b, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtB9_10FigureElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 1) ; 4 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11355)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !11355, !noalias !11356, !nonnull !10, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !11355, !noalias !11356, !nonnull !10, !align !21, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !10, !noalias !11357, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11358
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !10, !noalias !11357, !nonnull !10
  call void %i.u(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.o) #40, !noalias !11357, !inline_history !11335
  %i.v = load i128, ptr %i.d, align 16, !noalias !11358, !noundef !10
  %i.w = icmp eq i128 %i.v, 124621761046433884973416990177579333221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11358
  br i1 %i.w, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtB9_10FigureElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef range(i8 1, 11) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n) #39, !noalias !11359
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.x = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs2_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtBb_10FigureElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, i64 24) acquire, align 8, !noalias !11360
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE10initializeNCINvB2_11get_or_initFEBT_E0zECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull align 8 @_RNvNCNvXs2_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtBb_10FigureElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK), !noalias !11360
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.sroa.02.0 = phi ptr [ %i.l, %bb.a ], [ %i.o, %bb.c ], [ @_RNvNCNvXs2_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtBb_10FigureElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, %bb.e ], [ @_RNvNCNvXs2_NvNtNtCsdaEETE4DqmE_13typst_library5model6figure1__NtBb_10FigureElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh1_E5FIELDs0_04LOCK, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.z = load i64, ptr %.sroa.02.0, align 8, !range !19, !noundef !10
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit

bb.g:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtNtBa_5model6figure10FigureElemKh1_ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 23
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !11362, !noalias !11363, !noundef !10 ; 2 uses
  %.not.i.i5 = icmp sgt i8 %i.ad, -1              ; 2 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = load ptr, ptr %i.ab, align 8, !alias.scope !11362, !noalias !11363, !nonnull !10
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !11362, !noalias !11363
  %.sroa.3.0.i.i = select i1 %.not.i.i5, i64 %i.ai, i64 %i.af ; 7 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i5, ptr %i.ag, ptr %i.ab
  %.not.i1.i = icmp slt i64 %.sroa.3.0.i.i, 0
  br i1 %.not.i1.i, label %bb.i, label %bb.h, !prof !36

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.aj, label %_RNvXsv_NtCsakL8LGkl72C_4ecow6stringNtNtCs1xwejQucwHj_5alloc6string6StringINtNtCs3oUPovFnLWP_4core7convert4FromRNtB5_9EcoStringE4from.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.h
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !11364
  %i.ak = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !11364 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.j
end_hunk_3

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7942
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs8jFhWeO2DFb_9typst_pdf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.j:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 576460752303423488
  %i.f = shl nuw i64 %.val.i.i, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %.8.val
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.c
  %.sroa.0.0.i10.i2 = phi i64 [ %i.n, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i2
  %i.n = add nuw nsw i64 %.sroa.0.0.i10.i2, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.m)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph4
  %i.o = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.p = icmp eq i64 %i.o, %.8.val
  br i1 %i.p, label %.body.i, label %.lr.ph4

bb.e:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %.8.val
  br i1 %i.r, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i3 = phi i64 [ %i.o, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.s) #44
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph4
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4304
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.g:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.q

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.f = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775784
  %narrow.i.i.i = and i1 %i.e, %i.g
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.h = add nuw nsw i64 %i.f, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 128102389400760774
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 72
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #44
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4307
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.g:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4320)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !4320, !nonnull !10, !noundef !10 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit
  fence acquire, !noalias !4320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4320
  %i.e = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %narrow.i.not.i = icmp ugt i64 %.val.i1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39, !noalias !4320
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %1 = mul nuw nsw i64 %.val.i1, 72
  %2 = add nuw nsw i64 %1, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.f, align 8, !noalias !4320
  store i64 8, ptr %i.b, align 8, !noalias !4320
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.g, align 8, !noalias !4320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4320, !noundef !10 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit
  %i.m = icmp eq i64 %i.o, %i.i
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.sroa.0.0.i33 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.0.i33 ; 5 uses
  %i.o = add i64 %.sroa.0.0.i33, 1                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4321)
  %i.p = load i64, ptr %i.n, align 8, !range !19, !alias.scope !4321, !noalias !4320, !noundef !10
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i9 = load ptr, ptr %i.r, align 8, !alias.scope !4322, !noalias !4320 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %.val1.i = load i8, ptr %i.s, align 1, !alias.scope !4322, !noalias !4320, !noundef !10
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ], !noalias !4320
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i9, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val.i9, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !4323
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  fence acquire, !noalias !4320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4323
  %i.v = getelementptr i8, ptr %.val.i9, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !4323, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.j, align 8, !noalias !4323
  store i64 8, ptr %i.a, align 8, !noalias !4323
  store i64 %i.w, ptr %i.k, align 8, !noalias !4323
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4323
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body.i unwind label %bb.g, !inline_history !4316

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.noexc10, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i.i, %bb.d, %bb.c, %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.i, !inline_history !4316

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4320, !inline_history !4317
  unreachable

bb.h:                                             ; preds = %.lr.ph35
  %i.aa = add i64 %.sroa.0.1.i34, 1               ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %.body, label %.lr.ph35

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs8jFhWeO2DFb_9typst_pdf.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %lpad.phi, %bb.f ]
  %i.ad = icmp eq i64 %i.o, %i.i
  br i1 %i.ad, label %.body, label %.lr.ph35

.lr.ph35:                                         ; preds = %.body.i, %bb.h
  %.sroa.0.1.i34 = phi i64 [ %i.aa, %bb.h ], [ %i.o, %.body.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.1.i34
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae) #44
          to label %bb.h unwind label %bb.j, !noalias !4320, !inline_history !4318

bb.j:                                             ; preds = %.lr.ph35
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4320, !inline_history !4318
  unreachable

.body:                                            ; preds = %bb.h, %.body.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !4320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4320
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.k:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4320, !inline_history !4319
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs8jFhWeO2DFb_9typst_pdf.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4328)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !4328, !nonnull !10, !noundef !10 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit
  fence acquire, !noalias !4328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4328
  %i.d = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.e = icmp ult i64 %.val.i1, 576460752303423488
  %i.f = shl nuw i64 %.val.i1, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39, !noalias !4328
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8, !noalias !4328
  store i64 8, ptr %i.a, align 8, !noalias !4328
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8, !noalias !4328
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !4328, !noundef !10 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs8jFhWeO2DFb_9typst_pdf.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.0.i10
  %i.p = add i64 %.sroa.0.0.i10, 1                ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !4328, !inline_history !4326

bb.d:                                             ; preds = %.lr.ph12
  %i.q = add i64 %.sroa.0.1.i11, 1                ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.l
  br i1 %i.r, label %.body, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.l
  br i1 %i.t, label %.body, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %bb.d
  %.sroa.0.1.i11 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.1.i11
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #44
          to label %bb.d unwind label %bb.f, !noalias !4328, !inline_history !4326

bb.f:                                             ; preds = %.lr.ph12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4328, !inline_history !4326
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !4328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4328
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !4328, !inline_history !4327
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %.body
  resume { ptr, i32 } %i.s

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs8jFhWeO2DFb_9typst_pdf.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 24
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i.i
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit7.i.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit7.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit7.i.i, %bb.c
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.b, !prof !16

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.e = add nuw nsw i64 %.val.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecmEECs8jFhWeO2DFb_9typst_pdf(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !10 ; 3 uses
  %i.e = icmp ugt i64 %.val.i.i, 4611686018427387903
  br i1 %i.e, label %.thread.i.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.f = icmp samesign ult i64 %.val.i.i, 4611686018427387900
  %i.g = shl nuw i64 %.val.i.i, 2
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i, label %.thread.i.i, !prof !28

.thread.i.i:                                      ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  store i64 8, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.k, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !11, !alias.scope !4331, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !4331, !nonnull !10 ; 7 uses
  %.not.i = icmp ne ptr %i.e, inttoptr (i64 16 to ptr)
  %or.cond.not.i = select i1 %i.d, i1 %.not.i, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !alias.scope !4331
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4331, !noundef !10 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4331, !noundef !10
  %i.l = sub i64 %i.k, %i.h
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef %i.l)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf(ptr nonnull %i.e, i64 0) #44
          to label %common.resume unwind label %bb.h

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.e, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i_crit_edge

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i_crit_edge: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit
  %.val16.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.pre = load i64, ptr %.val16.in.phi.trans.insert, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i_crit_edge, %bb.b
  %.val16 = phi i64 [ %.val16.pre, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8jFhWeO2DFb_9typst_pdf.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i_crit_edge ], [ 0, %bb.b ]
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 -16 ; 2 uses
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %i.o, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs8jFhWeO2DFb_9typst_pdf.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i
end_hunk_0
begin_hunk_1_@_RNvMs0_Cs8jFhWeO2DFb_9typst_pdfNtB5_12PdfStandards3new:bb.a

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i: ; preds = %bb.dm, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8jFhWeO2DFb_9typst_pdf.exit68.i.i.i.i.i.i
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %bb.dm ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs8jFhWeO2DFb_9typst_pdf.exit68.i.i.i.i.i.i ]
  %i.il = icmp eq i64 %i.ie, %.sroa.02.0.i.i.i.i.i
  %i.im = zext i1 %i.il to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtB6_6string9EcoStringE7reserveCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.im)
          to label %.split.i.i.i.preheader.i.i.i unwind label %.loopexit480, !noalias !11582, !inline_history !11553

bb.dn:                                            ; preds = %bb.dl
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11589, !inline_history !11553
  unreachable

.split.i.i.i.preheader.i.i.i:                     ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i
  %i.io = load ptr, ptr %i.m, align 8, !alias.scope !11590, !noalias !11582, !nonnull !10, !noundef !10 ; 2 uses
  %i.ip = load i64, ptr %i.hk, align 8, !alias.scope !11590, !noalias !11582, !noundef !10 ; 2 uses
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !11588
  %i.ir = add i64 %i.ip, 1                        ; 2 uses
  store i64 %i.ir, ptr %i.hk, align 8, !alias.scope !11590, !noalias !11582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11579
  br label %_RNCNvMs0_Cs8jFhWeO2DFb_9typst_pdfNtB7_12PdfStandards3news1_0B7_.exit, !llvm.loop !11556

.body.i.i:                                        ; preds = %bb.dl, %bb.dj, %.loopexit33.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %bb.dj ], [ %lpad.phi483, %bb.dl ], [ %lpad.phi37.i.i.i, %.loopexit33.i.i.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag12HintedStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #44
          to label %common.resume unwind label %bb.do, !noalias !11575

bb.do:                                            ; preds = %.body.i.i
  %i.is = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !11575
  unreachable

_RNCNvMs0_Cs8jFhWeO2DFb_9typst_pdfNtB7_12PdfStandards3news1_0B7_.exit: ; preds = %.split.i.i.i.preheader.i.i.i, %.split.i.i.i.preheader.lr.ph.i.i.i.peel.newph, %.split.i.i.i.preheader.i.i.i.peel, %.split.i.i.i.i.i.i.peel.peel
  %i.it = phi i64 [ %i.hj, %.split.i.i.i.i.i.i.peel.peel ], [ %i.ie, %.split.i.i.i.preheader.i.i.i.peel ], [ %i.ir, %.split.i.i.i.preheader.i.i.i ], [ %i.ie, %.split.i.i.i.preheader.lr.ph.i.i.i.peel.newph ]
  %i.iu = phi ptr [ %i.hi, %.split.i.i.i.i.i.i.peel.peel ], [ %i.ib, %.split.i.i.i.preheader.i.i.i.peel ], [ %i.io, %.split.i.i.i.preheader.i.i.i ], [ %i.ib, %.split.i.i.i.preheader.lr.ph.i.i.i.peel.newph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store ptr %i.iu, ptr %0, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.it, ptr %i.iv, align 8
  br label %bb.dq

bb.dp:                                            ; preds = %._crit_edge
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i24 %.sroa.459.0.extract.trunc, ptr %i.iw, align 8
  store ptr null, ptr %0, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %_RNCNvMs0_Cs8jFhWeO2DFb_9typst_pdfNtB7_12PdfStandards3news1_0B7_.exit, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.dp
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 576460752303423488
  %i.c = shl nuw i64 %1, 5
  %i.d = or disjoint i64 %i.c, 16                 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775799
  %narrow.i.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #41 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !13

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 576460752303423488
  %i.k = shl nuw i64 %.val.i, 5
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775799
  %narrow.i.i34 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.d) #41 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #39
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 1152921504606846976
  %i.c = shl i64 %1, 4                            ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775784
  %narrow.i.i = and i1 %i.b, %i.d
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  %i.e = add nuw nsw i64 %i.c, 16                 ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #41 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !13

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !10 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 1152921504606846976
  %i.k = shl i64 %.val.i, 4                       ; 2 uses
  %i.l = icmp ult i64 %i.k, 9223372036854775784
  %narrow.i.i34 = and i1 %i.j, %i.l
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = add nuw nsw i64 %i.k, 16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.e) #41 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #39
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 72
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #41 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !13

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, !prof !13

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 72
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #41 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #39
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #41 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !13

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !10 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, label %bb.f, !prof !16

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #41 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #39
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs8jFhWeO2DFb_9typst_pdf.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6insertCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, i128 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = mul i64 %1, -1065810590584100411
  %i.b = trunc i128 %2 to i64
  %i.c = add i64 %i.a, %i.b
  %i.d = mul i64 %i.c, -1065810590584100411
  %i.e = lshr i128 %2, 64
  %i.f = trunc nuw i128 %i.e to i64
  %i.g = add i64 %i.d, %i.f
  %i.h = mul i64 %i.g, -1065810590584100411       ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 26) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !11605, !noalias !11606, !noundef !10
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = tail call { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i1 noundef zeroext true) #38, !noalias !11607 ; 0 uses
  br label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !11608, !noalias !11609, !nonnull !10, !noundef !10 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.o, align 8, !alias.scope !11608, !noalias !11609, !noundef !10 ; 4 uses
  %i.p = lshr i64 %i.i, 57
  %i.q = trunc nuw nsw i64 %i.p to i8             ; 3 uses
  %i.r = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i
  %.pn.i.i = phi i64 [ %i.i, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.at, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.t = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs8jFhWeO2DFb_9typst_pdf.exit.i ], [ %i.as, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !11610 ; 3 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.s
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.w, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.ai, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.0.017.i.i, %i.y
  %i.aa = and i64 %i.z, %.val5.i
  %i.ab = sub nsw i64 0, %i.aa                    ; 2 uses
  %i.ac = getelementptr inbounds [48 x i8], ptr %.val.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %.val2.i.i = load i64, ptr %i.ad, align 8, !noalias !11611, !noundef !10
  %i.ae = getelementptr i8, ptr %i.ac, i64 -32
  %.val3.i.i = load i128, ptr %i.ae, align 16, !noalias !11611
  %i.af = icmp eq i64 %1, %.val2.i.i
  %i.ag = icmp eq i128 %2, %.val3.i.i
  %spec.select.i.i.i.i.i = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %spec.select.i.i.i.i.i, label %.loopexit, label %bb.d, !prof !16

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !13

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = add i16 %.sroa.01.029.i.i, -1
  %i.ai = and i16 %i.ah, %.sroa.01.029.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !13

.thread24.i.i:                                    ; preds = %bb.e
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.0.017.i.i, %i.am
  %i.ao = and i64 %i.an, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ao, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ap = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.as = add i64 %i.t, 16                        ; 2 uses
  %i.at = add i64 %i.as, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.av = load i8, ptr %i.au, align 1, !noalias !11607, !noundef !10 ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !11607
  %i.ax = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ay, 0
  %i.az = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ay, i1 true)
  %i.ba = zext nneg i16 %i.az to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ba
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !11612
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bb = phi i8 [ %.pre, %bb.h ], [ %i.av, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ba, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11613)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
end_hunk_1
begin_hunk_2_@_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBP_6groups5GroupEj4_E21reserve_one_uncheckedBR_:bb.a
  %i.x = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !12815
  %or.cond.i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %or.cond.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBI_6groups5GroupEEBK_.exit.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12816
  store i64 0, ptr %i.a, align 8, !noalias !12816
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12816
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBI_6groups5GroupEEBK_.exit.i: ; preds = %bb.m
  %i.y = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.y, i64 noundef 4) #41, !noalias !12815
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBK_6groups5GroupEEBM_.exit44.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #39
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtNtNtCs8jFhWeO2DFb_9typst_pdf4tags4util5idvec2IdNtNtBI_6groups5GroupEEBK_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs5PEMdK7bMAG_12typst_syntax4span4Spanj3_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !12824, !noalias !12825, !noundef !10 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12824, !noalias !12825, !nonnull !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12824, !noalias !12825
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12826)
  %i.n = icmp ult i64 %i.b, 4                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !12826, !noundef !10 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42, !noalias !12826
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %.sroa.02.0, 3
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.q = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %or.cond.i = icmp ult i64 %.sroa.02.0, 1152921504606846975
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.p, !prof !78

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i
  %i.r = icmp ult i64 %i.b, 1152921504606846976
  br i1 %i.r, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit45.i, label %bb.p, !prof !78

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12826
  %i.s = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef 8) #41, !noalias !12826 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit45.i: ; preds = %bb.i
  %i.u = shl nuw nsw i64 %.sink.i.i, 3
  %i.v = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.u, i64 noundef 8, i64 noundef %i.q) #41, !noalias !12826 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.v, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !12826
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !12826
  store i64 %i.m, ptr %0, align 8, !alias.scope !12826
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit

bb.l:                                             ; preds = %bb.j
  %i.x = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.y, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !12826
  %or.cond.i.i = icmp ult i64 %i.b, 1152921504606846976
  br i1 %or.cond.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12827
  store i64 0, ptr %i.a, align 8, !noalias !12827
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12827
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i: ; preds = %bb.m
  %i.z = shl nuw nsw i64 %.sink.i.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.z, i64 noundef 8) #41, !noalias !12826
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit45.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.q) #39
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanECs8jFhWeO2DFb_9typst_pdf.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !12835, !noalias !12836, !noundef !10 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !12835, !noalias !12836, !nonnull !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !12835, !noalias !12836
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12837)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !12837, !noundef !10 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42, !noalias !12837
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 88                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 104811045873349724
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit.i, !prof !36

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 104811045873349725
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit45.i, !prof !36

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !12837
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #41, !noalias !12837 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 88
  %i.t = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #41, !noalias !12837 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !12837
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !12837
  store i64 %i.m, ptr %0, align 8, !alias.scope !12837
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !12837
  %i.x = mul i64 %.sink.i.i, 88                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 104811045873349725
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit.i, !prof !36

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12838
  store i64 0, ptr %i.a, align 8, !noalias !12838
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !12838
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12838
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #41, !noalias !12837
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #39
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtCs8jFhWeO2DFb_9typst_pdf4link14LinkAnnotationEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !12842, !noalias !12843, !noundef !10 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12842, !noalias !12843
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit
    i64 0, label %bb.e
  ], !prof !79

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4Attrj1_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !10  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !12849, !noalias !12850, !nonnull !10 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !10 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 40                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 230584300921369395
  br i1 %or.cond.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit, !prof !36

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit
  %i.j = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 230584300921369395
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45, !prof !36

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #41 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #41 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 230584300921369395
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12851
  store i64 0, ptr %i.a, align 8, !noalias !12851
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !12851
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12851
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag4AttrECs8jFhWeO2DFb_9typst_pdf.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !12855, !noalias !12856, !noundef !10 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !12855, !noalias !12856
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit
    i64 0, label %bb.e
  ], !prof !79

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdj1_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !10  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !12862, !noalias !12863, !nonnull !10 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !10 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 2
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = mul i64 %1, 24                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 384307168202282325
  br i1 %or.cond.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit, !prof !36

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit
  %i.j = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45, !prof !36

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #41 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #41 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.e, i64 %i.o, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.p = mul nuw nsw i64 %i.g, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.p, i1 false)
  store i64 %i.g, ptr %0, align 8
  %i.q = mul i64 %.sink.i, 24                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit, !prof !36

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12864
  store i64 0, ptr %i.a, align 8, !noalias !12864
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !12864
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12864
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtNtCsidf7BFzONoc_6krilla11interchange7tagging3tag5TagIdECs8jFhWeO2DFb_9typst_pdf.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E21reserve_one_uncheckedCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !12868, !noalias !12869, !noundef !10 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !12868, !noalias !12869
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit
    i64 0, label %bb.e
  ], !prof !79

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #42
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAhj10_E8try_growCs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 6 uses
  %i.d = icmp ult i64 %i.c, 17                    ; 2 uses
  %i.e = icmp ugt i64 %i.c, 16
  %i.f = load ptr, ptr %0, align 8, !alias.scope !12875, !noalias !12876, !nonnull !10 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16) ; 6 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 17
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = icmp sgt i64 %1, -1
  br i1 %i.j, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.m

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit
  %i.k = icmp sgt i64 %.sink.i, -1
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46, label %bb.m

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.l = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef 1) #41 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46: ; preds = %bb.g
  %i.n = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1, i64 noundef %1) #41 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 8 %0, i64 %i.c, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 1 %i.f, i64 %.val, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.p = icmp sgt i64 %.sink.i, -1
  br i1 %i.p, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12877
  store i64 0, ptr %i.a, align 8, !noalias !12877
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !12877
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #42, !noalias !12877
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sink.i, i64 noundef 1) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %1, %bb.h ], [ undef, %bb.e ], [ %1, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46 ], [ %1, %bb.f ], [ %.sink.i, %bb.g ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocatehECs8jFhWeO2DFb_9typst_pdf.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 1, %bb.h ], [ -1, %bb.e ], [ 1, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayhECs8jFhWeO2DFb_9typst_pdf.exit46 ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #41
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCs8jFhWeO2DFb_9typst_pdf5image19PdfRasterImageInnerRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %bb.e, %bb.f, %bb.g
  ret void

end_hunk_2

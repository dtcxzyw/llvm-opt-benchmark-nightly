Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst-bb5ff34a6deedbbf.typst.1e21bb3d3a105566-cgu.0?download=true
inline.NumInlined: 451
inline.NumDeleted: 242
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst:bb.a
.lr.ph.i:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.ac = add i64 %.sroa.0.1.i4.i, 1              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val.i10.i = load ptr, ptr %i.ad, align 8, !alias.scope !102 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 31
  %.val7.i.i = load i8, ptr %i.ae, align 1, !alias.scope !102, !noundef !6
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !101
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.af = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !104
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.ag, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  fence acquire, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  %i.ah = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !104, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, label %bb.i, !prof !8

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.af, ptr %i.z, align 8, !noalias !104
  store i64 8, ptr %i.a, align 8, !noalias !104
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !104
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.aj = icmp eq i64 %i.ac, %.8.val
  br i1 %i.aj, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !101
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.j:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 576460752303423488
  %i.f = shl nuw i64 %.val.i.i, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %.8.val
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i, %bb.c
  %.sroa.0.0.i10.i2 = phi i64 [ %i.n, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i2
  %i.n = add nuw nsw i64 %.sroa.0.0.i10.i2, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.m)
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.s) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph4
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !107
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.q

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 128102389400760774
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i, !prof !9

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 72
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !110
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

bb.g:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs2AodJlUx5rK_5typst.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i, label %bb.b, !prof !8

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.e = add nuw nsw i64 %.val.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.a = load i64, ptr %0, align 8, !alias.scope !126, !noundef !6 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !126, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #28
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !127
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.8.val, 1152921504606846975
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.8.val, 4                       ; 2 uses
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %i.e = add nsw i64 %.8.val, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i
  %i.j = sub nuw nsw i64 -16, %i.c
  %i.k = getelementptr inbounds i8, ptr %.0.val, i64 %i.j
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
end_hunk_0
begin_hunk_1_@_RINvXsF_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB6_11PackageSpecNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst:bb.a
  %i.dl = tail call noundef i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 16)
  %i.dm = xor i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = add i64 %i.dm, %i.dh                    ; 2 uses
  %i.do = tail call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 21)
  %i.dp = xor i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.cy, align 8, !alias.scope !193
  %i.dq = add i64 %i.dk, %i.dg                    ; 3 uses
  %i.dr = tail call noundef i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 17)
  %i.ds = xor i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.dc, align 8, !alias.scope !193
  %i.dt = tail call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 %i.dq, i64 32)
  store i64 %i.dt, ptr %i.di, align 8, !alias.scope !193
  %i.du = xor i64 %i.dn, %i.cw
  store i64 %i.du, ptr %1, align 8, !alias.scope !192
  %i.dv = add i64 %.sink.i.i.i4, -4
  %i.dw = shl nuw nsw i64 %i.cs, 3
  %i.dx = lshr i64 %i.cr, %i.dw
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit

bb.g:                                             ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit5
  %i.dy = add i64 %.sink.i.i.i4, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit: ; preds = %bb.f, %bb.g
  %i.dz = phi i64 [ %i.cw, %bb.g ], [ %i.dx, %bb.f ]
  %.sink.i.i = phi i64 [ %i.dy, %bb.g ], [ %i.dv, %bb.f ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !noundef !6
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = sub i64 8, %.sink.i.i                   ; 2 uses
  %i.ee = shl i64 %.sink.i.i, 3
  %i.ef = and i64 %i.ee, 56
  %i.eg = shl i64 %i.ec, %i.ef
  %i.eh = or i64 %i.eg, %i.dz                     ; 3 uses
  %i.ei = icmp ugt i64 %i.ed, 4
  br i1 %i.ei, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !194, !noundef !6
  %i.el = xor i64 %i.ek, %i.eh                    ; 3 uses
  %i.em = load i64, ptr %1, align 8, !alias.scope !195, !noundef !6
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !195, !noundef !6 ; 3 uses
  %i.ep = add i64 %i.eo, %i.em                    ; 3 uses
  %i.eq = tail call noundef i64 @llvm.fshl.i64(i64 %i.eo, i64 %i.eo, i64 13)
  %i.er = xor i64 %i.eq, %i.ep                    ; 3 uses
  %i.es = tail call noundef i64 @llvm.fshl.i64(i64 %i.ep, i64 %i.ep, i64 32)
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !195, !noundef !6
  %i.ev = add i64 %i.eu, %i.el                    ; 2 uses
  %i.ew = tail call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 16)
  %i.ex = xor i64 %i.ev, %i.ew                    ; 3 uses
  %i.ey = add i64 %i.ex, %i.es                    ; 2 uses
  %i.ez = tail call noundef i64 @llvm.fshl.i64(i64 %i.ex, i64 %i.ex, i64 21)
  %i.fa = xor i64 %i.ez, %i.ey
  store i64 %i.fa, ptr %i.ej, align 8, !alias.scope !195
  %i.fb = add i64 %i.ev, %i.er                    ; 3 uses
  %i.fc = tail call noundef i64 @llvm.fshl.i64(i64 %i.er, i64 %i.er, i64 17)
  %i.fd = xor i64 %i.fb, %i.fc
  store i64 %i.fd, ptr %i.en, align 8, !alias.scope !195
  %i.fe = tail call noundef i64 @llvm.fshl.i64(i64 %i.fb, i64 %i.fb, i64 32)
  store i64 %i.fe, ptr %i.et, align 8, !alias.scope !195
  %i.ff = xor i64 %i.ey, %i.eh
  store i64 %i.ff, ptr %1, align 8, !alias.scope !194
  %i.fg = add i64 %.sink.i.i, -4
  %i.fh = shl nuw nsw i64 %i.ed, 3
  %i.fi = lshr i64 %i.ec, %i.fh
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7

bb.i:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit
  %i.fj = add i64 %.sink.i.i, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7: ; preds = %bb.h, %bb.i
  %i.fk = phi i64 [ %i.eh, %bb.i ], [ %i.fi, %bb.h ]
  %.sink.i.i6 = phi i64 [ %i.fj, %bb.i ], [ %i.fg, %bb.h ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fm = load i32, ptr %i.fl, align 8, !noundef !6
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = add i64 %i.bd, 13
  store i64 %i.fo, ptr %i.h, align 8, !alias.scope !196
  %i.fp = sub i64 8, %.sink.i.i6                  ; 2 uses
  %i.fq = shl i64 %.sink.i.i6, 3
  %i.fr = and i64 %i.fq, 56
  %i.fs = shl i64 %i.fn, %i.fr
  %i.ft = or i64 %i.fs, %i.fk                     ; 3 uses
  store i64 %i.ft, ptr %i.q, align 8, !alias.scope !196
  %i.fu = icmp ugt i64 %i.fp, 4
  br i1 %i.fu, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !alias.scope !196, !noundef !6
  %i.fx = xor i64 %i.fw, %i.ft                    ; 3 uses
  %i.fy = load i64, ptr %1, align 8, !alias.scope !197, !noundef !6
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !197, !noundef !6 ; 3 uses
  %i.gb = add i64 %i.ga, %i.fy                    ; 3 uses
  %i.gc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ga, i64 %i.ga, i64 13)
  %i.gd = xor i64 %i.gc, %i.gb                    ; 3 uses
  %i.ge = tail call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 32)
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !197, !noundef !6
  %i.gh = add i64 %i.gg, %i.fx                    ; 2 uses
  %i.gi = tail call noundef i64 @llvm.fshl.i64(i64 %i.fx, i64 %i.fx, i64 16)
  %i.gj = xor i64 %i.gh, %i.gi                    ; 3 uses
  %i.gk = add i64 %i.gj, %i.ge                    ; 2 uses
  %i.gl = tail call noundef i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 21)
  %i.gm = xor i64 %i.gl, %i.gk
  store i64 %i.gm, ptr %i.fv, align 8, !alias.scope !197
  %i.gn = add i64 %i.gh, %i.gd                    ; 3 uses
  %i.go = tail call noundef i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 17)
  %i.gp = xor i64 %i.gn, %i.go
  store i64 %i.gp, ptr %i.fz, align 8, !alias.scope !197
  %i.gq = tail call noundef i64 @llvm.fshl.i64(i64 %i.gn, i64 %i.gn, i64 32)
  store i64 %i.gq, ptr %i.gf, align 8, !alias.scope !197
  %i.gr = xor i64 %i.gk, %i.ft
  store i64 %i.gr, ptr %1, align 8, !alias.scope !196
  %i.gs = add i64 %.sink.i.i6, -4
  %i.gt = shl nuw nsw i64 %i.fp, 3
  %i.gu = lshr i64 %i.fn, %i.gt
  store i64 %i.gu, ptr %i.q, align 8, !alias.scope !196
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9

bb.k:                                             ; preds = %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit7
  %i.gv = add i64 %.sink.i.i6, 4
  br label %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9

_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit9: ; preds = %bb.j, %bb.k
  %.sink.i.i8 = phi i64 [ %i.gv, %bb.k ], [ %i.gs, %bb.j ]
  store i64 %.sink.i.i8, ptr %i.k, align 8, !alias.scope !196
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [1 x i8], align 1                 ; 4 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [1 x i8], align 1                 ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [1 x i8], align 1                 ; 4 uses
  %i.o = load i8, ptr %0, align 8, !range !264, !noundef !6 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 4) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  switch i8 %i.o, label %default.unreachable7 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable7:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !265, !noundef !6 ; 2 uses
  %.not.i = icmp sgt i8 %i.s, -1                  ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = load ptr, ptr %i.q, align 8, !alias.scope !265, !nonnull !6
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !265
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.x, i64 %i.u
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.v, ptr %i.q
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !266
  store i8 -1, ptr %i.n, align 1, !noalias !266
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !266
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !268
  store i8 %i.z, ptr %i.m, align 1, !noalias !268
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !268
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !269, !noalias !270, !noundef !6
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ac), !noalias !269, !inline_history !210
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !269, !noalias !270, !noundef !6
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ae), !noalias !269, !inline_history !210
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ag = load i8, ptr %i.af, align 8, !range !10, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !271
  store i8 %i.ag, ptr %i.e, align 1, !noalias !271
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !271
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 65
  %i.ai = load i8, ptr %i.ah, align 1, !range !10, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !272
  store i8 %i.ai, ptr %i.f, align 1, !noalias !272
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !269, !noalias !270, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !273
  store i64 %i.ak, ptr %i.g, align 8, !noalias !273
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !273
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !269, !noalias !270, !nonnull !6, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !269, !noalias !270, !noundef !6 ; 3 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.ao), !noalias !269
  %.idx = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.0.0.i26 = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %bb.c ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 32 ; 2 uses
  call fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0.i26, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) #30, !noalias !269, !inline_history !217
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i26, i64 24
  %i.at = load i64, ptr %i.as, align 8, !range !11, !alias.scope !274, !noalias !275, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  store i64 %i.at, ptr %i.a, align 8, !noalias !276
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  %i.au = icmp eq ptr %i.ar, %i.ap
  br i1 %i.au, label %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %.lr.ph

_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %.lr.ph, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !277
  store i8 %i.aw, ptr %i.l, align 1, !noalias !277
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !277
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.ax = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 47
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !279, !noalias !280, !noundef !6 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.bb, -1               ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = load ptr, ptr %i.az, align 8, !alias.scope !279, !noalias !280, !nonnull !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !279, !noalias !280
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.bg, i64 %i.bd
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.be, ptr %i.az
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !281
  store i8 -1, ptr %i.k, align 1, !noalias !281
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !281
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 63
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !282, !noalias !280, !noundef !6 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.bj, -1              ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = load ptr, ptr %i.bh, align 8, !alias.scope !282, !noalias !280, !nonnull !6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !282, !noalias !280
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.bo, i64 %i.bl
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.bm, ptr %i.bh
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3.i, i64 noundef %.sroa.3.0.i2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !283
  store i8 -1, ptr %i.j, align 1, !noalias !283
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !283
  %i.bp = load ptr, ptr %i.ay, align 8, !alias.scope !278, !noalias !280, !nonnull !6, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !278, !noalias !280, !noundef !6 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.br)
  call fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !284
  store i8 %i.bt, ptr %i.i, align 1, !noalias !284
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !284
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.bu = load ptr, ptr %i.q, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  tail call fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.bv, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) #30, !inline_history !247
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !alias.scope !285, !noalias !286, !noundef !6 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i64
  tail call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef range(i64 0, 4) %i.bz)
  %.not.i1 = icmp eq i32 %i.bx, 0
  br i1 %.not.i1, label %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 60
  %i.cb = load i32, ptr %i.ca, align 4, !alias.scope !285, !noalias !286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !287
  store i32 %i.cb, ptr %i.b, align 4, !noalias !287
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !287
  %i.cc = load i32, ptr %i.bw, align 8, !range !288, !alias.scope !285, !noalias !286, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !289
  store i32 %i.cc, ptr %i.c, align 4, !noalias !289
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !289
  br label %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit

_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %bb.e, %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 64 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 79
  %i.cf = load i8, ptr %i.ce, align 1, !alias.scope !290, !noalias !286, !noundef !6 ; 2 uses
  %.not.i3 = icmp sgt i8 %i.cf, -1                ; 2 uses
  %i.cg = and i8 %i.cf, 127
  %i.ch = zext nneg i8 %i.cg to i64
  %i.ci = load ptr, ptr %i.cd, align 8, !alias.scope !290, !noalias !286, !nonnull !6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !290, !noalias !286
  %.sroa.3.0.i4 = select i1 %.not.i3, i64 %i.ck, i64 %i.ch
  %.sroa.0.0.i5 = select i1 %.not.i3, ptr %i.ci, ptr %i.cd
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i5, i64 noundef %.sroa.3.0.i4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !291
  store i8 -1, ptr %i.d, align 1, !noalias !291
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !291
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !285, !noalias !286, !nonnull !6, !noundef !6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !285, !noalias !286, !noundef !6 ; 2 uses
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.co)
  call fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cm, i64 noundef %i.co, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1), !inline_history !247
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !range !267, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !292
  store i8 %i.cq, ptr %i.h, align 1, !noalias !292
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !292
  br label %bb.g

bb.g:                                             ; preds = %_RINvXsX_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_14WarningWrapperNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.d, %_RINvYNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtNtBN_4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %.idx = mul nuw nsw i64 %1, 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit
  %.sroa.0.03 = phi ptr [ %i.f, %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit ], [ %0, %bb.a ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 15
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !316, !noalias !317, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.i, -1              ; 2 uses
  %i.j = and i8 %i.i, 127
  %i.k = zext nneg i8 %i.j to i64
  %i.l = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !316, !noalias !317, !nonnull !6
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !316, !noalias !317
  %.sroa.3.0.i.i.i = select i1 %.not.i.i.i, i64 %i.n, i64 %i.k
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, ptr %i.l, ptr %.sroa.0.03
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !318
  store i8 -1, ptr %i.c, align 1, !noalias !318
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !318
  %.val.i = load i32, ptr %i.g, align 8, !alias.scope !314, !noalias !319, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 20
  %.val1.i = load i32, ptr %i.o, align 4, !alias.scope !314, !noalias !319
  %i.p = icmp ne i32 %.val.i, 0
  %i.q = zext i1 %i.p to i64
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, i64 noundef range(i64 0, 4) %i.q)
  %.not.i.i = icmp eq i32 %.val.i, 0
  br i1 %.not.i.i, label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store i32 %.val1.i, ptr %i.b, align 4, !noalias !320
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !321
  store i32 %.val.i, ptr %i.a, align 4, !noalias !321
  call void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !321
  br label %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit

_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit: ; preds = %.lr.ph, %bb.b
  %i.r = icmp eq ptr %i.f, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBa_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !12, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !10, !noundef !6
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0Cs2AodJlUx5rK_5typst.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #29
  unreachable

_RNCNvMNtNtCsaL1QbXo9JQH_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0Cs2AodJlUx5rK_5typst.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !inline_history !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2AodJlUx5rK_5typst(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !328, !noalias !329, !align !12, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !328, !noalias !329
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !10, !noalias !330, !noundef !6
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2AodJlUx5rK_5typst.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() #29, !noalias !330
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29, !noalias !330
  unreachable

_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCsdaEETE4DqmE_13typst_library8routines8RoutinesE5force0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2AodJlUx5rK_5typst.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !330, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !330
  call void %i.f(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a), !noalias !330, !inline_history !327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !330
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst11deduplicate(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %.not.i.i.i = icmp eq ptr %0, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %0, i64 -16
  %i.l = load atomic i64, ptr %i.k acquire, align 8, !noalias !390
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !391
  store ptr inttoptr (i64 16 to ptr), ptr %i.h, align 8, !noalias !391
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8, !noalias !391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef range(i64 0, 128102389400760776) %1)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !393

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %.idx.i.i.i.i = mul nuw nsw i64 %1, 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !392, !noalias !394, !nonnull !6 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !392, !noalias !394
  br label %bb.c

bb.c:                                             ; preds = %.noexc4.i.i.i, %.noexc.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i.i, %.noexc.i.i.i ], [ %i.u, %.noexc4.i.i.i ] ; 3 uses
  %.sroa.02.04.i.i.i.i = phi ptr [ %0, %.noexc.i.i.i ], [ %i.s, %.noexc4.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !395
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.02.04.i.i.i.i) #30
          to label %.noexc4.i.i.i unwind label %.loopexit.i.i.i, !noalias !390

.noexc4.i.i.i:                                    ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i.i, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !396
  %i.u = add i64 %i.r, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !395
  %i.v = icmp eq ptr %i.s, %i.p
  br i1 %i.v, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, label %bb.c

.loopexit.i.i.i:                                  ; preds = %bb.c
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i.i.i:                         ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i.i = load ptr, ptr %i.h, align 8, !noalias !391
  %.val3.pre.i.i.i = load i64, ptr %i.n, align 8, !noalias !391
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.val3.i.i.i = phi i64 [ %i.r, %.loopexit.i.i.i ], [ %.val3.pre.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.val.i.i.i = phi ptr [ %i.q, %.loopexit.i.i.i ], [ %.val.pre.i.i.i, %.loopexit.split-lp.i.i.i ]
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i.i, i64 %.val3.i.i.i) #28
          to label %.body unwind label %bb.e, !noalias !393

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !393
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %.noexc4.i.i.i, %bb.b
  %i.x = phi i64 [ 0, %bb.b ], [ %i.u, %.noexc4.i.i.i ] ; 2 uses
  %i.y = phi ptr [ inttoptr (i64 16 to ptr), %bb.b ], [ %i.q, %.noexc4.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !391
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %0, i64 %1)
          to label %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i unwind label %bb.f, !noalias !390

bb.f:                                             ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i, %bb.a
  %.sroa.10.1 = phi i64 [ %1, %bb.a ], [ %1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i ], [ %i.x, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i ] ; 17 uses
  %.sroa.0.1 = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i.i ], [ %i.y, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i.i ] ; 19 uses
  %.not45.i = icmp eq i64 %1, 0
  br i1 %.not45.i, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i
  %.sroa.411.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.512.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.613.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %exitcond.not.i39 = icmp eq i64 %.sroa.10.1, 0
  br i1 %exitcond.not.i39, label %._crit_edge.invoke, label %.lr.ph

._crit_edge.i:                                    ; preds = %bb.z
  %.not.i = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not.i, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.ad = sub i64 %1, %.sroa.0.1.i                ; 10 uses
  %.not.i.i = icmp ult i64 %i.ad, %.sroa.10.1
  br i1 %.not.i.i, label %bb.h, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i12.i = icmp eq ptr %.sroa.0.1, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i13.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i13.i: ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.1, i64 -16
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !397
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i13.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !398
  store ptr inttoptr (i64 16 to ptr), ptr %i.f, align 8, !noalias !398
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i64 0, ptr %i.ah, align 8, !noalias !398
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.ai = icmp eq i64 %1, %.sroa.0.1.i
  br i1 %i.ai, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %bb.i
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, i64 noundef range(i64 0, 128102389400760776) %i.ad)
          to label %.noexc.i.i24.i unwind label %.loopexit.split-lp.i.i15.i, !noalias !400

.noexc.i.i24.i:                                   ; preds = %.lr.ph.i.i.i14.i
  %.idx.i.i.i25.i = mul nuw nsw i64 %i.ad, 72
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 %.idx.i.i.i25.i
  %i.ak = load ptr, ptr %i.f, align 8, !alias.scope !399, !noalias !401, !nonnull !6 ; 3 uses
  %.promoted.i.i.i26.i = load i64, ptr %i.ah, align 8, !alias.scope !399, !noalias !401
  br label %bb.j

bb.j:                                             ; preds = %.noexc4.i.i30.i, %.noexc.i.i24.i
  %i.al = phi i64 [ %.promoted.i.i.i26.i, %.noexc.i.i24.i ], [ %i.ao, %.noexc4.i.i30.i ] ; 3 uses
  %.sroa.02.04.i.i.i27.i = phi ptr [ %.sroa.0.1, %.noexc.i.i24.i ], [ %i.am, %.noexc4.i.i30.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !402
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.02.04.i.i.i27.i) #30
          to label %.noexc4.i.i30.i unwind label %.loopexit.i.i28.i, !noalias !397

.noexc4.i.i30.i:                                  ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.i.i27.i, i64 72 ; 2 uses
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.ak, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !403
  %i.ao = add i64 %i.al, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !402
  %i.ap = icmp eq ptr %i.am, %i.aj
  br i1 %i.ap, label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i, label %bb.j

.loopexit.i.i28.i:                                ; preds = %bb.j
  %lpad.loopexit.i.i29.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp.i.i15.i:                       ; preds = %.lr.ph.i.i.i14.i
  %lpad.loopexit.split-lp.i.i16.i = landingpad { ptr, i32 }
          cleanup
  %.val.pre.i.i17.i = load ptr, ptr %i.f, align 8, !noalias !398
  %.val3.pre.i.i18.i = load i64, ptr %i.ah, align 8, !noalias !398
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.i.i15.i, %.loopexit.i.i28.i
  %.val3.i.i19.i = phi i64 [ %i.al, %.loopexit.i.i28.i ], [ %.val3.pre.i.i18.i, %.loopexit.split-lp.i.i15.i ]
  %.val.i.i20.i = phi ptr [ %i.ak, %.loopexit.i.i28.i ], [ %.val.pre.i.i17.i, %.loopexit.split-lp.i.i15.i ]
  %lpad.phi.i.i21.i = phi { ptr, i32 } [ %lpad.loopexit.i.i29.i, %.loopexit.i.i28.i ], [ %lpad.loopexit.split-lp.i.i16.i, %.loopexit.split-lp.i.i15.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i20.i, i64 %.val3.i.i19.i) #28
          to label %.body unwind label %bb.l, !noalias !400

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !400
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i: ; preds = %.noexc4.i.i30.i, %bb.i
  %i.ar = phi i64 [ 0, %bb.i ], [ %i.ao, %.noexc4.i.i30.i ] ; 2 uses
  %i.as = phi ptr [ inttoptr (i64 16 to ptr), %bb.i ], [ %i.ak, %.noexc4.i.i30.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !398
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.sroa.0.1, i64 %.sroa.10.1)
          to label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit unwind label %bb.q, !noalias !397

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.i13.i, %bb.h
  %i.at = sub nuw i64 %.sroa.10.1, %i.ad          ; 3 uses
  %i.au = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.1, i64 %i.ad ; 2 uses
  %i.av = icmp eq i64 %.sroa.10.1, %i.ad
  br i1 %i.av, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.lr.ph79

bb.m:                                             ; preds = %.lr.ph79
  %i.aw = icmp eq i64 %i.ay, %i.at
  br i1 %i.aw, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.lr.ph79

.lr.ph79:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i, %bb.m
  %.sroa.0.0.i4.i.i78 = phi i64 [ %i.ay, %bb.m ], [ 0, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %.sroa.0.0.i4.i.i78
  %i.ay = add nuw nsw i64 %.sroa.0.0.i4.i.i78, 1  ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.ax)
          to label %bb.m unwind label %bb.o, !noalias !397

bb.n:                                             ; preds = %.lr.ph81
  %i.az = add i64 %.sroa.0.1.i.i.i80, 1           ; 2 uses
  %i.ba = icmp eq i64 %i.az, %i.at
  br i1 %i.ba, label %.body, label %.lr.ph81

bb.o:                                             ; preds = %.lr.ph79
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %i.ay, %i.at
  br i1 %i.bc, label %.body, label %.lr.ph81

.lr.ph81:                                         ; preds = %bb.o, %bb.n
  %.sroa.0.1.i.i.i80 = phi i64 [ %i.az, %bb.n ], [ %i.ay, %bb.o ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %.sroa.0.1.i.i.i80
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.bd) #28
          to label %bb.n unwind label %bb.p, !noalias !397

bb.p:                                             ; preds = %.lr.ph81
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !404
  unreachable

bb.q:                                             ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.i, %.backedge
  %i.bg = phi i64 [ %i.eg, %.backedge ], [ 1, %.lr.ph.i ] ; 5 uses
  %.sroa.06.043.i41 = phi i64 [ %i.bg, %.backedge ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.0.044.i40 = phi i64 [ %.sroa.0.044.i.be, %.backedge ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.1, i64 %.sroa.06.043.i41 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !406
  store i64 8317987319222330741, ptr %i.d, align 8, !noalias !406
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i, align 8, !noalias !406
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i, align 8, !noalias !406
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i, align 8, !noalias !406
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i, i8 0, i64 40, i1 false), !noalias !406
  %.val.i.i.i.i.i = load i64, ptr %i.bh, align 8, !range !11, !alias.scope !405, !noalias !407, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !405, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !408
  store i64 %.val.i.i.i.i.i, ptr %i.c, align 8, !noalias !408
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !409
  store i64 %.val1.i.i.i.i.i, ptr %i.b, align 8, !noalias !409
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !409
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 63
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !411, !noalias !412, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp sgt i8 %i.bl, -1     ; 2 uses
  %i.bm = and i8 %i.bl, 127
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = load ptr, ptr %i.bi, align 8, !alias.scope !411, !noalias !412, !nonnull !6
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !411, !noalias !412
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.bq, i64 %i.bn
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, ptr %i.bo, ptr %i.bi
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i.i)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !413
  store i8 -1, ptr %i.a, align 1, !noalias !413
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !413
  %i.br = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d) #30, !noalias !406 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.br, 1      ; 2 uses
  %i.bu = zext i64 %i.bs to i128
  %i.bv = zext i64 %i.bt to i128
  %i.bw = shl nuw i128 %i.bv, 64
  %i.bx = or disjoint i128 %i.bw, %i.bu           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !406
  %i.by = mul i64 %i.bs, -1065810590584100411
  %i.bz = add i64 %i.by, %i.bt
  %i.ca = mul i64 %i.bz, -1065810590584100411     ; 2 uses
  %i.cb = call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 26) ; 2 uses
  %i.cc = load i64, ptr %i.aa, align 8, !alias.scope !414, !noalias !415, !noundef !6
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i, !prof !9

bb.r:                                             ; preds = %.noexc10
  %i.ce = invoke { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE14reserve_rehashNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i1 noundef zeroext true) #24
          to label %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i unwind label %.loopexit ; 0 uses

_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %bb.r, %.noexc10
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !416, !noalias !417, !nonnull !6, !noundef !6 ; 8 uses
  %.val5.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !416, !noalias !417, !noundef !6 ; 4 uses
  %i.cf = lshr i64 %i.cb, 57
  %i.cg = trunc nuw nsw i64 %i.cf to i8           ; 3 uses
  %i.ch = insertelement <16 x i8> poison, i8 %i.cg, i64 0
  %i.ci = shufflevector <16 x i8> %i.ch, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.cb, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i ], [ %i.dh, %bb.v ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i ], [ %.sroa.4.124.i.i.i.i.i, %bb.v ]
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i ], [ %.sroa.04.126.i.i.i.i.i, %bb.v ]
  %i.cj = phi i64 [ 0, %_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE7reserveNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECs2AodJlUx5rK_5typst.exit.i.i.i.i ], [ %i.dg, %bb.v ]
  %.sroa.0.021.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val5.i.i.i.i ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.021.i.i.i.i.i
  %.sroa.0.0.copyload.i31.i.i.i.i.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !418 ; 3 uses
  %i.cl = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i.i, %i.ci
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not32.i.i.i.i.i = icmp eq i16 %i.cm, 0
  br i1 %.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.s, %bb.t
  %.sroa.01.033.i.i.i.i.i = phi i16 [ %i.cw, %bb.t ], [ %i.cm, %bb.s ] ; 3 uses
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i.i.i.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.021.i.i.i.i.i, %i.co
  %i.cq = and i64 %i.cp, %.val5.i.i.i.i
  %i.cr = sub nsw i64 0, %i.cq
  %i.cs = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %.val2.i.i.i.i.i.i = load i128, ptr %i.ct, align 16, !noalias !419, !noundef !6
  %i.cu = icmp eq i128 %i.bx, %.val2.i.i.i.i.i.i
  br i1 %i.cu, label %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i, label %bb.t, !prof !8

._crit_edge.i.i.i.i.i:                            ; preds = %bb.t, %bb.s
  %.not12.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.u, !prof !9

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cv = add i16 %.sroa.01.033.i.i.i.i.i, -1
  %i.cw = and i16 %i.cv, %.sroa.01.033.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.cw, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.u:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cx = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.v, label %.thread28.i.i.i.i.i, !prof !9

.thread28.i.i.i.i.i:                              ; preds = %bb.u
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = add i64 %.sroa.0.021.i.i.i.i.i, %i.da
  %i.dc = and i64 %i.db, %.val5.i.i.i.i
  br label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %.thread28.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.sroa.4.125.i.i.i.i.i = phi i64 [ %i.dc, %.thread28.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.dd = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i.i.i.i, splat (i8 -1)
  %i.de = bitcast <16 x i1> %i.dd to i16
  %i.df = icmp eq i16 %i.de, 0
  br i1 %i.df, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %.thread.i.i.i.i.i, %bb.u
  %.sroa.04.126.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.u ]
  %.sroa.4.124.i.i.i.i.i = phi i64 [ %.sroa.4.125.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.u ]
  %i.dg = add i64 %i.cj, 16                       ; 2 uses
  %i.dh = add i64 %i.dg, %.sroa.0.021.i.i.i.i.i
  br label %bb.s

bb.w:                                             ; preds = %.thread.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.4.125.i.i.i.i.i
  %i.dj = load i8, ptr %i.di, align 1, !noalias !420, !noundef !6 ; 2 uses
  %i.dk = icmp sgt i8 %i.dj, -1
  br i1 %i.dk, label %bb.x, label %bb.y, !prof !9

bb.x:                                             ; preds = %bb.w
  %.val62.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !420
  %i.dl = icmp slt <16 x i8> %.val62.i.i.i.i.i.i, zeroinitializer
  %i.dm = bitcast <16 x i1> %i.dl to i16          ; 2 uses
  %.not.i23.i.i.i.i.i = icmp ne i16 %i.dm, 0
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dm, i1 true)
  %i.do = zext nneg i16 %i.dn to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i)
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.do
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !421
  br label %bb.y

._crit_edge.invoke:                               ; preds = %bb.aa, %.backedge, %.lr.ph.i
  %i.dp = phi i64 [ %.sroa.10.1, %.lr.ph.i ], [ %.sroa.10.1, %.backedge ], [ %i.eh, %bb.aa ]
  %i.dq = phi ptr [ @4, %.lr.ph.i ], [ @4, %.backedge ], [ @5, %bb.aa ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.dp, i64 noundef %.sroa.10.1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dq) #29
          to label %._crit_edge.cont unwind label %.loopexit.split-lp

._crit_edge.cont:                                 ; preds = %._crit_edge.invoke
  unreachable

_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dr = add i64 %.sroa.0.044.i40, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ds = phi i8 [ %.pre.i.i.i, %bb.x ], [ %i.dj, %bb.w ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.do, %bb.x ], [ %.sroa.4.125.i.i.i.i.i, %bb.w ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.du = and i8 %i.ds, 1
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.dx = and i64 %i.dw, %.val5.i.i.i.i
  store i8 %i.cg, ptr %i.dt, align 1, !noalias !421
  %i.dy = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store i8 %i.cg, ptr %i.dz, align 1, !noalias !421
  %i.ea = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !423, !noalias !424
  %i.eb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.dv, i64 0
  %i.ec = sub <2 x i64> %i.ea, %i.eb
  store <2 x i64> %i.ec, ptr %i.aa, align 8, !alias.scope !423, !noalias !424
  %i.ed = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i
  %i.ee = getelementptr inbounds [16 x i8], ptr %.val.i.i.i.i, i64 %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -16
  store i128 %i.bx, ptr %i.ef, align 16, !noalias !421
  %.not10.i = icmp eq i64 %.sroa.0.044.i40, 0
  br i1 %.not10.i, label %.thread, label %bb.aa

bb.z:                                             ; preds = %bb.ab, %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i
  %.sroa.0.1.i = phi i64 [ %.sroa.0.044.i40, %bb.ab ], [ %i.dr, %_RNCNvCs2AodJlUx5rK_5typst11deduplicate0B3_.exit.i ] ; 4 uses
  %exitcond55.not.i = icmp eq i64 %i.bg, %1
  br i1 %exitcond55.not.i, label %._crit_edge.i, label %.backedge

.backedge:                                        ; preds = %bb.z, %.thread
  %.sroa.0.044.i.be = phi i64 [ %.sroa.0.1.i, %bb.z ], [ 0, %.thread ]
  %i.eg = add nuw i64 %i.bg, 1
  %exitcond.not.i = icmp eq i64 %i.bg, %.sroa.10.1
  br i1 %exitcond.not.i, label %._crit_edge.invoke, label %.lr.ph

.thread:                                          ; preds = %bb.y
  %exitcond55.not.i22 = icmp eq i64 %i.bg, %1
  br i1 %exitcond55.not.i22, label %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit, label %.backedge

bb.aa:                                            ; preds = %bb.y
  %i.eh = sub i64 %.sroa.06.043.i41, %.sroa.0.044.i40 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, %.sroa.10.1
  br i1 %i.ei, label %bb.ab, label %._crit_edge.invoke

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.1, i64 %i.eh ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i64 72, i1 false), !noalias !425
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !noalias !425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.z

.loopexit:                                        ; preds = %.lr.ph, %.noexc, %.noexc8, %.noexc9, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %.loopexit, %.loopexit.split-lp, %bb.d, %bb.k, %bb.q, %bb.f
  %.sroa.10.2 = phi i64 [ %.sroa.10.1, %.loopexit ], [ %i.x, %bb.f ], [ %1, %bb.d ], [ %.sroa.10.1, %bb.k ], [ %i.ar, %bb.q ], [ %.sroa.10.1, %.loopexit.split-lp ], [ %i.ad, %bb.o ], [ %i.ad, %bb.n ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %i.y, %bb.f ], [ %0, %bb.d ], [ %.sroa.0.1, %bb.k ], [ %i.as, %bb.q ], [ %.sroa.0.1, %.loopexit.split-lp ], [ %.sroa.0.1, %bb.o ], [ %.sroa.0.1, %bb.n ]
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %i.z, %bb.f ], [ %lpad.phi.i.i.i, %bb.d ], [ %lpad.phi.i.i21.i, %bb.k ], [ %i.bf, %bb.q ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ]
  %.val6 = load ptr, ptr %i.j, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val7 = load i64, ptr %i.ek, align 8, !noundef !6
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst(ptr %.val6, i64 %.val7) #28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr %.sroa.0.2, i64 %.sroa.10.2) #28
          to label %bb.ae unwind label %bb.ad

_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit: ; preds = %.thread, %bb.m, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i, %bb.g, %._crit_edge.i, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i
  %.sroa.10.3 = phi i64 [ %.sroa.10.1, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i ], [ %.sroa.10.1, %._crit_edge.i ], [ %i.ad, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i ], [ %i.ar, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i ], [ %.sroa.10.1, %bb.g ], [ %i.ad, %bb.m ], [ %.sroa.10.1, %.thread ]
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %_RNvMs1_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE11make_uniqueCs2AodJlUx5rK_5typst.exit.i ], [ %.sroa.0.1, %._crit_edge.i ], [ %.sroa.0.1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread.i.i ], [ %i.as, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromRSBH_E4fromCs2AodJlUx5rK_5typst.exit.i31.i ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %bb.m ], [ %.sroa.0.1, %.thread ]
  %.val4 = load ptr, ptr %i.j, align 8            ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val5 = load i64, ptr %i.el, align 8, !noundef !6 ; 4 uses
  %i.em = icmp eq i64 %.val5, 0
  br i1 %i.em, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit
  %i.en = icmp slt i64 %.val5, 1152921504606846975
  call void @llvm.assume(i1 %i.en)
  %i.eo = shl i64 %.val5, 4                       ; 2 uses
  %i.ep = add i64 %i.eo, 16                       ; 2 uses
  %i.eq = add nsw i64 %.val5, 17
  %i.er = add i64 %i.eq, %i.ep                    ; 4 uses
  %i.es = icmp uge i64 %i.er, %i.ep
  %i.et = icmp ult i64 %i.er, 9223372036854775793
  call void @llvm.assume(i1 %i.es)
  call void @llvm.assume(i1 %i.et)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  %i.eu = icmp eq i64 %i.er, 0
  br i1 %i.eu, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.ev = sub nuw nsw i64 -16, %i.eo
  %i.ew = getelementptr inbounds i8, ptr %.val4, i64 %i.ev
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ew, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 16) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetoNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst.exit: ; preds = %bb.ac, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE6retainNCNvCs2AodJlUx5rK_5typst11deduplicate0EB1N_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ex = insertvalue { ptr, i64 } poison, ptr %.sroa.0.3, 0
  %i.ey = insertvalue { ptr, i64 } %i.ex, i64 %.sroa.10.3, 1
  ret { ptr, i64 } %i.ey

bb.ad:                                            ; preds = %.body
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ae:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1, i16 noundef range(i16 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [2 x i8], align 2                 ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [72 x i8], align 8                ; 47 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 33 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.7 = alloca [7 x i8], align 8             ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 10 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [2 x i8], align 2                 ; 3 uses
  store i16 %2, ptr %i.v, align 2
  %i.w = load i32, ptr %1, align 8, !range !636, !noundef !6 ; 2 uses
  %i.x = icmp ne i32 %i.w, 11
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvXsk_NtCsdaEETE4DqmE_13typst_library4diagNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9FileErrorE4from(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  %i.y = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.c, !noalias !637 ; 2 uses

bb.b:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !637
  unreachable

common.resume:                                    ; preds = %.thread105, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.c ], [ %.pn104, %.thread105 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.u) #28
          to label %common.resume unwind label %bb.b, !noalias !638

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a
  %i.ab = icmp eq i32 %i.w, 9
  %i.ac = extractvalue { i64, i64 } %i.y, 1
  %i.ad = extractvalue { i64, i64 } %i.y, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 0, ptr %i.ae, align 8
  store i64 %i.ad, ptr %i.o, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  store i64 0, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ab, label %bb.d, label %bb.df

bb.d:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.al = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.e unwind label %.thread126

.thread126:                                       ; preds = %bb.aa, %bb.e, %bb.am, %bb.cv, %bb.cu, %bb.cp, %bb.ak, %bb.n, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread105

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = invoke { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.f unwind label %.thread126 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 4 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp eq i64 %i.ap, 3
  br i1 %i.aq, label %bb.o, label %bb.p

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !639
  store ptr inttoptr (i64 16 to ptr), ptr %i.n, align 8, !noalias !639
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !noalias !639
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef range(i64 54, 56) 55)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i unwind label %bb.i, !noalias !639

bb.i:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !639, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i) #28
          to label %.thread105 unwind label %bb.j, !noalias !639

bb.j:                                             ; preds = %bb.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !639
  unreachable

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %.sroa.482.15.extract.shift = lshr i64 %i.aw, 56
  %.sroa.482.15.extract.trunc = trunc nuw i64 %.sroa.482.15.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr nonnull %i.av, i8 %.sroa.482.15.extract.trunc) #28
          to label %.thread105 unwind label %bb.l, !noalias !641, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.h
  %i.av = load ptr, ptr %i.n, align 8, !alias.scope !640, !noalias !642, !nonnull !6, !noundef !6 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !640, !noalias !642 ; 2 uses
  %scevgep.i.i.i = getelementptr nuw i8, ptr %i.av, i64 %.promoted.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %scevgep.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(55) @14, i64 range(i64 54, 56) 55, i1 false), !noalias !643
  %i.aw = add i64 %.promoted.i.i.i, 55            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !639
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.m unwind label %bb.k, !inline_history !0

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !641, !inline_history !0
  unreachable

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ay = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.az = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.az ; 4 uses
  store i64 1, ptr %i.ba, align 8, !noalias !644
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !644
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.av, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !644
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 %i.aw, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !644
  %i.bb = add i64 %i.az, 1                        ; 2 uses
  store i64 %i.bb, ptr %i.ak, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %bb.m
  %.val.i66 = phi ptr [ %i.bt, %bb.v ], [ %i.ay, %bb.m ] ; 2 uses
  %i.bc = phi i64 [ %i.bw, %bb.v ], [ %i.bb, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.bd = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v)
          to label %bb.w unwind label %.thread126 ; 9 uses

bb.o:                                             ; preds = %bb.g
  %i.be = load i16, ptr %i.ao, align 1
  %i.bf = xor i16 %i.be, 31092
  %i.bg = getelementptr i8, ptr %i.ao, i64 2
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = zext i8 %i.bh to i16
  %i.bj = xor i16 %i.bi, 112
  %i.bk = or i16 %i.bf, %i.bj
  %i.bl = icmp ne i16 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.df, label %bb.p

bb.p:                                             ; preds = %bb.g, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ao, ptr %i.t, align 8, !captures !645
  %i.bo = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ap, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.410.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst, ptr %.sroa.414.0..sroa_idx, align 8
  %i.bp = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @15, ptr noundef nonnull %i.r)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.s) #28
          to label %.thread105 unwind label %bb.dg

bb.r:                                             ; preds = %bb.p
  br i1 %i.bp, label %bb.s, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38, !prof !9

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.088.0.copyload, i8 %.sroa.590.0.copyload) #28
          to label %.thread105 unwind label %bb.u, !noalias !646, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.088.0.copyload = load ptr, ptr %i.s, align 8 ; 2 uses
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.489.0..sroa_idx, i64 7, i1 false)
  %.sroa.590.0.copyload = load i8, ptr %.sroa.410.0..sroa_idx, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef 1)
          to label %bb.v unwind label %bb.t, !inline_history !0

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !646, !inline_history !0
  unreachable

bb.v:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i38
  %i.bt = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.bu = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bu ; 5 uses
  store i64 1, ptr %i.bv, align 8, !noalias !647
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 0, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !647
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %.sroa.088.0.copyload, ptr %.sroa.585.0..sroa_idx, align 8, !noalias !647
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx86, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, i64 7, i1 false), !noalias !647
  %.sroa.787.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 31
  store i8 %.sroa.590.0.copyload, ptr %.sroa.787.0..sroa_idx, align 1, !noalias !647
  %i.bw = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bw, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.n

bb.w:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !649
  %i.bx = load i64, ptr %i.bd, align 8, !range !7, !alias.scope !648, !noalias !650, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.by, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !652
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 23
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not.i.i46 = icmp sgt i8 %i.cb, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.val46.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !653, !noalias !654 ; 5 uses
  %.val47.i.i = load i64, ptr %i.cc, align 8, !alias.scope !653, !noalias !654
  br i1 %.not.i.i46, label %bb.y, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i = icmp eq ptr %.val46.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds i8, ptr %.val46.i.i, i64 -16
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !652
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.aa, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, !prof !9

bb.aa:                                            ; preds = %bb.z
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val46.i.i) #25
          to label %.noexc48 unwind label %.thread126

.noexc48:                                         ; preds = %bb.aa
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.x, %bb.z, %bb.y
  %.sroa.06.0.i.i = phi ptr [ %.val46.i.i, %bb.z ], [ inttoptr (i64 16 to ptr), %bb.y ], [ %.val46.i.i, %bb.x ]
  store ptr %.sroa.06.0.i.i, ptr %i.k, align 8, !noalias !652
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.val47.i.i, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !652
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 39
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !653, !noalias !654, !noundef !6
  %.not44.i.i = icmp sgt i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.val.i.i47 = load ptr, ptr %i.cg, align 8, !alias.scope !653, !noalias !654 ; 5 uses
  %.val45.i.i = load i64, ptr %i.cj, align 8, !alias.scope !653, !noalias !654
  br i1 %.not44.i.i, label %bb.ab, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ab:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i47, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds i8, ptr %.val.i.i47, i64 -16
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !652
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !9

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i47) #25
          to label %.noexc.i.i unwind label %bb.ae

.noexc.i.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %.thread105 unwind label %bb.af, !noalias !652

bb.af:                                            ; preds = %bb.ae
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !652
  unreachable

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i, %bb.ac, %bb.ab
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.ab ], [ %.val.i.i47, %bb.ac ], [ %.val.i.i47, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.cp, i64 12, i1 false), !noalias !650
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !652
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %.sroa.027.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !649
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !649
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %storemerge.i = phi i64 [ 1, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %bb.w ]
  store i64 %storemerge.i, ptr %i.m, align 8, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !649
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  invoke void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %bb.ak unwind label %bb.ah, !noalias !650

bb.ah:                                            ; preds = %bb.ag
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.by, label %bb.ai, label %.thread105

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.ct)
          to label %.thread105 unwind label %bb.aj, !noalias !650

bb.aj:                                            ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !650
  unreachable

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !648
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !noalias !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !649
  %i.cw = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
          to label %bb.al unwind label %.thread126 ; 3 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.cx = load ptr, ptr %0, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !noundef !6 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !655, !noalias !656, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !655, !noalias !656, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !655, !noalias !656 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.cp, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !657
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !6, !noalias !657, !nonnull !6
  invoke void %i.df(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.j, ptr noundef nonnull %i.cx, i16 noundef range(i16 1, 0) %i.cw) #30
          to label %.noexc53 unwind label %.thread126, !inline_history !452

.noexc53:                                         ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !657
  store i16 %i.cw, ptr %i.i, align 8, !noalias !657
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 4, ptr %.sroa.41.0..sroa_idx.i, align 4, !noalias !657
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !659
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 25 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 25 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 25 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 21 uses
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 26 uses
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 14 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 40, i1 false), !noalias !659
  %i.dg = load i32, ptr %i.j, align 8, !range !5, !alias.scope !662, !noalias !663, !noundef !6 ; 7 uses
  %i.dh = icmp ne i32 %i.dg, -1                   ; 2 uses
  %i.di = zext i1 %i.dh to i64                    ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !664, !noalias !665
  %i.dj = xor i64 %i.di, 110374107243891
  %i.dk = select i1 %i.dh, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.dl = call noundef i64 @llvm.fshl.i64(i64 %i.dj, i64 8387220255154660722, i64 16)
  %i.dm = xor i64 %i.dl, %i.dk                    ; 2 uses
  %i.dn = add i64 %i.dm, -2389206912058073146     ; 2 uses
  %i.do = call noundef i64 @llvm.fshl.i64(i64 %i.dm, i64 -8882027881020349520, i64 21)
  %i.dp = xor i64 %i.do, %i.dn                    ; 2 uses
  store i64 %i.dp, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dq = add nsw i64 %i.dk, 4148644332920354933  ; 2 uses
  %i.dr = xor i64 %i.dq, -2011800273400728795     ; 3 uses
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.ds = call noundef i64 @llvm.fshl.i64(i64 %i.dq, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.ds, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !666, !noalias !665
  %i.dt = xor i64 %i.dn, %i.di                    ; 2 uses
  store i64 %i.dt, ptr %i.h, align 8, !alias.scope !664, !noalias !665
  %.not.i.i.i = icmp eq i32 %i.dg, -1
  br i1 %.not.i.i.i, label %bb.cn, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i: ; preds = %.noexc53
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.du = icmp ne i32 %i.dg, 11
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nsw i32 %i.dg, -5
  %i.dw = icmp samesign ugt i32 %i.dg, 4
  %narrow.i.i.i.i = select i1 %i.dw, i32 %i.dv, i32 6 ; 2 uses
  %i.dx = zext nneg i32 %narrow.i.i.i.i to i64    ; 2 uses
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !669, !noalias !670
  %i.dy = xor i64 %i.dp, %i.dx                    ; 3 uses
  %i.dz = add nsw i64 %i.dt, %i.dr                ; 3 uses
  %i.ea = call noundef i64 @llvm.fshl.i64(i64 %i.dr, i64 -115655853030513824, i64 13)
  %i.eb = xor i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = call noundef i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 32)
  %i.ed = add i64 %i.dy, %i.ds                    ; 2 uses
  %i.ee = call noundef i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 16)
  %i.ef = xor i64 %i.ed, %i.ee                    ; 3 uses
  %i.eg = add i64 %i.ef, %i.ec                    ; 2 uses
  %i.eh = call noundef i64 @llvm.fshl.i64(i64 %i.ef, i64 %i.ef, i64 21)
  %i.ei = xor i64 %i.eh, %i.eg                    ; 3 uses
  store i64 %i.ei, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.ej = add i64 %i.ed, %i.eb                    ; 3 uses
  %i.ek = call noundef i64 @llvm.fshl.i64(i64 %i.eb, i64 %i.eb, i64 17)
  %i.el = xor i64 %i.ej, %i.ek                    ; 7 uses
  store i64 %i.el, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.em = call noundef i64 @llvm.fshl.i64(i64 %i.ej, i64 %i.ej, i64 32) ; 3 uses
  store i64 %i.em, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !671, !noalias !670
  %i.en = xor i64 %i.eg, %i.dx                    ; 3 uses
  store i64 %i.en, ptr %i.h, align 8, !alias.scope !669, !noalias !670
  switch i32 %narrow.i.i.i.i, label %bb.cr [
    i32 0, label %bb.an
    i32 5, label %bb.bq
    i32 6, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
    i32 7, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i
  ]

bb.an:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !672, !noalias !673, !nonnull !6, !noundef !6 ; 12 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !672, !noalias !673, !noundef !6 ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  switch i64 %i.er, label %.lr.ph.preheader.split.i.split.i.i.i.i [
    i64 0, label %._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i
    i64 2, label %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  ]

.lr.ph.preheader.split.i.split.i.i.i.i:           ; preds = %bb.an
  %i.es = add i64 %i.er, -3                       ; 2 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i: ; preds = %bb.bh
  %i.et = add i64 %i.er, -1                       ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.gr
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ew = icmp eq i8 %i.ev, 47
  br i1 %i.ew, label %bb.ao, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i: ; preds = %bb.an
  %i.ex = load i8, ptr %i.ep, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.ey = icmp eq i8 %i.ex, 47
  br i1 %i.ey, label %.thread.i.i.i.i, label %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i: ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %i.ez = phi i64 [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.et, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ] ; 2 uses
  %i.fa = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %i.gr, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fb = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.012.2.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %i.fc = phi i64 [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i ]
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !674, !noalias !676
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i

bb.ao:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.begin.i.i.i.i
  %.not.i.i.i.i52 = icmp ult i64 %i.es, %.sroa.0.1.i.i.i.i.i
  br i1 %.not.i.i.i.i52, label %.thread.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = sub nuw i64 %i.gr, %.sroa.0.1.i.i.i.i.i ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.i.i.i.i
  %i.ff = add i64 %i.fd, %.sroa.012.2.i.i.i.i.i   ; 2 uses
  %i.fg = call noundef i64 @llvm.fshl.i64(i64 %i.ff, i64 %i.ff, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fe, i64 noundef %i.fd) #30, !noalias !670
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ap, %bb.ao, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i
  %i.fh = phi i64 [ %i.gr, %bb.ap ], [ %i.gr, %bb.ao ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fi = phi i64 [ %i.et, %bb.ap ], [ %i.et, %bb.ao ], [ 1, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ] ; 4 uses
  %.sroa.012.3.i.peel.i.i.i.i = phi i64 [ %i.fg, %bb.ap ], [ %.sroa.012.2.i.i.i.i.i, %bb.ao ], [ 0, %._crit_edge.loopexit.peel.begin.i.peel.begin.thread.i.i.i.i ]
  %i.fj = sub nuw i64 %i.er, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fi ; 2 uses
  %i.fl = icmp eq i64 %i.fj, 1
  %i.fm = load i8, ptr %i.fk, align 1, !alias.scope !674, !noalias !676, !noundef !6 ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 46                    ; 2 uses
  br i1 %i.fl, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.thread.i.i.i.i
  br i1 %i.fn, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.fq = icmp eq i8 %i.fp, 47
  br i1 %i.fq, label %bb.au, label %bb.at

bb.as:                                            ; preds = %.thread.i.i.i.i
  br i1 %i.fn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.sroa.024.0.i.peel.i.i.i.i = phi i64 [ 1, %bb.as ], [ 0, %bb.at ], [ 1, %bb.ar ]
  %i.fr = add i64 %.sroa.024.0.i.peel.i.i.i.i, %i.fi
  br label %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i

._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i: ; preds = %bb.au, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i
  %i.fs = phi i64 [ %i.fi, %bb.au ], [ %i.ez, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ]
  %i.ft = phi i64 [ %i.fh, %bb.au ], [ %i.fa, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 2 uses
  %i.fu = phi i8 [ %i.fm, %bb.au ], [ %.pre.i.i.i.i, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ]
  %.sroa.012.2.i.peel.i.i.i.i = phi i64 [ %.sroa.012.3.i.peel.i.i.i.i, %bb.au ], [ %i.fb, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.0.1.i.peel.i.i.i.i = phi i64 [ %i.fr, %bb.au ], [ %i.fc, %._crit_edge.loopexit.peel.begin.i.peel.begin.._crit_edge.loopexit.peel.begin.i.peel.next_crit_edge.i.i.i.i ] ; 4 uses
  %i.fv = add nuw i64 %i.ft, 2                    ; 8 uses
  %i.fw = icmp eq i8 %i.fu, 47
  br i1 %i.fw, label %bb.av, label %._crit_edge.i.i.i.i.i

._crit_edge.loopexit.peel.begin.thread.i.i.i.i.i: ; preds = %bb.an
  %i.fx = load i8, ptr %i.ep, align 1, !alias.scope !674, !noalias !676, !noundef !6
  %i.fy = icmp eq i8 %i.fx, 47
  br i1 %i.fy, label %.thread50.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.av:                                            ; preds = %._crit_edge.loopexit.peel.begin.i.peel.next.i.i.i.i
  %.not.i.i.i.i.i = icmp ult i64 %i.ft, %.sroa.0.1.i.peel.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fz = sub nuw i64 %i.fs, %.sroa.0.1.i.peel.i.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.1.i.peel.i.i.i.i
  %i.gb = add i64 %i.fz, %.sroa.012.2.i.peel.i.i.i.i ; 2 uses
  %i.gc = call noundef i64 @llvm.fshl.i64(i64 %i.gb, i64 %i.gb, i64 62)
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.fz) #30, !noalias !670
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
end_hunk_1
begin_hunk_2_@_RNvCs2AodJlUx5rK_5typst22hint_invalid_main_file:bb.a
  %i.uq = load i8, ptr %i.up, align 1, !alias.scope !712, !noalias !691, !noundef !6 ; 2 uses
  %.not.i19.i.i.i.i.i = icmp sgt i8 %i.uq, -1     ; 2 uses
  %i.ur = and i8 %i.uq, 127
  %i.us = zext nneg i8 %i.ur to i64
  %i.ut = load ptr, ptr %i.uo, align 8, !alias.scope !712, !noalias !691, !nonnull !6
  %i.uu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.uv = load i64, ptr %i.uu, align 8, !alias.scope !712, !noalias !691
  %.sroa.3.0.i20.i.i.i.i.i = select i1 %.not.i19.i.i.i.i.i, i64 %i.uv, i64 %i.us
  %.sroa.0.0.i21.i.i.i.i.i = select i1 %.not.i19.i.i.i.i.i, ptr %i.ut, ptr %i.uo
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i21.i.i.i.i.i, i64 noundef %.sroa.3.0.i20.i.i.i.i.i) #30, !noalias !657
  %i.uw = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714, !noundef !6
  %i.ux = add i64 %i.uw, 1
  store i64 %i.ux, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714
  %i.uy = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714, !noundef !6 ; 4 uses
  %i.uz = sub i64 8, %i.uy                        ; 2 uses
  %i.va = shl i64 %i.uy, 3
  %i.vb = and i64 %i.va, 56
  %i.vc = shl nuw i64 255, %i.vb
  %i.vd = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714, !noundef !6
  %i.ve = or i64 %i.vc, %i.vd                     ; 3 uses
  store i64 %i.ve, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714
  %i.vf = icmp ugt i64 %i.uz, 1
  br i1 %i.vf, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vg = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714, !noundef !6
  %i.vh = xor i64 %i.vg, %i.ve                    ; 3 uses
  %i.vi = load i64, ptr %i.h, align 8, !alias.scope !715, !noalias !714, !noundef !6
  %i.vj = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !715, !noalias !714, !noundef !6 ; 3 uses
  %i.vk = add i64 %i.vj, %i.vi                    ; 3 uses
  %i.vl = call noundef i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 13)
  %i.vm = xor i64 %i.vl, %i.vk                    ; 3 uses
  %i.vn = call noundef i64 @llvm.fshl.i64(i64 %i.vk, i64 %i.vk, i64 32)
  %i.vo = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !715, !noalias !714, !noundef !6
  %i.vp = add i64 %i.vo, %i.vh                    ; 2 uses
  %i.vq = call noundef i64 @llvm.fshl.i64(i64 %i.vh, i64 %i.vh, i64 16)
  %i.vr = xor i64 %i.vp, %i.vq                    ; 3 uses
  %i.vs = add i64 %i.vr, %i.vn                    ; 2 uses
  %i.vt = call noundef i64 @llvm.fshl.i64(i64 %i.vr, i64 %i.vr, i64 21)
  %i.vu = xor i64 %i.vt, %i.vs
  store i64 %i.vu, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !715, !noalias !714
  %i.vv = add i64 %i.vp, %i.vm                    ; 3 uses
  %i.vw = call noundef i64 @llvm.fshl.i64(i64 %i.vm, i64 %i.vm, i64 17)
  %i.vx = xor i64 %i.vv, %i.vw
  store i64 %i.vx, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !715, !noalias !714
  %i.vy = call noundef i64 @llvm.fshl.i64(i64 %i.vv, i64 %i.vv, i64 32)
  store i64 %i.vy, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !715, !noalias !714
  %i.vz = xor i64 %i.vs, %i.ve
  store i64 %i.vz, ptr %i.h, align 8, !alias.scope !713, !noalias !714
  %i.wa = add i64 %i.uy, -7
  %i.wb = shl nuw nsw i64 %i.uz, 3
  %i.wc = lshr i64 255, %i.wb
  store i64 %i.wc, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit23.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.wd = add i64 %i.uy, 1
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit23.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit23.i.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %.sink.i.i.i22.i.i.i.i.i = phi i64 [ %i.wd, %bb.cj ], [ %i.wa, %bb.ci ]
  store i64 %.sink.i.i.i22.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !713, !noalias !714
  br label %bb.cr

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i: ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.we = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.wf = load i64, ptr %i.we, align 8, !range !7, !alias.scope !672, !noalias !673, !noundef !6 ; 3 uses
  store i64 24, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !716, !noalias !670
  %i.wg = xor i64 %i.wf, %i.ei                    ; 3 uses
  %i.wh = add i64 %i.en, %i.el                    ; 3 uses
  %i.wi = call noundef i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 13)
  %i.wj = xor i64 %i.wh, %i.wi                    ; 3 uses
  %i.wk = call noundef i64 @llvm.fshl.i64(i64 %i.wh, i64 %i.wh, i64 32)
  %i.wl = add i64 %i.wg, %i.em                    ; 2 uses
  %i.wm = call noundef i64 @llvm.fshl.i64(i64 %i.wg, i64 %i.wg, i64 16)
  %i.wn = xor i64 %i.wl, %i.wm                    ; 3 uses
  %i.wo = add i64 %i.wn, %i.wk                    ; 2 uses
  %i.wp = call noundef i64 @llvm.fshl.i64(i64 %i.wn, i64 %i.wn, i64 21)
  %i.wq = xor i64 %i.wp, %i.wo
  store i64 %i.wq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !717, !noalias !670
  %i.wr = add i64 %i.wl, %i.wj                    ; 3 uses
  %i.ws = call noundef i64 @llvm.fshl.i64(i64 %i.wj, i64 %i.wj, i64 17)
  %i.wt = xor i64 %i.wr, %i.ws
  store i64 %i.wt, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !717, !noalias !670
  %i.wu = call noundef i64 @llvm.fshl.i64(i64 %i.wr, i64 %i.wr, i64 32)
  store i64 %i.wu, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !717, !noalias !670
  %i.wv = xor i64 %i.wo, %i.wf
  store i64 %i.wv, ptr %i.h, align 8, !alias.scope !716, !noalias !670
  store i64 0, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !716, !noalias !670
  %i.ww = trunc nuw i64 %i.wf to i1
  br i1 %i.ww, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.j, i64 31
  %i.wz = load i8, ptr %i.wy, align 1, !alias.scope !718, !noalias !673, !noundef !6 ; 2 uses
  %.not.i9.i.i.i.i = icmp sgt i8 %i.wz, -1        ; 2 uses
  %i.xa = and i8 %i.wz, 127
  %i.xb = zext nneg i8 %i.xa to i64
  %i.xc = load ptr, ptr %i.wx, align 8, !alias.scope !718, !noalias !673, !nonnull !6
  %i.xd = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.xe = load i64, ptr %i.xd, align 8, !alias.scope !718, !noalias !673
  %.sroa.3.0.i10.i.i.i.i = select i1 %.not.i9.i.i.i.i, i64 %i.xe, i64 %i.xb
  %.sroa.0.0.i11.i.i.i.i = select i1 %.not.i9.i.i.i.i, ptr %i.xc, ptr %i.wx
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i11.i.i.i.i, i64 noundef %.sroa.3.0.i10.i.i.i.i) #30, !noalias !657
  %i.xf = load i64, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720, !noundef !6
  %i.xg = add i64 %i.xf, 1
  store i64 %i.xg, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720
  %i.xh = load i64, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720, !noundef !6 ; 4 uses
  %i.xi = sub i64 8, %i.xh                        ; 2 uses
  %i.xj = shl i64 %i.xh, 3
  %i.xk = and i64 %i.xj, 56
  %i.xl = shl nuw i64 255, %i.xk
  %i.xm = load i64, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720, !noundef !6
  %i.xn = or i64 %i.xl, %i.xm                     ; 3 uses
  store i64 %i.xn, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720
  %i.xo = icmp ugt i64 %i.xi, 1
  br i1 %i.xo, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.xp = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720, !noundef !6
  %i.xq = xor i64 %i.xp, %i.xn                    ; 3 uses
  %i.xr = load i64, ptr %i.h, align 8, !alias.scope !721, !noalias !720, !noundef !6
  %i.xs = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !721, !noalias !720, !noundef !6 ; 3 uses
  %i.xt = add i64 %i.xs, %i.xr                    ; 3 uses
  %i.xu = call noundef i64 @llvm.fshl.i64(i64 %i.xs, i64 %i.xs, i64 13)
  %i.xv = xor i64 %i.xu, %i.xt                    ; 3 uses
  %i.xw = call noundef i64 @llvm.fshl.i64(i64 %i.xt, i64 %i.xt, i64 32)
  %i.xx = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !721, !noalias !720, !noundef !6
  %i.xy = add i64 %i.xx, %i.xq                    ; 2 uses
  %i.xz = call noundef i64 @llvm.fshl.i64(i64 %i.xq, i64 %i.xq, i64 16)
  %i.ya = xor i64 %i.xy, %i.xz                    ; 3 uses
  %i.yb = add i64 %i.ya, %i.xw                    ; 2 uses
  %i.yc = call noundef i64 @llvm.fshl.i64(i64 %i.ya, i64 %i.ya, i64 21)
  %i.yd = xor i64 %i.yc, %i.yb
  store i64 %i.yd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !721, !noalias !720
  %i.ye = add i64 %i.xy, %i.xv                    ; 3 uses
  %i.yf = call noundef i64 @llvm.fshl.i64(i64 %i.xv, i64 %i.xv, i64 17)
  %i.yg = xor i64 %i.ye, %i.yf
  store i64 %i.yg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !721, !noalias !720
  %i.yh = call noundef i64 @llvm.fshl.i64(i64 %i.ye, i64 %i.ye, i64 32)
  store i64 %i.yh, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !721, !noalias !720
  %i.yi = xor i64 %i.yb, %i.xn
  store i64 %i.yi, ptr %i.h, align 8, !alias.scope !719, !noalias !720
  %i.yj = add i64 %i.xh, -7
  %i.yk = shl nuw nsw i64 %i.xi, 3
  %i.yl = lshr i64 255, %i.yk
  store i64 %i.yl, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit13.i.i.i.i

bb.cm:                                            ; preds = %bb.ck
  %i.ym = add i64 %i.xh, 1
  br label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit13.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit13.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.sink.i.i.i12.i.i.i.i = phi i64 [ %i.ym, %bb.cm ], [ %i.yj, %bb.cl ]
  store i64 %.sink.i.i.i12.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8, !alias.scope !719, !noalias !720
  br label %bb.cr

bb.cn:                                            ; preds = %.noexc53
  %i.yn = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.yo = load ptr, ptr %i.yn, align 8, !alias.scope !723, !noalias !724, !nonnull !6, !noundef !6 ; 5 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  %i.yq = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6411atomic_load4FUNC monotonic, align 8, !noalias !725, !nonnull !6, !noundef !6
  %i.yr = invoke noundef i128 %i.yq(ptr noundef nonnull align 16 %i.yp)
          to label %.noexc.i unwind label %bb.cq, !noalias !657, !inline_history !608 ; 2 uses

.noexc.i:                                         ; preds = %bb.cn
  %i.ys = icmp eq i128 %i.yr, 0
  br i1 %i.ys, label %bb.co, label %_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst.exit.i.i.i

bb.co:                                            ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !727
  store i64 8317987319222330741, ptr %i.g, align 8, !noalias !727
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 7816392313619706465, ptr %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !727
  %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 7237128888997146499, ptr %.sroa.512.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !727
  %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 8387220255154660723, ptr %.sroa.613.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !727
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yo, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, i8 0, i64 40, i1 false), !noalias !727
  %i.yu = load i16, ptr %i.yt, align 8, !range !729, !alias.scope !730, !noalias !731, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !732
  store i16 %i.yu, ptr %i.f, align 2, !noalias !732
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 2)
          to label %.noexc7.i unwind label %bb.cq, !noalias !657

.noexc7.i:                                        ; preds = %bb.co
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !732
  invoke fastcc void @_RINvXst_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_4NodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.yv, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g) #30
          to label %.noexc8.i unwind label %bb.cq, !noalias !657

.noexc8.i:                                        ; preds = %.noexc7.i
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yo, i64 56
  %i.yx = load i64, ptr %i.yw, align 8, !range !11, !alias.scope !730, !noalias !731, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !733
  store i64 %i.yx, ptr %i.e, align 8, !noalias !733
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8)
          to label %.noexc9.i unwind label %bb.cq, !noalias !657

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !733
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yo, i64 64
  %i.yz = load ptr, ptr %i.yy, align 8, !alias.scope !730, !noalias !731, !nonnull !6, !noundef !6 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 48
  %i.zb = load ptr, ptr %i.za, align 8, !noalias !734, !nonnull !6, !noundef !6
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 56
  %i.zd = load i64, ptr %i.zc, align 8, !noalias !734, !noundef !6
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zb, i64 noundef %i.zd)
          to label %.noexc10.i unwind label %bb.cq, !noalias !657

.noexc10.i:                                       ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !735
  store i8 -1, ptr %i.d, align 1, !noalias !735
  invoke void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
          to label %.noexc11.i unwind label %bb.cq, !noalias !657

.noexc11.i:                                       ; preds = %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !735
  %i.ze = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g) #30, !noalias !727 ; 2 uses
  %i.zf = extractvalue { i64, i64 } %i.ze, 0
  %i.zg = extractvalue { i64, i64 } %i.ze, 1
  %i.zh = zext i64 %i.zf to i128
  %i.zi = zext i64 %i.zg to i128
  %i.zj = shl nuw i128 %i.zi, 64
  %i.zk = or disjoint i128 %i.zj, %i.zh           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !727
  %i.zl = load atomic ptr, ptr @_RNvNvNtNtNtCsiL9kQKV5x1F_15portable_atomic3imp9atomic1286x86_6412atomic_store4FUNC monotonic, align 8, !noalias !725, !nonnull !6, !noundef !6
  invoke void %i.zl(ptr noundef nonnull align 16 %i.yp, i128 noundef %i.zk)
          to label %_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst.exit.i.i.i unwind label %bb.cq, !noalias !657, !inline_history !608

_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %.noexc11.i, %.noexc.i
  %.sroa.0.0.i.i.i3.i.i.i = phi i128 [ %i.yr, %.noexc.i ], [ %i.zk, %.noexc11.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !736
  store i128 %.sroa.0.0.i.i.i3.i.i.i, ptr %i.c, align 16, !noalias !736
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 16) #30, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !736
  br label %bb.cr

bb.cp:                                            ; preds = %bb.al
  %i.zm = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.zn = load ptr, ptr %i.zm, align 8, !invariant.load !6, !noalias !657, !nonnull !6
  invoke void %i.zn(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.q, ptr noundef nonnull %i.cx, i16 noundef range(i16 1, 0) %i.cw) #30
          to label %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source.exit unwind label %.thread126, !inline_history !452

bb.cq:                                            ; preds = %bb.cr, %.noexc11.i, %.noexc10.i, %.noexc9.i, %.noexc8.i, %.noexc7.i, %bb.co, %bb.cn
  %i.zo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(64) %i.j) #28
          to label %.thread105 unwind label %bb.ct, !noalias !657

bb.cr:                                            ; preds = %_RINvXs2_NtCs5PEMdK7bMAG_12typst_syntax6sourceNtB6_6SourceNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13ECs2AodJlUx5rK_5typst.exit.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit13.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit8.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit23.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit18.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit13.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit10.i.i.i.i.i, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit7.i.i.i.i.i, %_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32.exit4.i.i.i.i.i, %bb.bt, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst.exit.i.i.i.i, %bb.bf, %bb.be, %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCs2AodJlUx5rK_5typst.exit.i.i.i.i
  %i.zp = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.h) #30, !noalias !659 ; 2 uses
  %i.zq = extractvalue { i64, i64 } %i.zp, 0
  %i.zr = extractvalue { i64, i64 } %i.zp, 1
  %i.zs = zext i64 %i.zq to i128
  %i.zt = zext i64 %i.zr to i128
  %i.zu = shl nuw i128 %i.zt, 64
  %i.zv = or disjoint i128 %i.zu, %i.zs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !659
  %i.zw = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.zx = load ptr, ptr %i.zw, align 8, !invariant.load !6, !noalias !657, !nonnull !6
  %i.zy = invoke noundef zeroext i1 %i.zx(ptr noundef nonnull %i.db, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.i, i128 noundef %i.zv)
          to label %bb.cs unwind label %bb.cq, !noalias !657 ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false), !noalias !655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !657
  br label %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source.exit

bb.ct:                                            ; preds = %bb.cq
  %i.zz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !657
  unreachable

_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source.exit: ; preds = %bb.cs, %bb.cp
  %i.aaa = load i32, ptr %i.q, align 8, !range !5, !noundef !6
  %i.aab = icmp eq i32 %i.aaa, -1
  br i1 %i.aab, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q)
          to label %bb.cw unwind label %.thread126

bb.cv:                                            ; preds = %_RNvXs1_NvCsdaEETE4DqmE_13typst_library1__NtB5_15___ComemoSurfaceNtB7_5World6source.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorEECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(64) %i.q)
          to label %bb.cx unwind label %.thread126

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.df

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !738
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !noalias !738
  %i.aac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.aac, align 8, !noalias !738
  call void @llvm.experimental.noalias.scope.decl(metadata !739)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef range(i64 54, 56) 54)
          to label %bb.da unwind label %bb.cy, !noalias !738

bb.cy:                                            ; preds = %bb.cx
  %i.aad = landingpad { ptr, i32 }
          cleanup
  %.val.i.i58 = load ptr, ptr %i.b, align 8, !noalias !738, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i.i58) #28
          to label %.thread105 unwind label %bb.cz, !noalias !738

bb.cz:                                            ; preds = %bb.cy
  %i.aae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !738
  unreachable

bb.da:                                            ; preds = %bb.cx
  %i.aaf = load ptr, ptr %i.b, align 8, !alias.scope !739, !noalias !740, !nonnull !6, !noundef !6 ; 3 uses
  %.promoted.i.i.i59 = load i64, ptr %i.aac, align 8, !alias.scope !739, !noalias !740 ; 2 uses
  %scevgep.i.i.i60 = getelementptr nuw i8, ptr %i.aaf, i64 %.promoted.i.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %scevgep.i.i.i60, ptr noundef nonnull readonly align 1 dereferenceable(54) @18, i64 range(i64 54, 56) 54, i1 false), !noalias !741
  %i.aag = add i64 %.promoted.i.i.i59, 54         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !738
  %.sroa.4100.15.extract.shift = lshr i64 %i.aag, 56
  %.sroa.4100.15.extract.trunc = trunc nuw i64 %.sroa.4100.15.extract.shift to i8
  %.not.i.i67 = icmp eq ptr %.val.i66, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i67, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i69, label %bb.dc

bb.db:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i69
  %i.aah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr nonnull %i.aaf, i8 %.sroa.4100.15.extract.trunc) #28
          to label %.thread105 unwind label %bb.dd, !noalias !742, !inline_history !0

bb.dc:                                            ; preds = %bb.da
  %i.aai = getelementptr i8, ptr %.val.i66, i64 -8
  %.val.i.i68 = load i64, ptr %i.aai, align 8, !noalias !742, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i69

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i69: ; preds = %bb.dc, %bb.da
  %.sroa.02.0.i.i70 = phi i64 [ %.val.i.i68, %bb.dc ], [ 0, %bb.da ]
  %i.aaj = icmp eq i64 %i.bc, %.sroa.02.0.i.i70
  %i.aak = zext i1 %i.aaj to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aj, i64 noundef %i.aak)
          to label %bb.de unwind label %bb.db, !inline_history !0

bb.dd:                                            ; preds = %bb.db
  %i.aal = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !742, !inline_history !0
  unreachable

bb.de:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i69
  %i.aam = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6
  %i.aan = load i64, ptr %i.ak, align 8, !noundef !6 ; 2 uses
  %i.aao = getelementptr inbounds nuw [32 x i8], ptr %i.aam, i64 %i.aan ; 4 uses
  store i64 1, ptr %i.aao, align 8, !noalias !743
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store i64 0, ptr %.sroa.492.0..sroa_idx, align 8, !noalias !743
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  store ptr %i.aaf, ptr %.sroa.593.0..sroa_idx, align 8, !noalias !743
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  store i64 %i.aag, ptr %.sroa.794.0..sroa_idx, align 8, !noalias !743
  %i.aap = add i64 %i.aan, 1
  store i64 %i.aap, ptr %i.ak, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.o, %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit, %bb.de, %bb.cw
  %i.aaq = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.o)
  ret { ptr, i64 } %i.aaq

bb.dg:                                            ; preds = %.thread105, %bb.q
  %i.aar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread105:                                       ; preds = %bb.db, %bb.cy, %bb.cq, %bb.ai, %bb.ah, %bb.ae, %bb.t, %bb.q, %bb.k, %bb.i, %.thread126
  %.pn104 = phi { ptr, i32 } [ %i.au, %bb.k ], [ %lpad.thr_comm, %.thread126 ], [ %i.aad, %bb.cy ], [ %i.as, %bb.i ], [ %i.bq, %bb.q ], [ %i.br, %bb.t ], [ %i.cs, %bb.ai ], [ %i.zo, %bb.cq ], [ %i.cn, %bb.ae ], [ %i.cs, %bb.ah ], [ %i.aah, %bb.db ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #28
          to label %common.resume unwind label %bb.dg
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst22warn_or_error_for_html(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %.sroa.7197 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7189 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7181 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7173 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 8             ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 12 uses
  %i.p = alloca [72 x i8], align 8                ; 4 uses
  %i.q = tail call noundef zeroext i1 @_RNvMs0_CsdaEETE4DqmE_13typst_libraryNtB5_8Features10is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i8 noundef 0)
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false)
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  store i8 -128, ptr %.sroa.473.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.m, i8 0, i64 15, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  store i8 -128, ptr %.sroa.5.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 54)
          to label %bb.v unwind label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #28
          to label %common.resume unwind label %bb.t

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.s = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.g, !noalias !767 ; 2 uses

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !767
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.d, %.body, %bb.u, %.body142, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.u, %bb.g ], [ %.pn120, %.body142 ], [ %i.bc, %bb.u ], [ %.pn, %.body ], [ %i.bf, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #28
          to label %common.resume unwind label %bb.f, !noalias !765

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.e
  %i.v = extractvalue { i64, i64 } %i.s, 1
  %i.w = extractvalue { i64, i64 } %i.s, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 0, ptr %i.x, align 8, !alias.scope !765, !noalias !766
  store i64 %i.w, ptr %i.g, align 8, !alias.scope !765, !noalias !766
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.v, ptr %i.y, align 8, !alias.scope !765, !noalias !766
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false), !alias.scope !767
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.aa, align 8, !alias.scope !765, !noalias !766
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.ab, align 8, !alias.scope !765, !noalias !766
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ac, align 8, !alias.scope !765, !noalias !766
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !765, !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.473.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.d, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.473.0..sroa_idx74, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 54)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #28
          to label %.body unwind label %bb.t

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0191.0.copyload, i8 %.sroa.5193.0.copyload) #28
          to label %.body unwind label %bb.j, !noalias !768, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %.sroa.0191.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7189)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7189, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4192.0..sroa_idx, i64 7, i1 false)
  %.sroa.5193.0.copyload = load i8, ptr %.sroa.473.0..sroa_idx74, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 1)
          to label %bb.k unwind label %bb.i, !noalias !770, !inline_history !0

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !768, !inline_history !0
  unreachable

.body:                                            ; preds = %bb.o, %bb.i, %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.am, %bb.l ], [ %i.af, %bb.i ], [ %i.an, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #28
          to label %common.resume unwind label %bb.t

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ah = load ptr, ptr %i.ac, align 8, !alias.scope !769, !noalias !770, !nonnull !6, !noundef !6 ; 3 uses
  %i.ai = load i64, ptr %i.ad, align 8, !alias.scope !769, !noalias !770, !noundef !6 ; 2 uses
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ai ; 5 uses
  store i64 1, ptr %i.aj, align 8, !noalias !769
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %.sroa.4187.0..sroa_idx, align 8, !noalias !769
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.0191.0.copyload, ptr %.sroa.5188.0..sroa_idx, align 8, !noalias !769
  %.sroa.7189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7189.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7189, i64 7, i1 false), !noalias !769
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 31
  store i8 %.sroa.5193.0.copyload, ptr %.sroa.7190.0..sroa_idx, align 1, !noalias !769
  %i.ak = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !769, !noalias !770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false)
  %.sroa.473.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.c, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.473.0..sroa_idx76, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @23, ptr %i.b, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst, ptr %.sroa.4105.0..sroa_idx, align 8
  %i.al = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @24, ptr noundef nonnull %i.b)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %.body unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  br i1 %i.al, label %bb.n, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit124, !prof !9

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #29
          to label %.noexc123 unwind label %bb.l

.noexc123:                                        ; preds = %bb.n
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit124: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.0199.0.copyload = load ptr, ptr %i.c, align 8 ; 2 uses
  %.sroa.4200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7197, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4200.0..sroa_idx, i64 7, i1 false)
  %.sroa.5201.0.copyload = load i8, ptr %.sroa.473.0..sroa_idx76, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %.not.i.i126 = icmp eq ptr %i.ah, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i126, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i128, label %bb.p

bb.o:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i128
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0199.0.copyload, i8 %.sroa.5201.0.copyload) #28
          to label %.body unwind label %bb.q, !noalias !772, !inline_history !0

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit124
  %i.ao = getelementptr i8, ptr %i.ah, i64 -8
  %.val.i.i127 = load i64, ptr %i.ao, align 8, !noalias !772, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i128

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i128: ; preds = %bb.p, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit124
  %.sroa.02.0.i.i129 = phi i64 [ %.val.i.i127, %bb.p ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit124 ]
  %i.ap = icmp eq i64 %i.ak, %.sroa.02.0.i.i129
  %i.aq = zext i1 %i.ap to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef %i.aq)
          to label %bb.r unwind label %bb.o, !noalias !773, !inline_history !0

bb.q:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !772, !inline_history !0
  unreachable

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i128
  %i.as = load ptr, ptr %i.ac, align 8, !alias.scope !771, !noalias !773, !nonnull !6, !noundef !6
  %i.at = load i64, ptr %i.ad, align 8, !alias.scope !771, !noalias !773, !noundef !6 ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %i.at ; 5 uses
  store i64 1, ptr %i.au, align 8, !noalias !771
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 0, ptr %.sroa.4195.0..sroa_idx, align 8, !noalias !771
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %.sroa.0199.0.copyload, ptr %.sroa.5196.0..sroa_idx, align 8, !noalias !771
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7197.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7197, i64 7, i1 false), !noalias !771
  %.sroa.7198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 31
  store i8 %.sroa.5201.0.copyload, ptr %.sroa.7198.0..sroa_idx, align 1, !noalias !771
  %i.av = add i64 %i.at, 1
  store i64 %i.av, ptr %i.ad, align 8, !alias.scope !771, !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7197)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.h) ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.aw, 0
  %i.ay = extractvalue { ptr, i64 } %i.aw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.s

bb.s:                                             ; preds = %bb.ao, %bb.r
  %.sroa.3.0 = phi i64 [ undef, %bb.ao ], [ %i.ay, %bb.r ]
  %.sroa.0.0 = phi ptr [ null, %bb.ao ], [ %i.ax, %bb.r ]
  %i.az = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ba = insertvalue { ptr, i64 } %i.az, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ba

bb.t:                                             ; preds = %bb.ai, %bb.ac, %.body142, %bb.y, %bb.u, %bb.l, %.body, %bb.h, %bb.d
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.u:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #28
          to label %common.resume unwind label %bb.t

bb.v:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !774)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.bd = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.x, !noalias !776 ; 2 uses

bb.w:                                             ; preds = %bb.x
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !776
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.n) #28
          to label %common.resume unwind label %bb.w, !noalias !774

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.v
  %i.bg = extractvalue { i64, i64 } %i.bd, 1
  %i.bh = extractvalue { i64, i64 } %i.bd, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store i8 1, ptr %i.bi, align 8, !alias.scope !774, !noalias !775
  store i64 %i.bh, ptr %i.o, align 8, !alias.scope !774, !noalias !775
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %i.bg, ptr %i.bj, align 8, !alias.scope !774, !noalias !775
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !776
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.bl, align 8, !alias.scope !774, !noalias !775
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.bm, align 8, !alias.scope !774, !noalias !775
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 7 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.bn, align 8, !alias.scope !774, !noalias !775
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  store i64 0, ptr %i.bo, align 8, !alias.scope !774, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.l, i8 0, i64 15, i1 false)
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.l, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.5.0..sroa_idx12, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 36)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i138 unwind label %bb.y

bb.y:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #28
          to label %.body142 unwind label %bb.t

bb.z:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i138
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0167.0.copyload, i8 %.sroa.5169.0.copyload) #28
          to label %.body142 unwind label %bb.aa, !noalias !777, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i138: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %.sroa.0167.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %.sroa.4168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4168.0..sroa_idx, i64 7, i1 false)
  %.sroa.5169.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx12, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !778)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, i64 noundef 1)
          to label %bb.ab unwind label %bb.z, !noalias !779, !inline_history !0

bb.aa:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !777, !inline_history !0
  unreachable

.body142:                                         ; preds = %bb.al, %bb.ae, %bb.z, %bb.ai, %bb.ac, %bb.y
  %.pn120 = phi { ptr, i32 } [ %i.bp, %bb.y ], [ %i.ch, %bb.ai ], [ %i.bw, %bb.ac ], [ %i.bq, %bb.z ], [ %i.bx, %bb.ae ], [ %i.ci, %bb.al ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %i.o) #28
          to label %common.resume unwind label %bb.t

bb.ab:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i138
  %i.bs = load ptr, ptr %i.bn, align 8, !alias.scope !778, !noalias !779, !nonnull !6, !noundef !6 ; 3 uses
  %i.bt = load i64, ptr %i.bo, align 8, !alias.scope !778, !noalias !779, !noundef !6 ; 2 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.bt ; 5 uses
  store i64 1, ptr %i.bu, align 8, !noalias !778
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !778
  %.sroa.5.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %.sroa.0167.0.copyload, ptr %.sroa.5.0..sroa_idx165, align 8, !noalias !778
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, i64 7, i1 false), !noalias !778
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 31
  store i8 %.sroa.5169.0.copyload, ptr %.sroa.7166.0..sroa_idx, align 1, !noalias !778
  %i.bv = add i64 %i.bt, 1                        ; 2 uses
  store i64 %i.bv, ptr %i.bo, align 8, !alias.scope !778, !noalias !779
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.k, i8 0, i64 15, i1 false)
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.k, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.5.0..sroa_idx14, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 52)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %.body142 unwind label %bb.t

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0175.0.copyload = load ptr, ptr %i.k, align 8 ; 2 uses
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7173)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7173, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4176.0..sroa_idx, i64 7, i1 false)
  %.sroa.5177.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx14, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !780)
  %.not.i.i146 = icmp eq ptr %i.bs, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i146, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i148, label %bb.af

bb.ae:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i148
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0175.0.copyload, i8 %.sroa.5177.0.copyload) #28
          to label %.body142 unwind label %bb.ag, !noalias !781, !inline_history !0

bb.af:                                            ; preds = %bb.ad
  %i.by = getelementptr i8, ptr %i.bs, i64 -8
  %.val.i.i147 = load i64, ptr %i.by, align 8, !noalias !781, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i148

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i148: ; preds = %bb.af, %bb.ad
  %.sroa.02.0.i.i149 = phi i64 [ %.val.i.i147, %bb.af ], [ 0, %bb.ad ]
  %i.bz = icmp eq i64 %i.bv, %.sroa.02.0.i.i149
  %i.ca = zext i1 %i.bz to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, i64 noundef %i.ca)
          to label %bb.ah unwind label %bb.ae, !noalias !782, !inline_history !0

bb.ag:                                            ; preds = %bb.ae
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !781, !inline_history !0
  unreachable

bb.ah:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i148
  %i.cc = load ptr, ptr %i.bn, align 8, !alias.scope !780, !noalias !782, !nonnull !6, !noundef !6 ; 3 uses
  %i.cd = load i64, ptr %i.bo, align 8, !alias.scope !780, !noalias !782, !noundef !6 ; 2 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cc, i64 %i.cd ; 5 uses
  store i64 1, ptr %i.ce, align 8, !noalias !780
  %.sroa.4171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 0, ptr %.sroa.4171.0..sroa_idx, align 8, !noalias !780
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %.sroa.0175.0.copyload, ptr %.sroa.5172.0..sroa_idx, align 8, !noalias !780
  %.sroa.7173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7173.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7173, i64 7, i1 false), !noalias !780
  %.sroa.7174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 31
  store i8 %.sroa.5177.0.copyload, ptr %.sroa.7174.0..sroa_idx, align 1, !noalias !780
  %i.cf = add i64 %i.cd, 1                        ; 2 uses
  store i64 %i.cf, ptr %i.bo, align 8, !alias.scope !780, !noalias !782
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.j, i8 0, i64 15, i1 false)
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.j, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.5.0..sroa_idx16, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @23, ptr %i.i, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs2AodJlUx5rK_5typst, ptr %.sroa.455.0..sroa_idx, align 8
  %i.cg = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @24, ptr noundef nonnull %i.i)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #28
          to label %.body142 unwind label %bb.t

bb.aj:                                            ; preds = %bb.ah
  br i1 %i.cg, label %bb.ak, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit, !prof !9

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #29
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %bb.ak
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.0183.0.copyload = load ptr, ptr %i.j, align 8 ; 2 uses
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7181)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7181, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4184.0..sroa_idx, i64 7, i1 false)
  %.sroa.5185.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx16, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %.not.i.i156 = icmp eq ptr %i.cc, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i156, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i158, label %bb.am

bb.al:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i158
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0183.0.copyload, i8 %.sroa.5185.0.copyload) #28
          to label %.body142 unwind label %bb.an, !noalias !784, !inline_history !0

bb.am:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit
  %i.cj = getelementptr i8, ptr %i.cc, i64 -8
  %.val.i.i157 = load i64, ptr %i.cj, align 8, !noalias !784, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i158

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i158: ; preds = %bb.am, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit
  %.sroa.02.0.i.i159 = phi i64 [ %.val.i.i157, %bb.am ], [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2AodJlUx5rK_5typst.exit ]
  %i.ck = icmp eq i64 %i.cf, %.sroa.02.0.i.i159
  %i.cl = zext i1 %i.ck to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, i64 noundef %i.cl)
          to label %bb.ao unwind label %bb.al, !noalias !785, !inline_history !0

bb.an:                                            ; preds = %bb.al
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !784, !inline_history !0
  unreachable

bb.ao:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i158
  %i.cn = load ptr, ptr %i.bn, align 8, !alias.scope !783, !noalias !785, !nonnull !6, !noundef !6
  %i.co = load i64, ptr %i.bo, align 8, !alias.scope !783, !noalias !785, !noundef !6 ; 2 uses
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.co ; 5 uses
  store i64 1, ptr %i.cp, align 8, !noalias !783
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 0, ptr %.sroa.4179.0..sroa_idx, align 8, !noalias !783
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %.sroa.0183.0.copyload, ptr %.sroa.5180.0..sroa_idx, align 8, !noalias !783
  %.sroa.7181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7181.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7181, i64 7, i1 false), !noalias !783
  %.sroa.7182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 31
  store i8 %.sroa.5185.0.copyload, ptr %.sroa.7182.0..sroa_idx, align 1, !noalias !783
  %i.cq = add i64 %i.co, 1
  store i64 %i.cq, ptr %i.bo, align 8, !alias.scope !783, !noalias !785
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7181)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvCs2AodJlUx5rK_5typst24warn_or_error_for_bundle(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7122 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7114 = alloca [7 x i8], align 8          ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 8             ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [72 x i8], align 8                ; 4 uses
  %i.l = tail call noundef zeroext i1 @_RNvMs0_CsdaEETE4DqmE_13typst_libraryNtB5_8Features10is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i8 noundef 1)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false)
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  store i8 -128, ptr %.sroa.354.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 66)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, i8 0, i64 15, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  store i8 -128, ptr %.sroa.4.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 29)
          to label %bb.o unwind label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %common.resume unwind label %bb.m

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.n = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.g, !noalias !803 ; 2 uses

bb.f:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !803
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.d, %.body, %bb.n, %.body93, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.p, %bb.g ], [ %.pn83, %.body93 ], [ %i.am, %bb.n ], [ %.pn, %.body ], [ %i.ap, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #28
          to label %common.resume unwind label %bb.f, !noalias !801

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.e
  %i.q = extractvalue { i64, i64 } %i.n, 1
  %i.r = extractvalue { i64, i64 } %i.n, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 0, ptr %i.s, align 8, !alias.scope !801, !noalias !802
  store i64 %i.r, ptr %i.d, align 8, !alias.scope !801, !noalias !802
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.q, ptr %i.t, align 8, !alias.scope !801, !noalias !802
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.c, i64 16, i1 false), !alias.scope !803
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.v, align 8, !alias.scope !801, !noalias !802
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.w, align 8, !alias.scope !801, !noalias !802
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.x, align 8, !alias.scope !801, !noalias !802
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  store i64 0, ptr %i.y, align 8, !alias.scope !801, !noalias !802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false)
  %.sroa.354.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.354.0..sroa_idx55, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 29)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %.body unwind label %bb.m

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0124.0.copyload, i8 %.sroa.5126.0.copyload) #28
          to label %.body unwind label %bb.j, !noalias !804, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %.sroa.0124.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7122)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7122, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4125.0..sroa_idx, i64 7, i1 false)
  %.sroa.5126.0.copyload = load i8, ptr %.sroa.354.0..sroa_idx55, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x, i64 noundef 1)
          to label %bb.k unwind label %bb.i, !noalias !806, !inline_history !0

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !804, !inline_history !0
  unreachable

.body:                                            ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.aa, %bb.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %i.d) #28
          to label %common.resume unwind label %bb.m

bb.k:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
end_hunk_2
begin_hunk_3_@_RNvCs2AodJlUx5rK_5typst24warn_or_error_for_bundle:bb.a
  store i64 %i.af, ptr %i.y, align 8, !alias.scope !805, !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7122)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ag = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.e) ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.l:                                             ; preds = %bb.aa, %bb.k
  %.sroa.3.0 = phi i64 [ undef, %bb.aa ], [ %i.ai, %bb.k ]
  %.sroa.0.0 = phi ptr [ null, %bb.aa ], [ %i.ah, %bb.k ]
  %i.aj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ak = insertvalue { ptr, i64 } %i.aj, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ak

bb.m:                                             ; preds = %bb.v, %.body93, %bb.r, %bb.n, %.body, %bb.h, %bb.d
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.n:                                             ; preds = %bb.c
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #28
          to label %common.resume unwind label %bb.m

bb.o:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.an = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef 1)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit unwind label %bb.q, !noalias !809 ; 2 uses

bb.p:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !809
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #28
          to label %common.resume unwind label %bb.p, !noalias !807

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit: ; preds = %bb.o
  %i.aq = extractvalue { i64, i64 } %i.an, 1
  %i.ar = extractvalue { i64, i64 } %i.an, 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 1, ptr %i.as, align 8, !alias.scope !807, !noalias !808
  store i64 %i.ar, ptr %i.j, align 8, !alias.scope !807, !noalias !808
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.aq, ptr %i.at, align 8, !alias.scope !807, !noalias !808
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !809
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.av, align 8, !alias.scope !807, !noalias !808
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.aw, align 8, !alias.scope !807, !noalias !808
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ax, align 8, !alias.scope !807, !noalias !808
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 5 uses
  store i64 0, ptr %i.ay, align 8, !alias.scope !807, !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.g, i8 0, i64 15, i1 false)
  %.sroa.4.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.g, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.4.0..sroa_idx10, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 36)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i89 unwind label %bb.r

bb.r:                                             ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #28
          to label %.body93 unwind label %bb.m

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i89
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0108.0.copyload, i8 %.sroa.5110.0.copyload) #28
          to label %.body93 unwind label %bb.t, !noalias !810, !inline_history !0

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i89: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst.exit
  %.sroa.0108.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4109.0..sroa_idx, i64 7, i1 false)
  %.sroa.5110.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx10, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef 1)
          to label %bb.u unwind label %bb.s, !noalias !812, !inline_history !0

bb.t:                                             ; preds = %bb.s
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !810, !inline_history !0
  unreachable

.body93:                                          ; preds = %bb.x, %bb.s, %bb.v, %bb.r
  %.pn83 = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.bg, %bb.v ], [ %i.ba, %bb.s ], [ %i.bh, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(72) %i.j) #28
          to label %common.resume unwind label %bb.m

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i89
  %i.bc = load ptr, ptr %i.ax, align 8, !alias.scope !811, !noalias !812, !nonnull !6, !noundef !6 ; 3 uses
  %i.bd = load i64, ptr %i.ay, align 8, !alias.scope !811, !noalias !812, !noundef !6 ; 2 uses
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.bd ; 5 uses
  store i64 1, ptr %i.be, align 8, !noalias !811
  %.sroa.4.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx106, align 8, !noalias !811
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %.sroa.0108.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !811
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7, i64 7, i1 false), !noalias !811
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 31
  store i8 %.sroa.5110.0.copyload, ptr %.sroa.7107.0..sroa_idx, align 1, !noalias !811
  %i.bf = add i64 %i.bd, 1                        ; 2 uses
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !811, !noalias !812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false)
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.4.0..sroa_idx12, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 52)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #28
          to label %.body93 unwind label %bb.m

bb.w:                                             ; preds = %bb.u
  %.sroa.0116.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7114)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7114, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4117.0..sroa_idx, i64 7, i1 false)
  %.sroa.5118.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx12, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %.not.i.i97 = icmp eq ptr %i.bc, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i97, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i99, label %bb.y

bb.x:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i99
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0116.0.copyload, i8 %.sroa.5118.0.copyload) #28
          to label %.body93 unwind label %bb.z, !noalias !814, !inline_history !0

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr i8, ptr %i.bc, i64 -8
  %.val.i.i98 = load i64, ptr %i.bi, align 8, !noalias !814, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i99

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i99: ; preds = %bb.y, %bb.w
  %.sroa.02.0.i.i100 = phi i64 [ %.val.i.i98, %bb.y ], [ 0, %bb.w ]
  %i.bj = icmp eq i64 %i.bf, %.sroa.02.0.i.i100
  %i.bk = zext i1 %i.bj to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ax, i64 noundef %i.bk)
          to label %bb.aa unwind label %bb.x, !noalias !815, !inline_history !0

bb.z:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !814, !inline_history !0
  unreachable

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i99
  %i.bm = load ptr, ptr %i.ax, align 8, !alias.scope !813, !noalias !815, !nonnull !6, !noundef !6
  %i.bn = load i64, ptr %i.ay, align 8, !alias.scope !813, !noalias !815, !noundef !6 ; 2 uses
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %i.bn ; 5 uses
  store i64 1, ptr %i.bo, align 8, !noalias !813
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %.sroa.4112.0..sroa_idx, align 8, !noalias !813
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %.sroa.0116.0.copyload, ptr %.sroa.5113.0..sroa_idx, align 8, !noalias !813
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7114.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7114, i64 7, i1 false), !noalias !813
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 31
  store i8 %.sroa.5118.0.copyload, ptr %.sroa.7115.0..sroa_idx, align 1, !noalias !813
  %i.bp = add i64 %i.bn, 1
  store i64 %i.bp, ptr %i.ay, align 8, !alias.scope !813, !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7114)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 576460752303423488
  %i.c = shl nuw i64 %1, 5
  %i.d = or disjoint i64 %i.c, 16                 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775799
  %narrow.i.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #26 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !9

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !6 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 576460752303423488
  %i.k = shl nuw i64 %.val.i, 5
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775799
  %narrow.i.i34 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit37, label %bb.f, !prof !8

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.d) #26 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #25
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs2AodJlUx5rK_5typst.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 72
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #26 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !9

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit37, !prof !9

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 72
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #26 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #25
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs2AodJlUx5rK_5typst.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #26 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !9

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit37, label %bb.f, !prof !8

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #26 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #25
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 3 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !6
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.32.0.copyload       ; 3 uses
  %i.h = add i64 %.sroa.23.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.23.0.copyload, i64 %.sroa.23.0.copyload, i64 13)
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.l = add i64 %i.g, %.sroa.13.0.copyload       ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 21)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = add i64 %i.l, %i.j                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 17)
  %i.t = xor i64 %i.r, %i.s                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.v = xor i64 %i.o, %i.f
  %i.w = xor i64 %i.u, 238
  %i.x = add i64 %i.v, %i.t                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 13)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = add i64 %i.q, %i.w                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.d, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.g = sub i64 %.sroa.02.0.i, %i.f
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.i = add i64 %i.f, %1                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  br i1 %i.j, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.k = load atomic i64, ptr %i.c acquire, align 8
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.i)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 4)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 16 to ptr), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.n, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.a, align 8
  %.pre4.i = load i64, ptr %i.n, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %.val3.i = load i64, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.s, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.ar, %bb.s ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.q = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store i64 %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.u = load i64, ptr %i.e, align 8, !noundef !6 ; 4 uses
  %.idx = shl nuw nsw i64 %i.u, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.not.i24 = icmp eq i64 %i.u, 0
  br i1 %.not.i24, label %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge, label %bb.k

.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge: ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit
  %.pre = load ptr, ptr %i.b, align 8
  %.pre62 = load i64, ptr %i.s, align 8
  br label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBH_8DiagSpanEE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.u)
          to label %.lr.ph unwind label %bb.t, !inline_history !816

.lr.ph:                                           ; preds = %bb.k, %.noexc26
  %.sroa.033.056 = phi ptr [ %i.w, %.noexc26 ], [ %i.t, %bb.k ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 31
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !837, !noalias !838, !noundef !6
  %.not.i.i.i.i = icmp sgt i8 %i.z, -1
  %.val.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !839, !noalias !840 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.033.056, i64 24
  %.val10.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !839, !noalias !840 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds i8, ptr %.val.i.i.i.i, i64 -16
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !841
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !9

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val.i.i.i.i) #25
          to label %.noexc30 unwind label %bb.t

.noexc30:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m, %bb.l, %.lr.ph
  %.sroa.0.0.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.l ], [ %.val.i.i.i.i, %bb.m ], [ %.val.i.i.i.i, %.lr.ph ] ; 2 uses
  %i.ae = load <2 x i64>, ptr %.sroa.033.056, align 8, !alias.scope !833, !noalias !842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.af = load i64, ptr %i.s, align 8, !alias.scope !843, !noalias !844, !noundef !6
  %.val.i27 = load ptr, ptr %i.b, align 8, !alias.scope !843, !noalias !844, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.q

bb.p:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.sroa.739.31.extract.shift = lshr i64 %.val10.i.i.i.i, 56
  %.sroa.739.31.extract.trunc = trunc nuw i64 %.sroa.739.31.extract.shift to i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs2AodJlUx5rK_5typst(ptr %.sroa.0.0.i.i.i, i8 %.sroa.739.31.extract.trunc) #28
          to label %.thread unwind label %bb.r, !noalias !844, !inline_history !832

bb.q:                                             ; preds = %bb.o
  %i.ah = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ah, align 8, !noalias !845, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.q, %bb.o
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.q ], [ 0, %bb.o ]
  %i.ai = icmp eq i64 %i.af, %.sroa.02.0.i.i
  %i.aj = zext i1 %i.ai to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.aj)
          to label %.noexc26 unwind label %bb.p, !noalias !844, !inline_history !832

bb.r:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !844, !inline_history !832
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.al = load ptr, ptr %i.b, align 8, !alias.scope !843, !noalias !844, !nonnull !6, !noundef !6 ; 2 uses
  %i.am = load i64, ptr %i.s, align 8, !alias.scope !843, !noalias !844, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 3 uses
  store <2 x i64> %i.ae, ptr %i.an, align 8, !noalias !844
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %.sroa.0.0.i.i.i, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !844
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.val10.i.i.i.i, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !844
  %i.ao = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !843, !noalias !844
  %i.ap = icmp eq ptr %i.w, %i.v
  br i1 %i.ap, label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit
  %i.aq = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.aq, label %bb.x, label %bb.v

bb.s:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  br label %common.resume

bb.t:                                             ; preds = %bb.n, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc26, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge
  %i.at = phi i64 [ %.pre62, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge ], [ %i.ao, %.noexc26 ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.noexc._RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit_crit_edge ], [ %i.al, %.noexc26 ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %i.t, i64 %i.u)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB8_6string9EcoStringNtBL_8DiagSpanEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendINtNtNtB2d_8adapters6cloned6ClonedINtNtNtB2f_5slice4iter4IterBI_EEECs2AodJlUx5rK_5typst.exit
  store ptr %i.au, ptr %0, align 8
  store i64 %i.at, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %bb.u
  ret void

.thread:                                          ; preds = %bb.p, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.as, %bb.t ], [ %i.ag, %bb.p ]
  %.val11 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %.val12 = load i64, ptr %i.s, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs2AodJlUx5rK_5typst(ptr nonnull %.val11, i64 %.val12) #28
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %.thread
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.x:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i20, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i20 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 1)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8
  %.not.i21 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i21, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre4.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i22 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  %.val3.i = load i64, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i22, i64 %.val3.i) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.thread, %bb.p, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %.thread ], [ %i.an, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre4.i, %._crit_edge.i ], [ 0, %bb.g ]
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !6 ; 5 uses
  %.idx = mul nuw nsw i64 %i.v, 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %.not.i24 = icmp eq i64 %i.v, 0
  br i1 %.not.i24, label %.noexc, label %bb.k

.noexc:                                           ; preds = %bb.k, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.y = icmp eq i64 %i.v, 0
  br i1 %i.y, label %.noexc25.thread, label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !846

.lr.ph:                                           ; preds = %.noexc, %.noexc26
  %.sroa.031.044 = phi ptr [ %i.z, %.noexc26 ], [ %i.u, %.noexc ] ; 2 uses
  invoke fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.031.044) #30
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 72 ; 2 uses
  %.pre = load i8, ptr %i.x, align 8, !range !851
  %i.aa = icmp eq i8 %.pre, 2
  br i1 %i.aa, label %.noexc25.thread, label %bb.l

bb.l:                                             ; preds = %.noexc25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.ab = load i64, ptr %i.t, align 8, !alias.scope !852, !noalias !853, !noundef !6
  %.val.i27 = load ptr, ptr %i.c, align 8, !alias.scope !852, !noalias !853, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i27, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.n

bb.m:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) #28
          to label %.thread unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.val.i27, i64 -8
  %.val.i.i = load i64, ptr %i.ad, align 8, !noalias !854, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.n, %bb.l
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.n ], [ 0, %bb.l ]
  %i.ae = icmp eq i64 %i.ab, %.sroa.02.0.i.i
  %i.af = zext i1 %i.ae to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.af)
          to label %.noexc26 unwind label %bb.m, !noalias !853, !inline_history !850

bb.o:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !853, !inline_history !850
  unreachable

.noexc26:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ah = load ptr, ptr %i.c, align 8, !alias.scope !852, !noalias !853, !nonnull !6, !noundef !6
  %i.ai = load i64, ptr %i.t, align 8, !alias.scope !852, !noalias !853, !noundef !6 ; 2 uses
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.ak = add i64 %i.ai, 1
  store i64 %i.ak, ptr %i.t, align 8, !alias.scope !852, !noalias !853
  %i.al = icmp eq ptr %i.z, %i.w
  br i1 %i.al, label %.noexc25.thread, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit
  %i.am = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.am, label %bb.t, label %bb.r

bb.p:                                             ; preds = %.noexc25.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %0, align 8
  store i64 %i.ap, ptr %i.f, align 8
  br label %common.resume

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc25.thread:                                  ; preds = %.noexc26, %.noexc25, %.noexc
  %i.ao = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ap = load i64, ptr %i.t, align 8, !noundef !6 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %i.u, i64 %i.v)
          to label %bb.q unwind label %bb.p

bb.q:                                             ; preds = %.noexc25.thread
  store ptr %i.ao, ptr %0, align 8
  store i64 %i.ap, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %bb.q
  ret void

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %.val12 = load i64, ptr %i.t, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs2AodJlUx5rK_5typst(ptr nonnull %.val11, i64 %.val12) #28
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %.thread
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.t:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %.val10 = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.not.i = icmp eq ptr %.val10, inttoptr (i64 16 to ptr) ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.val10, i64 -16
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %.val10, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.h = sub i64 %.sroa.02.0.i, %i.g
  %i.i = icmp ugt i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit
  %i.j = add i64 %i.g, %1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit, %bb.e
  %.sroa.0.0 = phi i64 [ %..i18, %bb.e ], [ %.sroa.02.0.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit ] ; 4 uses
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit: ; preds = %bb.d
  %i.l = load atomic i64, ptr %i.d acquire, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = shl i64 %.sroa.02.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.j)
  %..i18 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 8)
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
  unreachable

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  %.not.i19 = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not.i19, label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %.sroa.0.0)
          to label %._crit_edge.i unwind label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8
  %.pre3.i = load i64, ptr %i.o, align 8
  br label %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  %.val.i20 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val.i20) #28
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.m, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.i ], [ %lpad.phi, %bb.p ], [ %i.ai, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit: ; preds = %bb.g, %._crit_edge.i
  %i.r = phi i64 [ %.pre3.i, %._crit_edge.i ], [ 0, %bb.g ] ; 2 uses
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ inttoptr (i64 16 to ptr), %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.s, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store i64 %i.r, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.v = load i64, ptr %i.f, align 8, !noundef !6 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %.not.i22 = icmp eq i64 %i.v, 0
  br i1 %.not.i22, label %._crit_edge, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.k
  %.pre45.pre = load ptr, ptr %i.c, align 8
  %.pre46.pre = load i64, ptr %i.t, align 8
  br label %.lr.ph

bb.k:                                             ; preds = %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.v)
          to label %.lr.ph.preheader unwind label %.loopexit.split-lp, !inline_history !855

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc23
  %.val.i26 = phi ptr [ %i.ad, %.noexc23 ], [ %.pre45.pre, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi i64 [ %i.ag, %.noexc23 ], [ %.pre46.pre, %.lr.ph.preheader ]
  %.sroa.031.043 = phi ptr [ %i.y, %.noexc23 ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.043, i64 1 ; 2 uses
  %i.z = load i8, ptr %.sroa.031.043, align 1, !alias.scope !863, !noalias !864, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %.not.i.i27 = icmp eq ptr %.val.i26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i27, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %.val.i26, i64 -8
  %.val.i.i = load i64, ptr %i.aa, align 8, !noalias !865, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i: ; preds = %bb.l, %.lr.ph
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.l ], [ 0, %.lr.ph ]
  %i.ab = icmp eq i64 %i.x, %.sroa.02.0.i.i
  %i.ac = zext i1 %i.ab to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef %i.ac)
          to label %.noexc23 unwind label %.loopexit, !inline_history !862

.noexc23:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %i.ad = load ptr, ptr %i.c, align 8, !alias.scope !865, !nonnull !6, !noundef !6 ; 3 uses
  %i.ae = load i64, ptr %i.t, align 8, !alias.scope !865, !noundef !6 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.z, ptr %i.af, align 1
  %i.ag = add i64 %i.ae, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !865
  %.not = icmp eq ptr %i.y, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread: ; preds = %bb.d, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit
  %i.ah = icmp ugt i64 %.sroa.0.0, %.sroa.02.0.i
  br i1 %i.ah, label %bb.r, label %bb.o

bb.m:                                             ; preds = %bb.n, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  br label %common.resume

._crit_edge:                                      ; preds = %.noexc23, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit
  %i.aj = phi i64 [ %i.r, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit ], [ %i.ag, %.noexc23 ] ; 2 uses
  %i.ak = phi ptr [ %i.s, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVechE13with_capacityCs2AodJlUx5rK_5typst.exit ], [ %i.ad, %.noexc23 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, inttoptr (i64 16 to ptr)
  %i.al = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  br i1 %.not.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %._crit_edge
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8
  %.not.i.i = icmp eq i64 %i.am, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = getelementptr i8, ptr %i.u, i64 -8
  %.val.i.i.i = load i64, ptr %i.an, align 8, !noundef !6 ; 2 uses
  %narrow.i.i.i.i = icmp ult i64 %.val.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i, label %bb.n, !prof !8

bb.n:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc24 unwind label %bb.m

.noexc24:                                         ; preds = %bb.n
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i
  %i.ao = add nuw nsw i64 %.val.i.i.i, 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.al, ptr %i.ap, align 8
  store i64 8, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ao, ptr %i.aq, align 8
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc25 unwind label %bb.m

.noexc25:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit: ; preds = %.noexc25, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i, %._crit_edge
  store ptr %i.ak, ptr %0, align 8
  store i64 %i.aj, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst.exit
  ret void

.loopexit:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val11 = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val11) #28
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.r:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvMs5_BL_INtBL_6EcoVechE9is_unique0ECs2AodJlUx5rK_5typst.exit.thread
  tail call fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i64 noundef %.sroa.0.0)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXCs2AodJlUx5rK_5typstNtCsdaEETE4DqmE_13typst_library7LibraryNtB2_10LibraryExt7builder(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_3
begin_hunk_4_@_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write:bb.a
bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !882, !noalias !880
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !882, !noalias !880
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !882, !noalias !880, !noundef !6
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !880, !noalias !881, !noundef !6
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !880, !noalias !881
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !880, !noalias !881
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !880, !noalias !881
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !883, !noalias !881
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !883, !noalias !881
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !880, !noalias !881, !noundef !6
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !884, !noalias !881, !noundef !6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !884, !noalias !881, !noundef !6 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !884, !noalias !881, !noundef !6
  %i.ay = add i64 %i.ax, %i.ao                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.ba = xor i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = add i64 %i.ba, %i.av                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 21)
  %i.bd = xor i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.am, align 8, !alias.scope !884, !noalias !881
  %i.be = add i64 %i.ay, %i.au                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bg = xor i64 %i.be, %i.bf
  store i64 %i.bg, ptr %i.aq, align 8, !alias.scope !884, !noalias !881
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  store i64 %i.bh, ptr %i.aw, align 8, !alias.scope !884, !noalias !881
  %i.bi = xor i64 %i.bb, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !880, !noalias !881
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !880, !noalias !881
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !883, !noalias !881
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !883, !noalias !881
  store i64 %i.da, ptr %0, align 8, !alias.scope !880, !noalias !881
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !885, !noalias !880
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !885, !noalias !880
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !885, !noalias !880, !noundef !6
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i

_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !880, !noalias !881
  br label %_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cy, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cv, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !881, !noalias !880 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.co = xor i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.cq = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cs = xor i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = add i64 %i.cs, %i.cp                    ; 2 uses
  %i.cu = tail call noundef i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 21)
  %i.cv = xor i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cy = xor i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32) ; 2 uses
  %i.da = xor i64 %i.ct, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs2AodJlUx5rK_5typst.exit: ; preds = %bb.j, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtCs83m0le5ggt2_9siphasher6sip1289u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !880, !noalias !881
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsE_NtCsdaEETE4DqmE_13typst_library4diagNtB5_16SourceDiagnosticNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !range !10, !noundef !6
  %i.d = load <2 x i64>, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  %.not = icmp sgt i8 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val22 = load ptr, ptr %i.e, align 8           ; 5 uses
  %.val23 = load i64, ptr %i.h, align 8
  br i1 %.not, label %bb.b, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.val22, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %.val22, i64 -16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val22) #25
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit: ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.06.0 = phi ptr [ %.val22, %bb.c ], [ inttoptr (i64 16 to ptr), %bb.b ], [ %.val22, %bb.a ]
  store ptr %.sroa.06.0, ptr %i.a, align 8
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.val23, ptr %.sroa.58.0..sroa_idx9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val24 = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i64, ptr %i.m, align 8           ; 3 uses
  %.not.i.i28 = icmp eq ptr %.val24, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i28, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.n = getelementptr inbounds i8, ptr %.val24, i64 -16
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.i, !prof !9

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val24, i64 noundef %.val25) #25
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.q, %bb.h ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %bb.o unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.e, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs2AodJlUx5rK_5typst.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val26 = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val27 = load i64, ptr %i.s, align 8           ; 2 uses
  %.not.i.i29 = icmp eq ptr %.val26, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i29, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds i8, ptr %.val26, i64 -16
  %i.u = atomicrmw add ptr %i.t, i64 1 monotonic, align 8
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB4_6string9EcoStringNtBO_8DiagSpanEECs2AodJlUx5rK_5typst(ptr noundef nonnull %.val26, i64 noundef %.val27) #25
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs2AodJlUx5rK_5typst(ptr nonnull %.val24, i64 %.val25) #28
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
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCs3oUPovFnLWP_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.d = icmp samesign ult i32 %1, 128
  %.sink2.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %.sink2.i.i.sroa.gep1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %.sink2.i.i.sroa.gep2.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !901
  store i32 0, ptr %i.c, align 4, !noalias !901
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = or disjoint i8 %i.g, -64
  store i8 %i.q, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = icmp samesign ult i32 %1, 65536
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = or disjoint i8 %i.k, -32
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

bb.f:                                             ; preds = %bb.d
  store i8 %i.p, ptr %i.c, align 4, !alias.scope !902, !noalias !901
  store i8 %i.m, ptr %.sink2.i.i.sroa.gep.i, align 1, !alias.scope !902, !noalias !901
  store i8 %i.i, ptr %.sink2.i.i.sroa.gep1.i, align 2, !alias.scope !902, !noalias !901
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i: ; preds = %bb.f, %bb.e, %bb.c
  %.sroa.0.0.i.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep.i, %bb.c ], [ %.sink2.i.i.sroa.gep1.i, %bb.e ], [ %.sink2.i.i.sroa.gep2.i, %bb.f ]
  %i.t = trunc i32 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  store i8 %i.v, ptr %.sink2.i.i.sroa.phi.i, align 1, !alias.scope !902, !noalias !901
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !901
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.g:                                             ; preds = %bb.a
  %i.w = trunc nuw nsw i32 %1 to i8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !904, !noundef !6 ; 3 uses
  %.not.i.i = icmp sgt i8 %i.y, -1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !906, !noundef !6
  %.val.i.i.i = load ptr, ptr %0, align 8, !alias.scope !906, !nonnull !6, !noundef !6 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !906, !noundef !6
  br label %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i

_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i = phi i64 [ %.val.i.i.i.i, %bb.i ], [ 0, %bb.h ]
  %i.ac = icmp eq i64 %i.aa, %.sroa.02.0.i.i.i.i
  %i.ad = zext i1 %i.ac to i64
  tail call fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ad), !inline_history !894
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !906, !nonnull !6, !noundef !6
  %i.af = load i64, ptr %i.z, align 8, !alias.scope !906, !noundef !6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 %i.w, ptr %i.ag, align 1, !noalias !906
  %i.ah = add i64 %i.af, 1
  store i64 %i.ah, ptr %i.z, align 8, !alias.scope !906
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.j:                                             ; preds = %bb.g
  %i.ai = and i8 %i.y, 127                        ; 3 uses
  %i.aj = icmp samesign ult i8 %i.ai, 15
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !904
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !907
  %i.ak = tail call noundef align 8 dereferenceable_or_null(46) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 46, i64 noundef 8) #26, !noalias !907 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc33.i.i, label %bb.p, !prof !9

.noexc33.i.i:                                     ; preds = %bb.k
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 46) #25, !noalias !904
  unreachable

common.resume.i.i:                                ; preds = %bb.t, %bb.m
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.bo, %bb.t ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.l:                                             ; preds = %bb.j
  %i.am = zext nneg i8 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  store i8 %i.w, ptr %i.an, align 1, !alias.scope !904
  %i.ao = add nsw i8 %i.y, 1
  %i.ap = or i8 %i.ao, -128
  store i8 %i.ap, ptr %i.x, align 1, !alias.scope !904
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.m:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.be, ptr %0, align 8, !alias.scope !904
  store i64 %i.bh, ptr %i.bc, align 8, !alias.scope !904
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.b, align 8, !noalias !904, !nonnull !6, !noundef !6 ; 3 uses
  %i.as = load i64, ptr %i.az, align 8, !noalias !904, !noundef !6 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 8 dereferenceable(16) %0, i64 %i.ba, i1 false)
  %i.au = add i64 %i.as, %i.ba                    ; 2 uses
  store i64 %i.au, ptr %i.az, align 8, !noalias !904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %.not.i.i23.i.i = icmp eq ptr %i.ar, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i23.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %i.ar, i64 -8
  %.val.i.i24.i.i = load i64, ptr %i.av, align 8, !noalias !909, !noundef !6
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.sroa.02.0.i.i25.i.i = phi i64 [ %.val.i.i24.i.i, %bb.o ], [ 0, %bb.n ]
  %i.aw = icmp eq i64 %i.au, %.sroa.02.0.i.i25.i.i
  %i.ax = zext i1 %i.aw to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.ax)
          to label %bb.q unwind label %bb.t, !noalias !904, !inline_history !894

bb.p:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %i.ak, align 8, !noalias !907
  %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 30, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx.i.i.i, align 8, !noalias !907
  store ptr %i.ay, ptr %i.b, align 8, !noalias !904
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.az, align 8, !noalias !904
  %i.ba = zext nneg i8 %i.ai to i64               ; 3 uses
  %i.bb = load ptr, ptr %0, align 8, !alias.scope !910 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !910
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b, i64 noundef %i.ba)
          to label %bb.n unwind label %bb.t, !noalias !904

bb.q:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.be = load ptr, ptr %i.b, align 8, !alias.scope !908, !noalias !904, !nonnull !6, !noundef !6 ; 3 uses
  %i.bf = load i64, ptr %i.az, align 8, !alias.scope !908, !noalias !904, !noundef !6 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  store i8 %i.w, ptr %i.bg, align 1, !noalias !909
  %i.bh = add i64 %i.bf, 1                        ; 2 uses
  %.not.i.i27.i.i = icmp sgt i64 %i.bd, -1
  br i1 %.not.i.i27.i.i, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, inttoptr (i64 16 to ptr)
  %i.bi = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8, !noalias !904
  %.not.i.i.i.i.i = icmp eq i64 %i.bj, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !904
  %i.bk = getelementptr i8, ptr %i.bb, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !904, !noundef !6 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #25
          to label %.noexc.i.i unwind label %bb.m, !noalias !904

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  %i.bl = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bi, ptr %i.bm, align 8, !noalias !904
  store i64 8, ptr %i.a, align 8, !noalias !904
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !noalias !904
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc28.i.i unwind label %bb.m, !noalias !904

.noexc28.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs2AodJlUx5rK_5typst.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !904
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i: ; preds = %.noexc28.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs2AodJlUx5rK_5typst.exit.i.i.i.i.i, %bb.r, %bb.q
  store ptr %i.be, ptr %0, align 8, !alias.scope !904
  store i64 %i.bh, ptr %i.bc, align 8, !alias.scope !904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !904
  br label %_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit

bb.t:                                             ; preds = %bb.p, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs2AodJlUx5rK_5typst.exit.i.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.val20.i.i = load ptr, ptr %i.b, align 8, !noalias !904, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs2AodJlUx5rK_5typst(ptr nonnull %.val20.i.i) #28
          to label %common.resume.i.i unwind label %bb.u, !noalias !904

bb.u:                                             ; preds = %bb.t
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !904
  unreachable

_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE4pushCs2AodJlUx5rK_5typst.exit.i.i, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs2AodJlUx5rK_5typst.exit.i.i
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 8 uses
  %i.b = alloca [88 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr inttoptr (i64 16 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !938
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  store i64 0, ptr %i.b, align 8, !alias.scope !940, !noalias !941
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !940, !noalias !941
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !alias.scope !942, !noalias !937
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE7reserveCs2AodJlUx5rK_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, i64 noundef 1)
          to label %bb.b unwind label %bb.i, !noalias !943

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !938
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !944, !noalias !945, !noundef !6 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !944, !noalias !945 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !946, !noalias !938 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !937, !noalias !943, !nonnull !6
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !937, !noalias !943 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !937
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !938
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !937
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !937, !noalias !943
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs2AodJlUx5rK_5typst.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
end_hunk_4
begin_hunk_5_@llvm.lifetime.end.p0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTouEE14reserve_rehashNCINvNtB8_3map11make_hasherouNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE0ECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i1 noundef zeroext) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usize(ptr noalias nofree noundef align 8 dereferenceable(72), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsB_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_13NativeRuleMap3new(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7tN9tvpkfrg_12typst_layout5rules8register(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs9gmjTwvRRSu_10typst_html5rules8register(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath14with_extension(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs5cbCQMMIObr_10typst_eval11eval_string(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noundef nonnull align 16, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCsibhcYuwTAtB_13typst_realize7realize(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef range(i64 0, 5), ptr, ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef align 16 dereferenceable(64), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(200), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i128 noundef, ptr noundef align 16, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvCs9gmjTwvRRSu_10typst_html6module(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_mathml_body(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs9gmjTwvRRSu_10typst_html5rules16html_span_filled(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsk_NtCsdaEETE4DqmE_13typst_library4diagNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_9FileErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs3_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_11VirtualPath9extension(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i16 1, 0) i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs0_CsdaEETE4DqmE_13typst_libraryNtB5_8Features10is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCsdaEETE4DqmE_13typst_library6engineNtB5_4Sink4warn(ptr noalias nofree noundef align 8 dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder13from_routines(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_CsdaEETE4DqmE_13typst_libraryNtB4_14LibraryBuilder5build(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(none) dereferenceable(216), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEE9drop_slowB1u_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtB2_12StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noinline }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }
attributes #29 = { noinline noreturn }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{i32 -1, i32 13}
!6 = !{}
!7 = !{i64 0, i64 2}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 1, i64 0}
!12 = !{i64 8}
!13 = distinct !{!13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst"}
!14 = distinct !{!14, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6source6SourceECs2AodJlUx5rK_5typst: argument 0"}
!15 = distinct !{!15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEECs2AodJlUx5rK_5typst"}
!16 = distinct !{!16, !15, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEECs2AodJlUx5rK_5typst: argument 0"}
!17 = distinct !{!17, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst"}
!18 = distinct !{!18, !17, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs2AodJlUx5rK_5typst: argument 0"}
!19 = distinct !{!19, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorECs2AodJlUx5rK_5typst"}
!20 = distinct !{!20, !19, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag9FileErrorECs2AodJlUx5rK_5typst: argument 0"}
!21 = distinct !{!21, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst"}
!22 = distinct !{!22, !21, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst: argument 0"}
!23 = distinct !{!23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!24 = distinct !{!24, !23, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!25 = distinct !{!25, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!26 = distinct !{!26, !25, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!27 = distinct !{!27, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!28 = distinct !{!28, !27, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!29 = distinct !{!29, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag12PackageErrorECs2AodJlUx5rK_5typst"}
!30 = distinct !{!30, !29, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag12PackageErrorECs2AodJlUx5rK_5typst: argument 0"}
!31 = distinct !{!31, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst"}
!32 = distinct !{!32, !31, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst: argument 0"}
!33 = distinct !{!33, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!34 = distinct !{!34, !33, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!35 = distinct !{!35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst"}
!36 = distinct !{!36, !35, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst: argument 0"}
!37 = distinct !{!37, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!38 = distinct !{!38, !37, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!39 = distinct !{!39, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst"}
!40 = distinct !{!40, !39, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst: argument 0"}
!41 = distinct !{!41, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!42 = distinct !{!42, !41, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!43 = !{!14}
!44 = !{!16}
!45 = !{!18}
!46 = !{!18, !16, !14}
!47 = !{!20}
!48 = !{!22}
!49 = !{!22, !20}
!50 = !{!24}
!51 = !{!24, !22, !20}
!52 = !{!26, !20}
!53 = !{!28, !20}
!54 = !{!30}
!55 = !{!32}
!56 = !{!32, !30, !20}
!57 = !{!34}
!58 = !{!34, !32, !30, !20}
!59 = !{!36}
!60 = !{!36, !30, !20}
!61 = !{!38}
!62 = !{!38, !36, !30, !20}
!63 = !{!40}
!64 = !{!40, !30, !20}
!65 = !{!42}
!66 = !{!42, !40, !30, !20}
!67 = distinct !{!67, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!68 = distinct !{!68, !67, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst"}
!71 = distinct !{!71, !70, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointECs2AodJlUx5rK_5typst: argument 0"}
!72 = distinct !{!72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!73 = distinct !{!73, !72, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst"}
!75 = distinct !{!75, !74, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs2AodJlUx5rK_5typst: argument 0"}
!76 = distinct !{!76, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!77 = distinct !{!77, !76, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!78 = distinct !{!78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!79 = distinct !{!79, !78, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!80 = distinct !{!80, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!81 = distinct !{!81, !80, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!82 = !{!71}
!83 = !{i64 0, i64 5}
!84 = !{!73}
!85 = !{!73, !71}
!86 = !{!75}
!87 = !{!77}
!88 = !{!77, !75, !71}
!89 = !{!79}
!90 = !{!79, !71}
!91 = !{!81}
!92 = !{!81, !71}
!93 = distinct !{!93, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst"}
!94 = distinct !{!94, !93, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs2AodJlUx5rK_5typst: argument 0"}
!95 = distinct !{!95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!96 = distinct !{!96, !95, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!97 = distinct !{!97, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!98 = distinct !{!98, !97, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!99 = distinct !{!99, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!100 = distinct !{!100, !99, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!101 = !{!94}
!102 = !{!96, !94}
!103 = !{!98, !94}
!104 = !{!100, !94}
!105 = distinct !{!105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst"}
!106 = distinct !{!106, !105, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs2AodJlUx5rK_5typst: argument 0"}
!107 = !{!106}
!108 = distinct !{!108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst"}
!109 = distinct !{!109, !108, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst: argument 0"}
!110 = !{!109}
!111 = distinct !{!111, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst"}
!112 = distinct !{!112, !111, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst: argument 0"}
!113 = distinct !{!113, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs2AodJlUx5rK_5typst"}
!114 = distinct !{!114, !113, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs2AodJlUx5rK_5typst: argument 0"}
!115 = distinct !{!115, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst"}
!116 = distinct !{!116, !115, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs2AodJlUx5rK_5typst: argument 0"}
!117 = distinct !{!117, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst"}
!118 = distinct !{!118, !117, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst: argument 0"}
!119 = distinct !{!119, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst"}
!120 = distinct !{!120, !119, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs2AodJlUx5rK_5typst: argument 0"}
!121 = distinct !{!121, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst"}
!122 = distinct !{!122, !121, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs2AodJlUx5rK_5typst: argument 0"}
!123 = !{!112}
!124 = !{!114}
!125 = !{!116}
!126 = !{!116, !114, !112}
!127 = !{!122, !120, !118, !116, !114, !112}
!128 = distinct !{!128, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!129 = distinct !{!129, !128, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!130 = distinct !{!130, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!131 = distinct !{!131, !130, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!132 = !{!129}
!133 = !{!131}
!134 = distinct !{!134, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst"}
!135 = distinct !{!135, !134, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs2AodJlUx5rK_5typst: argument 0"}
!136 = !{!135}
!137 = distinct !{!137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst"}
!138 = distinct !{!138, !137, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs2AodJlUx5rK_5typst: argument 0"}
!139 = distinct !{!139, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1z_7target_6TargetENtNtNtB1z_6styles4rule14NativeShowRuleEECs2AodJlUx5rK_5typst"}
!140 = distinct !{!140, !139, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1z_7target_6TargetENtNtNtB1z_6styles4rule14NativeShowRuleEECs2AodJlUx5rK_5typst: argument 0"}
!141 = !{!138}
!142 = !{!140}
!143 = !{!140, !138}
!144 = distinct !{!144, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!145 = distinct !{!145, !144, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!146 = distinct !{!146, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!147 = distinct !{!147, !146, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!148 = distinct !{!148, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!149 = distinct !{!149, !148, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!150 = distinct !{!150, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!151 = distinct !{!151, !150, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!152 = distinct !{!152, !146, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 1"}
!153 = distinct !{!153, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!154 = distinct !{!154, !153, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!155 = distinct !{!155, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!156 = distinct !{!156, !155, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!157 = distinct !{!157, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!158 = distinct !{!158, !157, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!159 = distinct !{!159, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8"}
!160 = distinct !{!160, !159, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8: argument 0"}
!161 = distinct !{!161, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst"}
!162 = distinct !{!162, !161, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writehECs2AodJlUx5rK_5typst: argument 0"}
!163 = distinct !{!163, !157, !"_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 1"}
!164 = distinct !{!164, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!165 = distinct !{!165, !164, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!166 = distinct !{!166, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!167 = distinct !{!167, !166, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!168 = distinct !{!168, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!169 = distinct !{!169, !168, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!170 = distinct !{!170, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!171 = distinct !{!171, !170, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!172 = distinct !{!172, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!173 = distinct !{!173, !172, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!174 = distinct !{!174, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!175 = distinct !{!175, !174, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!176 = distinct !{!176, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!177 = distinct !{!177, !176, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!178 = distinct !{!178, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32"}
!179 = distinct !{!179, !178, !"_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u32: argument 0"}
!180 = distinct !{!180, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst"}
!181 = distinct !{!181, !180, !"_RINvMs6_NtCs83m0le5ggt2_9siphasher6sip128INtB6_6HasherNtB6_11Sip13RoundsE11short_writemECs2AodJlUx5rK_5typst: argument 0"}
!182 = distinct !{!182, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds"}
!183 = distinct !{!183, !182, !"_RNvXse_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8c_rounds: argument 0"}
!184 = !{!145}
!185 = !{!151, !149, !147}
!186 = !{!152}
!187 = !{!154, !151, !149, !147}
!188 = !{!156}
!189 = !{!162, !160, !158}
!190 = !{!163}
!191 = !{!165, !162, !160, !158}
!192 = !{!169, !167}
!193 = !{!171, !169, !167}
!194 = !{!175, !173}
!195 = !{!177, !175, !173}
!196 = !{!181, !179}
!197 = !{!183, !181, !179}
!198 = distinct !{!198, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!199 = distinct !{!199, !198, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!200 = distinct !{!200, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst"}
!201 = distinct !{!201, !200, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 1"}
!202 = distinct !{!202, !200, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs2AodJlUx5rK_5typst: argument 0"}
!203 = distinct !{!203, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst"}
!204 = distinct !{!204, !203, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst: argument 0"}
!205 = distinct !{!205, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst"}
!206 = distinct !{!206, !205, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst: argument 0"}
!207 = distinct !{!207, !"_RINvXsy_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_9InnerNodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst"}
!208 = distinct !{!208, !207, !"_RINvXsy_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_9InnerNodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst: argument 0"}
!209 = distinct !{!209, !207, !"_RINvXsy_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_9InnerNodeNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs2AodJlUx5rK_5typst: argument 1"}
!210 = distinct !{null}
!211 = distinct !{!211, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst"}
!212 = distinct !{!212, !211, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs2AodJlUx5rK_5typst: argument 0"}
end_hunk_5

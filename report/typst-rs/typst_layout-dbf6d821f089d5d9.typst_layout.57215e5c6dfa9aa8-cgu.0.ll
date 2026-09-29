Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.ac = add i64 %.sroa.0.1.i4.i, 1              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val.i10.i = load ptr, ptr %i.ad, align 8, !alias.scope !5002 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 31
  %.val7.i.i = load i8, ptr %i.ae, align 1, !alias.scope !5002, !noundef !41
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !5001
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.af = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !5004
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.ag, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  fence acquire, !noalias !5001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5004
  %i.ah = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !5004, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %bb.i, !prof !43

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.af, ptr %i.z, align 8, !noalias !5004
  store i64 8, ptr %i.a, align 8, !noalias !5004
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !5004
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5004
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.aj = icmp eq i64 %i.ac, %.8.val
  br i1 %i.aj, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5001
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.j:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 576460752303423488
  %i.f = shl nuw i64 %.val.i.i, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %.8.val
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.c
  %.sroa.0.0.i10.i2 = phi i64 [ %i.n, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i2
  %i.n = add nuw nsw i64 %.sroa.0.0.i10.i2, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.m)
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(32) %i.s) #54
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph4
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5007
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.q

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsdaEETE4DqmE_13typst_library4diag10TracepointEECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1j_5model8footnote12FootnoteElemEEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1X_5model8footnote12FootnoteElemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1X_5model8footnote12FootnoteElemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1X_5model8footnote12FootnoteElemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 24
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBL_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBL_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit7.i.i, %bb.c
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBL_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1X_5model8footnote12FootnoteElemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBL_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.f = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775784
  %narrow.i.i.i = and i1 %i.e, %i.g
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.h = add nuw nsw i64 %i.f, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEEB1e_(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtB5_3ops4drop4Drop4drop0EB1S_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtB5_3ops4drop4Drop4drop0EB1S_.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtB5_3ops4drop4Drop4drop0EB1S_.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i.i, i64 176) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = or disjoint i64 %i.g, 14
  %i.i = icmp ugt i64 %i.h, 9223372036854775797
  %narrow.i.not.i.i = or i1 %i.f, %i.i
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit.i
  %i.j = add nuw nsw i64 %i.g, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8
  store i64 8, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.l, align 8
  %i.m = icmp eq i64 %.8.val, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBG_.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %.8.val
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBG_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [176 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.p = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBF_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.o)
          to label %bb.c unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph3
  %i.q = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.r = icmp eq i64 %i.q, %.8.val
  br i1 %i.r, label %.body.i, label %.lr.ph3

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %.8.val
  br i1 %i.t, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i2 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [176 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBF_(ptr noalias nofree noundef align 8 dereferenceable(176) %i.u) #54
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBG_.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit

bb.g:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.s

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageENtNtNtB5_3ops4drop4Drop4drop0EB1S_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs7tN9tvpkfrg_12typst_layout8document4PageEBG_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 128102389400760774
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 72
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.c
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.i)
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.o) #54
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5010
  unreachable

.body.i:                                          ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5023)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !5023, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire, !noalias !5023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5023
  %i.e = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i = icmp ugt i64 %.val.i1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57, !noalias !5023
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %1 = mul nuw nsw i64 %.val.i1, 72
  %2 = add nuw nsw i64 %1, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.f, align 8, !noalias !5023
  store i64 8, ptr %i.b, align 8, !noalias !5023
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.g, align 8, !noalias !5023
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5023, !noundef !41 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit
  %i.m = icmp eq i64 %i.o, %i.i
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.0.i33 = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.0.i33 ; 5 uses
  %i.o = add i64 %.sroa.0.0.i33, 1                ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  %i.p = load i64, ptr %i.n, align 8, !range !49, !alias.scope !5024, !noalias !5023, !noundef !41
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val.i9 = load ptr, ptr %i.r, align 8, !alias.scope !5025, !noalias !5023 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %.val1.i = load i8, ptr %i.s, align 1, !alias.scope !5025, !noalias !5023, !noundef !41
  %.not.i.i.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i9) ], !noalias !5023
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i9, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val.i9, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !5026
  %.not.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  fence acquire, !noalias !5023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5026
  %i.v = getelementptr i8, ptr %.val.i9, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !5026, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %bb.e, !prof !43

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.j, align 8, !noalias !5026
  store i64 8, ptr %i.a, align 8, !noalias !5026
  store i64 %i.w, ptr %i.k, align 8, !noalias !5026
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5026
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %.body.i unwind label %bb.g, !inline_history !5019

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.noexc10, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.d, %bb.c, %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.i, !inline_history !5019

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5023, !inline_history !5020
  unreachable

bb.h:                                             ; preds = %.lr.ph35
  %i.aa = add i64 %.sroa.0.1.i34, 1               ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.i
  br i1 %i.ab, label %.body, label %.lr.ph35

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs7tN9tvpkfrg_12typst_layout.exit
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ae) #54
          to label %bb.h unwind label %bb.j, !noalias !5023, !inline_history !5021

bb.j:                                             ; preds = %.lr.ph35
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5023, !inline_history !5021
  unreachable

.body:                                            ; preds = %bb.h, %.body.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !5023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5023
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.k:                                             ; preds = %.body
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5023, !inline_history !5022
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5031)
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !5031, !nonnull !41, !noundef !41 ; 5 uses
  %.not.i6 = icmp eq ptr %.val4.i, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.val4.i, i64 -16 ; 2 uses
  br i1 %.not.i6, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit
  fence acquire, !noalias !5031
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5031
  %i.d = getelementptr i8, ptr %.val4.i, i64 -8
  %.val.i1 = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i1, 576460752303423488
  %i.f = shl nuw i64 %.val.i1, 5
  %i.g = or disjoint i64 %i.f, 16                 ; 2 uses
  %i.h = icmp ult i64 %i.g, 9223372036854775799
  %narrow.i.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57, !noalias !5031
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8, !noalias !5031
  store i64 8, ptr %i.a, align 8, !noalias !5031
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.j, align 8, !noalias !5031
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !5031, !noundef !41 ; 4 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.l
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs7tN9tvpkfrg_12typst_layout.exit, %bb.c
  %.sroa.0.0.i10 = phi i64 [ %i.p, %bb.c ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs7tN9tvpkfrg_12typst_layout.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.sroa.0.0.i10
  %i.p = add i64 %.sroa.0.0.i10, 1                ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !5031, !inline_history !5029

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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #54
          to label %bb.d unwind label %bb.f, !noalias !5031, !inline_history !5029

bb.f:                                             ; preds = %.lr.ph12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5031, !inline_history !5029
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !5031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5031
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5031, !inline_history !5030
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body
  resume { ptr, i32 } %i.s

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 24
  %1 = add nuw nsw i64 %0, 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  store i64 8, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.f, align 8
  %i.g = icmp eq i64 %.8.val, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %.8.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.0.i10.i1 = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i10.i1
  %i.j = add nuw nsw i64 %.sroa.0.0.i10.i1, 1     ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit7.i.i: ; preds = %.lr.ph3
  %i.k = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %.8.val
  br i1 %i.l, label %.body.i, label %.lr.ph3

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %.8.val
  br i1 %i.n, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit7.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit7.i.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit7.i.i, %bb.c
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.m

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.f = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775784
  %narrow.i.i.i = and i1 %i.e, %i.g
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.b, !prof !43

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.h = add nuw nsw i64 %i.f, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5048)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !5049, !nonnull !41, !noundef !41
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !5050
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.q = icmp eq i64 %i.m, %.8.val
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.m, %.8.val
  br i1 %i.s, label %.body.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.u, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.u = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5053)
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !5054, !nonnull !41, !noundef !41
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !5055
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence6BoundsEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i: ; preds = %bb.e, %.lr.ph12.i.i
  %i.y = icmp eq i64 %i.u, %.8.val
  br i1 %i.y, label %.body.i, label %.lr.ph12.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit8.i.i, %bb.d
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.r

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library13introspection11convergence13IntrospectionECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildEEB1h_(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtB5_3ops4drop4Drop4drop0EB1V_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtB5_3ops4drop4Drop4drop0EB1V_.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtB5_3ops4drop4Drop4drop0EB1V_.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 3 uses
  %i.e = icmp ugt i64 %.val.i.i, 2305843009213693951
  br i1 %i.e, label %.thread.i.i, label %bb.b, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit.i
  %i.f = icmp samesign ult i64 %.val.i.i, 2305843009213693950
  %i.g = shl nuw i64 %.val.i.i, 3
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit.i, label %.thread.i.i, !prof !62

.thread.i.i:                                      ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  store i64 8, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.k, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtB5_3ops4drop4Drop4drop0EB1V_.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41 ; 3 uses
  %i.e = icmp ugt i64 %.val.i.i, 2305843009213693951
  br i1 %i.e, label %.thread.i.i, label %bb.b, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.f = icmp samesign ult i64 %.val.i.i, 2305843009213693950
  %i.g = shl nuw i64 %.val.i.i, 3
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, label %.thread.i.i, !prof !62

.thread.i.i:                                      ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  store i64 8, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.k, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.f, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %0 = mul nuw nsw i64 %.val.i.i, 24
  %1 = add nuw nsw i64 %0, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8
  store i64 8, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5064)
  %i.i = icmp eq i64 %.8.val, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5065 ; 4 uses
  %i.n = getelementptr i8, ptr %i.l, i64 15
  %.val9.i.i = load i8, ptr %i.n, align 1, !alias.scope !5065, !noundef !41
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.o = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !5066
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5066
  %i.q = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !5066, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %bb.e, !prof !43

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5064

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %i.r = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.o, ptr %i.j, align 8, !noalias !5066
  store i64 8, ptr %i.b, align 8, !noalias !5066
  store i64 %i.r, ptr %i.k, align 8, !noalias !5066
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !5064

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5066
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.s = icmp eq i64 %i.m, %.8.val
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.c

.loopexit.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i:                           ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.t = icmp eq i64 %i.m, %.8.val
  br i1 %i.t, label %.body.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.x = add i64 %.sroa.0.1.i4.i, 1               ; 2 uses
  %.val.i10.i = load ptr, ptr %i.w, align 8, !alias.scope !5065 ; 4 uses
  %i.y = getelementptr i8, ptr %i.w, i64 15
  %.val7.i.i = load i8, ptr %i.y, align 1, !alias.scope !5065, !noundef !41
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !5064
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.z = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !5067
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  fence acquire, !noalias !5064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5067
  %i.ab = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !5067, !noundef !41 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, label %bb.i, !prof !43

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.z, ptr %i.u, align 8, !noalias !5067
  store i64 8, ptr %i.a, align 8, !noalias !5067
  store i64 %i.ac, ptr %i.v, align 8, !noalias !5067
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5067
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.ad = icmp eq i64 %i.x, %.8.val
  br i1 %i.ad, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !5064
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

bb.j:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtNtCseVcqU0FIJnD_5codex15numeral_systems18NamedNumeralSystemEECs7tN9tvpkfrg_12typst_layout.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECs7tN9tvpkfrg_12typst_layout(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECs7tN9tvpkfrg_12typst_layout.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !41
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i.i, i64 48) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = or disjoint i64 %i.g, 14
  %i.i = icmp ugt i64 %i.h, 9223372036854775797
  %narrow.i.not.i.i = or i1 %i.f, %i.i
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i, !prof !44

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.j = add nuw nsw i64 %i.g, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs7tN9tvpkfrg_12typst_layout6shapesNtB5_13ControlPoints9mid_outer:bb.a
  %i.z = extractvalue { double, double } %i.f, 1  ; 2 uses
  %i.aa = extractvalue { double, double } %i.f, 0 ; 2 uses
  %i.ab = extractvalue { double, double } %i.e, 1 ; 3 uses
  %i.ac = extractvalue { double, double } %i.e, 0 ; 3 uses
  %i.ad = fcmp uno double %.sroa.0.0.i.i, 0.000000e+00
  %i.ae = fneg double %.sroa.0.0.i.i
  %spec.store.select.i = select i1 %i.ad, double 0.000000e+00, double %i.ae
  %.sroa.0.0.i8.i = select i1 %i.l, double %i.n, double %.sroa.02.0.i.i.i7.i ; 2 uses
  %i.af = fneg double %.sroa.0.0.i8.i
  %i.ag = fcmp uno double %.sroa.0.0.i8.i, 0.000000e+00
  %spec.store.select1.i = select i1 %i.ag, double 0.000000e+00, double %i.af
  %i.ah = call fastcc { double, double } @_RNvMs0_NtCs7tN9tvpkfrg_12typst_layout6shapesNtB5_13ControlPoints6rotate(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, double noundef %spec.store.select.i, double noundef %spec.store.select1.i), !alias.scope !23954 ; 2 uses
  %i.ai = extractvalue { double, double } %i.ah, 0
  %i.aj = extractvalue { double, double } %i.ah, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load double, ptr %i.ak, align 8, !noundef !41 ; 2 uses
  %i.am = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ab, i64 1 ; 2 uses
  %i.ao = fneg <2 x double> %i.an
  %i.ap = fcmp uno <2 x double> %i.an, zeroinitializer
  %i.aq = select <2 x i1> %i.ap, <2 x double> zeroinitializer, <2 x double> %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aj, i64 1
  %i.at = fadd <2 x double> %i.aq, %i.as          ; 2 uses
  %i.au = fcmp ord <2 x double> %i.at, zeroinitializer
  %i.av = select <2 x i1> %i.au, <2 x double> %i.at, <2 x double> zeroinitializer ; 4 uses
  %i.aw = fmul <2 x double> %i.av, %i.av          ; 2 uses
  %i.ax = fcmp ord <2 x double> %i.aw, zeroinitializer
  %i.ay = select <2 x i1> %i.ax, <2 x double> %i.aw, <2 x double> zeroinitializer
  %i.az = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ay) ; 2 uses
  %.inv156 = fcmp ord double %i.az, 0.000000e+00
  %spec.store.select4 = select i1 %.inv156, double %i.az, double 0.000000e+00 ; 2 uses
  %i.ba = extractelement <2 x double> %i.av, i64 0 ; 2 uses
  %i.bb = fneg double %i.aa
  %i.bc = fcmp uno double %i.aa, 0.000000e+00
  %spec.store.select8 = select i1 %i.bc, double 0.000000e+00, double %i.bb
  %i.bd = extractelement <2 x double> %i.av, i64 1 ; 2 uses
  %i.be = fneg double %i.z
  %i.bf = fcmp uno double %i.z, 0.000000e+00
  %spec.store.select14 = select i1 %i.bf, double 0.000000e+00, double %i.be
  %i.bg = fmul double %i.ba, 2.000000e+00
  %i.bh = fadd double %i.ac, %spec.store.select8
  %i.bi = fmul double %i.bd, 2.000000e+00
  %i.bj = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.bi, i64 1 ; 2 uses
  %i.bl = fcmp ord <2 x double> %i.bk, zeroinitializer
  %i.bm = select <2 x i1> %i.bl, <2 x double> %i.bk, <2 x double> zeroinitializer ; 2 uses
  %i.bn = fadd double %i.ab, %spec.store.select14
  %i.bo = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1 ; 2 uses
  %i.bq = fcmp ord <2 x double> %i.bp, zeroinitializer
  %i.br = select <2 x i1> %i.bq, <2 x double> %i.bp, <2 x double> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x double> %i.br, %i.bm          ; 2 uses
  %i.bt = fcmp ord <2 x double> %i.bs, zeroinitializer
  %i.bu = select <2 x i1> %i.bt, <2 x double> %i.bs, <2 x double> zeroinitializer
  %i.bv = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bu) ; 2 uses
  %.inv163 = fcmp ord double %i.bv, 0.000000e+00
  %spec.store.select17 = select i1 %.inv163, double %i.bv, double 0.000000e+00 ; 4 uses
  %i.bw = shufflevector <2 x double> %i.bm, <2 x double> %i.br, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bx = fmul <2 x double> %i.bw, %i.bw          ; 2 uses
  %i.by = fcmp ord <2 x double> %i.bx, zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x double> %i.bx, <2 x double> zeroinitializer
  %i.ca = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.bz) ; 2 uses
  %.inv164 = fcmp ord double %i.ca, 0.000000e+00
  %spec.store.select22 = select i1 %.inv164, double %i.ca, double 0.000000e+00
  %i.cb = fmul double %i.al, %i.al                ; 2 uses
  %.inv.i182 = fcmp ord double %i.cb, 0.000000e+00
  %spec.store.select.i183 = select i1 %.inv.i182, double %i.cb, double 0.000000e+00
  %i.cc = fsub double %spec.store.select22, %spec.store.select.i183 ; 2 uses
  %.inv165 = fcmp ord double %i.cc, 0.000000e+00
  %spec.store.select23 = select i1 %.inv165, double %i.cc, double 0.000000e+00
  %i.cd = fneg double %spec.store.select17
  %i.ce = fcmp uno double %spec.store.select17, 0.000000e+00
  %spec.store.select24 = select i1 %i.ce, double 0.000000e+00, double %i.cd
  %i.cf = fmul double %spec.store.select17, %spec.store.select17 ; 2 uses
  %.inv166 = fcmp ord double %i.cf, 0.000000e+00
  %spec.store.select25 = select i1 %.inv166, double %i.cf, double 0.000000e+00
  %i.cg = fmul nnan double %spec.store.select4, 4.000000e+00
  %i.ch = fmul double %spec.store.select23, %i.cg ; 2 uses
  %.inv167 = fcmp ord double %i.ch, 0.000000e+00
  %spec.store.select27 = select i1 %.inv167, double %i.ch, double 0.000000e+00
  %i.ci = fsub double %spec.store.select25, %spec.store.select27 ; 2 uses
  %.inv168 = fcmp ord double %i.ci, 0.000000e+00
  %spec.store.select28 = select i1 %.inv168, double %i.ci, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %spec.store.select28, ptr %i.b, align 8
  store double 0.000000e+00, ptr %i.a, align 8
  %i.cj = call noundef i8 @_RNvXs6_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not.i.i = icmp ne i8 %i.cj, -2
  %i.ck = icmp slt i8 %i.cj, 0
  %.sroa.0.0.i.i184 = and i1 %.not.i.i, %i.ck
  %..i = select i1 %.sroa.0.0.i.i184, double %spec.store.select28, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = call double @llvm.sqrt.f64(double %..i)
  %i.cm = fcmp ult double %..i, 0.000000e+00
  %spec.store.select30 = select i1 %i.cm, double 0.000000e+00, double %i.cl
  %i.cn = fadd double %spec.store.select24, %spec.store.select30 ; 2 uses
  %.inv169 = fcmp ord double %i.cn, 0.000000e+00
  %spec.store.select31 = select i1 %.inv169, double %i.cn, double 0.000000e+00
  %i.co = fmul nnan double %spec.store.select4, 2.000000e+00
  %i.cp = fdiv double %spec.store.select31, %i.co ; 2 uses
  %.inv170 = fcmp ord double %i.cp, 0.000000e+00
  %spec.store.select33 = select i1 %.inv170, double %i.cp, double 0.000000e+00 ; 2 uses
  %i.cq = fmul double %i.ba, %spec.store.select33 ; 2 uses
  %.inv171 = fcmp ord double %i.cq, 0.000000e+00
  %spec.store.select34 = select i1 %.inv171, double %i.cq, double 0.000000e+00
  %i.cr = fmul double %i.bd, %spec.store.select33 ; 2 uses
  %.inv172 = fcmp ord double %i.cr, 0.000000e+00
  %spec.store.select35 = select i1 %.inv172, double %i.cr, double 0.000000e+00
  %i.cs = fadd double %i.ac, %spec.store.select34 ; 2 uses
  %.inv173 = fcmp ord double %i.cs, 0.000000e+00
  %spec.store.select36 = select i1 %.inv173, double %i.cs, double 0.000000e+00
  %i.ct = fadd double %i.ab, %spec.store.select35 ; 2 uses
  %.inv174 = fcmp ord double %i.ct, 0.000000e+00
  %spec.store.select37 = select i1 %.inv174, double %i.ct, double 0.000000e+00
  %i.cu = insertvalue { double, double } poison, double %spec.store.select36, 0
  %i.cv = insertvalue { double, double } %i.cu, double %spec.store.select37, 1
  ret { double, double } %i.cv
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 576460752303423488
  %i.c = shl nuw i64 %1, 5
  %i.d = or disjoint i64 %i.c, 16                 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775799
  %narrow.i.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #56 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !41 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 576460752303423488
  %i.k = shl nuw i64 %.val.i, 5
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775799
  %narrow.i.i34 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, label %bb.f, !prof !43

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.d) #56 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 384307168202282324
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 24
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #56 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 384307168202282324
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1U_5model8footnote12FootnoteElemEE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 24
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #56 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEE4sizeCs7tN9tvpkfrg_12typst_layout.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4growBL_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 176) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  %i.d = extractvalue { i64, i1 } %i.b, 0         ; 2 uses
  %i.e = or disjoint i64 %i.d, 14
  %i.f = icmp ugt i64 %i.e, 9223372036854775797
  %narrow.i.not.i = or i1 %i.c, %i.f
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit: ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 16                 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.h, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.g, i64 noundef 8) #56 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit
  %i.k = getelementptr i8, ptr %i.h, i64 -8
  %.val.i = load i64, ptr %i.k, align 8, !noundef !41
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val.i, i64 176) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = or disjoint i64 %i.n, 14
  %i.p = icmp ugt i64 %i.o, 9223372036854775797
  %narrow.i.not.i34 = or i1 %i.m, %i.p
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit37, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE8capacity0EB1P_.exit
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 -16
  %i.r = add nuw nsw i64 %i.n, 16
  %i.s = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef 8, i64 noundef %i.g) #56 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.g) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.i, %bb.e ], [ %i.s, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs7tN9tvpkfrg_12typst_layout8document4PageE4sizeBL_.exit37 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.u, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 72
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #56 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 72
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #56 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE4sizeCs7tN9tvpkfrg_12typst_layout.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 128102389400760774
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 72
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #56 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 128102389400760774
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 72
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #56 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE4sizeCs7tN9tvpkfrg_12typst_layout.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.not.i = icmp samesign ugt i64 %1, 384307168202282324
  br i1 %narrow.i.not.i, label %bb.d, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %2 = mul nuw nsw i64 %1, 24
  %3 = add nuw nsw i64 %2, 16                     ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #56 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !41 ; 2 uses
  %narrow.i.not.i34 = icmp ugt i64 %.val.i, 384307168202282324
  br i1 %narrow.i.not.i34, label %bb.f, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %4 = mul nuw nsw i64 %.val.i, 24
  %5 = add nuw nsw i64 %4, 16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8, i64 noundef %3) #56 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE4sizeCs7tN9tvpkfrg_12typst_layout.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4growBO_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %.thread.i, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.c = icmp samesign ult i64 %1, 2305843009213693950
  %i.d = shl nuw i64 %1, 3
  %i.e = add i64 %i.d, 16                         ; 4 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775799
  %narrow.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit, label %.thread.i, !prof !62

.thread.i:                                        ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit: ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.g, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.h = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #56 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.k = getelementptr i8, ptr %i.g, i64 -8
  %.val.i = load i64, ptr %i.k, align 8, !noundef !41 ; 3 uses
  %i.l = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.l, label %.thread.i35, label %bb.f, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit
  %i.m = icmp samesign ult i64 %.val.i, 2305843009213693950
  %i.n = shl nuw i64 %.val.i, 3
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775799
  %narrow.i.i34 = select i1 %i.m, i1 %i.p, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit39, label %.thread.i35, !prof !62

.thread.i35:                                      ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit39: ; preds = %bb.f
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.e) #56 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit39, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit39, %bb.e
  %.sroa.06.0 = phi ptr [ %i.h, %bb.e ], [ %i.q, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit39 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.s, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.b, label %.thread.i, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.c = icmp samesign ult i64 %1, 2305843009213693950
  %i.d = shl nuw i64 %1, 3
  %i.e = add i64 %i.d, 16                         ; 4 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775799
  %narrow.i.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %.thread.i, !prof !62

.thread.i:                                        ; preds = %bb.d, %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  %i.g = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.g, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.h = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #56 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.k = getelementptr i8, ptr %i.g, i64 -8
  %.val.i = load i64, ptr %i.k, align 8, !noundef !41 ; 3 uses
  %i.l = icmp ugt i64 %.val.i, 2305843009213693951
  br i1 %i.l, label %.thread.i35, label %bb.f, !prof !44

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  %i.m = icmp samesign ult i64 %.val.i, 2305843009213693950
  %i.n = shl nuw i64 %.val.i, 3
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775799
  %narrow.i.i34 = select i1 %i.m, i1 %i.p, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit39, label %.thread.i35, !prof !62

.thread.i35:                                      ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit39: ; preds = %bb.f
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.o, i64 noundef 8, i64 noundef %i.e) #56 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit39, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #57
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit39, %bb.e
  %.sroa.06.0 = phi ptr [ %i.h, %bb.e ], [ %i.q, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCsdaEETE4DqmE_13typst_library13introspection3tag3TagE4sizeCs7tN9tvpkfrg_12typst_layout.exit39 ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.s, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #57
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #56 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !44

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs7tN9tvpkfrg_12typst_layout.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !41 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !41
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #54
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !41 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !31696
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !55

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !41
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !44

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !31696
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !56

_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !43

bb.h:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !41
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !41
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1k_8position13PagedPositionEEj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !31704, !noalias !31705, !noundef !41 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !31704, !noalias !31705, !nonnull !41 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31704, !noalias !31705
  %.sink10.i = select i1 %i.c, i64 %i.g, i64 %i.b ; 3 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31706)
  %i.n = icmp ult i64 %i.b, 2                     ; 2 uses
  %.sink9.idx.i.i = select i1 %i.c, i64 16, i64 0
  %.sink9.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i.i
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.o = load i64, ptr %.sink9.i.i, align 8, !alias.scope !31706, !noundef !41 ; 5 uses
  %.not.i = icmp ult i64 %i.m, %i.o
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53, !noalias !31706
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.b, %i.m
  br i1 %.not43.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw nsw i64 %i.m, 24                 ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, !prof !61

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i, !prof !61

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !31706
  %i.q = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #56, !noalias !31706 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #56, !noalias !31706 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !31706
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !31706
  store i64 %i.m, ptr %0, align 8, !alias.scope !31706
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw nsw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !31706
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, !prof !61

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31707
  store i64 0, ptr %i.a, align 8, !noalias !31707
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !31707
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31707
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.m
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #56, !noalias !31706
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1f_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit45.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #57
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector11BuilderItemNtNtB1d_8position13PagedPositionEEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8Locationj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16, !alias.scope !31715, !noalias !31716, !noundef !41 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 16, !alias.scope !31715, !noalias !31716, !nonnull !41 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31715, !noalias !31716 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31717)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53, !noalias !31717
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %or.cond.i = icmp ult i64 %i.k, 576460752303423487
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.p, !prof !123

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.p = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.p, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i, label %bb.p, !prof !123

bb.j:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !31717
  %i.q = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 16) #56, !noalias !31717 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i: ; preds = %bb.i
  %i.s = shl nuw nsw i64 %.sink.i.i, 4
  %i.t = tail call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 16, i64 noundef %i.o) #56, !noalias !31717 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 16, !alias.scope !31717
  store i64 %.sink10.i, ptr %i.f, align 8, !alias.scope !31717
  store i64 %i.m, ptr %i.b, align 16, !alias.scope !31717
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.q, ptr nonnull align 16 dereferenceable(32) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl nuw nsw i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(32) %0, ptr nonnull align 16 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 16, !alias.scope !31717
  %or.cond.i.i = icmp ult i64 %i.c, 576460752303423488
  br i1 %or.cond.i.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.n, !prof !123

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31718
  store i64 0, ptr %i.a, align 8, !noalias !31718
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31718
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.m
  %i.x = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 16) #56, !noalias !31717
  br label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit

bb.o:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit44.i, %bb.j
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 16, i64 noundef %i.o) #57
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(472) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !31722, !noalias !31723, !noundef !41 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !31722, !noalias !31723
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(472) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit
    i64 0, label %bb.e
  ], !prof !149

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #57
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(472) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !41 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !31729, !noalias !31730, !nonnull !41 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 464                          ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 19877956975980120
  br i1 %or.cond.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit, !prof !61

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit
  %i.k = mul i64 %.sink.i, 464                    ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 19877956975980120
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45, !prof !61

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #56 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 8, i64 noundef %i.j) #56 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 464
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul nuw nsw i64 %.val, 464
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 464                    ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 19877956975980120
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit, !prof !61

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31731
  store i64 0, ptr %i.a, align 8, !noalias !31731
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !31731
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31731
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 8) #56
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library4text4deco10DecorationECs7tN9tvpkfrg_12typst_layout.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Absj2_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !31735, !noalias !31736, !noundef !41 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !31735, !noalias !31736
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Absj2_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit
    i64 0, label %bb.e
  ], !prof !149

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #57
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3Absj2_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !41 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !31742, !noalias !31743, !nonnull !41 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m, !prof !123

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44, label %bb.m, !prof !123

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #56 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #56 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit, label %bb.l, !prof !123

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31744
  store i64 0, ptr %i.a, align 8, !noalias !31744
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31744
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #56
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsECs7tN9tvpkfrg_12typst_layout.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecATNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBN_10variations9AxisValueEj2_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !31748, !noalias !31749, !noundef !41 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !31748, !noalias !31749
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecATNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBN_10variations9AxisValueEj2_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit
    i64 0, label %bb.e
  ], !prof !149

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #57
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecATNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBN_10variations9AxisValueEj2_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !41 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !31755, !noalias !31756, !nonnull !41 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m, !prof !123

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44, label %bb.m, !prof !123

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.l = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #56 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 4 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 4, i64 noundef %i.j) #56 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBG_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.l, !prof !123

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31757
  store i64 0, ptr %i.a, align 8, !noalias !31757
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31757
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBG_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 4) #56
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBG_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBG_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBG_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayTNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font3tag3TagNtNtBI_10variations9AxisValueEECs7tN9tvpkfrg_12typst_layout.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !31761, !noalias !31762, !noundef !41 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !31761, !noalias !31762
  %.sink10.i = select i1 %i.b, i64 %i.d, i64 %i.a ; 3 uses
  %i.e = icmp eq i64 %.sink10.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink10.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit
    i64 0, label %bb.e
  ], !prof !149

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #57
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !41  ; 6 uses
  %i.c = icmp ult i64 %i.b, 2                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !31768, !noalias !31769, !nonnull !41 ; 3 uses
  %.sink9.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink9.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.g = load i64, ptr %.sink9.i, align 8, !noundef !41 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53
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
  br i1 %or.cond.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit, !prof !61

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit
  %i.j = mul i64 %.sink.i, 40                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.b, 230584300921369395
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45, !prof !61

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.k = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #56 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45: ; preds = %bb.g
  %i.m = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.j, i64 noundef 8, i64 noundef %i.i) #56 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.k, %bb.j ], [ %i.m, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45 ]
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
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit, !prof !61

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31770
  store i64 0, ptr %i.a, align 8, !noalias !31770
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !31770
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31770
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.q, i64 noundef 8) #56
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45 ], [ %i.j, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs7tN9tvpkfrg_12typst_layout.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAij1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !31774, !noalias !31775, !noundef !41 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !31774, !noalias !31775
  %.sink10.i = select i1 %i.c, i64 %i.e, i64 %i.b ; 3 uses
  %i.f = icmp eq i64 %.sink10.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink10.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAij1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit
    i64 0, label %bb.e
  ], !prof !149

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #57
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #53
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAij1_E8try_growCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !41 ; 8 uses
  %i.d = icmp ult i64 %i.c, 2                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 1
  %i.f = load ptr, ptr %0, align 8, !alias.scope !31781, !noalias !31782, !nonnull !41 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 2
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not48 = icmp eq i64 %i.c, %1
  br i1 %.not48, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit, label %bb.m, !prof !123

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit
  %i.k = icmp ult i64 %i.c, 1152921504606846976
  br i1 %i.k, label %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50, label %bb.m, !prof !123

bb.h:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56
  %i.l = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #56 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50: ; preds = %bb.g
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.j) #56 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50, %bb.j
  %.sroa.031.0 = phi ptr [ %i.l, %bb.j ], [ %i.o, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50 ]
  store ptr %.sroa.031.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsiSzwKAiqS6b_8smallvec10deallocateiECs7tN9tvpkfrg_12typst_layout.exit, label %bb.l, !prof !123

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31783
  store i64 0, ptr %i.a, align 8, !noalias !31783
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @290, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #53, !noalias !31783
  unreachable

_RINvCsiSzwKAiqS6b_8smallvec10deallocateiECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.k
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.s, i64 noundef 8) #56
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50, %bb.h, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateiECs7tN9tvpkfrg_12typst_layout.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateiECs7tN9tvpkfrg_12typst_layout.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50 ], [ undef, %bb.g ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsiSzwKAiqS6b_8smallvec10deallocateiECs7tN9tvpkfrg_12typst_layout.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsiSzwKAiqS6b_8smallvec12layout_arrayiECs7tN9tvpkfrg_12typst_layout.exit50 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAjj1_E21reserve_one_uncheckedCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !31791, !noalias !31792, !noundef !41 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !31791, !noalias !31792, !nonnull !41 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31791, !noalias !31792 ; 3 uses
  %.sink10.i = select i1 %i.d, i64 %i.g, i64 %i.c ; 5 uses
  %i.h = icmp eq i64 %.sink10.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink10.i, 0                ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink10.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31793)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink10.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @456, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @457) #53, !noalias !31793
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not48.i = icmp eq i64 %i.c, %i.m
  br i1 %.not48.i, label %_RINvCsiSzwKAiqS6b_8smallvec10infallibleuECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h
end_hunk_2

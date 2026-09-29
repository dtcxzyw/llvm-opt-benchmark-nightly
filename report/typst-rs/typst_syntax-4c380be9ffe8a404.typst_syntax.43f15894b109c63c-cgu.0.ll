Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEEB1f_:bb.a
  %i.w = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.t, ptr %i.n, align 8, !noalias !1046
  store i64 8, ptr %i.b, align 8, !noalias !1046
  store i64 %i.w, ptr %i.o, align 8, !noalias !1046
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !1044

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1046
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.x = icmp eq i64 %i.q, %.8.val
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEEBH_.exit.i, label %bb.c

.loopexit.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i.i:                           ; preds = %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  %i.y = icmp eq i64 %i.q, %.8.val
  br i1 %i.y, label %.body.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.q, %.lr.ph.i ], [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.ac = add i64 %.sroa.0.1.i4.i, 1              ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %.val.i10.i = load ptr, ptr %i.ad, align 8, !alias.scope !1045 ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 31
  %.val7.i.i = load i8, ptr %i.ae, align 1, !alias.scope !1045, !noundef !19
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !1044
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.af = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ag = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !1047
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.ag, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  fence acquire, !noalias !1044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1047
  %i.ah = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !1047, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  %i.ai = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.af, ptr %i.z, align 8, !noalias !1047
  store i64 8, ptr %i.a, align 8, !noalias !1047
  store i64 %i.ai, ptr %i.aa, align 8, !noalias !1047
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1047
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.aj = icmp eq i64 %i.ac, %.8.val
  br i1 %i.aj, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1044
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

bb.j:                                             ; preds = %.body.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEEBH_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr %.0.val, i64 %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %i.e = icmp ult i64 %.val.i.i, 1152921504606846976
  %i.f = shl i64 %.val.i.i, 4                     ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775784
  %narrow.i.i.i = and i1 %i.e, %i.g
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.h = add nuw nsw i64 %i.f, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.i, align 8
  store i64 8, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 %.0.val, i64 noundef %.8.val)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEEB1Z_(ptr %.0.val, i64 %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB1b_3ops4drop4Drop4dropB1M_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB5_3ops4drop4Drop4drop0EB2l_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB5_3ops4drop4Drop4drop0EB2l_.exit.i: ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB1b_3ops4drop4Drop4dropB1M_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB5_3ops4drop4Drop4drop0EB2l_.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  %0 = mul i64 %.val.i.i, 24
  %1 = add i64 %0, 16                             ; 2 uses
  %narrow.i.i = icmp ult i64 %.val.i.i, 768614336404564650
  %2 = icmp ult i64 %1, 9223372036854775799
  %narrow.i.i.i = and i1 %narrow.i.i, %2
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8
  store i64 8, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.i = icmp eq i64 %.8.val, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1057 ; 4 uses
  %i.n = getelementptr i8, ptr %i.l, i64 15
  %.val9.i.i = load i8, ptr %i.n, align 1, !alias.scope !1057, !noundef !19
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.o = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !1058
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1058
  %i.q = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !1058, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1056

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  %i.r = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.o, ptr %i.j, align 8, !noalias !1058
  store i64 8, ptr %i.b, align 8, !noalias !1058
  store i64 %i.r, ptr %i.k, align 8, !noalias !1058
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !1056

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1058
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.s = icmp eq i64 %i.m, %.8.val
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i, label %bb.c

.loopexit.i.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
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

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.x = add i64 %.sroa.0.1.i4.i, 1               ; 2 uses
  %.val.i10.i = load ptr, ptr %i.w, align 8, !alias.scope !1057 ; 4 uses
  %i.y = getelementptr i8, ptr %i.w, i64 15
  %.val7.i.i = load i8, ptr %i.y, align 1, !alias.scope !1057, !noundef !19
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !1056
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.z = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !1059
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.aa, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  fence acquire, !noalias !1056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1059
  %i.ab = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !1059, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  %i.ac = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.z, ptr %i.u, align 8, !noalias !1059
  store i64 8, ptr %i.a, align 8, !noalias !1059
  store i64 %i.ac, ptr %i.v, align 8, !noalias !1059
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.ad = icmp eq i64 %i.x, %.8.val
  br i1 %i.ad, label %.body.i, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %bb.i
  %lpad.loopexit.split-lp14 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !1056
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i, %bb.f
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB1b_3ops4drop4Drop4dropB1M_.exit

bb.j:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %lpad.phi.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB1b_3ops4drop4Drop4dropB1M_.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEENtNtNtB5_3ops4drop4Drop4drop0EB2l_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.a
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !19 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.e = add nuw nsw i64 %.val.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a

bb.sb:                                            ; preds = %bb.rq
  %i.cla = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1e_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2i_10SyntaxNode10with_hintsINtB1c_6EcoVecB1K_EE0EEB2k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #59
          to label %.body.thread.i unwind label %bb.sa, !noalias !3056

.body.thread.i:                                   ; preds = %bb.sc, %bb.sb, %.body.i.i, %.body.i
  %eh.lpad-body20.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %lpad.thr_comm.i, %bb.sc ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cla, %bb.sb ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ar) #59
          to label %common.resume unwind label %bb.sd, !noalias !3050

bb.sc:                                            ; preds = %_RNvMNtCs5PEMdK7bMAG_12typst_syntax4nodeNtB2_10SyntaxNode9hints_mut.exit.i, %bb.rj, %bb.ri
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload) #59
          to label %.body.thread.i unwind label %bb.sd, !noalias !3054

bb.sd:                                            ; preds = %bb.sc, %.body.thread.i
  %i.clb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !3054
  unreachable

bb.se:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB11_6string9EcoStringENCINvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB25_10SyntaxNode10with_hintsINtBZ_6EcoVecB1x_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB27_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3056
  %.sroa.0192.0.copyload193 = load i8, ptr %i.ar, align 8, !alias.scope !3054
  %.sroa.3.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.sroa.3.0.copyload195 = load i8, ptr %.sroa.3.0..sroa_idx194, align 1, !alias.scope !3054
  %.sroa.4196.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4196, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4196.0..sroa_idx197, i64 6, i1 false), !alias.scope !3054
  %.sroa.4198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.4198.0.copyload200 = load ptr, ptr %.sroa.4198.0..sroa_idx199, align 8, !alias.scope !3054
  %.sroa.5.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.5.0.copyload202 = load i64, ptr %.sroa.5.0..sroa_idx201, align 8, !alias.scope !3054
  %.sroa.6.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.6.0.copyload206 = load i64, ptr %.sroa.6.0..sroa_idx205, align 8, !alias.scope !3054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.rg

bb.sf:                                            ; preds = %bb.ra
  %i.clc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.sroa.4.0.copyload, i64 %.sroa.6.0.copyload) #59
          to label %common.resume unwind label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.cld = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4growBM_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 576460752303423488
  %i.c = shl nuw i64 %1, 5
  %i.d = or disjoint i64 %i.c, 16                 ; 4 uses
  %i.e = icmp ult i64 %i.d, 9223372036854775799
  %narrow.i.i = select i1 %i.b, i1 %i.e, i1 false
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.d, i64 noundef 8) #60 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !23

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !19 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 576460752303423488
  %i.k = shl nuw i64 %.val.i, 5
  %i.l = or disjoint i64 %i.k, 16                 ; 2 uses
  %i.m = icmp ult i64 %i.l, 9223372036854775799
  %narrow.i.i34 = select i1 %i.j, i1 %i.m, i1 false
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit37, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.n, i64 noundef %i.l, i64 noundef 8, i64 noundef %i.d) #60 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.d) #58
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4growCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %1, 1152921504606846976
  %i.c = shl i64 %1, 4                            ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775784
  %narrow.i.i = and i1 %i.b, %i.d
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  %i.e = add nuw nsw i64 %i.c, 16                 ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.f, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef 8) #60 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !23

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit
  %i.i = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noundef !19 ; 2 uses
  %i.j = icmp ult i64 %.val.i, 1152921504606846976
  %i.k = shl i64 %.val.i, 4                       ; 2 uses
  %i.l = icmp ult i64 %i.k, 9223372036854775784
  %narrow.i.i34 = and i1 %i.j, %i.l
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.n = add nuw nsw i64 %i.k, 16
  %i.o = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.m, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.e) #60 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.e) #58
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.g, %bb.e ], [ %i.o, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.q, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4growB1M_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %2 = mul i64 %1, 24
  %3 = add i64 %2, 16                             ; 4 uses
  %narrow.i = icmp samesign ult i64 %1, 768614336404564650
  %4 = icmp ult i64 %3, 9223372036854775799
  %narrow.i.i = and i1 %narrow.i, %4
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit: ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.c = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 8) #60 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.g, label %bb.h, !prof !23

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit
  %i.e = getelementptr i8, ptr %i.b, i64 -8
  %.val.i = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %5 = mul i64 %.val.i, 24
  %6 = add i64 %5, 16                             ; 2 uses
  %narrow.i34 = icmp ult i64 %.val.i, 768614336404564650
  %7 = icmp ult i64 %6, 9223372036854775799
  %narrow.i.i35 = and i1 %narrow.i34, %7
  br i1 %narrow.i.i35, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit37, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.g = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %6, i64 noundef 8, i64 noundef %3) #60 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %3) #58
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.c, %bb.e ], [ %i.g, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit37 ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.i, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4growCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %narrow.i.i = icmp samesign ult i64 %1, 9223372036854775783
  br i1 %narrow.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  %i.b = add nuw nsw i64 %1, 16                   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !19, !noundef !19 ; 3 uses
  %.not = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  br i1 %.not, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60
  %i.d = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef 8) #60 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.g, label %bb.h, !prof !23

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit
  %i.f = getelementptr i8, ptr %i.c, i64 -8
  %.val.i = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  %narrow.i.i34 = icmp ult i64 %.val.i, 9223372036854775783
  br i1 %narrow.i.i34, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.h = add nuw nsw i64 %.val.i, 16
  %i.i = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %i.g, i64 noundef %i.h, i64 noundef 8, i64 noundef %i.b) #60 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h, !prof !23

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, %bb.e
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.b) #58
  unreachable

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37, %bb.e
  %.sroa.06.0 = phi ptr [ %i.d, %bb.e ], [ %i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit37 ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 16
  store ptr %i.k, ptr %0, align 8
  store i64 1, ptr %.sroa.06.0, align 8
  %.sroa.4.0..sroa.06.0.10.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 8
  store i64 %1, ptr %.sroa.4.0..sroa.06.0.10.sroa_idx, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, ptr } @_RNvMs10_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_6Params8children(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #19 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.03.0.i = phi ptr [ %0, %bb.a ], [ %i.k, %bb.d ] ; 3 uses
  %i.a = load i8, ptr %.sroa.03.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.a, label %default.unreachable [
    i8 0, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 1, label %bb.c
    i8 2, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit
    i8 3, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !noalias !3076, !nonnull !19, !noundef !19 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !3076, !noundef !19
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.g
  br label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.b

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit: ; preds = %bb.b, %bb.b, %bb.c
  %.sroa.3.0.i = phi ptr [ %i.h, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.c ], [ inttoptr (i64 8 to ptr), %bb.b ], [ inttoptr (i64 8 to ptr), %bb.b ]
  %i.l = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs13_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7Pattern8bindings(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %1, align 8, !range !3104, !noundef !19 ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 60)
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.h
    i64 1, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.i, %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 30
  br i1 %i.e, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !19, !align !29, !noundef !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.03.0.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.e ] ; 3 uses
  %i.h = load i8, ptr %.sroa.03.0.i.i.i, align 8, !range !30, !noalias !3107, !noundef !19
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit
    i8 1, label %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i
    i8 2, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit
    i8 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !3107, !nonnull !19, !noundef !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %bb.d

_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !3107, !nonnull !19, !noundef !19 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !3108, !nonnull !19, !noundef !19 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !noalias !3108, !noundef !19 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit, label %.lr.ph.i.i.i

bb.f:                                             ; preds = %_RNvYINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB8_4node10SyntaxNode4castNtB6_7PatternEINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRBE_EE8call_mutB8_.exit.i.i.i
  %i.t = icmp eq ptr %i.v, %i.r
  br i1 %i.t, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i, %bb.f
  %i.u = phi ptr [ %i.v, %bb.f ], [ %i.o, %_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode8children.exit.i.i ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %.sroa.0.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.sroa.0.0.i.i.i.i.i.i = load i8, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 1, !range !21, !alias.scope !3109, !noalias !3110, !noundef !19
  switch i8 %.sroa.0.0.i.i.i.i.i.i, label %_RNvYINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB8_4node10SyntaxNode4castNtB6_7PatternEINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRBE_EE8call_mutB8_.exit.i.i.i [
    i8 56, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit.loopexit
    i8 107, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit.loopexit48
    i8 -121, label %_RNvMsJ_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_13Parenthesized7pattern.exit
  ]

_RNvYINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB8_4node10SyntaxNode4castNtB6_7PatternEINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRBE_EE8call_mutB8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.w = tail call { i64, ptr } @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode12from_untyped(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u), !alias.scope !3109, !noalias !3110 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0        ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.x, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.g

bb.g:                                             ; preds = %_RNvYINvMNtCs5PEMdK7bMAG_12typst_syntax3astNtNtB8_4node10SyntaxNode4castNtB6_7PatternEINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTRBE_EE8call_mutB8_.exit.i.i.i
  %i.y = extractvalue { i64, ptr } %i.w, 1
end_hunk_1

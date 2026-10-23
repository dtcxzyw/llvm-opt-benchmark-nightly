Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtB1f_6styles6StylesEEEECs5cbCQMMIObr_10typst_eval:bb.a
  %narrow.i.not.i.i = or i1 %i.f, %i.i
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs5cbCQMMIObr_10typst_eval.exit.i, !prof !40

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1Q_6styles6StylesEEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  %i.j = add nuw nsw i64 %i.g, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8
  store i64 8, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.j, ptr %i.l, align 8
  %i.m = icmp eq i64 %.8.val, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs5cbCQMMIObr_10typst_eval.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i ], [ 0, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs5cbCQMMIObr_10typst_eval.exit.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.010.i.i ; 3 uses
  %i.o = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !1446, !noundef !35
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.body.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.q)
          to label %.body.i.i unwind label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1447, !noundef !35
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.t)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.o, %.8.val
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.y = add i64 %.sroa.0.1.i.i22, 1              ; 2 uses
  %i.z = icmp eq i64 %i.y, %.8.val
  br i1 %i.z, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.p, %bb.d ], [ %i.p, %bb.c ]
  %i.ab = icmp eq i64 %i.o, %.8.val
  br i1 %i.ab, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i22 = phi i64 [ %i.y, %bb.h ], [ %i.o, %.body.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i22
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(48) %i.ac) #44
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBG_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEE4sizeCs5cbCQMMIObr_10typst_eval.exit.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

bb.k:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvXs7_NtCsakL8LGkl72C_4ecow3vecINtBJ_6EcoVecpENtNtNtB4_3ops4drop4Drop4drop7DeallocECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtCs3oUPovFnLWP_4core6option6OptionNtNtBM_6styles6StylesEEENtNtNtB1L_3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueIBw_NtNtB1T_6styles6StylesEEENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueINtNtB4_6option6OptionNtNtBH_6styles6StylesEEECs5cbCQMMIObr_10typst_eval.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5cbCQMMIObr_10typst_eval(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !35 ; 2 uses
  %narrow.i.i.i = icmp ult i64 %.val.i.i, 9223372036854775783
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  %i.e = add nuw nsw i64 %.val.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8
  store i64 8, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecmEECs5cbCQMMIObr_10typst_eval(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.a
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %.not.i = icmp eq i64 %i.c, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !35 ; 3 uses
  %i.e = icmp ugt i64 %.val.i.i, 4611686018427387903
  br i1 %i.e, label %.thread.i.i, label %bb.b, !prof !40

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  %i.f = icmp samesign ult i64 %.val.i.i, 4611686018427387900
  %i.g = shl nuw i64 %.val.i.i, 2
  %i.h = add i64 %i.g, 16                         ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775799
  %narrow.i.i.i = select i1 %i.f, i1 %i.i, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs5cbCQMMIObr_10typst_eval.exit.i, label %.thread.i.i, !prof !49

.thread.i.i:                                      ; preds = %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecmE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.j, align 8
  store i64 8, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.k, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecmENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecmE4sizeCs5cbCQMMIObr_10typst_eval.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !44, !alias.scope !1450, !noundef !35
  %.not2.i = icmp eq i8 %i.c, 0
  %i.d = load ptr, ptr %0, align 8, !alias.scope !1450, !nonnull !35 ; 6 uses
  %.not.i = icmp eq ptr %i.d, inttoptr (i64 16 to ptr) ; 2 uses
  %or.cond.not.i = select i1 %.not2.i, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.e, align 8, !alias.scope !1450
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1450, !noundef !35 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1450, !noundef !35
  %i.k = sub i64 %i.j, %i.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.h, i64 noundef %i.k)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr nonnull %i.d, i64 0) #44
          to label %common.resume unwind label %bb.h

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval.exit, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit
  %.val16.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.pre = load i64, ptr %.val16.in.phi.trans.insert, align 8
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge, %bb.b
  %.val16 = phi i64 [ %.val16.pre, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit._RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i_crit_edge ], [ 0, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.n = atomicrmw add ptr %i.m, i64 -1 release, align 8
  %.not.i.i = icmp eq i64 %i.n, 1
  br i1 %.not.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.d, i64 -8
  %.val.i.i.i = load i64, ptr %i.o, align 8, !noundef !35 ; 2 uses
  %i.p = icmp ult i64 %.val.i.i.i, 1152921504606846976
  %i.q = shl i64 %.val.i.i.i, 4                   ; 2 uses
  %i.r = icmp ult i64 %i.q, 9223372036854775784
  %narrow.i.i.i.i = and i1 %i.p, %i.r
  br i1 %narrow.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.d, !prof !37

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.s = add nuw nsw i64 %i.q, 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.m, ptr %i.t, align 8
  store i64 8, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.s, ptr %i.u, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef %.val16)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval.exit

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.l, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtB7_6string9EcoStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.f
  ret void

bb.h:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1455)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !44, !alias.scope !1455, !noundef !35
  %.not2.i = icmp eq i8 %i.b, 0
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1455, !nonnull !35 ; 4 uses
  %.not.i = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  %or.cond.not.i = select i1 %.not2.i, i1 true, i1 %.not.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %or.cond.not.i, label %._RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit_crit_edge, label %bb.b

._RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit_crit_edge: ; preds = %bb.a
  %.val1.pre = load i64, ptr %i.d, align 8
  br label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !1455
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1455, !noundef !35 ; 3 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1455, !noundef !35 ; 2 uses
  %i.j = sub i64 %i.i, %i.f                       ; 3 uses
  %i.k = icmp eq i64 %i.i, %i.f
  br i1 %i.k, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.j
  br i1 %i.l, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i6 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.0.i.i6
  %i.n = add nuw nsw i64 %.sroa.0.0.i.i6, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.m)
          to label %bb.c unwind label %bb.e, !noalias !1455

bb.d:                                             ; preds = %.lr.ph8
  %i.o = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %.body, label %.lr.ph8

bb.e:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %i.j
  br i1 %i.r, label %.body, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i7 = phi i64 [ %i.o, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.sroa.0.1.i.i7
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.s) #44
          to label %bb.d unwind label %bb.f, !noalias !1455

bb.f:                                             ; preds = %.lr.ph8
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1456
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %i.c, i64 0) #44
          to label %bb.h unwind label %bb.g

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.c, %bb.b, %._RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit_crit_edge
  %.val1 = phi i64 [ %.val1.pre, %._RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit_crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ]
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %i.c, i64 %.val1)
  ret void

bb.g:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !44, !alias.scope !1459, !noundef !35
  %.not2.i = icmp eq i8 %i.b, 0
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1459, !nonnull !35 ; 2 uses
  %.not.i = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  %or.cond.not.i = select i1 %.not2.i, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !1459
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1459, !noundef !35 ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1459, !noundef !35
  %i.j = sub i64 %i.i, %i.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.g, i64 noundef %i.j)
          to label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #44
          to label %bb.e unwind label %bb.d

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a, %bb.b
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !44, !alias.scope !1462, !noundef !35
  %.not2.i = icmp eq i8 %i.b, 0
  %i.c = load ptr, ptr %0, align 8, !alias.scope !1462, !nonnull !35 ; 2 uses
  %.not.i = icmp eq ptr %i.c, inttoptr (i64 16 to ptr)
  %or.cond.not.i = select i1 %.not2.i, i1 true, i1 %.not.i
  br i1 %or.cond.not.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !1462
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1462, !noundef !35 ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1462, !noundef !35 ; 2 uses
  %i.j = sub i64 %i.i, %i.f                       ; 3 uses
  %i.k = icmp eq i64 %i.i, %i.f
  br i1 %i.k, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.j
  br i1 %i.l, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i2 = phi i64 [ %i.n, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.0.i.i2
  %i.n = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
          to label %bb.c unwind label %bb.e, !noalias !1462, !inline_history !3

bb.d:                                             ; preds = %.lr.ph4
  %i.o = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.j
  br i1 %i.p, label %.body, label %.lr.ph4

bb.e:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %i.j
  br i1 %i.r, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i3 = phi i64 [ %i.o, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.1.i.i3
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #44
          to label %bb.d unwind label %bb.f, !noalias !1462, !inline_history !3

bb.f:                                             ; preds = %.lr.ph4
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1462, !inline_history !3
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #44
          to label %bb.h unwind label %bb.g

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCseVcqU0FIJnD_5codex6shared11ModifierSetNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr %.0.val, i8 %.15.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.15.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !73
  %.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !73
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !73, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.c, !prof !37

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42, !noalias !73
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !noalias !73
  store i64 8, ptr %i.a, align 8, !noalias !73
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !73
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !73
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1k_4item4ItemEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.a, align 8, !alias.scope !1472, !noundef !35 ; 4 uses
  %i.b = icmp eq i64 %.val1.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1472, !nonnull !35, !noundef !35
  %or.cond.i.i.i.i.i = icmp slt i64 %.val1.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i), !noalias !1472
  %i.d = shl i64 %.val1.i, 3
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i), !noalias !1472
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j), !noalias !1472
  %i.k = sub nuw nsw i64 -16, %i.e
  %i.l = getelementptr inbounds i8, ptr %.val.i, i64 %i.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #45, !noalias !1472
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1474, !nonnull !35, !noundef !35 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1474, !noundef !35 ; 4 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %.lr.ph
  %i.r = icmp eq i64 %i.t, %i.p
  br i1 %i.r, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.0.0.i3 = phi i64 [ %i.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw [328 x i8], ptr %i.n, i64 %.sroa.0.0.i3 ; 2 uses
  %i.t = add i64 %.sroa.0.0.i3, 1                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit3key3KeyECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(144) %i.u), !noalias !1473, !inline_history !1469
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4item4ItemECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit.i unwind label %.body.i, !noalias !1473, !inline_history !1469

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %.lr.ph5
  %i.v = add i64 %.sroa.0.1.i4, 1                 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.p
  br i1 %i.w, label %.body, label %.lr.ph5

.body.i:                                          ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = icmp eq i64 %i.t, %i.p
  br i1 %i.y, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %.body.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit
  %.sroa.0.1.i4 = phi i64 [ %i.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit ], [ %i.t, %.body.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [328 x i8], ptr %i.n, i64 %.sroa.0.1.i4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 176
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit3key3KeyECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(144) %i.aa), !noalias !1473, !inline_history !1470
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs89doag9UmMt_9toml_edit4item4ItemECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(328) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit unwind label %bb.b, !inline_history !1470

bb.b:                                             ; preds = %.lr.ph5
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !1473, !inline_history !1471
  unreachable

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1g_4item4ItemEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsjFU9swAW47b_8indexmap3map4core12IndexMapCoreNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1w_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit
  %.val.i1 = load i64, ptr %0, align 8, !range !43, !alias.scope !1473, !noundef !35 ; 2 uses
  %i.ac = icmp eq i64 %.val.i1, 0
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1J_4item4ItemEEECs5cbCQMMIObr_10typst_eval.exit, label %bb.d

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1c_4item4ItemEECs5cbCQMMIObr_10typst_eval.exit, %.body.i
  %.val2.i = load i64, ptr %0, align 8, !range !43, !alias.scope !1473, !noundef !35 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i, 0
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1Q_4item4ItemEEECs5cbCQMMIObr_10typst_eval.exit.i, label %bb.c

bb.c:                                             ; preds = %.body
  %i.ae = mul nuw i64 %.val2.i, 328
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !1473, !inline_history !1475
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtCsjFU9swAW47b_8indexmap6BucketNtNtCs89doag9UmMt_9toml_edit3key3KeyNtNtB1Q_4item4ItemEEECs5cbCQMMIObr_10typst_eval.exit.i

end_hunk_0
begin_hunk_1_@_RINvNtCs5cbCQMMIObr_10typst_eval4code9eval_codeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBS_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEINvMNtB2f_3astB2b_4castNtB33_4ExprEEEB4_:bb.a
  %.pn119180 = phi { ptr, i32 } [ %.pn144, %.thread145 ], [ %i.cr, %bb.ar ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 5 uses
  %i.fd = load i64, ptr %i.ae, align 8, !range !85, !alias.scope !3814, !noundef !35
  switch i64 %i.fd, label %bb.bz [
    i64 -2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit139
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit139
    i64 33, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit139
    i64 32, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit139
  ]

bb.bz:                                            ; preds = %.thread145.thread
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit139 unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs5cbCQMMIObr_10typst_eval6markup11eval_markupINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtBT_6filter6FilterINtNtNtBX_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENCNvMs1_NtB2G_3astNtB3y_6Markup5exprs0ENvMs2_B3y_NtB3y_4Expr15cast_with_spaceEEB4_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7 = alloca [7 x i8], align 8             ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [72 x i8], align 8                ; 12 uses
  %i.v = alloca [72 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 10 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [112 x i8], align 16             ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [112 x i8], align 16             ; 8 uses
  %i.ag = alloca [112 x i8], align 16             ; 12 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 18 uses
  %i.an = alloca [48 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  store i64 -2, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %.val = load ptr, ptr %2, align 8, !nonnull !35, !noundef !35 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val170 = load ptr, ptr %i.ao, align 8, !nonnull !35, !noundef !35 ; 2 uses
  %i.ap = ptrtoint ptr %.val170 to i64
  %i.aq = ptrtoint ptr %.val to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = lshr exact i64 %i.ar, 5                 ; 3 uses
  %i.at = mul nuw i64 %i.as, 24                   ; 2 uses
  %.not.i = icmp ugt i64 %i.ar, -6148914691236517216
  br i1 %.not.i, label %bb.e, label %bb.c, !prof !86

bb.b:                                             ; preds = %.thread232
  br i1 %.sroa.076.1236, label %.thread, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit210

bb.c:                                             ; preds = %bb.a
  %i.au = icmp eq ptr %.val170, %.val
  br i1 %i.au, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5cbCQMMIObr_10typst_eval.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3866
  %i.av = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !3866 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %i.ax = ptrtoint ptr %i.av to i64
  br label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5cbCQMMIObr_10typst_eval.exit

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  %.sroa.10215.0.ph = phi i64 [ %i.at, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ undef, %bb.a ]
  %.sroa.4.0.ph = phi i64 [ 8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.a ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.sroa.10215.0.ph) #42
          to label %bb.cv unwind label %.split.thread

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.c, %bb.d
  %.sroa.10215.0 = phi i64 [ %i.ax, %bb.d ], [ 8, %bb.c ]
  %.sroa.4.0 = phi i64 [ %i.as, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ay = inttoptr i64 %.sroa.10215.0 to ptr
  %i.az = icmp samesign ule i64 %i.as, %.sroa.4.0
  tail call void @llvm.assume(i1 %i.az)
  store i64 %.sroa.4.0, ptr %i.am, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 6 uses
  store ptr %i.ay, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 9 uses
  store i64 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.642.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.845.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.853.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.824.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %.sroa.3.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.r, i64 15 ; 2 uses
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5cbCQMMIObr_10typst_eval.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !3867)
  call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  call void @llvm.experimental.noalias.scope.decl(metadata !3869)
  call void @llvm.experimental.noalias.scope.decl(metadata !3870)
  call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  %i.cb = load ptr, ptr %i.ao, align 8, !alias.scope !3872, !nonnull !35, !noundef !35
  %.promoted.i.i.i.i = load ptr, ptr %2, align 8, !alias.scope !3872
  %.promoted11.i.i.i.i = load i8, ptr %i.bc, align 8, !alias.scope !3873
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %bb.f
  %i.cc = phi i8 [ %i.cl, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %.promoted11.i.i.i.i, %bb.f ]
  %i.cd = phi ptr [ %i.cf, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %bb.f ] ; 4 uses
  %i.ce = icmp eq ptr %i.cd, %i.cb
  br i1 %i.ce, label %.loopexit267, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 2 uses
  store ptr %i.cf, ptr %2, align 8, !alias.scope !3872
  call void @llvm.experimental.noalias.scope.decl(metadata !3874)
  call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  %.sroa.01.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %.sroa.01.0.i.i.i.i.i.i = load i8, ptr %.sroa.01.0.in.i.i.i.i.i.i, align 1, !range !87, !alias.scope !3874, !noalias !3876, !noundef !35 ; 2 uses
  switch i8 %.sroa.01.0.i.i.i.i.i.i, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i [
    i8 120, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
    i8 121, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
    i8 122, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
    i8 127, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
    i8 -125, label %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
  ]

_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i: ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  store i8 1, ptr %i.bc, align 8, !alias.scope !3877, !noalias !3874
  br label %bb.i

_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.h
  %3 = icmp ne i8 %.sroa.01.0.i.i.i.i.i.i, 7
  %i.cg = icmp eq i8 %i.cc, 0
  %spec.select.i.i.i.i.i.i = or i1 %i.cg, %3
  store i8 0, ptr %i.bc, align 8, !alias.scope !3877, !noalias !3874
  br i1 %spec.select.i.i.i.i.i.i, label %bb.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.i:                                             ; preds = %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i
  %i.ch = phi i8 [ 0, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ], [ 1, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i.i ]
  %i.ci = invoke { i64, ptr } @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4Expr15cast_with_space(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cd)
          to label %.noexc171 unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc171:                                        ; preds = %bb.i
  %i.cj = extractvalue { i64, ptr } %i.ci, 0      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cj, -1
  %i.ck = extractvalue { i64, ptr } %i.ci, 1
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr undef, ptr %i.ck
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.noexc171, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.cl = phi i8 [ %i.ch, %.noexc171 ], [ 0, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ]
  %.sroa.3.0.i.i.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i.i.i, %.noexc171 ], [ undef, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.0.0.i8.i.i.i.i = phi i64 [ %i.cj, %.noexc171 ], [ -1, %_RNCNvMs1_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_6Markup5exprs0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 4 uses
  switch i64 %.sroa.0.0.i8.i.i.i.i, label %bb.j [
    i64 -1, label %bb.g
    i64 51, label %bb.l
    i64 50, label %bb.k
  ]

bb.j:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.x, i64 noundef %.sroa.0.0.i8.i.i.i.i, ptr noundef %.sroa.3.0.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1)
          to label %bb.ay unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvXNtCs5cbCQMMIObr_10typst_eval5rulesNtNtCs5PEMdK7bMAG_12typst_syntax3ast7SetRuleNtB4_4Eval4eval(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1)
          to label %bb.m unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtB1a_3ast4ExprENCNvMs1_B2B_NtB2B_6Markup5exprs0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2z_QNvMs2_B2B_B2z_15cast_with_spaceE0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval5rulesNtNtCs5PEMdK7bMAG_12typst_syntax3ast8ShowRuleNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.3.0.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %1)
          to label %bb.ah unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  %i.cm = load i64, ptr %i.ak, align 8, !range !36, !noundef !35
  %i.cn = trunc nuw i64 %i.cm to i1
  %i.co = load ptr, ptr %i.bf, align 8, !nonnull !35, !noundef !35 ; 3 uses
  %i.cp = load i64, ptr %i.bg, align 8, !noundef !35 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %i.cr, align 8
  store ptr null, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit174

bb.o:                                             ; preds = %bb.m
  store ptr %i.co, ptr %i.al, align 8
  store i64 %i.cp, ptr %i.bh, align 8
  %i.cs = load i64, ptr %1, align 8, !range !85, !noundef !35
  %.not156 = icmp eq i64 %i.cs, -2
  br i1 %.not156, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs5cbCQMMIObr_10typst_eval6markup11eval_markupINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtBT_6filter6FilterINtNtNtBX_5slice4iter4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENCNvMs1_NtB2G_3astNtB3y_6Markup5exprs0ENvMs2_B3y_NtB3y_4Expr15cast_with_spaceEEB4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef align 8 dereferenceable(384) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2)
          to label %bb.r unwind label %bb.aa

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18

bb.r:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %i.ai, align 8, !noundef !35 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = load ptr, ptr %.sroa.484.0..sroa_idx, align 8 ; 2 uses
  %i.cw = load i64, ptr %.sroa.585.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %i.cy, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.al)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit174 unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !18

bb.t:                                             ; preds = %bb.r
  store ptr %i.ct, ptr %i.ah, align 8
  store ptr %i.cv, ptr %.sroa.6.0..sroa_idx22, align 8
  store i64 %i.cw, ptr %.sroa.824.0..sroa_idx25, align 8
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content15styled_with_map(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah, ptr noundef nonnull %i.co, i64 noundef %i.cp)
          to label %bb.u unwind label %.body191.thread346.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cz = load i64, ptr %i.bb, align 8, !alias.scope !3878, !noundef !35 ; 3 uses
  %i.da = load i64, ptr %i.am, align 8, !range !43, !alias.scope !3878, !noundef !35
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.y unwind label %bb.w, !noalias !3879

bb.w:                                             ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.thread232 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.de = load ptr, ptr %i.ba, align 8, !alias.scope !3878, !nonnull !35, !noundef !35
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.dg = add i64 %i.cz, 1
  store i64 %i.dg, ptr %i.bb, align 8, !alias.scope !3878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.z

bb.z:                                             ; preds = %bb.ce, %bb.au, %bb.y
  %i.dh = load i64, ptr %1, align 8, !range !85, !noundef !35
  %.not164 = icmp eq i64 %i.dh, -2
  br i1 %.not164, label %bb.f, label %.loopexit267

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit174: ; preds = %bb.s, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.al)
          to label %.thread232 unwind label %bb.ab, !inline_history !18

bb.ab:                                            ; preds = %bb.cw, %bb.cg, %bb.aa, %.thread232, %.thread252, %.body197, %bb.bw, %bb.br, %.loopexit.split-lp277.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp272, %bb.aw
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.loopexit267

bb.ac:                                            ; preds = %bb.az, %bb.av, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6StylesECs5cbCQMMIObr_10typst_eval.exit174
  call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  %.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !3880, !nonnull !35, !noundef !35 ; 4 uses
  %.val1.i = load i64, ptr %i.bb, align 8, !alias.scope !3880, !noundef !35 ; 4 uses
  %i.dk = icmp eq i64 %.val1.i, 0
  br i1 %i.dk, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph454

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %.lr.ph454
  %i.dl = icmp eq i64 %i.dn, %.val1.i
  br i1 %i.dl, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, label %.lr.ph454

.lr.ph454:                                        ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.sroa.0.0.i.i.i452 = phi i64 [ %i.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i452
  %i.dn = add nuw nsw i64 %.sroa.0.0.i.i.i452, 1  ; 4 uses
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dm)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit.i.i.i unwind label %bb.ad, !noalias !3880

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit7.i.i.i: ; preds = %.lr.ph457
  %i.do = add i64 %.sroa.0.1.i.i.i455, 1          ; 2 uses
  %i.dp = icmp eq i64 %i.do, %.val1.i
  br i1 %i.dp, label %.body.i, label %.lr.ph457

bb.ad:                                            ; preds = %.lr.ph454
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = icmp eq i64 %i.dn, %.val1.i
  br i1 %i.dr, label %.body.i, label %.lr.ph457

.lr.ph457:                                        ; preds = %bb.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit7.i.i.i
  %.sroa.0.1.i.i.i455 = phi i64 [ %i.do, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit7.i.i.i ], [ %i.dn, %bb.ad ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i455
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit7.i.i.i unwind label %bb.ae, !noalias !3880

bb.ae:                                            ; preds = %.lr.ph457
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !3880
  unreachable

.body.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs5cbCQMMIObr_10typst_eval.exit7.i.i.i, %bb.ad
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp samesign eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.h = load i64, ptr %i.d, align 8, !range !36, !noundef !35 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = load i64, ptr %i.e, align 8              ; 2 uses
  %.sroa.0.0 = select i1 %i.i, i64 %i.j, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.j, %bb.k, %bb.b
  %.sroa.014.0.sink = phi i8 [ 2, %bb.b ], [ 2, %bb.j ], [ 2, %bb.a ], [ %spec.select, %bb.k ], [ 2, %bb.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sroa.014.0.sink, ptr %i.k, align 2
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.l = phi i64 [ %i.cq, %bb.i ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.cr, %bb.i ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.125 = phi i64 [ %.sroa.0.2, %bb.i ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.024 = phi ptr [ %.sroa.5.3.ph, %bb.i ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !14347, !noundef !35 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.c, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i: ; preds = %.lr.ph
  %i.q = icmp ne ptr %1, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !14347, !noundef !35 ; 3 uses
  %i.t = and i8 %i.s, 31
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.o to i32
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i
  %i.x = icmp ne ptr %1, %i.r
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -3 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !14347, !noundef !35 ; 3 uses
  %i.aa = and i8 %i.z, 15
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = icmp slt i8 %i.z, -64
  br i1 %i.ac, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.e ], [ %i.r, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.at, %bb.e ], [ %i.u, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.ae = and i8 %i.o, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.f

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i
  %i.ah = icmp ne ptr %1, %i.y
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !14347, !noundef !35
  %i.ak = and i8 %i.aj, 7
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = and i8 %i.z, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i
  %.sroa.5.2 = phi ptr [ %i.ai, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i ], [ %i.y, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ap, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i ], [ %i.ab, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i ]
  %i.aq = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ar = and i8 %i.s, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.4.1.i.ph = phi i32 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 22 uses
  %i.au = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.au)
  %i.av = add nsw i32 %.sroa.4.1.i.ph, -2381      ; 2 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 25)
  switch i32 %i.aw, label %bb.g [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 3, label %bb.h
    i32 4, label %bb.h
    i32 6, label %bb.h
    i32 8, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp samesign ult i32 %.sroa.4.1.i.ph, 43263
  %i.ay = select i1 %i.ax, i64 0, i64 185, !unpredictable !35 ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, 93               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.az ; 2 uses
  %.val12.1.i = load i32, ptr %i.ba, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %.val13.1.i = load i32, ptr %i.bb, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.1.i = icmp samesign ugt i32 %.val12.1.i, %.sroa.4.1.i.ph
  %.not1.i18.1.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.1.i
  %i.bc = select i1 %.not1.i18.1.i, i1 %.not.i17.1.i, i1 false
  %i.bd = select i1 %i.bc, i64 %i.ay, i64 %i.az, !unpredictable !35 ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 46               ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.be ; 2 uses
  %.val12.2.i = load i32, ptr %i.bf, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %.val13.2.i = load i32, ptr %i.bg, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.2.i = icmp samesign ugt i32 %.val12.2.i, %.sroa.4.1.i.ph
  %.not1.i18.2.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.2.i
  %i.bh = select i1 %.not1.i18.2.i, i1 %.not.i17.2.i, i1 false
  %i.bi = select i1 %i.bh, i64 %i.bd, i64 %i.be, !unpredictable !35 ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 23               ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.bj ; 2 uses
  %.val12.3.i = load i32, ptr %i.bk, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %.val13.3.i = load i32, ptr %i.bl, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.3.i = icmp samesign ugt i32 %.val12.3.i, %.sroa.4.1.i.ph
  %.not1.i18.3.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.3.i
  %i.bm = select i1 %.not1.i18.3.i, i1 %.not.i17.3.i, i1 false
  %i.bn = select i1 %i.bm, i64 %i.bi, i64 %i.bj, !unpredictable !35 ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 12               ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.bo ; 2 uses
  %.val12.4.i = load i32, ptr %i.bp, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %.val13.4.i = load i32, ptr %i.bq, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.4.i = icmp samesign ugt i32 %.val12.4.i, %.sroa.4.1.i.ph
  %.not1.i18.4.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.4.i
  %i.br = select i1 %.not1.i18.4.i, i1 %.not.i17.4.i, i1 false
  %i.bs = select i1 %i.br, i64 %i.bn, i64 %i.bo, !unpredictable !35 ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 6                ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.bt ; 2 uses
  %.val12.5.i = load i32, ptr %i.bu, align 4, !range !97, !noalias !14348, !noundef !35
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  %.val13.5.i = load i32, ptr %i.bv, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.5.i = icmp samesign ugt i32 %.val12.5.i, %.sroa.4.1.i.ph
  %.not1.i18.5.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.5.i
  %i.bw = select i1 %.not1.i18.5.i, i1 %.not.i17.5.i, i1 false
  %i.bx = select i1 %i.bw, i64 %i.bs, i64 %i.bt, !unpredictable !35 ; 2 uses
  %i.by = add nuw nsw i64 %i.bx, 3                ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.by ; 2 uses
  %.val12.6.i = load i32, ptr %i.bz, align 4, !range !97, !noalias !14348, !noundef !35
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val13.6.i = load i32, ptr %i.ca, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.6.i = icmp samesign ugt i32 %.val12.6.i, %.sroa.4.1.i.ph
  %.not1.i18.6.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.6.i
  %i.cb = select i1 %.not1.i18.6.i, i1 %.not.i17.6.i, i1 false
  %i.cc = select i1 %i.cb, i64 %i.bx, i64 %i.by, !unpredictable !35 ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.cd ; 2 uses
  %.val12.7.i = load i32, ptr %i.ce, align 4, !range !97, !noalias !14348, !noundef !35
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %.val13.7.i = load i32, ptr %i.cf, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.7.i = icmp samesign ugt i32 %.val12.7.i, %.sroa.4.1.i.ph
  %.not1.i18.7.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.7.i
  %i.cg = select i1 %.not1.i18.7.i, i1 %.not.i17.7.i, i1 false
  %i.ch = select i1 %i.cg, i64 %i.cc, i64 %i.cd, !unpredictable !35 ; 2 uses
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.ci ; 2 uses
  %.val12.8.i = load i32, ptr %i.cj, align 4, !range !97, !noalias !14348, !noundef !35
  %i.ck = getelementptr i8, ptr %i.cj, i64 4
  %.val13.8.i = load i32, ptr %i.ck, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i17.8.i = icmp samesign ugt i32 %.val12.8.i, %.sroa.4.1.i.ph
  %.not1.i18.8.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.8.i
  %i.cl = select i1 %.not1.i18.8.i, i1 %.not.i17.8.i, i1 false
  %i.cm = select i1 %i.cl, i64 %i.ch, i64 %i.ci, !unpredictable !35
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr @203, i64 %i.cm ; 2 uses
  %.val15.i = load i32, ptr %i.cn, align 4, !range !97, !noalias !14348, !noundef !35
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %.val16.i = load i32, ptr %i.co, align 4, !range !97, !noalias !14348, !noundef !35
  %.not.i.i = icmp samesign ule i32 %.val15.i, %.sroa.4.1.i.ph
  %.not1.i.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val16.i
  %.not.i.not = select i1 %.not1.i.i, i1 %.not.i.i, i1 false
  br i1 %.not.i.not, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.cp = add i64 %.sroa.0.125, 1                 ; 3 uses
  store i64 1, ptr %i.d, align 8
  store i64 %i.cp, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.cq = phi i64 [ %i.l, %bb.g ], [ %i.cp, %bb.h ]
  %i.cr = phi i64 [ %i.m, %bb.g ], [ 1, %bb.h ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.125, %bb.g ], [ %i.cp, %bb.h ]
  %i.cs = icmp eq ptr %1, %.sroa.5.3.ph
  br i1 %i.cs, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %3 = icmp eq i64 %i.l, 0
  %not. = icmp eq i64 %i.m, 0
  %.sroa.08.0.not = select i1 %not., i1 true, i1 %3
  br i1 %.sroa.08.0.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = tail call noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.ct, 5
  %spec.select = select i1 %.not, i8 1, i8 2
  br label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtNtNtNtCs1xwejQucwHj_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCs52A7LXK8cJh_4toml5value5ValueE12insert_entryCs5cbCQMMIObr_10typst_eval(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4.sroa.6.i = alloca [32 x i8], align 8 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [32 x i8], align 8        ; 5 uses
  %i.f = alloca [88 x i8], align 8                ; 10 uses
  %.sroa.19.i = alloca [32 x i8], align 8         ; 11 uses
  %.sroa.737.sroa.6.i = alloca [32 x i8], align 8 ; 5 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noundef !35 ; 14 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !35, !noundef !35 ; 3 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.k = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #45 ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %bb.d, !prof !40

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #42
          to label %.noexc unwind label %bb.cv

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 626 ; 3 uses
  store i16 0, ptr %i.n, align 2
  store ptr %i.k, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 0, ptr %i.o, align 8
  %.sroa.018.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx20, align 8 ; 3 uses
  %i.p = load i16, ptr %i.n, align 2, !noalias !14475, !noundef !35 ; 3 uses
  %i.q = icmp ult i16 %i.p, 11
  br i1 %i.q, label %bb.k, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @217, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @218) #42
          to label %bb.g unwind label %bb.f, !noalias !14475

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs52A7LXK8cJh_4toml5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %2) #44
          to label %bb.i unwind label %bb.h, !noalias !14476

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14475
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %.sroa.018.0.copyload, 0
  br i1 %i.t, label %.critedge9, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.018.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !14477
  br label %.critedge9

bb.k:                                             ; preds = %bb.d
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.u = zext nneg i16 %i.p to i64                ; 3 uses
  %i.v = add nuw nsw i16 %i.p, 1
  store i16 %i.v, ptr %i.n, align 2, !noalias !14475
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.u ; 3 uses
  store i64 %.sroa.018.0.copyload, ptr %i.x, align 8, !noalias !14478
  %.sroa.5.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx21, align 8, !noalias !14478
  %.sroa.6.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx23, align 8, !noalias !14478
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14476
  br label %bb.l

bb.l:                                             ; preds = %bb.ct, %bb.k
  %i.z = phi ptr [ %i.j, %bb.k ], [ %.val11, %bb.ct ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %i.u, %bb.k ], [ %.sroa.12.1, %bb.ct ]
  %.sroa.7.0 = phi i64 [ 0, %bb.k ], [ %.sroa.7.1, %bb.ct ]
  %.sroa.0.0 = phi ptr [ %i.k, %bb.k ], [ %.sroa.0.1, %bb.ct ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !35
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.z, ptr %i.ad, align 8
  ret void

bb.m:                                             ; preds = %bb.a
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.426.0.copyload = load i64, ptr %.sroa.426.0..sroa_idx, align 8 ; 5 uses
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.628.0.copyload = load i64, ptr %.sroa.628.0..sroa_idx, align 8 ; 12 uses
  %.sroa.030.0.copyload = load i64, ptr %1, align 8 ; 6 uses
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.531.0.copyload = load ptr, ptr %.sroa.531.0..sroa_idx, align 8 ; 6 uses
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.732.0.copyload = load i64, ptr %.sroa.732.0..sroa_idx, align 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.ae, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 626 ; 4 uses
  %i.ag = load i16, ptr %i.af, align 2, !noalias !14479, !noundef !35 ; 3 uses
  %i.ah = icmp ugt i16 %i.ag, 10
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = icmp ult i64 %.sroa.628.0.copyload, 5
  br i1 %i.ai, label %bb.u, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.aj = zext nneg i16 %i.ag to i64              ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14480)
  %i.al = add i64 %.sroa.628.0.copyload, 1        ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.al, %i.aj
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.628.0.copyload ; 7 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %.sroa.030.0.copyload, ptr %i.am, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.912.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx15.i, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.11.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx23.i, align 8, !alias.scope !14481, !noalias !14482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14483
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14484)
  br label %.thread.i

bb.q:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.al
  %i.ao = sub nsw i64 %i.aj, %.sroa.628.0.copyload ; 2 uses
  %i.ap = mul nuw nsw i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.am, i64 %i.ap, i1 false), !alias.scope !14485, !noalias !14486
  store i64 %.sroa.030.0.copyload, ptr %i.am, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.912.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.531.0.copyload, ptr %.sroa.912.0..sroa_idx13.i, align 8, !alias.scope !14481, !noalias !14482
  %.sroa.11.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.732.0.copyload, ptr %.sroa.11.0..sroa_idx21.i, align 8, !alias.scope !14481, !noalias !14482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !noalias !14483
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.sroa.628.0.copyload
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.al
  %i.as = shl nuw nsw i64 %i.ao, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 8 %i.aq, i64 %i.as, i1 false), !alias.scope !14487, !noalias !14486
  br label %.thread.i

bb.r:                                             ; preds = %bb.n
  switch i64 %.sroa.628.0.copyload, label %bb.s [
    i64 5, label %bb.u
    i64 6, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.at = add i64 %.sroa.628.0.copyload, -7
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.n
  %.sroa.09.0.i.i = phi i1 [ true, %bb.t ], [ true, %bb.s ], [ false, %bb.n ], [ false, %bb.r ] ; 2 uses
  %.sroa.510.0.i.i = phi i64 [ 0, %bb.t ], [ %i.at, %bb.s ], [ %.sroa.628.0.copyload, %bb.n ], [ %.sroa.628.0.copyload, %bb.r ] ; 9 uses
  %.sroa.013.0.i.i = phi i64 [ 5, %bb.t ], [ 6, %bb.s ], [ 4, %bb.n ], [ %.sroa.628.0.copyload, %bb.r ] ; 5 uses
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !14488
end_hunk_2
begin_hunk_3_@_RNvNtCs5cbCQMMIObr_10typst_eval6import6import:bb.a
  store i64 %i.cv, ptr %.sroa.8.0..sroa_idx9, align 8
  %i.cx = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ca)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4path9PathOrStrECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call fastcc void @_RNvNtCs5cbCQMMIObr_10typst_eval6import11import_file(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(200) %1, i16 noundef %i.cx, i64 noundef %4)
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval6import14import_package.exit

bb.k:                                             ; preds = %bb.h
  %i.cy = extractvalue { ptr, i64 } %i.cw, 0
  %i.cz = extractvalue { ptr, i64 } %i.cw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cz, ptr %i.db, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4path9PathOrStrECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval6import14import_package.exit

bb.l:                                             ; preds = %bb.f
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.m:                                             ; preds = %bb.c
  %i.dd = extractvalue { i64, i64 } %i.cm, 1
  %i.de = extractvalue { i64, i64 } %i.cm, 0
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !noalias !16370
  store i64 %i.de, ptr %i.bz, align 8, !noalias !16372
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.dd, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16372
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16372
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !16372
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !16372
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !16372
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !16372
  %i.df = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.bz), !noalias !16372 ; 2 uses
  %i.dg = extractvalue { ptr, i64 } %i.df, 0      ; 2 uses
  %i.dh = extractvalue { ptr, i64 } %i.df, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !16372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %i.dj, align 8
  store i64 2, ptr %0, align 8
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval6import14import_package.exit

bb.n:                                             ; preds = %bb.b
  %.sroa.5.8.copyload = load ptr, ptr %i.cl, align 8, !alias.scope !16372 ; 6 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.9.8.copyload = load i64, ptr %.sroa.9.8..sroa_idx, align 8, !alias.scope !16372 ; 3 uses
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.11.8..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.8..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  store ptr %.sroa.5.8.copyload, ptr %i.cd, align 8
  %.sroa.9.8..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.sroa.9.8.copyload, ptr %.sroa.9.8..sroa_idx2, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !16377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !16377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16378), !noalias !16374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !16379
  %.not.i.i = icmp sgt i64 %.sroa.9.8.copyload, -1
  br i1 %.not.i.i, label %bb.o, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i57 = icmp eq ptr %.sroa.5.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i57, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = getelementptr inbounds i8, ptr %.sroa.5.8.copyload, i64 -16
  %i.dl = atomicrmw add ptr %i.dk, i64 1 monotonic, align 8, !noalias !16380
  %i.dm = icmp slt i64 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, !prof !40

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.sroa.5.8.copyload) #42
          to label %.noexc119.i unwind label %bb.w

.noexc119.i:                                      ; preds = %bb.q
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.n, %bb.p, %bb.o
  %.sroa.06.0.i.i = phi ptr [ %.sroa.5.8.copyload, %bb.p ], [ inttoptr (i64 16 to ptr), %bb.o ], [ %.sroa.5.8.copyload, %bb.n ]
  store ptr %.sroa.06.0.i.i, ptr %i.be, align 8, !noalias !16379
  %.sroa.58.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %.sroa.9.8.copyload, ptr %.sroa.58.0..sroa_idx9.i.i, align 8, !noalias !16379
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cd, i64 31
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !16381, !noalias !16374, !noundef !35
  %.not44.i.i = icmp sgt i8 %i.do, -1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %.val.i.i = load ptr, ptr %.sroa.11.8..sroa_idx4, align 8, !alias.scope !16381, !noalias !16374 ; 5 uses
  %.val45.i.i = load i64, ptr %i.dp, align 8, !alias.scope !16381, !noalias !16374
  br i1 %.not44.i.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i
  %.not.i.i48.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i.i, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.dr = atomicrmw add ptr %i.dq, i64 1 monotonic, align 8, !noalias !16380
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.t, label %bb.x, !prof !40

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i) #42
          to label %.noexc.i.i56 unwind label %bb.u

.noexc.i.i56:                                     ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #44
          to label %.body.i unwind label %bb.v, !noalias !16380

bb.v:                                             ; preds = %bb.u
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16380
  unreachable

.body.i:                                          ; preds = %bb.bj, %.body150.i, %bb.bg, %bb.ba, %.body124.i, %bb.w, %bb.u
  %.pn117.i = phi { ptr, i32 } [ %i.hu, %bb.ba ], [ %i.if, %bb.bg ], [ %i.dt, %bb.u ], [ %.pn115.i, %.body150.i ], [ %i.dv, %bb.w ], [ %eh.lpad-body125.i, %.body124.i ], [ %.pn115.i, %bb.bj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.cd) #44
          to label %common.resume unwind label %bb.gc, !noalias !16382

bb.w:                                             ; preds = %bb.q, %.invoke.i, %.noexc133.i, %_RNvXs1_NtCs3oUPovFnLWP_4core7convertNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanINtB5_4IntoNtBA_8DiagSpanE4intoCs5cbCQMMIObr_10typst_eval.exit.i.i.i, %bb.az, %bb.ay, %.loopexit.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.s, %bb.r
  %.sroa.027.0.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.r ], [ %.val.i.i, %bb.s ], [ %.val.i.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.6.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i41, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.dw, i64 12, i1 false), !noalias !16382
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !noalias !16377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !16379
  %.sroa.4.0..sroa_idx425.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store ptr %.sroa.027.0.i.i, ptr %.sroa.4.0..sroa_idx425.i, align 8, !noalias !16377
  %.sroa.5.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store i64 %.val45.i.i, ptr %.sroa.5.0..sroa_idx.i42, align 8, !noalias !16377
  store i64 1, ptr %i.bt, align 8, !noalias !16377
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7428.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !16383
  invoke void @_RNvNtCs5PEMdK7bMAG_12typst_syntax4path10components(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @274, i64 noundef 10)
          to label %.noexc120.i unwind label %bb.av, !noalias !16382

.noexc120.i:                                      ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !16384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !16383
  invoke void @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments3new(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bd)
          to label %.noexc121.i unwind label %bb.av, !noalias !16382

.noexc121.i:                                      ; preds = %.noexc120.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 89 ; 2 uses
  %.promoted69.i.i.i = load i8, ptr %i.ea, align 1, !alias.scope !16385, !noalias !16383 ; 2 uses
  %.promoted70.i.i.i = load i64, ptr %i.dz, align 8, !noalias !16383 ; 4 uses
  %.promoted76.i.i.i = load i64, ptr %i.dy, align 8, !noalias !16383 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !noalias !16383, !nonnull !35 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !noalias !16383 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.ee = load i64, ptr %i.ed, align 8, !noalias !16383 ; 8 uses
  %.not.i.i.i.i.i.i.i.i43 = icmp ugt i64 %i.ee, %.val1.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bc, i64 72 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  %i.eh = load i8, ptr %i.eg, align 8, !noalias !16383 ; 2 uses
  %i.ei = zext nneg i8 %i.eh to i64               ; 4 uses
  %i.ej = icmp ult i8 %i.eh, 5
  %i.ek = getelementptr i8, ptr %i.ef, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.en = load i8, ptr %i.em, align 8, !range !44, !noalias !16383
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !noalias !16383 ; 4 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq i8 %i.en, 0    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val.i.i.i.i44 = load i64, ptr %i.eo, align 8, !noalias !16383
  %i.ep = icmp eq i64 %.val.i.i.i.i44, 0          ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %.sroa.610.0..sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sroa.8.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 9 ; 2 uses
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %.not.i.i.i.i.i.fr.i.i.i = freeze i1 %.not.i.i.i.i.i.i.i.i43
  br i1 %.not.i.i.i.i.i.fr.i.i.i, label %.split.us.i.i.i, label %.split.i.preheader.i.i

.split.i.preheader.i.i:                           ; preds = %.noexc121.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %.promoted81.i.i.i = load i64, ptr %i.es, align 8, !noalias !16383
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %.noexc121.i
  %i.et = trunc nuw i8 %.promoted69.i.i.i to i1
  br i1 %i.et, label %.loopexit.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i: ; preds = %.split.us.i.i.i
  %.not.i3.i.i.i.i.us.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted70.i.i.i
  %or.cond.not.i.i.i.i.i.us.i.i.i = select i1 %.not3.i.i.i.i.i.i.i.i, i1 %.not.i3.i.i.i.i.us.i.i.i, i1 false
  %i.eu = sub nuw i64 %.pre2.i.i.i.i.i.i.i.i, %.promoted70.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.promoted70.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16386), !noalias !16374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16387), !noalias !16374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16388), !noalias !16374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16389), !noalias !16374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16390), !noalias !16374
  br i1 %or.cond.not.i.i.i.i.i.us.i.i.i, label %.loopexit.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i
  switch i64 %i.eu, label %bb.ab [
    i64 0, label %bb.aa
    i64 1, label %bb.z
    i64 2, label %bb.y
  ]

bb.y:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %i.ev = load i16, ptr %.sroa.0.1.i.i.i.i.us.i.i.i, align 1
  %i.ew = icmp ne i16 %i.ev, 11822
  %i.ex = zext i1 %i.ew to i32
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %.thread.us.us.i.i.i, label %bb.ab

bb.z:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %lhsc1.i.i.us.us.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.us.i.i.i, align 1, !noalias !16391
  %i.ez = icmp eq i8 %lhsc1.i.i.us.us.i.i.i, 46
  br i1 %i.ez, label %.thread.us.us.i.i.i, label %bb.ab

bb.aa:                                            ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  %i.fa = icmp ne i64 %.promoted76.i.i.i, 0
  %or.cond.i.i.us.us.i.i.i = select i1 %i.fa, i1 true, i1 %i.ep
  %spec.select.i.us.us.i.i.i = zext i1 %or.cond.i.i.us.us.i.i.i to i64
  br label %.thread.us.us.i.i.i

bb.ab:                                            ; preds = %bb.z, %bb.y, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16392
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.us.i.i.i, i64 noundef %i.eu)
          to label %.noexc24.us.us.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393

.noexc24.us.us.i.i.i:                             ; preds = %bb.ab
  %i.fb = load i64, ptr %i.ba, align 8, !range !36, !noalias !16392, !noundef !35
  %i.fc = trunc nuw i64 %i.fb to i1
  br i1 %i.fc, label %.split95.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc24.us.us.i.i.i
  %i.fd = load ptr, ptr %i.eq, align 8, !noalias !16392, !nonnull !35, !noundef !35
  %i.fe = load i64, ptr %i.er, align 8, !noalias !16392, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !16392
  %i.ff = ptrtoint ptr %i.fd to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.us.us.i.i.i = trunc i64 %i.ff to i8
  %.sroa.829.1.extract.shift.us.us.i.i.i = lshr i64 %i.ff, 8
  %.sroa.829.1.extract.trunc.us.us.i.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.us.us.i.i.i to i56
  br label %.thread.us.us.i.i.i

.thread.us.us.i.i.i:                              ; preds = %bb.ac, %bb.aa, %bb.z, %bb.y
  %.sroa.829.1.extract.trunc46.us.us.i.i.i = phi i56 [ %.sroa.829.1.extract.trunc.us.us.i.i.i, %bb.ac ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %.sroa.829.0.extract.trunc45.us.us.i.i.i = phi i8 [ %.sroa.829.0.extract.trunc.us.us.i.i.i, %bb.ac ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.z ]
  %.sroa.0.0.ph44.us.us.i.i.i = phi i64 [ 3, %bb.ac ], [ 2, %bb.y ], [ %spec.select.i.us.us.i.i.i, %bb.aa ], [ 1, %bb.z ]
  %.sroa.11.0.ph43.us.us.i.i.i = phi i64 [ %i.fe, %bb.ac ], [ undef, %bb.y ], [ undef, %bb.aa ], [ undef, %bb.z ]
  store i64 %.sroa.0.0.ph44.us.us.i.i.i, ptr %i.bb, align 8, !noalias !16383
  store i8 %.sroa.829.0.extract.trunc45.us.us.i.i.i, ptr %.sroa.610.0..sroa_idx11.i.i.i, align 8, !noalias !16383
  store i56 %.sroa.829.1.extract.trunc46.us.us.i.i.i, ptr %.sroa.8.0..sroa_idx13.i.i.i, align 1, !noalias !16383
  store i64 %.sroa.11.0.ph43.us.us.i.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i.i, align 8, !noalias !16383
  %i.fg = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393 ; 2 uses

bb.ad:                                            ; preds = %.thread.us.us.i.i.i
  %.not20.us.us.i.i.i = icmp eq i8 %i.fg, 2
  br i1 %.not20.us.us.i.i.i, label %.loopexit.i, label %.split100.i.i.i

.split.i.i.i:                                     ; preds = %bb.ar, %.split.i.preheader.i.i
  %.lcssa6884.i.i.i.a = phi i64 [ %.lcssa6882.i.i.i, %bb.ar ], [ %.promoted81.i.i.i, %.split.i.preheader.i.i ] ; 3 uses
  %i.fh = phi i64 [ %i.gf, %bb.ar ], [ %.promoted76.i.i.i, %.split.i.preheader.i.i ] ; 2 uses
  %.lcssa6072.i.i.i = phi i64 [ %.lcssa6071.i.i.i, %bb.ar ], [ %.promoted70.i.i.i, %.split.i.preheader.i.i ] ; 4 uses
  %i.fi = phi i8 [ %i.ge, %bb.ar ], [ %.promoted69.i.i.i, %.split.i.preheader.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16386), !noalias !16374
  call void @llvm.experimental.noalias.scope.decl(metadata !16387), !noalias !16374
  call void @llvm.experimental.noalias.scope.decl(metadata !16388), !noalias !16374
  call void @llvm.experimental.noalias.scope.decl(metadata !16389), !noalias !16374
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %.loopexit.i, label %bb.ae

bb.ae:                                            ; preds = %.split.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !16390), !noalias !16374
  %i.fk = icmp ult i64 %i.ee, %.lcssa6884.i.i.i.a
  br i1 %i.fk, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i.i:           ; preds = %bb.ae
  call void @llvm.assume(i1 %i.ej), !noalias !16374
  %.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.el, align 1, !alias.scope !16394, !noalias !16383 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i:                     ; preds = %bb.ah, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i
  %i.fl = phi i64 [ %i.fz, %bb.ah ], [ %.lcssa6884.i.i.i.a, %.lr.ph.split.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fm = sub nuw i64 %i.ee, %i.fl                ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.fl ; 2 uses
  %i.fo = icmp samesign ult i64 %i.fm, 16
  br i1 %i.fo, label %.preheader.i.i.i.i.i.i.i.i.i, label %bb.af

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ee, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i
  %i.fp = invoke { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fn, i64 noundef range(i64 0, -9223372036854775808) %i.fm)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.af
  %i.fq = extractvalue { i64, i64 } %i.fp, 0
  %i.fr = extractvalue { i64, i64 } %i.fp, 1
  %i.fs = trunc nuw i64 %i.fq to i1
  br i1 %i.fs, label %.loopexit.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.04.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fw, %bb.ag ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !16395, !noalias !16396, !noundef !35
  %i.fv = icmp eq i8 %i.fu, %.pre.i.i.i.i.i.i.i.i
  br i1 %i.fv, label %.loopexit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fw = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fw, %i.fm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.noexc.i.i.i ], [ %.sroa.04.011.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fx = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, %i.fm
  call void @llvm.assume(i1 %i.fx), !noalias !16374
  %i.fy = add i64 %i.fl, 1
  %i.fz = add i64 %i.fy, %.sroa.5.0.i.i.i.i.i.i.i.i.i ; 8 uses
  %.not11.i.i.i.i.i.i.i.i = icmp ult i64 %i.fz, %i.ei
  %.not12.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fz, %.val1.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i.i.i, %.not12.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ai, %.loopexit.i.i.i.i.i.i.i.i
  %i.ga = icmp ult i64 %i.ee, %i.fz
  br i1 %i.ga, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.gb = sub nuw i64 %i.fz, %i.ei                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.gb
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.gc, ptr nonnull %i.ef, i64 %i.ei), !noalias !16397
  %i.gd = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.gd, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i, label %bb.ah

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i: ; preds = %bb.ah, %.noexc.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %bb.ag, %bb.ae
  %.lcssa6883.i.i.i.a = phi i64 [ %i.ee, %bb.ag ], [ %.lcssa6884.i.i.i.a, %bb.ae ], [ %i.ee, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ee, %.noexc.i.i.i ], [ %i.fz, %bb.ah ]
  store i8 1, ptr %i.ea, align 1, !alias.scope !16398, !noalias !16383
  %.not.i3.i.i.i.i.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i.i.i, %.lcssa6072.i.i.i
  %or.cond.not.i.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i.i.i, i1 %.not.i3.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i: ; preds = %bb.ai, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i
  %.lcssa6882.i.i.i = phi i64 [ %.lcssa6883.i.i.i.a, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.fz, %bb.ai ]
  %.lcssa6071.i.i.i = phi i64 [ %.lcssa6072.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.fz, %bb.ai ]
  %i.ge = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ 0, %bb.ai ]
  %.pn.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i ], [ %i.gb, %bb.ai ]
  %.sroa.4.1.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.lcssa6072.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %.lcssa6072.i.i.i ; 3 uses
  %i.gf = add i64 %i.fh, 1
  switch i64 %.sroa.4.1.i.i.i.i.i.i.i, label %bb.am [
    i64 0, label %bb.aj
    i64 1, label %bb.ak
    i64 2, label %bb.al
  ]

bb.aj:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %i.gg = icmp ne i64 %i.fh, 0
  %or.cond.i.i.i.i.i = select i1 %i.gg, i1 true, i1 %i.ep
  %spec.select.i.i.i.i = zext i1 %or.cond.i.i.i.i.i to i64
  br label %.thread.i.i.i

bb.ak:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %lhsc1.i.i.i.i.i = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i, align 1, !noalias !16391
  %i.gh = icmp eq i8 %lhsc1.i.i.i.i.i, 46
  br i1 %i.gh, label %.thread.i.i.i, label %bb.am

bb.al:                                            ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  %i.gi = load i16, ptr %.sroa.0.1.i.i.i.i.i.i.i, align 1
  %i.gj = icmp ne i16 %i.gi, 11822
  %i.gk = zext i1 %i.gj to i32
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.thread.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !16392
  invoke void @_RNvMs6_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_7Segment3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i)
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393

.noexc24.i.i.i:                                   ; preds = %bb.am
  %i.gm = load i64, ptr %i.ba, align 8, !range !36, !noalias !16392, !noundef !35
  %i.gn = trunc nuw i64 %i.gm to i1
  br i1 %i.gn, label %.split95.i.i.i, label %bb.ap

.split95.i.i.i:                                   ; preds = %.noexc24.i.i.i, %.noexc24.us.us.i.i.i
  %i.go = load i64, ptr %i.er, align 8, !noalias !16392, !noundef !35
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.an, label %bb.ao, !prof !37

bb.an:                                            ; preds = %.split95.i.i.i
  %i.gq = load ptr, ptr %i.eq, align 8, !noalias !16392, !nonnull !35, !noundef !35
  %lhsc.i.i.i.i.i = load i8, ptr %i.gq, align 1, !noalias !16391
  %i.gr = icmp eq i8 %lhsc.i.i.i.i.i, 92
  br i1 %i.gr, label %bb.aq, label %bb.ao, !prof !37

bb.ao:                                            ; preds = %bb.an, %.split95.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #47
          to label %.noexc25.i.i.i unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393

.noexc25.i.i.i:                                   ; preds = %bb.ao
  unreachable

.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %.thread.i.i.i, %bb.am, %bb.ao, %.thread.us.us.i.i.i, %bb.ab
  %lpad.loopexit.split-lp232 = landingpad { ptr, i32 }
          cleanup
  %.val22.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !16399, !noalias !16383
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bd, i64 15
  %.val23.i.i.i = load i8, ptr %i.gs, align 1, !alias.scope !16399, !noalias !16383, !noundef !35
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4path8SegmentsECs5cbCQMMIObr_10typst_eval(ptr %.val22.i.i.i, i8 %.val23.i.i.i) #44
          to label %.body124.i unwind label %bb.au, !noalias !16393

bb.ap:                                            ; preds = %.noexc24.i.i.i
  %i.gt = load ptr, ptr %i.eq, align 8, !noalias !16392, !nonnull !35, !noundef !35
  %i.gu = load i64, ptr %i.er, align 8, !noalias !16392, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !16392
  %i.gv = ptrtoint ptr %i.gt to i64               ; 2 uses
  %.sroa.829.0.extract.trunc.i.i.i = trunc i64 %i.gv to i8
  %.sroa.829.1.extract.shift.i.i.i = lshr i64 %i.gv, 8
  %.sroa.829.1.extract.trunc.i.i.i = trunc nuw i64 %.sroa.829.1.extract.shift.i.i.i to i56
  br label %.thread.i.i.i

bb.aq:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !16392
  br label %.split100.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ap, %bb.al, %bb.ak, %bb.aj
  %.sroa.829.1.extract.trunc46.i.i.i = phi i56 [ %.sroa.829.1.extract.trunc.i.i.i, %bb.ap ], [ 0, %bb.al ], [ 0, %bb.aj ], [ 0, %bb.ak ]
  %.sroa.829.0.extract.trunc45.i.i.i = phi i8 [ %.sroa.829.0.extract.trunc.i.i.i, %bb.ap ], [ undef, %bb.al ], [ undef, %bb.aj ], [ undef, %bb.ak ]
  %.sroa.0.0.ph44.i.i.i = phi i64 [ 3, %bb.ap ], [ 2, %bb.al ], [ %spec.select.i.i.i.i, %bb.aj ], [ 1, %bb.ak ]
  %.sroa.11.0.ph43.i.i.i = phi i64 [ %i.gu, %bb.ap ], [ undef, %bb.al ], [ undef, %bb.aj ], [ undef, %bb.ak ]
  store i64 %.sroa.0.0.ph44.i.i.i, ptr %i.bb, align 8, !noalias !16383
  store i8 %.sroa.829.0.extract.trunc45.i.i.i, ptr %.sroa.610.0..sroa_idx11.i.i.i, align 8, !noalias !16383
  store i56 %.sroa.829.1.extract.trunc46.i.i.i, ptr %.sroa.8.0..sroa_idx13.i.i.i, align 1, !noalias !16383
  store i64 %.sroa.11.0.ph43.i.i.i, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx13.sroa_idx.i.i.i, align 8, !noalias !16383
  %i.gw = invoke noundef i8 @_RNvMs7_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_8Segments14push_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bb)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16393 ; 2 uses

bb.ar:                                            ; preds = %.thread.i.i.i
  %.not20.i.i.i = icmp eq i8 %i.gw, 2
  br i1 %.not20.i.i.i, label %.split.i.i.i, label %.split100.i.i.i

.split100.i.i.i:                                  ; preds = %bb.ar, %bb.aq, %bb.ad
  %.us-phi104.sink.i.i.i = phi i8 [ 1, %bb.aq ], [ %i.fg, %bb.ad ], [ %i.gw, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !16383
  %.val.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !16399, !noalias !16383 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bd, i64 15
  %.val21.i.i.i = load i8, ptr %i.gx, align 1, !alias.scope !16399, !noalias !16383, !noundef !35
  %.not.i.i.i.i.i.i.i55 = icmp sgt i8 %.val21.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i55, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %.split100.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ], !noalias !16374
  %.not.i.i.i.i.i.i26.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  %i.gy = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i26.i.i.i, label %bb.aw, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.gz = atomicrmw add ptr %i.gy, i64 -1 release, align 8, !noalias !16400
  %.not.i.i.i.i.i27.i.i.i = icmp eq i64 %i.gz, 1
  br i1 %.not.i.i.i.i.i27.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i, label %bb.aw

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i
  fence acquire, !noalias !16374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !16401
  %i.ha = getelementptr i8, ptr %.val.i.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ha, align 8, !noalias !16400, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i, label %bb.at, !prof !37

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.noexc122.i unwind label %bb.av, !noalias !16382

.noexc122.i:                                      ; preds = %bb.at
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i
  %i.hb = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i.i, 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.gy, ptr %i.hc, align 8, !noalias !16401
  store i64 8, ptr %i.az, align 8, !noalias !16401
  %i.hd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.hb, ptr %i.hd, align 8, !noalias !16401
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.noexc123.i unwind label %bb.av, !noalias !16382

.noexc123.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !16401
  br label %bb.aw

bb.au:                                            ; preds = %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !16393
  unreachable

bb.av:                                            ; preds = %bb.aw, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i, %bb.at, %.noexc120.i, %bb.x
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.body124.i

.body124.i:                                       ; preds = %bb.av, %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body125.i = phi { ptr, i32 } [ %i.hf, %bb.av ], [ %lpad.loopexit.split-lp232, %.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package11PackageSpecECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.dx)
          to label %.body.i unwind label %bb.gc, !noalias !16382

bb.aw:                                            ; preds = %.noexc123.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i.i, %bb.as, %.split100.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !16383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !16384
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !16402
  store i8 %.us-phi104.sink.i.i.i, ptr %i.bf, align 1, !noalias !16402
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @180, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #47
          to label %.noexc.i unwind label %bb.av, !noalias !16382

.noexc.i:                                         ; preds = %bb.aw
  unreachable

.loopexit.i:                                      ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i.i, %.split.i.i.i, %bb.ad, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.us.lr.ph.i.i.i, %.split.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !16383
  %.sroa.8.8..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %.sroa.8.i.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.8..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !noalias !16403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !16383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !16384
  %.sroa.7.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.8..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.8..sroa_idx2.i.i, i64 16, i1 false), !noalias !16384
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  %.sroa.7428.8..sroa_idx429.i = getelementptr inbounds nuw i8, ptr %.sroa.7428.i, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7428.8..sroa_idx429.i, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7.8..sroa_idx.i.i, i64 16, i1 false), !noalias !16377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.7428.8..sroa_idx429.i, i64 16, i1 false), !noalias !16377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7428.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bu, ptr noundef nonnull align 8 dereferenceable(56) %i.bt, i64 56, i1 false), !noalias !16377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !16377
  %i.hh = invoke noundef i16 @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4pathNtB2_10RootedPath6intern(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.bu)
          to label %bb.ax unwind label %bb.w, !noalias !16382 ; 4 uses

bb.ax:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !16377
end_hunk_3
begin_hunk_4_@_RNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB7_4Eval4eval:bb.a
  store i64 %i.ev, ptr %i.ex, align 8, !noalias !17441
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.noexc152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc152:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17441
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit153

bb.as:                                            ; preds = %bb.ao
  %.sroa.698.0.copyload = load i64, ptr %.sroa.698.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.em, ptr %i.ac, align 8
  store ptr %i.eo, ptr %.sroa.436.0..sroa_idx, align 8
  store i64 %i.ep, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 %.sroa.698.0.copyload, ptr %.sroa.638.0..sroa_idx, align 8
  %i.ey = invoke noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.du, ptr noundef %i.dv)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #44
          to label %bb.az unwind label %bb.aa

bb.au:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fb = load i64, ptr %i.fa, align 8, !range !38, !noundef !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.fc = load i64, ptr %i.aj, align 8, !range !38, !noundef !35
  store i64 %i.fc, ptr %i.ch, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i64 %i.fb, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.experimental.noalias.scope.decl(metadata !17442)
  %i.fd = load i64, ptr %i.be, align 8, !alias.scope !17442, !noundef !35
  %.val.i154 = load ptr, ptr %i.al, align 8, !alias.scope !17442, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i155 = icmp eq ptr %.val.i154, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i155, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i157, label %bb.aw

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i157
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ae) #44
          to label %.body unwind label %bb.ax, !noalias !17442, !inline_history !29

bb.aw:                                            ; preds = %bb.au
  %i.ff = getelementptr i8, ptr %.val.i154, i64 -8
  %.val.i.i156 = load i64, ptr %i.ff, align 8, !noalias !17443, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i157

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i157: ; preds = %bb.aw, %bb.au
  %.sroa.02.0.i.i158 = phi i64 [ %.val.i.i156, %bb.aw ], [ 0, %bb.au ]
  %i.fg = icmp eq i64 %i.fd, %.sroa.02.0.i.i158
  %i.fh = zext i1 %i.fg to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.fh)
          to label %bb.ay unwind label %bb.av, !noalias !17444, !inline_history !29

bb.ax:                                            ; preds = %bb.av
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17442, !inline_history !29
  unreachable

bb.ay:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i157
  %i.fj = load ptr, ptr %i.al, align 8, !alias.scope !17442, !nonnull !35, !noundef !35
  %i.fk = load i64, ptr %i.be, align 8, !alias.scope !17442, !noundef !35 ; 2 uses
  %i.fl = getelementptr inbounds nuw [72 x i8], ptr %i.fj, i64 %i.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fl, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !17442
  %i.fm = add i64 %i.fk, 1
  store i64 %i.fm, ptr %i.be, align 8, !alias.scope !17442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.z

bb.az:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #44
          to label %.body unwind label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit153: ; preds = %.noexc152, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i145, %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ad

bb.ba:                                            ; preds = %bb.p
  %i.fn = extractvalue { i64, ptr } %i.cw, 0
  %i.fo = extractvalue { i64, ptr } %i.cw, 1
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, i64 noundef %i.fn, ptr noundef %i.fo, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bb:                                            ; preds = %bb.ba
  %i.fp = load i64, ptr %i.z, align 8, !range !39, !noundef !35 ; 5 uses
  %i.fq = icmp eq i64 %i.fp, -1
  %i.fr = load ptr, ptr %.sroa.4100.0..sroa_idx, align 8 ; 4 uses
  %i.fs = load i64, ptr %.sroa.5101.0..sroa_idx, align 8 ; 5 uses
  br i1 %i.fq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fr, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fs, ptr %i.fu, align 8
  store i64 0, ptr %0, align 8
  br label %bb.dx

bb.bd:                                            ; preds = %bb.bb
  %.sroa.6102.0.copyload = load i64, ptr %.sroa.6102.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.fp, ptr %i.aa, align 8
  store ptr %i.fr, ptr %.sroa.451.0..sroa_idx, align 8
  store i64 %i.fs, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 %.sroa.6102.0.copyload, ptr %.sroa.653.0..sroa_idx, align 8
  %i.fv = icmp ne i64 %i.fp, 30
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nsw i64 %i.fp, -2
  %i.fx = icmp samesign ugt i64 %i.fp, 1
  %i.fy = select i1 %i.fx, i64 %i.fw, i64 28
  %i.fz = inttoptr i64 %i.fs to ptr               ; 2 uses
  switch i64 %i.fy, label %bb.be [
    i64 0, label %bb.bf
    i64 23, label %bb.bg
    i64 24, label %bb.bh
    i64 26, label %bb.bi
  ]

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.s, i8 0, i64 15, i1 false)
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  store i8 -128, ptr %.sroa.4108.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.gc = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v)
          to label %bb.do unwind label %bb.dn

bb.bf:                                            ; preds = %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendBv_ECs5cbCQMMIObr_10typst_eval.exit, %bb.dk, %bb.cv, %bb.bd
  %i.gd = load i64, ptr %i.aa, align 8, !range !41, !noundef !35 ; 3 uses
  %i.ge = icmp ne i64 %i.gd, 30
  call void @llvm.assume(i1 %i.ge)
  %i.gf = add nsw i64 %i.gd, -2
  %i.gg = icmp samesign ugt i64 %i.gd, 1
  %i.gh = select i1 %i.gg, i64 %i.gf, i64 28
  switch i64 %i.gh, label %bb.dl [
    i64 23, label %bb.dm
    i64 24, label %bb.dm
    i64 26, label %bb.dm
  ]

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noundef nonnull %i.fr, i64 noundef %i.fs)
          to label %bb.ch unwind label %.thread242

bb.bh:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations4dictNtB5_4DictNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noundef nonnull %i.fr)
          to label %bb.cw unwind label %.thread242

bb.bi:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !17445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17445
  call void @llvm.experimental.noalias.scope.decl(metadata !17446)
  %.not.i.i.i.i = icmp eq i64 %i.fs, 16
  br i1 %.not.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gi = getelementptr inbounds i8, ptr %i.fz, i64 -16
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8, !noalias !17447
  %i.gk = icmp eq i64 %i.gj, 1
  %i.gl = zext i1 %i.gk to i8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.gl, %bb.bj ], [ 1, %bb.bi ]
  store ptr %i.fz, ptr %i.l, align 8, !alias.scope !17446, !noalias !17445
  store i64 %.sroa.6102.0.copyload, ptr %i.bi, align 8, !alias.scope !17446, !noalias !17445
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.bj, align 8, !alias.scope !17446, !noalias !17445
  store i64 0, ptr %i.bk, align 8, !alias.scope !17446, !noalias !17445
  store i64 %.sroa.6102.0.copyload, ptr %i.bl, align 8, !alias.scope !17446, !noalias !17445
  %.not.i162 = icmp eq i64 %.sroa.6102.0.copyload, 0
  br i1 %.not.i162, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bp, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false), !noalias !17445
  %i.gm = load i64, ptr %i.bn, align 8, !alias.scope !17448, !noalias !17445, !noundef !35 ; 6 uses
  %.promoted.i163 = load i64, ptr %i.bm, align 8, !alias.scope !17448, !noalias !17445 ; 4 uses
  %i.gn = icmp ult i64 %.promoted.i163, %i.gm
  %i.go = load i8, ptr %i.bo, align 8, !range !44, !noalias !17445 ; 2 uses
  br i1 %i.gn, label %.lr.ph.i, label %._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i

._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i: ; preds = %bb.bl
  %.pre62.i = load ptr, ptr %i.k, align 8, !alias.scope !17449, !noalias !17445
  %3 = icmp eq i8 %i.go, 0
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.bl
  %i.gp = trunc nuw i8 %i.go to i1
  %i.gq = load ptr, ptr %i.k, align 8, !alias.scope !17448, !noalias !17450, !nonnull !35, !noundef !35 ; 4 uses
  %i.gr = load i64, ptr %i.bp, align 8, !noalias !17445
  br i1 %i.gp, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i, label %.lr.ph.split.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i: ; preds = %.lr.ph.i, %bb.bo
  %i.gs = phi i64 [ %i.gt, %bb.bo ], [ %.promoted.i163, %.lr.ph.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17448)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i)
  %i.gt = add i64 %i.gs, 1                        ; 4 uses
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.gq, i64 %i.gs ; 3 uses
  %.sroa.0.i.i.sroa.0.0.copyload.us.i = load i64, ptr %i.gu, align 8, !noalias !17451 ; 2 uses
  %.sroa.6.0..sroa_idx1.i.i.us.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %.sroa.6.0.copyload2.i.i.us.i = load i64, ptr %.sroa.6.0..sroa_idx1.i.i.us.i, align 8, !noalias !17451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i)
  %.not2.us.i = icmp eq i64 %.sroa.0.i.i.sroa.0.0.copyload.us.i, 2
  br i1 %.not2.us.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %bb.bm

bb.bm:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i
  %.sroa.0.i.i.sroa.5.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17445
  store i64 %.sroa.0.i.i.sroa.0.0.copyload.us.i, ptr %i.j, align 8, !noalias !17445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.sroa.5.0..sroa_idx.us.i, i64 56, i1 false), !noalias !17445
  store i64 %.sroa.6.0.copyload2.i.i.us.i, ptr %.sroa.713.0..sroa_idx.i, align 8, !noalias !17445
  call void @llvm.experimental.noalias.scope.decl(metadata !17452)
  %i.gv = load i64, ptr %i.be, align 8, !alias.scope !17453, !noundef !35
  %.val.i.us.i = load ptr, ptr %i.al, align 8, !alias.scope !17453, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.us.i = icmp eq ptr %.val.i.us.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gw = getelementptr i8, ptr %.val.i.us.i, i64 -8
  %.val.i.i.us.i = load i64, ptr %i.gw, align 8, !noalias !17454, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i: ; preds = %bb.bn, %bb.bm
  %.sroa.02.0.i.i.us.i = phi i64 [ %.val.i.i.us.i, %bb.bn ], [ 0, %bb.bm ]
  %i.gx = icmp eq i64 %i.gv, %.sroa.02.0.i.i.us.i
  %i.gy = zext i1 %i.gx to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.gy)
          to label %bb.bo unwind label %.split.us.i, !noalias !17455, !inline_history !29

bb.bo:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.gz = load ptr, ptr %i.al, align 8, !alias.scope !17453, !nonnull !35, !noundef !35
  %i.ha = load i64, ptr %i.be, align 8, !alias.scope !17453, !noundef !35 ; 2 uses
  %i.hb = getelementptr inbounds nuw [72 x i8], ptr %i.gz, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hb, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !17453
  %i.hc = add i64 %i.ha, 1
  store i64 %i.hc, ptr %i.be, align 8, !alias.scope !17453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17445
  %exitcond61.not.i = icmp eq i64 %i.gt, %i.gm
  br i1 %exitcond61.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i

.split.us.i:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bp:                                            ; preds = %bb.bk
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %.sroa.6102.0.copyload)
          to label %bb.bl unwind label %bb.cg

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.ce
  %i.he = phi i64 [ %i.hf, %bb.ce ], [ %.promoted.i163, %.lr.ph.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17448)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i)
  %i.hf = add nuw i64 %i.he, 1                    ; 5 uses
  %i.hg = icmp ult i64 %i.he, %i.gr
  call void @llvm.assume(i1 %i.hg)
  %i.hh = getelementptr inbounds nuw [72 x i8], ptr %i.gq, i64 %i.he ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17456)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  %i.hj = load i64, ptr %i.hi, align 8, !range !38, !alias.scope !17456, !noalias !17457, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17458
  %i.hk = load i64, ptr %i.hh, align 8, !range !36, !alias.scope !17456, !noalias !17457, !noundef !35
  %i.hl = trunc nuw i64 %i.hk to i1
  br i1 %i.hl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.split.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 23
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !17456, !noalias !17457, !noundef !35
  %.not.i.i.i.i.i166 = icmp sgt i8 %i.ho, -1
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.hm, align 8, !alias.scope !17456, !noalias !17457 ; 5 uses
  %.val25.i.i.i.i.i = load i64, ptr %i.hp, align 8, !alias.scope !17456, !noalias !17457
  br i1 %.not.i.i.i.i.i166, label %bb.bs, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.br:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %.lr.ph.split.i
  %storemerge.i.i.i.i.i = phi i64 [ 1, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  store i64 %storemerge.i.i.i.i.i, ptr %i.i, align 8, !noalias !17458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17458
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !17459)
  call void @llvm.experimental.noalias.scope.decl(metadata !17460)
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hq) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread27.i unwind label %bb.bv, !noalias !17461

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i.i.i.i.i.i167 = icmp eq ptr %.val.i.i.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i.i.i167, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hr = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 -16
  %i.hs = atomicrmw add ptr %i.hr, i64 1 monotonic, align 8, !noalias !17458
  %i.ht = icmp slt i64 %i.hs, 0
  br i1 %i.ht, label %bb.bu, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, !prof !40

bb.bu:                                            ; preds = %bb.bt
  store i64 %i.hf, ptr %i.bm, align 8, !noalias !17445
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i.i.i.i.i) #42
          to label %.noexc.i unwind label %bb.bx

.noexc.i:                                         ; preds = %bb.bu
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.bq, %bb.bt, %bb.bs
  %.sroa.06.0.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i, %bb.bt ], [ inttoptr (i64 16 to ptr), %bb.bs ], [ %.val.i.i.i.i.i, %bb.bq ]
  store ptr %.sroa.06.0.i.i.i.i.i, ptr %i.bq, align 8, !noalias !17458
  store i64 %.val25.i.i.i.i.i, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i, align 8, !noalias !17458
  br label %bb.br

bb.bv:                                            ; preds = %bb.br
  %i.hu = landingpad { ptr, i32 }
          cleanup
  store i64 %i.hf, ptr %i.bm, align 8, !noalias !17445
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #44
          to label %.body.i unwind label %bb.bw, !noalias !17461

bb.bw:                                            ; preds = %bb.bv
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17461
  unreachable

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread27.i: ; preds = %bb.br
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 56
  %.val.i.i.i.i.i.i = load i64, ptr %i.hw, align 8, !range !38, !alias.scope !17462, !noalias !17457, !noundef !35
  store i64 %.val.i.i.i.i.i.i, ptr %i.br, align 8, !alias.scope !17459, !noalias !17458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !noalias !17463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.sroa.5.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !17463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17458
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.sroa.5.i, i64 56, i1 false), !noalias !17445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.sroa.5.i)
  store i64 %storemerge.i.i.i.i.i, ptr %i.j, align 8, !noalias !17445
  store i64 %i.hj, ptr %.sroa.713.0..sroa_idx.i, align 8, !noalias !17445
  call void @llvm.experimental.noalias.scope.decl(metadata !17452)
  %i.hx = load i64, ptr %i.be, align 8, !alias.scope !17453, !noundef !35
  %.val.i.i165 = load ptr, ptr %i.al, align 8, !alias.scope !17453, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i165, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.bz

bb.bx:                                            ; preds = %bb.bu
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.by, %bb.bx, %bb.bv
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.hu, %bb.bv ], [ %i.hy, %bb.bx ], [ %.us-phi51.i, %bb.by ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #44
          to label %.thread235 unwind label %bb.cf, !noalias !17445

.split.i:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.split.i, %.split.us.i
  %.us-phi50.i = phi i64 [ %i.hf, %.split.i ], [ %i.gt, %.split.us.i ]
  %.us-phi51.i = phi { ptr, i32 } [ %i.hz, %.split.i ], [ %i.hd, %.split.us.i ]
  store i64 %.us-phi50.i, ptr %i.bm, align 8, !noalias !17445
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.j) #44
          to label %.body.i unwind label %bb.ca, !noalias !17453, !inline_history !29

bb.bz:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread27.i
  %i.ia = getelementptr i8, ptr %.val.i.i165, i64 -8
  %.val.i.i.i = load i64, ptr %i.ia, align 8, !noalias !17454, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.bz, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread27.i
  %.sroa.02.0.i.i.i = phi i64 [ %.val.i.i.i, %bb.bz ], [ 0, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread27.i ]
  %i.ib = icmp eq i64 %i.hx, %.sroa.02.0.i.i.i
  %i.ic = zext i1 %i.ib to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.ic)
          to label %bb.ce unwind label %.split.i, !noalias !17455, !inline_history !29

bb.ca:                                            ; preds = %bb.by
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17453, !inline_history !29
  unreachable

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i: ; preds = %bb.bo, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i, %._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i
  %i.ie = phi ptr [ %.pre62.i, %._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i ], [ %i.gq, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i ], [ %i.gq, %bb.bo ] ; 2 uses
  %i.if = phi i1 [ %3, %._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i ], [ false, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i ], [ false, %bb.bo ]
  %i.ig = phi i64 [ %.promoted.i163, %._RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread_crit_edge.i ], [ %i.gm, %bb.bo ], [ %i.gt, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.us.i ] ; 3 uses
  store i64 %i.ig, ptr %i.bm, align 8, !noalias !17445
  call void @llvm.experimental.noalias.scope.decl(metadata !17464)
  %.not.i.i7.i = icmp eq ptr %i.ie, inttoptr (i64 16 to ptr)
  %or.cond.not.i.i.i = select i1 %i.if, i1 true, i1 %.not.i.i7.i
  br i1 %or.cond.not.i.i.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i
  store i64 0, ptr %i.bp, align 8, !alias.scope !17449, !noalias !17445
  %i.ih = getelementptr inbounds nuw [72 x i8], ptr %i.ie, i64 %i.ig
  %i.ii = sub i64 %i.gm, %i.ig
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.ih, i64 noundef %i.ii)
          to label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.cc, !noalias !17465

bb.cc:                                            ; preds = %bb.cb
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k) #44
          to label %.thread235 unwind label %bb.cd, !noalias !17445

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.thread.i, %bb.cb, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendBv_ECs5cbCQMMIObr_10typst_eval.exit unwind label %.thread242

bb.cd:                                            ; preds = %bb.cc
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17465
  unreachable

bb.ce:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.il = load ptr, ptr %i.al, align 8, !alias.scope !17453, !nonnull !35, !noundef !35
  %i.im = load i64, ptr %i.be, align 8, !alias.scope !17453, !noundef !35 ; 2 uses
  %i.in = getelementptr inbounds nuw [72 x i8], ptr %i.il, i64 %i.im
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !17453
  %i.io = add i64 %i.im, 1
  store i64 %i.io, ptr %i.be, align 8, !alias.scope !17453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17445
  %exitcond.not.i = icmp eq i64 %i.hf, %i.gm
  br i1 %exitcond.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.thread.i, label %.lr.ph.split.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.thread.i: ; preds = %bb.ce
  store i64 %i.gm, ptr %i.bm, align 8, !noalias !17445
  br label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i

bb.cf:                                            ; preds = %bb.cg, %.body.i
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17445
  unreachable

bb.cg:                                            ; preds = %bb.bp
  %i.iq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #44
          to label %.thread235 unwind label %bb.cf, !noalias !17445

_RINvXsv_NtCsakL8LGkl72C_4ecow3vecINtB6_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBI_E6extendBv_ECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17445
  br label %bb.bf

.thread242:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENCNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB2T_4Eval4eval0EEB2T_.exit8.i, %bb.bg, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.bh
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread235

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtBU_3ast3ArgQINvMB2u_BQ_4castB2s_EECs5cbCQMMIObr_10typst_eval.exit, %bb.o, %bb.p, %bb.ae, %bb.ba, %bb.dl, %bb.ak, %_RNvMNtCsakL8LGkl72C_4ecow3vecINtB2_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE13with_capacityCs5cbCQMMIObr_10typst_eval.exit, %bb.ar, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i150, %bb.dv
  %lpad.loopexit.split-lp542 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ch:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !17466)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17467
  store ptr %i.aj, ptr %i.g, align 8, !alias.scope !17468, !noalias !17466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx218, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !alias.scope !17468, !noalias !17466
  %.val.i171 = load i64, ptr %i.bz, align 8, !noalias !17467, !noundef !35 ; 2 uses
  %.val4.i = load i64, ptr %i.ca, align 8, !noalias !17467, !noundef !35 ; 2 uses
  %.not.i172 = icmp eq i64 %.val4.i, %.val.i171
  br i1 %.not.i172, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.cm, %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17467
  store ptr %i.aj, ptr %i.f, align 8, !noalias !17466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx219, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, i64 40, i1 false), !noalias !17466
  %i.ir = load i64, ptr %i.cd, align 8, !alias.scope !17469, !noalias !17467, !noundef !35 ; 5 uses
  %.promoted.i174 = load i64, ptr %i.cc, align 8, !alias.scope !17469, !noalias !17467 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17467
  %i.is = icmp ult i64 %.promoted.i174, %i.ir
  br i1 %i.is, label %.lr.ph.i175, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENCNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB2T_4Eval4eval0EEB2T_.exit8.i

.lr.ph.i175:                                      ; preds = %bb.ci
  %i.it = load i8, ptr %i.ce, align 8, !range !44, !alias.scope !17469, !noalias !17470, !noundef !35
  %i.iu = trunc nuw i8 %i.it to i1
  %i.iv = load ptr, ptr %.sroa.5.0..sroa_idx219, align 8, !alias.scope !17469, !noalias !17470, !nonnull !35, !noundef !35 ; 2 uses
  %i.iw = load i64, ptr %i.cf, align 8, !noalias !17467
  br i1 %i.iu, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.us.i, label %.lr.ph.split.i177

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.us.i: ; preds = %.lr.ph.i175, %bb.cl
  %i.ix = phi i64 [ %i.iy, %bb.cl ], [ %.promoted.i174, %.lr.ph.i175 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17471)
  %i.iy = add i64 %i.ix, 1                        ; 4 uses
  %i.iz = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %i.ix ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.iz, i64 32, i1 false), !noalias !17472
  %.sroa.0.0.copyload1.i.us.i = load i64, ptr %i.d, align 8, !noalias !17472 ; 2 uses
  %.not.i.us.i = icmp eq i64 %.sroa.0.0.copyload1.i.us.i, -1
  br i1 %.not.i.us.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENCNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB2T_4Eval4eval0EEB2T_.exit8.i, label %bb.cj

bb.cj:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.us.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i64, ptr %i.aj, align 8, !range !38, !noalias !17473, !noundef !35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17467
  store i64 0, ptr %i.e, align 8, !noalias !17467
  store i64 %.sroa.0.0.copyload1.i.us.i, ptr %.sroa.712.0..sroa_idx.i, align 8, !noalias !17467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false), !noalias !17467
  store i64 %i.jb, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !17467
  store i64 %i.jb, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !17467
  call void @llvm.experimental.noalias.scope.decl(metadata !17474)
  %i.jc = load i64, ptr %i.be, align 8, !alias.scope !17475, !noundef !35
  %.val.i6.us.i = load ptr, ptr %i.al, align 8, !alias.scope !17475, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.us.i187 = icmp eq ptr %.val.i6.us.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.us.i187, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i189, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jd = getelementptr i8, ptr %.val.i6.us.i, i64 -8
  %.val.i.i.us.i188 = load i64, ptr %i.jd, align 8, !noalias !17476, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i189

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i189: ; preds = %bb.ck, %bb.cj
  %.sroa.02.0.i.i.us.i190 = phi i64 [ %.val.i.i.us.i188, %bb.ck ], [ 0, %bb.cj ]
  %i.je = icmp eq i64 %i.jc, %.sroa.02.0.i.i.us.i190
  %i.jf = zext i1 %i.je to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.jf)
          to label %bb.cl unwind label %.split.us.i191, !noalias !17477, !inline_history !29

bb.cl:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i189
  %i.jg = load ptr, ptr %i.al, align 8, !alias.scope !17475, !nonnull !35, !noundef !35
  %i.jh = load i64, ptr %i.be, align 8, !alias.scope !17475, !noundef !35 ; 2 uses
  %i.ji = getelementptr inbounds nuw [72 x i8], ptr %i.jg, i64 %i.jh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ji, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !17478
  %i.jj = add i64 %i.jh, 1
  store i64 %i.jj, ptr %i.be, align 8, !alias.scope !17475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17467
  %exitcond34.not.i = icmp eq i64 %i.iy, %i.ir
  br i1 %exitcond34.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENCNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB2T_4Eval4eval0EEB2T_.exit8.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.us.i

.split.us.i191:                                   ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.us.i189
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.cm:                                            ; preds = %bb.ch
  %i.jl = sub i64 %.val4.i, %.val.i171
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.al, i64 noundef %i.jl)
          to label %bb.ci unwind label %bb.cu, !noalias !17479

.lr.ph.split.i177:                                ; preds = %.lr.ph.i175, %bb.cs
  %i.jm = phi i64 [ %i.jn, %bb.cs ], [ %.promoted.i174, %.lr.ph.i175 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17471)
  %i.jn = add nuw i64 %i.jm, 1                    ; 5 uses
  %i.jo = icmp ult i64 %i.jm, %i.iw
  call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %i.jm
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jp) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.cn, !noalias !17467

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %.lr.ph.split.i177
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.d, align 8, !noalias !17472 ; 2 uses
  %.not.i.i180 = icmp eq i64 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i180, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENCNvXs0_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ArgsNtB2T_4Eval4eval0EEB2T_.exit8.i, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.split.i177
  %i.jq = landingpad { ptr, i32 }
          cleanup
  store i64 %i.jn, ptr %i.cc, align 8, !noalias !17467
  br label %.body.i178

.body.i178:                                       ; preds = %bb.cp, %bb.cn
  %eh.lpad-body.i179 = phi { ptr, i32 } [ %i.jq, %bb.cn ], [ %.us-phi27.i, %bb.cp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %.sroa.5.0..sroa_idx219)
          to label %.thread235 unwind label %bb.ct, !noalias !17467

bb.co:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i64 24, i1 false), !noalias !17467
  %i.jr = load i64, ptr %i.aj, align 8, !range !38, !noalias !17473, !noundef !35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17467
  store i64 0, ptr %i.e, align 8, !noalias !17467
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.sroa.712.0..sroa_idx.i, align 8, !noalias !17467
  store i64 %i.jr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !17467
  store i64 %i.jr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !17467
  call void @llvm.experimental.noalias.scope.decl(metadata !17474)
  %i.js = load i64, ptr %i.be, align 8, !alias.scope !17475, !noundef !35
  %.val.i6.i = load ptr, ptr %i.al, align 8, !alias.scope !17475, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %.val.i6.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i181, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i183, label %bb.cq

.split.i185:                                      ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i183
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp
end_hunk_4
begin_hunk_5_@_RNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB7_4Eval4eval:bb.a
  br i1 %.not.i.i.i.i.i162, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit172

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.089.0) ]
  %.not.i.i.i.i.i.i.i163 = icmp eq ptr %.sroa.089.0, inttoptr (i64 16 to ptr)
  %i.ej = getelementptr inbounds i8, ptr %.sroa.089.0, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i163, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit172, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i164

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i164: ; preds = %bb.au
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 release, align 8, !noalias !17656
  %.not.i.i.i.i.i.i165 = icmp eq i64 %i.ek, 1
  br i1 %.not.i.i.i.i.i.i165, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i166, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit172

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i166: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i164
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17656
  %i.el = getelementptr i8, ptr %.sroa.089.0, i64 -8
  %.val.i.i.i.i.i.i.i167 = load i64, ptr %i.el, align 8, !noalias !17656, !noundef !35 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i168 = icmp ult i64 %.val.i.i.i.i.i.i.i167, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i168, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i169, label %bb.av, !prof !37

bb.av:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i166
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
          to label %.noexc170 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc170:                                        ; preds = %bb.av
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i169: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i166
  %i.em = add nuw nsw i64 %.val.i.i.i.i.i.i.i167, 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ej, ptr %i.en, align 8, !noalias !17656
  store i64 8, ptr %i.h, align 8, !noalias !17656
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.em, ptr %i.eo, align 8, !noalias !17656
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.noexc171 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc171:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17656
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit172

bb.aw:                                            ; preds = %bb.as
  %.sroa.6109.0.copyload = load i64, ptr %.sroa.6109.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  store i64 %i.ed, ptr %i.ac, align 8
  store ptr %i.ef, ptr %.sroa.436.0..sroa_idx, align 8
  store i64 %i.eg, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 %.sroa.6109.0.copyload, ptr %.sroa.638.0..sroa_idx, align 8
  %i.ep = invoke noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.dl, ptr noundef %i.dm)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac) #44
          to label %bb.bd unwind label %bb.ab

bb.ay:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.es = load i64, ptr %i.er, align 8, !range !38, !noundef !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.et = load i64, ptr %i.aj, align 8, !range !38, !noundef !35
  store i64 %i.et, ptr %i.bi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  store i64 %i.es, ptr %.sroa.523.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.experimental.noalias.scope.decl(metadata !17657)
  %i.eu = load i64, ptr %i.ao, align 8, !alias.scope !17657, !noundef !35
  %.val.i173 = load ptr, ptr %i.an, align 8, !alias.scope !17657, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i174 = icmp eq ptr %.val.i173, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i174, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i, label %bb.ba

bb.az:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.ae) #44
          to label %.thread250 unwind label %bb.bb, !noalias !17657, !inline_history !29

bb.ba:                                            ; preds = %bb.ay
  %i.ew = getelementptr i8, ptr %.val.i173, i64 -8
  %.val.i.i = load i64, ptr %i.ew, align 8, !noalias !17658, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.ba, %bb.ay
  %.sroa.02.0.i.i = phi i64 [ %.val.i.i, %bb.ba ], [ 0, %bb.ay ]
  %i.ex = icmp eq i64 %i.eu, %.sroa.02.0.i.i
  %i.ey = zext i1 %i.ex to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.ey)
          to label %bb.bc unwind label %bb.az, !noalias !17659, !inline_history !29

bb.bb:                                            ; preds = %bb.az
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17657, !inline_history !29
  unreachable

bb.bc:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i
  %i.fa = load ptr, ptr %i.an, align 8, !alias.scope !17657, !nonnull !35, !noundef !35
  %i.fb = load i64, ptr %i.ao, align 8, !alias.scope !17657, !noundef !35 ; 2 uses
  %i.fc = getelementptr inbounds nuw [72 x i8], ptr %i.fa, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !17657
  %i.fd = add i64 %i.fb, 1
  store i64 %i.fd, ptr %i.ao, align 8, !alias.scope !17657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.aa

bb.bd:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #44
          to label %.thread250 unwind label %bb.ab

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval.exit172: ; preds = %.noexc171, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i164, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.ae

bb.be:                                            ; preds = %bb.q
  %i.fe = extractvalue { i64, ptr } %i.ck, 0
  %i.ff = extractvalue { i64, ptr } %i.ck, 1
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, i64 noundef %i.fe, ptr noundef %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  %i.fg = load i64, ptr %i.z, align 8, !range !39, !noundef !35 ; 5 uses
  %i.fh = icmp eq i64 %i.fg, -1
  %i.fi = load ptr, ptr %.sroa.4111.0..sroa_idx, align 8 ; 4 uses
  %i.fj = load i64, ptr %.sroa.5112.0..sroa_idx, align 8 ; 5 uses
  br i1 %i.fh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fi, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fj, ptr %i.fl, align 8
  store i64 0, ptr %0, align 8
  br label %bb.eb

bb.bh:                                            ; preds = %bb.bf
  %.sroa.6113.0.copyload = load i64, ptr %.sroa.6113.0..sroa_idx, align 8 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  store i64 %i.fg, ptr %i.aa, align 8
  store ptr %i.fi, ptr %.sroa.451.0..sroa_idx, align 8
  store i64 %i.fj, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.653.0..sroa_idx, align 8
  %i.fm = icmp ne i64 %i.fg, 30
  call void @llvm.assume(i1 %i.fm)
  %i.fn = add nsw i64 %i.fg, -2
  %i.fo = icmp samesign ugt i64 %i.fg, 1
  %i.fp = select i1 %i.fo, i64 %i.fn, i64 28
  %i.fq = inttoptr i64 %i.fj to ptr               ; 4 uses
  switch i64 %i.fp, label %bb.bi [
    i64 0, label %bb.bj
    i64 23, label %bb.bk
    i64 24, label %bb.bl
    i64 26, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.fs = load i64, ptr %i.fr, align 8, !range !38, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.o, i8 0, i64 15, i1 false)
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  store i8 -128, ptr %.sroa.4119.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ft = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB2_5Value2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
          to label %bb.ds unwind label %bb.dr

bb.bj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval.exit, %bb.cm, %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit, %bb.bh
  %i.fu = load i64, ptr %i.aa, align 8, !range !41, !noundef !35 ; 3 uses
  %i.fv = icmp ne i64 %i.fu, 30
  call void @llvm.assume(i1 %i.fv)
  %i.fw = add nsw i64 %i.fu, -2
  %i.fx = icmp samesign ugt i64 %i.fu, 1
  %i.fy = select i1 %i.fx, i64 %i.fw, i64 28
  switch i64 %i.fy, label %bb.cq [
    i64 23, label %bb.cr
    i64 24, label %bb.cr
    i64 26, label %bb.cr
  ]

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvXs5_NtNtCsdaEETE4DqmE_13typst_library11foundations5arrayNtB5_5ArrayNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.x, ptr noundef nonnull %i.fi, i64 noundef %i.fj)
          to label %bb.bo unwind label %.thread293

bb.bl:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_RNvXs8_NtNtCsdaEETE4DqmE_13typst_library11foundations4dictNtB5_4DictNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noundef nonnull %i.fi)
          to label %bb.by unwind label %.thread293

bb.bm:                                            ; preds = %bb.bh
  %.not.i.i.i178 = icmp eq i64 %i.fj, 16          ; 2 uses
  br i1 %.not.i.i.i178, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fz = getelementptr inbounds i8, ptr %i.fq, i64 -16
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8, !noalias !17660
  %i.gb = icmp eq i64 %i.ga, 1
  %i.gc = zext i1 %i.gb to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit

.thread293:                                       ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i, %bb.bk, %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, %bb.bl
  %lpad.thr_comm291 = landingpad { ptr, i32 }
          cleanup
  br label %.thread280

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_NtNtCs5PEMdK7bMAG_12typst_syntax3ast11MathArgItemEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB27_7sources7from_fn6FromFnNCNvMst_BO_NtBO_8MathArgs13content_items0EE4peek0ECs5cbCQMMIObr_10typst_eval.exit.i, %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtB9_7sources7from_fn6FromFnNCNvMst_NtCs5PEMdK7bMAG_12typst_syntax3astNtB1L_8MathArgs13content_items0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB2Q_8find_map5checkNtB1L_11MathArgItemNtB1L_3ArgNCNCNvB1H_9arg_items00E0INtNtNtBb_3ops12control_flow11ControlFlowB4h_EECs5cbCQMMIObr_10typst_eval.exit.thread.i, %bb.e, %_RNCNvMst_NtCs5PEMdK7bMAG_12typst_syntax3astNtB7_8MathArgs9arg_items0Cs5cbCQMMIObr_10typst_eval.exit.thread265, %bb.q, %bb.be, %bb.cq, %bb.p, %bb.ai, %bb.ct, %bb.ao, %bb.a, %bb.j, %bb.av, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i.i169, %bb.dz
  %lpad.loopexit.split-lp804 = landingpad { ptr, i32 }
          cleanup
  br label %.thread250

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  store ptr %i.aj, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !17661)
  call void @llvm.experimental.noalias.scope.decl(metadata !17662)
  %i.gd = load i64, ptr %i.be, align 8, !alias.scope !17663, !noundef !35 ; 4 uses
  %.promoted.i = load i64, ptr %i.bd, align 8, !alias.scope !17662 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17664
  %i.ge = icmp ult i64 %.promoted.i, %i.gd
  br i1 %i.ge, label %.lr.ph.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.bo
  %i.gf = load i8, ptr %i.bf, align 8, !range !44, !alias.scope !17663, !noalias !17665, !noundef !35
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = load ptr, ptr %i.bb, align 8, !alias.scope !17663, !noalias !17665, !nonnull !35, !noundef !35 ; 2 uses
  %i.gi = load i64, ptr %i.bg, align 8, !alias.scope !17662
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i, %.lr.ph.i
  %.val1314.i = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gj, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17666)
  %i.gj = add nuw i64 %.val1314.i, 1              ; 6 uses
  br i1 %i.gg, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gk = icmp ult i64 %.val1314.i, %i.gi
  call void @llvm.assume(i1 %i.gk)
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.val1314.i
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gl) #48
          to label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.bt, !noalias !17664

bb.br:                                            ; preds = %bb.bp
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %.val1314.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false), !noalias !17667
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.br, %bb.bq
  %.sroa.0.0.copyload1.i.i = load i64, ptr %i.f, align 8, !noalias !17667 ; 2 uses
  %.not.i.i180 = icmp eq i64 %.sroa.0.0.copyload1.i.i, -1
  br i1 %.not.i.i180, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, label %bb.bu

bb.bs:                                            ; preds = %bb.bv, %bb.bt
  %.pn.i = phi { ptr, i32 } [ %i.gw, %bb.bv ], [ %i.gn, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bb)
          to label %.thread280 unwind label %bb.bx, !noalias !17661

bb.bt:                                            ; preds = %bb.bq
  %i.gn = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gj, ptr %i.bd, align 8, !alias.scope !17663, !noalias !17665
  br label %bb.bs

bb.bu:                                            ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !noalias !17664
  %i.go = load i64, ptr %i.aj, align 8, !range !38, !noalias !17668, !noundef !35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17664
  store i64 0, ptr %i.g, align 8, !noalias !17664
  store i64 %.sroa.0.0.copyload1.i.i, ptr %.sroa.76.0..sroa_idx.i, align 8, !noalias !17664
  store i64 %i.go, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !17664
  store i64 %i.go, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !17664
  %i.gp = load i64, ptr %i.aq, align 8, !alias.scope !17661, !noundef !35 ; 5 uses
  %i.gq = icmp ult i64 %i.gp, 128102389400760776
  call void @llvm.assume(i1 %i.gq)
  %i.gr = load i64, ptr %i.am, align 8, !range !43, !alias.scope !17661, !noundef !35
  %i.gs = icmp eq i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.bw, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i
  %.lcssa439 = phi i64 [ %i.gj, %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i ], [ %i.gd, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i ]
  store i64 %.lcssa439, ptr %i.bd, align 8, !alias.scope !17663, !noalias !17665
  br label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i

_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17664
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.bb)
          to label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit unwind label %.thread293

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.bw, %bb.bu
  %i.gt = load ptr, ptr %i.ap, align 8, !alias.scope !17661, !nonnull !35, !noundef !35
  %i.gu = getelementptr inbounds nuw [72 x i8], ptr %i.gt, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gu, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !17664
  %i.gv = add nuw nsw i64 %i.gp, 1
  store i64 %i.gv, ptr %i.aq, align 8, !alias.scope !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17664
  %exitcond.not.i = icmp eq i64 %i.gj, %i.gd
  br i1 %exitcond.not.i, label %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i.loopexit, label %bb.bp

bb.bv:                                            ; preds = %bb.bw
  %i.gw = landingpad { ptr, i32 }
          cleanup
  store i64 %i.gj, ptr %i.bd, align 8, !alias.scope !17663, !noalias !17665
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #44
          to label %bb.bs unwind label %bb.bx, !noalias !17664

bb.bw:                                            ; preds = %bb.bu
  %i.gx = sub nuw i64 %i.gd, %i.gj
  %i.gy = add nuw i64 %i.gx, 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %i.gp, i64 noundef range(i64 1, 0) %i.gy, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.bv, !noalias !17662

bb.bx:                                            ; preds = %bb.bv, %bb.bs
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17664
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE16extend_desugaredINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBK_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3N_4Eval4eval0EEB3N_.exit: ; preds = %_RNvXsz_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bj

bb.by:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  store ptr %i.aj, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !17669)
  call void @llvm.experimental.noalias.scope.decl(metadata !17670)
  %.val.i184 = load ptr, ptr %i.av, align 8, !alias.scope !17670, !nonnull !35, !noundef !35 ; 2 uses
  %.val4.i185 = load ptr, ptr %i.aw, align 8, !alias.scope !17670, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i = icmp eq ptr %.val4.i185, %.val.i184
  br i1 %.not.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.ca, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !17669
  %i.ha = load ptr, ptr %i.ax, align 8, !alias.scope !17672, !noalias !17671, !nonnull !35, !noundef !35 ; 3 uses
  %.promoted.i186 = load ptr, ptr %i.ay, align 8, !alias.scope !17672, !noalias !17671 ; 3 uses
  %i.hb = icmp eq ptr %.promoted.i186, %i.ha
  br i1 %i.hb, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i: ; preds = %bb.bz
  %.val.i.i187 = load ptr, ptr %i.az, align 8, !noalias !17671, !nonnull !35, !align !45
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.hc = ptrtoint ptr %.val4.i185 to i64
  %i.hd = ptrtoint ptr %.val.i184 to i64
  %i.he = sub nuw i64 %i.hc, %i.hd
  %i.hf = udiv exact i64 %i.he, 56
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.hf)
          to label %bb.bz unwind label %bb.cl, !noalias !17670

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.cj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i
  %i.hg = phi ptr [ %.promoted.i186, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.lr.ph.i ], [ %i.hh, %bb.cj ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17673)
  call void @llvm.experimental.noalias.scope.decl(metadata !17674)
  call void @llvm.experimental.noalias.scope.decl(metadata !17675)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56 ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.hg, align 8, !noalias !17676 ; 2 uses
  %.not.i.i.i191 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i191, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %bb.cb

.body.i:                                          ; preds = %bb.cc
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3k_4Eval4evals_0EEB3k_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #44
          to label %.thread280 unwind label %bb.ck, !noalias !17671

bb.cb:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i192 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false), !noalias !17671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i189, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i192, i64 24, i1 false), !noalias !17671
  %i.hj = load i64, ptr %.val.i.i187, align 8, !range !38, !noalias !17677, !noundef !35 ; 2 uses
  store i64 1, ptr %i.d, align 8, !noalias !17671
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.8.0..sroa_idx.i188, align 8, !noalias !17671
  store i64 %i.hj, ptr %.sroa.10.0..sroa_idx.i190, align 8, !noalias !17671
  store i64 %i.hj, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !17671
  call void @llvm.experimental.noalias.scope.decl(metadata !17678)
  %i.hk = load i64, ptr %i.ao, align 8, !alias.scope !17679, !noundef !35
  %.val.i5.i = load ptr, ptr %i.an, align 8, !alias.scope !17679, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %.val.i5.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i6.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.cd

bb.cc:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  store ptr %i.hh, ptr %i.ay, align 8, !noalias !17671
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #44
          to label %.body.i unwind label %bb.ce, !noalias !17680, !inline_history !29

bb.cd:                                            ; preds = %bb.cb
  %i.hm = getelementptr i8, ptr %.val.i5.i, i64 -8
  %.val.i.i.i = load i64, ptr %i.hm, align 8, !noalias !17681, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.cd, %bb.cb
  %.sroa.02.0.i.i.i193 = phi i64 [ %.val.i.i.i, %bb.cd ], [ 0, %bb.cb ]
  %i.hn = icmp eq i64 %i.hk, %.sroa.02.0.i.i.i193
  %i.ho = zext i1 %i.hn to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.ho)
          to label %bb.cj unwind label %bb.cc, !noalias !17682, !inline_history !29

bb.ce:                                            ; preds = %bb.cc
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17680, !inline_history !29
  unreachable

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i: ; preds = %bb.cj, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i, %bb.bz
  %i.hq = phi ptr [ %.promoted.i186, %bb.bz ], [ %i.hh, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i ], [ %i.hh, %bb.cj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17683)
  call void @llvm.experimental.noalias.scope.decl(metadata !17684)
  call void @llvm.experimental.noalias.scope.decl(metadata !17685)
  call void @llvm.experimental.noalias.scope.decl(metadata !17686)
  %i.hr = ptrtoint ptr %i.ha to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub nuw i64 %i.hr, %i.hs
  %i.hu = udiv exact i64 %i.ht, 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1d_5value5ValueEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.hq, i64 noundef %i.hu)
          to label %bb.ch unwind label %bb.cf, !noalias !17687

bb.cf:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i
  %i.hv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hw = load i64, ptr %i.ba, align 8, !alias.scope !17688, !noalias !17671, !noundef !35 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %.thread280, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hy = load ptr, ptr %i.e, align 8, !alias.scope !17688, !noalias !17671, !nonnull !35, !noundef !35
  %i.hz = mul nuw i64 %i.hw, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hy, i64 noundef %i.hz, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !17687
  br label %.thread280

bb.ch:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i
  %i.ia = load i64, ptr %i.ba, align 8, !alias.scope !17688, !noalias !17671, !noundef !35 ; 2 uses
  %i.ib = icmp eq i64 %i.ia, 0
  br i1 %i.ib, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ic = load ptr, ptr %i.e, align 8, !alias.scope !17688, !noalias !17671, !nonnull !35, !noundef !35
  %i.id = mul nuw i64 %i.ia, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ic, i64 noundef %i.id, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !17687
  br label %bb.cm

bb.cj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.ie = load ptr, ptr %i.an, align 8, !alias.scope !17679, !nonnull !35, !noundef !35
  %i.if = load i64, ptr %i.ao, align 8, !alias.scope !17679, !noundef !35 ; 2 uses
  %i.ig = getelementptr inbounds nuw [72 x i8], ptr %i.ie, i64 %i.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ig, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !17680
  %i.ih = add i64 %i.if, 1
  store i64 %i.ih, ptr %i.ao, align 8, !alias.scope !17679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !17671
  %i.ii = icmp eq ptr %i.hh, %i.ha
  br i1 %i.ii, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i._crit_edge.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtCsjFU9swAW47b_8indexmap6BucketNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1x_5value5ValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.i.i.i

bb.ck:                                            ; preds = %bb.cl, %.body.i
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17671
  unreachable

bb.cl:                                            ; preds = %bb.ca
  %i.ik = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsjFU9swAW47b_8indexmap3map4iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrNtNtB1Z_5value5ValueENCNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB3k_4Eval4evals_0EEB3k_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.w) #44
          to label %.thread280 unwind label %bb.ck, !noalias !17669

bb.cm:                                            ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.bj

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.bn, %bb.bm
  %.sroa.02.0.i.i.i = phi i8 [ %i.gc, %bb.bn ], [ 1, %bb.bm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.fq, ptr %i.u, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.4.0..sroa_idx223, align 8
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  store i8 %.sroa.02.0.i.i.i, ptr %.sroa.7225.0..sroa_idx, align 8
  %.not421 = icmp eq i64 %.sroa.6113.0.copyload, 0
  br i1 %.not421, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit
  %3 = trunc nuw i8 %.sroa.02.0.i.i.i to i1
  br label %.lr.ph.a

._crit_edge:                                      ; preds = %bb.dp, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit
  store i64 %.sroa.6113.0.copyload, ptr %.sroa.5.0..sroa_idx224, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17689)
  %.not2.i.i = icmp eq i8 %.sroa.02.0.i.i.i, 0
  %or.cond.i.i = or i1 %.not.i.i.i178, %.not2.i.i
  br i1 %or.cond.i.i, label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge
  store i64 0, ptr %.sroa.4.0..sroa_idx223, align 8, !alias.scope !17690
  %i.il = getelementptr inbounds nuw [72 x i8], ptr %i.fq, i64 %.sroa.6113.0.copyload
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.il, i64 noundef 0)
          to label %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.co, !noalias !17689

bb.co:                                            ; preds = %bb.cn
  %i.im = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u) #44
          to label %.thread280 unwind label %bb.cp

_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.cn, %._crit_edge
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval.exit unwind label %.thread293

bb.cp:                                            ; preds = %bb.co
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17689
  unreachable

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.dp
  %i.io = phi i64 [ 0, %.lr.ph ], [ %i.ip, %bb.dp ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5243)
  %i.ip = add nuw i64 %i.io, 1                    ; 6 uses
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.fq, i64 %i.io ; 10 uses
  br i1 %3, label %bb.dd, label %bb.cv

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %_RNvXsC_NtCsakL8LGkl72C_4ecow3vecINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5cbCQMMIObr_10typst_eval.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bj

bb.cq:                                            ; preds = %bb.bj
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %bb.cq, %bb.bj, %bb.bj, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.aa

bb.cs:                                            ; preds = %bb.cu, %bb.aa
  %.sroa.458.1 = phi i64 [ %i.is, %bb.cu ], [ %.sroa.458.0, %bb.aa ]
  %.sroa.056.1 = phi i64 [ 1, %bb.cu ], [ %.sroa.056.0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.d

bb.ct:                                            ; preds = %bb.aa
  %i.ir = trunc nuw i64 %.sroa.056.0 to i1
  %.sroa.458.0. = select i1 %i.ir, i64 %.sroa.458.0, i64 0
  invoke fastcc void @_RNvNvXs1_NtCs5cbCQMMIObr_10typst_eval4callNtNtCs5PEMdK7bMAG_12typst_syntax3ast8MathArgsNtB9_4Eval4eval16drain_into_array(ptr noalias nofree noundef align 8 dereferenceable(24) %i.am, i64 noundef %.sroa.458.0., i64 noundef %i.bn)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  %i.is = load i64, ptr %i.aq, align 8, !noundef !35 ; 2 uses
  %i.it = icmp ult i64 %i.is, 128102389400760776
  call void @llvm.assume(i1 %i.it)
  br label %bb.cs

bb.cv:                                            ; preds = %.lr.ph.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17691)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.iv = load i64, ptr %i.iu, align 8, !range !38, !alias.scope !17691, !noundef !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !17692
  %i.iw = load i64, ptr %i.iq, align 8, !range !36, !alias.scope !17691, !noundef !35
  %i.ix = trunc nuw i64 %i.iw to i1
  br i1 %i.ix, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 23
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !17691, !noundef !35
  %.not.i203 = icmp sgt i8 %i.ja, -1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %.val.i204 = load ptr, ptr %i.iy, align 8, !alias.scope !17691 ; 5 uses
  %.val25.i = load i64, ptr %i.jb, align 8, !alias.scope !17691
  br i1 %.not.i203, label %bb.cy, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i

bb.cx:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i, %bb.cv
  %storemerge.i = phi i64 [ 1, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i ], [ 0, %bb.cv ] ; 2 uses
  store i64 %storemerge.i, ptr %i.c, align 8, !noalias !17692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !17692
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !17693)
  call void @llvm.experimental.noalias.scope.decl(metadata !17694)
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.jc) #48
          to label %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit unwind label %bb.db, !noalias !17695

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i.i205 = icmp eq ptr %.val.i204, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i205, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.jd = getelementptr inbounds i8, ptr %.val.i204, i64 -16
  %i.je = atomicrmw add ptr %i.jd, i64 1 monotonic, align 8, !noalias !17692
  %i.jf = icmp slt i64 %i.je, 0
  br i1 %i.jf, label %bb.da, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i, !prof !40

bb.da:                                            ; preds = %bb.cz
  store i64 %i.ip, ptr %.sroa.5.0..sroa_idx224, align 8
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i204) #42
          to label %.noexc206 unwind label %bb.dn

.noexc206:                                        ; preds = %bb.da
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.cw, %bb.cz, %bb.cy
  %.sroa.06.0.i = phi ptr [ %.val.i204, %bb.cz ], [ inttoptr (i64 16 to ptr), %bb.cy ], [ %.val.i204, %bb.cw ]
  store ptr %.sroa.06.0.i, ptr %i.as, align 8, !noalias !17692
  store i64 %.val25.i, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !17692
  br label %bb.cx

bb.db:                                            ; preds = %bb.cx
  %i.jg = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ip, ptr %.sroa.5.0..sroa_idx224, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #44
          to label %.body207 unwind label %bb.dc, !noalias !17695

bb.dc:                                            ; preds = %bb.db
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17695
  unreachable

_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.cx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  %.val.i.i202 = load i64, ptr %i.ji, align 8, !range !38, !alias.scope !17696, !noundef !35
  store i64 %.val.i.i202, ptr %i.at, align 8, !alias.scope !17693, !noalias !17692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5243, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !17691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5243.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !17691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !17692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !17692
  br label %bb.de

bb.dd:                                            ; preds = %.lr.ph.a
  %.sroa.0241.0.copyload = load i64, ptr %i.iq, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5243, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5243.0..sroa_idx, i64 56, i1 false)
  %.sroa.7245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %.sroa.7245.0.copyload = load i64, ptr %.sroa.7245.0..sroa_idx, align 8
  br label %bb.de

bb.de:                                            ; preds = %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.dd
  %.sroa.0241.0 = phi i64 [ %.sroa.0241.0.copyload, %bb.dd ], [ %storemerge.i, %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit ] ; 2 uses
  %.sroa.7245.0 = phi i64 [ %.sroa.7245.0.copyload, %bb.dd ], [ %i.iv, %_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6229.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6229.sroa.0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5243, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5243)
  %.not138 = icmp eq i64 %.sroa.0241.0, 0
  br i1 %.not138, label %bb.dj, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.0241.0, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6229.0..sroa_idx230, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6229.sroa.0, i64 56, i1 false)
  store i64 %.sroa.7245.0, ptr %.sroa.6229.sroa.5.0..sroa.6229.0..sroa_idx230.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17697)
  %i.jj = load i64, ptr %i.ao, align 8, !alias.scope !17697, !noundef !35
  %.val.i209 = load ptr, ptr %i.an, align 8, !alias.scope !17697, !nonnull !35, !noundef !35 ; 2 uses
  %.not.i.i210 = icmp eq ptr %.val.i209, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i210, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i212, label %bb.dh

bb.dg:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i212
  %i.jk = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ip, ptr %.sroa.5.0..sroa_idx224, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.s) #44
          to label %.body207 unwind label %bb.di, !noalias !17697, !inline_history !29

bb.dh:                                            ; preds = %bb.df
  %i.jl = getelementptr i8, ptr %.val.i209, i64 -8
  %.val.i.i211 = load i64, ptr %i.jl, align 8, !noalias !17698, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i212

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i212: ; preds = %bb.dh, %bb.df
  %.sroa.02.0.i.i213 = phi i64 [ %.val.i.i211, %bb.dh ], [ 0, %bb.df ]
  %i.jm = icmp eq i64 %i.jj, %.sroa.02.0.i.i213
  %i.jn = zext i1 %i.jm to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.jn)
          to label %bb.do unwind label %bb.dg, !noalias !17699, !inline_history !29

bb.di:                                            ; preds = %bb.dg
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17697, !inline_history !29
  unreachable

bb.dj:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6229.0..sroa_idx231, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6229.sroa.0, i64 56, i1 false)
  store i64 %.sroa.7245.0, ptr %.sroa.6229.sroa.5.0..sroa.6229.0..sroa_idx231.sroa_idx, align 8
  %i.jp = load i64, ptr %i.aq, align 8, !alias.scope !17700, !noundef !35 ; 3 uses
  %i.jq = load i64, ptr %i.am, align 8, !range !43, !alias.scope !17700, !noundef !35
  %i.jr = icmp eq i64 %i.jp, %i.jq
  br i1 %i.jr, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %bb.dq unwind label %bb.dl, !noalias !17701

bb.dl:                                            ; preds = %bb.dk
  %i.js = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ip, ptr %.sroa.5.0..sroa_idx224, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.t) #44
          to label %.body207 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.dn:                                            ; preds = %bb.da
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body207

.body207:                                         ; preds = %bb.dg, %bb.dl, %bb.dn, %bb.db
  %eh.lpad-body208 = phi { ptr, i32 } [ %i.jg, %bb.db ], [ %i.jk, %bb.dg ], [ %i.ju, %bb.dn ], [ %i.js, %bb.dl ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.u) #44
          to label %.thread280 unwind label %bb.ab

bb.do:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i212
  %i.jv = load ptr, ptr %i.an, align 8, !alias.scope !17697, !nonnull !35, !noundef !35
  %i.jw = load i64, ptr %i.ao, align 8, !alias.scope !17697, !noundef !35 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvXs1_NtCs5cbCQMMIObr_10typst_eval4flowNtNtCs5PEMdK7bMAG_12typst_syntax3ast7ForLoopNtB7_4Eval4eval:bb.a

.sink.split.i.i.i.loopexit:                       ; preds = %bb.ax
  br label %.sink.split.i.i.i

.sink.split.i.i.i.loopexit2475:                   ; preds = %bb.ax
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ax, %.sink.split.i.i.i.loopexit2475, %.sink.split.i.i.i.loopexit
  %.sink.i.i.i = phi i8 [ 4, %.sink.split.i.i.i.loopexit ], [ 5, %.sink.split.i.i.i.loopexit2475 ], [ 3, %bb.ax ]
  store i8 %.sink.i.i.i, ptr %.sroa.075.sroa.12.0..sroa_idx, align 2, !alias.scope !17847
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.az, %.sink.split.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 1, ptr %i.ah, align 8, !alias.scope !17847
  store i64 0, ptr %i.jr, align 8, !alias.scope !17847
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not.i38.i.i.not, label %.split.i54.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.js = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jj
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !17851, !noundef !35
  %i.ju = icmp sgt i8 %i.jt, -65
  br i1 %i.ju, label %.split.i54.i.i.i, label %.invoke

.split.i54.i.i.i:                                 ; preds = %bb.ba, %bb.bb
  %i.jv = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jj ; 4 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -1
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !17852, !noalias !17853, !noundef !35 ; 3 uses
  %i.jy = icmp sgt i8 %i.jx, -1
  br i1 %i.jy, label %bb.bc, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i.i.i.i: ; preds = %.split.i54.i.i.i
  %i.jz = icmp ne i64 %i.jj, 1
  call void @llvm.assume(i1 %i.jz)
  %i.ka = getelementptr inbounds i8, ptr %i.jv, i64 -2
  %i.kb = load i8, ptr %i.ka, align 1, !alias.scope !17852, !noalias !17853, !noundef !35 ; 3 uses
  %i.kc = and i8 %i.kb, 31
  %i.kd = zext nneg i8 %i.kc to i32
  %i.ke = icmp slt i8 %i.kb, -64
  br i1 %i.ke, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i.i.i.i, label %bb.bd

bb.bc:                                            ; preds = %.split.i54.i.i.i
  %i.kf = zext nneg i8 %i.jx to i32
  br label %.thread.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i.i.i.i
  %i.kg = icmp ne i64 %i.jj, 2
  call void @llvm.assume(i1 %i.kg)
  %i.kh = getelementptr inbounds i8, ptr %i.jv, i64 -3
  %i.ki = load i8, ptr %i.kh, align 1, !alias.scope !17852, !noalias !17853, !noundef !35 ; 3 uses
  %i.kj = and i8 %i.ki, 15
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = icmp slt i8 %i.ki, -64
  br i1 %i.kl, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i.i.i.i, label %bb.be

bb.bd:                                            ; preds = %bb.be, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i.i.i.i
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.lc, %bb.be ], [ %i.kd, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit17.i.i.i.i ]
  %i.km = shl nuw nsw i32 %.sroa.010.0.i.i.i.i, 6
  %i.kn = and i8 %i.jx, 63
  %i.ko = zext nneg i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.km, %i.ko
  br label %.thread.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i.i.i.i
  %i.kq = icmp ne i64 %i.jj, 3
  call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds i8, ptr %i.jv, i64 -4
  %i.ks = load i8, ptr %i.kr, align 1, !alias.scope !17852, !noalias !17853, !noundef !35
  %i.kt = and i8 %i.ks, 7
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 6
  %i.kw = and i8 %i.ki, 63
  %i.kx = zext nneg i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kv, %i.kx
  br label %bb.be

bb.be:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i.i.i.i
  %.sroa.010.1.i.i.i.i = phi i32 [ %i.ky, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit21.i.i.i.i ], [ %i.kk, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5cbCQMMIObr_10typst_eval.exit19.i.i.i.i ]
  %i.kz = shl nuw nsw i32 %.sroa.010.1.i.i.i.i, 6
  %i.la = and i8 %i.kb, 63
  %i.lb = zext nneg i8 %i.la to i32
  %i.lc = or disjoint i32 %i.kz, %i.lb
  br label %bb.bd

.thread.i.i.i:                                    ; preds = %bb.bd, %bb.bc
  %.sroa.4.1.i.ph.i.i.i = phi i32 [ %i.kf, %bb.bc ], [ %i.kp, %bb.bd ] ; 2 uses
  %i.ld = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ld)
  %i.le = invoke noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ah, i32 noundef %.sroa.4.1.i.ph.i.i.i)
          to label %.noexc367 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc367:                                        ; preds = %.thread.i.i.i
  store i8 %i.le, ptr %.sroa.075.sroa.13.0..sroa_idx, align 1, !alias.scope !17847
  %.pre103.i.i.i = load i8, ptr %.sroa.075.sroa.14.0..sroa_idx, align 8, !range !17842, !alias.scope !17847 ; 2 uses
  %.not46.i.i.i = icmp eq i8 %.pre103.i.i.i, -1
  br i1 %.not46.i.i.i, label %.invoke1434, label %.thread.thread.i.i.i, !prof !17854

.thread.thread.i.i.i:                             ; preds = %.noexc367, %bb.az, %bb.ay
  %i.lf = phi i8 [ %i.le, %.noexc367 ], [ %i.jq, %bb.az ], [ %.pre102.i.i.i, %bb.ay ] ; 6 uses
  %i.lg = phi i8 [ %.pre103.i.i.i, %.noexc367 ], [ %i.ji, %bb.az ], [ %i.ji, %bb.ay ] ; 6 uses
  switch i8 %i.lf, label %bb.bf [
    i8 1, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.i.i.i
    i8 2, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
    i8 7, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
  ]

bb.bf:                                            ; preds = %.thread.thread.i.i.i
  switch i8 %i.lg, label %bb.bg [
    i8 1, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
    i8 2, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
    i8 7, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
  ]

bb.bg:                                            ; preds = %bb.bf
  switch i8 %i.lf, label %bb.bh [
    i8 6, label %bb.bi
    i8 8, label %bb.bj
    i8 14, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  switch i8 %i.lg, label %bb.bk [
    i8 3, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 12, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i
    i8 13, label %bb.bl
    i8 15, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
  ]

bb.bi:                                            ; preds = %bb.bg
  switch i8 %i.lg, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i [
    i8 6, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 8, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 9, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 14, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 3, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 12, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i
    i8 5, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i.i
    i8 15, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
  ]

bb.bj:                                            ; preds = %bb.bg, %bb.bg
  switch i8 %i.lg, label %bb.bk [
    i8 13, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 14, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 3, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 12, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i
    i8 15, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
  ]

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %i.lh = icmp eq i8 %i.lf, 10
  br i1 %i.lh, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i, label %.thread.i.i.i.i

bb.bl:                                            ; preds = %bb.bh
  switch i8 %i.lf, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i [
    i8 9, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 13, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i
    i8 10, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i
  ]

.thread.i.i.i.i:                                  ; preds = %bb.bk
  switch i8 %i.lg, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i [
    i8 4, label %bb.bm
    i8 5, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i.i
    i8 11, label %bb.bn
  ]

bb.bm:                                            ; preds = %.thread.i.i.i.i
  %i.li = icmp eq i8 %i.lf, 15
  br i1 %i.li, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i.i, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i

bb.bn:                                            ; preds = %.thread.i.i.i.i
  %i.lj = icmp eq i8 %i.lf, 11
  br i1 %i.lj, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i.i, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.i.i.i: ; preds = %.thread.thread.i.i.i
  %.not101.i.i.i = icmp eq i8 %i.lg, 7
  br i1 %.not101.i.i.i, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i, label %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i

.invoke1434:                                      ; preds = %bb.u, %.noexc367
  %i.lk = phi ptr [ @198, %.noexc367 ], [ @337, %bb.u ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lk) #47
          to label %.cont1435 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont1435:                                        ; preds = %.invoke1434
  unreachable

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i: ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.i.i.i, %bb.bl, %bb.bl, %bb.bj, %bb.bj, %bb.bj, %bb.bj, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bh, %bb.bh
  store i8 1, ptr %.sroa.075.sroa.12.0..sroa_idx, align 2, !alias.scope !17847
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i.i

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i: ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.i.i.i, %bb.bn, %bb.bm, %.thread.i.i.i.i, %bb.bl, %bb.bi, %bb.bf, %bb.bf, %bb.bf, %.thread.thread.i.i.i, %.thread.thread.i.i.i
  store i8 2, ptr %.sroa.075.sroa.12.0..sroa_idx, align 2, !alias.scope !17847
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i.i

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.ll = load i8, ptr %.sroa.075.sroa.10.0..sroa_idx, align 4, !range !44, !alias.scope !17847, !noundef !35 ; 2 uses
  %3 = icmp eq i8 %i.ll, 0
  %..i.i.i = select i1 %3, i8 2, i8 1
  store i8 %..i.i.i, ptr %.sroa.075.sroa.12.0..sroa_idx, align 2, !alias.scope !17847
  %4 = xor i8 %i.ll, 1
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i.i: ; preds = %.thread.i.i.i.i, %bb.bi
  %brmerge = or i1 %i.jp, %.not.i38.i.i.not
  br i1 %brmerge, label %.split.i58.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jj
  %i.ln = load i8, ptr %i.lm, align 1, !alias.scope !17855, !noundef !35
  %i.lo = icmp sgt i8 %i.ln, -65
  br i1 %i.lo, label %.split.i58.i.i.i, label %.invoke

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i.i: ; preds = %bb.bn
  %i.lp = load i64, ptr %.sroa.075.sroa.5.0..sroa_idx, align 8, !range !36, !alias.scope !17847, !noundef !35
  %i.lq = trunc nuw i64 %i.lp to i1
  br i1 %i.lq, label %bb.bq, label %bb.br

_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i.i: ; preds = %bb.bm
  %brmerge1711 = or i1 %i.jp, %.not.i38.i.i.not
  br i1 %brmerge1711, label %.split.i62.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jj
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !17856, !noundef !35
  %i.lt = icmp sgt i8 %i.ls, -65
  br i1 %i.lt, label %.split.i62.i.i.i, label %.invoke

.split.i58.i.i.i:                                 ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i.i, %bb.bo
  invoke fastcc void @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.jj) #48
          to label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i.i
  %i.lu = load i64, ptr %i.db, align 8, !alias.scope !17847, !noundef !35
  %i.lv = and i64 %i.lu, 1                        ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  %.51.i.i.i = select i1 %i.lw, i8 2, i8 1
  store i8 %.51.i.i.i, ptr %.sroa.075.sroa.12.0..sroa_idx, align 2, !alias.scope !17847
  %i.lx = trunc nuw nsw i64 %i.lv to i8
  %i.ly = xor i8 %i.lx, 1
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i

bb.br:                                            ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i.i
  %brmerge1713 = or i1 %i.jp, %.not.i38.i.i.not
  br i1 %brmerge1713, label %.split.i66.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lz = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.jj
  %i.ma = load i8, ptr %i.lz, align 1, !alias.scope !17857, !noundef !35
  %i.mb = icmp sgt i8 %i.ma, -65
  br i1 %i.mb, label %.split.i66.i.i.i, label %.invoke

.split.i66.i.i.i:                                 ; preds = %bb.br, %bb.bs
  invoke fastcc void @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.jj) #48
          to label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.i62.i.i.i:                                 ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i.i, %bb.bp
  invoke fastcc void @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.jj) #48
          to label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i.i: ; preds = %.split.i58.i.i.i, %.split.i66.i.i.i, %.split.i62.i.i.i
  invoke fastcc void @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor18is_boundary_result(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ah) #48
          to label %.noexc375 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc375:                                        ; preds = %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i.i
  %.pr.i.i = load i64, ptr %i.j, align 8, !noalias !17846 ; 2 uses
  %.not29.i.i = icmp eq i64 %.pr.i.i, -1
  br i1 %.not29.i.i, label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i.i, label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i.i: ; preds = %.noexc375
  %.pre135.i.i = load i8, ptr %i.dc, align 8, !range !44, !noalias !17846
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i

bb.bt:                                            ; preds = %bb.ae
  %i.mc = invoke noundef i8 @_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.ah, i32 noundef %.sroa.08.0.i.i)
          to label %.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i: ; preds = %bb.at, %.noexc375
  %.ph.i = phi i64 [ 3, %bb.at ], [ %.pr.i.i, %.noexc375 ]
  %.pre.i = load i64, ptr %i.dc, align 8, !noalias !17846
  br label %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i: ; preds = %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i, %.loopexit.i.i, %bb.av
  %i.md = phi i64 [ %i.jo, %bb.av ], [ 0, %.loopexit.i.i ], [ %.pre.i, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i ]
  %i.me = phi i64 [ 0, %bb.av ], [ 0, %.loopexit.i.i ], [ %.ph.i, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17846
  br label %.loopexit627

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i.i: ; preds = %bb.as, %.thread546, %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17846
  br label %.loopexit.i

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i.i: ; preds = %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17846
  br label %bb.bu

_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i: ; preds = %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i.i, %bb.bq, %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i
  %i.mf = phi i8 [ %.pre135.i.i, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i.i ], [ %i.ly, %bb.bq ], [ %4, %_RNvNtCs4vtCw9T9d1A_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i.i ]
  %i.mg = trunc nuw i8 %i.mf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17846
  br i1 %i.mg, label %.loopexit.i, label %bb.bu

bb.bu:                                            ; preds = %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i.i
  store i8 0, ptr %.sroa.075.sroa.11.0..sroa_idx, align 1, !alias.scope !17839
  br label %bb.ac

.loopexit627:                                     ; preds = %bb.y, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i, %bb.ar
  %.sroa.14.0.ph.i = phi i64 [ undef, %bb.ar ], [ %i.md, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i ], [ undef, %bb.y ]
  %.sroa.8.0.ph.i = phi i64 [ 2, %bb.ar ], [ %i.me, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.i ], [ 2, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17858
  store i64 %.sroa.8.0.ph.i, ptr %i.k, align 8, !noalias !17858
  %i.mh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.14.0.ph.i, ptr %i.mh, align 8, !noalias !17858
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #47
          to label %.noexc377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc377:                                        ; preds = %.loopexit627
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i.i, %_RNvMs4_NtCs4vtCw9T9d1A_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i.i
  store i8 0, ptr %.sroa.075.sroa.11.0..sroa_idx, align 1, !alias.scope !17839
  %i.mi = load i64, ptr %.sroa.075.sroa.7.0..sroa_idx, align 8, !alias.scope !17839, !noundef !35 ; 8 uses
  %i.mj = load ptr, ptr %.sroa.376.0..sroa_idx, align 8, !alias.scope !17836, !nonnull !35, !noundef !35 ; 6 uses
  %i.mk = load i64, ptr %.sroa.477.0..sroa_idx, align 8, !alias.scope !17836, !noundef !35 ; 6 uses
  %i.ml = icmp ugt i64 %i.dd, %i.mi
  %i.mm = icmp ugt i64 %i.mi, %i.mk
  %or.cond.i.i = or i1 %i.ml, %i.mm
  br i1 %or.cond.i.i, label %.invoke, label %bb.bv, !prof !17859

bb.bv:                                            ; preds = %.loopexit.i
  %i.mn = icmp eq i64 %i.dd, %i.mk
  br i1 %i.mn, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.di, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.by, %bb.bw
  %i.mo = icmp eq i64 %i.mi, %i.mk
  br i1 %i.mo, label %bb.bz, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.dd
  %i.mq = load i8, ptr %i.mp, align 1, !alias.scope !17860, !noundef !35
  %i.mr = icmp sgt i8 %i.mq, -65
  br i1 %i.mr, label %bb.bx, label %.invoke, !prof !48

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i: ; preds = %bb.bx
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mi
  %i.mt = load i8, ptr %i.ms, align 1, !alias.scope !17860, !noundef !35
  %i.mu = icmp sgt i8 %i.mt, -65
  br i1 %i.mu, label %bb.bz, label %.invoke, !prof !49

bb.bz:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i, %bb.bx, %bb.bv
  %i.mv = sub nuw i64 %i.mi, %i.dd
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvXs1q_NtNtCsdaEETE4DqmE_13typst_library11foundations3strReNtNtB8_4cast9IntoValue10into_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mw, i64 noundef %i.mv)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit

.thread549:                                       ; preds = %bb.co, %bb.cp, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5cbCQMMIObr_10typst_eval4flow9FlowEventEEB11_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5scopeNtB2_6Scopes4exit(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.co)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %i.mx = invoke fastcc { ptr, i64 } @_RINvNtCs5cbCQMMIObr_10typst_eval7binding16destructure_implNCNvB2_11destructure0EB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag)
          to label %_RNvNtCs5cbCQMMIObr_10typst_eval7binding11destructure.exit unwind label %.loopexit.split-lp.loopexit ; 2 uses

_RNvNtCs5cbCQMMIObr_10typst_eval7binding11destructure.exit: ; preds = %bb.ca
  %i.my = extractvalue { ptr, i64 } %i.mx, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %.not329 = icmp eq ptr %i.my, null
  br i1 %.not329, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RNvNtCs5cbCQMMIObr_10typst_eval7binding11destructure.exit
  %i.mz = extractvalue { ptr, i64 } %i.mx, 1
  br label %bb.dd

bb.cc:                                            ; preds = %_RNvNtCs5cbCQMMIObr_10typst_eval7binding11destructure.exit
  %i.na = invoke { i64, ptr } @_RNvMs1e_NtCs5PEMdK7bMAG_12typst_syntax3astNtB6_7ForLoop4body(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.nb = extractvalue { i64, ptr } %i.na, 0      ; 2 uses
  %i.nc = extractvalue { i64, ptr } %i.na, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, i64 noundef %i.nb, ptr noundef %i.nc, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit

bb.ce:                                            ; preds = %bb.cd
  %i.nd = load i64, ptr %i.af, align 8, !range !39, !noundef !35 ; 2 uses
  %i.ne = icmp eq i64 %i.nd, -1
  %i.nf = load ptr, ptr %.sroa.4254.0..sroa_idx, align 8 ; 2 uses
  %i.ng = load i64, ptr %.sroa.5255.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ne, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.dd

bb.cg:                                            ; preds = %bb.ce
  %.sroa.6256.0.copyload = load i64, ptr %.sroa.6256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i64 %i.nd, ptr %i.ae, align 8
  store ptr %i.nf, ptr %.sroa.690.0..sroa_idx91, align 8
  store i64 %i.ng, ptr %.sroa.893.0..sroa_idx94, align 8
  store i64 %.sroa.6256.0.copyload, ptr %.sroa.1096.0..sroa_idx97, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations3ops4join(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ae)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.nh = invoke noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.nb, ptr noundef %i.nc)
          to label %bb.ci unwind label %bb.db

.body:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.ci:                                            ; preds = %bb.ch
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nk = load i64, ptr %i.nj, align 8, !range !38, !noundef !35
  call void @llvm.experimental.noalias.scope.decl(metadata !17861)
  call void @llvm.experimental.noalias.scope.decl(metadata !17862)
  %i.nl = load i64, ptr %i.ad, align 8, !range !39, !alias.scope !17862, !noundef !35 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, -1
  br i1 %i.nm, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !17863
  %i.nn = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.nk)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.cl, !noalias !17864 ; 2 uses

bb.ck:                                            ; preds = %bb.cl
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !17864
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %.sroa.6506.0..sroa_idx) #44
          to label %.body.thread unwind label %bb.ck, !noalias !17861

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.cj
  %i.nq = extractvalue { i64, i64 } %i.nn, 1
  %i.nr = extractvalue { i64, i64 } %i.nn, 0
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.6506.0..sroa_idx, i64 16, i1 false), !noalias !17861
  store i64 %i.nr, ptr %i.i, align 8, !noalias !17863
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.nq, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17863
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17863
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17863
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !17863
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !17863
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !17863
  %i.ns = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.i)
          to label %bb.cm unwind label %.body     ; 2 uses

bb.cm:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i
  %i.nt = extractvalue { ptr, i64 } %i.ns, 0      ; 2 uses
  %i.nu = extractvalue { ptr, i64 } %i.ns, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !17863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nt) ]
  br label %bb.dd

bb.cn:                                            ; preds = %bb.ci
  %.sroa.6506.0.copyload = load ptr, ptr %.sroa.6506.0..sroa_idx, align 8, !alias.scope !17863
  %i.nv = load <2 x i64>, ptr %.sroa.9507.0..sroa_idx, align 8, !alias.scope !17863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.nl, ptr %i.bb, align 8
  store ptr %.sroa.6506.0.copyload, ptr %.sroa.2111.0..sroa_idx, align 8
  store <2 x i64> %i.nv, ptr %.sroa.3112.0..sroa_idx, align 8
  %i.nw = load i64, ptr %2, align 8, !range !85, !noundef !35 ; 5 uses
  %.not330 = icmp eq i64 %i.nw, -2
  br i1 %.not330, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nx = add nsw i64 %i.nw, -32
  %i.ny = icmp sgt i64 %i.nw, 31
  %i.nz = select i1 %i.ny, i64 %i.nx, i64 2
  switch i64 %i.nz, label %.loopexit631 [
    i64 0, label %bb.cq
    i64 1, label %bb.cs
    i64 2, label %.thread549
  ]
end_hunk_6
begin_hunk_7_@_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 88, i1 false), !noalias !20425
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !20430, !noalias !20425, !noundef !35 ; 4 uses
  %.promoted.i = load i64, ptr %i.a, align 8, !alias.scope !20430, !noalias !20425 ; 3 uses
  %.not.i.i22.i = icmp eq i64 %i.f, %.promoted.i
  br i1 %.not.i.i22.i, label %.loopexit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.5.0.copyload8.i = load i8, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !20431, !noalias !20425 ; 2 uses
  %.not.i = icmp eq i8 %.sroa.5.0.copyload8.i, 2
  br i1 %.not.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.split.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.split.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !20424, !nonnull !35
  %.promoted26.i = load i64, ptr %i.d, align 8, !alias.scope !20424 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.f, 1
  tail call void @llvm.assume(i1 %.not.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20433)
  %i.h = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %.promoted26.i ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 64, i1 false), !noalias !20424
  %.sroa.4.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i8 %.sroa.5.0.copyload8.i, ptr %.sroa.4.0..sroa_idx.us.i, align 8, !noalias !20425
  %.sroa.511.0..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.511.0..sroa_idx.us.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %i.i, i64 7, i1 false), !noalias !20424
  %i.k = add i64 %.promoted26.i, 1
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !20424
  br label %.loopexit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20433)
  %i.l = icmp eq i64 %.promoted.i, 0
  tail call void @llvm.assume(i1 %i.l)
  store i64 1, ptr %i.a, align 8, !noalias !20425
  %i.m = icmp eq i64 %i.f, 1
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i
  %i.n = add i64 %i.f, -1                         ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %i.n
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i4.i5 = phi i64 [ %i.s, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5
  %i.s = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i4.i5, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.d unwind label %bb.f, !noalias !20425

bb.e:                                             ; preds = %.lr.ph7
  %i.t = add i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6, 1  ; 2 uses
  %i.u = icmp eq i64 %i.t, %i.n
  br i1 %i.u, label %.body, label %.lr.ph7

bb.f:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %i.s, %i.n
  br i1 %i.w, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i.i.i.i.i5.i6 = phi i64 [ %i.t, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.1.i.i.i.i.i.i.i5.i6
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef readonly align 8 dereferenceable(72) %i.x) #44
          to label %bb.e unwind label %bb.g, !noalias !20425

bb.g:                                             ; preds = %.lr.ph7
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20434
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20425
  unreachable

bb.i:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #44
          to label %.body unwind label %bb.h, !noalias !20425

.body:                                            ; preds = %bb.e, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.v, %bb.f ], [ %i.v, %bb.e ]
  %.val = load ptr, ptr %i.c, align 8, !nonnull !35, !noundef !35
  %.val3 = load i64, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val, i64 %.val3) #44
          to label %bb.k unwind label %bb.j

.loopexit:                                        ; preds = %bb.d, %bb.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.thread.i, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5cbCQMMIObr_10typst_eval.exit.lr.ph.split.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20425
  %i.ab = load ptr, ptr %i.c, align 8, !nonnull !35, !noundef !35
  %i.ac = load i64, ptr %i.d, align 8, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = insertvalue { ptr, i64 } poison, ptr %i.ab, 0
  %i.ae = insertvalue { ptr, i64 } %i.ad, i64 %i.ac, 1
  ret { ptr, i64 } %i.ae

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceBa_(i64 noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [120 x i8], align 8 ; 6 uses
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 152) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engines_1__12___ComemoCallNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtNtB4t_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6T_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !inline_history !20435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engines_1__12___ComemoCallNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtNtB4t_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6T_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engines_1__12___ComemoCallNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtNtB4t_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6T_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = cmpxchg weak ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 0, i64 8 acquire monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !37

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engines_1__12___ComemoCallNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtNtB4t_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6T_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.i = call noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 undef, i32 noundef -1), !inline_history !20436 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engines_1__12___ComemoCallNtNvNtNtB4t_13introspection12introspector1__12___ComemoCallNtNvNtNtB4t_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6T_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 64), align 8, !noalias !20505, !noundef !35 ; 3 uses
  %i.k = icmp ult i64 %i.j, 115292150460684698
  call void @llvm.assume(i1 %i.k)
  %.not24.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not24.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engines_1__12___ComemoCallNtNvNtNtB2g_13introspection12introspector1__12___ComemoCallNtNvNtNtB2g_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4G_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B5u_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.sroa.02.023.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.t, %bb.y ] ; 7 uses
  %i.t = add nuw nsw i64 %.sroa.02.023.i.i.i.i, 1 ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 64), align 8, !noalias !20505, !noundef !35 ; 2 uses
  %i.v = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 56), align 8, !noalias !20505, !nonnull !35, !noundef !35
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !range !42, !noalias !20505, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.y, 2
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.023.i.i.i.i, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #47
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !20506)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !20507, !noalias !20505, !noundef !35
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !alias.scope !20507, !noalias !20505
  %1 = icmp ule i64 %i.ab, %0                     ; 2 uses
  %.not24.i.i.i.i.i = icmp eq i64 %i.y, 0
  %or.cond.not.i.i.i.i.i = or i1 %.not24.i.i.i.i.i, %1
  br i1 %or.cond.not.i.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20506, !noalias !20505
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.3.06.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 3 uses
  %.val3.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 24), align 8, !noalias !20508, !noundef !35
  %i.ae = icmp ult i64 %.sroa.3.06.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %.val2.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 16), align 8, !noalias !20508, !nonnull !35, !noundef !35
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %.val2.i.i.i.i.i, i64 %.sroa.3.06.i.i.i.i.i ; 6 uses
  %i.ag = load i64, ptr %i.af, align 16, !range !42, !noalias !20509, !noundef !35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, !prof !40

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #47
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

.noexc2.i.i:                                      ; preds = %bb.k
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ai = load i64, ptr %i.ah, align 16, !noalias !20508, !noundef !35 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !20508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20508
  call void @llvm.experimental.noalias.scope.decl(metadata !20510)
  call void @llvm.experimental.noalias.scope.decl(metadata !20511)
  call void @llvm.experimental.noalias.scope.decl(metadata !20512)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 40), align 8, !alias.scope !20513, !noalias !20508, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 16, !noalias !20514 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 120, i1 false), !noalias !20514
  store i64 2, ptr %i.af, align 16, !noalias !20514
  store i64 %i.am, ptr %i.ak, align 8, !noalias !20514
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !20514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !20515
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 32), align 8, !alias.scope !20513, !noalias !20508, !noundef !35
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 32), align 8, !alias.scope !20513, !noalias !20508
  store i64 %.sroa.3.06.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 40), align 8, !alias.scope !20513, !noalias !20508
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !20510, !noalias !20508
  %i.ap = load i8, ptr %i.l, align 16, !range !50, !alias.scope !20516, !noalias !20508, !noundef !35
  switch i8 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i [
    i8 2, label %bb.n
    i8 3, label %bb.o
  ]

bb.n:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

bb.o:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.aq = load i64, ptr %i.m, align 16, !range !51, !alias.scope !20517, !noalias !20508, !noundef !35 ; 3 uses
  %i.ar = icmp ne i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nsw i64 %i.aq, -11
  %i.at = icmp samesign ugt i64 %i.aq, 10
  %i.au = select i1 %i.at, i64 %i.as, i64 5
  switch i64 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i [
    i64 0, label %bb.p
    i64 1, label %bb.p
    i64 2, label %bb.p
    i64 5, label %.sink.split.i.i.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %bb.p ], [ %i.m, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o
  br label %.sink.split.i.i.i.i.i.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.o, %bb.n, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20508
  %i.av = trunc nuw i64 %i.ag to i1
  br i1 %i.av, label %bb.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.q:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engines_1__12___ComemoCallNtNvNtNtB1O_13introspection12introspector1__12___ComemoCallNtNvNtNtB1O_11foundations7context1__12___ComemoCalluuuuEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ax = add i64 %i.ai, -1
  store i64 %i.ax, ptr %i.aw, align 16, !noalias !20508
  br label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engines_1__12___ComemoCallNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.q, %bb.h
  br i1 %1, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20505
  call void @llvm.experimental.noalias.scope.decl(metadata !20518)
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 64), align 8, !noalias !20519, !noundef !35
  %i.az = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.ay
  br i1 %i.az, label %bb.s, label %.loopexit.i.i.invoke.i.i

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 56), align 8, !noalias !20519, !nonnull !35, !noundef !35
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 80), align 8, !noalias !20519, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !20519 ; 2 uses
  %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, i64 72, i1 false), !noalias !20519
  store i64 2, ptr %i.bb, align 8, !noalias !20519
  store i64 %i.bc, ptr %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20519
  %.not.i.i5.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 2
  br i1 %.not.i.i5.i.i.i.i, label %bb.t, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engines_1__12___ComemoCallNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtNtB2f_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4F_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

.loopexit.i.i.invoke.i.i:                         ; preds = %bb.r, %bb.t, %bb.m
  %i.bd = phi ptr [ @121, %bb.m ], [ @34, %bb.t ], [ @34, %bb.r ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd) #47
          to label %.loopexit.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

.loopexit.i.i.cont.i.i:                           ; preds = %.loopexit.i.i.invoke.i.i
  unreachable

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engines_1__12___ComemoCallNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtNtB2f_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4F_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20505
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 72), align 8, !noalias !20519, !noundef !35
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 72), align 8, !noalias !20519
  store i64 %.sroa.02.023.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 80), align 8, !noalias !20519
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !20518, !noalias !20505
  call void @llvm.experimental.noalias.scope.decl(metadata !20520)
  call void @llvm.experimental.noalias.scope.decl(metadata !20521)
  %i.bg = load i64, ptr %i.p, align 8, !range !39, !alias.scope !20522, !noalias !20505, !noundef !35
  %.not.i.i.i6.i.i.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i.i6.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engines_1__12___ComemoCallNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtNtB2f_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4F_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engines_1__12___ComemoCallNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB4H_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.w, !noalias !20505, !inline_history !20472

bb.v:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engines_1__12___ComemoCallNtNvNtNtB2f_13introspection12introspector1__12___ComemoCallNtNvNtNtB2f_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4F_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !20522, !noalias !20505, !nonnull !35, !noundef !35
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !20522, !noalias !20505
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engines_1__12___ComemoCallNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB4H_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.w, !noalias !20523, !inline_history !20472

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB20_6engines_1__12___ComemoCallNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtNtB20_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #44
          to label %.body.i.i unwind label %bb.x, !noalias !20505, !inline_history !20472

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20505, !inline_history !20472
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engines_1__12___ComemoCallNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB4H_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB20_6engines_1__12___ComemoCallNtNvNtNtB20_13introspection12introspector1__12___ComemoCallNtNvNtNtB20_11foundations7context1__12___ComemoCalluuuuEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20441

.noexc7.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engines_1__12___ComemoCallNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB4H_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20505
  br label %bb.y

bb.y:                                             ; preds = %.noexc7.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %bb.f
  %exitcond.not.i.i.i.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engines_1__12___ComemoCallNtNvNtNtB2g_13introspection12introspector1__12___ComemoCallNtNvNtNtB2g_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4G_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B5u_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.e

_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engines_1__12___ComemoCallNtNvNtNtB2g_13introspection12introspector1__12___ComemoCallNtNvNtNtB2g_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4G_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B5u_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.y, %bb.d
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 120), align 8, !noalias !20524, !nonnull !35, !noundef !35 ; 6 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 128), align 8, !noalias !20524, !noundef !35
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 144), align 8, !noalias !20524, !noundef !35 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engines_1__12___ComemoCallNtNvNtNtB3j_13introspection12introspector1__12___ComemoCallNtNvNtNtB3j_11foundations7context1__12___ComemoCalluuuuEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5J_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B6A_INtB6A_9CacheDataB2J_B73_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engines_1__12___ComemoCallNtNvNtNtB2g_13introspection12introspector1__12___ComemoCallNtNvNtNtB2g_11foundations7context1__12___ComemoCalluuuuEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4G_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B5u_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.val3.i.i2.i.i.i = load <16 x i8>, ptr %i.bj, align 16, !noalias !20525
  %i.bn = icmp sgt <16 x i8> %.val3.i.i2.i.i.i, splat (i8 -1)
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = ptrtoint ptr %i.bj to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %.lr.ph.i1.i.i.i
  %i.br = phi i64 [ %i.bl, %.lr.ph.i1.i.i.i ], [ %i.dj, %bb.ad ] ; 3 uses
  %.sroa.104.015.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i1.i.i.i ], [ %i.cd, %bb.ad ]
  %.sroa.02.014.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i1.i.i.i ], [ %.sroa.02.1.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.6.013.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i1.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.83.012.i.i.i.i = phi i16 [ %i.bo, %.lr.ph.i1.i.i.i ], [ %i.ca, %bb.ad ] ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i16 %.sroa.83.012.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

.lr.ph.i.i5.i.i.i:                                ; preds = %bb.z, %.lr.ph.i.i5.i.i.i
  %i.bs = phi ptr [ %i.bw, %.lr.ph.i.i5.i.i.i ], [ %.sroa.6.013.i.i.i.i, %bb.z ] ; 2 uses
  %i.bt = phi ptr [ %i.bv, %.lr.ph.i.i5.i.i.i ], [ %.sroa.02.014.i.i.i.i, %bb.z ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !20526
  %i.bu = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -768 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bu to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.lr.ph.i.i5.i.i.i, %bb.z
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.013.i.i.i.i, %bb.z ], [ %i.bw, %.lr.ph.i.i5.i.i.i ]
  %.sroa.02.1.i.i.i.i = phi ptr [ %.sroa.02.014.i.i.i.i, %bb.z ], [ %i.bv, %.lr.ph.i.i5.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.83.012.i.i.i.i, %bb.z ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i5.i.i.i ] ; 3 uses
  %i.bx = add i16 %.lcssa.i.i.i.i.i, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.lcssa.i.i.i.i.i
  %i.cb = sub nsw i64 0, %i.bz
  %i.cc = getelementptr inbounds [48 x i8], ptr %.sroa.02.1.i.i.i.i, i64 %i.cb ; 2 uses
  %i.cd = add i64 %.sroa.104.015.i.i.i.i, -1      ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %.val5.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !20524, !noundef !35 ; 4 uses
  %i.cf = icmp sgt i64 %.val5.i.i.i.i, -1
  br i1 %i.cf, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.cg = xor i64 %.val5.i.i.i.i, -1              ; 2 uses
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 64), align 8, !noalias !20524, !noundef !35
  %i.ci = icmp ugt i64 %i.ch, %i.cg
  br i1 %i.ci, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

bb.ab:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 24), align 8, !noalias !20524, !noundef !35
  %i.ck = icmp ult i64 %.val5.i.i.i.i, %i.cj
  br i1 %i.ck, label %.split.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ab
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 16), align 8, !noalias !20524, !nonnull !35, !noundef !35
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.cl, i64 %.val5.i.i.i.i
  %i.cn = load i64, ptr %i.cm, align 16, !range !42, !noalias !20524, !noundef !35
  %.not10.i.i.i.i = icmp eq i64 %i.cn, 2
  br i1 %.not10.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ad

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.aa
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 56), align 8, !noalias !20524, !nonnull !35, !noundef !35
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cg
  %i.cq = load i64, ptr %i.cp, align 8, !range !42, !noalias !20524, !noundef !35
  %.not.i4.i.i.i = icmp eq i64 %i.cq, 2
  br i1 %.not.i4.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ad

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i, %bb.ab, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20527)
  call void @llvm.experimental.noalias.scope.decl(metadata !20528)
  %i.cr = ptrtoint ptr %i.cc to i64
  %i.cs = sub i64 %i.bq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 48                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20529)
  %i.cu = add nsw i64 %i.ct, -16
  %i.cv = and i64 %i.cu, %i.bk
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !20530
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !20531
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i, splat (i8 -1)
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cy, i1 false)
  %i.dd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 false)
  %narrow.i.i.i.i.i.i.i = add nuw nsw i16 %i.dd, %i.dc
  %i.de = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i, 15
  br i1 %i.de, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 136), align 8, !alias.scope !20532, !noalias !20524, !noundef !35
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 136), align 8, !alias.scope !20532, !noalias !20524
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.ac, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ -1, %bb.ac ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.cz, align 1, !noalias !20533
  %i.dh = getelementptr i8, ptr %i.cw, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.dh, align 1, !noalias !20533
  %i.di = add i64 %i.br, -1                       ; 2 uses
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 144), align 8, !alias.scope !20532, !noalias !20524
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i
  %i.dj = phi i64 [ %i.br, %.split.i.i.i.i ], [ %i.br, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %i.di, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ]
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engines_1__12___ComemoCallNtNvNtNtB3j_13introspection12introspector1__12___ComemoCallNtNvNtNtB3j_11foundations7context1__12___ComemoCalluuuuEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5J_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B6A_INtB6A_9CacheDataB2J_B73_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.z
end_hunk_7
begin_hunk_8_@_RNvYNCNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceBa_:bb.a
  %.not.i.i29.i.i.i = icmp eq i16 %.cast.i.i28.i.i.i, 0
  br i1 %.not.i.i29.i.i.i, label %.lr.ph.i.i26.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.lr.ph.i.i26.i.i.i, %bb.ae
  %.sroa.6.1.i15.i.i.i = phi ptr [ %.sroa.6.013.i12.i.i.i, %bb.ae ], [ %i.dy, %.lr.ph.i.i26.i.i.i ]
  %.sroa.02.1.i16.i.i.i = phi ptr [ %.sroa.02.014.i11.i.i.i, %bb.ae ], [ %i.dx, %.lr.ph.i.i26.i.i.i ] ; 2 uses
  %.lcssa.i.i17.i.i.i = phi i16 [ %.sroa.83.012.i13.i.i.i, %bb.ae ], [ %.cast.i.i28.i.i.i, %.lr.ph.i.i26.i.i.i ] ; 3 uses
  %i.dz = add i16 %.lcssa.i.i17.i.i.i, -1
  %i.ea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i17.i.i.i, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  %i.ec = and i16 %i.dz, %.lcssa.i.i17.i.i.i
  %i.ed = sub nsw i64 0, %i.eb
  %i.ee = getelementptr inbounds [32 x i8], ptr %.sroa.02.1.i16.i.i.i, i64 %i.ed ; 2 uses
  %i.ef = add i64 %.sroa.104.015.i10.i.i.i, -1    ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -16
  %.val5.i18.i.i.i = load i64, ptr %i.eg, align 8, !noalias !20534, !noundef !35 ; 4 uses
  %i.eh = icmp sgt i64 %.val5.i18.i.i.i, -1
  br i1 %i.eh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ei = xor i64 %.val5.i18.i.i.i, -1            ; 2 uses
  %i.ej = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 64), align 8, !noalias !20534, !noundef !35
  %i.ek = icmp ugt i64 %i.ej, %i.ei
  br i1 %i.ek, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

bb.ag:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.el = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 24), align 8, !noalias !20534, !noundef !35
  %i.em = icmp ult i64 %.val5.i18.i.i.i, %i.el
  br i1 %i.em, label %.split.i24.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

.split.i24.i.i.i:                                 ; preds = %bb.ag
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 16), align 8, !noalias !20534, !nonnull !35, !noundef !35
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr %i.en, i64 %.val5.i18.i.i.i
  %i.ep = load i64, ptr %i.eo, align 16, !range !42, !noalias !20534, !noundef !35
  %.not10.i25.i.i.i = icmp eq i64 %i.ep, 2
  br i1 %.not10.i25.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ai

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.af
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 56), align 8, !noalias !20534, !nonnull !35, !noundef !35
  %i.er = getelementptr inbounds nuw [80 x i8], ptr %i.eq, i64 %i.ei
  %i.es = load i64, ptr %i.er, align 8, !range !42, !noalias !20534, !noundef !35
  %.not.i23.i.i.i = icmp eq i64 %i.es, 2
  br i1 %.not.i23.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ai

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i24.i.i.i, %bb.ag, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !20537)
  call void @llvm.experimental.noalias.scope.decl(metadata !20538)
  %i.et = ptrtoint ptr %i.ee to i64
  %i.eu = sub i64 %i.ds, %i.et
  %i.ev = ashr exact i64 %i.eu, 5                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20539)
  %i.ew = add nsw i64 %i.ev, -16
  %i.ex = and i64 %i.ew, %i.dm
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ex ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i19.i.i.i = load <16 x i8>, ptr %i.ey, align 1, !noalias !20540
  %i.ez = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i19.i.i.i, splat (i8 -1)
  %i.fa = bitcast <16 x i1> %i.ez to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ev ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i20.i.i.i = load <16 x i8>, ptr %i.fb, align 1, !noalias !20541
  %i.fc = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i20.i.i.i, splat (i8 -1)
  %i.fd = bitcast <16 x i1> %i.fc to i16
  %i.fe = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.fa, i1 false)
  %i.ff = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fd, i1 false)
  %narrow.i.i.i.i21.i.i.i = add nuw nsw i16 %i.ff, %i.fe
  %i.fg = icmp samesign ugt i16 %narrow.i.i.i.i21.i.i.i, 15
  br i1 %i.fg, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 104), align 8, !alias.scope !20542, !noalias !20534, !noundef !35
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 104), align 8, !alias.scope !20542, !noalias !20534
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.ah, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %.sroa.0.0.i.i.i.i22.i.i.i = phi i8 [ -1, %bb.ah ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i22.i.i.i, ptr %i.fb, align 1, !noalias !20543
  %i.fj = getelementptr i8, ptr %i.ey, i64 16
  store i8 %.sroa.0.0.i.i.i.i22.i.i.i, ptr %i.fj, align 1, !noalias !20543
  %i.fk = add i64 %i.dt, -1                       ; 2 uses
  store i64 %i.fk, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 112), align 8, !alias.scope !20542, !noalias !20534
  br label %bb.ai

bb.ai:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i24.i.i.i
  %i.fl = phi i64 [ %i.dt, %.split.i24.i.i.i ], [ %i.dt, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engines_1__12___ComemoCallNtNvNtNtB1p_13introspection12introspector1__12___ComemoCallNtNvNtNtB1p_11foundations7context1__12___ComemoCalluuuuEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3P_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4G_INtB4G_9CacheDataBP_B58_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %i.fk, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ]
  %i.fm = icmp eq i64 %i.ef, 0
  br i1 %i.fm, label %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engines_1__12___ComemoCallNtNvNtNtB1n_13introspection12introspector1__12___ComemoCallNtNvNtNtB1n_11foundations7context1__12___ComemoCalluuuuEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3N_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4E_INtB4E_9CacheDataBN_B56_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ae

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engines_1__12___ComemoCallNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB4H_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.loopexit.i.i.invoke.i.i, %bb.k, %bb.g
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.w
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bh, %bb.w ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fn = cmpxchg ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fn, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engines_1__12___ComemoCallNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtNtB3C_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB62_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.aj, !prof !37

bb.aj:                                            ; preds = %.body.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engines_1__12___ComemoCallNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtNtB3C_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB62_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.al, !inline_history !20436

_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engines_1__12___ComemoCallNtNvNtNtB1n_13introspection12introspector1__12___ComemoCallNtNvNtNtB1n_11foundations7context1__12___ComemoCalluuuuEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3N_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4E_INtB4E_9CacheDataBN_B56_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ai, %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engines_1__12___ComemoCallNtNvNtNtB3j_13introspection12introspector1__12___ComemoCallNtNvNtNtB3j_11foundations7context1__12___ComemoCalluuuuEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5J_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B6A_INtB6A_9CacheDataB2J_B73_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %i.fo = cmpxchg ptr @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i9.i.i = extractvalue { i64, i1 } %i.fo, 1
  br i1 %.sroa.18.0.in.i.i.i.i9.i.i, label %_RNCNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE00B7_.exit, label %bb.ak, !prof !37

bb.ak:                                            ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engines_1__12___ComemoCallNtNvNtNtB1n_13introspection12introspector1__12___ComemoCallNtNvNtNtB1n_11foundations7context1__12___ComemoCalluuuuEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3N_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4E_INtB4E_9CacheDataBN_B56_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE, i1 noundef zeroext false), !inline_history !20436
  br label %_RNCNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE00B7_.exit

bb.al:                                            ; preds = %bb.aj
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !inline_history !20436
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engines_1__12___ComemoCallNtNvNtNtB3C_13introspection12introspector1__12___ComemoCallNtNvNtNtB3C_11foundations7context1__12___ComemoCalluuuuEINtNtB4_6result6ResultNtNtB62_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.aj, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCNCNvNvCs5cbCQMMIObr_10typst_eval11eval_string7___CACHE00B7_.exit: ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs7_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engines_1__12___ComemoCallNtNvNtNtB1n_13introspection12introspector1__12___ComemoCallNtNvNtNtB1n_11foundations7context1__12___ComemoCalluuuuEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB3N_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B4E_INtB4E_9CacheDataBN_B56_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.ak
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceBa_(i64 noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 6 uses
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 152) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4t_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !inline_history !20544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4t_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4t_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = cmpxchg weak ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 0, i64 8 acquire monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !37

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4t_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.i = call noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 undef, i32 noundef -1), !inline_history !20545 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB4t_6engine1__12___ComemoCallNtNvB5j_s_1__12___ComemoCallNtNvB5j_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB4t_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4t_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 64), align 8, !noalias !20610, !noundef !35 ; 3 uses
  %i.k = icmp ult i64 %i.j, 115292150460684698
  call void @llvm.assume(i1 %i.k)
  %.not24.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not24.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engine1__12___ComemoCallNtNvB36_s_1__12___ComemoCallNtNvB36_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2g_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B4y_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %.sroa.02.023.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.q, %bb.w ] ; 7 uses
  %i.q = add nuw nsw i64 %.sroa.02.023.i.i.i.i, 1 ; 2 uses
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 64), align 8, !noalias !20610, !noundef !35 ; 2 uses
  %i.s = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 56), align 8, !noalias !20610, !nonnull !35, !noundef !35
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !range !42, !noalias !20610, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.v, 2
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.023.i.i.i.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #47
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20550

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !20611)
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !20612, !noalias !20610, !noundef !35
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr %i.w, align 8, !alias.scope !20612, !noalias !20610
  %1 = icmp ule i64 %i.y, %0                      ; 2 uses
  %.not24.i.i.i.i.i = icmp eq i64 %i.v, 0
  %or.cond.not.i.i.i.i.i = or i1 %.not24.i.i.i.i.i, %1
  br i1 %or.cond.not.i.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !20611, !noalias !20610
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.3.06.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 3 uses
  %.val3.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 24), align 8, !noalias !20613, !noundef !35
  %i.ab = icmp ult i64 %.sroa.3.06.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %.val2.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 16), align 8, !noalias !20613, !nonnull !35, !noundef !35
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %.val2.i.i.i.i.i, i64 %.sroa.3.06.i.i.i.i.i ; 6 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !42, !noalias !20614, !noundef !35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, !prof !40

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #47
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20550

.noexc2.i.i:                                      ; preds = %bb.k
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !noalias !20613, !noundef !35 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, 1
  br i1 %i.ag, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !20613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20613
  call void @llvm.experimental.noalias.scope.decl(metadata !20615)
  call void @llvm.experimental.noalias.scope.decl(metadata !20616)
  call void @llvm.experimental.noalias.scope.decl(metadata !20617)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 40), align 8, !alias.scope !20618, !noalias !20613, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !20619 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.ah, i64 96, i1 false), !noalias !20619
  store i64 2, ptr %i.ac, align 8, !noalias !20619
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !20619
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ah, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.i.i.i.i.i.i.i, i64 96, i1 false), !noalias !20619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.8.i.i.i.i.i.i.i, i64 96, i1 false), !noalias !20620
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 32), align 8, !alias.scope !20618, !noalias !20613, !noundef !35
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 32), align 8, !alias.scope !20618, !noalias !20613
  store i64 %.sroa.3.06.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 40), align 8, !alias.scope !20618, !noalias !20613
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %i.a, align 8, !alias.scope !20615, !noalias !20613
  %i.am = load i64, ptr %i.l, align 8, !range !69, !alias.scope !20621, !noalias !20613, !noundef !35 ; 2 uses
  %i.an = icmp ne i64 %i.am, 9
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i64 %i.am, 6
  br i1 %i.ao, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.n:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20550

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.n, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20613
  %i.ap = trunc nuw i64 %i.ad to i1
  br i1 %i.ap, label %bb.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.o:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1O_6engine1__12___ComemoCallNtNvB2E_s_1__12___ComemoCallNtNvB2E_s0_1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ar = add i64 %i.af, -1
  store i64 %i.ar, ptr %i.aq, align 8, !noalias !20613
  br label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1Q_6engine1__12___ComemoCallNtNvB2G_s_1__12___ComemoCallNtNvB2G_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.o, %bb.h
  br i1 %1, label %bb.w, label %bb.p

bb.p:                                             ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20610
  call void @llvm.experimental.noalias.scope.decl(metadata !20622)
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 64), align 8, !noalias !20623, !noundef !35
  %i.at = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.as
  br i1 %i.at, label %bb.q, label %.loopexit.i.i.invoke.i.i

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 56), align 8, !noalias !20623, !nonnull !35, !noundef !35
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.au, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 80), align 8, !noalias !20623, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.av, align 8, !noalias !20623 ; 2 uses
  %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, i64 72, i1 false), !noalias !20623
  store i64 2, ptr %i.av, align 8, !noalias !20623
  store i64 %i.aw, ptr %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20623
  %.not.i.i5.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 2
  br i1 %.not.i.i5.i.i.i.i, label %bb.r, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engine1__12___ComemoCallNtNvB35_s_1__12___ComemoCallNtNvB35_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2f_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

.loopexit.i.i.invoke.i.i:                         ; preds = %bb.p, %bb.r, %bb.m
  %i.ax = phi ptr [ @121, %bb.m ], [ @34, %bb.r ], [ @34, %bb.p ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #47
          to label %.loopexit.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20550

.loopexit.i.i.cont.i.i:                           ; preds = %.loopexit.i.i.invoke.i.i
  unreachable

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engine1__12___ComemoCallNtNvB35_s_1__12___ComemoCallNtNvB35_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2f_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20610
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 72), align 8, !noalias !20623, !noundef !35
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 72), align 8, !noalias !20623
  store i64 %.sroa.02.023.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 80), align 8, !noalias !20623
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !20622, !noalias !20610
  call void @llvm.experimental.noalias.scope.decl(metadata !20624)
  call void @llvm.experimental.noalias.scope.decl(metadata !20625)
  %i.ba = load i64, ptr %i.m, align 8, !range !42, !alias.scope !20626, !noalias !20610, !noundef !35
  %.not.i.i.i6.i.i.i.i = icmp eq i64 %i.ba, 2
  br i1 %.not.i.i.i6.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engine1__12___ComemoCallNtNvB35_s_1__12___ComemoCallNtNvB35_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2f_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module6ModuleECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engine1__12___ComemoCallNtNvB37_s_1__12___ComemoCallNtNvB37_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB2h_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.u, !noalias !20610, !inline_history !20577

bb.t:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2f_6engine1__12___ComemoCallNtNvB35_s_1__12___ComemoCallNtNvB35_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2f_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2f_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !20626, !noalias !20610, !nonnull !35, !noundef !35
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !20626, !noalias !20610
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engine1__12___ComemoCallNtNvB37_s_1__12___ComemoCallNtNvB37_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB2h_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.u, !noalias !20627, !inline_history !20577

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB20_6engine1__12___ComemoCallNtNvB2Q_s_1__12___ComemoCallNtNvB2Q_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #44
          to label %.body.i.i unwind label %bb.v, !noalias !20610, !inline_history !20577

bb.v:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20610, !inline_history !20577
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engine1__12___ComemoCallNtNvB37_s_1__12___ComemoCallNtNvB37_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB2h_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB20_6engine1__12___ComemoCallNtNvB2Q_s_1__12___ComemoCallNtNvB2Q_s0_1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p)
          to label %.noexc6.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20550

.noexc6.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engine1__12___ComemoCallNtNvB37_s_1__12___ComemoCallNtNvB37_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB2h_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20610
  br label %bb.w

bb.w:                                             ; preds = %.noexc6.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %bb.f
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %i.j
  br i1 %exitcond.not.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engine1__12___ComemoCallNtNvB36_s_1__12___ComemoCallNtNvB36_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2g_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B4y_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.e

_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engine1__12___ComemoCallNtNvB36_s_1__12___ComemoCallNtNvB36_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2g_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B4y_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.w, %bb.d
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 120), align 8, !noalias !20628, !nonnull !35, !noundef !35 ; 6 uses
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 128), align 8, !noalias !20628, !noundef !35
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 144), align 8, !noalias !20628, !noundef !35 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engine1__12___ComemoCallNtNvB49_s_1__12___ComemoCallNtNvB49_s0_1__12___ComemoCalluEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB3j_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5E_INtB5E_9CacheDataB2J_B67_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2g_6engine1__12___ComemoCallNtNvB36_s_1__12___ComemoCallNtNvB36_s0_1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB2g_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2g_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B4y_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.val3.i.i2.i.i.i = load <16 x i8>, ptr %i.bd, align 16, !noalias !20629
  %i.bh = icmp sgt <16 x i8> %.val3.i.i2.i.i.i, splat (i8 -1)
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = ptrtoint ptr %i.bd to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i1.i.i.i
  %i.bl = phi i64 [ %i.bf, %.lr.ph.i1.i.i.i ], [ %i.dd, %bb.ab ] ; 3 uses
  %.sroa.104.015.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i1.i.i.i ], [ %i.bx, %bb.ab ]
  %.sroa.02.014.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i1.i.i.i ], [ %.sroa.02.1.i.i.i.i, %bb.ab ] ; 2 uses
  %.sroa.6.013.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i1.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.ab ] ; 2 uses
  %.sroa.83.012.i.i.i.i = phi i16 [ %i.bi, %.lr.ph.i1.i.i.i ], [ %i.bu, %bb.ab ] ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i16 %.sroa.83.012.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

.lr.ph.i.i5.i.i.i:                                ; preds = %bb.x, %.lr.ph.i.i5.i.i.i
  %i.bm = phi ptr [ %i.bq, %.lr.ph.i.i5.i.i.i ], [ %.sroa.6.013.i.i.i.i, %bb.x ] ; 2 uses
  %i.bn = phi ptr [ %i.bp, %.lr.ph.i.i5.i.i.i ], [ %.sroa.02.014.i.i.i.i, %bb.x ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.bm, align 16, !noalias !20630
  %i.bo = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 -768 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bo to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.lr.ph.i.i5.i.i.i, %bb.x
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.013.i.i.i.i, %bb.x ], [ %i.bq, %.lr.ph.i.i5.i.i.i ]
  %.sroa.02.1.i.i.i.i = phi ptr [ %.sroa.02.014.i.i.i.i, %bb.x ], [ %i.bp, %.lr.ph.i.i5.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.83.012.i.i.i.i, %bb.x ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i5.i.i.i ] ; 3 uses
  %i.br = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = and i16 %i.br, %.lcssa.i.i.i.i.i
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [48 x i8], ptr %.sroa.02.1.i.i.i.i, i64 %i.bv ; 2 uses
  %i.bx = add i64 %.sroa.104.015.i.i.i.i, -1      ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %.val5.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !20628, !noundef !35 ; 4 uses
  %i.bz = icmp sgt i64 %.val5.i.i.i.i, -1
  br i1 %i.bz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ca = xor i64 %.val5.i.i.i.i, -1              ; 2 uses
  %i.cb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 64), align 8, !noalias !20628, !noundef !35
  %i.cc = icmp ugt i64 %i.cb, %i.ca
  br i1 %i.cc, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

bb.z:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.cd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 24), align 8, !noalias !20628, !noundef !35
  %i.ce = icmp ult i64 %.val5.i.i.i.i, %i.cd
  br i1 %i.ce, label %.split.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.z
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 16), align 8, !noalias !20628, !nonnull !35, !noundef !35
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cf, i64 %.val5.i.i.i.i
  %i.ch = load i64, ptr %i.cg, align 8, !range !42, !noalias !20628, !noundef !35
  %.not10.i.i.i.i = icmp eq i64 %i.ch, 2
  br i1 %.not10.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ab

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.y
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 56), align 8, !noalias !20628, !nonnull !35, !noundef !35
  %i.cj = getelementptr inbounds nuw [80 x i8], ptr %i.ci, i64 %i.ca
  %i.ck = load i64, ptr %i.cj, align 8, !range !42, !noalias !20628, !noundef !35
  %.not.i4.i.i.i = icmp eq i64 %i.ck, 2
  br i1 %.not.i4.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ab

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i, %bb.z, %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !20631)
  call void @llvm.experimental.noalias.scope.decl(metadata !20632)
  %i.cl = ptrtoint ptr %i.bw to i64
  %i.cm = sub i64 %i.bk, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 48                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20633)
  %i.co = add nsw i64 %i.cn, -16
  %i.cp = and i64 %i.co, %i.be
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cp ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cq, align 1, !noalias !20634
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cs = bitcast <16 x i1> %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cn ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ct, align 1, !noalias !20635
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cs, i1 false)
  %i.cx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 false)
  %narrow.i.i.i.i.i.i.i = add nuw nsw i16 %i.cx, %i.cw
  %i.cy = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i, 15
  br i1 %i.cy, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %i.cz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 136), align 8, !alias.scope !20636, !noalias !20628, !noundef !35
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 136), align 8, !alias.scope !20636, !noalias !20628
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.aa, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ -1, %bb.aa ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ct, align 1, !noalias !20637
  %i.db = getelementptr i8, ptr %i.cq, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.db, align 1, !noalias !20637
  %i.dc = add i64 %i.bl, -1                       ; 2 uses
  store i64 %i.dc, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 144), align 8, !alias.scope !20636, !noalias !20628
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i
  %i.dd = phi i64 [ %i.bl, %.split.i.i.i.i ], [ %i.bl, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %i.dc, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ]
  %i.de = icmp eq i64 %i.bx, 0
  br i1 %i.de, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engine1__12___ComemoCallNtNvB49_s_1__12___ComemoCallNtNvB49_s0_1__12___ComemoCalluEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB3j_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5E_INtB5E_9CacheDataB2J_B67_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.x
end_hunk_8
begin_hunk_9_@_RNvYNCNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceBa_:bb.a
_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.lr.ph.i.i26.i.i.i, %bb.ac
  %.sroa.6.1.i15.i.i.i = phi ptr [ %.sroa.6.013.i12.i.i.i, %bb.ac ], [ %i.ds, %.lr.ph.i.i26.i.i.i ]
  %.sroa.02.1.i16.i.i.i = phi ptr [ %.sroa.02.014.i11.i.i.i, %bb.ac ], [ %i.dr, %.lr.ph.i.i26.i.i.i ] ; 2 uses
  %.lcssa.i.i17.i.i.i = phi i16 [ %.sroa.83.012.i13.i.i.i, %bb.ac ], [ %.cast.i.i28.i.i.i, %.lr.ph.i.i26.i.i.i ] ; 3 uses
  %i.dt = add i16 %.lcssa.i.i17.i.i.i, -1
  %i.du = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i17.i.i.i, i1 true)
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = and i16 %i.dt, %.lcssa.i.i17.i.i.i
  %i.dx = sub nsw i64 0, %i.dv
  %i.dy = getelementptr inbounds [32 x i8], ptr %.sroa.02.1.i16.i.i.i, i64 %i.dx ; 2 uses
  %i.dz = add i64 %.sroa.104.015.i10.i.i.i, -1    ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 -16
  %.val5.i18.i.i.i = load i64, ptr %i.ea, align 8, !noalias !20638, !noundef !35 ; 4 uses
  %i.eb = icmp sgt i64 %.val5.i18.i.i.i, -1
  br i1 %i.eb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ec = xor i64 %.val5.i18.i.i.i, -1            ; 2 uses
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 64), align 8, !noalias !20638, !noundef !35
  %i.ee = icmp ugt i64 %i.ed, %i.ec
  br i1 %i.ee, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

bb.ae:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ef = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 24), align 8, !noalias !20638, !noundef !35
  %i.eg = icmp ult i64 %.val5.i18.i.i.i, %i.ef
  br i1 %i.eg, label %.split.i24.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

.split.i24.i.i.i:                                 ; preds = %bb.ae
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 16), align 8, !noalias !20638, !nonnull !35, !noundef !35
  %i.ei = getelementptr inbounds nuw [104 x i8], ptr %i.eh, i64 %.val5.i18.i.i.i
  %i.ej = load i64, ptr %i.ei, align 8, !range !42, !noalias !20638, !noundef !35
  %.not10.i25.i.i.i = icmp eq i64 %i.ej, 2
  br i1 %.not10.i25.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ag

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.ad
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 56), align 8, !noalias !20638, !nonnull !35, !noundef !35
  %i.el = getelementptr inbounds nuw [80 x i8], ptr %i.ek, i64 %i.ec
  %i.em = load i64, ptr %i.el, align 8, !range !42, !noalias !20638, !noundef !35
  %.not.i23.i.i.i = icmp eq i64 %i.em, 2
  br i1 %.not.i23.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ag

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i24.i.i.i, %bb.ae, %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !20641)
  call void @llvm.experimental.noalias.scope.decl(metadata !20642)
  %i.en = ptrtoint ptr %i.dy to i64
  %i.eo = sub i64 %i.dm, %i.en
  %i.ep = ashr exact i64 %i.eo, 5                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20643)
  %i.eq = add nsw i64 %i.ep, -16
  %i.er = and i64 %i.eq, %i.dg
  %i.es = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.er ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i19.i.i.i = load <16 x i8>, ptr %i.es, align 1, !noalias !20644
  %i.et = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i19.i.i.i, splat (i8 -1)
  %i.eu = bitcast <16 x i1> %i.et to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.ep ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i20.i.i.i = load <16 x i8>, ptr %i.ev, align 1, !noalias !20645
  %i.ew = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i20.i.i.i, splat (i8 -1)
  %i.ex = bitcast <16 x i1> %i.ew to i16
  %i.ey = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.eu, i1 false)
  %i.ez = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ex, i1 false)
  %narrow.i.i.i.i21.i.i.i = add nuw nsw i16 %i.ez, %i.ey
  %i.fa = icmp samesign ugt i16 %narrow.i.i.i.i21.i.i.i, 15
  br i1 %i.fa, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %i.fb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 104), align 8, !alias.scope !20646, !noalias !20638, !noundef !35
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 104), align 8, !alias.scope !20646, !noalias !20638
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.af, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %.sroa.0.0.i.i.i.i22.i.i.i = phi i8 [ -1, %bb.af ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i22.i.i.i, ptr %i.ev, align 1, !noalias !20647
  %i.fd = getelementptr i8, ptr %i.es, i64 16
  store i8 %.sroa.0.0.i.i.i.i22.i.i.i, ptr %i.fd, align 1, !noalias !20647
  %i.fe = add i64 %i.dn, -1                       ; 2 uses
  store i64 %i.fe, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 112), align 8, !alias.scope !20646, !noalias !20638
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i24.i.i.i
  %i.ff = phi i64 [ %i.dn, %.split.i24.i.i.i ], [ %i.dn, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1p_6engine1__12___ComemoCallNtNvB2f_s_1__12___ComemoCallNtNvB2f_s0_1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1p_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1p_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3K_INtB3K_9CacheDataBP_B4c_E5evict0Es1_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %i.fe, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableToNtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ]
  %i.fg = icmp eq i64 %i.dz, 0
  br i1 %i.fg, label %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engine1__12___ComemoCallNtNvB2d_s_1__12___ComemoCallNtNvB2d_s0_1__12___ComemoCalluEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1n_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3I_INtB3I_9CacheDataBN_B4a_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ac

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB2h_6engine1__12___ComemoCallNtNvB37_s_1__12___ComemoCallNtNvB37_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB2h_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.loopexit.i.i.invoke.i.i, %bb.k, %bb.g
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.u ], [ %lpad.loopexit.split-lp159, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fh = cmpxchg ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fh, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engine1__12___ComemoCallNtNvB4s_s_1__12___ComemoCallNtNvB4s_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB3C_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.ah, !prof !37

bb.ah:                                            ; preds = %.body.i.i
  invoke void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i1 noundef zeroext false)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engine1__12___ComemoCallNtNvB4s_s_1__12___ComemoCallNtNvB4s_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB3C_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.aj, !inline_history !20545

_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engine1__12___ComemoCallNtNvB2d_s_1__12___ComemoCallNtNvB2d_s0_1__12___ComemoCalluEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1n_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3I_INtB3I_9CacheDataBN_B4a_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ag, %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3j_6engine1__12___ComemoCallNtNvB49_s_1__12___ComemoCallNtNvB49_s0_1__12___ComemoCalluEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB3j_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3j_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5E_INtB5E_9CacheDataB2J_B67_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %i.fi = cmpxchg ptr @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i64 8, i64 0 release monotonic, align 8
  %.sroa.18.0.in.i.i.i.i8.i.i = extractvalue { i64, i1 } %i.fi, 1
  br i1 %.sroa.18.0.in.i.i.i.i8.i.i, label %_RNCNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE00B7_.exit, label %bb.ai, !prof !37

bb.ai:                                            ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engine1__12___ComemoCallNtNvB2d_s_1__12___ComemoCallNtNvB2d_s0_1__12___ComemoCalluEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1n_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3I_INtB3I_9CacheDataBN_B4a_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  call void @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE, i1 noundef zeroext false), !inline_history !20545
  br label %_RNCNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE00B7_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !inline_history !20545
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsbQmEUdn7Qi6_8lock_api6rwlock16RwLockWriteGuardNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB2o_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB3C_6engine1__12___ComemoCallNtNvB4s_s_1__12___ComemoCallNtNvB4s_s0_1__12___ComemoCalluEINtNtB4_6result6ResultNtNtNtB3C_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3C_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.ah, %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCNCNvNvCs5cbCQMMIObr_10typst_eval4eval7___CACHE00B7_.exit: ; preds = %_RINvMs0_NtCsloFShupyl5J_6comemo4treeINtB6_8CallTreeINtNvNtB8_5inputs4_1__9MultiCallNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtB1n_6engine1__12___ComemoCallNtNvB2d_s_1__12___ComemoCallNtNvB2d_s0_1__12___ComemoCalluEINtNtB8_7memoize10CacheEntryBN_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtB1n_11foundations6module6ModuleINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1n_4diag16SourceDiagnosticEEEE6retainNCNvMs_B3I_INtB3I_9CacheDataBN_B4a_E5evict0ECs5cbCQMMIObr_10typst_eval.exit.i.i, %bb.ai
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNCNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTjEE9call_onceBc_(i64 noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [120 x i8], align 8 ; 6 uses
  %i.a = alloca [128 x i8], align 16              ; 8 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 152) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4v_13introspection12introspector1__12___ComemoCallNtNvNtB4v_6engine1__12___ComemoCallNtNvB6i_s_1__12___ComemoCallNtNvB6i_s0_1__12___ComemoCallNtNvNtNtB4v_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB7O_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4v_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 152), i1 noundef zeroext true, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28), !inline_history !20648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4v_13introspection12introspector1__12___ComemoCallNtNvNtB4v_6engine1__12___ComemoCallNtNvB6i_s_1__12___ComemoCallNtNvB6i_s0_1__12___ComemoCallNtNvNtNtB4v_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB7O_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4v_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4v_13introspection12introspector1__12___ComemoCallNtNvNtB4v_6engine1__12___ComemoCallNtNvB6i_s_1__12___ComemoCallNtNvB6i_s0_1__12___ComemoCallNtNvNtNtB4v_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB7O_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4v_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = cmpxchg weak ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 0, i64 8 acquire monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !37

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4v_13introspection12introspector1__12___ComemoCallNtNvNtB4v_6engine1__12___ComemoCallNtNvB6i_s_1__12___ComemoCallNtNvB6i_s0_1__12___ComemoCallNtNvNtNtB4v_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB7O_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4v_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.i = call noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 undef, i32 noundef -1), !inline_history !20649 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB4v_13introspection12introspector1__12___ComemoCallNtNvNtB4v_6engine1__12___ComemoCallNtNvB6i_s_1__12___ComemoCallNtNvB6i_s0_1__12___ComemoCallNtNvNtNtB4v_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB7O_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB4v_4diag16SourceDiagnosticEEEEE5force0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 64), align 8, !noalias !20718, !noundef !35 ; 3 uses
  %i.k = icmp ult i64 %i.j, 115292150460684698
  call void @llvm.assume(i1 %i.k)
  %.not24.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not24.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2i_13introspection12introspector1__12___ComemoCallNtNvNtB2i_6engine1__12___ComemoCallNtNvB45_s_1__12___ComemoCallNtNvB45_s0_1__12___ComemoCallNtNvNtNtB2i_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5B_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2i_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B6m_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.sroa.02.023.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.t, %bb.y ] ; 7 uses
  %i.t = add nuw nsw i64 %.sroa.02.023.i.i.i.i, 1 ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 64), align 8, !noalias !20718, !noundef !35 ; 2 uses
  %i.v = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 56), align 8, !noalias !20718, !nonnull !35, !noundef !35
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !range !42, !noalias !20718, !noundef !35 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.y, 2
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.02.023.i.i.i.i, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #47
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !20719)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !20720, !noalias !20718, !noundef !35
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  store i64 %i.ab, ptr %i.z, align 8, !alias.scope !20720, !noalias !20718
  %1 = icmp ule i64 %i.ab, %0                     ; 2 uses
  %.not24.i.i.i.i.i = icmp eq i64 %i.y, 0
  %or.cond.not.i.i.i.i.i = or i1 %.not24.i.i.i.i.i, %1
  br i1 %or.cond.not.i.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !20719, !noalias !20718
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.3.06.i.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.al, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i ] ; 3 uses
  %.val3.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 24), align 8, !noalias !20721, !noundef !35
  %i.ae = icmp ult i64 %.sroa.3.06.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.ae, label %bb.j, label %bb.k, !prof !37

bb.j:                                             ; preds = %bb.i
  %.val2.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 16), align 8, !noalias !20721, !nonnull !35, !noundef !35
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %.val2.i.i.i.i.i, i64 %.sroa.3.06.i.i.i.i.i ; 6 uses
  %i.ag = load i64, ptr %i.af, align 16, !range !42, !noalias !20722, !noundef !35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ag, 2
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, !prof !40

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #47
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

.noexc2.i.i:                                      ; preds = %bb.k
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ai = load i64, ptr %i.ah, align 16, !noalias !20721, !noundef !35 ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %bb.l

bb.l:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !20721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20721
  call void @llvm.experimental.noalias.scope.decl(metadata !20723)
  call void @llvm.experimental.noalias.scope.decl(metadata !20724)
  call void @llvm.experimental.noalias.scope.decl(metadata !20725)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 40), align 8, !alias.scope !20726, !noalias !20721, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.af, align 16, !noalias !20727 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.ak, i64 120, i1 false), !noalias !20727
  store i64 2, ptr %i.af, align 16, !noalias !20727
  store i64 %i.am, ptr %i.ak, align 8, !noalias !20727
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !20727
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.8.i.i.i.i.i.i.i, i64 120, i1 false), !noalias !20728
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 32), align 8, !alias.scope !20726, !noalias !20721, !noundef !35
  %i.ao = add i64 %i.an, -1
  store i64 %i.ao, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 32), align 8, !alias.scope !20726, !noalias !20721
  store i64 %.sroa.3.06.i.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 40), align 8, !alias.scope !20726, !noalias !20721
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, ptr %i.a, align 16, !alias.scope !20723, !noalias !20721
  %i.ap = load i8, ptr %i.l, align 16, !range !52, !alias.scope !20729, !noalias !20721, !noundef !35
  switch i8 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i [
    i8 4, label %bb.n
    i8 6, label %bb.p
  ]

bb.n:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.aq = load i64, ptr %i.n, align 16, !range !51, !alias.scope !20730, !noalias !20721, !noundef !35 ; 3 uses
  %i.ar = icmp ne i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nsw i64 %i.aq, -11
  %i.at = icmp samesign ugt i64 %i.aq, 10
  %i.au = select i1 %i.at, i64 %i.as, i64 5
  switch i64 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i [
    i64 0, label %bb.o
    i64 1, label %bb.o
    i64 2, label %bb.o
    i64 5, label %.sink.split.i.i.i.i.i.i.i.i.i
  ]

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.o, %bb.n
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.o, %bb.o ], [ %i.n, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 16 dereferenceable(64) %.sink.i.i.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n
  br label %.sink.split.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNvNtCsdaEETE4DqmE_13typst_library6engines_1__15___ComemoVariantECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i: ; preds = %bb.p, %.sink.split.i.i.i.i.i.i.i.i.i, %bb.n, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20721
  %i.av = trunc nuw i64 %i.ag to i1
  br i1 %i.av, label %bb.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.q:                                             ; preds = %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1Q_13introspection12introspector1__12___ComemoCallNtNvNtB1Q_6engine1__12___ComemoCallNtNvB3D_s_1__12___ComemoCallNtNvB3D_s0_1__12___ComemoCallNtNvNtNtB1Q_11foundations7context1__12___ComemoCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %i.ax = add i64 %i.ai, -1
  store i64 %i.ax, ptr %i.aw, align 16, !noalias !20721
  br label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1S_13introspection12introspector1__12___ComemoCallNtNvNtB1S_6engine1__12___ComemoCallNtNvB3F_s_1__12___ComemoCallNtNvB3F_s0_1__12___ComemoCallNtNvNtNtB1S_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i.i, %bb.q, %bb.h
  br i1 %1, label %bb.y, label %bb.r

bb.r:                                             ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20718
  call void @llvm.experimental.noalias.scope.decl(metadata !20731)
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 64), align 8, !noalias !20732, !noundef !35
  %i.az = icmp ult i64 %.sroa.02.023.i.i.i.i, %i.ay
  br i1 %i.az, label %bb.s, label %.loopexit.i.i.invoke.i.i

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 56), align 8, !noalias !20732, !nonnull !35, !noundef !35
  %i.bb = getelementptr inbounds nuw [80 x i8], ptr %i.ba, i64 %.sroa.02.023.i.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  %i.bc = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 80), align 8, !noalias !20732, !noundef !35
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !20732 ; 2 uses
  %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, i64 72, i1 false), !noalias !20732
  store i64 2, ptr %i.bb, align 8, !noalias !20732
  store i64 %i.bc, ptr %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !20732
  %.not.i.i5.i.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 2
  br i1 %.not.i.i5.i.i.i.i, label %bb.t, label %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5A_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa.0.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  br label %.loopexit.i.i.invoke.i.i

.loopexit.i.i.invoke.i.i:                         ; preds = %bb.r, %bb.t, %bb.m
  %i.bd = phi ptr [ @121, %bb.m ], [ @34, %bb.t ], [ @34, %bb.r ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd) #47
          to label %.loopexit.i.i.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

.loopexit.i.i.cont.i.i:                           ; preds = %.loopexit.i.i.invoke.i.i
  unreachable

_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5A_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.i.i.i.i.i.i, i64 72, i1 false), !noalias !20718
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 72), align 8, !noalias !20732, !noundef !35
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 72), align 8, !noalias !20732
  store i64 %.sroa.02.023.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 80), align 8, !noalias !20732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  store i64 %.sroa.01.0.copyload.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !20731, !noalias !20718
  call void @llvm.experimental.noalias.scope.decl(metadata !20733)
  call void @llvm.experimental.noalias.scope.decl(metadata !20734)
  %i.bg = load i64, ptr %i.p, align 8, !range !39, !alias.scope !20735, !noalias !20718, !noundef !35
  %.not.i.i.i6.i.i.i.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i.i.i6.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5A_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCallNtNvNtNtB2j_11foundations7context1__12___ComemoCalluEINtNtB4_6result6ResultNtNtB5C_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2j_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.w, !noalias !20718, !inline_history !20685

bb.v:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBE_7memoize10CacheEntryINtNvNtBE_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2h_13introspection12introspector1__12___ComemoCallNtNvNtB2h_6engine1__12___ComemoCallNtNvB44_s_1__12___ComemoCallNtNvB44_s0_1__12___ComemoCallNtNvNtNtB2h_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5A_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2h_4diag16SourceDiagnosticEEEEE6removeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !20735, !noalias !20718, !nonnull !35, !noundef !35
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !20735, !noalias !20718
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEECs5cbCQMMIObr_10typst_eval(ptr nonnull %.val.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCallNtNvNtNtB2j_11foundations7context1__12___ComemoCalluEINtNtB4_6result6ResultNtNtB5C_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2j_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i unwind label %bb.w, !noalias !20736, !inline_history !20685

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB22_13introspection12introspector1__12___ComemoCallNtNvNtB22_6engine1__12___ComemoCallNtNvB3P_s_1__12___ComemoCallNtNvB3P_s0_1__12___ComemoCallNtNvNtNtB22_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #44
          to label %.body.i.i unwind label %bb.x, !noalias !20718, !inline_history !20685

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !20718, !inline_history !20685
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCallNtNvNtNtB2j_11foundations7context1__12___ComemoCalluEINtNtB4_6result6ResultNtNtB5C_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2j_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNvNtCsloFShupyl5J_6comemo5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB22_13introspection12introspector1__12___ComemoCallNtNvNtB22_6engine1__12___ComemoCallNtNvB3P_s_1__12___ComemoCallNtNvB3P_s0_1__12___ComemoCallNtNvNtNtB22_11foundations7context1__12___ComemoCalluEEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s)
          to label %.noexc7.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !20654

.noexc7.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2j_13introspection12introspector1__12___ComemoCallNtNvNtB2j_6engine1__12___ComemoCallNtNvB46_s_1__12___ComemoCallNtNvB46_s0_1__12___ComemoCallNtNvNtNtB2j_11foundations7context1__12___ComemoCalluEINtNtB4_6result6ResultNtNtB5C_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2j_4diag16SourceDiagnosticEEEEECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20718
  br label %bb.y

bb.y:                                             ; preds = %.noexc7.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %bb.f
  %exitcond.not.i.i.i.i = icmp eq i64 %i.t, %i.j
  br i1 %exitcond.not.i.i.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2i_13introspection12introspector1__12___ComemoCallNtNvNtB2i_6engine1__12___ComemoCallNtNvB45_s_1__12___ComemoCallNtNvB45_s0_1__12___ComemoCallNtNvNtNtB2i_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5B_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2i_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B6m_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.e

_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2i_13introspection12introspector1__12___ComemoCallNtNvNtB2i_6engine1__12___ComemoCallNtNvB45_s_1__12___ComemoCallNtNvB45_s0_1__12___ComemoCallNtNvNtNtB2i_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5B_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2i_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B6m_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.y, %bb.d
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 120), align 8, !noalias !20737, !nonnull !35, !noundef !35 ; 6 uses
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 128), align 8, !noalias !20737, !noundef !35
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 144), align 8, !noalias !20737, !noundef !35 ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3l_13introspection12introspector1__12___ComemoCallNtNvNtB3l_6engine1__12___ComemoCallNtNvB58_s_1__12___ComemoCallNtNvB58_s0_1__12___ComemoCallNtNvNtNtB3l_11foundations7context1__12___ComemoCalluEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6E_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3l_4diag16SourceDiagnosticEEEE6retainNCNvMs_B7s_INtB7s_9CacheDataB2J_B7V_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.lr.ph.i1.i.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB2i_13introspection12introspector1__12___ComemoCallNtNvNtB2i_6engine1__12___ComemoCallNtNvB45_s_1__12___ComemoCallNtNvB45_s0_1__12___ComemoCallNtNvNtNtB2i_11foundations7context1__12___ComemoCalluEINtNtCs3oUPovFnLWP_4core6result6ResultNtNtB5B_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB2i_4diag16SourceDiagnosticEEEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B6m_E5evict0E0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.val3.i.i2.i.i.i = load <16 x i8>, ptr %i.bj, align 16, !noalias !20738
  %i.bn = icmp sgt <16 x i8> %.val3.i.i2.i.i.i, splat (i8 -1)
  %i.bo = bitcast <16 x i1> %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = ptrtoint ptr %i.bj to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %.lr.ph.i1.i.i.i
  %i.br = phi i64 [ %i.bl, %.lr.ph.i1.i.i.i ], [ %i.dj, %bb.ad ] ; 3 uses
  %.sroa.104.015.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i1.i.i.i ], [ %i.cd, %bb.ad ]
  %.sroa.02.014.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i1.i.i.i ], [ %.sroa.02.1.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.6.013.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i1.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.ad ] ; 2 uses
  %.sroa.83.012.i.i.i.i = phi i16 [ %i.bo, %.lr.ph.i1.i.i.i ], [ %i.ca, %bb.ad ] ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i16 %.sroa.83.012.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

.lr.ph.i.i5.i.i.i:                                ; preds = %bb.z, %.lr.ph.i.i5.i.i.i
  %i.bs = phi ptr [ %i.bw, %.lr.ph.i.i5.i.i.i ], [ %.sroa.6.013.i.i.i.i, %bb.z ] ; 2 uses
  %i.bt = phi ptr [ %i.bv, %.lr.ph.i.i5.i.i.i ], [ %.sroa.02.014.i.i.i.i, %bb.z ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.bs, align 16, !noalias !20739
  %i.bu = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.bv = getelementptr inbounds i8, ptr %i.bt, i64 -768 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bu to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i5.i.i.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %.lr.ph.i.i5.i.i.i, %bb.z
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.013.i.i.i.i, %bb.z ], [ %i.bw, %.lr.ph.i.i5.i.i.i ]
  %.sroa.02.1.i.i.i.i = phi ptr [ %.sroa.02.014.i.i.i.i, %bb.z ], [ %i.bv, %.lr.ph.i.i5.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.83.012.i.i.i.i, %bb.z ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i5.i.i.i ] ; 3 uses
  %i.bx = add i16 %.lcssa.i.i.i.i.i, -1
  %i.by = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bz = zext nneg i16 %i.by to i64
  %i.ca = and i16 %i.bx, %.lcssa.i.i.i.i.i
  %i.cb = sub nsw i64 0, %i.bz
  %i.cc = getelementptr inbounds [48 x i8], ptr %.sroa.02.1.i.i.i.i, i64 %i.cb ; 2 uses
  %i.cd = add i64 %.sroa.104.015.i.i.i.i, -1      ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %.val5.i.i.i.i = load i64, ptr %i.ce, align 8, !noalias !20737, !noundef !35 ; 4 uses
  %i.cf = icmp sgt i64 %.val5.i.i.i.i, -1
  br i1 %i.cf, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.cg = xor i64 %.val5.i.i.i.i, -1              ; 2 uses
  %i.ch = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 64), align 8, !noalias !20737, !noundef !35
  %i.ci = icmp ugt i64 %i.ch, %i.cg
  br i1 %i.ci, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

bb.ab:                                            ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE9next_implKb0_ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.cj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 24), align 8, !noalias !20737, !noundef !35
  %i.ck = icmp ult i64 %.val5.i.i.i.i, %i.cj
  br i1 %i.ck, label %.split.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.ab
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 16), align 8, !noalias !20737, !nonnull !35, !noundef !35
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.cl, i64 %.val5.i.i.i.i
  %i.cn = load i64, ptr %i.cm, align 16, !range !42, !noalias !20737, !noundef !35
  %.not10.i.i.i.i = icmp eq i64 %i.cn, 2
  br i1 %.not10.i.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ad

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.aa
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 56), align 8, !noalias !20737, !nonnull !35, !noundef !35
  %i.cp = getelementptr inbounds nuw [80 x i8], ptr %i.co, i64 %i.cg
  %i.cq = load i64, ptr %i.cp, align 8, !range !42, !noalias !20737, !noundef !35
  %.not.i4.i.i.i = icmp eq i64 %i.cq, 2
  br i1 %.not.i4.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i, label %bb.ad

_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i: ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i, %bb.ab, %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !20740)
  call void @llvm.experimental.noalias.scope.decl(metadata !20741)
  %i.cr = ptrtoint ptr %i.cc to i64
  %i.cs = sub i64 %i.bq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 48                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20742)
  %i.cu = add nsw i64 %i.ct, -16
  %i.cv = and i64 %i.cu, %i.bk
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cw, align 1, !noalias !20743
  %i.cx = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cy = bitcast <16 x i1> %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ct ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !20744
  %i.da = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i.i.i, splat (i8 -1)
  %i.db = bitcast <16 x i1> %i.da to i16
  %i.dc = call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.cy, i1 false)
  %i.dd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 false)
  %narrow.i.i.i.i.i.i.i = add nuw nsw i16 %i.dd, %i.dc
  %i.de = icmp samesign ugt i16 %narrow.i.i.i.i.i.i.i, 15
  br i1 %i.de, label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %i.df = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 136), align 8, !alias.scope !20745, !noalias !20737, !noundef !35
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 136), align 8, !alias.scope !20745, !noalias !20737
  br label %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.ac, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ -1, %bb.ac ], [ -128, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.thread.i.i.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.cz, align 1, !noalias !20746
  %i.dh = getelementptr i8, ptr %i.cw, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.dh, align 1, !noalias !20746
  %i.di = add i64 %i.br, -1                       ; 2 uses
  store i64 %i.di, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5cbCQMMIObr_10typst_eval4call12eval_closure7___CACHE, i64 144), align 8, !alias.scope !20745, !noalias !20737
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %.split.i.i.i.i
  %i.dj = phi i64 [ %i.br, %.split.i.i.i.i ], [ %i.br, %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB1r_13introspection12introspector1__12___ComemoCallNtNvNtB1r_6engine1__12___ComemoCallNtNvB3e_s_1__12___ComemoCallNtNvB3e_s0_1__12___ComemoCallNtNvNtNtB1r_11foundations7context1__12___ComemoCalluEINtNtBa_7memoize10CacheEntryBP_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB4K_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1r_4diag16SourceDiagnosticEEEE6retainNCNvMs_B5y_INtB5y_9CacheDataBP_B60_E5evict0Es0_0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ], [ %i.di, %_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdEE5eraseCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i ]
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %_RINvMs0_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapTjoENtNtCsloFShupyl5J_6comemo4tree6NodeIdNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE6retainNCINvMs0_BU_INtBU_8CallTreeINtNvNtBW_5inputs8_1__9MultiCalluuNtNvCsdaEETE4DqmE_13typst_library1__12___ComemoCalluNtNvNtNtB3l_13introspection12introspector1__12___ComemoCallNtNvNtB3l_6engine1__12___ComemoCallNtNvB58_s_1__12___ComemoCallNtNvB58_s0_1__12___ComemoCallNtNvNtNtB3l_11foundations7context1__12___ComemoCalluEINtNtBW_7memoize10CacheEntryB2J_INtNtCs3oUPovFnLWP_4core6result6ResultNtNtB6E_5value5ValueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB3l_4diag16SourceDiagnosticEEEE6retainNCNvMs_B7s_INtB7s_9CacheDataB2J_B7V_E5evict0Es0_0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %bb.z
end_hunk_9

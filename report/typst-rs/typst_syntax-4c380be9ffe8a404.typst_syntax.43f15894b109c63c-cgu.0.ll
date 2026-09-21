Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax:bb.a
  %i.p = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  br i1 %.not.i.i.i5.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBG_3vec6EcoVecBC_EEECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !957
  %.not.i.i.i = icmp eq i64 %i.q, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBG_3vec6EcoVecBC_EEECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !957
  %i.r = getelementptr i8, ptr %i.d, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !957, !noundef !19 ; 2 uses
  %i.s = icmp ult i64 %.val.i.i.i.i, 1152921504606846976
  %i.t = shl i64 %.val.i.i.i.i, 4                 ; 2 uses
  %i.u = icmp ult i64 %i.t, 9223372036854775784
  %narrow.i.i.i.i.i = and i1 %i.s, %i.u
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !957
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.v = add nuw nsw i64 %i.t, 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %i.w, align 8, !noalias !957
  store i64 8, ptr %i.a, align 8, !noalias !957
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.v, ptr %i.x, align 8, !noalias !957
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef %.val1.i)
          to label %bb.h unwind label %bb.g, !noalias !957

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.i, !noalias !957

bb.h:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !957
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtBG_3vec6EcoVecBC_EEECs5PEMdK7bMAG_12typst_syntax.exit

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !957
  unreachable

common.resume.i:                                  ; preds = %bb.g, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !957
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionuENtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %0, align 8, !range !20, !noundef !19
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %.val.i = load ptr, ptr %i.d, align 8, !alias.scope !962 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23
  %.val1.i = load i8, ptr %i.e, align 1, !alias.scope !962, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.f = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.c
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !962
  %.not.i.i.i.i = icmp eq i64 %i.g, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !962
  %i.h = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !962, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !962
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.i = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.j, align 8, !noalias !962
  store i64 8, ptr %i.a, align 8, !noalias !962
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.k, align 8, !noalias !962
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !962
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtBG_5alloc6GlobalEEB1c_(ptr captures(address) %.0.val) unnamed_addr #7 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXs1d_NtCs1xwejQucwHj_5alloc2rcINtB6_4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !19
  %i.d = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.d, ptr %i.b, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1d_NtCs1xwejQucwHj_5alloc2rcINtB6_4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RNvXs1d_NtCs1xwejQucwHj_5alloc2rcINtB6_4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_.exit

_RNvXs1d_NtCs1xwejQucwHj_5alloc2rcINtB6_4WeakNtNtCs5PEMdK7bMAG_12typst_syntax4node10LinkedNodeRNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !966, !nonnull !19, !noundef !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !966, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.b, i64 noundef %i.d)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit unwind label %bb.b, !inline_history !965

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !19 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %.val2, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !19 ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit4, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit
  %i.i = shl nuw i64 %.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit4: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, %bb.d
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !19 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEBF_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.k) #59
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !969
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !33, !noundef !19 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !19 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit
  %i.p = mul nuw i64 %.val2, 56
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #60
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit6: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticEEB1j_.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringENtNtBG_5alloc6GlobalEEB1r_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !alias.scope !972, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !972
  br i1 %i.c, label %bb.b, label %bb.d, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !972, !nonnull !19, !noundef !19
  %i.f = load i64, ptr %0, align 8, !range !36, !alias.scope !972, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !972, !noundef !19
  %i.i = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !972 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBZ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #60, !noalias !972
  br label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBZ_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @556) #62, !noalias !972
  unreachable

_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB8_6string6StringENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBZ_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtBG_5alloc6GlobalEEB2a_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !alias.scope !975, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !975
  br i1 %i.c, label %bb.b, label %bb.d, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !975, !nonnull !19, !noundef !19
  %i.f = load i64, ptr %0, align 8, !range !36, !alias.scope !975, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !975, !noundef !19
  %i.i = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !975 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1I_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #60, !noalias !975
  br label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1I_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @556) #62, !noalias !975
  unreachable

_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerENtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1I_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperNtNtBG_5alloc6GlobalEEB1q_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !alias.scope !978, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !978
  br i1 %i.c, label %bb.b, label %bb.d, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !978, !nonnull !19, !noundef !19
  %i.f = load i64, ptr %0, align 8, !range !36, !alias.scope !978, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !978, !noundef !19
  %i.i = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !978 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #60, !noalias !978
  br label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @556) #62, !noalias !978
  unreachable

_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtBG_5alloc6GlobalEEB1q_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !alias.scope !981, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !981
  br i1 %i.c, label %bb.b, label %bb.d, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !981, !nonnull !19, !noundef !19
  %i.f = load i64, ptr %0, align 8, !range !36, !alias.scope !981, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !981, !noundef !19
  %i.i = tail call { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef %i.f, i64 noundef %i.h), !noalias !981 ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1        ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, i64 } %i.i, 0
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.l) #60, !noalias !981
  br label %_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @556) #62, !noalias !981
  unreachable

_RNvXs1n_NtCs1xwejQucwHj_5alloc4syncINtB6_15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeNtNtB8_5alloc6GlobalENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeNtNtBG_5alloc6GlobalEEB1q_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !20, !alias.scope !984, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !alias.scope !984
  br i1 %i.c, label %bb.b, label %bb.d, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !984, !nonnull !19, !noundef !19
  %i.f = load i64, ptr %0, align 8, !range !36, !alias.scope !984, !noundef !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !984, !noundef !19
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEEB1i_:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef %i.e)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i unwind label %bb.b, !noalias !1032, !inline_history !1027

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %i.a, align 8, !range !33, !alias.scope !1032, !noundef !19 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i64 %.val2.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1032, !inline_history !1028
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit.i.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %bb.a
  %.val.i.i = load i64, ptr %i.a, align 8, !range !33, !alias.scope !1032, !noundef !19 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEBF_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.j = shl nuw i64 %.val.i.i, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1032, !inline_history !1028
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1j_.exit.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeEBF_.exit: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_(ptr %.16.val, i8 %.31.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.31.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.16.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.16.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1035
  %.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1035
  %i.d = getelementptr i8, ptr %.16.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !1035, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !1035
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !noalias !1035
  store i64 8, ptr %i.a, align 8, !noalias !1035
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !1035
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1035
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBG_6string9EcoStringNtB1d_8DiagSpanEEEB1f_(ptr %.0.val, i64 %.8.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.d = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i: ; preds = %bb.a
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit.i, label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1R_8DiagSpanEENtNtNtB5_3ops4drop4Drop4drop0EB1T_.exit.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i = load i64, ptr %i.f, align 8, !noundef !19 ; 2 uses
  %i.g = icmp ult i64 %.val.i.i, 576460752303423488
  %i.h = shl nuw i64 %.val.i.i, 5
  %i.i = or disjoint i64 %i.h, 16                 ; 2 uses
  %i.j = icmp ult i64 %i.i, 9223372036854775799
  %narrow.i.i.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %narrow.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit.i, label %bb.b, !prof !22

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0EB1Q_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.k, align 8
  store i64 8, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.i, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  %i.m = icmp eq i64 %.8.val, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBF_8DiagSpanEEBH_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB7_6string9EcoStringNtBK_8DiagSpanEE4sizeBM_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val8.i.i = load ptr, ptr %i.r, align 8, !alias.scope !1045 ; 4 uses
  %i.s = getelementptr i8, ptr %i.p, i64 31
  %.val9.i.i = load i8, ptr %i.s, align 1, !alias.scope !1045, !noundef !19
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.t = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1046
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.u, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEEBG_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1046
  %i.v = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !1046, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1044

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
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
  %i.ac = add nuw nsw i64 %.sroa.0.1.i4.i, 1      ; 2 uses
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
  %narrow.i.not.i.i = icmp ugt i64 %.val.i.i, 384307168202282324
  br i1 %narrow.i.not.i.i, label %bb.b, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i, !prof !23

bb.b:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecTNtNtBN_6string9EcoStringIBw_NtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE8capacity0EB2i_.exit.i
  %i.g = mul nuw nsw i64 %.val.i.i, 24
  %i.h = add nuw nsw i64 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.i, align 8
  store i64 8, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  %i.k = icmp eq i64 %.8.val, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecTNtNtB7_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEE4sizeB1M_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.012.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.012.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.012.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1057 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 15
  %.val9.i.i = load i8, ptr %i.p, align 1, !alias.scope !1057, !noundef !19
  %.not.i.i.i.i.i.i = icmp sgt i8 %.val9.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val8.i.i, inttoptr (i64 16 to ptr)
  %i.q = getelementptr inbounds i8, ptr %.val8.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1058
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, 1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1058
  %i.s = getelementptr i8, ptr %.val8.i.i, i64 -8
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !1058, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, label %bb.e, !prof !22

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1056

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  %i.t = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.q, ptr %i.l, align 8, !noalias !1058
  store i64 8, ptr %i.b, align 8, !noalias !1058
  store i64 %i.t, ptr %i.m, align 8, !noalias !1058
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc10.i.i unwind label %.loopexit.i.i, !noalias !1056

.noexc10.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1058
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i.i: ; preds = %.noexc10.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.u = icmp eq i64 %i.o, %.8.val
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1H_.exit.i, label %bb.c

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
  %i.v = icmp eq i64 %i.o, %.8.val
  br i1 %i.v, label %.body.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i, %.lr.ph.i
  %.sroa.0.1.i4.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.z, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i4.i ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.0.1.i4.i, 1       ; 2 uses
  %.val.i10.i = load ptr, ptr %i.y, align 8, !alias.scope !1057 ; 4 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 15
  %.val7.i.i = load i8, ptr %i.aa, align 1, !alias.scope !1057, !noundef !19
  %.not.i.i.i.i.i = icmp sgt i8 %.val7.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i10.i) ], !noalias !1056
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %.val.i10.i, inttoptr (i64 16 to ptr)
  %i.ab = getelementptr inbounds i8, ptr %.val.i10.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i11.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %bb.h
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !1059
  %.not.i.i.i.i.i12.i = icmp eq i64 %i.ac, 1
  br i1 %.not.i.i.i.i.i12.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  fence acquire, !noalias !1056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1059
  %i.ad = getelementptr i8, ptr %.val.i10.i, i64 -8
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !noalias !1059, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i:                                         ; preds = %bb.i
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.val.i.i.i.i.i.i.i, 16
  store ptr %i.ab, ptr %i.w, align 8, !noalias !1059
  store i64 8, ptr %i.a, align 8, !noalias !1059
  store i64 %i.ae, ptr %i.x, align 8, !noalias !1059
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13.i:                                       ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1059
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_.exit.i: ; preds = %.noexc13.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.af = icmp eq i64 %i.z, %.8.val
  br i1 %i.af, label %.body.i, label %bb.g

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
  %i.ag = landingpad { ptr, i32 }
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit

_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskt5MLIAl8nl_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !1063
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !1063
  %.val2.i = load ptr, ptr %0, align 8, !alias.scope !1063, !nonnull !19, !align !29, !noundef !19 ; 9 uses
  %.0.val.fr.i.i = freeze ptr %.val.i             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !noalias !1063, !noundef !19 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.d, -1
  br i1 %.not4.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp eq ptr %.0.val.fr.i.i, null
  %i.e = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24 ; 4 uses
  br i1 %.not.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.0.03.us.i.i = phi i64 [ %i.f, %bb.c ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.f = add nuw i64 %.sroa.0.03.us.i.i, 1
  %i.g = load ptr, ptr %.val2.i, align 8, !noalias !1063, !nonnull !19, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0.03.us.i.i ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !1063, !noundef !19
  %i.j = icmp eq i8 %i.i, -128
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i.i
  %i.k = add i64 %.sroa.0.03.us.i.i, -16
  %i.l = load i64, ptr %i.c, align 8, !noalias !1063, !noundef !19
  %i.m = and i64 %i.l, %i.k
  store i8 -1, ptr %i.h, align 1, !noalias !1063
  %i.n = load ptr, ptr %.val2.i, align 8, !noalias !1063, !nonnull !19, !noundef !19
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i8 -1, ptr %i.p, align 1, !noalias !1063
  %i.q = load i64, ptr %i.e, align 8, !noalias !1063, !noundef !19
  %i.r = add i64 %i.q, -1
  store i64 %i.r, ptr %i.e, align 8, !noalias !1063
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i.i
  %exitcond6.not.i.i = icmp eq i64 %.sroa.0.03.us.i.i, %i.d
  br i1 %exitcond6.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.0.03.i.i = phi i64 [ %i.s, %bb.d ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.s = add nuw i64 %.sroa.0.03.i.i, 1
  %i.t = load ptr, ptr %.val2.i, align 8, !noalias !1063, !nonnull !19, !noundef !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.03.i.i ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !noalias !1063, !noundef !19
  %i.w = icmp eq i8 %i.v, -128
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %.sroa.0.03.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %.neg.i.i = xor i64 %.sroa.0.03.i.i, -1
  %i.x = add i64 %.sroa.0.03.i.i, -16
  %i.y = load i64, ptr %i.c, align 8, !noalias !1063, !noundef !19
  %i.z = and i64 %i.y, %i.x
  store i8 -1, ptr %i.u, align 1, !noalias !1063
  %i.aa = load ptr, ptr %.val2.i, align 8, !noalias !1063, !nonnull !19, !noundef !19
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 -1, ptr %i.ac, align 1, !noalias !1063
  %i.ad = load ptr, ptr %.val2.i, align 8, !noalias !1063, !nonnull !19, !noundef !19
  %.neg7.i.i = mul i64 %.val1.i, %.neg.i.i
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.neg7.i.i
  tail call void %.0.val.fr.i.i(ptr noundef nonnull %i.ae), !noalias !1063, !inline_history !1062
  %i.af = load i64, ptr %i.e, align 8, !noalias !1063, !noundef !19
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %i.e, align 8, !noalias !1063
  br label %bb.d

_RNvXs1_NtCskt5MLIAl8nl_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.ah = load i64, ptr %i.c, align 8, !noalias !1063, !noundef !19 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 8
  %i.aj = add i64 %i.ah, 1
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax6parser9MemoArenaEBF_:bb.a
  %i.aj = shl i64 %i.m, 7                         ; 2 uses
  %i.ak = add i64 %i.aj, 128                      ; 2 uses
  %i.al = add i64 %i.m, 17
  %i.am = add i64 %i.al, %i.ak                    ; 4 uses
  %i.an = icmp uge i64 %i.am, %i.ak
  %i.ao = icmp ult i64 %i.am, 9223372036854775793
  tail call void @llvm.assume(i1 %i.an)
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.am, 0
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB24_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %i.k, align 8, !alias.scope !1295, !nonnull !19, !noundef !19
  %i.ar = sub nuw nsw i64 -128, %i.aj
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !1295
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB24_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapjTINtNtNtB4_3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateENtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEEB24_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTjTINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtCs5PEMdK7bMAG_12typst_syntax6parser12PartialStateEEEB1Y_.exit.i.i.i.i.i, %bb.h
  ret void

bb.i:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 15
  %.val1 = load i8, ptr %i.b, align 1, !noundef !19
  %.not.i.i = icmp sgt i8 %.val1, -1
  br i1 %.not.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.not.i.i.i.i = icmp eq ptr %.val, inttoptr (i64 16 to ptr)
  %i.c = getelementptr inbounds i8, ptr %.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %.not.i.i.i = icmp eq i64 %i.d, 1
  br i1 %.not.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.val, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.e, align 8, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.f = add nuw nsw i64 %.val.i.i.i.i, 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.g, align 8
  store i64 8, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow7dynamic10DynamicVecECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit
  %.sroa.0.017 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.017, 1          ; 4 uses
  %i.g = load i8, ptr %i.e, align 8, !range !30, !alias.scope !1320, !noundef !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  switch i8 %i.g, label %default.unreachable34 [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.j
    i8 3, label %bb.c
  ]

default.unreachable34:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1321)
  call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1323, !nonnull !19, !noundef !19
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !1323
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire, !noalias !1323
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit unwind label %.loopexit, !inline_history !1308

bb.e:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1324 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 23
  %.val1.i = load i8, ptr %i.l, align 1, !alias.scope !1324, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.m = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.f
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1324
  %.not.i.i.i.i = icmp eq i64 %i.n, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1324
  %i.o = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !1324, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc12 unwind label %.loopexit.split-lp

.noexc12:                                         ; preds = %bb.g
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.p = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.m, ptr %i.c, align 8, !noalias !1324
  store i64 8, ptr %i.a, align 8, !noalias !1324
  store i64 %i.p, ptr %i.d, align 8, !noalias !1324
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1324
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

bb.h:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %i.q = load ptr, ptr %i.h, align 8, !alias.scope !1327, !nonnull !19, !noundef !19
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1327
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire, !noalias !1326
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit unwind label %.loopexit, !inline_history !1315

bb.j:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.t = load ptr, ptr %i.h, align 8, !alias.scope !1330, !nonnull !19, !noundef !19
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1330
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9ErrorNodeE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %bb.f, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %.noexc13, %bb.d, %bb.c
  %i.w = icmp eq i64 %i.f, %1
  br i1 %i.w, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_.exit, %bb.a
  ret void

bb.l:                                             ; preds = %.lr.ph43
  %i.x = add nuw nsw i64 %.sroa.0.141, 1          ; 2 uses
  %i.y = icmp eq i64 %i.x, %1
  br i1 %i.y, label %._crit_edge44, label %.lr.ph43

.loopexit:                                        ; preds = %bb.k, %bb.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = icmp eq i64 %i.f, %1
  br i1 %i.z, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.m, %bb.l
  %.sroa.0.141 = phi i64 [ %i.x, %bb.l ], [ %i.f, %bb.m ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.141
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #59
          to label %bb.l unwind label %bb.n

._crit_edge44:                                    ; preds = %bb.l, %bb.m
  resume { ptr, i32 } %lpad.phi

bb.n:                                             ; preds = %.lr.ph43
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit
  %.sroa.0.09 = phi i64 [ 0, %.lr.ph ], [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.09 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.09, 1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1333 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %.val1.i = load i8, ptr %i.g, align 1, !alias.scope !1333, !noundef !19
  %.not.i.i.i = icmp sgt i8 %.val1.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  %i.h = getelementptr inbounds i8, ptr %.val.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.c
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !1333
  %.not.i.i.i.i = icmp eq i64 %i.i, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1333
  %i.j = getelementptr i8, ptr %.val.i, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !1333, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.k = add nuw nsw i64 %.val.i.i.i.i.i, 16
  store ptr %i.h, ptr %i.c, align 8, !noalias !1333
  store i64 8, ptr %i.a, align 8, !noalias !1333
  store i64 %i.k, ptr %i.d, align 8, !noalias !1333
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1333
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.b, %bb.c, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %.noexc7
  %i.l = icmp eq i64 %i.f, %1
  br i1 %i.l, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph20
  %i.m = add nuw nsw i64 %.sroa.0.118, 1          ; 2 uses
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %._crit_edge21, label %.lr.ph20

.loopexit:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.o = icmp eq i64 %i.f, %1
  br i1 %i.o, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.f, %bb.e
  %.sroa.0.118 = phi i64 [ %i.m, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.118
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #59
          to label %bb.e unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %.lr.ph20
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1G_(ptr %.0.val, i8 %.15.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.not.i.i.i = icmp sgt i8 %.15.val, -1
  br i1 %.not.i.i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.not.i.i.i.i.i = icmp eq ptr %.0.val, inttoptr (i64 16 to ptr)
  %i.b = getelementptr inbounds i8, ptr %.0.val, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.b
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1336
  %.not.i.i.i.i = icmp eq i64 %i.c, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1336
  %i.d = getelementptr i8, ptr %.0.val, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !1336, !noundef !19 ; 2 uses
  %narrow.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, label %bb.c, !prof !22

bb.c:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  tail call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #58, !noalias !1336
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.e = add nuw nsw i64 %.val.i.i.i.i.i, 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.f, align 8, !noalias !1336
  store i64 8, ptr %i.a, align 8, !noalias !1336
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !1336
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !1336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1336
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.a, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindEBM_EB1c_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowNtNtB4_6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtBG_6string9EcoStringEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowTNtNtB4_6string9EcoStringINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEB1Q_(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVecTNtNtBG_6string9EcoStringINtNtB4_6option6OptionNtNtCs5PEMdK7bMAG_12typst_syntax4span8SubRangeEEEEB1Z_(ptr nonnull %0, i64 %1)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5PEMdK7bMAG_12typst_syntax(ptr noundef nonnull %0) unnamed_addr #10 {
bb.a:
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %0)
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #62
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB8_10SyntaxNode8traverse14recursive_stepNCNvMs_B8_BH_19errors_and_warnings0EBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [56 x i8], align 8                ; 10 uses
  %.val = load ptr, ptr %1, align 8               ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !range !31, !alias.scope !1351 ; 4 uses
  %.sroa.58.0..sroa_idx9.i11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %.val2, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i, %bb.a
  %.sroa.01.0.i = phi ptr [ %0, %bb.a ], [ %i.cd, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node16SyntaxDiagnosticE8push_mutBJ_.exit17.i ] ; 4 uses
  %i.o = load i8, ptr %.sroa.01.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %._crit_edge
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !19, !noundef !19 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.s = load i8, ptr %i.r, align 8, !range !20, !noalias !1351, !noundef !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 65
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noalias !1351, !noundef !19
  %i.v = or i8 %i.u, %i.s
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %._crit_edge, label %_RNCNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode19errors_and_warnings0B8_.exit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1351
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !19, !noundef !19 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1354
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 63
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1353, !noalias !1355, !noundef !19
  %.not.i.i = icmp sgt i8 %i.ab, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1353, !noalias !1355, !nonnull !19, !noundef !19 ; 4 uses
  %.val21.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1353, !noalias !1355 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %.val.i.i, i64 -16
  %i.ae = atomicrmw add ptr %i.ad, i64 1 monotonic, align 8, !noalias !1354
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5PEMdK7bMAG_12typst_syntax.exit.i.i, !prof !23

end_hunk_2
begin_hunk_3_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a
  br i1 %i.bem, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i84, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i: ; preds = %bb.kn
  %i.ben = zext nneg i8 %i.beb to i32
  br label %bb.kp

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i84: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i80
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bdz, i64 2
  %i.bep = icmp samesign ne i64 %i.bdy, 2
  tail call void @llvm.assume(i1 %i.bep)
  %i.beq = load i8, ptr %i.beo, align 1, !alias.scope !2914, !noalias !2915, !noundef !19
  %i.ber = shl nuw nsw i32 %i.bek, 6
  %i.bes = and i8 %i.beq, 63
  %i.bet = zext nneg i8 %i.bes to i32
  %i.beu = or disjoint i32 %i.ber, %i.bet         ; 2 uses
  %i.bev = shl nuw nsw i32 %i.bef, 12
  %i.bew = or disjoint i32 %i.beu, %i.bev
  %i.bex = icmp samesign ugt i8 %i.beb, -17
  br i1 %i.bex, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i85, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i85: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i84
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bdz, i64 3
  %i.bez = icmp samesign ne i64 %i.bdy, 3
  tail call void @llvm.assume(i1 %i.bez)
  %i.bfa = load i8, ptr %i.bey, align 1, !alias.scope !2914, !noalias !2915, !noundef !19
  %i.bfb = shl nuw nsw i32 %i.bef, 18
  %i.bfc = and i32 %i.bfb, 1835008
  %i.bfd = shl nuw nsw i32 %i.beu, 6
  %i.bfe = and i8 %i.bfa, 63
  %i.bff = zext nneg i8 %i.bfe to i32
  %i.bfg = or disjoint i32 %i.bfd, %i.bff
  %i.bfh = or disjoint i32 %i.bfg, %i.bfc
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i85, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i84, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i80
  %.sroa.4.0.i.i.i.i82 = phi i32 [ %i.bew, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i84 ], [ %i.bel, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i80 ], [ %i.bfh, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i85 ] ; 6 uses
  %i.bfi = icmp samesign ult i32 %.sroa.4.0.i.i.i.i82, 128
  br i1 %i.bfi, label %bb.kp, label %bb.ko

bb.ko:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81
  %i.bfj = lshr i32 %.sroa.4.0.i.i.i.i82, 3
  %i.bfk = zext nneg i32 %i.bfj to i64            ; 2 uses
  %i.bfl = icmp samesign ult i32 %.sroa.4.0.i.i.i.i82, 918016
  %i.bfm = lshr i64 %i.bfk, 6
  %i.bfn = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables13TRIE_CONTINUE, i64 %i.bfm
  %.sroa.01.0.i.i.i.i.i.i.i.i = select i1 %i.bfl, ptr %i.bfn, ptr @38
  %i.bfo = load i8, ptr %.sroa.01.0.i.i.i.i.i.i.i.i, align 1, !noalias !2916, !noundef !19
  %i.bfp = zext i8 %i.bfo to i64
  %i.bfq = shl nuw nsw i64 %i.bfp, 5
  %i.bfr = and i64 %i.bfk, 63
  %i.bfs = add nuw nsw i64 %i.bfq, %i.bfr         ; 2 uses
  %i.bft = icmp samesign ult i64 %i.bfs, 7904
  tail call void @llvm.assume(i1 %i.bft)
  %i.bfu = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables4LEAF, i64 %i.bfs
  %i.bfv = load i8, ptr %i.bfu, align 1, !noalias !2916, !noundef !19
  %i.bfw = trunc i32 %.sroa.4.0.i.i.i.i82 to i8
  %i.bfx = and i8 %i.bfw, 7
  %i.bfy = lshr i8 %i.bfv, %i.bfx
  %i.bfz = freeze i8 %i.bfy
  br label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i

bb.kp:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i
  %.sroa.4.0.i11.i.i.i = phi i32 [ %i.ben, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.4.0.i.i.i.i82, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i81 ] ; 2 uses
  %i.bga = zext nneg i32 %.sroa.4.0.i11.i.i.i to i64
  %i.bgb = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables14ASCII_CONTINUE, i64 %i.bga
  %i.bgc = load i8, ptr %i.bgb, align 1, !range !20, !noalias !2916, !noundef !19
  br label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i

_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i: ; preds = %bb.kp, %bb.ko
  %.sroa.4.0.i10.i.i.i = phi i32 [ %.sroa.4.0.i11.i.i.i, %bb.kp ], [ %.sroa.4.0.i.i.i.i82, %bb.ko ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i83 = phi i8 [ %i.bgc, %bb.kp ], [ %i.bfz, %bb.ko ]
  %i.bgd = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i83 to i1
  br i1 %i.bgd, label %bb.lg, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i
  switch i32 %.sroa.4.0.i10.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i [
    i32 95, label %bb.lg
    i32 45, label %bb.lg
  ]

bb.kq:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  %i.bge = sub nuw i64 %i.ba, %i.cr               ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  %i.bgg = icmp eq i64 %i.ba, %i.cr
  br i1 %i.bgg, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.bgh = load i8, ptr %i.bgf, align 1, !alias.scope !2917, !noalias !2918, !noundef !19 ; 5 uses
  %i.bgi = icmp sgt i8 %i.bgh, -1
  br i1 %i.bgi, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i13.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i1.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i1.i: ; preds = %bb.kr
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgf, i64 1
  %i.bgk = and i8 %i.bgh, 31
  %i.bgl = zext nneg i8 %i.bgk to i32             ; 3 uses
  %i.bgm = icmp samesign ne i64 %i.bge, 1
  tail call void @llvm.assume(i1 %i.bgm)
  %i.bgn = load i8, ptr %i.bgj, align 1, !alias.scope !2917, !noalias !2918, !noundef !19
  %i.bgo = shl nuw nsw i32 %i.bgl, 6
  %i.bgp = and i8 %i.bgn, 63
  %i.bgq = zext nneg i8 %i.bgp to i32             ; 2 uses
  %i.bgr = or disjoint i32 %i.bgo, %i.bgq
  %i.bgs = icmp samesign ugt i8 %i.bgh, -33
  br i1 %i.bgs, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i11.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i13.i: ; preds = %bb.kr
  %i.bgt = zext nneg i8 %i.bgh to i32
  br label %bb.kt

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i11.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i1.i
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgf, i64 2
  %i.bgv = icmp samesign ne i64 %i.bge, 2
  tail call void @llvm.assume(i1 %i.bgv)
  %i.bgw = load i8, ptr %i.bgu, align 1, !alias.scope !2917, !noalias !2918, !noundef !19
  %i.bgx = shl nuw nsw i32 %i.bgq, 6
  %i.bgy = and i8 %i.bgw, 63
  %i.bgz = zext nneg i8 %i.bgy to i32
  %i.bha = or disjoint i32 %i.bgx, %i.bgz         ; 2 uses
  %i.bhb = shl nuw nsw i32 %i.bgl, 12
  %i.bhc = or disjoint i32 %i.bha, %i.bhb
  %i.bhd = icmp samesign ugt i8 %i.bgh, -17
  br i1 %i.bhd, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i12.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i12.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i11.i
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bgf, i64 3
  %i.bhf = icmp samesign ne i64 %i.bge, 3
  tail call void @llvm.assume(i1 %i.bhf)
  %i.bhg = load i8, ptr %i.bhe, align 1, !alias.scope !2917, !noalias !2918, !noundef !19
  %i.bhh = shl nuw nsw i32 %i.bgl, 18
  %i.bhi = and i32 %i.bhh, 1835008
  %i.bhj = shl nuw nsw i32 %i.bha, 6
  %i.bhk = and i8 %i.bhg, 63
  %i.bhl = zext nneg i8 %i.bhk to i32
  %i.bhm = or disjoint i32 %i.bhj, %i.bhl
  %i.bhn = or disjoint i32 %i.bhm, %i.bhi
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i11.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i1.i
  %.sroa.4.0.i.i.i3.i = phi i32 [ %i.bhc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i11.i ], [ %i.bgr, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i1.i ], [ %i.bhn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i12.i ] ; 6 uses
  %i.bho = icmp samesign ult i32 %.sroa.4.0.i.i.i3.i, 128
  br i1 %i.bho, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i
  %i.bhp = lshr i32 %.sroa.4.0.i.i.i3.i, 3
  %i.bhq = zext nneg i32 %i.bhp to i64            ; 2 uses
  %i.bhr = icmp samesign ult i32 %.sroa.4.0.i.i.i3.i, 918016
  %i.bhs = lshr i64 %i.bhq, 6
  %i.bht = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables13TRIE_CONTINUE, i64 %i.bhs
  %.sroa.01.0.i.i.i.i.i.i.i4.i = select i1 %i.bhr, ptr %i.bht, ptr @38
  %i.bhu = load i8, ptr %.sroa.01.0.i.i.i.i.i.i.i4.i, align 1, !noalias !2919, !noundef !19
  %i.bhv = zext i8 %i.bhu to i64
  %i.bhw = shl nuw nsw i64 %i.bhv, 5
  %i.bhx = and i64 %i.bhq, 63
  %i.bhy = add nuw nsw i64 %i.bhw, %i.bhx         ; 2 uses
  %i.bhz = icmp samesign ult i64 %i.bhy, 7904
  tail call void @llvm.assume(i1 %i.bhz)
  %i.bia = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables4LEAF, i64 %i.bhy
  %i.bib = load i8, ptr %i.bia, align 1, !noalias !2919, !noundef !19
  %i.bic = trunc i32 %.sroa.4.0.i.i.i3.i to i8
  %i.bid = and i8 %i.bic, 7
  %i.bie = lshr i8 %i.bib, %i.bid
  %i.bif = freeze i8 %i.bie
  br label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i5.i

bb.kt:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i13.i
  %.sroa.4.0.i11.i.i10.i = phi i32 [ %i.bgt, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i13.i ], [ %.sroa.4.0.i.i.i3.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i2.i ] ; 2 uses
  %i.big = zext nneg i32 %.sroa.4.0.i11.i.i10.i to i64
  %i.bih = getelementptr inbounds nuw i8, ptr @_RNvNtCs5D56hKD03st_13unicode_ident6tables14ASCII_CONTINUE, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !range !20, !noalias !2919, !noundef !19
  br label %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i5.i

_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i5.i: ; preds = %bb.kt, %bb.ks
  %.sroa.4.0.i10.i.i6.i = phi i32 [ %.sroa.4.0.i11.i.i10.i, %bb.kt ], [ %.sroa.4.0.i.i.i3.i, %bb.ks ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i7.i = phi i8 [ %i.bii, %bb.kt ], [ %i.bif, %bb.ks ]
  %i.bij = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7.i to i1
  br i1 %i.bij, label %bb.lh, label %switch.early.test.i.i8.i

switch.early.test.i.i8.i:                         ; preds = %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i5.i
  switch i32 %.sroa.4.0.i10.i.i6.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i [
    i32 95, label %bb.lh
    i32 45, label %bb.lh
  ]

bb.ku:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.bik = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i15.i = icmp samesign ult i64 %i.bik, 2
  br i1 %.not.i.i.i15.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i16.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i16.i: ; preds = %bb.ku
  %i.bil = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.bim = load i16, ptr %i.bil, align 1
  %i.bin = icmp ne i16 11822, %i.bim
  %i.bio = zext i1 %i.bin to i32
  %bcmp.i.i.fr.i.i18.i = freeze i32 %i.bio
  %i.bip = icmp eq i32 %bcmp.i.i.fr.i.i18.i, 0
  br i1 %i.bip, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit19.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit19.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i16.i
  %i.biq = add nuw i64 %i.cr, 2
  store i64 %i.biq, ptr %i.av, align 8, !alias.scope !2921, !noalias !2922
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.kv:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2923)
  %i.bir = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i20.i = icmp samesign ult i64 %i.bir, 2
  br i1 %.not.i.i.i20.i, label %bb.lq, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i21.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i21.i: ; preds = %bb.kv
  %i.bis = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.bit = load i16, ptr %i.bis, align 1
  %i.biu = icmp ne i16 11565, %i.bit
  %i.biv = zext i1 %i.biu to i32
  %bcmp.i.i.fr.i.i23.i = freeze i32 %i.biv
  %i.biw = icmp eq i32 %bcmp.i.i.fr.i.i23.i, 0
  br i1 %i.biw, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit24.i, label %bb.lq

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit24.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i21.i
  %i.bix = add nuw i64 %i.cr, 2
  store i64 %i.bix, ptr %i.av, align 8, !alias.scope !2924, !noalias !2925
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.kw:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  %i.biy = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer7in_word(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.biy, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.kx:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  %i.biz = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer7in_word(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.biz, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ky:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.kz:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.la:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %.not.i.i12.i.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i12.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileucECs5PEMdK7bMAG_12typst_syntax.exit.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i75

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i75: ; preds = %bb.la, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i
  %i.bja = phi i64 [ %i.bjd, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i ], [ %i.cr, %bb.la ] ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bja
  %rhsc.i.i76 = load i8, ptr %i.bjb, align 1, !noalias !2927
  %rhsc.fr.i.i77 = freeze i8 %rhsc.i.i76
  %i.bjc = icmp eq i8 %rhsc.fr.i.i77, 61
  br i1 %i.bjc, label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileucECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i75
  %i.bjd = add i64 %i.bja, 1                      ; 3 uses
  store i64 %i.bjd, ptr %i.av, align 8, !alias.scope !2927
  %.not.i.i.i25.i = icmp eq i64 %i.ba, %i.bjd
  br i1 %.not.i.i.i25.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileucECs5PEMdK7bMAG_12typst_syntax.exit.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i75

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileucECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i75, %bb.la
  %i.bje = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.bje, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.ls

bb.lb:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  %i.bjf = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.bjf, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i

bb.lc:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread
  %i.bjg = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.bjg, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i

bb.ld:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2928)
  %.not.i.i.i26.i = icmp eq i64 %i.bdm, 6
  br i1 %.not.i.i.i26.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i27.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i27.i: ; preds = %bb.ld
  %i.bjh = load i32, ptr %i.bdn, align 1
  %i.bji = xor i32 1936749684, %i.bjh
  %i.bjj = getelementptr i8, ptr %i.bdn, i64 3
  %i.bjk = load i32, ptr %i.bjj, align 1
  %i.bjl = xor i32 791624307, %i.bjk
  %i.bjm = or i32 %i.bji, %i.bjl
  %i.bjn = icmp ne i32 %i.bjm, 0
  %i.bjo = zext i1 %i.bjn to i32
  %bcmp.i.i.fr.i.i29.i = freeze i32 %i.bjo
  %i.bjp = icmp eq i32 %bcmp.i.i.fr.i.i29.i, 0
  br i1 %i.bjp, label %bb.lf, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i

bb.le:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i
  %i.bjq = add nuw i64 %i.cr, 6
  store i64 %i.bjq, ptr %i.av, align 8, !alias.scope !2929, !noalias !2930
  %i.bjr = tail call fastcc noundef i8 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4link(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.lf:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i27.i
  %i.bjs = add nuw i64 %i.cr, 7
  store i64 %i.bjs, ptr %i.av, align 8, !alias.scope !2931, !noalias !2932
  %i.bjt = tail call fastcc noundef i8 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4link(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i: ; preds = %bb.kl, %bb.lr, %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i27.i, %bb.ld, %bb.lc, %bb.lb, %bb.kx, %bb.kw, %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i16.i, %bb.ku, %switch.early.test.i.i8.i, %bb.kq, %switch.early.test.i.i.i, %bb.km, %bb.kj
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4text(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.lg:                                            ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i.i
  %i.bju = icmp samesign ult i32 %.sroa.4.0.i10.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bju)
  %i.bjv = tail call fastcc noundef i8 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5label(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.lh:                                            ; preds = %switch.early.test.i.i8.i, %switch.early.test.i.i8.i, %_RNCNvXsc_CsjRrCJiNqTDc_8unscannyNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueINtNtB7_6sealed6SealedcE7matches0By_.exit.i.i.i5.i
  %i.bjw = icmp samesign ult i32 %.sroa.4.0.i10.i.i6.i, 1114112
  tail call void @llvm.assume(i1 %i.bjw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %i.bjx = tail call fastcc i64 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whilecNvNtCs5PEMdK7bMAG_12typst_syntax5lexer25is_valid_in_label_literalEBS_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au) #63 ; 0 uses
  %i.bjy = load ptr, ptr %i.au, align 8, !alias.scope !2934, !nonnull !19, !noundef !19
  %.promoted.i.i = load i64, ptr %i.av, align 8, !alias.scope !2935 ; 2 uses
  %.not.i8.i.i = icmp samesign eq i64 %.promoted.i.i, 0
  br i1 %.not.i8.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph.i.i78

.lr.ph.i.i78:                                     ; preds = %bb.lh, %.thread.i.i.i
  %i.bjz = phi i64 [ %i.bml, %.thread.i.i.i ], [ %.promoted.i.i, %bb.lh ] ; 8 uses
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjy, i64 %i.bjz ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2936)
  %i.bkb = getelementptr inbounds i8, ptr %i.bka, i64 -1
  %i.bkc = load i8, ptr %i.bkb, align 1, !noalias !2937, !noundef !19 ; 3 uses
  %i.bkd = icmp sgt i8 %i.bkc, -1                 ; 2 uses
  br i1 %i.bkd, label %bb.li, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i: ; preds = %.lr.ph.i.i78
  %i.bke = icmp ne i64 %i.bjz, 1
  tail call void @llvm.assume(i1 %i.bke)
  %i.bkf = getelementptr inbounds i8, ptr %i.bka, i64 -2
  %i.bkg = load i8, ptr %i.bkf, align 1, !noalias !2937, !noundef !19 ; 3 uses
  %i.bkh = and i8 %i.bkg, 31
  %i.bki = zext nneg i8 %i.bkh to i32
  %i.bkj = icmp slt i8 %i.bkg, -64
  br i1 %i.bkj, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i, label %bb.lj

bb.li:                                            ; preds = %.lr.ph.i.i78
  %i.bkk = zext nneg i8 %i.bkc to i32
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i
  %i.bkl = icmp ne i64 %i.bjz, 2
  tail call void @llvm.assume(i1 %i.bkl)
  %i.bkm = getelementptr inbounds i8, ptr %i.bka, i64 -3
  %i.bkn = load i8, ptr %i.bkm, align 1, !noalias !2937, !noundef !19 ; 3 uses
  %i.bko = and i8 %i.bkn, 15
  %i.bkp = zext nneg i8 %i.bko to i32
  %i.bkq = icmp slt i8 %i.bkn, -64
  br i1 %i.bkq, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i, label %bb.lk

bb.lj:                                            ; preds = %bb.lk, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.blh, %bb.lk ], [ %i.bki, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i.i.i ]
  %i.bkr = shl nuw nsw i32 %.sroa.010.0.i.i.i.i, 6
  %i.bks = and i8 %i.bkc, 63
  %i.bkt = zext nneg i8 %i.bks to i32
  %i.bku = or disjoint i32 %i.bkr, %i.bkt
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i
  %i.bkv = icmp ne i64 %i.bjz, 3
  tail call void @llvm.assume(i1 %i.bkv)
  %i.bkw = getelementptr inbounds i8, ptr %i.bka, i64 -4
  %i.bkx = load i8, ptr %i.bkw, align 1, !noalias !2937, !noundef !19
  %i.bky = and i8 %i.bkx, 7
  %i.bkz = zext nneg i8 %i.bky to i32
  %i.bla = shl nuw nsw i32 %i.bkz, 6
  %i.blb = and i8 %i.bkn, 63
  %i.blc = zext nneg i8 %i.blb to i32
  %i.bld = or disjoint i32 %i.bla, %i.blc
  br label %bb.lk

bb.lk:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i
  %.sroa.010.1.i.i.i.i = phi i32 [ %i.bld, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i ], [ %i.bkp, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i.i.i ]
  %i.ble = shl nuw nsw i32 %.sroa.010.1.i.i.i.i, 6
  %i.blf = and i8 %i.bkg, 63
  %i.blg = zext nneg i8 %i.blf to i32
  %i.blh = or disjoint i32 %i.ble, %i.blg
  br label %bb.lj

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit.i.i: ; preds = %bb.lj, %bb.li
  %.sroa.0.2.i.i.i = phi i32 [ %i.bku, %bb.lj ], [ %i.bkk, %bb.li ]
  switch i32 %.sroa.0.2.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit [
    i32 58, label %bb.ll
    i32 46, label %bb.ll
  ]

bb.ll:                                            ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit.i.i, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2938)
  br i1 %i.bkd, label %.thread.i.i.i, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i2.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i2.i.i: ; preds = %bb.ll
  %i.bli = icmp ne i64 %i.bjz, 1
  tail call void @llvm.assume(i1 %i.bli)
  %i.blj = getelementptr inbounds i8, ptr %i.bka, i64 -2
  %i.blk = load i8, ptr %i.blj, align 1, !noalias !2939, !noundef !19 ; 3 uses
  %i.bll = and i8 %i.blk, 31
  %i.blm = zext nneg i8 %i.bll to i32
  %i.bln = icmp slt i8 %i.blk, -64
  br i1 %i.bln, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i4.i.i, label %bb.ln

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i4.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i2.i.i
  %i.blo = icmp ne i64 %i.bjz, 2
  tail call void @llvm.assume(i1 %i.blo)
  %i.blp = getelementptr inbounds i8, ptr %i.bka, i64 -3
  %i.blq = load i8, ptr %i.blp, align 1, !noalias !2939, !noundef !19 ; 3 uses
  %i.blr = and i8 %i.blq, 15
  %i.bls = zext nneg i8 %i.blr to i32
  %i.blt = icmp slt i8 %i.blq, -64
  br i1 %i.blt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i6.i.i, label %bb.lm

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i6.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i4.i.i
  %i.blu = icmp ne i64 %i.bjz, 3
  tail call void @llvm.assume(i1 %i.blu)
  %i.blv = getelementptr inbounds i8, ptr %i.bka, i64 -4
  %i.blw = load i8, ptr %i.blv, align 1, !noalias !2939, !noundef !19
  %i.blx = and i8 %i.blw, 7
  %i.bly = zext nneg i8 %i.blx to i32
  %i.blz = shl nuw nsw i32 %i.bly, 6
  %i.bma = and i8 %i.blq, 63
  %i.bmb = zext nneg i8 %i.bma to i32
  %i.bmc = or disjoint i32 %i.blz, %i.bmb
  br label %bb.lm

bb.lm:                                            ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i6.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i4.i.i
  %.sroa.010.1.i.i5.i.i = phi i32 [ %i.bmc, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i6.i.i ], [ %i.bls, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i4.i.i ]
  %i.bmd = shl nuw nsw i32 %.sroa.010.1.i.i5.i.i, 6
  %i.bme = and i8 %i.blk, 63
  %i.bmf = zext nneg i8 %i.bme to i32
  %i.bmg = or disjoint i32 %i.bmd, %i.bmf
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i2.i.i
  %.sroa.010.0.i.i3.i.i = phi i32 [ %i.bmg, %bb.lm ], [ %i.blm, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i2.i.i ] ; 4 uses
  %i.bmh = icmp samesign ult i32 %.sroa.010.0.i.i3.i.i, 17408
  tail call void @llvm.assume(i1 %i.bmh)
  %i.bmi = icmp samesign ult i32 %.sroa.010.0.i.i3.i.i, 2
  br i1 %i.bmi, label %.thread.i.i.i, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bmj = icmp samesign ult i32 %.sroa.010.0.i.i3.i.i, 32
  br i1 %i.bmj, label %.thread.i.i.i, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bmk = icmp samesign ult i32 %.sroa.010.0.i.i3.i.i, 1024
  %..i.i.i79 = select i1 %i.bmk, i64 -3, i64 -4
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.lp, %bb.lo, %bb.ln, %bb.ll
  %.sroa.02.0.neg.i.i.i = phi i64 [ -2, %bb.lo ], [ %..i.i.i79, %bb.lp ], [ -1, %bb.ln ], [ -1, %bb.ll ]
  %i.bml = add i64 %.sroa.02.0.neg.i.i.i, %i.bjz  ; 3 uses
  store i64 %i.bml, ptr %i.av, align 8, !alias.scope !2940
  %.not.i.i31.i = icmp samesign eq i64 %i.bml, 0
  br i1 %.not.i.i31.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph.i.i78

bb.lq:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i21.i, %bb.kv
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2941)
  %.not.i.i.i33.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i.i33.i, label %.thread87.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i34.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i34.i: ; preds = %bb.lq
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %rhsc.i35.i = load i8, ptr %i.bmm, align 1, !noalias !2942
  %rhsc.fr.i36.i = freeze i8 %rhsc.i35.i
  switch i8 %rhsc.fr.i36.i, label %.thread87.i [
    i8 45, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.i
    i8 63, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit44.i
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i34.i
  %i.bmn = add i64 %i.cr, 1
  store i64 %i.bmn, ptr %i.av, align 8, !alias.scope !2942
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit44.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i34.i
  %i.bmo = add i64 %i.cr, 1
  store i64 %i.bmo, ptr %i.av, align 8, !alias.scope !2943
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

.thread87.i:                                      ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i34.i, %bb.lq
  %i.bmp = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc10is_numericECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au) #63
  br i1 %i.bmp, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.lr

bb.lr:                                            ; preds = %.thread87.i
  %i.bmq = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.bmq, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvNtCs5PEMdK7bMAG_12typst_syntax5lexer14is_id_continueEBL_.exit.thread.i

bb.ls:                                            ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileucECs5PEMdK7bMAG_12typst_syntax.exit.i
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4text(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.lt:                                            ; preds = %bb.kj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2945)
end_hunk_3
begin_hunk_4_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4next:bb.a
  br label %_RNvXse_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitINtNtB5_6sealed6SealedRcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvXse_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitINtNtB5_6sealed6SealedRcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i100, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i99, %bb.lu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i89
  %spec.select.i.i.i.i90 = phi i32 [ %i.bng, %bb.lu ], [ %i.bne, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i89 ], [ %i.boa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i100 ], [ %i.bnp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i99 ]
  %i.bob = add nsw i32 %spec.select.i.i.i.i90, -48
  %.sroa.0.0.i.i.i.i.i.i.i46.i = icmp ult i32 %i.bob, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i.i46.i, label %bb.lv, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i

bb.lv:                                            ; preds = %_RNvXse_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitINtNtB5_6sealed6SealedRcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.boc = add i64 %i.bmr, 1                      ; 3 uses
  store i64 %i.boc, ptr %i.av, align 8, !alias.scope !2948
  %.not1.i.i.i.i = icmp eq i64 %i.ba, %i.boc
  br i1 %.not1.i.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %.lr.ph.i.i45.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %bb.lv, %_RNvXse_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitINtNtB5_6sealed6SealedRcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %bb.lt
  %i.bod = phi i64 [ %i.ba, %bb.lt ], [ %i.ba, %bb.lv ], [ %i.bmr, %_RNvXse_CsjRrCJiNqTDc_8unscannyNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitINtNtB5_6sealed6SealedRcE7matchesCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 5 uses
  %..i.i.i47.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ba, i64 %i.aw) ; 2 uses
  %i.boe = icmp eq i64 %..i.i.i47.i, 0
  br i1 %i.boe, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i.i91, label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %bb.lx
  %.sroa.0.01.i.i48.i = phi i64 [ %i.boi, %bb.lx ], [ %..i.i.i47.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i ] ; 5 uses
  %.not.i.i49.i = icmp ult i64 %.sroa.0.01.i.i48.i, %i.ba
  br i1 %.not.i.i49.i, label %bb.lw, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i

bb.lw:                                            ; preds = %.lr.ph.i2.i.i
  %i.bof = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.0.01.i.i48.i
  %i.bog = load i8, ptr %i.bof, align 1, !noalias !2949, !noundef !19
  %i.boh = icmp sgt i8 %i.bog, -65
  br i1 %i.boh, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.boi = add i64 %.sroa.0.01.i.i48.i, -1        ; 2 uses
  %i.boj = icmp eq i64 %i.boi, 0
  br i1 %i.boj, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i, label %.lr.ph.i2.i.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i: ; preds = %bb.lx, %bb.lw, %.lr.ph.i2.i.i
  %.sroa.0.0.lcssa.i.ph.i51.i = phi i64 [ %.sroa.0.01.i.i48.i, %bb.lw ], [ 0, %bb.lx ], [ %.sroa.0.01.i.i48.i, %.lr.ph.i2.i.i ]
  %i.bok = tail call i64 @llvm.umin.i64(i64 %i.bod, i64 %.sroa.0.0.lcssa.i.ph.i51.i)
  br label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i.i91

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i.i91: ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.0.0.lcssa.i.i52.i = phi i64 [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc14is_ascii_digitECs5PEMdK7bMAG_12typst_syntax.exit.i.i ], [ %i.bok, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.loopexit.i50.i ] ; 2 uses
  %i.bol = sub nuw i64 %i.bod, %.sroa.0.0.lcssa.i.i52.i ; 2 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.0.0.lcssa.i.i52.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  %.not.i.i.i.i.i92 = icmp eq i64 %i.ba, %i.bod
  br i1 %.not.i.i.i.i.i92, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i.i93

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i.i93: ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i.i91
  %i.bon = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bod
  %rhsc.i.i.i94 = load i8, ptr %i.bon, align 1, !noalias !2951
  %rhsc.fr.i.i.i95 = freeze i8 %rhsc.i.i.i94
  %i.boo = icmp eq i8 %rhsc.fr.i.i.i95, 46
  br i1 %i.boo, label %bb.ly, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96

bb.ly:                                            ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i.i93
  %i.bop = add i64 %i.bod, 1
  store i64 %i.bop, ptr %i.av, align 8, !alias.scope !2951
  %i.boq = tail call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  br i1 %i.boq, label %bb.lz, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96: ; preds = %bb.mc, %.preheader56.i.i.i.preheader, %.lr.ph.i3.i.i, %bb.ma, %bb.ma, %bb.lz, %bb.ly, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i.i93, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i.i91
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer4text(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.lz:                                            ; preds = %bb.ly
  switch i64 %i.bol, label %thread-pre-split.i.i.i [
    i64 0, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96
    i64 1, label %bb.ma
  ]

bb.ma:                                            ; preds = %bb.lz
  %i.bor = load i8, ptr %i.bom, align 1, !alias.scope !2952, !noalias !2953, !noundef !19 ; 2 uses
  switch i8 %i.bor, label %bb.mb [
    i8 43, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96
    i8 45, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.lz
  %.pr.i.i.i = load i8, ptr %i.bom, align 1, !alias.scope !2952, !noalias !2953
  br label %bb.mb

bb.mb:                                            ; preds = %thread-pre-split.i.i.i, %bb.ma
  %i.bos = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.bor, %bb.ma ]
  %cond.i.i.i = icmp eq i8 %i.bos, 43             ; 2 uses
  %i.bot = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.bol, %i.bot  ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i97 = getelementptr inbounds nuw i8, ptr %i.bom, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.bou = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.bou, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.mb
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph.i3.i.i

.preheader56.i.i.i:                               ; preds = %bb.mc
  %i.bov = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i728, i64 1
  %i.bow = add nsw i64 %.sroa.15.1.i.i.i727, -1   ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.bow, 0
  br i1 %.not52.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.mb, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i728 = phi ptr [ %i.bov, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i97, %bb.mb ] ; 2 uses
  %.sroa.15.1.i.i.i727 = phi i64 [ %i.bow, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.mb ]
  %.sroa.042.0.i.i.i726 = phi i64 [ %i.bpf, %.preheader56.i.i.i ], [ 0, %bb.mb ]
  %i.box = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i726, i64 10) ; 2 uses
  %i.boy = extractvalue { i64, i1 } %i.box, 1
  br i1 %i.boy, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96, label %bb.mc, !prof !23

bb.mc:                                            ; preds = %.preheader56.i.i.i.preheader
  %i.boz = extractvalue { i64, i1 } %i.box, 0     ; 2 uses
  %i.bpa = load i8, ptr %.sroa.0.1.i.i.i728, align 1, !alias.scope !2952, !noalias !2953, !noundef !19
  %i.bpb = zext i8 %i.bpa to i32
  %i.bpc = add nsw i32 %i.bpb, -48                ; 2 uses
  %i.bpd = icmp ugt i32 %i.bpc, 9
  %i.bpe = zext nneg i32 %i.bpc to i64
  %i.bpf = add i64 %i.boz, %i.bpe                 ; 2 uses
  %i.bpg = icmp ult i64 %i.bpf, %i.boz
  %or.cond.i.i98 = select i1 %i.bpd, i1 true, i1 %i.bpg, !prof !32
  br i1 %or.cond.i.i98, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96, label %.preheader56.i.i.i, !prof !32

.lr.ph.i3.i.i:                                    ; preds = %.preheader.i.i.i, %bb.md
  %.sroa.0.269.i.i.i = phi ptr [ %i.bpl, %bb.md ], [ %.sroa.0.0.i.i.i97, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.bpk, %bb.md ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %i.bph = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !2952, !noalias !2953, !noundef !19
  %i.bpi = add i8 %i.bph, -48
  %i.bpj = icmp ult i8 %i.bpi, 10
  br i1 %i.bpj, label %bb.md, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i96

bb.md:                                            ; preds = %.lr.ph.i3.i.i
  %i.bpk = add nsw i64 %.sroa.15.268.i.i.i, -1    ; 2 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %.not53.i.i.i = icmp eq i64 %i.bpk, 0
  br i1 %.not53.i.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.lr.ph.i3.i.i

.thread225:                                       ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2954)
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 12 uses
  switch i32 %spec.select.i.ph218, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i [
    i32 92, label %bb.me
    i32 34, label %bb.mf
    i32 45, label %bb.mg
    i32 58, label %bb.mh
    i32 33, label %bb.mi
    i32 46, label %bb.mk
    i32 60, label %bb.mm
    i32 62, label %bb.mn
    i32 61, label %bb.mo
    i32 124, label %bb.mp
    i32 126, label %bb.mq
    i32 42, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
    i32 44, label %bb.mr
    i32 59, label %bb.ms
    i32 35, label %bb.mt
    i32 95, label %bb.mu
    i32 36, label %bb.mv
    i32 47, label %bb.mw
    i32 94, label %bb.mx
    i32 38, label %bb.my
    i32 8730, label %bb.mz
    i32 8731, label %bb.mz
    i32 8732, label %bb.mz
    i32 39, label %bb.na
    i32 40, label %bb.nb
    i32 41, label %bb.nc
    i32 91, label %bb.nd
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i163.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i149.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i, %bb.nv, %bb.nt, %bb.ns, %bb.nq, %.thread225.thread, %bb.ng, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i93.i, %bb.nd, %.thread225
  %i.bpn = phi ptr [ %i.jz, %.thread225.thread ], [ %i.bpm, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i163.i ], [ %i.bpm, %bb.nt ], [ %i.bpm, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i149.i ], [ %i.bpm, %bb.ns ], [ %i.bpm, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i ], [ %i.bpm, %bb.nq ], [ %i.bpm, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i ], [ %i.bpm, %.thread225 ], [ %i.bpm, %bb.ng ], [ %i.bpm, %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i93.i ], [ %i.bpm, %bb.nd ], [ %i.bpm, %bb.nv ]
  %i.bpo = tail call noundef i8 @_RNvCs6xpQEr8gLsQ_11typst_utils18default_math_class(i32 noundef range(i32 0, 1114112) %spec.select.i.ph218), !noalias !2955
  %i.bpp = icmp eq i8 %i.bpo, 8
  br i1 %i.bpp, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.ny

bb.me:                                            ; preds = %.thread225
  %i.bpq = tail call fastcc noundef i8 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer9backslash(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mf:                                            ; preds = %.thread225
  %i.bpr = tail call fastcc noundef i8 @_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer6string(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mg:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2956)
  %i.bps = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i.i119 = icmp samesign ult i64 %i.bps, 2
  br i1 %.not.i.i.i.i119, label %bb.ne, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i120

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i120: ; preds = %bb.mg
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.bpu = load i16, ptr %i.bpt, align 1
  %i.bpv = icmp ne i16 15934, %i.bpu
  %i.bpw = zext i1 %i.bpv to i32
  %bcmp.i.i.fr.i.i.i122 = freeze i32 %i.bpw
  %i.bpx = icmp eq i32 %bcmp.i.i.fr.i.i.i122, 0
  br i1 %i.bpx, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.i, label %bb.ne

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i120
  %i.bpy = add nuw i64 %i.cr, 2
  store i64 %i.bpy, ptr %i.av, align 8, !alias.scope !2957, !noalias !2958
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mh:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2959)
  %.not.i.i.i49.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i.i49.i, label %bb.ng, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i115

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i115: ; preds = %bb.mh
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %rhsc.i.i116 = load i8, ptr %i.bpz, align 1, !noalias !2960
  %rhsc.fr.i.i117 = freeze i8 %rhsc.i.i116
  %i.bqa = icmp eq i8 %rhsc.fr.i.i117, 61
  br i1 %i.bqa, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.i118, label %bb.ng

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit.i118: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i115
  %i.bqb = add i64 %i.cr, 1
  store i64 %i.bqb, ptr %i.av, align 8, !alias.scope !2961, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mi:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2962)
  %.not.i.i.i50.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i.i50.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i51.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i51.i: ; preds = %bb.mi
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %rhsc.i52.i = load i8, ptr %i.bqc, align 1, !noalias !2963
  %rhsc.fr.i53.i = freeze i8 %rhsc.i52.i
  %i.bqd = icmp eq i8 %rhsc.fr.i53.i, 61
  br i1 %i.bqd, label %bb.mj, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mj:                                            ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i51.i
  %i.bqe = add i64 %i.cr, 1
  store i64 %i.bqe, ptr %i.av, align 8, !alias.scope !2964, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mk:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2965)
  %i.bqf = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i56.i114 = icmp samesign ult i64 %i.bqf, 2
  br i1 %.not.i.i.i56.i114, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i57.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i57.i: ; preds = %bb.mk
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.bqh = load i16, ptr %i.bqg, align 1
  %i.bqi = icmp ne i16 11822, %i.bqh
  %i.bqj = zext i1 %i.bqi to i32
  %bcmp.i.i.fr.i.i59.i = freeze i32 %i.bqj
  %i.bqk = icmp eq i32 %bcmp.i.i.fr.i.i59.i, 0
  br i1 %i.bqk, label %bb.ml, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ml:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i57.i
  %i.bql = add nuw i64 %i.cr, 2
  store i64 %i.bql, ptr %i.av, align 8, !alias.scope !2966, !noalias !2967
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mm:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.bqm = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i61.i = icmp samesign ult i64 %i.bqm, 3
  br i1 %.not.i.i.i61.i, label %bb.nh, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i62.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i62.i: ; preds = %bb.mm
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr ; 2 uses
  %i.bqo = load i16, ptr %i.bqn, align 1
  %i.bqp = xor i16 15677, %i.bqo
  %i.bqq = getelementptr i8, ptr %i.bqn, i64 2
  %i.bqr = load i8, ptr %i.bqq, align 1
  %i.bqs = zext i8 %i.bqr to i16
  %i.bqt = xor i16 62, %i.bqs
  %i.bqu = or i16 %i.bqp, %i.bqt
  %i.bqv = icmp ne i16 %i.bqu, 0
  %i.bqw = zext i1 %i.bqv to i32
  %bcmp.i.i.fr.i.i64.i = freeze i32 %i.bqw
  %i.bqx = icmp eq i32 %bcmp.i.i.fr.i.i64.i, 0
  br i1 %i.bqx, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit65.i, label %bb.nh

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit65.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i62.i
  %i.bqy = add nuw i64 %i.cr, 3
  store i64 %i.bqy, ptr %i.av, align 8, !alias.scope !2969, !noalias !2970
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mn:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.bqz = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i66.i = icmp samesign ult i64 %i.bqz, 2
  br i1 %.not.i.i.i66.i, label %bb.nr, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i67.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i67.i: ; preds = %bb.mn
  %i.bra = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.brb = load i16, ptr %i.bra, align 1
  %i.brc = icmp ne i16 15917, %i.brb
  %i.brd = zext i1 %i.brc to i32
  %bcmp.i.i.fr.i.i69.i = freeze i32 %i.brd
  %i.bre = icmp eq i32 %bcmp.i.i.fr.i.i69.i, 0
  br i1 %i.bre, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit70.i, label %bb.nr

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit70.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i67.i
  %i.brf = add nuw i64 %i.cr, 2
  store i64 %i.brf, ptr %i.av, align 8, !alias.scope !2972, !noalias !2973
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mo:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.brg = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i71.i = icmp samesign ult i64 %i.brg, 2
  br i1 %.not.i.i.i71.i, label %bb.nt, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i72.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i72.i: ; preds = %bb.mo
  %i.brh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.bri = load i16, ptr %i.brh, align 1
  %i.brj = icmp ne i16 15933, %i.bri
  %i.brk = zext i1 %i.brj to i32
  %bcmp.i.i.fr.i.i74.i = freeze i32 %i.brk
  %i.brl = icmp eq i32 %bcmp.i.i.fr.i.i74.i, 0
  br i1 %i.brl, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit75.i, label %bb.nt

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit75.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i72.i
  %i.brm = add nuw i64 %i.cr, 2
  store i64 %i.brm, ptr %i.av, align 8, !alias.scope !2975, !noalias !2976
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mp:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  %i.brn = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i76.i = icmp samesign ult i64 %i.brn, 2
  br i1 %.not.i.i.i76.i, label %bb.nu, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i77.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i77.i: ; preds = %bb.mp
  %i.bro = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.brp = load i16, ptr %i.bro, align 1
  %i.brq = icmp ne i16 15917, %i.brp
  %i.brr = zext i1 %i.brq to i32
  %bcmp.i.i.fr.i.i79.i = freeze i32 %i.brr
  %i.brs = icmp eq i32 %bcmp.i.i.fr.i.i79.i, 0
  br i1 %i.brs, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit80.i, label %bb.nu

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit80.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i77.i
  %i.brt = add nuw i64 %i.cr, 2
  store i64 %i.brt, ptr %i.av, align 8, !alias.scope !2978, !noalias !2979
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mq:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.bru = sub nuw i64 %i.ba, %i.cr
  %.not.i.i.i81.i = icmp samesign ult i64 %i.bru, 2
  br i1 %.not.i.i.i81.i, label %bb.nw, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i82.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i82.i: ; preds = %bb.mq
  %i.brv = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %i.brw = load i16, ptr %i.brv, align 1
  %i.brx = icmp ne i16 15998, %i.brw
  %i.bry = zext i1 %i.brx to i32
  %bcmp.i.i.fr.i.i84.i = freeze i32 %i.bry
  %i.brz = icmp eq i32 %bcmp.i.i.fr.i.i84.i, 0
  br i1 %i.brz, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit85.i, label %bb.nw

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit85.i: ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i82.i
  %i.bsa = add nuw i64 %i.cr, 2
  store i64 %i.bsa, ptr %i.av, align 8, !alias.scope !2981, !noalias !2982
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mr:                                            ; preds = %bb.oh, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ms:                                            ; preds = %bb.oh, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mt:                                            ; preds = %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mu:                                            ; preds = %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mv:                                            ; preds = %bb.oh, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit27.thread.thread, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mw:                                            ; preds = %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mx:                                            ; preds = %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.my:                                            ; preds = %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.mz:                                            ; preds = %.thread225, %.thread225, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.na:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %.not.i.i12.i.i111 = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i12.i.i111, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i86.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i86.i: ; preds = %bb.na, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i112
  %i.bsb = phi i64 [ %i.bse, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i112 ], [ %i.cr, %bb.na ] ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bsb
  %rhsc.i87.i = load i8, ptr %i.bsc, align 1, !noalias !2984
  %rhsc.fr.i88.i = freeze i8 %rhsc.i87.i
  %i.bsd = icmp eq i8 %rhsc.fr.i88.i, 39
  br i1 %i.bsd, label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i112, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit.i.i.i112: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i86.i
  %i.bse = add i64 %i.bsb, 1                      ; 3 uses
  store i64 %i.bse, ptr %i.av, align 8, !alias.scope !2985, !noalias !2955
  %.not.i.i.i90.i = icmp eq i64 %i.ba, %i.bse
  br i1 %.not.i.i.i90.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i86.i

bb.nb:                                            ; preds = %bb.oh, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.nc:                                            ; preds = %bb.oh, %.thread225
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.nd:                                            ; preds = %.thread225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %.not.i.i.i92.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i.i92.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i93.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i93.i: ; preds = %bb.nd
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %rhsc.i94.i = load i8, ptr %i.bsf, align 1, !noalias !2987
  %rhsc.fr.i95.i = freeze i8 %rhsc.i94.i
  %i.bsg = icmp eq i8 %rhsc.fr.i95.i, 124
  br i1 %i.bsg, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i93.i
  %i.bsh = add i64 %i.cr, 1
  store i64 %i.bsh, ptr %i.av, align 8, !alias.scope !2988, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ne:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i120, %bb.mg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  %.not.i.i.i99.i = icmp eq i64 %i.ba, %i.cr
  br i1 %.not.i.i.i99.i, label %bb.nf, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i100.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i100.i: ; preds = %bb.ne
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cr
  %rhsc.i101.i = load i8, ptr %i.bsi, align 1, !noalias !2990
  %rhsc.fr.i102.i = freeze i8 %rhsc.i101.i
  %i.bsj = icmp eq i8 %rhsc.fr.i102.i, 62
  br i1 %i.bsj, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit104.i, label %bb.nf

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit104.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i100.i
  %i.bsk = add i64 %i.cr, 1
  store i64 %i.bsk, ptr %i.av, align 8, !alias.scope !2991, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.nf:                                            ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i100.i, %bb.ne
  %i.bsl = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @333, i64 noundef 2) #63, !noalias !2955 ; 0 uses
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.ng:                                            ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i.i115, %bb.mh
  %i.bsm = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @329, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsm, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i

bb.nh:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i62.i, %bb.mm
  %i.bsn = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @335, i64 noundef 3) #63, !noalias !2955
  br i1 %i.bsn, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bso = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @321, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bso, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bsp = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsp, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bsq = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @333, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsq, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bsr = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsr, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bss = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bss, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bst = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bst, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bsu = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsu, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bsv = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bsv, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  %i.bsw = load i64, ptr %i.az, align 8, !alias.scope !2993, !noalias !2955, !noundef !19
  %i.bsx = load i64, ptr %i.av, align 8, !alias.scope !2993, !noalias !2955, !noundef !19 ; 6 uses
  %.not.i.i.i106.i = icmp eq i64 %i.bsw, %i.bsx
  br i1 %.not.i.i.i106.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i: ; preds = %bb.nq
  %i.bsy = load ptr, ptr %i.au, align 8, !alias.scope !2993, !noalias !2955, !nonnull !19, !noundef !19
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsy, i64 %i.bsx
  %rhsc.i108.i = load i8, ptr %i.bsz, align 1, !noalias !2994
  %rhsc.fr.i109.i = freeze i8 %rhsc.i108.i
  switch i8 %rhsc.fr.i109.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i [
    i8 61, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit111.i
    i8 60, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit118.i
    i8 45, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit125.i
    i8 126, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit132.i
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit111.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i
  %i.bta = add i64 %i.bsx, 1
  store i64 %i.bta, ptr %i.av, align 8, !alias.scope !2993, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit118.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i
  %i.btb = add i64 %i.bsx, 1
  store i64 %i.btb, ptr %i.av, align 8, !alias.scope !2995, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit125.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i
  %i.btc = add i64 %i.bsx, 1
  store i64 %i.btc, ptr %i.av, align 8, !alias.scope !2996, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit132.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i107.i
  %i.btd = add i64 %i.bsx, 1
  store i64 %i.btd, ptr %i.av, align 8, !alias.scope !2997, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.nr:                                            ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i67.i, %bb.mn
  %i.bte = tail call fastcc noundef zeroext i1 @_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef align 8 dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @332, i64 noundef 2) #63, !noalias !2955
  br i1 %i.bte, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2998)
  %i.btf = load i64, ptr %i.az, align 8, !alias.scope !2999, !noalias !2955, !noundef !19
  %i.btg = load i64, ptr %i.av, align 8, !alias.scope !2999, !noalias !2955, !noundef !19 ; 4 uses
  %.not.i.i.i134.i = icmp eq i64 %i.btf, %i.btg
  br i1 %.not.i.i.i134.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i: ; preds = %bb.ns
  %i.bth = load ptr, ptr %i.au, align 8, !alias.scope !2999, !noalias !2955, !nonnull !19, !noundef !19
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 %i.btg
  %rhsc.i136.i = load i8, ptr %i.bti, align 1, !noalias !3000
  %rhsc.fr.i137.i = freeze i8 %rhsc.i136.i
  switch i8 %rhsc.fr.i137.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit97.thread.i [
    i8 61, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit139.i
    i8 62, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit146.i
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit139.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i
  %i.btj = add i64 %i.btg, 1
  store i64 %i.btj, ptr %i.av, align 8, !alias.scope !2999, !noalias !2955
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifucECs5PEMdK7bMAG_12typst_syntax.exit146.i: ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i135.i
  %i.btk = add i64 %i.btg, 1
end_hunk_4
begin_hunk_5_@_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer7in_word:bb.a
  %.sroa.010.0.i.i = phi i32 [ %i.az, %bb.f ], [ %i.aa, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit17.i.i ]
  %i.aj = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.ak = and i8 %i.u, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i
  %i.an = icmp ne ptr %i.d, %i.ae
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds i8, ptr %.sroa.5.0.ph.i, i64 -4
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !4145, !noundef !19
  %i.aq = and i8 %i.ap, 7
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl nuw nsw i32 %i.ar, 6
  %i.at = and i8 %i.af, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i
  %.sroa.010.1.i.i = phi i32 [ %i.av, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i ], [ %i.ah, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit19.i.i ]
  %i.aw = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.ax = and i8 %i.y, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  br label %bb.e

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit: ; preds = %bb.a, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.2.i = phi i32 [ -1, %bb.a ], [ %i.ac, %bb.d ], [ -1, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs5PEMdK7bMAG_12typst_syntax.exit21.i.i.i.i ], [ %i.am, %bb.e ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !4146, !noundef !19 ; 4 uses
  %.not.i7 = icmp samesign eq i64 %i.f, %i.bb
  br i1 %.not.i7, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit
  %i.bc = load i8, ptr %i.g, align 1, !noalias !4147, !noundef !19 ; 5 uses
  %i.bd = icmp sgt i8 %i.bc, -1
  br i1 %i.bd, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.bf = and i8 %i.bc, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = add nuw nsw i64 %i.f, 1
  %i.bi = icmp samesign ne i64 %i.bh, %i.bb
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i8, ptr %i.be, align 1, !noalias !4147, !noundef !19
  %i.bk = shl nuw nsw i32 %i.bg, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = icmp samesign ugt i8 %i.bc, -33
  br i1 %i.bo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

bb.h:                                             ; preds = %bb.g
  %i.bp = zext nneg i8 %i.bc to i32
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.br = add nuw nsw i64 %i.f, 2
  %i.bs = icmp samesign ne i64 %i.br, %i.bb
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %i.bq, align 1, !noalias !4147, !noundef !19
  %i.bu = shl nuw nsw i32 %i.bm, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bg, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.bc, -17
  br i1 %i.ca, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.cc = add nuw nsw i64 %i.f, 3
  %i.cd = icmp samesign ne i64 %i.cc, %i.bb
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i8, ptr %i.cb, align 1, !noalias !4147, !noundef !19
  %i.cf = shl nuw nsw i32 %i.bg, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.bx, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i
  %spec.select.i = phi i32 [ %i.bp, %bb.h ], [ %i.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ], [ %i.cl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.bz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ -1, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner5scout.exit ] ; 8 uses
  %.not = icmp eq i32 %.sroa.0.2.i, -1
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.0.2.i, ptr %i.b, align 4
  %i.cm = and i32 %.sroa.0.2.i, 2097119
  %i.cn = add nsw i32 %i.cm, -65
  %or.cond4.i.i = icmp ult i32 %i.cn, 26
  %i.co = add nsw i32 %.sroa.0.2.i, -48
  %or.cond2.i.i = icmp ult i32 %i.co, 10
  %or.cond5.i.i = select i1 %or.cond4.i.i, i1 true, i1 %or.cond2.i.i
  br i1 %or.cond5.i.i, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = icmp samesign ult i32 %.sroa.0.2.i, 170
  br i1 %i.cp, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = tail call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.0.2.i) #57
  br i1 %i.cq, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cr = icmp samesign ugt i32 %.sroa.0.2.i, 177
  br i1 %i.cr, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i: ; preds = %bb.l
  %i.cs = tail call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.0.2.i) #57
  br i1 %i.cs, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i: ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i, %bb.k, %bb.i
  %i.ct = call noundef i8 @_RNvXsa_Cs9k8Y7U0KtaK_14unicode_scriptcNtB5_13UnicodeScript6script(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b)
  switch i8 %i.ct, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit [
    i8 48, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread
    i8 49, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread
    i8 53, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread
    i8 61, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread
  ]

_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread: ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i, %bb.l, %bb.j, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.m

_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit: ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not5 = icmp eq i32 %spec.select.i, -1
  br i1 %.not5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread, %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i11, %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14 ], [ false, %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit ], [ false, %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit ], [ false, %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit.thread ]
  ret i1 %.sroa.0.0

bb.n:                                             ; preds = %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %spec.select.i, ptr %i.a, align 4
  %i.cu = and i32 %spec.select.i, 2097119
  %i.cv = add nsw i32 %i.cu, -65
  %or.cond4.i.i8 = icmp ult i32 %i.cv, 26
  %i.cw = add nsw i32 %spec.select.i, -48
  %or.cond2.i.i9 = icmp ult i32 %i.cw, 10
  %or.cond5.i.i10 = select i1 %or.cond4.i.i8, i1 true, i1 %or.cond2.i.i9
  br i1 %or.cond5.i.i10, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = icmp samesign ult i32 %spec.select.i, 170
  br i1 %i.cx, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i) #57
  br i1 %i.cy, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp samesign ugt i32 %spec.select.i, 177
  br i1 %i.cz, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i12, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i12: ; preds = %bb.q
  %i.da = call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i) #57
  br i1 %i.da, label %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14

_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13: ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i12, %bb.p, %bb.n
  %i.db = call noundef i8 @_RNvXsa_Cs9k8Y7U0KtaK_14unicode_scriptcNtB5_13UnicodeScript6script(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  %i.dc = icmp ult i8 %i.db, 62
  br i1 %i.dc, label %switch.lookup, label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14

switch.lookup:                                    ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13
  %switch.cast = zext nneg i8 %i.db to i62
  %switch.downshift = lshr i62 2295991385028820991, %switch.cast
  %switch.masked = trunc i62 %switch.downshift to i1
  br label %_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14

_RNCNCNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB9_5Lexer7in_word00Bb_.exit14: ; preds = %switch.lookup, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13, %bb.o, %bb.q, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i12
  %.sroa.0.0.i11 = phi i1 [ false, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.i12 ], [ %switch.masked, %switch.lookup ], [ true, %_RNvMNtNtCs3oUPovFnLWP_4core4char7methodsc15is_alphanumeric.exit.thread.i13 ], [ false, %bb.q ], [ false, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 1, 11) i8 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer9backslash(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4191)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4191, !noalias !4192, !noundef !19 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4191, !noalias !4192, !noundef !19 ; 9 uses
  %i.l = sub nuw i64 %i.i, %i.k                   ; 4 uses
  %.not.i.i.i = icmp samesign ult i64 %i.l, 2
  br i1 %.not.i.i.i, label %bb.b, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !4191, !noalias !4192, !nonnull !19, !noundef !19 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  %i.o = load i16, ptr %i.n, align 1
  %i.p = icmp ne i16 31605, %i.o
  %i.q = zext i1 %i.p to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.q
  %i.r = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i, %bb.a
  %i.s = icmp eq i64 %i.k, %i.i
  br i1 %i.s, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %bb.j

bb.c:                                             ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.t = add nuw i64 %i.k, 2                      ; 4 uses
  store i64 %i.t, ptr %i.j, align 8, !alias.scope !4191, !noalias !4192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4193)
  %i.u = icmp eq i64 %i.i, %i.t
  br i1 %i.u, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit
  %i.v = phi i64 [ %5, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit ], [ %i.t, %bb.c ] ; 4 uses
  %i.w = sub nuw i64 %i.i, %i.v                   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !4194, !noalias !4195, !noundef !19 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = icmp samesign ne i64 %i.w, 1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = load i8, ptr %i.aa, align 1, !alias.scope !4194, !noalias !4195, !noundef !19
  %i.af = shl nuw nsw i32 %i.ac, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32               ; 2 uses
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = icmp samesign ugt i8 %i.y, -33
  br i1 %i.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ak = zext nneg i8 %i.y to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.am = icmp samesign ne i64 %i.w, 2
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i8, ptr %i.al, align 1, !alias.scope !4194, !noalias !4195, !noundef !19
  %i.ao = shl nuw nsw i32 %i.ah, 6
  %i.ap = and i8 %i.an, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq            ; 2 uses
  %i.as = shl nuw nsw i32 %i.ac, 12
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = icmp samesign ugt i8 %i.y, -17
  br i1 %i.au, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.aw = icmp samesign ne i64 %i.w, 3
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i8, ptr %i.av, align 1, !alias.scope !4194, !noalias !4195, !noundef !19
  %i.ay = shl nuw nsw i32 %i.ac, 18
  %i.az = and i32 %i.ay, 1835008
  %i.ba = shl nuw nsw i32 %i.ar, 6
  %i.bb = and i8 %i.ax, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.az
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i, %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i
  %.sroa.4.0.i.i.i = phi i32 [ %i.ak, %bb.d ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i ], [ %i.be, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i ] ; 9 uses
  %i.bf = add nsw i32 %.sroa.4.0.i.i.i, -48
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i32 %i.bf, 10
  %i.bg = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 64
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.i.i, 91
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.bg, i1 %i.bh, i1 %.sroa.0.0.i.i.i.i.i.i
  %i.bi = icmp samesign ugt i32 %.sroa.4.0.i.i.i, 96
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.i.i, 123
  %.sroa.02.0.i.i.i.i.i.i = select i1 %i.bi, i1 %i.bj, i1 %.sroa.01.0.i.i.i.i.i.i
  br i1 %.sroa.02.0.i.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit.i.i, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit.i.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.i.i, 128
  br i1 %i.bl, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.i.i, 2048
  br i1 %i.bm, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.i.i, 65536
  %..i.i = select i1 %i.bn, i64 3, i64 4
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit, %bb.c
  %i.bo = phi i64 [ %i.i, %bb.c ], [ %i.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit ], [ %i.v, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i ] ; 5 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i, %bb.h
  %.sroa.0.01.i.i = phi i64 [ %i.bs, %bb.h ], [ %i.t, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i ] ; 5 uses
  %.not.i.i = icmp ult i64 %.sroa.0.01.i.i, %i.i
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.01.i.i
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !4193, !noundef !19
  %i.br = icmp sgt i8 %i.bq, -65
  br i1 %i.br, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = add i64 %.sroa.0.01.i.i, -1             ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %.sroa.3.0.i.ph.i.a = phi i64 [ %.sroa.0.01.i.i, %bb.g ], [ 0, %bb.h ], [ %.sroa.0.01.i.i, %.lr.ph.i.i ]
  %1 = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 %.sroa.3.0.i.ph.i.a) ; 2 uses
  %2 = sub nuw i64 %i.bo, %1                      ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.m, i64 %1 ; 4 uses
  store ptr %3, ptr %i.f, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %2, ptr %4, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4196)
  %i.bu = icmp eq i64 %i.i, %i.bo
  br i1 %i.bu, label %bb.u, label %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner9eat_whileRcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.f, %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit.i.i
  %.sroa.3.0.i.ph.i = phi i64 [ %..i.i, %bb.f ], [ 2, %bb.e ], [ 1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6filterQNvMNtNtB5_4char7methodsc21is_ascii_alphanumericECs5PEMdK7bMAG_12typst_syntax.exit.i.i ]
  %5 = add i64 %.sroa.3.0.i.ph.i, %i.v            ; 3 uses
  store i64 %5, ptr %i.j, align 8, !alias.scope !4193
  %.not.i.i.i34 = icmp eq i64 %i.i, %5
  br i1 %.not.i.i.i34, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i._crit_edge.i, label %.lr.ph.i

_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i: ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bo
  %rhsc.i = load i8, ptr %i.bv, align 1, !noalias !4196
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.bw = icmp eq i8 %rhsc.fr.i, 125
  br i1 %i.bw, label %bb.y, label %bb.u

bb.j:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  %i.bx = load ptr, ptr %i.g, align 8, !alias.scope !4197, !nonnull !19, !noundef !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.k ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4198)
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !4198, !noalias !4199, !noundef !19 ; 8 uses
  %i.ca = icmp sgt i8 %i.bz, -1                   ; 2 uses
  br i1 %i.ca, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i35

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i35: ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.cc = and i8 %i.bz, 31
  %i.cd = zext nneg i8 %i.cc to i32               ; 3 uses
  %i.ce = icmp samesign ne i64 %i.l, 1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = load i8, ptr %i.cb, align 1, !alias.scope !4198, !noalias !4199, !noundef !19
  %i.cg = shl nuw nsw i32 %i.cd, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32               ; 2 uses
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.ck, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i38, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36

bb.k:                                             ; preds = %bb.j
  %i.cl = zext nneg i8 %i.bz to i32
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i38: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cn = icmp samesign ne i64 %i.l, 2
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = load i8, ptr %i.cm, align 1, !alias.scope !4198, !noalias !4199, !noundef !19
  %i.cp = shl nuw nsw i32 %i.ci, 6
  %i.cq = and i8 %i.co, 63
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = shl nuw nsw i32 %i.cd, 12
  %i.cu = or disjoint i32 %i.cs, %i.ct
  %i.cv = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i39, label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i39: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.cx = icmp samesign ne i64 %i.l, 3
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = load i8, ptr %i.cw, align 1, !alias.scope !4198, !noalias !4199, !noundef !19
  %i.cz = shl nuw nsw i32 %i.cd, 18
  %i.da = and i32 %i.cz, 1835008
  %i.db = shl nuw nsw i32 %i.cs, 6
  %i.dc = and i8 %i.cy, 63
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = or disjoint i32 %i.db, %i.dd
  %i.df = or disjoint i32 %i.de, %i.da
  br label %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36

_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i39, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i38, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i35
  %.sroa.4.0.i.i.i37 = phi i32 [ %i.cl, %bb.k ], [ %i.cj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i35 ], [ %i.df, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i39 ], [ %i.cu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i38 ] ; 8 uses
  switch i32 %.sroa.4.0.i.i.i37, label %bb.l [
    i32 9, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
    i32 32, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
    i32 13, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
    i32 12, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
    i32 11, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
    i32 10, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46
  ]

bb.l:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36
  %i.dg = icmp samesign ult i32 %.sroa.4.0.i.i.i37, 133
  br i1 %i.dg, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = lshr i32 %.sroa.4.0.i.i.i37, 8
  switch i32 %i.dh, label %.thread [
    i32 0, label %bb.p
    i32 22, label %bb.n
    i32 32, label %bb.q
    i32 48, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.di = icmp eq i32 %.sroa.4.0.i.i.i37, 5760
  %i.dj = zext i1 %i.di to i8
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.o:                                             ; preds = %bb.m
  %i.dk = icmp eq i32 %.sroa.4.0.i.i.i37, 12288
  %i.dl = zext i1 %i.dk to i8
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.p:                                             ; preds = %bb.m
  %i.dm = and i32 %.sroa.4.0.i.i.i37, 255
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noalias !4200, !noundef !19
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

bb.q:                                             ; preds = %bb.m
  %i.dq = and i32 %.sroa.4.0.i.i.i37, 255
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !4200, !noundef !19
  %i.du = lshr i8 %i.dt, 1
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs5PEMdK7bMAG_12typst_syntax.exit.i.i36
  %i.dv = icmp samesign ult i32 %.sroa.4.0.i.i.i37, 1114112
  tail call void @llvm.assume(i1 %i.dv)
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.dl, %bb.o ], [ %i.dp, %bb.p ], [ %i.dj, %bb.n ], [ %i.du, %bb.q ]
  %i.dw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.dw, label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit, label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit
  br i1 %i.ca, label %.thread51, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i: ; preds = %.thread
  %i.dx = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.dy = and i8 %i.bz, 31
  %i.dz = zext nneg i8 %i.dy to i32               ; 3 uses
  %i.ea = add nuw nsw i64 %i.k, 1
  %i.eb = icmp samesign ne i64 %i.ea, %i.i
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = load i8, ptr %i.dx, align 1, !noalias !4201, !noundef !19
  %i.ed = shl nuw nsw i32 %i.dz, 6
  %i.ee = and i8 %i.ec, 63
  %i.ef = zext nneg i8 %i.ee to i32               ; 2 uses
  %i.eg = or disjoint i32 %i.ed, %i.ef
  %i.eh = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.eh, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.ej = add nuw nsw i64 %i.k, 2
  %i.ek = icmp samesign ne i64 %i.ej, %i.i
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = load i8, ptr %i.ei, align 1, !noalias !4201, !noundef !19
  %i.em = shl nuw nsw i32 %i.ef, 6
  %i.en = and i8 %i.el, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo            ; 2 uses
  %i.eq = shl nuw nsw i32 %i.dz, 12
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.es, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, label %bb.r

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.eu = add nuw nsw i64 %i.k, 3
  %i.ev = icmp samesign ne i64 %i.eu, %i.i
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = load i8, ptr %i.et, align 1, !noalias !4201, !noundef !19
  %i.ex = shl nuw nsw i32 %i.dz, 18
  %i.ey = and i32 %i.ex, 1835008
  %i.ez = shl nuw nsw i32 %i.ep, 6
  %i.fa = and i8 %i.ew, 63
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = or disjoint i32 %i.fc, %i.ey
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i
  %spec.select.i.ph = phi i32 [ %i.er, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i ], [ %i.fd, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i ], [ %i.eg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i ] ; 4 uses
  %i.fe = icmp samesign ult i32 %spec.select.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = icmp samesign ult i32 %spec.select.i.ph, 128
  br i1 %i.ff, label %.thread51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = icmp samesign ult i32 %spec.select.i.ph, 2048
  br i1 %i.fg, label %.thread51, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fh = icmp samesign ult i32 %spec.select.i.ph, 65536
  %. = select i1 %i.fh, i64 3, i64 4
  br label %.thread51

.thread51:                                        ; preds = %.thread, %bb.s, %bb.t, %bb.r
  %.sroa.028.0 = phi i64 [ 2, %bb.s ], [ %., %bb.t ], [ 1, %bb.r ], [ 1, %.thread ]
  %i.fi = add i64 %.sroa.028.0, %i.k
  store i64 %i.fi, ptr %i.j, align 8
  br label %_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit

_RNvMCsjRrCJiNqTDc_8unscannyNtB2_7Scanner4peek.exit: ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46, %.thread51, %bb.b, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit, %bb.ak
  %.sroa.0.0 = phi i8 [ %.sroa.0.1, %bb.ak ], [ 8, %bb.b ], [ 8, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit ], [ 10, %.thread51 ], [ 8, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atcNvMNtNtCs3oUPovFnLWP_4core4char7methodsc13is_whitespaceECs5PEMdK7bMAG_12typst_syntax.exit.thread46 ]
  ret i8 %.sroa.0.0

bb.u:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4203
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !noalias !4203
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %i.fj, align 8, !noalias !4203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4204)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef range(i64 0, -9223372036854775808) 32)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i unwind label %bb.v, !noalias !4203

bb.v:                                             ; preds = %bb.u
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i = load ptr, ptr %i.b, align 8, !noalias !4203, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i.i.i) #59
          to label %common.resume unwind label %bb.w, !noalias !4203

bb.w:                                             ; preds = %bb.v
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !4203
  unreachable

common.resume.sink.split:                         ; preds = %bb.ap, %bb.x
  %common.resume.op.ph = phi { ptr, i32 } [ %i.fo, %bb.x ], [ %i.kf, %bb.ap ]
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !19
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !19
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.am, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.fk, %bb.v ], [ %i.ke, %bb.am ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i: ; preds = %bb.u
  %i.fm = load ptr, ptr %i.b, align 8, !alias.scope !4204, !noalias !4205, !nonnull !19, !noundef !19 ; 3 uses
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.fj, align 8, !alias.scope !4204, !noalias !4205 ; 2 uses
  %scevgep.i.i.i.i.i.i = getelementptr nuw i8, ptr %i.fm, i64 %.promoted.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %scevgep.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) @322, i64 range(i64 0, -9223372036854775808) 32, i1 false), !noalias !4206
  %i.fn = add i64 %.promoted.i.i.i.i.i.i, 32      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4203
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsakL8LGkl72C_4ecow6string9EcoStringINtNtB12_3vec6EcoVecBY_EEEECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit unwind label %bb.x, !noalias !4207

bb.x:                                             ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.fm, ptr %0, align 8, !alias.scope !4202, !noalias !4207
  %.sroa.01.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fn, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4202, !noalias !4207
  br label %common.resume.sink.split

_RINvMs_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer5errorReEB7_.exit: ; preds = %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i
  store ptr %i.fm, ptr %0, align 8, !alias.scope !4202, !noalias !4207
  %.sroa.01.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fn, ptr %.sroa.01.sroa.5.0..sroa_idx14.i, align 8, !alias.scope !4202, !noalias !4207
  %.sroa.52.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.52.0..sroa_idx3.i, align 8, !alias.scope !4202, !noalias !4207
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx5.i, align 8, !alias.scope !4202, !noalias !4207
  br label %bb.ak

bb.y:                                             ; preds = %_RNvXs2_CsjRrCJiNqTDc_8unscannycINtNtB5_6sealed6SealeduE7matches.exit.i
  %i.fp = add i64 %i.bo, 1
  store i64 %i.fp, ptr %i.j, align 8, !alias.scope !4196
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.fq = load i8, ptr %3, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  switch i8 %i.fq, label %bb.aa [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.y
  %.pr.i = load i8, ptr %3, align 1, !alias.scope !4208
  br label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split.i, %bb.z
  %i.fr = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.fq, %bb.z ]
  %cond.i = icmp eq i8 %i.fr, 43                  ; 2 uses
  %i.fs = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %2, %i.fs           ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.ft = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.ft, label %.preheader.i, label %.preheader64.split.i.preheader

.preheader.i:                                     ; preds = %bb.aa
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.i

.preheader64.split.i:                             ; preds = %bb.ab
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i94, i64 1
  %i.fv = add nsw i64 %.sroa.15.1.i93, -1         ; 2 uses
  %.not55.i = icmp eq i64 %i.fv, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader64.split.i.preheader

.loopexit.i:                                      ; preds = %.preheader64.split.i, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.jy, %bb.aj ], [ 0, %.preheader.i ], [ %spec.select82.i, %bb.ac ], [ %i.hk, %bb.ad ], [ %i.hv, %bb.ae ], [ %i.ig, %bb.af ], [ %i.ir, %bb.ag ], [ %i.jc, %bb.ah ], [ %i.jn, %bb.ai ], [ %i.gi, %.preheader64.split.i ]
  %i.fw = zext i32 %.sroa.045.1.i to i64
  %i.fx = shl nuw i64 %i.fw, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.preheader64.split.i.preheader:                   ; preds = %bb.aa, %.preheader64.split.i
  %.sroa.0.1.i94 = phi ptr [ %i.fu, %.preheader64.split.i ], [ %.sroa.0.0.i, %bb.aa ] ; 3 uses
  %.sroa.15.1.i93 = phi i64 [ %i.fv, %.preheader64.split.i ], [ %.sroa.15.0.i, %bb.aa ]
  %.sroa.045.0.i92 = phi i32 [ %i.gi, %.preheader64.split.i ], [ 0, %bb.aa ] ; 2 uses
  %i.fy = icmp ugt i32 %.sroa.045.0.i92, 268435455
  br i1 %i.fy, label %.split.us.i, label %bb.ab, !prof !23

bb.ab:                                            ; preds = %.preheader64.split.i.preheader
  %i.fz = shl nuw i32 %.sroa.045.0.i92, 4         ; 2 uses
  %i.ga = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.gb = zext i8 %i.ga to i32                    ; 2 uses
  %i.gc = icmp ugt i8 %i.ga, 57
  %i.gd = add nsw i32 %i.gb, -65
  %i.ge = and i32 %i.gd, -33
  %i.gf = add nuw nsw i32 %i.ge, 10
  %i.gg = add nsw i32 %i.gb, -48
  %spec.select81.i = select i1 %i.gc, i32 %i.gf, i32 %i.gg ; 2 uses
  %i.gh = icmp ugt i32 %spec.select81.i, 15
  %i.gi = add i32 %spec.select81.i, %i.fz         ; 3 uses
  %i.gj = icmp ult i32 %i.gi, %i.fz
  %or.cond = select i1 %i.gh, i1 true, i1 %i.gj, !prof !32
  br i1 %or.cond, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread, label %.preheader64.split.i, !prof !32

.split.us.i:                                      ; preds = %.preheader64.split.i.preheader
  %i.gk = load i8, ptr %.sroa.0.1.i94, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = icmp ugt i8 %i.gk, 57
  %i.gn = add nsw i32 %i.gl, -65
  %i.go = and i32 %i.gn, -34
  %i.gp = add nuw nsw i32 %i.go, 10
  %i.gq = add nsw i32 %i.gl, -48
  %.sroa.02.0.i58.i = select i1 %i.gm, i32 %i.gp, i32 %i.gq
  %i.gr = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i40 = select i1 %i.gr, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit

.lr.ph.split.i:                                   ; preds = %.preheader.i
  %i.gs = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.gt = zext i8 %i.gs to i32                    ; 2 uses
  %i.gu = icmp ugt i8 %i.gs, 57
  %i.gv = add nsw i32 %i.gt, -65
  %i.gw = and i32 %i.gv, -33
  %i.gx = add nuw nsw i32 %i.gw, 10
  %i.gy = add nsw i32 %i.gt, -48
  %spec.select82.i = select i1 %i.gu, i32 %i.gx, i32 %i.gy ; 3 uses
  %i.gz = icmp ult i32 %spec.select82.i, 16
  br i1 %i.gz, label %bb.ac, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ac:                                            ; preds = %.lr.ph.split.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %i.hd = icmp ugt i8 %i.hb, 57
  %i.he = add nsw i32 %i.hc, -65
  %i.hf = and i32 %i.he, -33
  %i.hg = add nuw nsw i32 %i.hf, 10
  %i.hh = add nsw i32 %i.hc, -48
  %spec.select82.i.1 = select i1 %i.hd, i32 %i.hg, i32 %i.hh ; 2 uses
  %i.hi = icmp ult i32 %spec.select82.i.1, 16
  br i1 %i.hi, label %bb.ad, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ad:                                            ; preds = %.lr.ph.split.i.1
  %i.hj = shl nuw nsw i32 %spec.select82.i, 4
  %i.hk = or disjoint i32 %spec.select82.i.1, %i.hj ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %bb.ad
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = icmp ugt i8 %i.hm, 57
  %i.hp = add nsw i32 %i.hn, -65
  %i.hq = and i32 %i.hp, -33
  %i.hr = add nuw nsw i32 %i.hq, 10
  %i.hs = add nsw i32 %i.hn, -48
  %spec.select82.i.2 = select i1 %i.ho, i32 %i.hr, i32 %i.hs ; 2 uses
  %i.ht = icmp ult i32 %spec.select82.i.2, 16
  br i1 %i.ht, label %bb.ae, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ae:                                            ; preds = %.lr.ph.split.i.2
  %i.hu = shl nuw nsw i32 %i.hk, 4
  %i.hv = or disjoint i32 %spec.select82.i.2, %i.hu ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.hy = zext i8 %i.hx to i32                    ; 2 uses
  %i.hz = icmp ugt i8 %i.hx, 57
  %i.ia = add nsw i32 %i.hy, -65
  %i.ib = and i32 %i.ia, -33
  %i.ic = add nuw nsw i32 %i.ib, 10
  %i.id = add nsw i32 %i.hy, -48
  %spec.select82.i.3 = select i1 %i.hz, i32 %i.ic, i32 %i.id ; 2 uses
  %i.ie = icmp ult i32 %spec.select82.i.3, 16
  br i1 %i.ie, label %bb.af, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.af:                                            ; preds = %.lr.ph.split.i.3
  %i.if = shl nuw nsw i32 %i.hv, 4
  %i.ig = or disjoint i32 %spec.select82.i.3, %i.if ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.ii = load i8, ptr %i.ih, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.ij = zext i8 %i.ii to i32                    ; 2 uses
  %i.ik = icmp ugt i8 %i.ii, 57
  %i.il = add nsw i32 %i.ij, -65
  %i.im = and i32 %i.il, -33
  %i.in = add nuw nsw i32 %i.im, 10
  %i.io = add nsw i32 %i.ij, -48
  %spec.select82.i.4 = select i1 %i.ik, i32 %i.in, i32 %i.io ; 2 uses
  %i.ip = icmp ult i32 %spec.select82.i.4, 16
  br i1 %i.ip, label %bb.ag, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ag:                                            ; preds = %.lr.ph.split.i.4
  %i.iq = shl i32 %i.ig, 4
  %i.ir = or disjoint i32 %spec.select82.i.4, %i.iq ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %bb.ag
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.iu = zext i8 %i.it to i32                    ; 2 uses
  %i.iv = icmp ugt i8 %i.it, 57
  %i.iw = add nsw i32 %i.iu, -65
  %i.ix = and i32 %i.iw, -33
  %i.iy = add nuw nsw i32 %i.ix, 10
  %i.iz = add nsw i32 %i.iu, -48
  %spec.select82.i.5 = select i1 %i.iv, i32 %i.iy, i32 %i.iz ; 2 uses
  %i.ja = icmp ult i32 %spec.select82.i.5, 16
  br i1 %i.ja, label %bb.ah, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ah:                                            ; preds = %.lr.ph.split.i.5
  %i.jb = shl i32 %i.ir, 4
  %i.jc = or disjoint i32 %spec.select82.i.5, %i.jb ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.split.i.6

.lr.ph.split.i.6:                                 ; preds = %bb.ah
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.jf = zext i8 %i.je to i32                    ; 2 uses
  %i.jg = icmp ugt i8 %i.je, 57
  %i.jh = add nsw i32 %i.jf, -65
  %i.ji = and i32 %i.jh, -33
  %i.jj = add nuw nsw i32 %i.ji, 10
  %i.jk = add nsw i32 %i.jf, -48
  %spec.select82.i.6 = select i1 %i.jg, i32 %i.jj, i32 %i.jk ; 2 uses
  %i.jl = icmp ult i32 %spec.select82.i.6, 16
  br i1 %i.jl, label %bb.ai, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.ai:                                            ; preds = %.lr.ph.split.i.6
  %i.jm = shl i32 %i.jc, 4
  %i.jn = or disjoint i32 %spec.select82.i.6, %i.jm ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %bb.ai
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.jp = load i8, ptr %i.jo, align 1, !alias.scope !4208, !noundef !19 ; 2 uses
  %i.jq = zext i8 %i.jp to i32                    ; 2 uses
  %i.jr = icmp ugt i8 %i.jp, 57
  %i.js = add nsw i32 %i.jq, -65
  %i.jt = and i32 %i.js, -33
  %i.ju = add nuw nsw i32 %i.jt, 10
  %i.jv = add nsw i32 %i.jq, -48
  %spec.select82.i.7 = select i1 %i.jr, i32 %i.ju, i32 %i.jv ; 2 uses
  %i.jw = icmp ult i32 %spec.select82.i.7, 16
  br i1 %i.jw, label %bb.aj, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread

bb.aj:                                            ; preds = %.lr.ph.split.i.7
  %i.jx = shl i32 %i.jn, 4
end_hunk_5
begin_hunk_6_@_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax5linesINtB4_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE4edit:bb.a

bb.ai:                                            ; preds = %bb.ae, %bb.ab
  %i.ee = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %.val21 release, align 8, !noalias !6390
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i: ; preds = %bb.z, %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE17clone_from_ref_inBL_.exit.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !6374
  br label %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit

_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit: ; preds = %bb.aa, %bb.af, %bb.ag, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i
  %i.ef = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ag ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.ah ], [ %.val21, %bb.aa ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtBG_6string6StringEEEB1e_.exit.i ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 40 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 56 ; 17 uses
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6393, !noundef !19 ; 9 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp ugt i64 %2, %i.ej
  br i1 %i.el, label %bb.aj, label %bb.ak, !prof !23

bb.aj:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @544) #62, !noalias !6394
  unreachable

bb.ak:                                            ; preds = %_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs5PEMdK7bMAG_12typst_syntax5lines10LinesInnerNtNtB7_6string6StringEE8make_mutBL_.exit
  %i.em = icmp ugt i64 %1, %2
  br i1 %i.em, label %bb.al, label %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i, !prof !23

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @545) #62, !noalias !6394
  unreachable

_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %bb.ak
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 48 ; 9 uses
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6393, !nonnull !19, !noundef !19 ; 7 uses
  %i.ep = icmp eq i64 %1, 0                       ; 2 uses
  br i1 %i.ep, label %.thread.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %.not.i24 = icmp samesign ult i64 %1, %i.ej
  br i1 %.not.i24, label %bb.an, label %.split18.i

.thread.i:                                        ; preds = %_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit.i
  %i.eq = icmp eq i64 %2, 0
  br i1 %i.eq, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, label %.split18.i

bb.an:                                            ; preds = %bb.am
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %1
  %i.es = load i8, ptr %i.er, align 1, !noalias !6395, !noundef !19
  %i.et = icmp sgt i8 %i.es, -65
  br i1 %i.et, label %.split18.i, label %bb.ao, !prof !22

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 91 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6396
  unreachable

.split18.i:                                       ; preds = %bb.an, %.thread.i, %bb.am
  %.not6.i = icmp samesign ult i64 %2, %i.ej
  br i1 %.not6.i, label %bb.bf, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %bb.bf, %.split18.i
  store i64 %1, ptr %i.ei, align 8, !alias.scope !6397, !noalias !6398
  %i.eu = sub nuw nsw i64 %i.ej, %2               ; 5 uses
  %.sroa.46.0.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %bb.aq

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i: ; preds = %.thread.i
  store i64 0, ptr %i.ei, align 8, !alias.scope !6399, !noalias !6400
  %.sroa.46.077.i = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.ew = icmp eq i64 %i.ej, 0
  br i1 %i.ew, label %bb.ap, label %.loopexit.i.i.i

bb.ap:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.sroa.46.084.i = phi ptr [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ], [ %.sroa.46.0.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ] ; 2 uses
  %.sroa.46.084.i174 = ptrtoaddr ptr %.sroa.46.084.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  %i.ex = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6403, !noalias !6404, !noundef !19
  %i.ey = sub nsw i64 %i.ex, %1
  %i.ez = icmp ugt i64 %4, %i.ey
  br i1 %i.ez, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, !prof !23

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i: ; preds = %bb.ap
  tail call fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %1, i64 noundef %4, i64 noundef 1, i64 noundef 1), !noalias !6405
  %.pre.i.i.i.i.i = load i64, ptr %i.ei, align 8, !alias.scope !6406, !noalias !6404
  %.pre51.i = load ptr, ptr %i.en, align 8, !alias.scope !6406, !noalias !6404
  br label %iter.check

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i: ; preds = %bb.ap
  %.not9.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %4, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i
  %i.fa = phi i64 [ %.pre.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 5 uses
  %i.fb = phi ptr [ %.pre51.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.thread.i ], [ %i.eo, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ] ; 3 uses
  %i.fc = sub i64 %.sroa.46.084.i174, %i.a        ; 7 uses
  %min.iters.check176 = icmp ult i64 %i.fc, 8
  br i1 %min.iters.check176, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check177 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph178

vector.ph178:                                     ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %i.fc, 24
  %n.vec179 = and i64 %i.fc, -32                  ; 5 uses
  %i.fe = add i64 %i.fa, %n.vec179                ; 2 uses
  %i.ff = getelementptr i8, ptr %3, i64 %n.vec179
  %i.fg = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next185, %vector.body180 ] ; 3 uses
  %next.gep182 = getelementptr i8, ptr %3, i64 %index181 ; 2 uses
  %i.fh = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <16 x i8>, ptr %next.gep182, align 1, !alias.scope !6392, !noalias !6407
  %wide.load184 = load <16 x i8>, ptr %i.fh, align 1, !alias.scope !6392, !noalias !6407
  %i.fi = getelementptr i8, ptr %i.fg, i64 %index181 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store <16 x i8> %wide.load183, ptr %i.fi, align 1, !noalias !6408
  store <16 x i8> %wide.load184, ptr %i.fj, align 1, !noalias !6408
  %index.next185 = add nuw i64 %index181, 32      ; 2 uses
  %i.fk = icmp eq i64 %index.next185, %n.vec179
  br i1 %i.fk, label %middle.block186, label %vector.body180, !llvm.loop !6295

middle.block186:                                  ; preds = %vector.body180
  %cmp.n = icmp eq i64 %i.fc, %n.vec179
  br i1 %cmp.n, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block186
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !6410

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec179, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %i.fc, -8                   ; 4 uses
  %i.fl = add i64 %i.fa, %n.vec189                ; 2 uses
  %i.fm = getelementptr i8, ptr %3, i64 %n.vec189
  %i.fn = getelementptr i8, ptr %i.fb, i64 %i.fa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index190 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next193, %vec.epilog.vector.body ] ; 3 uses
  %next.gep191 = getelementptr i8, ptr %3, i64 %index190
  %wide.load192 = load <8 x i8>, ptr %next.gep191, align 1, !alias.scope !6392, !noalias !6407
  %i.fo = getelementptr i8, ptr %i.fn, i64 %index190
  store <8 x i8> %wide.load192, ptr %i.fo, align 1, !noalias !6408
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next193, %n.vec189
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6296

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n194 = icmp eq i64 %i.fc, %n.vec189
  br i1 %cmp.n194, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.fa, %iter.check ], [ %i.fe, %vec.epilog.iter.check ], [ %i.fl, %vec.epilog.middle.block ]
  %.ph197 = phi ptr [ %3, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fq = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fr = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph197, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fr, align 1, !alias.scope !6392, !noalias !6407, !noundef !19
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  store i8 %i.ft, ptr %i.fu, align 1, !noalias !6408
  %i.fv = add i64 %i.fq, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fs, %.sroa.46.084.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !6297

bb.aq:                                            ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %.not6.i.i.i.i = icmp samesign ult i64 %1, %2
  br i1 %.not6.i.i.i.i, label %.lr.ph.i.i.i.preheader.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.aq
  %.not.not.i.i.i29.i = icmp samesign eq i64 %4, 0
  br i1 %.not.not.i.i.i29.i, label %.loopexit.i.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.preheader.i
  %i.fw = xor i64 %1, -1
  %i.fx = add i64 %2, %i.fw
  %i.fy = add i64 %4, -1
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 %i.fy)
  %i.ga = add i64 %i.fz, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ga, 33
  br i1 %min.iters.check, label %.lr.ph.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.gb = and i64 %i.ga, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb
  %n.vec = sub i64 %i.ga, %i.gd                   ; 3 uses
  %i.ge = getelementptr i8, ptr %3, i64 %n.vec
  %i.gf = add i64 %1, %n.vec
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.gh = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !alias.scope !6392, !noalias !6411
  %wide.load144 = load <16 x i8>, ptr %i.gh, align 1, !alias.scope !6392, !noalias !6411
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <16 x i8> %wide.load, ptr %i.gi, align 1, !noalias !6412
  store <16 x i8> %wide.load144, ptr %i.gj, align 1, !noalias !6412
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %.lr.ph.i.preheader208, label %vector.body, !llvm.loop !6302

.lr.ph.i.preheader208:                            ; preds = %vector.body, %.lr.ph.i.preheader
  %.ph209 = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.ge, %vector.body ]
  %.sroa.01.03.i.i.i30.i.ph = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.gf, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i.i.i.i25:                                 ; preds = %.lr.ph.i
  %.not.not.i.i.i.i = icmp eq ptr %i.gm, %.sroa.46.0.i
  br i1 %.not.not.i.i.i.i, label %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, label %.lr.ph.i, !llvm.loop !6303

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader208, %.lr.ph.i.i.i.i25
  %i.gl = phi ptr [ %i.gm, %.lr.ph.i.i.i.i25 ], [ %.ph209, %.lr.ph.i.preheader208 ] ; 2 uses
  %.sroa.01.03.i.i.i30.i = phi i64 [ %i.go, %.lr.ph.i.i.i.i25 ], [ %.sroa.01.03.i.i.i30.i.ph, %.lr.ph.i.preheader208 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1 ; 3 uses
  %i.gn = load i8, ptr %i.gl, align 1, !alias.scope !6392, !noalias !6411, !noundef !19
  %i.go = add nuw i64 %.sroa.01.03.i.i.i30.i, 1   ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.01.03.i.i.i30.i
  store i8 %i.gn, ptr %i.gp, align 1, !noalias !6412
  %exitcond.not.i.i.i.i = icmp eq i64 %i.go, %2
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.loopexit.i, label %.lr.ph.i.i.i.i25

.loopexit.i.i.loopexit.i:                         ; preds = %.lr.ph.i
  store i64 %2, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6413
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.i.loopexit.i, %bb.aq, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i
  %.sroa.33.07890.i = phi i64 [ %i.eu, %bb.aq ], [ %i.eu, %.loopexit.i.i.loopexit.i ], [ %i.ej, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 9 uses
  %.sroa.46.08389.i = phi ptr [ %.sroa.46.0.i, %bb.aq ], [ %.sroa.46.0.i, %.loopexit.i.i.loopexit.i ], [ %.sroa.46.077.i, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 5 uses
  %i.gq = phi i64 [ %1, %bb.aq ], [ %2, %.loopexit.i.i.loopexit.i ], [ 0, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 2 uses
  %.val.i.i.i = phi ptr [ %3, %bb.aq ], [ %i.gm, %.loopexit.i.i.loopexit.i ], [ %3, %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.thread.i ] ; 7 uses
  %i.gr = ptrtoint ptr %.sroa.46.08389.i to i64   ; 5 uses
  %i.gs = ptrtoint ptr %.val.i.i.i to i64         ; 6 uses
  %i.gt = sub nuw i64 %i.gr, %i.gs                ; 4 uses
  %.not.i.i.i = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i
  br i1 %.not.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, label %bb.as

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i: ; preds = %.lr.ph36.i
  store i64 %i.hh, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  %.pre.i.i.i = ptrtoint ptr %i.if to i64         ; 2 uses
  %.pre11.i.i = sub nuw i64 %i.gr, %.pre.i.i.i
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i
  %.pre-phi.i.i = phi i64 [ %i.gt, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre11.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ] ; 3 uses
  %i.gu = phi i64 [ %.promoted33.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.pre-phi.i.i.i = phi i64 [ %i.gs, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %.pre.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.val.i.i.i33.i.i.i = phi ptr [ %.val.i.i.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i ], [ %i.if, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp slt i64 %.pre-phi.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ar, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, !prof !6415

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i, %.loopexit.i.i.i
  %i.gv = phi ptr [ %i.hf, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.eo, %.loopexit.i.i.i ]
  %.sroa.26.1.i = phi i64 [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %2, %.loopexit.i.i.i ] ; 8 uses
  %.val.i.i.i33.i41.i.i = phi ptr [ %.val.i.i.i33.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %.sroa.46.08389.i, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi.i40.i.i = phi i64 [ %.pre-phi.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gs, %.loopexit.i.i.i ]
  %i.gw = phi i64 [ %i.gu, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ %i.gq, %.loopexit.i.i.i ] ; 2 uses
  %.pre-phi38.i.i = phi i64 [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ], [ 0, %.loopexit.i.i.i ] ; 11 uses
  %i.gx = icmp eq ptr %.sroa.46.08389.i, %.val.i.i.i33.i41.i.i
  br i1 %i.gx, label %.loopexit.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !6416
  %i.gy = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, 9) 1) #60, !noalias !6416 ; 10 uses
  %i.gz = ptrtoaddr ptr %i.gy to i64
  %i.ha = icmp eq ptr %i.gy, null
  br i1 %i.ha, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i
  %.sroa.26.3.i = phi i64 [ %.sroa.26.1.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %i.hh, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.pre-phi39.i.i = phi i64 [ %.pre-phi38.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.pre-phi.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.pre-phi39.i.i) #58
          to label %.noexc1.i.i unwind label %.split.i, !noalias !6417

.noexc1.i.i:                                      ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.loopexit.i.i.i
  %i.hb = add nuw i64 %.sroa.33.07890.i, %2       ; 2 uses
  %i.hc = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6391, !noalias !6418, !noundef !19
  %i.hd = sub i64 %i.hc, %i.hb
  %i.he = icmp ugt i64 %i.gt, %i.hd
  br i1 %i.he, label %bb.at, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, !prof !23

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.hb, i64 noundef %i.gt, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i unwind label %.split.i, !noalias !6419

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i: ; preds = %bb.at
  %.pre.i = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6418
  %.pre47.i = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i, %bb.as
  %.promoted33.i = phi i64 [ %.pre47.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.gq, %bb.as ] ; 8 uses
  %i.hf = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i_crit_edge.i ], [ %i.eo, %bb.as ] ; 6 uses
  %i.hg = ptrtoaddr ptr %i.hf to i64
  %i.hh = add i64 %i.gt, %2                       ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 %2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull align 1 %i.hi, i64 %.sroa.33.07890.i, i1 false), !noalias !6420
  %.not6.i35.i.i.i = icmp ult i64 %.promoted33.i, %i.hh
  br i1 %.not6.i35.i.i.i, label %.lr.ph36.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.i.i

.lr.ph36.i.preheader:                             ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i
  %i.hk = add i64 %2, %i.gr
  %i.hl = xor i64 %.promoted33.i, -1
  %i.hm = add i64 %i.hk, %i.hl
  %i.hn = sub i64 %i.hm, %i.gs
  %i.ho = xor i64 %i.gs, -1
  %i.hp = add i64 %i.ho, %i.gr
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.hn, i64 %i.hp)
  %i.hr = add i64 %i.hq, 1                        ; 3 uses
  %min.iters.check147 = icmp ult i64 %i.hr, 33
  br i1 %min.iters.check147, label %.lr.ph36.i.preheader202, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph36.i.preheader
  %i.hs = add i64 %.promoted33.i, %i.hg
  %i.ht = sub i64 %i.gs, %i.hs
  %diff.check = icmp ugt i64 %i.ht, -32
  br i1 %diff.check, label %.lr.ph36.i.preheader202, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck
  %i.hu = and i64 %i.hr, 31                       ; 2 uses
  %i.hv = icmp eq i64 %i.hu, 0
  %i.hw = select i1 %i.hv, i64 32, i64 %i.hu
  %n.vec149 = sub i64 %i.hr, %i.hw                ; 3 uses
  %i.hx = getelementptr i8, ptr %.val.i.i.i, i64 %n.vec149
  %i.hy = add i64 %.promoted33.i, %n.vec149
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.promoted33.i
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body150 ] ; 3 uses
  %next.gep152 = getelementptr i8, ptr %.val.i.i.i, i64 %index151 ; 2 uses
  %i.ia = getelementptr i8, ptr %next.gep152, i64 16
  %wide.load153 = load <16 x i8>, ptr %next.gep152, align 1, !alias.scope !6392, !noalias !6421
  %wide.load154 = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !6392, !noalias !6421
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 %index151 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <16 x i8> %wide.load153, ptr %i.ib, align 1, !noalias !6422
  store <16 x i8> %wide.load154, ptr %i.ic, align 1, !noalias !6422
  %index.next155 = add nuw i64 %index151, 32      ; 2 uses
  %i.id = icmp eq i64 %index.next155, %n.vec149
  br i1 %i.id, label %.lr.ph36.i.preheader202, label %vector.body150, !llvm.loop !6318

.lr.ph36.i.preheader202:                          ; preds = %vector.body150, %vector.memcheck, %.lr.ph36.i.preheader
  %.ph203 = phi ptr [ %.val.i.i.i, %vector.memcheck ], [ %.val.i.i.i, %.lr.ph36.i.preheader ], [ %i.hx, %vector.body150 ]
  %.sroa.01.03.i39.i.i35.i.ph = phi i64 [ %.promoted33.i, %vector.memcheck ], [ %.promoted33.i, %.lr.ph36.i.preheader ], [ %i.hy, %vector.body150 ]
  br label %.lr.ph36.i

.lr.ph.i37.i.i.i:                                 ; preds = %.lr.ph36.i
  %.not.not.i40.i.i.i = icmp eq ptr %i.if, %.sroa.46.08389.i
  br i1 %.not.not.i40.i.i.i, label %.loopexit.i.i.loopexit, label %.lr.ph36.i, !llvm.loop !6319

.lr.ph36.i:                                       ; preds = %.lr.ph36.i.preheader202, %.lr.ph.i37.i.i.i
  %i.ie = phi ptr [ %i.if, %.lr.ph.i37.i.i.i ], [ %.ph203, %.lr.ph36.i.preheader202 ] ; 2 uses
  %.sroa.01.03.i39.i.i35.i = phi i64 [ %i.ih, %.lr.ph.i37.i.i.i ], [ %.sroa.01.03.i39.i.i35.i.ph, %.lr.ph36.i.preheader202 ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1 ; 4 uses
  %i.ig = load i8, ptr %i.ie, align 1, !alias.scope !6392, !noalias !6421, !noundef !19
  %i.ih = add nuw i64 %.sroa.01.03.i39.i.i35.i, 1 ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hf, i64 %.sroa.01.03.i39.i.i35.i
  store i8 %i.ig, ptr %i.ii, align 1, !noalias !6422
  %exitcond.not.i41.i.i.i = icmp eq i64 %i.ih, %i.hh
  br i1 %exitcond.not.i41.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.loopexit.i.i.i, label %.lr.ph.i37.i.i.i

bb.au:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gy, ptr align 1 %.val.i.i.i33.i41.i.i, i64 %.pre-phi38.i.i, i1 false), !noalias !6423
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.pre-phi38.i.i
  %.not16.i.i.i = icmp eq i64 %.pre-phi.i40.i.i, %i.gr
  br i1 %.not16.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.av

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i: ; preds = %bb.ay, %.lr.ph.i47.i.i.i, %bb.ax, %bb.au
  %.pre.i.i = phi i64 [ %i.gw, %bb.au ], [ %i.iu, %bb.ax ], [ %i.jq, %.lr.ph.i47.i.i.i ], [ %i.ir, %bb.ay ]
  %i.ik = phi i64 [ %.sroa.26.1.i, %bb.au ], [ %i.ir, %bb.ax ], [ %i.ir, %.lr.ph.i47.i.i.i ], [ %i.ir, %bb.ay ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6424
  br label %.loopexit.i.i

bb.av:                                            ; preds = %bb.au
  %i.il = add i64 %.sroa.26.1.i, %.sroa.33.07890.i ; 2 uses
  %i.im = load i64, ptr %i.eh, align 8, !range !33, !alias.scope !6391, !noalias !6425, !noundef !19
  %i.in = sub i64 %i.im, %i.il
  %i.io = icmp ugt i64 %.pre-phi38.i.i, %i.in
  br i1 %i.io, label %bb.aw, label %bb.ax, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eh, i64 noundef %i.il, i64 noundef %.pre-phi38.i.i, i64 noundef 1, i64 noundef 1)
          to label %._crit_edge.i unwind label %bb.az, !noalias !6426

._crit_edge.i:                                    ; preds = %bb.aw
  %.pre48.i = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6425
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i, %bb.av
  %i.ip = phi ptr [ %.pre48.i, %._crit_edge.i ], [ %i.gv, %bb.av ] ; 5 uses
  %i.iq = ptrtoaddr ptr %i.ip to i64
  %i.ir = add i64 %.pre-phi38.i.i, %.sroa.26.1.i  ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 %.sroa.26.1.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ir
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.it, ptr nonnull align 1 %i.is, i64 %.sroa.33.07890.i, i1 false), !noalias !6427
  %i.iu = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428, !noundef !19 ; 9 uses
  %.not6.i45.i.i.i = icmp ult i64 %i.iu, %i.ir
  br i1 %.not6.i45.i.i.i, label %.lr.ph.i47.i.i.i.preheader, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i

.lr.ph.i47.i.i.i.preheader:                       ; preds = %bb.ax
  %i.iv = add i64 %.pre-phi38.i.i, %.sroa.26.1.i
  %i.iw = xor i64 %i.iu, -1
  %i.ix = add i64 %i.iv, %i.iw
  %i.iy = tail call i64 @llvm.umin.i64(i64 %.pre-phi38.i.i, i64 %i.ix) ; 2 uses
  %i.iz = add nuw i64 %i.iy, 1                    ; 2 uses
  %min.iters.check162 = icmp samesign ult i64 %i.iy, 8
  br i1 %min.iters.check162, label %.lr.ph.i47.i.i.i.preheader198, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i47.i.i.i.preheader
  %i.ja = add i64 %i.iu, %i.iq
  %i.jb = sub i64 %i.gz, %i.ja
  %diff.check160 = icmp ugt i64 %i.jb, -4
  br i1 %diff.check160, label %.lr.ph.i47.i.i.i.preheader198, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck159
  %i.jc = and i64 %i.iz, 3                        ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  %i.je = select i1 %i.jd, i64 4, i64 %i.jc
  %n.vec164 = sub i64 %i.iz, %i.je                ; 3 uses
  %i.jf = add i64 %i.iu, %n.vec164
  %i.jg = getelementptr i8, ptr %i.gy, i64 %n.vec164
  %i.jh = add i64 %i.iu, 1
  %i.ji = getelementptr i8, ptr %i.ip, i64 %i.iu
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph163
  %index166 = phi i64 [ 0, %vector.ph163 ], [ %index.next170, %vector.body165 ] ; 3 uses
  %i.jj = phi i64 [ %i.jh, %vector.ph163 ], [ %i.jn, %vector.body165 ] ; 2 uses
  %next.gep167 = getelementptr i8, ptr %i.gy, i64 %index166 ; 2 uses
  %i.jk = getelementptr i8, ptr %next.gep167, i64 2
  %wide.load168 = load <2 x i8>, ptr %next.gep167, align 1, !noalias !6429
  %wide.load169 = load <2 x i8>, ptr %i.jk, align 1, !noalias !6429
  %i.jl = getelementptr i8, ptr %i.ji, i64 %index166 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store <2 x i8> %wide.load168, ptr %i.jl, align 1, !noalias !6430
  store <2 x i8> %wide.load169, ptr %i.jm, align 1, !noalias !6430
  %index.next170 = add nuw i64 %index166, 4       ; 2 uses
  %i.jn = add i64 %i.jj, 4
  %i.jo = icmp eq i64 %index.next170, %n.vec164
  br i1 %i.jo, label %middle.block171, label %vector.body165, !llvm.loop !6346

middle.block171:                                  ; preds = %vector.body165
  %i.jp = add i64 %i.jj, 3
  store i64 %i.jp, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428
  br label %.lr.ph.i47.i.i.i.preheader198

.lr.ph.i47.i.i.i.preheader198:                    ; preds = %vector.memcheck159, %.lr.ph.i47.i.i.i.preheader, %middle.block171
  %.ph199 = phi i64 [ %i.iu, %vector.memcheck159 ], [ %i.iu, %.lr.ph.i47.i.i.i.preheader ], [ %i.jf, %middle.block171 ]
  %.ph200 = phi ptr [ %i.gy, %vector.memcheck159 ], [ %i.gy, %.lr.ph.i47.i.i.i.preheader ], [ %i.jg, %middle.block171 ]
  br label %.lr.ph.i47.i.i.i

.lr.ph.i47.i.i.i:                                 ; preds = %.lr.ph.i47.i.i.i.preheader198, %bb.ay
  %i.jq = phi i64 [ %i.ju, %bb.ay ], [ %.ph199, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %i.jr = phi ptr [ %i.js, %bb.ay ], [ %.ph200, %.lr.ph.i47.i.i.i.preheader198 ] ; 3 uses
  %.not.not.i50.i.i.i = icmp eq ptr %i.jr, %i.ij
  br i1 %.not.not.i50.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i47.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jt = load i8, ptr %i.jr, align 1, !noalias !6429, !noundef !19
  %i.ju = add i64 %i.jq, 1                        ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.jq
  store i8 %i.jt, ptr %i.jv, align 1, !noalias !6430
  store i64 %i.ju, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6428
  %exitcond.not.i51.i.i.i = icmp eq i64 %i.ju, %i.ir
  br i1 %exitcond.not.i51.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, label %.lr.ph.i47.i.i.i, !llvm.loop !6347

.split.i:                                         ; preds = %bb.at, %bb.ar
  %.sroa.26.4.i = phi i64 [ %2, %bb.at ], [ %.sroa.26.3.i, %bb.ar ]
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  %i.jx = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %.pre-phi38.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #60, !noalias !6431
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.split.i
  %eh.lpad-body.i93.i = phi { ptr, i32 } [ %i.jw, %.split.i ], [ %i.jx, %bb.az ]
  %.sroa.26.292.i = phi i64 [ %.sroa.26.4.i, %.split.i ], [ %.sroa.26.1.i, %bb.az ] ; 2 uses
  %i.jy = load i64, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6432, !noundef !19 ; 4 uses
  %i.jz = icmp sgt i64 %i.jy, -1
  tail call void @llvm.assume(i1 %i.jz)
  %.not3.i.i.i.i.i = icmp eq i64 %.sroa.26.292.i, %i.jy
  br i1 %.not3.i.i.i.i.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %i.ka = add nuw i64 %i.jy, %.sroa.33.07890.i
  store i64 %i.ka, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6432
  br label %common.resume

bb.bc:                                            ; preds = %bb.ba
  %i.kb = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6432, !nonnull !19, !noundef !19 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %.sroa.26.292.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kd, ptr nonnull align 1 %i.kc, i64 %.sroa.33.07890.i, i1 false), !noalias !6433
  br label %bb.bb

.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i:  ; preds = %.lr.ph.i.i.i.i25
  store i64 %i.go, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6413
  br label %.loopexit.i.i

.loopexit.i.i.loopexit:                           ; preds = %.lr.ph.i37.i.i.i
  store i64 %i.ih, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6414
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.33.079.i = phi i64 [ %i.eu, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.33.07890.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %i.eu, %.lr.ph.i.i.i.preheader.i ], [ %.sroa.33.07890.i, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.ke = phi i64 [ %2, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %i.ik, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %.sroa.26.1.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %2, %.lr.ph.i.i.i.preheader.i ], [ %i.hh, %.loopexit.i.i.loopexit ] ; 2 uses
  %i.kf = phi i64 [ %i.go, %.lr.ph.i.i.i..loopexit.i.loopexit20_crit_edge.i ], [ %.pre.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillINtNtB8_9into_iter8IntoIterhEECs5PEMdK7bMAG_12typst_syntax.exit.thread.i.i.i ], [ %i.gw, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainhE4fillNtNtNtCs3oUPovFnLWP_4core3str4iter5BytesECs5PEMdK7bMAG_12typst_syntax.exit42.thread.i.thread.i.i ], [ %1, %.lr.ph.i.i.i.preheader.i ], [ %i.ih, %.loopexit.i.i.loopexit ] ; 4 uses
  %i.kg = icmp sgt i64 %i.kf, -1
  tail call void @llvm.assume(i1 %i.kg)
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ke, %i.kf
  br i1 %.not3.i.i.i.i.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.be, %.loopexit.i.i
  %i.kh = add nuw i64 %i.kf, %.sroa.33.079.i
  br label %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit

bb.be:                                            ; preds = %.loopexit.i.i
  %i.ki = load ptr, ptr %i.en, align 8, !alias.scope !6391, !noalias !6434, !nonnull !19, !noundef !19 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ke
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.kk, ptr nonnull align 1 %i.kj, i64 %.sroa.33.079.i, i1 false), !noalias !6435
  br label %bb.bd

bb.bf:                                            ; preds = %.split18.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.eo, i64 %2
  %i.km = load i8, ptr %i.kl, align 1, !noalias !6395, !noundef !19
  %i.kn = icmp sgt i8 %i.km, -65
  br i1 %i.kn, label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtBU_3ops9try_traitINtB1X_17NeverShortCircuituE10wrap_mut_2uhNCINvNvBM_8for_each4callhINvNtBU_3mem4drophEE0E0B2i_ECs5PEMdK7bMAG_12typst_syntax.exit.i.i.i, label %bb.bg, !prof !22

bb.bg:                                            ; preds = %bb.bf
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #62, !noalias !6396
  unreachable

_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block186, %vec.epilog.middle.block, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i, %bb.bd
  %i.ko = phi i64 [ %i.kh, %bb.bd ], [ %1, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5PEMdK7bMAG_12typst_syntax.exit.i.i.i.i.i ], [ %i.fl, %vec.epilog.middle.block ], [ %i.fe, %middle.block186 ], [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  store i64 %i.ko, ptr %i.ei, align 8, !alias.scope !6391, !noalias !6405
  %.sroa.01.0.i = add nuw i64 %.sroa.4.0.i.i.i, 1
  %i.kp = add i64 %.sroa.01.0.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 5 uses
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !6436, !noundef !19 ; 2 uses
  %i.ks = icmp ugt i64 %i.kp, %i.kr
  br i1 %i.ks, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit
  store i64 %i.kp, ptr %i.kq, align 8, !alias.scope !6436
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs5PEMdK7bMAG_12typst_syntax5lines4LineE8truncateBI_.exit: ; preds = %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit, %bb.bh
  %i.kt = phi i64 [ %i.kr, %_RINvMNtCs1xwejQucwHj_5alloc6stringNtB3_6String13replace_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs5PEMdK7bMAG_12typst_syntax.exit ], [ %i.kp, %bb.bh ] ; 3 uses
  %i.ku = load ptr, ptr %i.en, align 8, !nonnull !19, !noundef !19 ; 3 uses
  br i1 %i.ep, label %bb.bl, label %bb.bi
end_hunk_6
begin_hunk_7_@_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9list_item:bb.a
  %.not17.i = icmp eq i64 %.sroa.0.0.i, %i.j
  %or.cond.i = select i1 %i.ab, i1 %.not17.i, i1 false
  br i1 %or.cond.i, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit, label %bb.i

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i8, ptr %i.ac, align 8, !range !20, !alias.scope !9409, !noundef !19
  %.sroa.08.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.08.0.i = load i8, ptr %.sroa.08.0.in.i, align 1, !range !21, !alias.scope !9409, !noundef !19 ; 3 uses
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %switch.selectcmp = icmp eq i8 %.sroa.08.0.i, 88
  %switch.select = select i1 %switch.selectcmp, i8 88, i8 0
  %switch.selectcmp5 = icmp eq i8 %.sroa.08.0.i, 62
  %switch.select6 = select i1 %switch.selectcmp5, i8 62, i8 %switch.select
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split

bb.k:                                             ; preds = %bb.m, %bb.i
  %.sroa.016.0.i = phi i8 [ %i.ad, %bb.i ], [ %i.ah, %bb.m ]
  %i.ae = trunc nuw i8 %.sroa.016.0.i to i1
  br i1 %i.ae, label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split, label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.af = trunc nuw i64 %i.z to i1
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp ule i64 %i.aa, %i.j
  %i.ah = zext i1 %i.ag to i8
  br label %bb.k

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.i
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split

_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split: ; preds = %bb.i, %bb.k, %bb.j, %bb.n
  %.sink = phi i8 [ %switch.select6, %bb.j ], [ %.sroa.08.0.i, %bb.n ], [ 0, %bb.k ], [ 0, %bb.i ]
  store i8 %.sink, ptr %i.m, align 8, !alias.scope !9409
  br label %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit

_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit: ; preds = %_RINvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB6_6Parser12with_nl_modeNCNvB6_9list_item0EB8_.exit.sink.split, %_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser12markup_exprs.exit, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs5PEMdK7bMAG_12typst_syntax6parser9math_args(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [15 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [15 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.791 = alloca [31 x i8], align 1          ; 4 uses
  %i.k = alloca [1 x i8], align 1                 ; 6 uses
  %i.l = alloca [1 x i8], align 1                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
  %.val = load i64, ptr %i.n, align 8, !noundef !19 ; 5 uses
  %i.o = icmp ult i64 %.val, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 50, ptr %i.l, align 1, !noalias !9491
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %.val.i = load i8, ptr %i.p, align 8, !range !21, !alias.scope !9490, !noalias !9492, !noundef !19
  %i.q = icmp eq i8 %.val.i, 50
  br i1 %i.q, label %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedNtNtCs5PEMdK7bMAG_12typst_syntax4kind10SyntaxKindBM_EBQ_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l, ptr noundef null, ptr undef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #62
  unreachable

_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit: ; preds = %bb.a
  tail call fastcc void @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser3eat(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %0), !noalias !9492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @15, i64 32, i1 false)
  %.val1202 = load i8, ptr %i.p, align 8, !range !21, !noundef !19 ; 3 uses
  %i.r = icmp sgt i8 %.val1202, -1
  %i.s = zext nneg i8 %.val1202 to i128
  %i.t = lshr i128 146366987889541121, %i.s
  %i.u = trunc i128 %i.t to i1
  %.sroa.0.0.i203 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %.sroa.0.0.i203, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6assert.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %.sroa.5.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 5 uses
  %.sroa.780.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.883.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.986.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %.sroa.5.sroa.3.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.8..8..8..8..8..sroa_idx481 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.c

.loopexit:                                        ; preds = %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.invoke, %bb.aq, %.noexc11, %.noexc13, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit.i, %.critedge.i, %.noexc19.thread317, %bb.bp, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i, %bb.bk, %.noexc34, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser11after_error.exit.thread.i32, %_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind.exit.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit42.i, %.noexc9.jt110, %.noexc9.jt255, %.noexc9.jt117
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke394, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread3.i, %bb.az, %bb.ay, %bb.bl, %_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser6eat_if.exit.thread.i, %bb.bg, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser24expect_closing_delimiter.exit
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit, %bb.ap, %bb.as, %bb.bc, %bb.aj, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.hk, %bb.aj ], [ %i.db, %bb.o ], [ %i.id, %bb.as ], [ %i.hw, %bb.ap ], [ %lpad.phi111, %bb.bc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit319, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp ]
  %.val5 = load ptr, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val6 = load i64, ptr %i.aj, align 8, !noundef !19
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetReNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs5PEMdK7bMAG_12typst_syntax(ptr %.val5, i64 %.val6) #59
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %.lr.ph, %_RNvMs4_NtCs5PEMdK7bMAG_12typst_syntax6parserNtB5_6Parser8expected.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !9493)
  %.val30.i = load i64, ptr %i.n, align 8, !alias.scope !9493, !noalias !9494, !noundef !19 ; 5 uses
  %i.ak = icmp ult i64 %.val30.i, 288230376151711744
  call void @llvm.assume(i1 %i.ak)
  %.val33.i = load i64, ptr %i.v, align 8, !alias.scope !9493, !noalias !9494, !noundef !19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9495
  store i8 -1, ptr %i.k, align 1, !noalias !9495
  call void @llvm.experimental.noalias.scope.decl(metadata !9496)
  %i.al = load i64, ptr %i.y, align 8, !alias.scope !9496, !noalias !9497, !noundef !19
  %.val6.i51 = load ptr, ptr %i.x, align 8, !alias.scope !9496, !noalias !9497, !nonnull !19, !noundef !19 ; 12 uses
  %.val7.i52 = load i64, ptr %i.z, align 8, !alias.scope !9496, !noalias !9497, !noundef !19 ; 13 uses
  %..i.i.i53 = call noundef i64 @llvm.umin.i64(i64 %.val7.i52, i64 %.val33.i) ; 4 uses
  %i.am = icmp eq i64 %..i.i.i53, 0               ; 3 uses
  br i1 %i.am, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %bb.c, %bb.e
  %.sroa.0.01.i.i55 = phi i64 [ %i.aq, %bb.e ], [ %..i.i.i53, %bb.c ] ; 5 uses
  %.not.i.i56 = icmp ult i64 %.sroa.0.01.i.i55, %.val7.i52
  br i1 %.not.i.i56, label %bb.d, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57

bb.d:                                             ; preds = %.lr.ph.i.i54
  %i.an = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %.sroa.0.01.i.i55
  %i.ao = load i8, ptr %i.an, align 1, !noalias !9498, !noundef !19
  %i.ap = icmp sgt i8 %i.ao, -65
  br i1 %i.ap, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = add i64 %.sroa.0.01.i.i55, -1           ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57, label %.lr.ph.i.i54

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57: ; preds = %bb.e, %bb.d, %.lr.ph.i.i54, %bb.c
  %.sroa.0.0.lcssa.i.i58 = phi i64 [ 0, %bb.c ], [ %.sroa.0.01.i.i55, %bb.d ], [ 0, %bb.e ], [ %.sroa.0.01.i.i55, %.lr.ph.i.i54 ] ; 4 uses
  store i64 %.sroa.0.0.lcssa.i.i58, ptr %i.y, align 8, !alias.scope !9496, !noalias !9497
  call void @llvm.experimental.noalias.scope.decl(metadata !9499)
  %i.as = sub nuw i64 %.val7.i52, %.sroa.0.0.lcssa.i.i58
  %.not.i.i.i.i59 = icmp samesign ult i64 %i.as, 2
  br i1 %.not.i.i.i.i59, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i

_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i: ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57
  %i.at = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %.sroa.0.0.lcssa.i.i58
  %i.au = load i16, ptr %i.at, align 1
  %i.av = icmp ne i16 11822, %i.au
  %i.aw = zext i1 %i.av to i32
  %bcmp.i.i.fr.i.i.i61 = freeze i32 %i.aw
  %i.ax = icmp eq i32 %bcmp.i.i.fr.i.i.i61, 0
  br i1 %i.ax, label %bb.f, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i

bb.f:                                             ; preds = %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i
  %i.ay = add nuw i64 %.sroa.0.0.lcssa.i.i58, 2   ; 7 uses
  store i64 %i.ay, ptr %i.y, align 8, !alias.scope !9500, !noalias !9501
  %i.az = call fastcc noundef zeroext i1 @_RNvMs2_NtCs5PEMdK7bMAG_12typst_syntax5lexerNtB5_5Lexer12space_or_end(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w), !noalias !9497
  br i1 %i.az, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %bb.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i: ; preds = %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i, %bb.f, %_RNvXs4_CsjRrCJiNqTDc_8unscannyReINtNtB5_6sealed6SealeduE7matches.exit.i.i, %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i57
  %..i.i8.i = call noundef i64 @llvm.umin.i64(i64 %.val7.i52, i64 %i.al) ; 2 uses
  %i.ba = icmp eq i64 %..i.i8.i, 0
  br i1 %i.ba, label %.loopexit104, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, %bb.h
  %.sroa.0.01.i10.i = phi i64 [ %i.be, %bb.h ], [ %..i.i8.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ] ; 5 uses
  %.not.i11.i = icmp ult i64 %.sroa.0.01.i10.i, %.val7.i52
  br i1 %.not.i11.i, label %bb.g, label %.loopexit104

bb.g:                                             ; preds = %.lr.ph.i9.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %.sroa.0.01.i10.i
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !9498, !noundef !19
  %i.bd = icmp sgt i8 %i.bc, -65
  br i1 %i.bd, label %.loopexit104, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = add i64 %.sroa.0.01.i10.i, -1           ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit104, label %.lr.ph.i9.i

bb.i:                                             ; preds = %bb.f
  %i.bg = sub nuw i64 %.val7.i52, %i.ay           ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %i.ay ; 4 uses
  %i.bi = icmp eq i64 %.val7.i52, %i.ay
  br i1 %i.bi, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = load i8, ptr %i.bh, align 1, !alias.scope !9502, !noalias !9503, !noundef !19 ; 5 uses
  %i.bk = icmp sgt i8 %i.bj, -1
  br i1 %i.bk, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i: ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bm = and i8 %i.bj, 31
  %i.bn = zext nneg i8 %i.bm to i32               ; 3 uses
  %i.bo = icmp samesign ne i64 %i.bg, 1
  call void @llvm.assume(i1 %i.bo)
  %i.bp = load i8, ptr %i.bl, align 1, !alias.scope !9502, !noalias !9503, !noundef !19
  %i.bq = shl nuw nsw i32 %i.bn, 6
  %i.br = and i8 %i.bp, 63
  %i.bs = zext nneg i8 %i.br to i32               ; 2 uses
  %i.bt = or disjoint i32 %i.bq, %i.bs
  %i.bu = icmp samesign ugt i8 %i.bj, -33
  br i1 %i.bu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bv = zext nneg i8 %i.bj to i32
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bx = icmp samesign ne i64 %i.bg, 2
  call void @llvm.assume(i1 %i.bx)
  %i.by = load i8, ptr %i.bw, align 1, !alias.scope !9502, !noalias !9503, !noundef !19
  %i.bz = shl nuw nsw i32 %i.bs, 6
  %i.ca = and i8 %i.by, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb            ; 2 uses
  %i.cd = shl nuw nsw i32 %i.bn, 12
  %i.ce = or disjoint i32 %i.cc, %i.cd
  %i.cf = icmp samesign ugt i8 %i.bj, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.ch = icmp samesign ne i64 %i.bg, 3
  call void @llvm.assume(i1 %i.ch)
  %i.ci = load i8, ptr %i.cg, align 1, !alias.scope !9502, !noalias !9503, !noundef !19
  %i.cj = shl nuw nsw i32 %i.bn, 18
  %i.ck = and i32 %i.cj, 1835008
  %i.cl = shl nuw nsw i32 %i.cc, 6
  %i.cm = and i8 %i.ci, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.ck
  br label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i, %bb.k, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.ce, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit14.i.i.i.i.i ], [ %i.cp, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit16.i.i.i.i.i ], [ %i.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs5PEMdK7bMAG_12typst_syntax.exit12.i.i.i.i.i ], [ %i.bv, %bb.k ]
  %.sroa.4.0.i.ph.i.i.i.fr.i = freeze i32 %.sroa.4.0.i.ph.i.i.i.i ; 3 uses
  %i.cq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.fr.i, 1114112
  call void @llvm.assume(i1 %i.cq)
  %i.cr = and i32 %.sroa.4.0.i.ph.i.i.i.fr.i, 2097149
  %or.cond.i.i.i = icmp eq i32 %i.cr, 44
  br i1 %or.cond.i.i.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.i
  switch i32 %.sroa.4.0.i.ph.i.i.i.fr.i, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i [
    i32 59, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
    i32 41, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
    i32 36, label %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
  ]

_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i: ; preds = %switch.early.test.i, %bb.i
  br i1 %i.am, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i, %bb.m
  %.sroa.0.01.i16.i = phi i64 [ %i.cv, %bb.m ], [ %..i.i.i53, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ] ; 5 uses
  %.not.i17.i = icmp ult i64 %.sroa.0.01.i16.i, %.val7.i52
  br i1 %.not.i17.i, label %bb.l, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i

bb.l:                                             ; preds = %.lr.ph.i15.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %.sroa.0.01.i16.i
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !9498, !noundef !19
  %i.cu = icmp sgt i8 %i.ct, -65
  br i1 %i.cu, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = add i64 %.sroa.0.01.i16.i, -1           ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i, label %.lr.ph.i15.i

_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i: ; preds = %bb.m, %bb.l, %.lr.ph.i15.i, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
  %.sroa.0.0.lcssa.i18.i = phi i64 [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner2atuAcj5_ECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ], [ %.sroa.0.01.i16.i, %bb.l ], [ 0, %bb.m ], [ %.sroa.0.01.i16.i, %.lr.ph.i15.i ] ; 2 uses
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.ay, i64 %.sroa.0.0.lcssa.i18.i) ; 2 uses
  %i.cx = sub nuw i64 %i.ay, %..i.i               ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %..i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cz = icmp samesign ugt i64 %i.cx, 15
  br i1 %i.cz, label %.lr.ph.i.i.i.i67, label %bb.n

bb.n:                                             ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !9504
  %.not.i.i.not.i62 = icmp ugt i64 %i.ay, %.sroa.0.0.lcssa.i18.i
  br i1 %.not.i.i.not.i62, label %.lr.ph.preheader.i.i.i65, label %bb.q

.lr.ph.preheader.i.i.i65:                         ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.c, ptr nonnull readonly align 1 %i.cy, i64 range(i64 0, -9223372036854775808) %i.cx, i1 false), !noalias !9505
  %.0..0..0..0..0..sroa.021.0.copyload22.pre.i = load ptr, ptr %i.c, align 8, !noalias !9506
  %.8..8..8..8..8..sroa.523.0.copyload25.pre.i = load i56, ptr %.8..8..8..8..8..sroa_idx481, align 8, !noalias !9506
  %i.da = zext i56 %.8..8..8..8..8..sroa.523.0.copyload25.pre.i to i64
  br label %bb.q

.lr.ph.i.i.i.i67:                                 ; preds = %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9507
  store ptr inttoptr (i64 16 to ptr), ptr %i.b, align 8, !noalias !9507
  store i64 0, ptr %i.aa, align 8, !noalias !9507
  call void @llvm.experimental.noalias.scope.decl(metadata !9508)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVechE7reserveCs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef range(i64 0, -9223372036854775808) %i.cx)
          to label %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i69 unwind label %bb.o, !noalias !9507

bb.o:                                             ; preds = %.lr.ph.i.i.i.i67
  %i.db = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i68 = load ptr, ptr %i.b, align 8, !noalias !9507, !nonnull !19, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec6EcoVechEECs5PEMdK7bMAG_12typst_syntax(ptr nonnull %.val.i.i.i68) #59
          to label %.body unwind label %bb.p, !noalias !9507

bb.p:                                             ; preds = %bb.o
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61, !noalias !9507
  unreachable

_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i69: ; preds = %.lr.ph.i.i.i.i67
  %i.dd = load ptr, ptr %i.b, align 8, !alias.scope !9508, !noalias !9509, !nonnull !19, !noundef !19 ; 2 uses
  %.promoted.i.i.i.i70 = load i64, ptr %i.aa, align 8, !alias.scope !9508, !noalias !9509 ; 2 uses
  %scevgep.i.i.i.i71 = getelementptr nuw i8, ptr %i.dd, i64 %.promoted.i.i.i.i70
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep.i.i.i.i71, ptr nonnull readonly align 1 %i.cy, i64 range(i64 0, -9223372036854775808) %i.cx, i1 false), !noalias !9510
  %i.de = add i64 %.promoted.i.i.i.i70, %i.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9507
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.preheader.i.i.i65, %bb.n
  %.8..8..sroa.523.0.copyload25.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i.i65 ], [ 0, %bb.n ]
  %.0..0..sroa.021.0.copyload22.i = phi ptr [ %.0..0..0..0..0..sroa.021.0.copyload22.pre.i, %.lr.ph.preheader.i.i.i65 ], [ null, %bb.n ]
  %.sroa.523.15.insert.ext.i = shl nuw nsw i64 %i.cx, 56
  %.sroa.523.15.insert.shift.i = or disjoint i64 %.8..8..sroa.523.0.copyload25.i, %.sroa.523.15.insert.ext.i
  %.sroa.523.15.insert.insert.i = or disjoint i64 %.sroa.523.15.insert.shift.i, -9223372036854775808
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i69
  %.sroa.523.0.i = phi i64 [ %i.de, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i69 ], [ %.sroa.523.15.insert.insert.i, %bb.q ] ; 2 uses
  %.sroa.021.0.i = phi ptr [ %i.dd, %_RNvXsq_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs5PEMdK7bMAG_12typst_syntax.exit.i.i69 ], [ %.0..0..sroa.021.0.copyload22.i, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i8 117, ptr %i.k, align 1, !noalias !9495
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
          to label %bb.aq unwind label %bb.ap, !noalias !9494, !inline_history !9448

.loopexit104:                                     ; preds = %.lr.ph.i9.i, %bb.g, %bb.h, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i
  %.sroa.0.0.lcssa.i12.i = phi i64 [ 0, %_RINvMCsjRrCJiNqTDc_8unscannyNtB3_7Scanner6eat_ifuReECs5PEMdK7bMAG_12typst_syntax.exit.thread.i ], [ %.sroa.0.01.i10.i, %bb.g ], [ 0, %bb.h ], [ %.sroa.0.01.i10.i, %.lr.ph.i9.i ] ; 2 uses
  store i64 %.sroa.0.0.lcssa.i12.i, ptr %i.y, align 8, !alias.scope !9496, !noalias !9497
  call void @llvm.experimental.noalias.scope.decl(metadata !9511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br i1 %i.am, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit104, %bb.t
  %.sroa.0.01.i.i = phi i64 [ %i.di, %bb.t ], [ %..i.i.i53, %.loopexit104 ] ; 5 uses
  %.not.i.i45 = icmp ult i64 %.sroa.0.01.i.i, %.val7.i52
  br i1 %.not.i.i45, label %bb.s, label %_RNvMs_CsjRrCJiNqTDc_8unscannyNtB4_7Scanner4snap.exit.i

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.val6.i51, i64 %.sroa.0.01.i.i
  %i.dg = load i8, ptr %i.df, align 1, !noalias !9512, !noundef !19
  %i.dh = icmp sgt i8 %i.dg, -65
end_hunk_7

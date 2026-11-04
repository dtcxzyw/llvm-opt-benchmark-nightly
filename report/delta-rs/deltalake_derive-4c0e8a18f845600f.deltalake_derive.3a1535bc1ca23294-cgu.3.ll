Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_derive-4c0e8a18f845600f.deltalake_derive.3a1535bc1ca23294-cgu.3?download=true
inline.NumInlined: 14
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [86 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/core/src/iter/adapters/mod.rs\00", align 1, !guid !3
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"U\00\00\00\00\00\00\00\A5\00\00\00\14\00\00\00" }>, align 8, !guid !3
@2 = private unnamed_addr constant [80 x i8] c"/rustc/1d8897a4e88051480b36c501e66809425c6e08ad/library/core/src/str/pattern.rs\00", align 1, !guid !3
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00\22\07\00\00,\00\00\00" }>, align 8, !guid !3
@4 = private unnamed_addr constant [1 x i8] c"\01", align 1, !guid !3
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2, [16 x i8] c"O\00\00\00\00\00\00\00i\04\00\00$\00\00\00" }>, align 8, !guid !3

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B42_IB40_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3j_EB4M_EINtNtNtB4_6traits7collect12FromIteratorIB40_B3j_B4M_EE9from_iterBQ_E0B5p_EB2n_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !4 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -9223372036854775808, ptr %i.f, align 8
  store ptr %1, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EE0B5d_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread11, %bb.c
  %.sroa.03.0 = phi i1 [ %.sroa.03.1, %bb.c ], [ true, %.thread11 ]
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %.thread11 ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -9223372036854775808
  %or.cond = and i1 %.sroa.03.0, %i.h
  br i1 %or.cond, label %bb.k, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.a
  %.sroa.03.1 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8
  %.not.not = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @1)
          to label %bb.h unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %.thread11

.thread11:                                        ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.h
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e) #13
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.b
  %.pn10 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn, %bb.k ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.f) #13
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1P_5error5ErrorENCINvXso_B43_IB41_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB3k_EB4N_EINtNtNtB4_6traits7collect12FromIteratorIB41_B3k_B4N_EE9from_iterBQ_E0B5q_EB2n_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !5 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -9223372036854775808, ptr %i.f, align 8
  store ptr %1, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EE0B5d_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread11, %bb.c
  %.sroa.03.0 = phi i1 [ %.sroa.03.1, %bb.c ], [ true, %.thread11 ]
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %.thread11 ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -9223372036854775808
  %or.cond = and i1 %.sroa.03.0, %i.h
  br i1 %or.cond, label %bb.k, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.a
  %.sroa.03.1 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8
  %.not.not = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @1)
          to label %bb.h unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %.thread11

.thread11:                                        ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.h
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e) #13
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.b
  %.pn10 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn, %bb.k ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.f) #13
          to label %.thread unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1B_5error5ErrorENCINvXso_B3M_IB3K_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB33_EB4w_EINtNtNtB4_6traits7collect12FromIteratorIB3K_B33_B4w_EE9from_iterBQ_E0B59_EB29_(ptr sret([32 x i8]) align 8 %0, ptr %1, ptr %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  store i64 -9223372036854775808, ptr %i.f, align 8
  store ptr %1, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx, align 8
  invoke void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EE0B4Z_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull %i.a, ptr nonnull align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.thread11, %bb.c
  %.sroa.03.0 = phi i1 [ %.sroa.03.1, %bb.c ], [ true, %.thread11 ]
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.k, %.thread11 ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ne i64 %i.g, -9223372036854775808
  %or.cond = and i1 %.sroa.03.0, %i.h
  br i1 %or.cond, label %bb.k, label %.thread

bb.c:                                             ; preds = %bb.h, %bb.a
  %.sroa.03.1 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.f, align 8
  %.not.not = icmp eq i64 %i.j, -9223372036854775808
  br i1 %.not.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @1)
          to label %bb.h unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %.thread11

.thread11:                                        ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.g:                                             ; preds = %bb.f, %bb.h
  ret void

bb.h:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.c

bb.i:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.e) #13
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #14
  unreachable

.thread:                                          ; preds = %bb.i, %bb.k, %bb.b
  %.pn10 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn, %bb.k ], [ %i.l, %bb.i ]
  resume { ptr, i32 } %.pn10

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.f) #13
          to label %.thread unwind label %bb.j
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator3mapNtCsbjGuDcEILED_11proc_macro211TokenStreamNCNCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env00EB2R_(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, ptr %2, ptr nofree readonly align 8 captures(none) %3) unnamed_addr #1 !guid !7 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EB3z_(ptr %0, ptr %1) unnamed_addr #2 !guid !8 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator10filter_mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EB3z_(ptr %0, ptr %1) unnamed_addr #2 !guid !9 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator3mapINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EB3r_(ptr %0, ptr %1) unnamed_addr #2 !guid !10 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !11 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6V_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters10filter_map19filter_map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4s_B3q_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB2e_INtB2e_12GenericShuntINtB2c_9FilterMapB3_B5h_EIB35_NtNtBa_7convert10InfallibleB46_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3q_B56_NcNtB56_5Break0E0B56_E0E0B4r_EB5l_(ptr sret([32 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !12 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6W_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_(ptr sret([32 x i8]) align 8 %0, ptr nofree align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !13 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %1, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %2, ptr nonnull align 8 %i.e)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.i = load i64, ptr %i.c, align 8
  %.not4 = icmp eq i64 %i.i, -9223372036854775806
  br i1 %.not4, label %bb.b, label %bb.d

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread: ; preds = %bb.b, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.thread, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4C_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5O_ENcNtB6u_5Break0E0B6u_E0B2x_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !14 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.h
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_10filter_map9FilterMapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1Z_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4D_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5P_ENcNtB6v_5Break0E0B6v_E0B2x_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !15 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.h
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtB1L_5error5ErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB4m_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB9_3ops12control_flow11ControlFlowB5y_ENcNtB6e_5Break0E0B6e_E0B2j_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !16 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 3 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 2 uses
  %i.g = alloca [32 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr nonnull sret([32 x i8]) align 8 %i.h, ptr align 8 %2)
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, -9223372036854775807
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %i.m)
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.n = load ptr, ptr %1, align 8
  call void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr %i.n, ptr nonnull align 8 %i.f)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.g)
  %i.o = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.o, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.h
  ret void

bb.g:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 !guid !17 {
bb.a:
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 !guid !18 {
bb.a:
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvMs4_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB5_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldE3newCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8 %0, i64 %1) unnamed_addr #2 !guid !19 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme20new_grapheme_indicesCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([200 x i8]) align 8 captures(none) initializes((0, 200)) %0, ptr %1, i64 %2, i1 zeroext %3) unnamed_addr #3 !guid !22 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [176 x i8], align 8           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call i64 @_RNvMNtCsbvkFyIu7lgC_4core3stre3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr %1, i64 %2) #15, !noalias !23 ; 3 uses
  call void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr nonnull sret([88 x i8]) align 8 %i.a, i64 0, i64 %i.c, i1 zeroext %3), !noalias !23
  %.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 88
  call void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr nonnull sret([88 x i8]) align 8 %.sroa.0.88..sroa_idx, i64 %i.c, i64 %i.c, i1 zeroext %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.b, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.0, i64 176, i1 false)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !26 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !27
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3a_8try_folduNCINvNvB3a_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6f_ENcNtB6V_5Break0E0B6V_E0IB6W_B6V_EEB2e_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !27
  %i.f = load i64, ptr %i.b, align 8, !noalias !27
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_.exit
  store i64 -9223372036854775807, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 !guid !28 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !31 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !32
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3b_8try_folduNCINvNvB3b_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6g_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EEB2e_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !32
  %i.f = load i64, ptr %i.b, align 8, !noalias !32
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_.exit
  store i64 -9223372036854775807, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 !guid !33 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2g_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !36 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !37
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr align 8 %1, ptr nonnull %i.a, ptr align 8 %i.e), !noalias !37
  %i.f = load i64, ptr %i.b, align 8, !noalias !37
  %.not.i = icmp eq i64 %i.f, -9223372036854775806
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull sret([32 x i8]) align 8 %i.c)
  br label %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit

_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.g, -9223372036854775807
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_.exit
  store i64 -9223372036854775807, ptr %0, align 8
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.c)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1I_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2g_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr align 8 %1) unnamed_addr #0 !guid !38 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %1) #15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi <2 x i64> [ %i.f, %bb.b ], [ <i64 1, i64 0>, %bb.a ]
  store i64 0, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.g, ptr %i.h, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !39 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_10filter_map9FilterMapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB2f_5error5ErrorEENtB2_12IntoIterator9into_iterB2N_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !40 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectINtNtB6_8adapters12GenericShuntINtNtBO_3map3MapINtNtNtB8_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB8_6result6ResultNtNtB8_7convert10InfallibleNtNtB21_5error5ErrorEENtB2_12IntoIterator9into_iterB2z_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !41 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden align 8 ptr @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree align 8 captures(none) %0) unnamed_addr #1 !guid !42 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.e, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator9size_hintCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 !guid !43 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3                   ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_18MultiCharEqPatternNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_7Pattern13into_searcherCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr %1, i64 %2) unnamed_addr #3 personality ptr @rust_eh_personality !guid !44 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core3stre5charsCs4ZaLwAtrTbk_16deltalake_derive(ptr %1, i64 %2) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 !guid !49 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !51
  %i.e = load ptr, ptr %i.a, align 8, !noalias !51
  %i.f = tail call { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !51 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !51
  %i.i = load ptr, ptr %i.a, align 8, !noalias !51
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !51
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !50
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !50
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !50
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #3 !guid !56 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !noalias !58
  %i.e = load ptr, ptr %i.a, align 8, !noalias !58
  %i.f = tail call { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull align 8 %i.a) #15, !noalias !58 ; 2 uses
  %i.g = extractvalue { i64, i32 } %i.f, 1        ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 1114112
  br i1 %.not.i.i, label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit, label %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i

_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !noalias !58
  %i.i = load ptr, ptr %i.a, align 8, !noalias !58
  %i.j = tail call zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr nonnull %i.c, i32 %i.g) #15, !noalias !58
  br i1 %i.j, label %bb.b, label %bb.c

bb.c:                                             ; preds = %_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = extractvalue { i64, i32 } %i.f, 0        ; 2 uses
  %i.p = add i64 %i.o, %i.m
  %i.q = add i64 %i.n, %i.l
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.o, ptr %i.t, align 8, !alias.scope !57
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8, !alias.scope !57
  br label %_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !57
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive(ptr %0, i64 %1, ptr %2, i64 %3) unnamed_addr #3 !guid !63 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 14 uses
  %i.d = alloca [32 x i8], align 8                ; 13 uses
  %i.e = alloca [16 x i8], align 16               ; 5 uses
  %i.f = alloca [16 x i8], align 16               ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [1 x i8], align 1                 ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [104 x i8], align 8               ; 17 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = icmp eq i64 %1, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %1, %3
  br i1 %i.q, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.a, %bb.ax, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.g, %bb.aw
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.x, %bb.g ], [ %i.fz, %bb.aw ], [ %i.cu, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit ], [ %i.ga, %bb.ax ], [ false, %bb.e ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %1, 1
  br i1 %i.r, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %1, %3
  br i1 %i.s, label %bb.ax, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i64 %1, 33
  br i1 %i.t, label %bb.ag, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.u = load i8, ptr %0, align 1
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8 %i.u, ptr %2, i64 %3) #15
  %i.w = extractvalue { i64, i64 } %i.v, 0
  %i.x = icmp eq i64 %i.w, 1
  br label %bb.c

bb.h:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit, %bb.f
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.n, ptr %2, i64 %3, ptr %0, i64 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.y = load i64, ptr %i.n, align 8, !noalias !64
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 6 uses
  br i1 %i.z, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.an = load i64, ptr %i.am, align 8, !noalias !64
  %i.ao = icmp eq i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !64 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !noalias !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.aw = load i64, ptr %i.av, align 8, !noalias !64 ; 2 uses
  br i1 %i.ao, label %bb.ae, label %bb.af

bb.j:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !64
  %i.ax = load i64, ptr %i.n, align 8, !noalias !66
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.az = load i64, ptr %i.ai, align 8, !noalias !66
  %i.ba = load i64, ptr %i.ae, align 8, !noalias !66 ; 2 uses
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %.sink.split.i.i, label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.bc = load i8, ptr %i.ab, align 2, !noalias !66
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i8, ptr %i.ac, align 8, !noalias !66 ; 2 uses
  %i.bf = trunc nuw i8 %i.be to i1                ; 2 uses
  %i.bg = and i8 %i.be, 1
  %i.bh = xor i8 %i.bg, 1
  store i8 %i.bh, ptr %i.ac, align 8, !noalias !66
  %i.bi = load i64, ptr %i.aa, align 8, !noalias !66 ; 5 uses
  %i.bj = load ptr, ptr %i.ad, align 8, !noalias !66 ; 2 uses
  %i.bk = load i64, ptr %i.ae, align 8, !noalias !66 ; 3 uses
  %i.bl = call { ptr, i64 } @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs4ZaLwAtrTbk_16deltalake_derive(i64 %i.bi, ptr %i.bj, i64 %i.bk) #15, !noalias !66 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 3 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store ptr %i.bm, ptr %i.l, align 8, !noalias !66
  store ptr %i.bo, ptr %i.af, align 8, !noalias !66
  %i.bp = call { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.l) #15, !noalias !66 ; 2 uses
  %i.bq = extractvalue { i32, i32 } %i.bp, 0
  %i.br = extractvalue { i32, i32 } %i.bp, 1      ; 3 uses
  %i.bs = trunc i32 %i.bq to i1
  br i1 %i.bs, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr %i.bj, i64 %i.bk, i64 %i.bi, i64 %i.bk, ptr nonnull align 8 @5) #16, !noalias !66
  unreachable

bb.p:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.s, label %bb.t

bb.q:                                             ; preds = %bb.n
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.ab, align 2, !noalias !66
  br label %.sink.split.i.i

bb.s:                                             ; preds = %bb.q, %bb.p
  store i64 %i.bi, ptr %i.ag, align 8, !alias.scope !65, !noalias !64
  store i64 %i.bi, ptr %i.ah, align 8, !alias.scope !65, !noalias !64
  br label %.sink.split.i.i

bb.t:                                             ; preds = %bb.p
  %i.bt = icmp ult i32 %i.br, 128
  br i1 %i.bt, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = icmp ult i32 %i.br, 2048
  br i1 %i.bu, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = icmp ult i32 %i.br, 65536
  %..i.i = select i1 %i.bv, i64 3, i64 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.sroa.01.0.i.i = phi i64 [ 2, %bb.u ], [ %..i.i, %bb.v ], [ 1, %bb.t ]
  %i.bw = load i64, ptr %i.aa, align 8, !noalias !66
  %i.bx = add i64 %i.bw, %.sroa.01.0.i.i          ; 2 uses
  store i64 %i.bx, ptr %i.aa, align 8, !noalias !66
  store i64 %i.bi, ptr %i.ag, align 8, !alias.scope !65, !noalias !64
  store i64 %i.bx, ptr %i.ah, align 8, !alias.scope !65, !noalias !64
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.split._crit_edge.i.i, %bb.w, %bb.s, %bb.r, %bb.l, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.r ], [ 0, %bb.s ], [ 1, %bb.w ], [ 1, %.split._crit_edge.i.i ], [ 2, %bb.k ], [ 2, %bb.l ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.m, align 8, !alias.scope !65, !noalias !64
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.x:                                             ; preds = %bb.k
  %i.by = load i64, ptr %i.aj, align 8, !noalias !66
  %i.bz = icmp eq i64 %i.by, -1
  %i.ca = load ptr, ptr %i.ad, align 8, !noalias !66
  %i.cb = load ptr, ptr %i.ak, align 8, !noalias !66
  %i.cc = load i64, ptr %i.al, align 8, !noalias !66
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %i.aa, ptr %i.ca, i64 %i.ba, ptr %i.cb, i64 %i.cc, i1 zeroext %i.bz) #15, !noalias !64
  %i.cd = load i64, ptr %i.m, align 8, !noalias !64 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.y, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cf = load i64, ptr %i.ag, align 8, !alias.scope !65, !noalias !64
  %i.cg = load i64, ptr %i.ah, align 8, !alias.scope !65, !noalias !64 ; 2 uses
  %i.ch = load ptr, ptr %i.ad, align 8, !noalias !66
  %i.ci = load i64, ptr %i.ae, align 8, !noalias !66 ; 3 uses
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %.split._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.aa
  %.sroa.02.015.i.i = phi i64 [ %i.cq, %bb.aa ], [ %i.cg, %bb.y ] ; 5 uses
  %.not14.i.i = icmp ult i64 %.sroa.02.015.i.i, %i.ci
  br i1 %.not14.i.i, label %bb.z, label %.split.i.i

.split._crit_edge.i.i:                            ; preds = %bb.aa, %bb.z, %.split.i.i, %bb.y
  %.sroa.02.0.lcssa.i.i = phi i64 [ 0, %bb.y ], [ %i.ci, %.split.i.i ], [ 0, %bb.aa ], [ %.sroa.02.015.i.i, %bb.z ] ; 2 uses
  %i.ck = load i64, ptr %i.ai, align 8, !noalias !66
  %i.cl = call i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64 %.sroa.02.0.lcssa.i.i, i64 %i.ck) #15, !noalias !64
  store i64 %i.cl, ptr %i.ai, align 8, !noalias !66
  store i64 %i.cf, ptr %i.ag, align 8, !alias.scope !65, !noalias !64
  store i64 %.sroa.02.0.lcssa.i.i, ptr %i.ah, align 8, !alias.scope !65, !noalias !64
  br label %.sink.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.cm = icmp eq i64 %.sroa.02.015.i.i, %i.ci
  br i1 %i.cm, label %.split._crit_edge.i.i, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.015.i.i
  %i.co = load i8, ptr %i.cn, align 1, !noalias !64
  %i.cp = icmp sgt i8 %i.co, -65
  br i1 %i.cp, label %.split._crit_edge.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.split.i.i
  %i.cq = add i64 %.sroa.02.015.i.i, 1            ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.split._crit_edge.i.i, label %.lr.ph.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i: ; preds = %bb.x, %.sink.split.i.i
  %i.cs = phi i64 [ %.sink.i.i, %.sink.split.i.i ], [ %i.cd, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !64
  switch i64 %i.cs, label %bb.ab [
    i64 0, label %bb.ac
    i64 1, label %bb.j
    i64 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  unreachable

bb.ac:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 1, ptr %i.o, align 8, !alias.scope !64
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ad:                                            ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive.exit.i
  store i64 0, ptr %i.o, align 8, !alias.scope !64
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ae:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext true) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.af:                                            ; preds = %bb.i
  call void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.o, ptr nonnull align 8 %i.aa, ptr %i.aq, i64 %i.as, ptr %i.au, i64 %i.aw, i1 zeroext false) #15
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive.exit: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ct = load i64, ptr %i.o, align 8
  %i.cu = icmp eq i64 %i.ct, 1
  br label %bb.c

bb.ag:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %0, ptr %i.k, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %1, ptr %i.cv, align 8
  %i.cw = load i8, ptr %0, align 1
  store i8 %i.cw, ptr %i.j, align 1
  %i.cx = add nsw i64 %1, -1                      ; 2 uses
  %i.cy = icmp eq i64 %1, 2
  br i1 %i.cy, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4)
  store i64 %i.cz, ptr %i.h, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %1, ptr %i.da, align 8
  store ptr %0, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.db = call { i64, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.b) #15 ; 2 uses
  %i.dc = extractvalue { i64, i64 } %i.db, 0
  %i.dd = trunc nuw i64 %i.dc to i1
  br i1 %i.dd, label %bb.aj, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containsCs4ZaLwAtrTbk_16deltalake_derive.exit

bb.ai:                                            ; preds = %bb.aj, %bb.ag
  %storemerge.i = phi i64 [ %i.dg, %bb.aj ], [ 1, %bb.ag ] ; 4 uses
  store i64 %storemerge.i, ptr %i.i, align 8
  %i.de = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.df = icmp ult i64 %3, %i.de
  br i1 %i.df, label %bb.av, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dg = extractvalue { i64, i64 } %i.db, 1
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ai
  %i.dh = load i8, ptr %i.j, align 1
  %i.di = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.dj, ptr %i.f, align 16
  %i.dk = icmp ult i64 %storemerge.i, %1
  br i1 %i.dk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %storemerge.i
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = insertelement <16 x i8> poison, i8 %i.dm, i64 0
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> poison, <16 x i32> zeroinitializer
  store <16 x i8> %i.do, ptr %i.e, align 16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %2, ptr %i.d, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.dp, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.cx, ptr %i.ds, align 8
  store ptr %2, ptr %i.c, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.f, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.dw, align 8
  %i.dx = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.dx, %3
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i4

bb.am:                                            ; preds = %bb.ak
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 %storemerge.i, i64 range(i64 2, 33) %1, ptr nonnull align 8 @3) #16
  unreachable

.preheader.i4:                                    ; preds = %bb.aq, %bb.al
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.al ], [ %i.ey, %bb.aq ] ; 2 uses
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.al ], [ %.sroa.014.2.3.i, %bb.aq ] ; 2 uses
  %i.dy = add i64 %.sroa.06.0.lcssa.i, %i.de
  %i.dz = icmp uge i64 %i.dy, %3
  %i.ea = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond359.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond359.i, label %._crit_edge.i, label %.lr.ph61.i

.lr.ph.i:                                         ; preds = %bb.al, %bb.aq
  %.sroa.06.057.i = phi i64 [ %i.ey, %bb.aq ], [ 0, %bb.al ] ; 6 uses
  %i.eb = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.057.i) #15 ; 2 uses
  %i.ec = or disjoint i64 %.sroa.06.057.i, 16     ; 2 uses
  %i.ed = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ec) #15 ; 2 uses
  %i.ee = or disjoint i64 %.sroa.06.057.i, 32     ; 2 uses
  %i.ef = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ee) #15 ; 2 uses
  %i.eg = or disjoint i64 %.sroa.06.057.i, 48     ; 2 uses
  %i.eh = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.eg) #15 ; 2 uses
  %i.ei = icmp eq i16 %i.eb, 0
  br i1 %i.ei, label %.preheader53.1.i, label %bb.ar

.preheader53.1.i:                                 ; preds = %bb.ar, %.lr.ph.i
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i ], [ %i.fd, %bb.ar ] ; 3 uses
  %i.ej = icmp eq i16 %i.ed, 0
  br i1 %i.ej, label %.preheader53.2.i, label %bb.an

bb.an:                                            ; preds = %.preheader53.1.i
  %i.ek = trunc nuw i8 %.sroa.014.2.i to i1
  %i.el = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.ec, i16 %i.ed, i1 zeroext %i.ek) #15
  %i.em = zext i1 %i.el to i8
  %i.en = or i8 %.sroa.014.2.i, %i.em
  br label %.preheader53.2.i

.preheader53.2.i:                                 ; preds = %bb.an, %.preheader53.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader53.1.i ], [ %i.en, %bb.an ] ; 3 uses
  %i.eo = icmp eq i16 %i.ef, 0
  br i1 %i.eo, label %.preheader53.3.i, label %bb.ao

bb.ao:                                            ; preds = %.preheader53.2.i
  %i.ep = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.eq = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.ee, i16 %i.ef, i1 zeroext %i.ep) #15
  %i.er = zext i1 %i.eq to i8
  %i.es = or i8 %.sroa.014.2.1.i, %i.er
  br label %.preheader53.3.i

.preheader53.3.i:                                 ; preds = %bb.ao, %.preheader53.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader53.2.i ], [ %i.es, %bb.ao ] ; 3 uses
  %i.et = icmp eq i16 %i.eh, 0
  br i1 %i.et, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.preheader53.3.i
  %i.eu = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.ev = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %i.eg, i16 %i.eh, i1 zeroext %i.eu) #15
  %i.ew = zext i1 %i.ev to i8
  %i.ex = or i8 %.sroa.014.2.2.i, %i.ew
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.preheader53.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader53.3.i ], [ %i.ex, %bb.ap ] ; 2 uses
  %i.ey = add i64 %.sroa.06.057.i, 64             ; 3 uses
  %i.ez = add i64 %i.ey, %i.dx
  %i.fa = icmp uge i64 %i.ez, %3
  %i.fb = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fc = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.057.i, i16 %i.eb, i1 zeroext false) #15
  %i.fd = zext i1 %i.fc to i8
  br label %.preheader53.1.i

._crit_edge.i:                                    ; preds = %bb.as, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.as ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.ea, %.preheader.i4 ], [ %i.fn, %bb.as ]
  %i.fe = sub nuw i64 %3, %i.cx
  %i.ff = add i64 %i.fe, -16                      ; 2 uses
  %i.fg = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %i.ff) #15 ; 2 uses
  %i.fh = icmp eq i16 %i.fg, 0
  br i1 %i.fh, label %bb.aw, label %bb.au

.lr.ph61.i:                                       ; preds = %.preheader.i4, %bb.as
  %.sroa.06.160.i = phi i64 [ %i.fk, %bb.as ], [ %.sroa.06.0.lcssa.i, %.preheader.i4 ] ; 3 uses
  %i.fi = call i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.c, i64 %.sroa.06.160.i) #15 ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 0
  br i1 %i.fj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.at, %.lr.ph61.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph61.i ], [ %i.fp, %bb.at ] ; 2 uses
  %i.fk = add i64 %.sroa.06.160.i, 16             ; 2 uses
  %i.fl = add i64 %i.fk, %i.de
  %i.fm = icmp uge i64 %i.fl, %3
  %i.fn = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = select i1 %i.fm, i1 true, i1 %i.fn
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph61.i

bb.at:                                            ; preds = %.lr.ph61.i
  %i.fo = call zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr nonnull align 8 %i.d, i64 %.sroa.06.160.i, i16 %i.fi, i1 zeroext false) #15
  %i.fp = zext i1 %i.fo to i8
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_inCs4ZaLwAtrTbk_16deltalake_derive:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fz = trunc nuw i8 %.sroa.0.0.i.ph to i1
  br label %bb.c

bb.ax:                                            ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.ga = icmp eq i32 %bcmp, 0
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EE0B5d_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1Y_EE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters10filter_map9FilterMapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EE0B5d_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvXso_NtCsbvkFyIu7lgC_4core6resultINtB8_6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtCs7nQiqFc7Txl_3syn5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_B1k_B21_EE9from_iterINtNtNtB2H_8adapters3map3MapINtNtNtBa_5slice4iter4IterRNtNtB25_4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EE0B4Z_(ptr sret([24 x i8]) align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3a_8try_folduNCINvNvB3a_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6f_ENcNtB6V_5Break0E0B6V_E0IB6W_B6V_EEB2e_(ptr sret([32 x i8]) align 8, ptr align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBV_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1G_5error5ErrorEEB3b_8try_folduNCINvNvB3b_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB6g_ENcNtB6W_5Break0E0B6W_E0IB6X_B6W_EEB2e_(ptr sret([32 x i8]) align 8, ptr align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_(ptr sret([32 x i8]) align 8, ptr align 8, ptr, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6V_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowIBK_NtCsbjGuDcEILED_11proc_macro211TokenStreamEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try11from_outputCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB1k_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3c_B29_EENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1f_EB41_EIB1O_NtNtBa_7convert10InfallibleB2P_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6W_12try_for_each4callB29_B3Q_NcNtB3Q_5Break0E0B3Q_E0E0B45_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_(ptr sret([32 x i8]) align 8, ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtCs7nQiqFc7Txl_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1u_(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBe_3ops12control_flow11ControlFlowB1k_ENcNtB20_5Break0E0Cs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtB4_9try_trait3Try6branchCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB4_11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCs4ZaLwAtrTbk_16deltalake_derive(ptr sret([32 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs7nQiqFc7Txl_3syn5error5ErrorEEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMNtCsbvkFyIu7lgC_4core3stre3lenCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor3new(ptr sret([88 x i8]) align 8, i64, i64, i1 zeroext) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsbjGuDcEILED_11proc_macro2(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: cold inlinehint nonlazybind uwtable
declare zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0CsbjGuDcEILED_11proc_macro2(ptr align 8, i64, i16, i1 zeroext) unnamed_addr #9

; Function Attrs: inlinehint nonlazybind uwtable
declare i16 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss1_0CsbjGuDcEILED_11proc_macro2(ptr align 8, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsbjGuDcEILED_11proc_macro2(ptr align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB5_11ControlFlowuENtNtB9_3cmp9PartialEq2eqCsbjGuDcEILED_11proc_macro2(ptr, ptr) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_3ops12control_flow11ControlFlowNtCsbjGuDcEILED_11proc_macro211TokenStreamEECs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2d_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1Z_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtCsbvkFyIu7lgC_4core3stre5charsCs4ZaLwAtrTbk_16deltalake_derive(ptr, i64) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i32 } @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4ZaLwAtrTbk_16deltalake_derive(ptr, i32) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i32 } @_RNvXs4_NtNtCsbvkFyIu7lgC_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4ZaLwAtrTbk_16deltalake_derive(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchrCs4ZaLwAtrTbk_16deltalake_derive(i8, ptr, i64) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr sret([104 x i8]) align 8, ptr, i64, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8, ptr, i64, ptr, i64, i1 zeroext) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3getCs4ZaLwAtrTbk_16deltalake_derive(i64, ptr, i64) unnamed_addr #3

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr, i64, i64, i64, ptr align 8) unnamed_addr #10

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsbjGuDcEILED_11proc_macro2(ptr align 8) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_14RejectAndMatchECsbjGuDcEILED_11proc_macro2(ptr sret([24 x i8]) align 8, ptr align 8, ptr, i64, ptr, i64, i1 zeroext) unnamed_addr #3

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvYjNtNtCsbvkFyIu7lgC_4core3cmp3Ord3maxCsbjGuDcEILED_11proc_macro2(i64, i64) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { inlinehint }
attributes #16 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{i64 -2811351851200680710}
!4 = !{i64 6542584615658077689}
!5 = !{i64 3321745473022555759}
!6 = !{i64 1735896519932923131}
!7 = !{i64 3439898193136882671}
!8 = !{i64 4388483416702739359}
!9 = !{i64 -333043344218863124}
!10 = !{i64 5348845730928435008}
!11 = !{i64 -267906845781038936}
!12 = !{i64 -3003667531109291306}
!13 = !{i64 5685351658443074510}
!14 = !{i64 4278776399446614217}
!15 = !{i64 5775951626016998825}
!16 = !{i64 -373068985121304955}
!17 = !{i64 3977201413237083286}
!18 = !{i64 3676061969687127229}
!19 = !{i64 8977657780541886230}
!20 = distinct !{!20, i1 true, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme13new_graphemesCs4ZaLwAtrTbk_16deltalake_derive"}
!21 = distinct !{!21, !20, !"_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme13new_graphemesCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!22 = !{i64 -9139033879346517034}
!23 = !{!21}
!24 = distinct !{!24, i1 true, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_"}
!25 = distinct !{!25, !24, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive22generate_load_from_env0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4A_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5M_ENcNtB6s_5Break0E0B6s_EB2v_: argument 0"}
!26 = !{i64 1336377746655567958}
!27 = !{!25}
!28 = !{i64 -4162556005425479760}
!29 = distinct !{!29, i1 true, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_"}
!30 = distinct !{!30, !29, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_10filter_map9FilterMapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive23generate_try_update_key0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1X_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4B_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5N_ENcNtB6t_5Break0E0B6t_EB2v_: argument 0"}
!31 = !{i64 -6184610746524977674}
!32 = !{!30}
!33 = !{i64 5913490598712779621}
!34 = distinct !{!34, i1 true, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_"}
!35 = distinct !{!35, !34, !"_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCs4ZaLwAtrTbk_16deltalake_derive20generate_config_keys0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB1J_5error5ErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4k_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtB7_3ops12control_flow11ControlFlowB5w_ENcNtB6c_5Break0E0B6c_EB2h_: argument 0"}
!36 = !{i64 8540241806018478204}
!37 = !{!35}
!38 = !{i64 -8497478453469848549}
!39 = !{i64 -7290892227385540482}
!40 = !{i64 -4232517315446855364}
!41 = !{i64 7033957192349305423}
!42 = !{i64 -5478668619662010259}
!43 = !{i64 -5786039210635366082}
!44 = !{i64 -3440433448084569797}
!45 = distinct !{!45, i1 true, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive"}
!46 = distinct !{!46, !45, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!47 = distinct !{!47, i1 true, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive"}
!48 = distinct !{!48, !47, !"_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!49 = !{i64 -4120120577255695910}
!50 = !{!46}
!51 = !{!48, !46}
!52 = distinct !{!52, i1 true, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive"}
!53 = distinct !{!53, !52, !"_RNvYINtNtNtCsbvkFyIu7lgC_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!54 = distinct !{!54, i1 true, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive"}
!55 = distinct !{!55, !54, !"_RNvXs9_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!56 = !{i64 -1927021043518848407}
!57 = !{!53}
!58 = !{!55, !53}
!59 = distinct !{!59, i1 true, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive"}
!60 = distinct !{!60, !59, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!61 = distinct !{!61, i1 true, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive"}
!62 = distinct !{!62, !61, !"_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4nextCs4ZaLwAtrTbk_16deltalake_derive: argument 0"}
!63 = !{i64 6712732870582323402}
!64 = !{!60}
!65 = !{!62}
!66 = !{!62, !60}
end_hunk_1

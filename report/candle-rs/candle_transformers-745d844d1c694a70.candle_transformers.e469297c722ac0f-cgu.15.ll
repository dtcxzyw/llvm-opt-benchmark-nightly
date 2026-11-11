Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.15?download=true
inline.NumInlined: 3310
inline.NumDeleted: 425
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor4meanjECs1dZk1kIfPhr_19candle_transformers:bb.a
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.525.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.d
  %.sroa.04.0.i = phi i64 [ 0, %bb.d ], [ %i.u, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ 1, %bb.d ], [ %i.t, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.04.0.i
  %.val11.i = load i64, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %i.p = icmp ult i64 %.val11.i, %i.m
  br i1 %i.p, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val11.i, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #28
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.e
  %i.q = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.val11.i
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = mul i64 %i.s, %.sroa.02.0.i              ; 2 uses
  %i.u = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.j
  br i1 %i.v, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit, label %bb.e

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB17_6Tensor4meanjE0NCINvXsL_NtNtB8_6traits5accumjNtB2b_7Product7productINtB4_3MapINtNtNtBa_5slice4iter4IterjEBY_EE0E0Cs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.w = uitofp i64 %i.t to double
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit, %bb.c
  %.sroa.0.0.i = phi double [ 1.000000e+00, %bb.c ], [ %i.w, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8sum_implINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.c, i1 noundef zeroext false)
  %i.x = load i64, ptr %i.a, align 8, !range !10, !noundef !4 ; 2 uses
  %.not38 = icmp eq i64 %i.x, -1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit
  %.sroa.430.0.copyload = load ptr, ptr %i.y, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.534.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.531.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.x, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.430.0.copyload, ptr %.sroa.433.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRjjjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB2o_6Tensor4meanjE0NCINvXsL_NtBW_5accumjNtB3s_7Product7productINtB1I_3MapBF_B2f_EE0E0ECs1dZk1kIfPhr_19candle_transformers.exit
  %i.z = fdiv double 1.000000e+00, %.sroa.0.0.i
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noundef nonnull %i.aa, double noundef %i.z)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.ab

bb.k:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #24
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor4rollNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i32 noundef %2, i64 noundef range(i64 0, 3) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %4, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.val78 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val78, i64 16 ; 2 uses
  call void @_RNvXs8_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_1DNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 4)
  %i.l = load i64, ptr %i.h, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.544.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.541.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 %i.l, ptr %0, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %.sroa.443.0..sroa_idx, align 8
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.n, ptr %i.b, align 8, !noalias !2046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2046
  call void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core5shapejNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 3), !noalias !2046
  %i.o = load i64, ptr %i.a, align 8, !range !10, !noalias !2046, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noalias !2046 ; 4 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2046
  %i.r = getelementptr inbounds nuw i8, ptr %.val78, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !2046, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28, !noalias !2046
  unreachable

bb.f:                                             ; preds = %bb.c
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.511.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.o, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %.sroa.452.0..sroa_idx, align 8
  br label %bb.aa

bb.g:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.val78, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2046, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.q
  %i.x = load i64, ptr %i.w, align 8, !noalias !2046, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = trunc i64 %i.x to i32                    ; 4 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.y, -1
  %i.ab = icmp eq i32 %2, -2147483648
  %i.ac = and i1 %i.ab, %i.aa
  br i1 %i.ac, label %bb.j, label %_RNvMs0_NtCsf3Ta7LF998c_4core3numl10rem_euclid.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const24panic_const_rem_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable

_RNvMs0_NtCsf3Ta7LF998c_4core3numl10rem_euclid.exit: ; preds = %bb.h
  %i.ad = srem i32 %2, %i.y                       ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %.sroa.01.0.i = call i32 @llvm.abs.i32(i32 %i.y, i1 false)
  %i.af = select i1 %i.ae, i32 %.sroa.01.0.i, i32 0
  %.sroa.0.0.i = add i32 %i.af, %i.ad             ; 2 uses
  %5 = zext nneg i32 %.sroa.0.0.i to i64          ; 2 uses
  %i.ag = icmp eq i32 %.sroa.0.0.i, 0
  br i1 %i.ag, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_RNvMs0_NtCsf3Ta7LF998c_4core3numl10rem_euclid.exit
  %i.ah = atomicrmw add ptr %.val78, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val78, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.m:                                             ; preds = %_RNvMs0_NtCsf3Ta7LF998c_4core3numl10rem_euclid.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ak = sub i64 %i.x, %5                        ; 2 uses
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.n, i64 noundef 0, i64 noundef %i.ak)
  %i.al = load i64, ptr %i.f, align 8, !range !10, !noundef !4 ; 2 uses
  %.not75 = icmp eq i64 %i.al, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  br i1 %.not75, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.559.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.al, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %.sroa.461.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit79

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.an, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor6narrowjECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %i.n, i64 noundef %i.ak, i64 noundef %5)
          to label %bb.r unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81: ; preds = %bb.v, %bb.w, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.ay, %bb.w ], [ %i.ay, %bb.v ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2047)
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %i.ao = load ptr, ptr %i.g, align 8, !alias.scope !2050, !nonnull !4, !noundef !4
  %i.ap = atomicrmw add ptr %i.ao, i64 -1 release, align 8, !noalias !2050
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.ab

bb.q:                                             ; preds = %bb.y, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81

bb.r:                                             ; preds = %bb.o
  %i.as = load i64, ptr %i.d, align 8, !range !10, !noundef !4 ; 2 uses
  %.not76 = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %.not76, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.571.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.568.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.as, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.470.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = atomicrmw add ptr %i.an, i64 -1 release, align 8, !noalias !2051
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit79

bb.t:                                             ; preds = %bb.s
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit79

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.au, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.ax, align 8
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core10tensor_catNtNtB5_6tensor6Tensor3catRBI_jECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.c, i64 noundef 2, i64 noundef %i.n)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  call void @llvm.experimental.noalias.scope.decl(metadata !2054)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !2055, !nonnull !4, !noundef !4
  %i.ba = atomicrmw add ptr %i.az, i64 -1 release, align 8, !noalias !2055
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81 unwind label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  %i.bc = load ptr, ptr %i.e, align 8, !alias.scope !2059, !nonnull !4, !noundef !4
  %i.bd = atomicrmw add ptr %i.bc, i64 -1 release, align 8, !noalias !2059
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.y, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  %i.bf = load ptr, ptr %i.g, align 8, !alias.scope !2063, !nonnull !4, !noundef !4
  %i.bg = atomicrmw add ptr %i.bf, i64 -1 release, align 8, !noalias !2063
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit84

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit84

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit84: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit83, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.b, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit79, %bb.f, %_RNvXsj_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit84
  ret void

bb.ab:                                            ; preds = %bb.w, %bb.p
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit79: ; preds = %bb.t, %bb.s, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aa

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit81, %bb.p
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor5chunkNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef %2, i64 noundef range(i64 0, 3) %3, i64 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  store i64 %3, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %4, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  call void @_RNvXs8_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_1DNtB5_3Dim8to_index(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5)
  %i.m = load i64, ptr %i.g, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.540.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.537.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
end_hunk_0

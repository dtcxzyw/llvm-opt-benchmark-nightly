Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.05?download=true
inline.NumInlined: 3032
inline.NumDeleted: 1183
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes11UInt128TypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECseyIfFeUOWMb_17polars_mem_engine:bb.a
  call fastcc void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes11UInt128TypeE20new_with_compute_lenCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !3283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3284, !noalias !3247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3258
  ret void, !dbg !3285

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %.thread18.thread unwind label %bb.k, !dbg !3286, !noalias !3250

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3287, !noalias !3250
  unreachable, !dbg !3287

bb.l:                                             ; preds = %bb.n, %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3288
  unreachable, !dbg !3288

.thread18:                                        ; preds = %bb.n, %bb.m
  br i1 %i.g, label %bb.o, label %.thread18.thread, !dbg !3289

bb.m:                                             ; preds = %.thread21, %.thread
  %.pn15 = phi { ptr, i32 } [ %i.k, %.thread ], [ %i.h, %.thread21 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !3290
  %i.y = load i8, ptr %i.x, align 1, !dbg !3290, !range !1435, !alias.scope !3251, !noundef !1356
  %i.z = icmp eq i8 %i.y, -40, !dbg !3291
  br i1 %i.z, label %bb.n, label %.thread18, !dbg !3291, !prof !1486

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread18 unwind label %bb.l, !dbg !3292

.thread18.thread:                                 ; preds = %bb.j, %bb.o, %.thread18
  %.pn1425 = phi { ptr, i32 } [ %.pn15, %.thread18 ], [ %.pn15, %bb.o ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %.pn1425, !dbg !3288

bb.o:                                             ; preds = %.thread18
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayoEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(88) %2) #36
          to label %.thread18.thread unwind label %bb.l, !dbg !3289
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB7_12ChunkedArrayNtNtB9_9datatypes9UInt8TypeE10with_chunkINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECseyIfFeUOWMb_17polars_mem_engine(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3293 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !3372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3360
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !3373
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 281) 16, i64 noundef range(i64 1, 17) 8) #31, !dbg !3374 ; 5 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !3375       ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit, !dbg !3376, !prof !1476

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #40
          to label %.noexc unwind label %.thread21, !dbg !3377

.thread21:                                        ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.m, !dbg !3378

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !3377

_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !dbg !3379
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !3380, !noalias !3361
  %i.i = tail call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 281) 88, i64 noundef range(i64 1, 17) 8) #31, !dbg !3381, !noalias !3361 ; 3 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !3382
  br i1 %i.j, label %bb.c, label %bb.f, !dbg !3383, !prof !1476

bb.c:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #40
          to label %.noexc4 unwind label %bb.d, !dbg !3384

.noexc4:                                          ; preds = %bb.c
  unreachable, !dbg !3384

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.c) #36
          to label %.thread unwind label %bb.e, !dbg !3385

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3386
  unreachable, !dbg !3386

.thread:                                          ; preds = %bb.d
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 16, i64 noundef 8) #31, !dbg !3387
  br label %bb.m, !dbg !3378

bb.f:                                             ; preds = %_RNvNtCsgZ49sUHp3tW_5alloc5boxed14box_new_uninit.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 88, i1 false), !dbg !3388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3389
  store ptr %i.i, ptr %i.f, align 8, !dbg !3360
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3360
  store ptr @17, ptr %i.m, align 8, !dbg !3360
  store i64 1, ptr %i.d, align 8, !dbg !3390
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3390
  store ptr %i.f, ptr %i.n, align 8, !dbg !3390
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !3390
  store i64 1, ptr %i.o, align 8, !dbg !3390
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !3391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3391, !noalias !3366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !3392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3393, !noalias !3367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3393, !noalias !3368
  store i64 1, ptr %i.a, align 16, !dbg !3391, !noalias !3366
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3391
  store i64 1, ptr %i.p, align 8, !dbg !3391, !noalias !3366
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !3391
  store i8 1, ptr %i.q, align 16, !dbg !3391, !noalias !3366
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !dbg !3394, !noalias !3369
  %i.r = tail call noundef align 16 dereferenceable_or_null(96) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 0, 281) 96, i64 noundef range(i64 1, 17) 16) #31, !dbg !3395, !noalias !3369 ; 3 uses
  %i.s = icmp eq ptr %i.r, null, !dbg !3396
  br i1 %i.s, label %bb.g, label %_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeE31from_chunks_and_dtype_uncheckedCseyIfFeUOWMb_17polars_mem_engine.exit.i, !dbg !3397, !prof !1476

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 96) #40
          to label %.noexc.i.i unwind label %bb.h, !dbg !3398, !noalias !3366

.noexc.i.i:                                       ; preds = %bb.g
  unreachable, !dbg !3398

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync8ArcInnerNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a) #36
          to label %bb.j unwind label %bb.i, !dbg !3399, !noalias !3366

bb.i:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3400, !noalias !3366
  unreachable, !dbg !3400

_RNvMs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array4fromINtB6_12ChunkedArrayNtNtB8_9datatypes9UInt8TypeE31from_chunks_and_dtype_uncheckedCseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.r, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !3401, !noalias !3366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3402, !noalias !3366
  call fastcc void @_RNvMNtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB2_12ChunkedArrayNtNtB4_9datatypes9UInt8TypeE20new_with_compute_lenCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull %i.r, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d), !dbg !3403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3404, !noalias !3367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3378
  ret void, !dbg !3405

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %.thread18.thread unwind label %bb.k, !dbg !3406, !noalias !3370

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3407, !noalias !3370
  unreachable, !dbg !3407

bb.l:                                             ; preds = %bb.n, %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3408
  unreachable, !dbg !3408

.thread18:                                        ; preds = %bb.n, %bb.m
  br i1 %i.g, label %bb.o, label %.thread18.thread, !dbg !3409

bb.m:                                             ; preds = %.thread21, %.thread
  %.pn15 = phi { ptr, i32 } [ %i.k, %.thread ], [ %i.h, %.thread21 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 23, !dbg !3410
  %i.y = load i8, ptr %i.x, align 1, !dbg !3410, !range !1435, !alias.scope !3371, !noundef !1356
  %i.z = icmp eq i8 %i.y, -40, !dbg !3411
  br i1 %i.z, label %bb.n, label %.thread18, !dbg !3411, !prof !1486

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread18 unwind label %bb.l, !dbg !3412

.thread18.thread:                                 ; preds = %bb.j, %bb.o, %.thread18
  %.pn1425 = phi { ptr, i32 } [ %.pn15, %.thread18 ], [ %.pn15, %bb.o ], [ %i.t, %bb.j ]
  resume { ptr, i32 } %.pn1425, !dbg !3408

bb.o:                                             ; preds = %.thread18
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(88) %2) #36
          to label %.thread18.thread unwind label %bb.l, !dbg !3409
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeAINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEj1_ECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3413 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(88) %0)
          to label %bb.c unwind label %bb.b, !dbg !3433

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3433
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %bb.g, !dbg !3434

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !3433
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragemENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit2.i unwind label %bb.e, !dbg !3435

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.a, %bb.b ]
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3433 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !dbg !3436, !alias.scope !3431, !noundef !1356
  %i.e = icmp eq ptr %i.d, null, !dbg !3436
  br i1 %i.e, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseyIfFeUOWMb_17polars_mem_engine.exit.i, label %bb.d, !dbg !3436

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseyIfFeUOWMb_17polars_mem_engine.exit.i unwind label %bb.g, !dbg !3437

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit.i

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit2.i: ; preds = %bb.c
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3433 ; 2 uses
  %i.g = load ptr, ptr %2, align 8, !dbg !3438, !alias.scope !3432, !noundef !1356
  %i.h = icmp eq ptr %i.g, null, !dbg !3438
  br i1 %i.h, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.f, !dbg !3438

bb.f:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit2.i
  tail call void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !dbg !3439
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3438

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3433
  unreachable, !dbg !3433

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECseyIfFeUOWMb_17polars_mem_engine.exit.i: ; preds = %bb.d, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit.i
  resume { ptr, i32 } %.pn.i, !dbg !3433

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraymEECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsknLZRuU4977_13polars_buffer6buffer6BuffermEECseyIfFeUOWMb_17polars_mem_engine.exit2.i, %bb.f
  ret void, !dbg !3440
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils9unique_id8UniqueIdNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillEEB28_(ptr %.24.val, ptr nofree readonly captures(none) %.32.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.32.val) ]
  %i.a = load ptr, ptr %.32.val, align 8, !dbg !3461, !invariant.load !1356 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null, !dbg !3461
  br i1 %.not.i.i, label %bb.c, label %bb.b, !dbg !3461

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  invoke void %i.a(ptr noundef nonnull %.24.val)
          to label %bb.c unwind label %bb.e, !dbg !3461

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 8, !dbg !3462
  %i.c = load i64, ptr %i.b, align 8, !dbg !3462, !range !1493, !invariant.load !1356 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0, !dbg !3463
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillEBM_.exit, label %bb.d, !dbg !3463

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 16, !dbg !3462
  %i.f = load i64, ptr %i.e, align 8, !dbg !3464, !range !1494, !invariant.load !1356
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.24.val) ]
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.24.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #31, !dbg !3465
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillEBM_.exit, !dbg !3466

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.32.val, i64 8, !dbg !3467
  %i.i = load i64, ptr %i.h, align 8, !dbg !3467, !range !1493, !invariant.load !1356 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0, !dbg !3468
  br i1 %i.j, label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBO_.exit4.i.i, label %bb.f, !dbg !3468

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.32.val, i64 16, !dbg !3467
  %i.l = load i64, ptr %i.k, align 8, !dbg !3469, !range !1494, !invariant.load !1356
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.24.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #31, !dbg !3470
  br label %_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBO_.exit4.i.i, !dbg !3471

_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors8executor8ExecutorEL_ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBO_.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g, !dbg !3461

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCseyIfFeUOWMb_17polars_mem_engine9executors5cache12CachePrefillEBM_.exit: ; preds = %bb.c, %bb.d
  ret void, !dbg !3472
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1C_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB4u_EEEIB1y_IB26_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !152 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3505, !range !1498, !noundef !1356 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2, !dbg !3505
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !3505

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3505

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3498), !dbg !3505
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3506 ; 4 uses
  %i.d = icmp eq i64 %i.a, 0, !dbg !3506
  br i1 %i.d, label %bb.c, label %bb.e, !dbg !3506

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3499), !dbg !3506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3500), !dbg !3507
  %i.e = load ptr, ptr %i.c, align 8, !dbg !3508, !alias.scope !3501, !nonnull !1356, !noundef !1356
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !dbg !3509, !noalias !3501
  %i.g = icmp eq i64 %i.f, 1, !dbg !3510
  br i1 %i.g, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3510

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3511
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB34_EEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3512
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3512

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3502), !dbg !3506
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3503), !dbg !3513
  %i.h = load ptr, ptr %i.c, align 8, !dbg !3514, !alias.scope !3504, !nonnull !1356, !noundef !1356
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !3515, !noalias !3504
  %i.j = icmp eq i64 %i.i, 1, !dbg !3516
  br i1 %i.j, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3516

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3517
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEE9drop_slowB1y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #41, !dbg !3518
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtCs76NdGGEXHxZ_6either6EitherINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldINtNtNtNtB1g_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB48_EEEIB1c_IB1K_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3518
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1N_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3519 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3528, !range !1503, !noundef !1356
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !3528
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3528

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1r_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.a
  ret void, !dbg !3528

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !3529
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !3530
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i unwind label %bb.d, !dbg !3531

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketjINtNtBL_4sync3ArcSNtNtBL_6string6StringEEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) #36
          to label %common.resume.i.i unwind label %bb.g, !dbg !3529

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketjINtNtB7_4sync3ArcSNtNtB7_6string6StringEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1r_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseyIfFeUOWMb_17polars_mem_engine.exit unwind label %bb.e, !dbg !3532

bb.e:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketjINtNtB7_4sync3ArcSNtNtB7_6string6StringEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
          to label %common.resume.i.i unwind label %bb.f, !dbg !3533

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3532
  unreachable, !dbg !3532

common.resume.i.i:                                ; preds = %bb.e, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !3529

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !3529
  unreachable, !dbg !3529

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1r_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECseyIfFeUOWMb_17polars_mem_engine.exit.i.i
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketjINtNtB7_4sync3ArcSNtNtB7_6string6StringEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(64) %0), !dbg !3534
  br label %bb.b, !dbg !3528
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1V_EEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 !dbg !174 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3570, !range !1508, !noundef !1356
  %i.b = icmp eq i64 %i.a, 0, !dbg !3570
  br i1 %i.b, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit, label %bb.b, !dbg !3570

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void, !dbg !3570

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3570 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3564), !dbg !3570
  %i.d = load ptr, ptr %i.c, align 8, !dbg !3571, !alias.scope !3564, !noundef !1356 ; 2 uses
  %i.e = icmp eq ptr %i.d, null, !dbg !3571
  br i1 %i.e, label %bb.c, label %bb.e, !dbg !3571

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !3571 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3565), !dbg !3571
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3566), !dbg !3572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3567), !dbg !3573
  %i.g = load ptr, ptr %i.f, align 8, !dbg !3574, !alias.scope !3568, !nonnull !1356, !noundef !1356
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !dbg !3575, !noalias !3568
  %i.i = icmp eq i64 %i.h, 1, !dbg !3576
  br i1 %i.i, label %bb.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3576

bb.d:                                             ; preds = %bb.c
  fence acquire, !dbg !3577
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #41, !dbg !3578
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3578

bb.e:                                             ; preds = %bb.b
  %i.j = atomicrmw sub ptr %i.d, i64 1 release, align 8, !dbg !3579, !noalias !3569
  %i.k = icmp eq i64 %i.j, 1, !dbg !3580
  br i1 %i.k, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3580

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !3581
  tail call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameEEp6OutputINtNtBO_6result6ResultB1o_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtBO_6marker4SendNtB3F_4SyncEL_E9drop_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #41, !dbg !3582
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsfcROwRM8ZtH_11polars_plan8callback12PlanCallbackNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameB1z_EECseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !3582
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !188 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !3586, !range !1503, !noundef !1356
  %i.b = icmp eq i64 %i.a, -9223372036854775808, !dbg !3586
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !3586

bb.b:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECseyIfFeUOWMb_17polars_mem_engine.exit, %bb.a
  ret void, !dbg !3586

bb.c:                                             ; preds = %bb.a
end_hunk_0

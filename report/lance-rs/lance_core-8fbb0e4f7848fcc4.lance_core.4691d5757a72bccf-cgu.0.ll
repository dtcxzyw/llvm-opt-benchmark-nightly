Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RNvYNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBa_:bb.a
  %i.e = and i64 %i.a, 524288
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i, %.split.i
  %i.f = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.split1.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i, !prof !27

.split1.i:                                        ; preds = %bb.b
  %i.h = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.i = and i128 %i.h, 32768
  %.not9.i = icmp eq i128 %i.i, 0
  br i1 %.not9.i, label %bb.d, label %bb.e

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i: ; preds = %bb.b
  %i.j = and i64 %i.f, 32768
  %.not8.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i, %.split.i
  %i.k = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.split.i.i, label %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i.i, !prof !27

.split.i.i:                                       ; preds = %bb.c
  %i.m = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.n = and i128 %i.m, 524288
  %.not5.i.i = icmp eq i128 %i.n, 0
  br i1 %.not5.i.i, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit, label %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8622has_avx512_f16_support.exit.i

_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i.i: ; preds = %bb.c
  %i.o = and i64 %i.k, 524288
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit, label %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8622has_avx512_f16_support.exit.i

_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8622has_avx512_f16_support.exit.i: ; preds = %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i.i, %.split.i.i
  %i.p = tail call { i32, i32, i32, i32 } asm sideeffect inteldialect "mov ${0:q}, rbx\0Acpuid\0Axchg ${0:q}, rbx", "=&r,=&{ax},=&{cx},=&{dx},1,2,~{memory}"(i32 7, i32 0) #65, !srcloc !116
  %.fr.i = freeze { i32, i32, i32, i32 } %i.p
  %i.q = extractvalue { i32, i32, i32, i32 } %.fr.i, 3
  %i.r = and i32 %i.q, 8388608
  %.not17.i = icmp eq i32 %i.r, 0
  %spec.select.i = select i1 %.not17.i, i8 6, i8 7
  br label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

bb.d:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit5.i, %.split5.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i, %.split1.i
  %i.s = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.split4.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit3.i, !prof !27

.split4.i:                                        ; preds = %bb.d
  %i.u = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.v = and i128 %i.u, 16384
  %.not13.i = icmp eq i128 %i.v, 0
  br i1 %.not13.i, label %bb.f, label %bb.i

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit3.i: ; preds = %bb.d
  %i.w = and i64 %i.s, 16384
  %.not12.i = icmp eq i64 %i.w, 0
  br i1 %.not12.i, label %bb.f, label %bb.i

bb.e:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i, %.split1.i
  %i.x = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.split5.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit5.i, !prof !27

.split5.i:                                        ; preds = %bb.e
  %i.z = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.aa = and i128 %i.z, 72057594037927936
  %.not11.i = icmp eq i128 %i.aa, 0
  br i1 %.not11.i, label %bb.d, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit5.i: ; preds = %bb.e
  %i.ab = and i64 %i.x, 72057594037927936
  %.not10.i = icmp eq i64 %i.ab, 0
  br i1 %.not10.i, label %bb.d, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

bb.f:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit9.i, %.split6.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit3.i, %.split4.i
  %i.ac = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.af = and i128 %i.ae, 16384
  %i.ag = icmp ne i128 %i.af, 0
  br label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit7.i

bb.h:                                             ; preds = %bb.f
  %i.ah = and i64 %i.ac, 16384
  %i.ai = icmp ne i64 %i.ah, 0
  br label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit7.i

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit7.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.in.i6.i = phi i1 [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  %.1.i = select i1 %.sroa.0.0.in.i6.i, i8 3, i8 0
  br label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

bb.i:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit3.i, %.split4.i
  %i.aj = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.split6.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit9.i, !prof !27

.split6.i:                                        ; preds = %bb.i
  %i.al = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.am = and i128 %i.al, 72057594037927936
  %.not15.i = icmp eq i128 %i.am, 0
  br i1 %.not15.i, label %bb.f, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit9.i: ; preds = %bb.i
  %i.an = and i64 %i.aj, 72057594037927936
  %.not14.i = icmp eq i64 %i.an, 0
  br i1 %.not14.i, label %bb.f, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit

_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT0B7_.exit: ; preds = %.split.i.i, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i.i, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8622has_avx512_f16_support.exit.i, %.split5.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit5.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit7.i, %.split6.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit9.i
  %.sroa.0.0.i = phi i8 [ 5, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit5.i ], [ 4, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit9.i ], [ %.1.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit7.i ], [ 6, %.split.i.i ], [ %spec.select.i, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8622has_avx512_f16_support.exit.i ], [ 4, %.split6.i ], [ 5, %.split5.i ], [ 6, %_RNvNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu3x8610has_avx512.exit.i.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceuE9call_onceBa_() unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCsgczF5crJ4sT_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 25)
  %i.d = load i64, ptr %i.c, align 8, !range !32, !noundef !24
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio15parse_env_usize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 25, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i, i64 noundef %.sroa.8.0.copyload.i, i64 noundef 0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorEECs63DIHKhvmTb_10lance_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26508
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorEECs63DIHKhvmTb_10lance_core.exit.i

bb.e:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !range !26, !noundef !24
  %.not.i = icmp eq i64 %i.i, -1
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  invoke fastcc void @_RNCNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION00B9_(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
          to label %.unreachable.i unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.l, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0B7_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26509
  br label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0B7_.exit

.unreachable.i:                                   ; preds = %bb.f
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsgczF5crJ4sT_3std3env8VarErrorEECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26510)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i8.i = load i64, ptr %i.m, align 8, !range !26, !alias.scope !26510, !noundef !24 ; 2 uses
  %i.n = icmp sgt i64 %.val.i8.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.sink.split.i9.i, label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0B7_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.sink.split.i9.i: ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i11.i = load ptr, ptr %i.o, align 8, !alias.scope !26510, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i11.i, i64 noundef %.val.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !26510
  br label %_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0B7_.exit

_RNCNvNtNtCs63DIHKhvmTb_10lance_core5utils5tokio19IO_CORE_RESERVATION0B7_.exit: ; preds = %bb.g, %bb.h, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.sink.split.i9.i
  %.sroa.0.14.i = phi i64 [ 2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.sink.split.i9.i ], [ 2, %bb.i ], [ %i.k, %bb.g ], [ %i.k, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.sroa.0.14.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #37 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !79, !alias.scope !26513, !noundef !24 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  %i.f = insertelement <2 x ptr> <ptr poison, ptr @821>, ptr %0, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load <2 x ptr>, ptr %i.g, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = insertelement <2 x ptr> <ptr poison, ptr @823>, ptr %i.k, i64 0
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a, %bb.a
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !alias.scope !26513
  br label %_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs1e_Cs3PfUT229lOd_12object_storeNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.y = phi <2 x ptr> [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.f, %bb.a ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ <ptr null, ptr undef>, %bb.j ], [ %i.v, %bb.k ], [ %i.x, %bb.l ] ; 2 uses
  %i.z = extractelement <2 x ptr> %i.y, i64 0
  %i.aa = insertvalue { ptr, ptr } poison, ptr %i.z, 0
  %i.ab = extractelement <2 x ptr> %i.y, i64 1
  %i.ac = insertvalue { ptr, ptr } %i.aa, ptr %i.ab, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCs3PfUT229lOd_12object_store5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @615, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error11SchemaErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1326, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #35 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !80, !alias.scope !26516, !noundef !24
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 5, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 6, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 7, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 8, label %bb.f
    i64 9, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 10, label %bb.g
    i64 11, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 12, label %bb.h
    i64 13, label %bb.i
    i64 14, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 15, label %bb.j
    i64 16, label %bb.k
    i64 17, label %bb.l
    i64 18, label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.h:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !26516, !nonnull !24, !align !51, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.i:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !26516, !noundef !24
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !26516, !nonnull !24
  %.sroa.0.1.i = select i1 %.not.i, ptr null, ptr %i.x
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !26516, !nonnull !24, !noundef !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  br label %_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXsa_NtCs2bHstFFhpHt_17datafusion_common5errorNtB5_15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.21.0.i = phi ptr [ @1144, %bb.b ], [ @1036, %bb.c ], [ @970, %bb.d ], [ @1146, %bb.e ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ undef, %bb.a ], [ @1148, %bb.f ], [ undef, %bb.a ], [ @823, %bb.g ], [ undef, %bb.a ], [ %i.p, %bb.h ], [ @1150, %bb.i ], [ undef, %bb.a ], [ @1150, %bb.j ], [ @1150, %bb.k ], [ @1150, %bb.l ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.h, %bb.e ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ null, %bb.a ], [ %i.j, %bb.f ], [ null, %bb.a ], [ %i.l, %bb.g ], [ null, %bb.a ], [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ null, %bb.a ], [ %i.t, %bb.j ], [ %.sroa.0.1.i, %bb.k ], [ %i.aa, %bb.l ], [ null, %bb.a ]
  %i.ab = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ac = insertvalue { ptr, ptr } %i.ab, ptr %.sroa.21.0.i, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1327, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0) unnamed_addr #37 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !82, !alias.scope !26519, !noundef !24 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775807
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
    i64 4, label %bb.e
    i64 5, label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs8_NtCs3PfUT229lOd_12object_store4pathNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.c, %bb.d, %bb.e
  %.sroa.7.0.i = phi ptr [ undef, %bb.a ], [ @1031, %bb.c ], [ @970, %bb.d ], [ undef, %bb.a ], [ @1033, %bb.e ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ null, %bb.a ], [ %i.h, %bb.e ], [ null, %bb.a ]
  %i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %.sroa.7.0.i, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs3PfUT229lOd_12object_store4path5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1328, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser6parser11ParserErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1329, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser9tokenizer14TokenizerErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser9tokenizer14TokenizerErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs40MM8ukkVQd_9sqlparser9tokenizer14TokenizerErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser9tokenizer14TokenizerErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs40MM8ukkVQd_9sqlparser9tokenizer14TokenizerErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1330, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCscI6d9CVNmLh_4core3fmt5Write9write_fmtQNtNtCs40k4W9msRzi_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs63DIHKhvmTb_10lance_core.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !26520
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs5FpxmzdwmiN_3url6parser10ParseErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5FpxmzdwmiN_3url6parser10ParseErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs5FpxmzdwmiN_3url6parser10ParseErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs5FpxmzdwmiN_3url6parser10ParseErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs5FpxmzdwmiN_3url6parser10ParseErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1331, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error12DisplayErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error12DisplayErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #13 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1258, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error12DisplayErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error12DisplayErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1332, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #35 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !26523, !nonnull !24, !noundef !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !26523, !nonnull !24, !align !51, !noundef !24
  %i.d = insertvalue { ptr, ptr } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr %i.c, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error24CommitStatusUnknownErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @515, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs1C_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs63DIHKhvmTb_10lance_core5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @84, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #37 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !85, !alias.scope !26526, !noundef !24 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit [
    i64 1, label %bb.b
    i64 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !26526, !nonnull !24, !noundef !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !26526, !nonnull !24, !align !51, !noundef !24
  br label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit

_RNvXs4_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi ptr [ @970, %bb.c ], [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.k = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1333, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1334, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error11EncodeErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1335, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCskAO0uQb8M5a_5prost5error16UnknownEnumValueNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error16UnknownEnumValueNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCskAO0uQb8M5a_5prost5error16UnknownEnumValueNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 4 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error16UnknownEnumValueNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 4 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCskAO0uQb8M5a_5prost5error16UnknownEnumValueNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 4 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1336, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(128) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = tail call { i32, i32 } @_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_4IterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(128) %0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit

bb.b:                                             ; preds = %.preheader.i
  %i.d = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit, label %.preheader.i

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter4IterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit: ; preds = %.preheader.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %.preheader.i ], [ 0, %bb.b ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNvYNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byCs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(144) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.a = tail call { i32, i32 } @_RNvXs4_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB5_8IntoIterNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit

bb.b:                                             ; preds = %.preheader.i
  %i.d = add i64 %.sroa.01.0.i.i, -1              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit, label %.preheader.i

_RNvXs_NvNtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator10advance_byNtNtNtCs1akgR21QTtx_7roaring6bitmap4iter8IntoIterNtB4_13SpecAdvanceBy15spec_advance_byCs63DIHKhvmTb_10lance_core.exit: ; preds = %.preheader.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i, %.preheader.i ], [ 0, %bb.b ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs3PfUT229lOd_12object_store4path5parts11InvalidPartNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1337, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1341, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1342, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCseXbohGRa9jr_5tokio7runtime4task5error9JoinErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1343, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.117, %bb.j ] ; 3 uses
  %.sroa.6.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.115, %bb.j ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call { i64, ptr } @_RNvXs3_NtNtNtCsgczF5crJ4sT_3std3sys5stdio4unixNtB5_6StderrNtNtBb_2io5Write5write(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.6.041) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.d, 1        ; 11 uses
  store i64 %i.e, ptr %i.a, align 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = trunc nuw i64 %i.e to i1
  %i.h = ptrtoint ptr %i.f to i64                 ; 7 uses
  br i1 %i.g, label %bb.c, label %bb.d

.loopexit:                                        ; preds = %bb.j, %bb.a, %bb.f
  %.sroa.07.0 = phi ptr [ %.sroa.07.1, %bb.f ], [ null, %bb.a ], [ null, %bb.j ]
  ret ptr %.sroa.07.0

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.i
    i64 0, label %.split37
    i64 1, label %.split36
  ], !prof !89

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp ult i64 %.sroa.6.041, %i.h
  br i1 %i.k, label %bb.g, label %bb.h, !prof !27

bb.f:                                             ; preds = %bb.i, %.split, %.split36, %.split37, %bb.d
  %.sroa.07.1 = phi ptr [ @1345, %bb.d ], [ %i.f, %.split37 ], [ %i.f, %.split36 ], [ %i.f, %.split ], [ %i.f, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %.sroa.6.041, i64 noundef %.sroa.6.041, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1346) #68
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.l = sub nuw nsw i64 %.sroa.6.041, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 %i.h
  br label %bb.j

.split:                                           ; preds = %bb.c
  %.mask = and i64 %i.h, -4294967296
  %i.n = icmp eq i64 %.mask, 17179869184
  br i1 %i.n, label %.thread, label %bb.f

.split37:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !26527, !noundef !24
  %i.q = icmp eq i8 %i.p, 35
  br i1 %i.q, label %.thread, label %bb.f

.split36:                                         ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.f, i64 15
  %i.s = load i8, ptr %i.r, align 8, !range !26527, !noundef !24
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %.thread, label %bb.f

bb.i:                                             ; preds = %bb.c
  %i.u = lshr i64 %i.h, 32
  %i.v = icmp ult ptr %i.f, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i = trunc i64 %i.u to i8
  %spec.select.i.i = select i1 %i.v, i8 %switch.idx.cast.i.i, i8 -1 ; 2 uses
  %i.w = icmp ne i8 %spec.select.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i8 %spec.select.i.i, 35
  br i1 %i.x, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.i, %.split, %.split36, %.split37
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %.thread
  %.sroa.0.117 = phi ptr [ %.sroa.0.042, %.thread ], [ %i.m, %bb.h ]
  %.sroa.6.115 = phi i64 [ %.sroa.6.041, %.thread ], [ %i.l, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = icmp eq i64 %.sroa.6.115, 0
  br i1 %i.y, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsgczF5crJ4sT_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_allCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @734, i64 noundef 61)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, i64 } { ptr @1325, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #13 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs63DIHKhvmTb_10lance_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1347, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvYNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5Field20has_dictionary_typesINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBP_EE8call_mutB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26530
  call void @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field9data_type(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %0), !inline_history !112
  %i.b = load i8, ptr %i.a, align 8, !range !86, !noalias !26530, !noundef !24
  %i.c = icmp eq i8 %i.b, 34
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26530
  br i1 %i.c, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field20has_dictionary_types.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !26530, !nonnull !24, !noundef !24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26530, !noundef !24 ; 2 uses
  %.idx = mul nuw nsw i64 %i.g, 192
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %.not.not1 = icmp eq i64 %i.g, 0
  br i1 %.not.not1, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field20has_dictionary_types.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.b
  %.sroa.0.02 = phi ptr [ %i.j, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = call fastcc noundef zeroext i1 @_RNvYNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5Field20has_dictionary_typesINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTRBP_EE8call_mutB9_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.02) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 192 ; 2 uses
  %.not.not = icmp eq ptr %i.j, %i.h
  %or.cond = select i1 %i.i, i1 true, i1 %.not.not
  br i1 %or.cond, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field20has_dictionary_types.exit, label %.lr.ph

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field20has_dictionary_types.exit: ; preds = %.lr.ph, %bb.b, %bb.a
  %.sroa.0.0.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.i, %.lr.ph ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvYNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5Field8reset_idINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTQBP_EE8call_mutB9_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((176, 180)) %0) unnamed_addr #48 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 -1, ptr %i.a, align 8, !alias.scope !26533
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !26533, !nonnull !24, !noundef !24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !26533, !noundef !24 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 192
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field8reset_id.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.0.i.i1 = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  tail call fastcc void @_RNvYNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB5_5Field8reset_idINtNtNtCscI6d9CVNmLh_4core3ops8function5FnMutTQBP_EE8call_mutB9_(ptr noalias noundef align 8 dereferenceable(192) %.sroa.0.0.i.i1)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i1, i64 192 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field8reset_id.exit, label %.lr.ph

_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field8reset_id.exit: ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #49

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #49

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #50

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #51

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #49

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #50

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #52

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #50

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #53

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #54

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #54

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #53

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #55

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs4XDKJNDGLq7_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container14contains_range(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i48) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #50

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container3len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container4rank(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i16 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i16(i16, i16) #54

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #56

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvMs7_NtNtNtCskTBvlRM5ILY_4moka3cht3map6bucketNtB5_8RehashOp3new(i64 noundef, ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #50

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsl_Cs9ZJqkc64Jh8_14event_listenerNtB5_4Task4wake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 0, 4) i8 @_RNvXNtCskTBvlRM5ILY_4moka6commonNtB2_11CacheRegionINtNtCscI6d9CVNmLh_4core7convert4FromjE4from(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RINvMs1_NtNtCsarYeg9mIaO0_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvNtCs8S1wg6nVCjn_5ahash12random_state15get_fixed_seeds0E0ECs4ytUTZt2Gw9_11arrow_array(ptr noundef nonnull align 8) unnamed_addr #9

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RINvMs1_NtNtCsarYeg9mIaO0_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs8S1wg6nVCjn_5ahash12random_state12RandomSourceNtNtCscI6d9CVNmLh_4core6marker4SyncNtB2s_4SendEL_EE4initNtNvMs1_B6_IBN_pE11get_or_init4VoidNCINvB2_11get_or_initNCNvB1C_7get_src0E0ECs4ytUTZt2Gw9_11arrow_array(ptr noundef nonnull align 8) unnamed_addr #9

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8, i1 noundef zeroext, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #5

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs8_NtCslnBYTBsvsQk_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/RayTracer?download=true
inline.NumInlined: 4637
inline.NumDeleted: 1864
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  %5 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  store i64 %i.f, ptr %5, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !124
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 1, ptr %i.i, align 4, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.k, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 4, ptr %i.l, align 1, !tbaa !207
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %.not.i.not = icmp eq i64 %i.f, 0
  br i1 %.not.i.not, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !248
  %i.m = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 384)
          to label %.noexc unwind label %bb.f     ; 10 uses

.noexc:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.m, align 64, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !250
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  invoke void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 336 ; 2 uses
  store ptr null, ptr %i.q, align 16, !tbaa !259
  %i.r = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i unwind label %common.resume.i

common.resume.i:                                  ; preds = %.noexc1
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.p) #17
  br label %.body

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i: ; preds = %.noexc1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  store i32 0, ptr %i.v, align 32, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 356
  store i8 5, ptr %i.w, align 4, !tbaa !261
  %i.x = shl nsw i64 %i.u, 1
  %i.y = and i64 %i.x, 9223372036854775806
  store i64 %i.y, ptr %i.t, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.aa = load i64, ptr %2, align 8, !tbaa !263
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !267
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.ac, align 8, !tbaa !272
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.ad, align 8, !tbaa !273
  store ptr %3, ptr %i.q, align 16, !tbaa !259
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit: ; preds = %.noexc2, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.af = load atomic i8, ptr %i.ae monotonic, align 1
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

bb.f:                                             ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i, %.noexc, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %common.resume.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.s, %common.resume.i ]
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %eh.lpad-body

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit: ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::math::Ray<>::TimeSpan", align 16 ; 8 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %.sroa.0226 = alloca [3 x double], align 8      ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %10 = alloca %"class.std::vector.76", align 8   ; 12 uses
  %11 = alloca %"class.std::vector.76", align 8   ; 15 uses
  %12 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 12 uses
  %13 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 7 uses
  %15 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load double, ptr %i.j, align 8, !tbaa !163, !noalias !573 ; 3 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load double, ptr %i.n, align 8, !tbaa !163, !noalias !574 ; 2 uses
  %i.p = fsub double %i.l, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load double, ptr %i.r, align 8, !tbaa !163, !noalias !575
  %i.t = fmul double %i.k, %i.s
  %i.u = load <2 x double>, ptr %i.i, align 8, !tbaa !163, !noalias !573 ; 3 uses
  %i.v = fneg <2 x double> %i.u
  %i.w = load <2 x double>, ptr %i.m, align 8, !tbaa !163, !noalias !574 ; 2 uses
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = load <2 x double>, ptr %i.q, align 8, !tbaa !163, !noalias !575
  %i.z = fmul <2 x double> %i.u, %i.y
  %i.aa = fadd <2 x double> %i.u, %i.w
  %i.ab = fadd double %i.k, %i.o
  %i.ac = fdiv <2 x double> %i.z, %i.aa
  %i.ad = fdiv double %i.t, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load double, ptr %i.ae, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !278 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !279 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load double, ptr %i.ak, align 8, !tbaa !280 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %16 = load double, ptr %i.an, align 8, !tbaa !163, !noalias !576
  %17 = fdiv double 1.000000e+00, %16
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ap = load <2 x double>, ptr %18, align 8, !tbaa !163, !noalias !576
  %i.aq = fdiv <2 x double> splat (double 1.000000e+00), %i.ap
  store double %17, ptr %i.ao, align 8, !tbaa !163, !alias.scope !576
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !163, !alias.scope !576
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  store <2 x double> <double 1.000000e-09, double f0x7FEFFFFFFFFFFFFF>, ptr %i.as, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !123 ; 2 uses
  %i.av = load i64, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph446, label %._crit_edge447.thread

.lr.ph446:                                        ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !218
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !281
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %._crit_edge447.thread, label %.lr.ph446.split.preheader

.lr.ph446.split.preheader:                        ; preds = %.lr.ph446
  %i.bl = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph446.split

._crit_edge447.thread:                            ; preds = %bb.a, %.lr.ph446
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit

._crit_edge447:                                   ; preds = %._crit_edge443
  %.pre467 = load ptr, ptr %11, align 8, !tbaa !284 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.not.i.i.i = icmp eq ptr %.pre467, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge447
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !285
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.pre467 to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.pre467, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit: ; preds = %._crit_edge447.thread, %._crit_edge447, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.bu = load ptr, ptr %10, align 8, !tbaa !284  ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !285
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret void

.lr.ph446.split:                                  ; preds = %.lr.ph446.split.preheader, %._crit_edge443
  %.067444 = phi i64 [ %i.ce, %._crit_edge443 ], [ %i.au, %.lr.ph446.split.preheader ] ; 3 uses
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !218
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !111
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !281 ; 2 uses
  %.not448 = icmp eq i64 %i.cd, 0
  br i1 %.not448, label %._crit_edge443, label %.lr.ph442

._crit_edge443:                                   ; preds = %bb.am, %.lr.ph446.split
  %i.ce = add nuw i64 %.067444, 1                 ; 2 uses
  %exitcond462.not = icmp eq i64 %i.ce, %i.av
  br i1 %exitcond462.not, label %._crit_edge447, label %.lr.ph446.split, !llvm.loop !528

.lr.ph442:                                        ; preds = %.lr.ph446.split, %bb.am
  %.065440 = phi i64 [ %i.qd, %bb.am ], [ 0, %.lr.ph446.split ] ; 3 uses
  %i.cf = load ptr, ptr %i.ax, align 8, !tbaa !218 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !111 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !281
  %i.ck = mul i64 %i.cj, %.067444
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !288
  %i.cm = getelementptr [16 x i8], ptr %i.cl, i64 %.065440
  %i.cn = getelementptr [16 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %13, ptr noundef nonnull align 8 dereferenceable(496) %i.cf, i64 noundef %.065440, i64 noundef %.067444, double noundef 5.000000e-01, double noundef 5.000000e-01)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph442
  %i.cr = load ptr, ptr %i.ay, align 8, !tbaa !226
  %i.cs = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setWorldRayERKSH_(ptr noundef nonnull align 8 dereferenceable(496) %i.cr, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.cs, label %bb.g, label %bb.am

bb.f:                                             ; preds = %bb.d, %.lr.ph442
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  %i.cu = load ptr, ptr %i.ay, align 8, !tbaa !226 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  invoke void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_(ptr noundef nonnull align 8 dereferenceable(264) %i.cv, ptr noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noundef nonnull align 8 dereferenceable(88) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader unwind label %bb.h

_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader: ; preds = %bb.g
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !289 ; 2 uses
  %i.cz = load ptr, ptr %10, align 8, !tbaa !284  ; 2 uses
  %.not449 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not449, label %.loopexit290, label %.lr.ph433

bb.h:                                             ; preds = %bb.g
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph433:                                        ; preds = %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit
  %i.db = phi ptr [ %i.pi, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ %i.cz, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.dc = phi ptr [ %i.pj, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ %i.cy, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ]
  %.064432 = phi i64 [ %i.pm, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 0, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %.sroa.11.0429 = phi double [ %.sroa.11.1.lcssa, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 0.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %.sroa.15.0426 = phi double [ %.sroa.15.1.lcssa, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.pk, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ zeroinitializer, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.de = phi <2 x double> [ %i.pl, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.064432 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !290
  %i.dh = fdiv double %i.dg, %i.ah
  %i.di = call double @llvm.ceil.f64(double %i.dh)
  %i.dj = fmul double %i.ah, %i.di                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !291 ; 2 uses
  %i.dm = fcmp ugt double %i.dj, %i.dl
  br i1 %i.dm, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit, label %.lr.ph418

.lr.ph418:                                        ; preds = %.lr.ph433, %bb.ak
  %.063416 = phi double [ %i.pg, %bb.ak ], [ %i.dj, %.lr.ph433 ] ; 3 uses
  %.sroa.11.1413 = phi double [ %.sroa.11.3.ph, %bb.ak ], [ %.sroa.11.0429, %.lr.ph433 ] ; 3 uses
  %.sroa.15.1410 = phi double [ %.sroa.15.3.ph, %bb.ak ], [ %.sroa.15.0426, %.lr.ph433 ] ; 4 uses
  %i.dn = phi <2 x double> [ %i.pe, %bb.ak ], [ %i.dd, %.lr.ph433 ] ; 3 uses
  %i.do = phi <2 x double> [ %i.pf, %bb.ak ], [ %i.de, %.lr.ph433 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !226 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !195, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !577
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  %.sroa.9.0.copyload.i.i = load double, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !579
  %i.du = fmul double %.063416, %.sroa.9.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(88) %i.ds, i64 24, i1 false), !noalias !577
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !noalias !579
  %i.dw = insertelement <2 x double> poison, double %.063416, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dx, %i.dv
  %i.dz = load <2 x double>, ptr %9, align 16, !tbaa !163, !alias.scope !580, !noalias !577
  %i.ea = fadd <2 x double> %i.dy, %i.dz
  store <2 x double> %i.ea, ptr %9, align 16, !tbaa !163, !alias.scope !580, !noalias !577
  %i.eb = load double, ptr %i.ba, align 16, !tbaa !163, !alias.scope !580, !noalias !577
  %i.ec = fadd double %i.du, %i.eb
  store double %i.ec, ptr %i.ba, align 16, !tbaa !163, !alias.scope !580, !noalias !577
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !276, !noalias !581
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !294, !noalias !582 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !100, !noalias !582
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !582
  invoke void %i.ei(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.k, !inline_history !539

bb.i:                                             ; preds = %.lr.ph418
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !294, !noalias !583 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !100, !noalias !583
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !noalias !583
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEE6renderEb(ptr noundef nonnull align 8 dereferenceable(248) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %4 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  %5 = alloca %"class.tbb::detail::d1::blocked_range", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !120  ; 2 uses
  store i64 %i.f, ptr %5, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.h, align 8, !tbaa !124
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 1, ptr %i.i, align 4, !tbaa !244
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 1, ptr %i.k, align 8, !tbaa !245
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 4, ptr %i.l, align 1, !tbaa !207
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %.not.i.not = icmp eq i64 %i.f, 0
  br i1 %.not.i.not, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !248
  %i.m = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 384)
          to label %.noexc unwind label %bb.f     ; 10 uses

.noexc:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.m, align 64, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !250
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  invoke void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEC1ERKSL_(ptr noundef nonnull align 8 dereferenceable(248) %i.p, ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 336 ; 2 uses
  store ptr null, ptr %i.q, align 16, !tbaa !354
  %i.r = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i unwind label %common.resume.i

common.resume.i:                                  ; preds = %.noexc1
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.p) #17
  br label %.body

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i: ; preds = %.noexc1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  store i32 0, ptr %i.v, align 32, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 356
  store i8 5, ptr %i.w, align 4, !tbaa !261
  %i.x = shl nsw i64 %i.u, 1
  %i.y = and i64 %i.x, 9223372036854775806
  store i64 %i.y, ptr %i.t, align 8, !tbaa !262
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.aa = load i64, ptr %2, align 8, !tbaa !263
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !267
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.ac, align 8, !tbaa !272
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.ad, align 8, !tbaa !273
  store ptr %3, ptr %i.q, align 16, !tbaa !354
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit: ; preds = %.noexc2, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.af = load atomic i8, ptr %i.ae monotonic, align 1
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #26
  unreachable

bb.f:                                             ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS9_20VolumeRayIntersectorINS8_4GridINS8_4tree4TreeINSD_8RootNodeINSD_12InternalNodeINSG_INSD_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS8_4math3RayIdEEEENS9_10BoxSamplerEEEKNS1_16auto_partitionerEEEJRKS6_RKST_RSV_RS2_EEEPT_DpOT0_.exit.i, %.noexc, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %common.resume.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.f ], [ %i.s, %common.resume.i ]
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %eh.lpad-body

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit: ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEKNS1_16auto_partitionerEE3runERKS4_RKSR_RST_RNS1_18task_group_contextE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12VolumeRenderINS7_20VolumeRayIntersectorINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS6_4math3RayIdEEEENS7_10BoxSamplerEEEEEvRKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZNK7openvdb5v13_05tools12VolumeRenderINS1_20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEEENS1_10BoxSamplerEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openvdb::v13_0::math::Ray<>::TimeSpan", align 16 ; 8 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 5 uses
  %5 = alloca %"class.std::shared_ptr.309", align 8 ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %.sroa.0226 = alloca [3 x double], align 8      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 4 uses
  %9 = alloca %"class.openvdb::v13_0::math::Vec3", align 16 ; 7 uses
  %10 = alloca %"class.std::vector.76", align 8   ; 12 uses
  %11 = alloca %"class.std::vector.76", align 8   ; 15 uses
  %12 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 12 uses
  %13 = alloca %"class.openvdb::v13_0::math::Ray", align 8 ; 5 uses
  %14 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 7 uses
  %15 = alloca %"class.openvdb::v13_0::math::Vec3", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !276  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load double, ptr %i.j, align 8, !tbaa !163, !noalias !666 ; 3 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load double, ptr %i.n, align 8, !tbaa !163, !noalias !667 ; 2 uses
  %i.p = fsub double %i.l, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.s = load double, ptr %i.r, align 8, !tbaa !163, !noalias !668
  %i.t = fmul double %i.k, %i.s
  %i.u = load <2 x double>, ptr %i.i, align 8, !tbaa !163, !noalias !666 ; 3 uses
  %i.v = fneg <2 x double> %i.u
  %i.w = load <2 x double>, ptr %i.m, align 8, !tbaa !163, !noalias !667 ; 2 uses
  %i.x = fsub <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = load <2 x double>, ptr %i.q, align 8, !tbaa !163, !noalias !668
  %i.z = fmul <2 x double> %i.u, %i.y
  %i.aa = fadd <2 x double> %i.u, %i.w
  %i.ab = fadd double %i.k, %i.o
  %i.ac = fdiv <2 x double> %i.z, %i.aa
  %i.ad = fdiv double %i.t, %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load double, ptr %i.ae, align 8, !tbaa !355
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !356 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !357 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load double, ptr %i.ak, align 8, !tbaa !358 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %16 = load double, ptr %i.an, align 8, !tbaa !163, !noalias !669
  %17 = fdiv double 1.000000e+00, %16
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ap = load <2 x double>, ptr %18, align 8, !tbaa !163, !noalias !669
  %i.aq = fdiv <2 x double> splat (double 1.000000e+00), %i.ap
  store double %17, ptr %i.ao, align 8, !tbaa !163, !alias.scope !669
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !163, !alias.scope !669
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 72 ; 2 uses
  store <2 x double> <double 1.000000e-09, double f0x7FEFFFFFFFFFFFFF>, ptr %i.as, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !123 ; 2 uses
  %i.av = load i64, ptr %1, align 8, !tbaa !122   ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %.lr.ph446, label %._crit_edge447.thread

.lr.ph446:                                        ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !347
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !111
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !281
  %.not = icmp eq i64 %i.bk, 0
  br i1 %.not, label %._crit_edge447.thread, label %.lr.ph446.split.preheader

.lr.ph446.split.preheader:                        ; preds = %.lr.ph446
  %i.bl = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph446.split

._crit_edge447.thread:                            ; preds = %bb.a, %.lr.ph446
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit

._crit_edge447:                                   ; preds = %._crit_edge443
  %.pre467 = load ptr, ptr %11, align 8, !tbaa !284 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %.not.i.i.i = icmp eq ptr %.pre467, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge447
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !285
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.pre467 to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.pre467, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit: ; preds = %._crit_edge447.thread, %._crit_edge447, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.bu = load ptr, ptr %10, align 8, !tbaa !284  ; 3 uses
  %.not.i.i.i103 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i103, label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !285
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #25
  br label %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104

_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit104: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math3RayIdE8TimeSpanESaIS5_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  ret void

.lr.ph446.split:                                  ; preds = %.lr.ph446.split.preheader, %._crit_edge443
  %.067444 = phi i64 [ %i.ce, %._crit_edge443 ], [ %i.au, %.lr.ph446.split.preheader ] ; 3 uses
  %i.ca = load ptr, ptr %i.ax, align 8, !tbaa !347
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !111
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !281 ; 2 uses
  %.not448 = icmp eq i64 %i.cd, 0
  br i1 %.not448, label %._crit_edge443, label %.lr.ph442

._crit_edge443:                                   ; preds = %bb.am, %.lr.ph446.split
  %i.ce = add nuw i64 %.067444, 1                 ; 2 uses
  %exitcond462.not = icmp eq i64 %i.ce, %i.av
  br i1 %exitcond462.not, label %._crit_edge447, label %.lr.ph446.split, !llvm.loop !621

.lr.ph442:                                        ; preds = %.lr.ph446.split, %bb.am
  %.065440 = phi i64 [ %i.qb, %bb.am ], [ 0, %.lr.ph446.split ] ; 3 uses
  %i.cf = load ptr, ptr %i.ax, align 8, !tbaa !347 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !111 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !281
  %i.ck = mul i64 %i.cj, %.067444
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !288
  %i.cm = getelementptr [16 x i8], ptr %i.cl, i64 %.065440
  %i.cn = getelementptr [16 x i8], ptr %i.cm, i64 %i.ck ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !100
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Ray") align 8 %13, ptr noundef nonnull align 8 dereferenceable(496) %i.cf, i64 noundef %.065440, i64 noundef %.067444, double noundef 5.000000e-01, double noundef 5.000000e-01)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph442
  %i.cr = load ptr, ptr %i.ay, align 8, !tbaa !351
  %i.cs = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE11setWorldRayERKSH_(ptr noundef nonnull align 8 dereferenceable(496) %i.cr, ptr noundef nonnull align 8 dereferenceable(88) %13)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.cs, label %bb.g, label %bb.am

bb.f:                                             ; preds = %bb.d, %.lr.ph442
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.g:                                             ; preds = %bb.e
  %i.cu = load ptr, ptr %i.ay, align 8, !tbaa !351 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  invoke void @_ZN7openvdb5v13_04math10VolumeHDDAINS0_4tree4TreeINS3_8RootNodeINS3_12InternalNodeINS6_INS3_8LeafNodeIbLj3EEELj4EEELj5EEEEEEENS1_3RayIdEELi2EE4hitsINS3_17ValueAccessorImplIKSC_Lb0EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEESt6vectorINSE_8TimeSpanESaISN_EEEEvRSE_RT_RT0_(ptr noundef nonnull align 8 dereferenceable(264) %i.cv, ptr noundef nonnull align 8 dereferenceable(88) %i.cw, ptr noundef nonnull align 8 dereferenceable(88) %i.cx, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader unwind label %bb.h

_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader: ; preds = %bb.g
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !289 ; 2 uses
  %i.cz = load ptr, ptr %10, align 8, !tbaa !284  ; 2 uses
  %.not449 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not449, label %.loopexit290, label %.lr.ph433

bb.h:                                             ; preds = %bb.g
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph433:                                        ; preds = %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit
  %i.db = phi ptr [ %i.pg, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ %i.cz, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.dc = phi ptr [ %i.ph, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ %i.cy, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ]
  %.064432 = phi i64 [ %i.pk, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 0, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %.sroa.11.0429 = phi double [ %.sroa.11.1.lcssa, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 0.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %.sroa.15.0426 = phi double [ %.sroa.15.1.lcssa, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ 1.000000e+00, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.dd = phi <2 x double> [ %i.pi, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ zeroinitializer, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.de = phi <2 x double> [ %i.pj, %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit ], [ splat (double 1.000000e+00), %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.064432 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !290
  %i.dh = fdiv double %i.dg, %i.ah
  %i.di = call double @llvm.ceil.f64(double %i.dh)
  %i.dj = fmul double %i.ah, %i.di                ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !291 ; 2 uses
  %i.dm = fcmp ugt double %i.dj, %i.dl
  br i1 %i.dm, label %_ZN7openvdb5v13_05tools20VolumeRayIntersectorINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEELi2ENS0_4math3RayIdEEE4hitsISt6vectorINSH_8TimeSpanESaISL_EEEEvRT_.exit, label %.lr.ph418

.lr.ph418:                                        ; preds = %.lr.ph433, %bb.ak
  %.063416 = phi double [ %i.pe, %bb.ak ], [ %i.dj, %.lr.ph433 ] ; 3 uses
  %.sroa.11.1413 = phi double [ %.sroa.11.3.ph, %bb.ak ], [ %.sroa.11.0429, %.lr.ph433 ] ; 3 uses
  %.sroa.15.1410 = phi double [ %.sroa.15.3.ph, %bb.ak ], [ %.sroa.15.0426, %.lr.ph433 ] ; 4 uses
  %i.dn = phi <2 x double> [ %i.pc, %bb.ak ], [ %i.dd, %.lr.ph433 ] ; 3 uses
  %i.do = phi <2 x double> [ %i.pd, %bb.ak ], [ %i.de, %.lr.ph433 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  %i.dp = load ptr, ptr %i.ay, align 8, !tbaa !351 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !331, !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !670
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 136
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 152
  %.sroa.9.0.copyload.i.i = load double, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !672
  %i.du = fmul double %.063416, %.sroa.9.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(88) %i.ds, i64 24, i1 false), !noalias !670
  %i.dv = load <2 x double>, ptr %i.dt, align 8, !noalias !672
  %i.dw = insertelement <2 x double> poison, double %.063416, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x double> %i.dx, %i.dv
  %i.dz = load <2 x double>, ptr %9, align 16, !tbaa !163, !alias.scope !673, !noalias !670
  %i.ea = fadd <2 x double> %i.dy, %i.dz
  store <2 x double> %i.ea, ptr %9, align 16, !tbaa !163, !alias.scope !673, !noalias !670
  %i.eb = load double, ptr %i.ba, align 16, !tbaa !163, !alias.scope !673, !noalias !670
  %i.ec = fadd double %i.du, %i.eb
  store double %i.ec, ptr %i.ba, align 16, !tbaa !163, !alias.scope !673, !noalias !670
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !276, !noalias !674
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !294, !noalias !675 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !100, !noalias !675
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !675
  invoke void %i.ei(ptr dead_on_unwind nonnull writable sret(%"class.openvdb::v13_0::math::Vec3") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.i unwind label %bb.k, !inline_history !632

bb.i:                                             ; preds = %.lr.ph418
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ej = load ptr, ptr %i.h, align 8, !tbaa !294, !noalias !676 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !100, !noalias !676
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !noalias !676
end_hunk_1

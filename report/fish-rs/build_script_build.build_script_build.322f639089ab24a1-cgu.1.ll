Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/build_script_build.build_script_build.322f639089ab24a1-cgu.1?download=true
inline.NumInlined: 85
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [19 x i8] c"failed to solve PHF", align 1
@1 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/phf_generator-0.13.1/src/lib.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00,\00\00\00\0A\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"d\00\00\00\00\00\00\00*\00\00\006\00\00\00" }>, align 8
@4 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs4j8jMzqdx39_18build_script_build, align 8
@5 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@6 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @5, [24 x i8] zeroinitializer }>, align 8
@7 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/siphasher-1.0.3/src/common.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\005\00\00\00#\00\00\00" }>, align 8
@9 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\009\00\00\00$\00\00\00" }>, align 8
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"b\00\00\00\00\00\00\009\00\00\00\16\00\00\00" }>, align 8
@11 = private unnamed_addr constant [99 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/siphasher-1.0.3/src/sip128.rs\00", align 1
@12 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"b\00\00\00\00\00\00\00\17\02\00\00\09\00\00\00" }>, align 8
@13 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"b\00\00\00\00\00\00\00\1C\02\00\00\16\00\00\00" }>, align 8
@14 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"b\00\00\00\00\00\00\00\1D\02\00\00T\00\00\00" }>, align 8
@15 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @11, [16 x i8] c"b\00\00\00\00\00\00\00\1D\02\00\00\1A\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCsdQ1XOHuLjZb_13phf_generator13generate_hashNtCs1ycKUSY4YU7_17fish_localization8LanguageECs4j8jMzqdx39_18build_script_build(ptr sret([56 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMCsdQ1XOHuLjZb_13phf_generatorNtB2_9Generator3new(ptr nonnull sret([120 x i8]) align 8 %i.g, i64 %2), !noalias !8
  %i.h = invoke i64 @_RNvMs0_CsdGznPfuVbms_8fastrandNtB5_3Rng9with_seedCs4j8jMzqdx39_18build_script_build(i64 1234567890)
          to label %bb.c unwind label %bb.b, !noalias !8

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs2i9eeB681C2_10phf_shared6HashesEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.g) #19
          to label %bb.n unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !noalias !8
  %i.j = invoke align 8 ptr @_RINvNtNtNtCs3oUPovFnLWP_4core4iter7sources11repeat_with11repeat_withyNCINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtCs1ycKUSY4YU7_17fish_localization8LanguageINvCs2i9eeB681C2_10phf_shared4hashB25_EE0ECs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.f)
          to label %bb.d unwind label %bb.b, !noalias !8

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.d, align 8, !noalias !8
  store ptr %1, ptr %i.c, align 8, !noalias !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.k, align 8, !noalias !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.l, align 8, !noalias !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %i.m, align 8, !noalias !8
  %i.n = invoke { i64, i64 } @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources11repeat_with10RepeatWithNCINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtCs1ycKUSY4YU7_17fish_localization8LanguageINvCs2i9eeB681C2_10phf_shared4hashB27_EE0ENtNtNtBa_6traits8iterator8Iterator4findNCB19_s_0ECs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.b, !noalias !8 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !8
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionyE3mapNtCsdQ1XOHuLjZb_13phf_generator9HashStateNCINvBQ_26generate_hash_with_hash_fnNtCs1ycKUSY4YU7_17fish_localization8LanguageINvCs2i9eeB681C2_10phf_shared4hashB23_EEs0_0ECs4j8jMzqdx39_18build_script_build(ptr nonnull sret([56 x i8]) align 8 %i.e, i64 %i.o, i64 %i.p, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b, !noalias !8

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtCsdQ1XOHuLjZb_13phf_generator9HashStateE6expectCs4j8jMzqdx39_18build_script_build(ptr sret([56 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull @0, i64 19, ptr nonnull align 8 @2)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs2i9eeB681C2_10phf_shared6HashesEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.g)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsdQ1XOHuLjZb_13phf_generator6BucketEEB1a_(ptr nonnull align 8 %i.u) #19
          to label %bb.j unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsdQ1XOHuLjZb_13phf_generator6BucketEEB1a_(ptr nonnull align 8 %i.v)
          to label %_RINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtCs1ycKUSY4YU7_17fish_localization8LanguageINvCs2i9eeB681C2_10phf_shared4hashBX_EECs4j8jMzqdx39_18build_script_build.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.k, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.x, %bb.k ], [ %i.t, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.w) #19
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.q, %.critedge.i, %bb.p, %bb.n, %bb.j, %bb.h, %bb.b
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.m:                                             ; preds = %.critedge.i, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.j ], [ %i.i, %.critedge.i ]
  resume { ptr, i32 } %.pn.pn.i

bb.n:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsdQ1XOHuLjZb_13phf_generator6BucketEEB1a_(ptr nonnull align 8 %i.z) #19
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  br i1 %.sroa.0.0.i, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTmmEEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.aa) #19
          to label %bb.q unwind label %bb.l

.critedge.i:                                      ; preds = %bb.q, %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.ab) #19
          to label %bb.m unwind label %bb.l

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtB4_6option6OptionjEEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.ac) #19
          to label %.critedge.i unwind label %bb.l

_RINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtCs1ycKUSY4YU7_17fish_localization8LanguageINvCs2i9eeB681C2_10phf_shared4hashBX_EECs4j8jMzqdx39_18build_script_build.exit: ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecyEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCsdQ1XOHuLjZb_13phf_generator13generate_hashNtNtCs1xwejQucwHj_5alloc6string6StringECs4j8jMzqdx39_18build_script_build(ptr sret([56 x i8]) align 8 %0, ptr align 8 %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMCsdQ1XOHuLjZb_13phf_generatorNtB2_9Generator3new(ptr nonnull sret([120 x i8]) align 8 %i.g, i64 %2), !noalias !11
  %i.h = invoke i64 @_RNvMs0_CsdGznPfuVbms_8fastrandNtB5_3Rng9with_seedCs4j8jMzqdx39_18build_script_build(i64 1234567890)
          to label %bb.c unwind label %bb.b, !noalias !11

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.sroa.0.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs2i9eeB681C2_10phf_shared6HashesEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.g) #19
          to label %bb.n unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  store i64 %i.h, ptr %i.f, align 8, !noalias !11
  %i.j = invoke align 8 ptr @_RINvNtNtNtCs3oUPovFnLWP_4core4iter7sources11repeat_with11repeat_withyNCINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtNtCs1xwejQucwHj_5alloc6string6StringINvCs2i9eeB681C2_10phf_shared4hashB25_EE0ECs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.f)
          to label %bb.d unwind label %bb.b, !noalias !11

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.d, align 8, !noalias !11
  store ptr %1, ptr %i.c, align 8, !noalias !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %2, ptr %i.k, align 8, !noalias !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.l, align 8, !noalias !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %i.m, align 8, !noalias !11
  %i.n = invoke { i64, i64 } @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources11repeat_with10RepeatWithNCINvCsdQ1XOHuLjZb_13phf_generator26generate_hash_with_hash_fnNtNtCs1xwejQucwHj_5alloc6string6StringINvCs2i9eeB681C2_10phf_shared4hashB27_EE0ENtNtNtBa_6traits8iterator8Iterator4findNCB19_s_0ECs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.e unwind label %bb.b, !noalias !11 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !11
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionyE3mapNtCsdQ1XOHuLjZb_13phf_generator9HashStateNCINvBQ_26generate_hash_with_hash_fnNtNtCs1xwejQucwHj_5alloc6string6StringINvCs2i9eeB681C2_10phf_shared4hashB23_EEs0_0ECs4j8jMzqdx39_18build_script_build(ptr nonnull sret([56 x i8]) align 8 %i.e, i64 %i.o, i64 %i.p, ptr nonnull align 8 %i.b)
          to label %bb.f unwind label %bb.b, !noalias !11

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionNtCsdQ1XOHuLjZb_13phf_generator9HashStateE6expectCs4j8jMzqdx39_18build_script_build(ptr sret([56 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull @0, i64 19, ptr nonnull align 8 @2)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCs2i9eeB681C2_10phf_shared6HashesEECsdQ1XOHuLjZb_13phf_generator(ptr nonnull align 8 %i.g)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsdQ1XOHuLjZb_13phf_generator6BucketEEB1a_(ptr nonnull align 8 %i.u) #19
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse214__mm_cmpgt_epi8Cs4j8jMzqdx39_18build_script_build:bb.a
  store <16 x i8> %i.d, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse217__mm_setzero_si128Cs4j8jMzqdx39_18build_script_build(ptr nofree writeonly sret([16 x i8]) align 16 captures(none) initializes((0, 16)) %0) unnamed_addr #8 {
bb.a:
  store <2 x i64> zeroinitializer, ptr %0, align 16
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXs1_NtCs3oUPovFnLWP_4core7convertRShINtB5_4IntoINtNtCs1xwejQucwHj_5alloc3vec3VechEE4intoCs4j8jMzqdx39_18build_script_build(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2, ptr nofree readnone align 8 captures(none) %3) unnamed_addr #3 {
bb.a:
  tail call void @_RNvXsw_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechEINtNtCs3oUPovFnLWP_4core7convert4FromRShE4fromCs4j8jMzqdx39_18build_script_build(ptr sret([24 x i8]) align 8 %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvXs5_NtCscqxlOuhQHE7_9siphasher6sip128NtB5_11SipHasher13NtB5_9Hasher1289finish128Cs4j8jMzqdx39_18build_script_build(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl i64 %i.c, 56
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = xor i64 %i.i, %i.g                       ; 2 uses
  %i.k = load i64, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.m, i32 13) #24
  %i.p = xor i64 %i.o, %i.n                       ; 2 uses
  %i.q = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.n, i32 32) #24
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.j, i32 16) #24
  %i.v = xor i64 %i.u, %i.t                       ; 2 uses
  %i.w = add i64 %i.v, %i.q                       ; 2 uses
  %i.x = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.v, i32 21) #24
  %i.y = xor i64 %i.w, %i.x
  store i64 %i.y, ptr %i.h, align 8
  %i.z = add i64 %i.t, %i.p                       ; 2 uses
  %i.aa = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.p, i32 17) #24
  %i.ab = xor i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.l, align 8
  %i.ac = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.z, i32 32) #24
  %i.ad = xor i64 %i.w, %i.g
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = xor i64 %i.ac, 238
  store i64 %i.ae, ptr %i.r, align 8
  call fastcc void @_RNvXsg_NtCscqxlOuhQHE7_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8d_roundsCs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.a) #21
  %i.af = load i64, ptr %i.l, align 8
  %i.ag = load <4 x i64>, ptr %i.a, align 8
  %i.ah = tail call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> %i.ag)
  %i.ai = xor i64 %i.af, 221
  store i64 %i.ai, ptr %i.l, align 8
  call fastcc void @_RNvXsg_NtCscqxlOuhQHE7_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8d_roundsCs4j8jMzqdx39_18build_script_build(ptr nonnull align 8 %i.a) #21
  %i.aj = load <4 x i64>, ptr %i.a, align 8
  %i.ak = tail call i64 @llvm.vector.reduce.xor.v4i64(<4 x i64> %i.aj)
  %i.al = insertvalue { i64, i64 } poison, i64 %i.ah, 0
  %i.am = insertvalue { i64, i64 } %i.al, i64 %i.ak, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { i64, i64 } %i.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTRShBT_EENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4j8jMzqdx39_18build_script_build(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs4j8jMzqdx39_18build_script_build(ptr nonnull %i.b, ptr %i.d, i64 %i.a, i64 %i.f) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTRShBT_EENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs4j8jMzqdx39_18build_script_build(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree align 8 captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = load i16, ptr %i.e, align 8              ; 4 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.pre.i = load ptr, ptr %i.d, align 8           ; 3 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted.i = load ptr, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %.val9.i = load <16 x i8>, ptr %i.i, align 16
  %i.j = icmp sgt <16 x i8> %.val9.i, splat (i8 -1) ; 2 uses
  store <16 x i1> %i.j, ptr %i.e, align 8
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -512 ; 3 uses
  store ptr %i.k, ptr %i.d, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.g, align 8
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 4 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit.thread

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit.thread: ; preds = %bb.c
  %i.m = add i16 %.cast.i, -1
  %i.n = and i16 %i.m, %.cast.i
  store i16 %i.n, ptr %i.e, align 8
  %i.o = add i64 %i.b, -1
  store i64 %i.o, ptr %i.a, align 8
  br label %bb.e

_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit: ; preds = %bb.b
  %i.p = add i16 %i.f, -1
  %i.q = and i16 %i.p, %i.f
  store i16 %i.q, ptr %i.e, align 8
  %i.r = add i64 %i.b, -1
  store i64 %i.r, ptr %i.a, align 8
  %.not = icmp eq ptr %.pre.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.a, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit.thread, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit
  %.lcssa.i8 = phi i16 [ %.cast.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit.thread ], [ %i.f, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit ]
  %i.s = phi ptr [ %i.k, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit.thread ], [ %.pre.i, %_RINvMsi_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_12RawIterRangeTRShBV_EE9next_implKb0_ECs4j8jMzqdx39_18build_script_build.exit ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i8, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsb_NtCscqxlOuhQHE7_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs4j8jMzqdx39_18build_script_build(ptr nofree align 8 captures(none) %0, ptr %1, i64 %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = add i64 %i.b, %2                         ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @12) #23
  unreachable

bb.d:                                             ; preds = %bb.q, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.q ], [ 0, %bb.b ] ; 4 uses
  %i.g = sub i64 %2, %.sroa.0.0.i                 ; 2 uses
  %i.h = and i64 %i.g, 7                          ; 4 uses
  %i.i = and i64 %i.g, -8                         ; 2 uses
  %i.j = icmp ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.pre.i = load i64, ptr %0, align 8
  br label %bb.ab

bb.e:                                             ; preds = %bb.b
  %i.n = sub nuw i64 8, %i.f                      ; 3 uses
  %i.o = icmp ugt i64 %i.f, 8
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i64 @_RINvNtCs3oUPovFnLWP_4core3cmp3minjECs4j8jMzqdx39_18build_script_build(i64 %2, i64 %i.n) #21 ; 3 uses
  %i.q = icmp ugt i64 %i.p, 3
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i = load i32, ptr %1, align 1
  %i.r = zext i32 %.sroa.0.0.copyload.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.011.0.i.i = phi i64 [ %i.r, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ 4, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %i.s = or disjoint i64 %.sroa.0.0.i.i, 1
  %i.t = icmp ult i64 %i.s, %i.p
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.sroa.011.1.i.i = phi i64 [ %i.aa, %bb.j ], [ %.sroa.011.0.i.i, %bb.h ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ %i.y, %bb.j ], [ %.sroa.0.0.i.i, %bb.h ] ; 3 uses
  %i.u = icmp ult i64 %.sroa.0.1.i.i, %i.p
  br i1 %i.u, label %bb.k, label %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.i.i
  %.sroa.019.0.copyload.i.i = load i16, ptr %i.v, align 1
  %i.w = zext i16 %.sroa.019.0.copyload.i.i to i64
  %i.x = shl nuw nsw i64 %.sroa.0.0.i.i, 3
  %i.y = or disjoint i64 %.sroa.0.0.i.i, 2
  %i.z = shl nuw nsw i64 %i.w, %i.x
  %i.aa = or i64 %i.z, %.sroa.011.0.i.i
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call ptr @_RINvMNtCs3oUPovFnLWP_4core5sliceSh13get_uncheckedjECs4j8jMzqdx39_18build_script_build(ptr %1, i64 %2, i64 %.sroa.0.1.i.i, ptr nonnull align 8 @10) #21
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %.sroa.0.1.i.i, 3
  %i.af = shl nuw nsw i64 %i.ad, %i.ae
  %i.ag = or i64 %i.af, %.sroa.011.1.i.i
  br label %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit.i

_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.011.2.i.i = phi i64 [ %i.ag, %bb.k ], [ %.sroa.011.1.i.i, %bb.i ]
  %i.ah = load i64, ptr %i.e, align 8             ; 4 uses
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = icmp ugt i64 %i.ah, 2305843009213693951
  br i1 %i.aj, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr nonnull align 8 @13) #23
  unreachable

bb.m:                                             ; preds = %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit.i
  %i.ak = icmp samesign ult i64 %i.ah, 8
  br i1 %i.ak, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr nonnull align 8 @14) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = shl i64 %.sroa.011.2.i.i, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.an, %i.al                     ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = icmp ult i64 %2, %i.n
  br i1 %i.ap, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_shl_overflow(ptr nonnull align 8 @15) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = xor i64 %i.ar, %i.ao
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = load i64, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = add i64 %i.av, %i.at
  store i64 %i.aw, ptr %0, align 8
  %i.ax = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.av, i32 13) #24
  %i.ay = load i64, ptr %0, align 8               ; 2 uses
  %i.az = xor i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.au, align 8
  %i.ba = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ay, i32 32) #24
  store i64 %i.ba, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.be = add i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.bb, align 8
  %i.bf = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bd, i32 16) #24
  %i.bg = load i64, ptr %i.bb, align 8
  %i.bh = xor i64 %i.bg, %i.bf                    ; 3 uses
  store i64 %i.bh, ptr %i.aq, align 8
  %i.bi = load i64, ptr %0, align 8
  %i.bj = add i64 %i.bi, %i.bh
  store i64 %i.bj, ptr %0, align 8
  %i.bk = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bh, i32 21) #24
  %i.bl = load i64, ptr %0, align 8
  %i.bm = xor i64 %i.bl, %i.bk
  store i64 %i.bm, ptr %i.aq, align 8
  %i.bn = load i64, ptr %i.bb, align 8
  %i.bo = load i64, ptr %i.au, align 8            ; 2 uses
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.bb, align 8
  %i.bq = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bo, i32 17) #24
  %i.br = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.au, align 8
  %i.bt = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.br, i32 32) #24
  store i64 %i.bt, ptr %i.bb, align 8
  %i.bu = load i64, ptr %i.am, align 8
  %i.bv = load i64, ptr %0, align 8
  %i.bw = xor i64 %i.bv, %i.bu
  store i64 %i.bw, ptr %0, align 8
  store i64 0, ptr %i.e, align 8
  br label %bb.d

bb.r:                                             ; preds = %bb.o
  %i.bx = add nuw nsw i64 %i.ah, %2
  br label %_RNvXsd_NtCscqxlOuhQHE7_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs4j8jMzqdx39_18build_script_build.exit

._crit_edge.i:                                    ; preds = %bb.ab, %bb.d
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.0.0.i, %bb.d ], [ %i.dz, %bb.ab ] ; 5 uses
  %i.by = icmp samesign ugt i64 %i.h, 3
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa.i
  %.sroa.0.0.copyload.i20.i = load i32, ptr %i.bz, align 1
  %i.ca = zext i32 %.sroa.0.0.copyload.i20.i to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %.sroa.011.0.i14.i = phi i64 [ %i.ca, %bb.s ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i15.i = phi i64 [ 4, %bb.s ], [ 0, %._crit_edge.i ] ; 5 uses
  %i.cb = or disjoint i64 %.sroa.0.0.i15.i, 1
  %i.cc = icmp samesign ult i64 %i.cb, %i.h
  br i1 %i.cc, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.sroa.011.1.i16.i = phi i64 [ %i.cl, %bb.w ], [ %.sroa.011.0.i14.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i17.i = phi i64 [ %i.cj, %bb.w ], [ %.sroa.0.0.i15.i, %bb.t ] ; 3 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.1.i17.i, %i.h
  br i1 %i.cd, label %bb.y, label %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit21.i

bb.v:                                             ; preds = %bb.t
  %i.ce = add i64 %.sroa.0.0.i15.i, %.sroa.04.0.lcssa.i ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %.sroa.04.0.lcssa.i
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  %.sroa.019.0.copyload.i19.i = load i16, ptr %i.cg, align 1
  %i.ch = zext i16 %.sroa.019.0.copyload.i19.i to i64
  %i.ci = shl nuw nsw i64 %.sroa.0.0.i15.i, 3
  %i.cj = or disjoint i64 %.sroa.0.0.i15.i, 2
  %i.ck = shl nuw nsw i64 %i.ch, %i.ci
  %i.cl = or i64 %i.ck, %.sroa.011.0.i14.i
  br label %bb.u

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @8) #23
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.cm = add i64 %.sroa.0.1.i17.i, %.sroa.04.0.lcssa.i ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.sroa.04.0.lcssa.i
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = tail call ptr @_RINvMNtCs3oUPovFnLWP_4core5sliceSh13get_uncheckedjECs4j8jMzqdx39_18build_script_build(ptr %1, i64 %2, i64 %i.cm, ptr nonnull align 8 @10) #21
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %.sroa.0.1.i17.i, 3
  %i.cs = shl nuw nsw i64 %i.cq, %i.cr
  %i.ct = or i64 %i.cs, %.sroa.011.1.i16.i
  br label %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit21.i

bb.aa:                                            ; preds = %bb.y
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 @9) #23
  unreachable

_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit21.i: ; preds = %bb.z, %bb.u
  %.sroa.011.2.i18.i = phi i64 [ %i.ct, %bb.z ], [ %.sroa.011.1.i16.i, %bb.u ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i18.i, ptr %i.cu, align 8
  br label %_RNvXsd_NtCscqxlOuhQHE7_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs4j8jMzqdx39_18build_script_build.exit

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i
  %i.cv = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.dy, %bb.ab ]
  %.sroa.04.022.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.dz, %bb.ab ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.022.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.cw, align 1 ; 2 uses
  %i.cx = load i64, ptr %i.k, align 8
  %i.cy = xor i64 %i.cx, %.sroa.0.0.copyload.i
  store i64 %i.cy, ptr %i.k, align 8
  %i.cz = load i64, ptr %i.l, align 8             ; 2 uses
  %i.da = add i64 %i.cz, %i.cv
  store i64 %i.da, ptr %0, align 8
  %i.db = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.cz, i32 13) #24
  %i.dc = load i64, ptr %0, align 8               ; 2 uses
  %i.dd = xor i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.l, align 8
  %i.de = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.dc, i32 32) #24
  store i64 %i.de, ptr %0, align 8
  %i.df = load i64, ptr %i.m, align 8
  %i.dg = load i64, ptr %i.k, align 8             ; 2 uses
  %i.dh = add i64 %i.dg, %i.df
  store i64 %i.dh, ptr %i.m, align 8
  %i.di = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.dg, i32 16) #24
  %i.dj = load i64, ptr %i.m, align 8
  %i.dk = xor i64 %i.dj, %i.di                    ; 3 uses
  store i64 %i.dk, ptr %i.k, align 8
  %i.dl = load i64, ptr %0, align 8
  %i.dm = add i64 %i.dl, %i.dk
  store i64 %i.dm, ptr %0, align 8
  %i.dn = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.dk, i32 21) #24
  %i.do = load i64, ptr %0, align 8
  %i.dp = xor i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.k, align 8
  %i.dq = load i64, ptr %i.m, align 8
  %i.dr = load i64, ptr %i.l, align 8             ; 2 uses
  %i.ds = add i64 %i.dr, %i.dq
  store i64 %i.ds, ptr %i.m, align 8
  %i.dt = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.dr, i32 17) #24
  %i.du = load i64, ptr %i.m, align 8             ; 2 uses
  %i.dv = xor i64 %i.du, %i.dt
  store i64 %i.dv, ptr %i.l, align 8
  %i.dw = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.du, i32 32) #24
  store i64 %i.dw, ptr %i.m, align 8
  %i.dx = load i64, ptr %0, align 8
  %i.dy = xor i64 %i.dx, %.sroa.0.0.copyload.i    ; 2 uses
  store i64 %i.dy, ptr %0, align 8
  %i.dz = add nuw i64 %.sroa.04.022.i, 8          ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.i
  br i1 %i.ea, label %bb.ab, label %._crit_edge.i

_RNvXsd_NtCscqxlOuhQHE7_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs4j8jMzqdx39_18build_script_build.exit: ; preds = %bb.r, %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit21.i
  %storemerge.i = phi i64 [ %i.h, %_RNvNtCscqxlOuhQHE7_9siphasher6common9u8to64_leCs4j8jMzqdx39_18build_script_build.exit21.i ], [ %i.bx, %bb.r ]
  store i64 %storemerge.i, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsg_NtCscqxlOuhQHE7_9siphasher6sip128NtB5_11Sip13RoundsNtB5_3Sip8d_roundsCs4j8jMzqdx39_18build_script_build(ptr nofree nonnull align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, %i.a
  store i64 %i.d, ptr %0, align 8
  %i.e = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.c, i32 13) #24
  %i.f = load i64, ptr %0, align 8                ; 2 uses
  %i.g = xor i64 %i.f, %i.e
  store i64 %i.g, ptr %i.b, align 8
  %i.h = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.f, i32 32) #24
  store i64 %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.i, align 8
  %i.n = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.l, i32 16) #24
  %i.o = load i64, ptr %i.i, align 8
  %i.p = xor i64 %i.o, %i.n                       ; 3 uses
  store i64 %i.p, ptr %i.k, align 8
  %i.q = load i64, ptr %0, align 8
  %i.r = add i64 %i.q, %i.p
  store i64 %i.r, ptr %0, align 8
  %i.s = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.p, i32 21) #24
  %i.t = load i64, ptr %0, align 8
  %i.u = xor i64 %i.t, %i.s
  store i64 %i.u, ptr %i.k, align 8
  %i.v = load i64, ptr %i.i, align 8
  %i.w = load i64, ptr %i.b, align 8              ; 2 uses
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %i.i, align 8
  %i.y = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.w, i32 17) #24
  %i.z = load i64, ptr %i.i, align 8              ; 2 uses
  %i.aa = xor i64 %i.z, %i.y
  store i64 %i.aa, ptr %i.b, align 8
  %i.ab = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.z, i32 32) #24
  store i64 %i.ab, ptr %i.i, align 8
  %i.ac = load i64, ptr %0, align 8
  %i.ad = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ae = add i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %0, align 8
  %i.af = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ad, i32 13) #24
  %i.ag = load i64, ptr %0, align 8               ; 2 uses
  %i.ah = xor i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.b, align 8
  %i.ai = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ag, i32 32) #24
  store i64 %i.ai, ptr %0, align 8
  %i.aj = load i64, ptr %i.i, align 8
  %i.ak = load i64, ptr %i.k, align 8             ; 2 uses
  %i.al = add i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.i, align 8
  %i.am = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ak, i32 16) #24
  %i.an = load i64, ptr %i.i, align 8
  %i.ao = xor i64 %i.an, %i.am                    ; 3 uses
  store i64 %i.ao, ptr %i.k, align 8
  %i.ap = load i64, ptr %0, align 8
  %i.aq = add i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %0, align 8
  %i.ar = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ao, i32 21) #24
  %i.as = load i64, ptr %0, align 8
  %i.at = xor i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.k, align 8
  %i.au = load i64, ptr %i.i, align 8
  %i.av = load i64, ptr %i.b, align 8             ; 2 uses
  %i.aw = add i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.i, align 8
  %i.ax = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.av, i32 17) #24
  %i.ay = load i64, ptr %i.i, align 8             ; 2 uses
  %i.az = xor i64 %i.ay, %i.ax
  store i64 %i.az, ptr %i.b, align 8
  %i.ba = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.ay, i32 32) #24
  store i64 %i.ba, ptr %i.i, align 8
  %i.bb = load i64, ptr %0, align 8
  %i.bc = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %0, align 8
  %i.be = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bc, i32 13) #24
  %i.bf = load i64, ptr %0, align 8               ; 2 uses
  %i.bg = xor i64 %i.bf, %i.be
  store i64 %i.bg, ptr %i.b, align 8
  %i.bh = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bf, i32 32) #24
  store i64 %i.bh, ptr %0, align 8
  %i.bi = load i64, ptr %i.i, align 8
  %i.bj = load i64, ptr %i.k, align 8             ; 2 uses
  %i.bk = add i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.i, align 8
  %i.bl = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bj, i32 16) #24
  %i.bm = load i64, ptr %i.i, align 8
  %i.bn = xor i64 %i.bm, %i.bl                    ; 3 uses
  store i64 %i.bn, ptr %i.k, align 8
  %i.bo = load i64, ptr %0, align 8
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %0, align 8
  %i.bq = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bn, i32 21) #24
  %i.br = load i64, ptr %0, align 8
  %i.bs = xor i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.k, align 8
  %i.bt = load i64, ptr %i.i, align 8
  %i.bu = load i64, ptr %i.b, align 8             ; 2 uses
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.i, align 8
  %i.bw = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bu, i32 17) #24
  %i.bx = load i64, ptr %i.i, align 8             ; 2 uses
  %i.by = xor i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.b, align 8
  %i.bz = tail call i64 @_RINvNtCs3oUPovFnLWP_4core10intrinsics11rotate_leftyECshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %i.bx, i32 32) #24
  store i64 %i.bz, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtCs1ycKUSY4YU7_17fish_localization8LanguageuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4j8jMzqdx39_18build_script_build(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtCs1ycKUSY4YU7_17fish_localization8LanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs4j8jMzqdx39_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond.i = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocateCs4j8jMzqdx39_18build_script_build(ptr nonnull %i.a, ptr %i.o, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #21
  br label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtCs1ycKUSY4YU7_17fish_localization8LanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs4j8jMzqdx39_18build_script_build.exit

_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtCs1ycKUSY4YU7_17fish_localization8LanguageuENtNtCs1xwejQucwHj_5alloc5alloc6GlobalECs4j8jMzqdx39_18build_script_build.exit: ; preds = %bb.a, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTRNtNtCs1xwejQucwHj_5alloc6string6StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4j8jMzqdx39_18build_script_build(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRNtNtCs1xwejQucwHj_5alloc6string6StringuENtNtB1i_5alloc6GlobalECs4j8jMzqdx39_18build_script_build.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 2 uses
  %or.cond.i = icmp ugt i64 %i.e, 2305843009213693950
  br i1 %or.cond.i, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl nuw i64 %i.e, 3
  %i.g = add nuw i64 %i.f, 8
  %i.h = and i64 %i.g, -16                        ; 3 uses
  %i.i = add nsw i64 %i.c, 17
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.h
  br i1 %i.k, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.l, label %bb.e, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs4j8jMzqdx39_18build_script_build.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.m = load ptr, ptr %0, align 8
  %i.n = sub nsw i64 0, %.sroa.8.0.i
end_hunk_1

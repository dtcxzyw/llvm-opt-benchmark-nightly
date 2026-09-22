Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.07?download=true
inline.NumInlined: 1778
inline.NumDeleted: 385
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image6images8dynimage12DynamicImageEBH_:bb.a
bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.h:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.k:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.n:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.q:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %bb.q
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.t:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %bb.t
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.w:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %bb.w
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.z:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %bb.z
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.ac:                                            ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit: ; preds = %bb.ac
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.af

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTfEEp6OutputfEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTfEEp6OutputfEL_EECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTfEEp6OutputfEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #16
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTfEEp6OutputfEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTfEEp6OutputfEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTfEEp6OutputfEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i8 noundef range(i8 0, 5) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [40 x i8], align 8                ; 12 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 4                 ; 4 uses
  %i.l = alloca [8 x i8], align 4                 ; 4 uses
  %i.m = alloca [16 x i8], align 16               ; 4 uses
  %i.n = alloca [12 x i8], align 4                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [40 x i8], align 8                ; 7 uses
  %i.q = alloca [40 x i8], align 8                ; 12 uses
  %i.r = alloca [64 x i8], align 8                ; 4 uses
  %i.s = alloca [40 x i8], align 8                ; 12 uses
  %i.t = alloca [64 x i8], align 8                ; 5 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8 = load i32, ptr %i.v, align 8, !noundef !4 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val9 = load i32, ptr %i.w, align 4, !noundef !4 ; 4 uses
  %i.x = icmp eq i32 %.val8, 0
  %i.y = icmp eq i32 %.val9, 0
  %or.cond6 = or i1 %i.x, %i.y
  %.sink267.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink267.i.sroa.gep63 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink267.i.sroa.gep65 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink267.i.sroa.gep66 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink267.i.sroa.gep68 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink267.i.sroa.gep69 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView22buffer_with_dimensionsB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2, i32 noundef %3)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_.exit

bb.c:                                             ; preds = %bb.a
  %i.z = icmp eq i32 %2, %.val8
  %i.aa = icmp eq i32 %3, %.val9
  %or.cond = and i1 %i.z, %i.aa
  br i1 %or.cond, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, i32 noundef 0)
          to label %bb.bn unwind label %bb.bm

switch.lookup:                                    ; preds = %bb.c
  %i.ab = zext nneg i8 %4 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_, i64 %i.ab
  %switch.load = load float, ptr %switch.gep, align 4 ; 2 uses
  %i.ac = zext nneg i8 %4 to i64
  %switch.gep383 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_.116, i64 %i.ac
  %switch.load384 = load ptr, ptr %switch.gep383, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !72
  invoke void @_RNvMsL_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE3newB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, i32 noundef %.val8, i32 noundef %3)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !72
  invoke void @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView22buffer_with_dimensionsB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef 0, i32 noundef 0)
          to label %bb.e unwind label %.thread81.i, !noalias !73

.thread81.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i, %.noexc
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread75.i

bb.e:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ae, ptr noundef nonnull align 8 dereferenceable(3) %i.ad, i64 3, i1 false), !noalias !72
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.f, !noalias !73

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %.thread75.i unwind label %bb.g, !noalias !73

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit.i unwind label %.thread81.i, !noalias !73

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !72
  store i64 0, ptr %i.o, align 8, !noalias !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ah, align 8, !noalias !72
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 5 uses
  store i64 0, ptr %i.ai, align 8, !noalias !72
  %i.aj = uitofp i32 %.val9 to float
  %i.ak = uitofp i32 %3 to float
  %i.al = fdiv float %i.aj, %i.ak                 ; 3 uses
  %i.am = fcmp olt float %i.al, 1.000000e+00
  %..i = select i1 %i.am, float 1.000000e+00, float %i.al ; 2 uses
  %i.an = fmul float %..i, %switch.load           ; 2 uses
  %.not141.i = icmp eq i32 %3, 0
  br i1 %.not141.i, label %._crit_edge140.i, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit.i
  %i.ao = zext i32 %.val9 to i64                  ; 2 uses
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %switch.load384, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %wide.trip.count175.i = zext i32 %3 to i64
  %wide.trip.count.i = zext i32 %.val8 to i64
  br label %bb.m

.loopexit90.i:                                    ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit.i
  %exitcond176.not.i = icmp eq i64 %indvars.iv.next173.i, %wide.trip.count175.i
  br i1 %exitcond176.not.i, label %._crit_edge140.i, label %bb.m

._crit_edge140.i:                                 ; preds = %.loopexit90.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !74
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.h, !noalias !73

bb.h:                                             ; preds = %._crit_edge140.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body17 unwind label %bb.i, !noalias !73

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %._crit_edge140.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !73
  unreachable

.loopexit.i:                                      ; preds = %bb.s, %.lr.ph130.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.p
  %lpad.loopexit91.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.v, %bb.n
  %lpad.loopexit94.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.r, %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample6resizeINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEB6_:bb.a
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17, !noalias !502
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultuNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorE6unwrapBM_.exit: ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8imageops6sample6FilterEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1r_fEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.h, align 8, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val52 = load i32, ptr %i.i, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.l = icmp samesign ult i64 %3, 8
  br i1 %i.l, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.g, %bb.d
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i, %bb.h
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit75, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit unwind label %bb.l

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.al, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.ak, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.o, align 4, !noundef !4
  %i.p = fadd float %.sroa.02.0.i, %.val.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.val.i.1 = load float, ptr %i.r, align 4, !noundef !4
  %i.s = fadd float %i.p, %.val.i.1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.2 = load float, ptr %i.u, align 4, !noundef !4
  %i.v = fadd float %i.s, %.val.i.2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.val.i.3 = load float, ptr %i.x, align 4, !noundef !4
  %i.y = fadd float %i.v, %.val.i.3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val.i.4 = load float, ptr %i.aa, align 4, !noundef !4
  %i.ab = fadd float %i.y, %.val.i.4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %.val.i.5 = load float, ptr %i.ad, align 4, !noundef !4
  %i.ae = fadd float %i.ab, %.val.i.5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.val.i.6 = load float, ptr %i.ag, align 4, !noundef !4
  %i.ah = fadd float %i.ae, %.val.i.6
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %.val.i.7 = load float, ptr %i.aj, align 4, !noundef !4
  %i.ak = fadd float %i.ah, %.val.i.7             ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.al, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod205 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod205)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.ao, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.an, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.am, align 4, !noundef !4
  %i.an = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !505

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.an, %.preheader.epil ] ; 2 uses
  %i.ap = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.aq = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ap, float 1.000000e+00, float %i.aq ; 2 uses
  %i.ar = add i32 %.val52, -1                     ; 2 uses
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph104, label %._crit_edge.split

.lr.ph104:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.at = add i32 %.val, -1                       ; 2 uses
  %i.au = icmp ugt i32 %i.at, 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br i1 %i.au, label %.lr.ph102.preheader, label %._crit_edge.split

.lr.ph102.preheader:                              ; preds = %.lr.ph104
  %wide.trip.count132 = zext i32 %i.ar to i64
  %wide.trip.count = zext i32 %i.at to i64
  %i.ba = insertelement <2 x float> poison, float %.sroa.02.0, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph102

..loopexit74_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge.split, label %.lr.ph102

._crit_edge.split:                                ; preds = %..loopexit74_crit_edge, %.lr.ph104, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %..loopexit74_crit_edge
  %indvars.iv129 = phi i64 [ 1, %.lr.ph102.preheader ], [ %indvars.iv.next130, %..loopexit74_crit_edge ] ; 5 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bc = trunc nuw i64 %indvars.iv129 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph102, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph102 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 8 ; 2 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.bd = icmp ult i64 %.sroa.566.0.copyload, %.sroa.7.0.copyload
  br i1 %i.bd, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.465.0.copyload) ]
  %i.be = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.045.096 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.cz, %bb.k ]
  %.sroa.566.095 = phi i64 [ %.sroa.566.0.copyload, %.lr.ph ], [ %i.bg, %bb.k ] ; 3 uses
  %i.bf = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.cx, %bb.k ]
  %i.bg = add i64 %.sroa.566.095, 1               ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.566.095
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.465.0.copyload, i64 %.sroa.566.095 ; 2 uses
  %i.bj = load float, ptr %i.bh, align 4, !noundef !4 ; 2 uses
  %i.bk = load i64, ptr %i.bi, align 8, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = add i32 %i.be, %i.bn
  %i.bp = trunc i64 %i.bm to i32
  %i.bq = add i32 %i.bc, %i.bp
  invoke void @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bo, i32 noundef %i.bq)
          to label %bb.j unwind label %.loopexit

.thread:                                          ; preds = %bb.k, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %.sroa.045.0.lcssa = phi float [ 0.000000e+00, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.cz, %bb.k ]
  %i.br = phi <2 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.cx, %bb.k ]
  %i.bs = fmul <2 x float> %i.bb, %i.br           ; 3 uses
  %i.bt = fmul float %.sroa.02.0, %.sroa.045.0.lcssa ; 3 uses
  %i.bu = fcmp olt <2 x float> %i.bs, zeroinitializer
  %i.bv = fcmp ogt <2 x float> %i.bs, splat (float 1.000000e+00)
  %i.bw = select <2 x i1> %i.bv, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bs
  %i.bx = select <2 x i1> %i.bu, <2 x float> zeroinitializer, <2 x float> %i.bw
  %i.by = fcmp olt float %i.bt, 0.000000e+00
  %i.bz = fcmp ogt float %i.bt, 1.000000e+00
  %..i58 = select i1 %i.bz, float 1.000000e+00, float %i.bt
  %.sroa.0.0.i59 = select i1 %i.by, float 0.000000e+00, float %..i58
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.ca = load i32, ptr %i.aw, align 8, !alias.scope !509, !noalias !510, !noundef !4 ; 2 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = icmp samesign uge i64 %indvars.iv, %i.cb
  %i.cd = load i32, ptr %i.ax, align 4, !alias.scope !509, !noalias !510 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp samesign uge i64 %indvars.iv129, %i.ce
  %or.cond.i = select i1 %i.cc, i1 true, i1 %i.cf, !prof !12
  br i1 %or.cond.i, label %bb.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %.thread
  %i.cg = mul nuw i64 %indvars.iv129, %i.cb
  %i.ch = add nuw i64 %i.cg, %indvars.iv
  %i.ci = mul i64 %i.ch, 3                        ; 4 uses
  %i.cj = add i64 %i.ci, 3                        ; 2 uses
  %.val15.i = load i64, ptr %i.ay, align 8, !alias.scope !509, !noalias !510, !noundef !4 ; 2 uses
  %i.ck = icmp ugt i64 %i.ci, -4
  %.not.i = icmp ugt i64 %i.cj, %.val15.i
  %or.cond14.i = or i1 %i.ck, %.not.i
  br i1 %or.cond14.i, label %bb.h, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %.val.i62 = load ptr, ptr %i.az, align 8, !alias.scope !509, !noalias !510, !nonnull !4, !noundef !4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val.i62, i64 %i.ci
  %i.cm = invoke noundef nonnull align 4 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.cl, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ci, i64 noundef %i.cj, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.thread
  %i.cn = trunc nuw i64 %indvars.iv129 to i32
  %i.co = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !511
  store i32 %i.co, ptr %i.c, align 4, !noalias !511
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cn, ptr %i.cp, align 4, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !511
  store i32 %i.ca, ptr %i.b, align 4, !noalias !511
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cd, ptr %i.cq, align 4, !noalias !511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !511
  store ptr %i.c, ptr %i.a, align 8, !noalias !511
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !511
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cr, align 8, !noalias !511
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !511
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit: ; preds = %bb.g
  store <2 x float> %i.bx, ptr %i.cm, align 4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store float %.sroa.0.0.i59, ptr %.sroa.569.0..sroa_idx, align 4
  %exitcond128.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond128.not, label %..loopexit74_crit_edge, label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbfENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.cs = load float, ptr %i.av, align 8, !noundef !4
  %i.ct = load <2 x float>, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cu = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.cv, %i.ct
  %i.cx = fadd <2 x float> %i.bf, %i.cw           ; 2 uses
  %i.cy = fmul float %i.bj, %i.cs
  %i.cz = fadd float %.sroa.045.096, %i.cy        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i64 %i.bg, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.l
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1r_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [3 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val64 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp91 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit90, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp91, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod253 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod253)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !512

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val64, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph130, label %._crit_edge.split

.lr.ph130:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph128.preheader, label %._crit_edge.split

.lr.ph128.preheader:                              ; preds = %.lr.ph130
  %wide.trip.count167 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph128

..loopexit89_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge.split, label %.lr.ph128

._crit_edge.split:                                ; preds = %..loopexit89_crit_edge, %.lr.ph130, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph128:                                        ; preds = %.lr.ph128.preheader, %..loopexit89_crit_edge
  %indvars.iv164 = phi i64 [ 1, %.lr.ph128.preheader ], [ %indvars.iv.next165, %..loopexit89_crit_edge ] ; 5 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv164 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph128, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph128 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.483.0.copyload = load ptr, ptr %.sroa.483.0..sroa_idx, align 8 ; 2 uses
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.584.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.483.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.584.0119 = phi i64 [ %.sroa.584.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ds, %bb.o ]
  %i.bc = add i64 %.sroa.584.0119, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.584.0119
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.483.0.copyload, i64 %.sroa.584.0119 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke i24 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.ds, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 2.550000e+02
  %..i = select i1 %i.bw, float 2.550000e+02, float %i.bq
  %.sroa.0.0.i67 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i67, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i67, 2.560000e+02
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i67 to i8
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 2.550000e+02
  %..i68 = select i1 %i.cd, float 2.550000e+02, float %i.cb
  %.sroa.0.0.i69 = select i1 %i.cc, float 0.000000e+00, float %..i68 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i69, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i69, 2.560000e+02
  %or.cond.i.i70 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i69 to i8
  br i1 %or.cond.i.i70, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 2.550000e+02
  %..i72 = select i1 %i.ci, float 2.550000e+02, float %i.bs
  %.sroa.0.0.i73 = select i1 %i.ch, float 0.000000e+00, float %..i72 ; 3 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i73, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i73, 2.560000e+02
  %or.cond.i.i74 = and i1 %i.cj, %i.ck
  %i.cl = fptoui float %.sroa.0.0.i73 to i8
  br i1 %or.cond.i.i74, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cm = fcmp olt float %i.bu, 0.000000e+00
  %i.cn = fcmp ogt float %i.bu, 2.550000e+02
  %..i76 = select i1 %i.cn, float 2.550000e+02, float %i.bu
  %.sroa.0.0.i77 = select i1 %i.cm, float 0.000000e+00, float %..i76 ; 2 uses
  %i.co = fcmp ogt float %.sroa.0.0.i77, -1.000000e+00
  %i.cp = fcmp olt float %.sroa.0.0.i77, 2.560000e+02
  %or.cond.i.i78 = and i1 %i.co, %i.cp
  br i1 %or.cond.i.i78, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cq = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.insert.ext.i = zext i8 %i.bz to i24
  %.sroa.01.1.insert.ext.i = zext i8 %i.cg to i24
  %.sroa.01.1.insert.shift.i = shl nuw nsw i24 %.sroa.01.1.insert.ext.i, 8
  %.sroa.01.1.insert.insert.i = or disjoint i24 %.sroa.01.1.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.2.insert.ext.i = zext i8 %i.cl to i24
  %.sroa.01.2.insert.shift.i = shl nuw i24 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i24 %.sroa.01.1.insert.insert.i, %.sroa.01.2.insert.shift.i
  call void @llvm.experimental.noalias.scope.decl(metadata !516)
  %i.cr = load i32, ptr %i.au, align 8, !alias.scope !516, !noalias !517, !noundef !4 ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp samesign uge i64 %indvars.iv, %i.cs
  %i.cu = load i32, ptr %i.av, align 4, !alias.scope !516, !noalias !517 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign uge i64 %indvars.iv164, %i.cv
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cw, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cx = mul nuw i64 %indvars.iv164, %i.cs
  %i.cy = add nuw i64 %i.cx, %indvars.iv
  %i.cz = mul i64 %i.cy, 3                        ; 4 uses
  %i.da = add i64 %i.cz, 3                        ; 2 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !516, !noalias !517, !noundef !4 ; 2 uses
  %i.db = icmp ugt i64 %i.cz, -4
  %.not.i = icmp ugt i64 %i.da, %.val15.i
  %or.cond14.i = or i1 %i.db, %.not.i
  br i1 %or.cond14.i, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %.val.i80 = load ptr, ptr %i.ax, align 8, !alias.scope !516, !noalias !517, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i80, i64 %i.cz
  %i.dd = invoke noundef nonnull ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.dc, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.da, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.de = trunc nuw i64 %indvars.iv164 to i32
  %i.df = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !518
  store i32 %i.df, ptr %i.c, align 4, !noalias !518
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.de, ptr %i.dg, align 4, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  store i32 %i.cr, ptr %i.b, align 4, !noalias !518
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cu, ptr %i.dh, align 4, !noalias !518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !518
  store ptr %i.c, ptr %i.a, align 8, !noalias !518
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !518
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.di, align 8, !noalias !518
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !518
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc82:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i24 %.sroa.01.2.insert.insert.i, ptr %i.dd, align 1
  %exitcond163.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond163.not, label %..loopexit89_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i24 %i.bn, ptr %i.d, align 4
  %i.dj = invoke noundef i32 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbhENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.461.0.extract.shift = lshr i32 %i.dj, 8
  %.sroa.562.0.extract.shift = lshr i32 %i.dj, 16
  %.sroa.663.0.extract.shift = lshr i32 %i.dj, 24
  %.sroa.060.0.extract.trunc = trunc i32 %i.dj to i8
  %.sroa.461.0.extract.trunc = trunc i32 %.sroa.461.0.extract.shift to i8
  %.sroa.562.0.extract.trunc = trunc i32 %.sroa.562.0.extract.shift to i8
  %.sroa.663.0.extract.trunc = trunc nuw i32 %.sroa.663.0.extract.shift to i8
  %i.dk = insertelement <4 x i8> poison, i8 %.sroa.663.0.extract.trunc, i64 0
  %i.dl = insertelement <4 x i8> %i.dk, i8 %.sroa.562.0.extract.trunc, i64 1
  %i.dm = insertelement <4 x i8> %i.dl, i8 %.sroa.060.0.extract.trunc, i64 2
  %i.dn = insertelement <4 x i8> %i.dm, i8 %.sroa.461.0.extract.trunc, i64 3
  %i.do = uitofp <4 x i8> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.bb, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1r_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [6 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val64 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod256 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod256)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !519

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val64, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph133, label %._crit_edge.split

.lr.ph133:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph131.preheader, label %._crit_edge.split

.lr.ph131.preheader:                              ; preds = %.lr.ph133
  %wide.trip.count170 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph131

..loopexit92_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge.split, label %.lr.ph131

._crit_edge.split:                                ; preds = %..loopexit92_crit_edge, %.lr.ph133, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %..loopexit92_crit_edge
  %indvars.iv167 = phi i64 [ 1, %.lr.ph131.preheader ], [ %indvars.iv.next168, %..loopexit92_crit_edge ] ; 5 uses
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv167 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph131, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph131 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.486.0.copyload = load ptr, ptr %.sroa.486.0..sroa_idx, align 8 ; 2 uses
  %.sroa.587.0.copyload = load i64, ptr %.sroa.587.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.587.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.486.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.587.0122 = phi i64 [ %.sroa.587.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.ds, %bb.o ]
  %i.bc = add i64 %.sroa.587.0122, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.587.0122
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.486.0.copyload, i64 %.sroa.587.0122 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke i48 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.ds, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 6.553500e+04
  %..i = select i1 %i.bw, float 6.553500e+04, float %i.bq
  %.sroa.0.0.i67 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i67, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i67, 6.553600e+04
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i67 to i16
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 6.553500e+04
  %..i68 = select i1 %i.cd, float 6.553500e+04, float %i.cb
  %.sroa.0.0.i69 = select i1 %i.cc, float 0.000000e+00, float %..i68 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i69, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i69, 6.553600e+04
  %or.cond.i.i70 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i69 to i16
  br i1 %or.cond.i.i70, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 6.553500e+04
  %..i73 = select i1 %i.ci, float 6.553500e+04, float %i.bs
  %.sroa.0.0.i74 = select i1 %i.ch, float 0.000000e+00, float %..i73 ; 3 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i74, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i74, 6.553600e+04
  %or.cond.i.i75 = and i1 %i.cj, %i.ck
  %i.cl = fptoui float %.sroa.0.0.i74 to i16
  br i1 %or.cond.i.i75, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cm = fcmp olt float %i.bu, 0.000000e+00
  %i.cn = fcmp ogt float %i.bu, 6.553500e+04
  %..i78 = select i1 %i.cn, float 6.553500e+04, float %i.bu
  %.sroa.0.0.i79 = select i1 %i.cm, float 0.000000e+00, float %..i78 ; 2 uses
  %i.co = fcmp ogt float %.sroa.0.0.i79, -1.000000e+00
  %i.cp = fcmp olt float %.sroa.0.0.i79, 6.553600e+04
  %or.cond.i.i80 = and i1 %i.co, %i.cp
  br i1 %or.cond.i.i80, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cq = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.insert.ext.i = zext i16 %i.bz to i48
  %.sroa.01.2.insert.ext.i = zext i16 %i.cg to i48
  %.sroa.01.2.insert.shift.i = shl nuw nsw i48 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i48 %.sroa.01.2.insert.shift.i, %.sroa.01.0.insert.ext.i
  %.sroa.01.4.insert.ext.i = zext i16 %i.cl to i48
  %.sroa.01.4.insert.shift.i = shl nuw i48 %.sroa.01.4.insert.ext.i, 32
  %.sroa.01.4.insert.insert.i = or disjoint i48 %.sroa.01.2.insert.insert.i, %.sroa.01.4.insert.shift.i
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  %i.cr = load i32, ptr %i.au, align 8, !alias.scope !523, !noalias !524, !noundef !4 ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp samesign uge i64 %indvars.iv, %i.cs
  %i.cu = load i32, ptr %i.av, align 4, !alias.scope !523, !noalias !524 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp samesign uge i64 %indvars.iv167, %i.cv
  %or.cond.i = select i1 %i.ct, i1 true, i1 %i.cw, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cx = mul nuw i64 %indvars.iv167, %i.cs
  %i.cy = add nuw i64 %i.cx, %indvars.iv
  %i.cz = mul i64 %i.cy, 3                        ; 4 uses
  %i.da = add i64 %i.cz, 3                        ; 2 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !523, !noalias !524, !noundef !4 ; 2 uses
  %i.db = icmp ugt i64 %i.cz, -4
  %.not.i = icmp ugt i64 %i.da, %.val15.i
  %or.cond14.i = or i1 %i.db, %.not.i
  br i1 %or.cond14.i, label %bb.l, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %.val.i83 = load ptr, ptr %i.ax, align 8, !alias.scope !523, !noalias !524, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.val.i83, i64 %i.cz
  %i.dd = invoke noundef nonnull align 2 ptr @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.dc, i64 noundef 3)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.da, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.de = trunc nuw i64 %indvars.iv167 to i32
  %i.df = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !525
  store i32 %i.df, ptr %i.c, align 4, !noalias !525
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.de, ptr %i.dg, align 4, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !525
  store i32 %i.cr, ptr %i.b, align 4, !noalias !525
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cu, ptr %i.dh, align 4, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !525
  store ptr %i.c, ptr %i.a, align 8, !noalias !525
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !525
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.di, align 8, !noalias !525
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !525
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i48 %.sroa.01.4.insert.insert.i, ptr %i.dd, align 2
  %exitcond166.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond166.not, label %..loopexit92_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i48 %i.bn, ptr %i.d, align 8
  %i.dj = invoke noundef i64 @_RNvXsO_NtCsa5QsYiPB8Gl_5image5colorINtB5_3RgbtENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.461.0.extract.shift = lshr i64 %i.dj, 16
  %.sroa.562.0.extract.shift = lshr i64 %i.dj, 32
  %.sroa.663.0.extract.shift = lshr i64 %i.dj, 48
  %.sroa.060.0.extract.trunc = trunc i64 %i.dj to i16
  %.sroa.461.0.extract.trunc = trunc i64 %.sroa.461.0.extract.shift to i16
  %.sroa.562.0.extract.trunc = trunc i64 %.sroa.562.0.extract.shift to i16
  %.sroa.663.0.extract.trunc = trunc nuw i64 %.sroa.663.0.extract.shift to i16
  %i.dk = insertelement <4 x i16> poison, i16 %.sroa.663.0.extract.trunc, i64 0
  %i.dl = insertelement <4 x i16> %i.dk, i16 %.sroa.562.0.extract.trunc, i64 1
  %i.dm = insertelement <4 x i16> %i.dl, i16 %.sroa.060.0.extract.trunc, i64 2
  %i.dn = insertelement <4 x i16> %i.dm, i16 %.sroa.461.0.extract.trunc, i64 3
  %i.do = uitofp <4 x i16> %i.dn to <4 x float>
  %i.dp = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = fmul <4 x float> %i.dq, %i.do
  %i.ds = fadd <4 x float> %i.bb, %i.dr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color3RgbtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1r_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit89, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod243 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod243)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !526

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph128, label %._crit_edge.split

.lr.ph128:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph126.preheader, label %._crit_edge.split

.lr.ph126.preheader:                              ; preds = %.lr.ph128
  %wide.trip.count163 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph126

..loopexit88_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.lr.ph126

._crit_edge.split:                                ; preds = %..loopexit88_crit_edge, %.lr.ph128, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %..loopexit88_crit_edge
  %indvars.iv160 = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next161, %..loopexit88_crit_edge ] ; 5 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv160 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph126, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph126 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.583.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.482.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.583.0117 = phi i64 [ %.sroa.583.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.do, %bb.o ]
  %i.bc = add i64 %.sroa.583.0117, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.583.0117
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.482.0.copyload, i64 %.sroa.583.0117 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i8 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.do, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 2.550000e+02
  %..i = select i1 %i.bw, float 2.550000e+02, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 2.560000e+02
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i8
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 2.550000e+02
  %..i67 = select i1 %i.cd, float 2.550000e+02, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 2 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 2.560000e+02
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.cg = fcmp olt float %i.bs, 0.000000e+00
  %i.ch = fcmp ogt float %i.bs, 2.550000e+02
  %..i71 = select i1 %i.ch, float 2.550000e+02, float %i.bs
  %.sroa.0.0.i72 = select i1 %i.cg, float 0.000000e+00, float %..i71 ; 2 uses
  %i.ci = fcmp ogt float %.sroa.0.0.i72, -1.000000e+00
  %i.cj = fcmp olt float %.sroa.0.0.i72, 2.560000e+02
  %or.cond.i.i73 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.i73, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ck = fcmp olt float %i.bu, 0.000000e+00
  %i.cl = fcmp ogt float %i.bu, 2.550000e+02
  %..i75 = select i1 %i.cl, float 2.550000e+02, float %i.bu
  %.sroa.0.0.i76 = select i1 %i.ck, float 0.000000e+00, float %..i75 ; 2 uses
  %i.cm = fcmp ogt float %.sroa.0.0.i76, -1.000000e+00
  %i.cn = fcmp olt float %.sroa.0.0.i76, 2.560000e+02
  %or.cond.i.i77 = and i1 %i.cm, %i.cn
  br i1 %or.cond.i.i77, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.co = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.cp = load i32, ptr %i.au, align 8, !alias.scope !530, !noalias !531, !noundef !4 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = icmp samesign uge i64 %indvars.iv, %i.cq
  %i.cs = load i32, ptr %i.av, align 4, !alias.scope !530, !noalias !531 ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign uge i64 %indvars.iv160, %i.ct
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cu, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cv = mul nuw i64 %indvars.iv160, %i.cq
  %i.cw = add nuw i64 %i.cv, %indvars.iv          ; 4 uses
  %.val14.i = load i64, ptr %i.aw, align 8, !alias.scope !530, !noalias !531, !noundef !4 ; 2 uses
  %.not.not.i = icmp ult i64 %i.cw, %.val14.i
  br i1 %.not.not.i, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %.val.i79 = load ptr, ptr %i.ax, align 8, !alias.scope !530, !noalias !531, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i79, i64 %i.cw
  %i.cy = invoke noundef nonnull ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.cx, i64 noundef 1)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.cz = add nuw i64 %i.cw, 1
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cz, i64 noundef %.val14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.da = trunc nuw i64 %indvars.iv160 to i32
  %i.db = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !532
  store i32 %i.db, ptr %i.c, align 4, !noalias !532
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.da, ptr %i.dc, align 4, !noalias !532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !532
  store i32 %i.cp, ptr %i.b, align 4, !noalias !532
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cs, ptr %i.dd, align 4, !noalias !532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !532
  store ptr %i.c, ptr %i.a, align 8, !noalias !532
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !532
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.de, align 8, !noalias !532
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !532
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i8 %i.bz, ptr %i.cy, align 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond159.not, label %..loopexit88_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i8 %i.bn, ptr %i.d, align 1
  %i.df = invoke noundef i32 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i32 %i.df, 8
  %.sroa.561.0.extract.shift = lshr i32 %i.df, 16
  %.sroa.662.0.extract.shift = lshr i32 %i.df, 24
  %.sroa.059.0.extract.trunc = trunc i32 %i.df to i8
  %.sroa.460.0.extract.trunc = trunc i32 %.sroa.460.0.extract.shift to i8
  %.sroa.561.0.extract.trunc = trunc i32 %.sroa.561.0.extract.shift to i8
  %.sroa.662.0.extract.trunc = trunc nuw i32 %.sroa.662.0.extract.shift to i8
  %i.dg = insertelement <4 x i8> poison, i8 %.sroa.662.0.extract.trunc, i64 0
  %i.dh = insertelement <4 x i8> %i.dg, i8 %.sroa.561.0.extract.trunc, i64 1
  %i.di = insertelement <4 x i8> %i.dh, i8 %.sroa.059.0.extract.trunc, i64 2
  %i.dj = insertelement <4 x i8> %i.di, i8 %.sroa.460.0.extract.trunc, i64 3
  %i.dk = uitofp <4 x i8> %i.dj to <4 x float>
  %i.dl = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul <4 x float> %i.dm, %i.dk
  %i.do = fadd <4 x float> %i.bb, %i.dn           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1r_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit92, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod246)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !533

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph131, label %._crit_edge.split

.lr.ph131:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph129.preheader, label %._crit_edge.split

.lr.ph129.preheader:                              ; preds = %.lr.ph131
  %wide.trip.count166 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph129

..loopexit91_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge.split, label %.lr.ph129

._crit_edge.split:                                ; preds = %..loopexit91_crit_edge, %.lr.ph131, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %..loopexit91_crit_edge
  %indvars.iv163 = phi i64 [ 1, %.lr.ph129.preheader ], [ %indvars.iv.next164, %..loopexit91_crit_edge ] ; 5 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv163 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph129, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.485.0.copyload = load ptr, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.586.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.485.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.586.0120 = phi i64 [ %.sroa.586.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.do, %bb.o ]
  %i.bc = add i64 %.sroa.586.0120, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.586.0120
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.485.0.copyload, i64 %.sroa.586.0120 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i16 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.do, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 6.553500e+04
  %..i = select i1 %i.bw, float 6.553500e+04, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 6.553600e+04
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i16
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 6.553500e+04
  %..i67 = select i1 %i.cd, float 6.553500e+04, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 2 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 6.553600e+04
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.cg = fcmp olt float %i.bs, 0.000000e+00
  %i.ch = fcmp ogt float %i.bs, 6.553500e+04
  %..i72 = select i1 %i.ch, float 6.553500e+04, float %i.bs
  %.sroa.0.0.i73 = select i1 %i.cg, float 0.000000e+00, float %..i72 ; 2 uses
  %i.ci = fcmp ogt float %.sroa.0.0.i73, -1.000000e+00
  %i.cj = fcmp olt float %.sroa.0.0.i73, 6.553600e+04
  %or.cond.i.i74 = and i1 %i.ci, %i.cj
  br i1 %or.cond.i.i74, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.ck = fcmp olt float %i.bu, 0.000000e+00
  %i.cl = fcmp ogt float %i.bu, 6.553500e+04
  %..i77 = select i1 %i.cl, float 6.553500e+04, float %i.bu
  %.sroa.0.0.i78 = select i1 %i.ck, float 0.000000e+00, float %..i77 ; 2 uses
  %i.cm = fcmp ogt float %.sroa.0.0.i78, -1.000000e+00
  %i.cn = fcmp olt float %.sroa.0.0.i78, 6.553600e+04
  %or.cond.i.i79 = and i1 %i.cm, %i.cn
  br i1 %or.cond.i.i79, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.co = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.cp = load i32, ptr %i.au, align 8, !alias.scope !537, !noalias !538, !noundef !4 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = icmp samesign uge i64 %indvars.iv, %i.cq
  %i.cs = load i32, ptr %i.av, align 4, !alias.scope !537, !noalias !538 ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp samesign uge i64 %indvars.iv163, %i.ct
  %or.cond.i = select i1 %i.cr, i1 true, i1 %i.cu, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cv = mul nuw i64 %indvars.iv163, %i.cq
  %i.cw = add nuw i64 %i.cv, %indvars.iv          ; 4 uses
  %.val14.i = load i64, ptr %i.aw, align 8, !alias.scope !537, !noalias !538, !noundef !4 ; 2 uses
  %.not.not.i = icmp ult i64 %i.cw, %.val14.i
  br i1 %.not.not.i, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %bb.j
  %.val.i82 = load ptr, ptr %i.ax, align 8, !alias.scope !537, !noalias !538, !nonnull !4, !noundef !4
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.val.i82, i64 %i.cw
  %i.cy = invoke noundef nonnull align 2 ptr @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.cx, i64 noundef 1)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.cz = add nuw i64 %i.cw, 1
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cw, i64 noundef %i.cz, i64 noundef %.val14.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.da = trunc nuw i64 %indvars.iv163 to i32
  %i.db = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !539
  store i32 %i.db, ptr %i.c, align 4, !noalias !539
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.da, ptr %i.dc, align 4, !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !539
  store i32 %i.cp, ptr %i.b, align 4, !noalias !539
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cs, ptr %i.dd, align 4, !noalias !539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !539
  store ptr %i.c, ptr %i.a, align 8, !noalias !539
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !539
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.de, align 8, !noalias !539
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !539
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i16 %i.bz, ptr %i.cy, align 2
  %exitcond162.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond162.not, label %..loopexit91_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i16 %i.bn, ptr %i.d, align 2
  %i.df = invoke noundef i64 @_RNvXsS_NtCsa5QsYiPB8Gl_5image5colorINtB5_4LumatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i64 %i.df, 16
  %.sroa.561.0.extract.shift = lshr i64 %i.df, 32
  %.sroa.662.0.extract.shift = lshr i64 %i.df, 48
  %.sroa.059.0.extract.trunc = trunc i64 %i.df to i16
  %.sroa.460.0.extract.trunc = trunc i64 %.sroa.460.0.extract.shift to i16
  %.sroa.561.0.extract.trunc = trunc i64 %.sroa.561.0.extract.shift to i16
  %.sroa.662.0.extract.trunc = trunc nuw i64 %.sroa.662.0.extract.shift to i16
  %i.dg = insertelement <4 x i16> poison, i16 %.sroa.662.0.extract.trunc, i64 0
  %i.dh = insertelement <4 x i16> %i.dg, i16 %.sroa.561.0.extract.trunc, i64 1
  %i.di = insertelement <4 x i16> %i.dh, i16 %.sroa.059.0.extract.trunc, i64 2
  %i.dj = insertelement <4 x i16> %i.di, i16 %.sroa.460.0.extract.trunc, i64 3
  %i.dk = uitofp <4 x i16> %i.dj to <4 x float>
  %i.dl = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dn = fmul <4 x float> %i.dm, %i.dk
  %i.do = fadd <4 x float> %i.bb, %i.dn           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4LumatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1r_fEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.h, align 8, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val52 = load i32, ptr %i.i, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.k = icmp eq i64 %3, 0
  br i1 %i.k, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.l = icmp samesign ult i64 %3, 8
  br i1 %i.l, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.g, %bb.d
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i, %bb.h
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit75, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit unwind label %bb.l

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.al, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.ak, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.o, align 4, !noundef !4
  %i.p = fadd float %.sroa.02.0.i, %.val.i
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %.val.i.1 = load float, ptr %i.r, align 4, !noundef !4
  %i.s = fadd float %i.p, %.val.i.1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i.2 = load float, ptr %i.u, align 4, !noundef !4
  %i.v = fadd float %i.s, %.val.i.2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.val.i.3 = load float, ptr %i.x, align 4, !noundef !4
  %i.y = fadd float %i.v, %.val.i.3
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.val.i.4 = load float, ptr %i.aa, align 4, !noundef !4
  %i.ab = fadd float %i.y, %.val.i.4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %.val.i.5 = load float, ptr %i.ad, align 4, !noundef !4
  %i.ae = fadd float %i.ab, %.val.i.5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %.val.i.6 = load float, ptr %i.ag, align 4, !noundef !4
  %i.ah = fadd float %i.ae, %.val.i.6
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  %.val.i.7 = load float, ptr %i.aj, align 4, !noundef !4
  %i.ak = fadd float %i.ah, %.val.i.7             ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.al, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod200)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.ao, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.an, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.am, align 4, !noundef !4
  %i.an = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !540

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.an, %.preheader.epil ] ; 2 uses
  %i.ap = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.aq = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ap, float 1.000000e+00, float %i.aq
  %i.ar = add i32 %.val52, -1                     ; 2 uses
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph106, label %._crit_edge.split

.lr.ph106:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.at = add i32 %.val, -1                       ; 2 uses
  %i.au = icmp ugt i32 %i.at, 1
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br i1 %i.au, label %.lr.ph104.preheader, label %._crit_edge.split

.lr.ph104.preheader:                              ; preds = %.lr.ph106
  %wide.trip.count133 = zext i32 %i.ar to i64
  %wide.trip.count = zext i32 %i.at to i64
  %i.az = insertelement <4 x float> poison, float %.sroa.02.0, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph104

..loopexit74_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge.split, label %.lr.ph104

._crit_edge.split:                                ; preds = %..loopexit74_crit_edge, %.lr.ph106, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %..loopexit74_crit_edge
  %indvars.iv130 = phi i64 [ 1, %.lr.ph104.preheader ], [ %indvars.iv.next131, %..loopexit74_crit_edge ] ; 5 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.bb = trunc nuw i64 %indvars.iv130 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph104, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph104 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %2, ptr noundef nonnull %i.j, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.465.0.copyload = load ptr, ptr %.sroa.465.0..sroa_idx, align 8 ; 2 uses
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.bc = icmp ult i64 %.sroa.566.0.copyload, %.sroa.7.0.copyload
  br i1 %i.bc, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.465.0.copyload) ]
  %i.bd = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.566.095 = phi i64 [ %.sroa.566.0.copyload, %.lr.ph ], [ %i.bf, %bb.k ] ; 3 uses
  %i.be = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.cs, %bb.k ]
  %i.bf = add i64 %.sroa.566.095, 1               ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.566.095
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.465.0.copyload, i64 %.sroa.566.095 ; 2 uses
  %i.bi = load float, ptr %i.bg, align 4, !noundef !4
  %i.bj = load i64, ptr %i.bh, align 8, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bm = trunc i64 %i.bj to i32
  %i.bn = add i32 %i.bd, %i.bm
  %i.bo = trunc i64 %i.bl to i32
  %i.bp = add i32 %i.bb, %i.bo
  invoke void @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bn, i32 noundef %i.bp)
          to label %bb.j unwind label %.loopexit

.thread:                                          ; preds = %bb.k, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bq = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.cs, %bb.k ]
  %i.br = fmul <4 x float> %i.ba, %i.bq           ; 3 uses
  %i.bs = fcmp olt <4 x float> %i.br, zeroinitializer
  %i.bt = fcmp ogt <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bu = select <4 x i1> %i.bt, <4 x float> splat (float 1.000000e+00), <4 x float> %i.br
  %i.bv = select <4 x i1> %i.bs, <4 x float> zeroinitializer, <4 x float> %i.bu
  call void @llvm.experimental.noalias.scope.decl(metadata !544)
  %i.bw = load i32, ptr %i.av, align 8, !alias.scope !544, !noalias !545, !noundef !4 ; 2 uses
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = icmp samesign uge i64 %indvars.iv, %i.bx
  %i.bz = load i32, ptr %i.aw, align 4, !alias.scope !544, !noalias !545 ; 2 uses
  %i.ca = zext i32 %i.bz to i64
  %i.cb = icmp samesign uge i64 %indvars.iv130, %i.ca
  %or.cond.i = select i1 %i.by, i1 true, i1 %i.cb, !prof !12
  br i1 %or.cond.i, label %bb.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %.thread
  %i.cc = mul nuw i64 %indvars.iv130, %i.bx
  %i.cd = add nuw i64 %i.cc, %indvars.iv
  %i.ce = shl i64 %i.cd, 2                        ; 4 uses
  %.val15.i = load i64, ptr %i.ax, align 8, !alias.scope !544, !noalias !545, !noundef !4 ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 3
  %or.cond14.not.i = icmp ult i64 %i.cf, %.val15.i
  br i1 %or.cond14.not.i, label %bb.g, label %bb.h, !prof !13

bb.g:                                             ; preds = %bb.f
  %.val.i62 = load ptr, ptr %i.ay, align 8, !alias.scope !544, !noalias !545, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.val.i62, i64 %i.ce
  %i.ch = invoke noundef nonnull align 4 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 4 %i.cg, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ci = add i64 %i.ce, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ce, i64 noundef %i.ci, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %.thread
  %i.cj = trunc nuw i64 %indvars.iv130 to i32
  %i.ck = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !546
  store i32 %i.ck, ptr %i.c, align 4, !noalias !546
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.cj, ptr %i.cl, align 4, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !546
  store i32 %i.bw, ptr %i.b, align 4, !noalias !546
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.bz, ptr %i.cm, align 4, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !546
  store ptr %i.c, ptr %i.a, align 8, !noalias !546
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !546
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.cn, align 8, !noalias !546
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !546
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.i
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE13get_pixel_mutB9_.exit: ; preds = %bb.g
  store <4 x float> %i.bv, ptr %i.ch, align 4
  %exitcond129.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond129.not, label %..loopexit74_crit_edge, label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbafENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.co = load <4 x float>, ptr %i.d, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cp = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = fmul <4 x float> %i.cq, %i.co
  %i.cs = fadd <4 x float> %i.be, %i.cr           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i64 %i.bf, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.l
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbafEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1r_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit89, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod242 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod242)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !547

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph128, label %._crit_edge.split

.lr.ph128:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph126.preheader, label %._crit_edge.split

.lr.ph126.preheader:                              ; preds = %.lr.ph128
  %wide.trip.count163 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph126

..loopexit88_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.lr.ph126

._crit_edge.split:                                ; preds = %..loopexit88_crit_edge, %.lr.ph128, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %..loopexit88_crit_edge
  %indvars.iv160 = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next161, %..loopexit88_crit_edge ] ; 5 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv160 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph126, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph126 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.583.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.482.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.583.0117 = phi i64 [ %.sroa.583.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.o ]
  %i.bc = add i64 %.sroa.583.0117, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.583.0117
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.482.0.copyload, i64 %.sroa.583.0117 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i32 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.dt, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 2.550000e+02
  %..i = select i1 %i.bw, float 2.550000e+02, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 2.560000e+02
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i8
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 2.550000e+02
  %..i67 = select i1 %i.cd, float 2.550000e+02, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 2.560000e+02
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i68 to i8
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 2.550000e+02
  %..i71 = select i1 %i.ci, float 2.550000e+02, float %i.bs
  %.sroa.0.0.i72 = select i1 %i.ch, float 0.000000e+00, float %..i71 ; 3 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i72, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i72, 2.560000e+02
  %or.cond.i.i73 = and i1 %i.cj, %i.ck
  %i.cl = fptoui float %.sroa.0.0.i72 to i8
  br i1 %or.cond.i.i73, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cm = fcmp olt float %i.bu, 0.000000e+00
  %i.cn = fcmp ogt float %i.bu, 2.550000e+02
  %..i75 = select i1 %i.cn, float 2.550000e+02, float %i.bu
  %.sroa.0.0.i76 = select i1 %i.cm, float 0.000000e+00, float %..i75 ; 3 uses
  %i.co = fcmp ogt float %.sroa.0.0.i76, -1.000000e+00
  %i.cp = fcmp olt float %.sroa.0.0.i76, 2.560000e+02
  %or.cond.i.i77 = and i1 %i.co, %i.cp
  br i1 %or.cond.i.i77, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cq = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.cr = fptoui float %.sroa.0.0.i76 to i8
  %.sroa.6.0.insert.ext.i = zext i8 %i.cr to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.cl to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.shift.i, %.sroa.6.0.insert.shift.i
  %.sroa.4.0.insert.ext.i = zext i8 %i.cg to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.01.0.insert.ext.i = zext i8 %i.bz to i32
  %.sroa.01.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  %i.cs = load i32, ptr %i.au, align 8, !alias.scope !551, !noalias !552, !noundef !4 ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = icmp samesign uge i64 %indvars.iv, %i.ct
  %i.cv = load i32, ptr %i.av, align 4, !alias.scope !551, !noalias !552 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign uge i64 %indvars.iv160, %i.cw
  %or.cond.i = select i1 %i.cu, i1 true, i1 %i.cx, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cy = mul nuw i64 %indvars.iv160, %i.ct
  %i.cz = add nuw i64 %i.cy, %indvars.iv
  %i.da = shl i64 %i.cz, 2                        ; 4 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !551, !noalias !552, !noundef !4 ; 2 uses
  %i.db = or disjoint i64 %i.da, 3
  %or.cond14.not.i = icmp ult i64 %i.db, %.val15.i
  br i1 %or.cond14.not.i, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %.val.i79 = load ptr, ptr %i.ax, align 8, !alias.scope !551, !noalias !552, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %.val.i79, i64 %i.da
  %i.dd = invoke noundef nonnull ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull %i.dc, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.de = add i64 %i.da, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.da, i64 noundef %i.de, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.df = trunc nuw i64 %indvars.iv160 to i32
  %i.dg = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !553
  store i32 %i.dg, ptr %i.c, align 4, !noalias !553
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.df, ptr %i.dh, align 4, !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !553
  store i32 %i.cs, ptr %i.b, align 4, !noalias !553
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cv, ptr %i.di, align 4, !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !553
  store ptr %i.c, ptr %i.a, align 8, !noalias !553
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !553
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dj, align 8, !noalias !553
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !553
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i32 %.sroa.01.0.insert.insert.i, ptr %i.dd, align 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond159.not, label %..loopexit88_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i32 %i.bn, ptr %i.d, align 4
  %i.dk = invoke noundef i32 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbahENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i32 %i.dk, 8
  %.sroa.561.0.extract.shift = lshr i32 %i.dk, 16
  %.sroa.662.0.extract.shift = lshr i32 %i.dk, 24
  %.sroa.059.0.extract.trunc = trunc i32 %i.dk to i8
  %.sroa.460.0.extract.trunc = trunc i32 %.sroa.460.0.extract.shift to i8
  %.sroa.561.0.extract.trunc = trunc i32 %.sroa.561.0.extract.shift to i8
  %.sroa.662.0.extract.trunc = trunc nuw i32 %.sroa.662.0.extract.shift to i8
  %i.dl = insertelement <4 x i8> poison, i8 %.sroa.662.0.extract.trunc, i64 0
  %i.dm = insertelement <4 x i8> %i.dl, i8 %.sroa.561.0.extract.trunc, i64 1
  %i.dn = insertelement <4 x i8> %i.dm, i8 %.sroa.059.0.extract.trunc, i64 2
  %i.do = insertelement <4 x i8> %i.dn, i8 %.sroa.460.0.extract.trunc, i64 3
  %i.dp = uitofp <4 x i8> %i.do to <4 x float>
  %i.dq = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul <4 x float> %i.dr, %i.dp
  %i.dt = fadd <4 x float> %i.bb, %i.ds           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1r_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit92, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !554

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph131, label %._crit_edge.split

.lr.ph131:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph129.preheader, label %._crit_edge.split

.lr.ph129.preheader:                              ; preds = %.lr.ph131
  %wide.trip.count166 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph129

..loopexit91_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge.split, label %.lr.ph129

._crit_edge.split:                                ; preds = %..loopexit91_crit_edge, %.lr.ph131, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %..loopexit91_crit_edge
  %indvars.iv163 = phi i64 [ 1, %.lr.ph129.preheader ], [ %indvars.iv.next164, %..loopexit91_crit_edge ] ; 5 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv163 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph129, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.485.0.copyload = load ptr, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.586.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.485.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.586.0120 = phi i64 [ %.sroa.586.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.o ]
  %i.bc = add i64 %.sroa.586.0120, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.586.0120
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.485.0.copyload, i64 %.sroa.586.0120 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i64 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.dt, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 6.553500e+04
  %..i = select i1 %i.bw, float 6.553500e+04, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 6.553600e+04
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i16
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 6.553500e+04
  %..i67 = select i1 %i.cd, float 6.553500e+04, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 6.553600e+04
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i68 to i16
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 6.553500e+04
  %..i72 = select i1 %i.ci, float 6.553500e+04, float %i.bs
  %.sroa.0.0.i73 = select i1 %i.ch, float 0.000000e+00, float %..i72 ; 3 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i73, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i73, 6.553600e+04
  %or.cond.i.i74 = and i1 %i.cj, %i.ck
  %i.cl = fptoui float %.sroa.0.0.i73 to i16
  br i1 %or.cond.i.i74, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cm = fcmp olt float %i.bu, 0.000000e+00
  %i.cn = fcmp ogt float %i.bu, 6.553500e+04
  %..i77 = select i1 %i.cn, float 6.553500e+04, float %i.bu
  %.sroa.0.0.i78 = select i1 %i.cm, float 0.000000e+00, float %..i77 ; 3 uses
  %i.co = fcmp ogt float %.sroa.0.0.i78, -1.000000e+00
  %i.cp = fcmp olt float %.sroa.0.0.i78, 6.553600e+04
  %or.cond.i.i79 = and i1 %i.co, %i.cp
  br i1 %or.cond.i.i79, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cq = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.cr = fptoui float %.sroa.0.0.i78 to i16
  %.sroa.6.0.insert.ext.i = zext i16 %i.cr to i64
  %.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.6.0.insert.ext.i, 48
  %.sroa.5.0.insert.ext.i = zext i16 %i.cl to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %.sroa.6.0.insert.shift.i
  %.sroa.4.0.insert.ext.i = zext i16 %i.cg to i64
  %.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i, 16
  %.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.insert.i, %.sroa.4.0.insert.shift.i
  %.sroa.01.0.insert.ext.i = zext i16 %i.bz to i64
  %.sroa.01.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.insert.i, %.sroa.01.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.cs = load i32, ptr %i.au, align 8, !alias.scope !558, !noalias !559, !noundef !4 ; 2 uses
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = icmp samesign uge i64 %indvars.iv, %i.ct
  %i.cv = load i32, ptr %i.av, align 4, !alias.scope !558, !noalias !559 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign uge i64 %indvars.iv163, %i.cw
  %or.cond.i = select i1 %i.cu, i1 true, i1 %i.cx, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cy = mul nuw i64 %indvars.iv163, %i.ct
  %i.cz = add nuw i64 %i.cy, %indvars.iv
  %i.da = shl i64 %i.cz, 2                        ; 4 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !558, !noalias !559, !noundef !4 ; 2 uses
  %i.db = or disjoint i64 %i.da, 3
  %or.cond14.not.i = icmp ult i64 %i.db, %.val15.i
  br i1 %or.cond14.not.i, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %.val.i82 = load ptr, ptr %i.ax, align 8, !alias.scope !558, !noalias !559, !nonnull !4, !noundef !4
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %.val.i82, i64 %i.da
  %i.dd = invoke noundef nonnull align 2 ptr @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel14from_slice_mutB7_(ptr noalias nofree noundef nonnull align 2 %i.dc, i64 noundef 4)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.de = add i64 %i.da, 4
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.da, i64 noundef %i.de, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.df = trunc nuw i64 %indvars.iv163 to i32
  %i.dg = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !560
  store i32 %i.dg, ptr %i.c, align 4, !noalias !560
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.df, ptr %i.dh, align 4, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !560
  store i32 %i.cs, ptr %i.b, align 4, !noalias !560
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.cv, ptr %i.di, align 4, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !560
  store ptr %i.c, ptr %i.a, align 8, !noalias !560
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !560
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dj, align 8, !noalias !560
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !560
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.dd, align 2
  %exitcond162.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond162.not, label %..loopexit91_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i64 %i.bn, ptr %i.d, align 8
  %i.dk = invoke noundef i64 @_RNvXsW_NtCsa5QsYiPB8Gl_5image5colorINtB5_4RgbatENtNtB7_6traits5Pixel9channels4B7_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i64 %i.dk, 16
  %.sroa.561.0.extract.shift = lshr i64 %i.dk, 32
  %.sroa.662.0.extract.shift = lshr i64 %i.dk, 48
  %.sroa.059.0.extract.trunc = trunc i64 %i.dk to i16
  %.sroa.460.0.extract.trunc = trunc i64 %.sroa.460.0.extract.shift to i16
  %.sroa.561.0.extract.trunc = trunc i64 %.sroa.561.0.extract.shift to i16
  %.sroa.662.0.extract.trunc = trunc nuw i64 %.sroa.662.0.extract.shift to i16
  %i.dl = insertelement <4 x i16> poison, i16 %.sroa.662.0.extract.trunc, i64 0
  %i.dm = insertelement <4 x i16> %i.dl, i16 %.sroa.561.0.extract.trunc, i64 1
  %i.dn = insertelement <4 x i16> %i.dm, i16 %.sroa.059.0.extract.trunc, i64 2
  %i.do = insertelement <4 x i16> %i.dn, i16 %.sroa.460.0.extract.trunc, i64 3
  %i.dp = uitofp <4 x i16> %i.do to <4 x float>
  %i.dq = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = fmul <4 x float> %i.dr, %i.dp
  %i.dt = fadd <4 x float> %i.bb, %i.ds           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color4RgbatEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEB1r_hEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [2 x i8], align 2                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit89, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod242 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod242)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !561

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph128, label %._crit_edge.split

.lr.ph128:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph126.preheader, label %._crit_edge.split

.lr.ph126.preheader:                              ; preds = %.lr.ph128
  %wide.trip.count163 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph126

..loopexit88_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge.split, label %.lr.ph126

._crit_edge.split:                                ; preds = %..loopexit88_crit_edge, %.lr.ph128, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %..loopexit88_crit_edge
  %indvars.iv160 = phi i64 [ 1, %.lr.ph126.preheader ], [ %indvars.iv.next161, %..loopexit88_crit_edge ] ; 5 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv160 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph126, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph126 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.482.0.copyload = load ptr, ptr %.sroa.482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.583.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.482.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.583.0117 = phi i64 [ %.sroa.583.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dr, %bb.o ]
  %i.bc = add i64 %.sroa.583.0117, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.583.0117
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.482.0.copyload, i64 %.sroa.583.0117 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i16 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.dr, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 2.550000e+02
  %..i = select i1 %i.bw, float 2.550000e+02, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 2.560000e+02
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i8
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 2.550000e+02
  %..i67 = select i1 %i.cd, float 2.550000e+02, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 2.560000e+02
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i68 to i8
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 2.550000e+02
  %..i71 = select i1 %i.ci, float 2.550000e+02, float %i.bs
  %.sroa.0.0.i72 = select i1 %i.ch, float 0.000000e+00, float %..i71 ; 2 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i72, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i72, 2.560000e+02
  %or.cond.i.i73 = and i1 %i.cj, %i.ck
  br i1 %or.cond.i.i73, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cl = fcmp olt float %i.bu, 0.000000e+00
  %i.cm = fcmp ogt float %i.bu, 2.550000e+02
  %..i75 = select i1 %i.cm, float 2.550000e+02, float %i.bu
  %.sroa.0.0.i76 = select i1 %i.cl, float 0.000000e+00, float %..i75 ; 2 uses
  %i.cn = fcmp ogt float %.sroa.0.0.i76, -1.000000e+00
  %i.co = fcmp olt float %.sroa.0.0.i76, 2.560000e+02
  %or.cond.i.i77 = and i1 %i.cn, %i.co
  br i1 %or.cond.i.i77, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cp = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.insert.ext.i = zext i8 %i.bz to i16
  %.sroa.01.1.insert.ext.i = zext i8 %i.cg to i16
  %.sroa.01.1.insert.shift.i = shl nuw i16 %.sroa.01.1.insert.ext.i, 8
  %.sroa.01.1.insert.insert.i = or disjoint i16 %.sroa.01.1.insert.shift.i, %.sroa.01.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.cq = load i32, ptr %i.au, align 8, !alias.scope !565, !noalias !566, !noundef !4 ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp samesign uge i64 %indvars.iv, %i.cr
  %i.ct = load i32, ptr %i.av, align 4, !alias.scope !565, !noalias !566 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign uge i64 %indvars.iv160, %i.cu
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.cv, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cw = mul nuw i64 %indvars.iv160, %i.cr
  %i.cx = add nuw i64 %i.cw, %indvars.iv
  %i.cy = shl i64 %i.cx, 1                        ; 4 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !565, !noalias !566, !noundef !4 ; 2 uses
  %i.cz = or disjoint i64 %i.cy, 1
  %or.cond14.not.i = icmp ult i64 %i.cz, %.val15.i
  br i1 %or.cond14.not.i, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %.val.i79 = load ptr, ptr %i.ax, align 8, !alias.scope !565, !noalias !566, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i79, i64 %i.cy
  %i.db = invoke noundef nonnull ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull %i.da, i64 noundef 2)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.dc = add i64 %i.cy, 2
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cy, i64 noundef %i.dc, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.dd = trunc nuw i64 %indvars.iv160 to i32
  %i.de = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !567
  store i32 %i.de, ptr %i.c, align 4, !noalias !567
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.dd, ptr %i.df, align 4, !noalias !567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !567
  store i32 %i.cq, ptr %i.b, align 4, !noalias !567
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ct, ptr %i.dg, align 4, !noalias !567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !567
  store ptr %i.c, ptr %i.a, align 8, !noalias !567
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !567
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dh, align 8, !noalias !567
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !567
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i16 %.sroa.01.1.insert.insert.i, ptr %i.db, align 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond159.not, label %..loopexit88_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i16 %i.bn, ptr %i.d, align 2
  %i.di = invoke noundef i32 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAhENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i32 %i.di, 8
  %.sroa.561.0.extract.shift = lshr i32 %i.di, 16
  %.sroa.662.0.extract.shift = lshr i32 %i.di, 24
  %.sroa.059.0.extract.trunc = trunc i32 %i.di to i8
  %.sroa.460.0.extract.trunc = trunc i32 %.sroa.460.0.extract.shift to i8
  %.sroa.561.0.extract.trunc = trunc i32 %.sroa.561.0.extract.shift to i8
  %.sroa.662.0.extract.trunc = trunc nuw i32 %.sroa.662.0.extract.shift to i8
  %i.dj = insertelement <4 x i8> poison, i8 %.sroa.662.0.extract.trunc, i64 0
  %i.dk = insertelement <4 x i8> %i.dj, i8 %.sroa.561.0.extract.trunc, i64 1
  %i.dl = insertelement <4 x i8> %i.dk, i8 %.sroa.059.0.extract.trunc, i64 2
  %i.dm = insertelement <4 x i8> %i.dl, i8 %.sroa.460.0.extract.trunc, i64 3
  %i.dn = uitofp <4 x i8> %i.dm to <4 x float>
  %i.do = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul <4 x float> %i.dp, %i.dn
  %i.dr = fadd <4 x float> %i.bb, %i.dq           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9filter3x3INtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEB1r_tEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.g, align 8, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val63 = load i32, ptr %i.h, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView11buffer_likeB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %.idx = shl nuw nsw i64 %3, 2
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.j = icmp eq i64 %3, 0
  br i1 %i.j, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %3, 7                       ; 3 uses
  %i.k = icmp samesign ult i64 %3, 8
  br i1 %i.k, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %3, 2305843009213693944
  br label %.preheader

.loopexit:                                        ; preds = %bb.e, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.d
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.m, %bb.l
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit92, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit unwind label %bb.p

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ak, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader.preheader.new ], [ %i.aj, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.n, align 4, !noundef !4
  %i.o = fadd float %.sroa.02.0.i, %.val.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.val.i.1 = load float, ptr %i.q, align 4, !noundef !4
  %i.r = fadd float %i.o, %.val.i.1
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i.2 = load float, ptr %i.t, align 4, !noundef !4
  %i.u = fadd float %i.r, %.val.i.2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.3 = load float, ptr %i.w, align 4, !noundef !4
  %i.x = fadd float %i.u, %.val.i.3
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.4 = load float, ptr %i.z, align 4, !noundef !4
  %i.aa = fadd float %i.x, %.val.i.4
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.val.i.5 = load float, ptr %i.ac, align 4, !noundef !4
  %i.ad = fadd float %i.aa, %.val.i.5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.val.i.6 = load float, ptr %i.af, align 4, !noundef !4
  %i.ag = fadd float %i.ad, %.val.i.6
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.val.i.7 = load float, ptr %i.ai, align 4, !noundef !4
  %i.aj = fadd float %i.ag, %.val.i.7             ; 3 uses
  %i.ak = add nuw nsw i64 %.sroa.04.0.i, 8        ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ak, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader.preheader ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ]
  %lcmp.mod245 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod245)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.an, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.am, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.al, align 4, !noundef !4
  %i.am = fadd float %.sroa.02.0.i.epil, %.val.i.epil ; 2 uses
  %i.an = add nuw nsw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader.epil, !llvm.loop !568

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi float [ -0.000000e+00, %bb.a ], [ %i.aj, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit.loopexit.unr-lcssa ], [ %i.am, %.preheader.epil ] ; 2 uses
  %i.ao = fcmp oeq float %.sroa.0.0.i, 0.000000e+00
  %i.ap = fdiv float 1.000000e+00, %.sroa.0.0.i
  %.sroa.02.0 = select i1 %i.ao, float 1.000000e+00, float %i.ap ; 4 uses
  %i.aq = add i32 %.val63, -1                     ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph131, label %._crit_edge.split

.lr.ph131:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  %i.as = add i32 %.val, -1                       ; 2 uses
  %i.at = icmp ugt i32 %i.as, 1
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %i.at, label %.lr.ph129.preheader, label %._crit_edge.split

.lr.ph129.preheader:                              ; preds = %.lr.ph131
  %wide.trip.count166 = zext i32 %i.aq to i64
  %wide.trip.count = zext i32 %i.as to i64
  br label %.lr.ph129

..loopexit91_crit_edge:                           ; preds = %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge.split, label %.lr.ph129

._crit_edge.split:                                ; preds = %..loopexit91_crit_edge, %.lr.ph131, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4foldfNCINvXs24_NtBW_5accumfINtB1N_3SumRfE3sumBF_E0ECsa5QsYiPB8Gl_5image.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %..loopexit91_crit_edge
  %indvars.iv163 = phi i64 [ 1, %.lr.ph129.preheader ], [ %indvars.iv.next164, %..loopexit91_crit_edge ] ; 5 uses
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ay = trunc nuw i64 %indvars.iv163 to i32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph129, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph129 ], [ %indvars.iv.next, %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEIBX_TiiEEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 144))
          to label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit unwind label %.loopexit.split-lp.loopexit

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.485.0.copyload = load ptr, ptr %.sroa.485.0..sroa_idx, align 8 ; 2 uses
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.az = icmp ult i64 %.sroa.586.0.copyload, %.sroa.7.0.copyload
  br i1 %i.az, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.485.0.copyload) ]
  %i.ba = trunc nuw i64 %indvars.iv to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.586.0120 = phi i64 [ %.sroa.586.0.copyload, %.lr.ph ], [ %i.bc, %bb.o ] ; 3 uses
  %i.bb = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.dr, %bb.o ]
  %i.bc = add i64 %.sroa.586.0120, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.586.0120
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %.sroa.485.0.copyload, i64 %.sroa.586.0120 ; 2 uses
  %i.bf = load float, ptr %i.bd, align 4, !noundef !4
  %i.bg = load i64, ptr %i.be, align 8, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bj = trunc i64 %i.bg to i32
  %i.bk = add i32 %i.ba, %i.bj
  %i.bl = trunc i64 %i.bi to i32
  %i.bm = add i32 %i.ay, %i.bl
  %i.bn = invoke noundef i32 @_RNvXsJ_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEENtNtB7_13generic_image16GenericImageView9get_pixelB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %i.bk, i32 noundef %i.bm)
          to label %bb.n unwind label %.loopexit

.thread:                                          ; preds = %bb.o, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit
  %i.bo = phi <4 x float> [ zeroinitializer, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_TiiEEECsa5QsYiPB8Gl_5image.exit ], [ %i.dr, %bb.o ] ; 4 uses
  %i.bp = extractelement <4 x float> %i.bo, i64 2
  %i.bq = fmul float %.sroa.02.0, %i.bp           ; 3 uses
  %i.br = extractelement <4 x float> %i.bo, i64 1
  %i.bs = fmul float %.sroa.02.0, %i.br           ; 3 uses
  %i.bt = extractelement <4 x float> %i.bo, i64 0
  %i.bu = fmul float %.sroa.02.0, %i.bt           ; 3 uses
  %i.bv = fcmp olt float %i.bq, 0.000000e+00
  %i.bw = fcmp ogt float %i.bq, 6.553500e+04
  %..i = select i1 %i.bw, float 6.553500e+04, float %i.bq
  %.sroa.0.0.i66 = select i1 %i.bv, float 0.000000e+00, float %..i ; 3 uses
  %i.bx = fcmp ogt float %.sroa.0.0.i66, -1.000000e+00
  %i.by = fcmp olt float %.sroa.0.0.i66, 6.553600e+04
  %or.cond.i.i = and i1 %i.bx, %i.by
  %i.bz = fptoui float %.sroa.0.0.i66 to i16
  br i1 %or.cond.i.i, label %bb.f, label %.invoke, !prof !16

bb.f:                                             ; preds = %.thread
  %i.ca = extractelement <4 x float> %i.bo, i64 3
  %i.cb = fmul float %.sroa.02.0, %i.ca           ; 3 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 6.553500e+04
  %..i67 = select i1 %i.cd, float 6.553500e+04, float %i.cb
  %.sroa.0.0.i68 = select i1 %i.cc, float 0.000000e+00, float %..i67 ; 3 uses
  %i.ce = fcmp ogt float %.sroa.0.0.i68, -1.000000e+00
  %i.cf = fcmp olt float %.sroa.0.0.i68, 6.553600e+04
  %or.cond.i.i69 = and i1 %i.ce, %i.cf
  %i.cg = fptoui float %.sroa.0.0.i68 to i16
  br i1 %or.cond.i.i69, label %bb.g, label %.invoke, !prof !16

bb.g:                                             ; preds = %bb.f
  %i.ch = fcmp olt float %i.bs, 0.000000e+00
  %i.ci = fcmp ogt float %i.bs, 6.553500e+04
  %..i72 = select i1 %i.ci, float 6.553500e+04, float %i.bs
  %.sroa.0.0.i73 = select i1 %i.ch, float 0.000000e+00, float %..i72 ; 2 uses
  %i.cj = fcmp ogt float %.sroa.0.0.i73, -1.000000e+00
  %i.ck = fcmp olt float %.sroa.0.0.i73, 6.553600e+04
  %or.cond.i.i74 = and i1 %i.cj, %i.ck
  br i1 %or.cond.i.i74, label %bb.h, label %.invoke, !prof !16

bb.h:                                             ; preds = %bb.g
  %i.cl = fcmp olt float %i.bu, 0.000000e+00
  %i.cm = fcmp ogt float %i.bu, 6.553500e+04
  %..i77 = select i1 %i.cm, float 6.553500e+04, float %i.bu
  %.sroa.0.0.i78 = select i1 %i.cl, float 0.000000e+00, float %..i77 ; 2 uses
  %i.cn = fcmp ogt float %.sroa.0.0.i78, -1.000000e+00
  %i.co = fcmp olt float %.sroa.0.0.i78, 6.553600e+04
  %or.cond.i.i79 = and i1 %i.cn, %i.co
  br i1 %or.cond.i.i79, label %bb.i, label %.invoke, !prof !16

.invoke:                                          ; preds = %bb.h, %bb.g, %bb.f, %.thread
  %i.cp = phi ptr [ @24, %bb.g ], [ @23, %bb.f ], [ @22, %.thread ], [ @25, %bb.h ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #21
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.insert.ext.i = zext i16 %i.bz to i32
  %.sroa.01.2.insert.ext.i = zext i16 %i.cg to i32
  %.sroa.01.2.insert.shift.i = shl nuw i32 %.sroa.01.2.insert.ext.i, 16
  %.sroa.01.2.insert.insert.i = or disjoint i32 %.sroa.01.2.insert.shift.i, %.sroa.01.0.insert.ext.i
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  %i.cq = load i32, ptr %i.au, align 8, !alias.scope !572, !noalias !573, !noundef !4 ; 2 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = icmp samesign uge i64 %indvars.iv, %i.cr
  %i.ct = load i32, ptr %i.av, align 4, !alias.scope !572, !noalias !573 ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign uge i64 %indvars.iv163, %i.cu
  %or.cond.i = select i1 %i.cs, i1 true, i1 %i.cv, !prof !12
  br i1 %or.cond.i, label %bb.m, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.cw = mul nuw i64 %indvars.iv163, %i.cr
  %i.cx = add nuw i64 %i.cw, %indvars.iv
  %i.cy = shl i64 %i.cx, 1                        ; 4 uses
  %.val15.i = load i64, ptr %i.aw, align 8, !alias.scope !572, !noalias !573, !noundef !4 ; 2 uses
  %i.cz = or disjoint i64 %i.cy, 1
  %or.cond14.not.i = icmp ult i64 %i.cz, %.val15.i
  br i1 %or.cond14.not.i, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %bb.j
  %.val.i82 = load ptr, ptr %i.ax, align 8, !alias.scope !572, !noalias !573, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.val.i82, i64 %i.cy
  %i.db = invoke noundef nonnull align 2 ptr @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel14from_slice_mutB8_(ptr noalias nofree noundef nonnull align 2 %i.da, i64 noundef 2)
          to label %_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit unwind label %.loopexit.split-lp.loopexit

bb.l:                                             ; preds = %bb.j
  %i.dc = add i64 %i.cy, 2
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.cy, i64 noundef %i.dc, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.dd = trunc nuw i64 %indvars.iv163 to i32
  %i.de = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !574
  store i32 %i.de, ptr %i.c, align 4, !noalias !574
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.dd, ptr %i.df, align 4, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !574
  store i32 %i.cq, ptr %i.b, align 4, !noalias !574
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ct, ptr %i.dg, align 4, !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  store ptr %i.c, ptr %i.a, align 8, !noalias !574
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !574
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.dh, align 8, !noalias !574
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1G_NtCsj6eKBz9Db1c_4core3fmtTmmENtB6_5Debug3fmtCsa5QsYiPB8Gl_5image, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !574
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc84:                                         ; preds = %bb.m
  unreachable

_RNvMsx_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEE13get_pixel_mutB9_.exit: ; preds = %bb.k
  store i32 %.sroa.01.2.insert.insert.i, ptr %i.db, align 2
  %exitcond162.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond162.not, label %..loopexit91_crit_edge, label %bb.d

bb.n:                                             ; preds = %bb.e
  store i32 %i.bn, ptr %i.d, align 4
  %i.di = invoke noundef i64 @_RNvXs10_NtCsa5QsYiPB8Gl_5image5colorINtB6_5LumaAtENtNtB8_6traits5Pixel9channels4B8_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.d)
          to label %bb.o unwind label %.loopexit  ; 4 uses

bb.o:                                             ; preds = %bb.n
  %.sroa.460.0.extract.shift = lshr i64 %i.di, 16
  %.sroa.561.0.extract.shift = lshr i64 %i.di, 32
  %.sroa.662.0.extract.shift = lshr i64 %i.di, 48
  %.sroa.059.0.extract.trunc = trunc i64 %i.di to i16
  %.sroa.460.0.extract.trunc = trunc i64 %.sroa.460.0.extract.shift to i16
  %.sroa.561.0.extract.trunc = trunc i64 %.sroa.561.0.extract.shift to i16
  %.sroa.662.0.extract.trunc = trunc nuw i64 %.sroa.662.0.extract.shift to i16
  %i.dj = insertelement <4 x i16> poison, i16 %.sroa.662.0.extract.trunc, i64 0
  %i.dk = insertelement <4 x i16> %i.dj, i16 %.sroa.561.0.extract.trunc, i64 1
  %i.dl = insertelement <4 x i16> %i.dk, i16 %.sroa.059.0.extract.trunc, i64 2
  %i.dm = insertelement <4 x i16> %i.dl, i16 %.sroa.460.0.extract.trunc, i64 3
  %i.dn = uitofp <4 x i16> %i.dm to <4 x float>
  %i.do = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = fmul <4 x float> %i.dp, %i.dn
  %i.dr = fadd <4 x float> %i.bb, %i.dq           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %i.bc, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.e

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.b, %bb.p
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBI_5color5LumaAtEINtNtCs4wP2HXfJTCR_5alloc3vec3VectEEEBI_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image.exit.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops6sample9thumbnailINtNtNtB6_6images6buffer11ImageBufferINtNtB6_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEB1r_fEB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [12 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 4                ; 5 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [12 x i8], align 4                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
end_hunk_1

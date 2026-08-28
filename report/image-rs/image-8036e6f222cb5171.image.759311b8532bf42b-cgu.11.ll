Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.11?download=true
inline.NumInlined: 1166
inline.NumDeleted: 423
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit7 unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit5
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body3, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn, %.body3 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit7: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit5
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.l:                                             ; preds = %.body3, %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp7decoder13DecodingErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !273, !noundef !5
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 24, label %bb.f
    i8 25, label %bb.i
  ]

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !274, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  %i.d = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
    i64 1, label %bb.e
  ], !prof !256

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !277, !noalias !274
  store i8 3, ptr %i.a, align 8, !alias.scope !277, !noalias !274
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !274
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.b

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit2 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsa5QsYiPB8Gl_5image.exit2: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit
    i64 1, label %bb.c
  ], !prof !256

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !280
  store i8 3, ptr %i.a, align 8, !alias.scope !280
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image11PlaneLayoutECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecjEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder5image5ImageECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !155, !alias.scope !283, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53gkmrwjETj_4tiff9directory9DirectoryEECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB2_8BTreeMaptNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5EntryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53gkmrwjETj_4tiff9directory9DirectoryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #24
          to label %.body unwind label %bb.s

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53gkmrwjETj_4tiff9directory9DirectoryEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53gkmrwjETj_4tiff9directory9DirectoryEECsa5QsYiPB8Gl_5image.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs53gkmrwjETj_4tiff9directory9DirectoryEECsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.body:                                            ; preds = %bb.i, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.m, %bb.i ], [ %i.f, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !286, !noundef !5 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !289
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !294, !noundef !5 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image.exit
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !297
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #30
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9 unwind label %bb.l

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g, %.body, %bb.h, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %.pn, %bb.h ], [ %.pn, %.body ], [ %.pn, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %.body11 unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCs53gkmrwjETj_4tiff4tags12ExtraSamplesEECsa5QsYiPB8Gl_5image.exit, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body11 unwind label %bb.o

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit9
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

.body11:                                          ; preds = %bb.p, %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit
  %.pn4 = phi { ptr, i32 } [ %.pn2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit ], [ %i.y, %bb.p ], [ %i.v, %bb.m ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #24
          to label %common.resume unwind label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body11

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit14 unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body11, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %.pn4, %.body11 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit14: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecyEECsa5QsYiPB8Gl_5image.exit
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z)
  ret void

bb.s:                                             ; preds = %bb.h, %.body11, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtB12_3vec3VechEEEECsa5QsYiPB8Gl_5image.exit, %bb.c
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles9IfdCyclesECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdBP_EENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdB1w_EECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdB1w_EECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit2 unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtBT_7decoder6cycles11ComponentIdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtB1A_7decoder6cycles11ComponentIdEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdB1w_EECsa5QsYiPB8Gl_5image.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit2: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtNtCs53gkmrwjETj_4tiff7decoder6cycles11ComponentIdB1w_EECsa5QsYiPB8Gl_5image.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtBT_7decoder6cycles11ComponentIdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
  ret void

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointerNtNtNtB1A_7decoder6cycles11ComponentIdEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapNtNtCs53gkmrwjETj_4tiff4tags10IfdPointeryEECsa5QsYiPB8Gl_5image.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta6header15LayerAttributesECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(848) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !8, !alias.scope !302, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
  br i1 %i.cq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit63.i, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i
  %.val47.i = load ptr, ptr %i.bb, align 8, !noalias !680, !nonnull !5, !noundef !5
  %i.cr = shl nuw nsw i64 %.val48.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val47.i, i64 noundef range(i64 1, 0) %i.cr, i64 noundef 1) #27, !noalias !680
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit63.i

bb.x:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !680
  invoke void @_RNvMs0_NtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoderNtB5_17ArithmeticDecoder3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az)
          to label %bb.ab unwind label %bb.z, !noalias !680

bb.z:                                             ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val46.i = load i64, ptr %i.cu, align 8, !noalias !680, !noundef !5 ; 2 uses
  %i.cv = icmp eq i64 %.val46.i, 0
  br i1 %i.cv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val45.i = load ptr, ptr %i.ba, align 8, !noalias !680, !nonnull !5, !noundef !5
  %i.cw = shl nuw nsw i64 %.val46.i, 2
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i, i64 noundef range(i64 1, 0) %i.cw, i64 noundef 1) #27, !noalias !680
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit64.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i64 48, i1 false), !noalias !680
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i64 48, i1 false), !noalias !680
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false), !noalias !680
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cz, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !noalias !680
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.da, ptr noundef nonnull align 8 dereferenceable(48) %i.bc, i64 48, i1 false), !noalias !680
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 48, i1 false), !noalias !680
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !680
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull align 8 dereferenceable(48) %i.az, i64 48, i1 false), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !680
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !680
  %i.de = tail call noundef dereferenceable_or_null(4224) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 1, 4225) 4224, i64 noundef range(i64 1, 9) 1) #27, !noalias !680 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ac, label %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit, !prof !154

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 4224) #28
          to label %.noexc.i unwind label %bb.ad, !noalias !680

.noexc.i:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueANtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderj8_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(384) %i.bh) #24, !noalias !680
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i

bb.ae:                                            ; preds = %.thread.i, %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !680
  unreachable

bb.af:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp22vp8_arithmetic_decoder17ArithmeticDecoderECsa5QsYiPB8Gl_5image.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bj) #24
          to label %bb.ag unwind label %bb.ae, !noalias !680

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val44.i = load i64, ptr %i.di, align 8, !noalias !680, !noundef !5 ; 2 uses
  %i.dj = icmp eq i64 %.val44.i, 0
  br i1 %i.dj, label %common.resume, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load ptr, ptr %i.bk, align 8, !noalias !680, !nonnull !5, !noundef !5
  %i.dk = shl nuw nsw i64 %.val44.i, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.dk, i64 noundef 1) #27, !noalias !680
  br label %common.resume

.thread.i:                                        ; preds = %bb.d, %bb.b
  %.pn41.pn.ph.i = phi { ptr, i32 } [ %i.bq, %bb.b ], [ %i.br, %bb.d ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsksn9slvsHfS_10image_webp3vp85FrameECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bl) #24
          to label %common.resume unwind label %bb.ae, !noalias !680

common.resume:                                    ; preds = %.body.i, %bb.ea, %bb.ag, %bb.ah, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %.pn41.i, %bb.ag ], [ %.pn41.pn.ph.i, %.thread.i ], [ %.pn41.i, %bb.ah ], [ %.pn68.i, %.body.i ], [ %.pn64.i, %bb.ea ]
  resume { ptr, i32 } %common.resume.op

_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4224) %i.de, ptr noundef nonnull align 1 dereferenceable(4224) @131, i64 4224, i1 false), !noalias !680
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bm, i64 344 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !680
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 368 ; 23 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false), !noalias !678
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 884 ; 12 uses
  store i16 0, ptr %i.dn, align 4, !alias.scope !675, !noalias !678
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 886 ; 5 uses
  store i16 0, ptr %i.do, align 2, !alias.scope !675, !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(896) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !678
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.dp, ptr noundef nonnull align 8 dereferenceable(88) %i.bl, i64 88, i1 false), !noalias !678
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bm, i64 888 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bm, i64 889
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bm, i64 280 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, i8 0, i64 64, i1 false), !alias.scope !675, !noalias !678
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 890
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 808
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 416 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.du, i8 0, i64 32, i1 false), !alias.scope !675, !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.dv, ptr noundef nonnull align 8 dereferenceable(384) %i.bh, i64 384, i1 false), !noalias !678
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 891 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.dq, align 8, !alias.scope !675, !noalias !678
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bm, i64 840 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dx, ptr noundef nonnull align 1 dereferenceable(12) @132, i64 12, i1 false), !noalias !678
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 800 ; 3 uses
  store ptr %i.de, ptr %i.dy, align 8, !alias.scope !675, !noalias !678
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 892 ; 3 uses
  store i8 0, ptr %i.dz, align 4, !alias.scope !675, !noalias !678
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bm, i64 852 ; 3 uses
  store i8 0, ptr %i.ea, align 4, !alias.scope !675, !noalias !678
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bm, i64 112 ; 6 uses
  store i64 0, ptr %i.eb, align 8, !alias.scope !675, !noalias !678
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 120 ; 40 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 128 ; 41 uses
  store i64 0, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 854 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 874 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %i.ec, i8 0, i64 20, i1 false), !alias.scope !675, !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.8.i, i64 9, i1 false), !noalias !678
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 883 ; 3 uses
  store i8 0, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !675, !noalias !678
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bm, i64 136 ; 6 uses
  store i64 0, ptr %i.ed, align 8, !alias.scope !675, !noalias !678
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 144 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 152 ; 2 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 168 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.57.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675, !noalias !678
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 176 ; 4 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.510.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675, !noalias !678
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 200 ; 2 uses
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 216 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.513.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675, !noalias !678
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 224 ; 4 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675, !noalias !678
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 248 ; 2 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 264 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.519.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !675, !noalias !678
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 272 ; 4 uses
  store i64 0, ptr %.sroa.522.0..sroa_idx.i, align 8, !alias.scope !675, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !680
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !680
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !689
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, i8 0, i64 3, i1 false), !noalias !689
  %i.ee = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.y, i64 noundef 3)
          to label %.noexc.i1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681 ; 2 uses

.noexc.i1:                                        ; preds = %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE3newCsa5QsYiPB8Gl_5image.exit
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.noexc.i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !689
  %i.ef = ptrtoint ptr %i.ee to i64
  br label %bb.df

bb.aj:                                            ; preds = %.noexc.i1
  %i.eg = invoke noundef i32 @_RNvYNtCsbQ1pTce3Gzu_14byteorder_lite12LittleEndianNtB4_9ByteOrder8read_u24Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef 3)
          to label %.noexc75.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681 ; 2 uses

.noexc75.i:                                       ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !689
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bm, i64 100 ; 6 uses
  %i.ei = trunc i32 %i.eg to i8                   ; 3 uses
  %i.ej = and i8 %i.ei, 1                         ; 2 uses
  %i.ek = xor i8 %i.ej, 1
  store i8 %i.ek, ptr %i.eh, align 4, !alias.scope !694, !noalias !695
  %i.el = getelementptr inbounds nuw i8, ptr %i.bm, i64 103
  %i.em = lshr i8 %i.ei, 1
  %i.en = and i8 %i.em, 7
  store i8 %i.en, ptr %i.el, align 1, !alias.scope !694, !noalias !695
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bm, i64 101
  %i.ep = lshr i8 %i.ei, 4
  %i.eq = and i8 %i.ep, 1
  store i8 %i.eq, ptr %i.eo, align 1, !alias.scope !694, !noalias !695
  %i.er = lshr i32 %i.eg, 5
  %.not160.not.i.i = icmp eq i8 %i.ej, 0
  br i1 %.not160.not.i.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.bq, %.noexc75.i
  %i.es = zext nneg i32 %i.er to i64              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !696
  %i.et = add nuw nsw i64 %i.es, 3
  %.sroa.039.0.i.i = lshr i64 %i.et, 2            ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !700
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef range(i64 0, 2305843009213693953) %.sroa.039.0.i.i, i1 noundef zeroext true, i64 noundef 1, i64 noundef 4)
          to label %.noexc76.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc76.i:                                       ; preds = %bb.ak
  %i.eu = load i64, ptr %i.x, align 8, !range !155, !noalias !700, !noundef !5
  %i.ev = trunc nuw i64 %i.eu to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !179, !noalias !700, !noundef !5 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.ev, label %bb.al, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemAhj4_NtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i, !prof !154

bb.al:                                            ; preds = %.noexc76.i
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !700
  br label %.invoke1666.i

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemAhj4_NtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc76.i
  %i.fa = load ptr, ptr %i.ey, align 8, !noalias !700, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !700
  store i64 %i.ex, ptr %i.ai, align 8, !alias.scope !697, !noalias !696
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.fa, ptr %i.fb, align 8, !alias.scope !697, !noalias !696
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %.sroa.039.0.i.i, ptr %i.fc, align 8, !alias.scope !697, !noalias !696
  %i.fd = invoke { ptr, i64 } @_RNvMs0_NtCsj6eKBz9Db1c_4core5sliceSAhj4_16as_flattened_mutCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull %i.fa, i64 noundef %.sroa.039.0.i.i)
          to label %bb.br unwind label %bb.dc, !noalias !695 ; 2 uses

bb.am:                                            ; preds = %.noexc75.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.at, i8 0, i64 3, i1 false), !noalias !696
  %i.fe = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.at, i64 noundef 3)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681 ; 2 uses

.noexc78.i:                                       ; preds = %bb.am
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc78.i
  %i.ff = ptrtoint ptr %i.fe to i64
  br label %bb.de

bb.ao:                                            ; preds = %.noexc78.i
  %i.fg = load i24, ptr %i.at, align 4, !noalias !696 ; 3 uses
  %.not124.i.i = icmp eq i24 %i.fg, 2752925
  br i1 %.not124.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !701
  store i16 0, ptr %i.w, align 2, !noalias !701
  %i.fh = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.w, i64 noundef 2)
          to label %.noexc79.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681 ; 2 uses

.noexc79.i:                                       ; preds = %bb.ap
  %.not.i138.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i138.i.i, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.fi = lshr i24 %i.fg, 8
  %i.fj = trunc nuw i24 %i.fi to i16
  %i.fk = trunc i24 %i.fg to i8
  br label %bb.de

bb.ar:                                            ; preds = %.noexc79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !701
  %i.fl = ptrtoint ptr %i.fh to i64
  br label %bb.de

bb.as:                                            ; preds = %.noexc79.i
  %.val.i.i.i = load i16, ptr %i.w, align 2, !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !705
  store i16 0, ptr %i.v, align 2, !noalias !705
  %i.fm = invoke noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noalias nofree noundef nonnull %i.v, i64 noundef 2)
          to label %.noexc80.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681 ; 2 uses

.noexc80.i:                                       ; preds = %bb.as
  %.not.i140.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i140.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.noexc80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !705
  %i.fn = ptrtoint ptr %i.fm to i64
  br label %bb.de

bb.au:                                            ; preds = %.noexc80.i
  %.val.i142.i.i = load i16, ptr %i.v, align 2, !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !705
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bm, i64 96 ; 3 uses
  %i.fp = and i16 %.val.i.i.i, 16383              ; 2 uses
  store i16 %i.fp, ptr %i.fo, align 8, !alias.scope !694, !noalias !695
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bm, i64 98
  %i.fr = and i16 %.val.i142.i.i, 16383
  store i16 %i.fr, ptr %i.fq, align 2, !alias.scope !694, !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !696
  %i.fs = zext nneg i16 %i.fp to i64
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp820init_top_macroblocks(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, i64 noundef %i.fs)
          to label %.noexc81.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc81.i:                                       ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.eb)
          to label %bb.aw unwind label %bb.av, !noalias !695

bb.av:                                            ; preds = %.noexc81.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !695
  br label %.body.i

bb.aw:                                            ; preds = %.noexc81.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i), !noalias !696
  %i.fu = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !694, !noalias !695, !noundef !5
  %.not125.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not125.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, i8 0, i64 16, i1 false), !noalias !696
  invoke void @_RNvXsW_NtCsj6eKBz9Db1c_4core5arrayAhj9_NtNtB7_7default7Default7defaultCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([9 x i8]) align 1 captures(none) dereferenceable(9) %.sroa.9.i.i)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

bb.ay:                                            ; preds = %bb.aw
  %i.fv = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !694, !noalias !695, !nonnull !5, !noundef !5 ; 4 uses
  %i.fw = load <4 x i8>, ptr %i.fv, align 1, !noalias !695
  %.sroa.773.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.773.0..sroa.035.0..sroa_idx.i.i, i64 16, i1 false), !noalias !695
  %.sroa.874.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.874.0..sroa.035.0..sroa_idx.i.i, i64 9, i1 false), !noalias !695
  %.sroa.975.0..sroa.035.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 29
  %.sroa.975.0.copyload.i.i = load i8, ptr %.sroa.975.0..sroa.035.0..sroa_idx.i.i, align 1, !noalias !695
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.ay, %bb.ax
  %.sroa.10.0.i.i = phi i8 [ %.sroa.975.0.copyload.i.i, %bb.ay ], [ 0, %bb.ax ]
  %i.fx = phi <4 x i8> [ %i.fw, %bb.ay ], [ zeroinitializer, %bb.ax ]
  store <4 x i8> %i.fx, ptr %i.ec, align 2, !alias.scope !694, !noalias !695
  %.sroa.8.0..sroa_idx24.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 858
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.8.0..sroa_idx24.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.9.i.i, i64 9, i1 false), !noalias !695
  store i8 %.sroa.10.0.i.i, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !694, !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i), !noalias !696
  %i.fy = load <2 x i16>, ptr %i.fo, align 8, !alias.scope !694, !noalias !695 ; 2 uses
  %i.fz = lshr <2 x i16> %i.fy, splat (i16 4)
  %i.ga = and <2 x i16> %i.fy, splat (i16 15)
  %i.gb = icmp ne <2 x i16> %i.ga, zeroinitializer
  %i.gc = zext <2 x i1> %i.gb to <2 x i16>
  %i.gd = add nuw nsw <2 x i16> %i.fz, %i.gc      ; 3 uses
  store <2 x i16> %i.gd, ptr %i.dn, align 4, !alias.scope !694, !noalias !695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !696
  %i.ge = extractelement <2 x i16> %i.gd, i64 0
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = extractelement <2 x i16> %i.gd, i64 1
  %i.gh = zext nneg i16 %i.gg to i64
  %i.gi = shl nuw nsw i64 %i.gf, 8
  %i.gj = mul nuw nsw i64 %i.gi, %i.gh
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ar, i8 noundef 0, i64 noundef %i.gj) #29
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc83.i:                                       ; preds = %.noexc82.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dp)
          to label %bb.ba unwind label %bb.az, !noalias !695

bb.az:                                            ; preds = %.noexc83.i
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !695
  br label %.body.i

bb.ba:                                            ; preds = %.noexc83.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !696
  %i.gl = load i16, ptr %i.dn, align 4, !alias.scope !694, !noalias !695, !noundef !5
  %i.gm = zext i16 %i.gl to i64
  %i.gn = load i16, ptr %i.do, align 2, !alias.scope !694, !noalias !695, !noundef !5
  %i.go = zext i16 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.gm, 6
  %i.gq = mul nuw nsw i64 %i.gp, %i.go
  invoke fastcc void @_RINvXs1_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.aq, i8 noundef 0, i64 noundef %i.gq) #29
          to label %.noexc84.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.noexc84.i:                                       ; preds = %bb.ba
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 3 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.gr)
          to label %bb.bc unwind label %bb.bb, !noalias !695

bb.bb:                                            ; preds = %.noexc84.i
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !695
  br label %.body.i
end_hunk_1
begin_hunk_2_@_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE12decode_frameCsa5QsYiPB8Gl_5image:bb.a
          to label %.noexc251.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc251.i:                                      ; preds = %.noexc250.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp811add_residue(ptr noalias nofree noundef nonnull %i.d, i64 noundef 81, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(64) %i.nv, i64 noundef 5, i64 noundef 5, i64 noundef 9)
          to label %.noexc252.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc252.i:                                      ; preds = %.noexc251.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akn, i64 noundef %i.ako, ptr noalias nofree noundef nonnull %i.akl, i64 noundef %i.akm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc253.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc253.i:                                      ; preds = %.noexc252.i
  invoke void @_RNvNtCsksn9slvsHfS_10image_webp3vp817set_chroma_border(ptr noalias nofree noundef nonnull %i.akr, i64 noundef %i.aks, ptr noalias nofree noundef nonnull %i.akp, i64 noundef %i.akq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 81, i64 noundef range(i64 0, 65535) %.sroa.027.0857.i)
          to label %.noexc254.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

.noexc254.i:                                      ; preds = %.noexc253.i
  %i.aku = load i64, ptr %i.nw, align 8, !alias.scope !773, !noalias !774, !noundef !5 ; 4 uses
  %i.akv = load ptr, ptr %i.nx, align 8, !alias.scope !773, !noalias !774, !nonnull !5
  %i.akw = load i64, ptr %i.ny, align 8, !alias.scope !773, !noalias !774 ; 4 uses
  %i.akx = load ptr, ptr %i.nz, align 8, !alias.scope !773, !noalias !774, !nonnull !5
  br label %bb.js

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %vec.epilog.middle.block, %.noexc261.i
  %exitcond45.not.i.i = icmp eq i64 %i.aky, 8
  br i1 %exitcond45.not.i.i, label %bb.jx, label %bb.js

bb.js:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, %.noexc254.i
  %.sroa.09.034.i.i = phi i64 [ 0, %.noexc254.i ], [ %i.aky, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i ] ; 2 uses
  %i.aky = add nuw nsw i64 %.sroa.09.034.i.i, 1   ; 3 uses
  %i.akz = add nuw nsw i64 %.sroa.09.034.i.i, %i.qm
  %i.ala = mul nuw nsw i64 %i.akz, %i.akk
  %i.alb = add nuw nsw i64 %i.ala, %.sroa.027.0857.i
  %i.alc = shl nuw nsw i64 %i.alb, 3              ; 8 uses
  %i.ald = mul nuw nsw i64 %i.aky, 9
  %i.ale = add nuw nsw i64 %i.ald, 1              ; 2 uses
  %i.alf = icmp ugt i64 %i.alc, %i.aku
  br i1 %i.alf, label %.invoke.i, label %bb.jt, !prof !154

bb.jt:                                            ; preds = %bb.js
  %i.alg = sub nuw i64 %i.aku, %i.alc             ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.alc ; 2 uses
  %i.ali = icmp ugt i64 %i.alg, 7
  br i1 %i.ali, label %bb.ju, label %.invoke.i, !prof !156

bb.ju:                                            ; preds = %bb.jt
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %i.alk = icmp ugt i64 %i.alc, %i.akw
  br i1 %i.alk, label %.invoke.i, label %bb.jv, !prof !154

bb.jv:                                            ; preds = %bb.ju
  %i.all = sub nuw i64 %i.akw, %i.alc             ; 2 uses
  %i.alm = icmp ugt i64 %i.all, 7
  br i1 %i.alm, label %bb.jw, label %.invoke.i, !prof !156

.invoke.i:                                        ; preds = %bb.ji, %bb.jd, %bb.jc, %bb.jg, %bb.jf, %bb.jv, %bb.ju, %bb.jt, %bb.js
  %i.aln = phi i64 [ %i.alc, %bb.ju ], [ 0, %bb.jg ], [ 0, %bb.jv ], [ %i.alc, %bb.js ], [ 0, %bb.jt ], [ %i.ahn, %bb.jf ], [ 0, %bb.jc ], [ %i.aka, %bb.ji ], [ 0, %bb.jd ]
  %i.alo = phi i64 [ %i.akw, %bb.ju ], [ 16, %bb.jg ], [ 8, %bb.jv ], [ %i.aku, %bb.js ], [ 8, %bb.jt ], [ %i.agr, %bb.jf ], [ 16, %bb.jc ], [ %i.aff, %bb.ji ], [ 16, %bb.jd ]
  %i.alp = phi i64 [ %i.akw, %bb.ju ], [ %i.ahp, %bb.jg ], [ %i.all, %bb.jv ], [ %i.aku, %bb.js ], [ %i.alg, %bb.jt ], [ %i.agr, %bb.jf ], [ %i.afo, %bb.jc ], [ %i.aff, %bb.ji ], [ %i.afq, %bb.jd ]
  %i.alq = phi ptr [ @118, %bb.ju ], [ @102, %bb.jg ], [ @117, %bb.jv ], [ @119, %bb.js ], [ @116, %bb.jt ], [ @103, %bb.jf ], [ @100, %bb.jc ], [ @104, %bb.ji ], [ @101, %bb.jd ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aln, i64 noundef %i.alo, i64 noundef %i.alp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alq) #26
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.jw:                                            ; preds = %bb.jv
  %i.alr = getelementptr inbounds nuw i8, ptr %i.akx, i64 %i.alc ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !777
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEBW_EINtB5_7ZipImplBW_BW_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.alh, ptr noundef nonnull %i.alj, ptr noundef nonnull %i.alr, ptr noundef nonnull %i.als)
          to label %.noexc259.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !681

.noexc259.i:                                      ; preds = %bb.jw
  %i.alt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ale ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !781
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMuthEB10_EINtB13_4IterhEEINtB5_7ZipImplBW_B1A_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull %i.alt, ptr noundef nonnull %i.alu)
          to label %.noexc260.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !681

.noexc260.i:                                      ; preds = %.noexc259.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !777
  %i.alv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ale ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.a, ptr noundef nonnull %i.alv, ptr noundef nonnull %i.alw)
          to label %.noexc261.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !681

.noexc261.i:                                      ; preds = %.noexc260.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !781
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8, !noalias !776 ; 7 uses
  %.sroa.0.0.copyload.i.i591 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !776 ; 7 uses
  %.sroa.41.0.copyload.i.i590 = ptrtoaddr ptr %.sroa.41.0.copyload.i.i to i64 ; 3 uses
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !776 ; 9 uses
  %.sroa.63.0.copyload.i.i = load ptr, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noalias !776 ; 7 uses
  %.sroa.63.0.copyload.i.i592 = ptrtoaddr ptr %.sroa.63.0.copyload.i.i to i64 ; 2 uses
  %.sroa.74.0.copyload.i.i = load i64, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !noalias !776 ; 7 uses
  %.sroa.85.0.copyload.i.i = load ptr, ptr %.sroa.85.0..sroa_idx.i.i, align 8, !noalias !776 ; 7 uses
  %.sroa.85.0.copyload.i.i594 = ptrtoaddr ptr %.sroa.85.0.copyload.i.i to i64 ; 2 uses
  %.sroa.96.0.copyload.i.i = load i64, ptr %.sroa.96.0..sroa_idx.i.i, align 8, !noalias !776 ; 8 uses
  %.sroa.11.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !776 ; 5 uses
  %i.alx = icmp ult i64 %.sroa.96.0.copyload.i.i, %.sroa.11.0.copyload.i.i
  br i1 %i.alx, label %iter.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i

iter.check:                                       ; preds = %.noexc261.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.85.0.copyload.i.i) ]
  %i.aly = sub nuw i64 %.sroa.11.0.copyload.i.i, %.sroa.96.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.aly, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.alz = sub i64 %.sroa.0.0.copyload.i.i591, %.sroa.41.0.copyload.i.i590
  %diff.check = icmp ugt i64 %i.alz, -16
  %i.ama = add i64 %.sroa.52.0.copyload.i.i, %.sroa.0.0.copyload.i.i591
  %i.amb = sub i64 %.sroa.63.0.copyload.i.i592, %i.ama
  %diff.check593 = icmp ugt i64 %i.amb, -16
  %conflict.rdx = or i1 %diff.check, %diff.check593
  %i.amc = add i64 %.sroa.74.0.copyload.i.i, %.sroa.52.0.copyload.i.i
  %i.amd = add i64 %i.amc, %.sroa.0.0.copyload.i.i591
  %i.ame = sub i64 %.sroa.85.0.copyload.i.i594, %i.amd
  %diff.check595 = icmp ugt i64 %i.ame, -16
  %conflict.rdx596 = or i1 %conflict.rdx, %diff.check595
  %i.amf = add i64 %.sroa.52.0.copyload.i.i, %.sroa.41.0.copyload.i.i590
  %i.amg = sub i64 %.sroa.63.0.copyload.i.i592, %i.amf
  %diff.check597 = icmp ugt i64 %i.amg, -16
  %conflict.rdx598 = or i1 %conflict.rdx596, %diff.check597
  %i.amh = add i64 %.sroa.74.0.copyload.i.i, %.sroa.52.0.copyload.i.i
  %i.ami = add i64 %i.amh, %.sroa.41.0.copyload.i.i590
  %i.amj = sub i64 %.sroa.85.0.copyload.i.i594, %i.ami
  %diff.check599 = icmp ugt i64 %i.amj, -16
  %conflict.rdx600 = or i1 %conflict.rdx598, %diff.check599
  br i1 %conflict.rdx600, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check601 = icmp ult i64 %i.aly, 16
  br i1 %min.iters.check601, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.amk = and i64 %i.aly, 12
  %n.vec = and i64 %i.aly, -16                    ; 4 uses
  %i.aml = add i64 %.sroa.96.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.amm = add nuw i64 %.sroa.96.0.copyload.i.i, %index ; 2 uses
  %i.amn = add i64 %i.amm, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amo = add i64 %i.amn, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amo
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.amm
  %i.amr = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.amn
  %i.ams = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amo
  %wide.load = load <16 x i8>, ptr %i.amr, align 1, !noalias !785
  %wide.load602 = load <16 x i8>, ptr %i.amq, align 1, !noalias !785
  store <16 x i8> %wide.load, ptr %i.amp, align 1, !noalias !785
  store <16 x i8> %wide.load602, ptr %i.ams, align 1, !noalias !785
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.amt = icmp eq i64 %index.next, %n.vec
  br i1 %i.amt, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aly, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.amk, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vec.epilog.ph, !prof !787

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec603 = and i64 %i.aly, -4                  ; 3 uses
  %i.amu = add i64 %.sroa.96.0.copyload.i.i, %n.vec603
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index604 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next607, %vec.epilog.vector.body ] ; 2 uses
  %i.amv = add nuw i64 %.sroa.96.0.copyload.i.i, %index604 ; 2 uses
  %i.amw = add i64 %i.amv, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.amx = add i64 %i.amw, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.amx
  %i.amz = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.amv
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.amw
  %i.anb = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.amx
  %wide.load605 = load <4 x i8>, ptr %i.ana, align 1, !noalias !785
  %wide.load606 = load <4 x i8>, ptr %i.amz, align 1, !noalias !785
  store <4 x i8> %wide.load605, ptr %i.amy, align 1, !noalias !785
  store <4 x i8> %wide.load606, ptr %i.anb, align 1, !noalias !785
  %index.next607 = add nuw i64 %index604, 4       ; 2 uses
  %i.anc = icmp eq i64 %index.next607, %n.vec603
  br i1 %i.anc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !788

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n608 = icmp eq i64 %i.aly, %n.vec603
  br i1 %cmp.n608, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.96.033.i.i.ph = phi i64 [ %.sroa.96.0.copyload.i.i, %iter.check ], [ %.sroa.96.0.copyload.i.i, %vector.memcheck ], [ %i.aml, %vec.epilog.iter.check ], [ %i.amu, %vec.epilog.middle.block ] ; 6 uses
  %i.and = sub i64 %.sroa.11.0.copyload.i.i, %.sroa.96.033.i.i.ph
  %.neg = add i64 %.sroa.96.033.i.i.ph, 1
  %xtraiter790 = and i64 %i.and, 1
  %lcmp.mod791.not = icmp eq i64 %xtraiter790, 0
  br i1 %lcmp.mod791.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.ane = add i64 %.sroa.96.033.i.i.ph, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.anf = add i64 %i.ane, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i.ph
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.ane
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.anf
  %i.ank = add nuw i64 %.sroa.96.033.i.i.ph, 1
  %i.anl = load i8, ptr %i.ani, align 1, !noalias !785, !noundef !5
  %i.anm = load i8, ptr %i.anh, align 1, !noalias !785, !noundef !5
  store i8 %i.anl, ptr %i.ang, align 1, !noalias !785
  store i8 %i.anm, ptr %i.anj, align 1, !noalias !785
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.96.033.i.i.unr = phi i64 [ %.sroa.96.033.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ank, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ann = icmp eq i64 %.sroa.11.0.copyload.i.i, %.neg
  br i1 %i.ann, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.96.033.i.i = phi i64 [ %i.aod, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.96.033.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.ano = add i64 %.sroa.96.033.i.i, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.anp = add i64 %i.ano, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.anp
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %.sroa.96.033.i.i
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.ano
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.anp
  %i.anu = add nuw i64 %.sroa.96.033.i.i, 1       ; 2 uses
  %i.anv = load i8, ptr %i.ans, align 1, !noalias !785, !noundef !5
  %i.anw = load i8, ptr %i.anr, align 1, !noalias !785, !noundef !5
  store i8 %i.anv, ptr %i.anq, align 1, !noalias !785
  store i8 %i.anw, ptr %i.ant, align 1, !noalias !785
  %i.anx = add i64 %i.anu, %.sroa.74.0.copyload.i.i ; 2 uses
  %i.any = add i64 %i.anx, %.sroa.52.0.copyload.i.i ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.85.0.copyload.i.i, i64 %i.anu
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.63.0.copyload.i.i, i64 %i.anx
  %i.aoc = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i.i, i64 %i.any
  %i.aod = add nuw i64 %.sroa.96.033.i.i, 2       ; 2 uses
  %i.aoe = load i8, ptr %i.aob, align 1, !noalias !785, !noundef !5
  %i.aof = load i8, ptr %i.aoa, align 1, !noalias !785, !noundef !5
  store i8 %i.aoe, ptr %i.anz, align 1, !noalias !785
  store i8 %i.aof, ptr %i.aoc, align 1, !noalias !785
  %exitcond.not.i234.i.1 = icmp eq i64 %i.aod, %.sroa.11.0.copyload.i.i
  br i1 %exitcond.not.i234.i.1, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !789

bb.jx:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter7IterMuthEB14_EINtB17_4IterhEEB1E_EINtB5_7ZipImplBW_B1E_E4nextCsa5QsYiPB8Gl_5image.exit.thread.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !713
  %i.aog = load i64, ptr %i.oa, align 8, !alias.scope !790, !noalias !793, !noundef !5 ; 3 uses
  %i.aoh = load i64, ptr %i.bm, align 8, !range !215, !alias.scope !790, !noalias !793, !noundef !5
  %i.aoi = icmp eq i64 %i.aog, %i.aoh
  br i1 %i.aoi, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %bb.jx
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp3vp810MacroBlockE8grow_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm) #30
          to label %bb.jz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !681

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %i.aoj = load ptr, ptr %i.ob, align 8, !alias.scope !790, !noalias !793, !nonnull !5, !noundef !5
  %i.aok = getelementptr inbounds nuw [30 x i8], ptr %i.aoj, i64 %i.aog
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aok, ptr noundef nonnull align 1 dereferenceable(30) %i.ax, i64 30, i1 false), !noalias !681
  %i.aol = add i64 %i.aog, 1
  store i64 %i.aol, ptr %i.oa, align 8, !alias.scope !790, !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !713
  %exitcond.not.i = icmp eq i64 %i.qr, %i.qj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.el

.invoke1668.i:                                    ; preds = %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jl, %bb.jk, %.lr.ph864.i
  %i.aom = phi i64 [ %i.qb, %.lr.ph864.i ], [ %.sroa.027.0857.i, %bb.jk ], [ %.sroa.027.0857.i, %bb.jl ], [ %.sroa.027.0857.i, %bb.ka ], [ %.sroa.027.0857.i, %bb.kb ], [ %.sroa.027.0857.i, %bb.kc ], [ %.sroa.027.0857.i, %bb.kd ], [ %.sroa.027.0857.i, %bb.ke ], [ %.sroa.027.0857.i, %bb.kf ], [ %.sroa.027.0857.i, %bb.kg ]
  %i.aon = phi i64 [ %i.qc, %.lr.ph864.i ], [ %i.apr, %bb.kf ], [ %i.apm, %bb.ke ], [ %i.aph, %bb.kd ], [ %i.apc, %bb.kc ], [ %i.aox, %bb.kb ], [ %i.aos, %bb.ka ], [ %i.ake, %bb.jl ], [ %i.akc, %bb.jk ], [ %i.apw, %bb.kg ]
  %i.aoo = phi ptr [ @77, %.lr.ph864.i ], [ @80, %bb.kf ], [ @80, %bb.ke ], [ @80, %bb.kd ], [ @80, %bb.kc ], [ @80, %bb.kb ], [ @80, %bb.ka ], [ @79, %bb.jl ], [ @80, %bb.jk ], [ @80, %bb.kg ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aom, i64 noundef %i.aon, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aoo) #28
          to label %.cont1669.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !681

.cont1669.i:                                      ; preds = %.invoke1668.i
  unreachable

bb.ka:                                            ; preds = %bb.jk
  %i.aop = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.aoq = getelementptr inbounds nuw [30 x i8], ptr %i.aop, i64 %.sroa.027.0857.i
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 21
  store i8 0, ptr %i.aor, align 1, !noalias !681
  store i8 0, ptr %i.om, align 4, !alias.scope !684, !noalias !681
  %i.aos = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.aot = icmp ult i64 %.sroa.027.0857.i, %i.aos
  br i1 %i.aot, label %bb.kb, label %.invoke1668.i

bb.kb:                                            ; preds = %bb.ka
  %i.aou = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.aov = getelementptr inbounds nuw [30 x i8], ptr %i.aou, i64 %.sroa.027.0857.i
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 22
  store i8 0, ptr %i.aow, align 1, !noalias !681
  store i8 0, ptr %i.on, align 1, !alias.scope !684, !noalias !681
  %i.aox = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.aoy = icmp ult i64 %.sroa.027.0857.i, %i.aox
  br i1 %i.aoy, label %bb.kc, label %.invoke1668.i

bb.kc:                                            ; preds = %bb.kb
  %i.aoz = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.apa = getelementptr inbounds nuw [30 x i8], ptr %i.aoz, i64 %.sroa.027.0857.i
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 23
  store i8 0, ptr %i.apb, align 1, !noalias !681
  store i8 0, ptr %i.oo, align 2, !alias.scope !684, !noalias !681
  %i.apc = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.apd = icmp ult i64 %.sroa.027.0857.i, %i.apc
  br i1 %i.apd, label %bb.kd, label %.invoke1668.i

bb.kd:                                            ; preds = %bb.kc
  %i.ape = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.apf = getelementptr inbounds nuw [30 x i8], ptr %i.ape, i64 %.sroa.027.0857.i
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 24
  store i8 0, ptr %i.apg, align 1, !noalias !681
  store i8 0, ptr %i.op, align 1, !alias.scope !684, !noalias !681
  %i.aph = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.api = icmp ult i64 %.sroa.027.0857.i, %i.aph
  br i1 %i.api, label %bb.ke, label %.invoke1668.i

bb.ke:                                            ; preds = %bb.kd
  %i.apj = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.apk = getelementptr inbounds nuw [30 x i8], ptr %i.apj, i64 %.sroa.027.0857.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 25
  store i8 0, ptr %i.apl, align 1, !noalias !681
  store i8 0, ptr %i.oq, align 8, !alias.scope !684, !noalias !681
  %i.apm = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.apn = icmp ult i64 %.sroa.027.0857.i, %i.apm
  br i1 %i.apn, label %bb.kf, label %.invoke1668.i

bb.kf:                                            ; preds = %bb.ke
  %i.apo = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.app = getelementptr inbounds nuw [30 x i8], ptr %i.apo, i64 %.sroa.027.0857.i
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 26
  store i8 0, ptr %i.apq, align 1, !noalias !681
  store i8 0, ptr %i.or, align 1, !alias.scope !684, !noalias !681
  %i.apr = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.aps = icmp ult i64 %.sroa.027.0857.i, %i.apr
  br i1 %i.aps, label %bb.kg, label %.invoke1668.i

bb.kg:                                            ; preds = %bb.kf
  %i.apt = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.apu = getelementptr inbounds nuw [30 x i8], ptr %i.apt, i64 %.sroa.027.0857.i
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 27
  store i8 0, ptr %i.apv, align 1, !noalias !681
  store i8 0, ptr %i.os, align 2, !alias.scope !684, !noalias !681
  %i.apw = load i64, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !noundef !5 ; 2 uses
  %i.apx = icmp ult i64 %.sroa.027.0857.i, %i.apw
  br i1 %i.apx, label %bb.kh, label %.invoke1668.i

bb.kh:                                            ; preds = %bb.kg
  %i.apy = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !684, !noalias !681, !nonnull !5, !noundef !5
  %i.apz = getelementptr inbounds nuw [30 x i8], ptr %i.apy, i64 %.sroa.027.0857.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 28
  store i8 0, ptr %i.aqa, align 1, !noalias !681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %i.aw, i8 0, i64 1536, i1 false), !noalias !713
  br label %bb.iw

bb.ki:                                            ; preds = %bb.jj, %bb.df
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsksn9slvsHfS_10image_webp3vp810Vp8DecoderINtNtNtB4_2io4util4TakeQINtNtB1r_6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %i.bm), !noalias !681
  br label %_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE13decode_frame_Csa5QsYiPB8Gl_5image.exit

_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE13decode_frame_Csa5QsYiPB8Gl_5image.exit: ; preds = %bb.ec, %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsksn9slvsHfS_10image_webp3vp8INtB5_10Vp8DecoderINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtBY_6cursor6CursorRShEEE15init_partitionsCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(896) %1, i64 noundef range(i64 1, -9223372036854775807) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = icmp ugt i64 %2, 1
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.r = invoke { i64, ptr } @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io4util4TakeQINtNtB7_6cursor6CursorRShEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read11read_to_endCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.n unwind label %bb.m       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
end_hunk_2

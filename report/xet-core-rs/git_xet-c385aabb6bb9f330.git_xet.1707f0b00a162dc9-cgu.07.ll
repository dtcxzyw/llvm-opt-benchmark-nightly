Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet-c385aabb6bb9f330.git_xet.1707f0b00a162dc9-cgu.07?download=true
inline.NumInlined: 327
inline.NumDeleted: 156
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsbc8Eb5TzBdy_3url3UrlEECs1YANDSn9Kib_7git_xet:bb.a
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !119 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !120, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !121
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !119 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !120, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !122
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !133 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !134, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !135
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i

bb.e:                                             ; preds = %bb.b
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !133 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.g, align 8, !alias.scope !134, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !136
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageECs1YANDSn9Kib_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.sink.split.i, %bb.h, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !153 ; 2 uses
  %i.f = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.f, label %common.resume.i, label %common.resume.sink.split.i

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !153 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageECs1YANDSn9Kib_7git_xet.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.g, %bb.d
  %.val2.i.i.i.sink.i = phi i64 [ %.val2.i.i.i.i, %bb.g ], [ %.val2.i.i.i, %bb.d ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.e, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !154, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !7
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %common.resume.sink.split.i, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.i, %bb.g ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !155 ; 2 uses
  %i.j = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.j, label %common.resume.i, label %common.resume.sink.split.i

bb.h:                                             ; preds = %bb.f
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !155 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageECs1YANDSn9Kib_7git_xet.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.sink.split.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.sink.split.i: ; preds = %bb.h, %bb.e
  %.val.i.i.i.sink.i = phi i64 [ %.val.i.i.i, %bb.e ], [ %.val.i.i.i.i, %bb.h ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !154, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !7
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error7MessageECs1YANDSn9Kib_7git_xet.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !7
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyECs1YANDSn9Kib_7git_xet.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.f, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !167, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !170, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !170, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !170, !noundef !7
  tail call void %i.f(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.i, i64 noundef %i.k), !inline_history !164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !167 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.m, align 8, !alias.scope !167, !nonnull !7, !align !14, !noundef !7 ; 5 uses
  %i.n = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7, !noalias !167 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.n(ptr noundef nonnull %.val.i.i)
          to label %bb.f unwind label %bb.g, !noalias !167

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !7, !noalias !167 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyECs1YANDSn9Kib_7git_xet.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !10, !invariant.load !7, !noalias !167
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #22, !noalias !167
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyECs1YANDSn9Kib_7git_xet.exit

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !7, !noalias !167 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtCs73UZPzK6E9E_9http_body4Bodyp5ErrorIBy_DNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB1t_6marker4SendNtB20_4SyncEL_Ep4DataNtNtCslc8SwK8fohf_5bytes5bytes5BytesB1Y_B2i_EL_ENtNtNtB1t_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !10, !invariant.load !7, !noalias !167
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #22, !noalias !167
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtCs73UZPzK6E9E_9http_body4Bodyp5ErrorIBy_DNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB1t_6marker4SendNtB20_4SyncEL_Ep4DataNtNtCslc8SwK8fohf_5bytes5bytes5BytesB1Y_B2i_EL_ENtNtNtB1t_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5.i.i.i.i.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtCs73UZPzK6E9E_9http_body4Bodyp5ErrorIBy_DNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB1t_6marker4SendNtB20_4SyncEL_Ep4DataNtNtCslc8SwK8fohf_5bytes5bytes5BytesB1Y_B2i_EL_ENtNtNtB1t_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5.i.i.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.g
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestNtNtB13_5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.c = load i8, ptr %i.b, align 8, !range !202, !alias.scope !203, !noundef !7
  %switch.i.i.i = icmp samesign ult i8 %i.c, 10
  br i1 %switch.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !203, !noundef !7 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !203, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #22, !noalias !203
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !204 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.i, label %.body.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !205, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !206
  br label %.body.i

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http6method6MethodECs1YANDSn9Kib_7git_xet.exit.i
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !204 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !205, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !207
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit.i

.body.i:                                          ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(96) %i.m) #23
          to label %bb.h unwind label %bb.t

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(96) %i.n)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.i, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.h, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) #23
          to label %.body9.i unwind label %bb.t

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsbc8Eb5TzBdy_3url3UrlECs1YANDSn9Kib_7git_xet.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.p = load i64, ptr %0, align 8, !range !13, !alias.scope !209, !noundef !7
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !212, !noundef !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !215, !nonnull !7, !noundef !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !216, !noundef !7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !216, !noundef !7
  invoke void %i.u(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.x, i64 noundef %i.z)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.q, !inline_history !217

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i7.i = load ptr, ptr %i.aa, align 8, !alias.scope !212 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i8.i = load ptr, ptr %i.ab, align 8, !alias.scope !212, !nonnull !7, !align !14, !noundef !7 ; 5 uses
  %i.ac = load ptr, ptr %.val1.i.i.i8.i, align 8, !invariant.load !7, !noalias !218 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i7.i) ]
  invoke void %i.ac(ptr noundef nonnull %.val.i.i.i7.i)
          to label %bb.o unwind label %bb.p, !noalias !218

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !9, !invariant.load !7, !noalias !218 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i7.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !10, !invariant.load !7, !noalias !218
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) %i.ah) #22, !noalias !218
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !9, !invariant.load !7, !noalias !218 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body9.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i.i.i8.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !10, !invariant.load !7, !noalias !218
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i7.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.an) #22, !noalias !218
  br label %.body9.i

.body9.i:                                         ; preds = %bb.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.p, %bb.h
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.h ], [ %i.ap, %bb.q ], [ %i.ai, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i ], [ %i.ai, %bb.p ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val6.i = load ptr, ptr %i.ao, align 8, !alias.scope !199, !align !14, !noundef !7
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http10extensions10ExtensionsECs1YANDSn9Kib_7git_xet(ptr %.val6.i) #23
          to label %common.resume.i unwind label %bb.t

bb.q:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.o, %bb.l, %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !199, !align !14, !noundef !7 ; 4 uses
  %i.ar = icmp eq ptr %.val.i, null
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestECs1YANDSn9Kib_7git_xet.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCsdCDTHl3mYPb_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCsdCDTHl3mYPb_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs1YANDSn9Kib_7git_xet.exit.i.i.i unwind label %bb.s

common.resume.i:                                  ; preds = %bb.s, %.body9.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.as, %bb.s ], [ %.pn4.i, %.body9.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.s:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #22
  br label %common.resume.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCsdCDTHl3mYPb_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs1YANDSn9Kib_7git_xet.exit.i.i.i: ; preds = %bb.r
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 32, i64 noundef 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestECs1YANDSn9Kib_7git_xet.exit

bb.t:                                             ; preds = %.body9.i, %bb.h, %.body.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.u:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.au, align 8, !nonnull !7, !noundef !7
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfaKIfeYzQZw_7reqwest5error5ErrorECs1YANDSn9Kib_7git_xet(ptr nonnull %.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestECs1YANDSn9Kib_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBC_DNtNtCsdCDTHl3mYPb_4http10extensions8AnyCloneNtNtB4_6marker4SendNtB3b_4SyncEL_EINtNtB4_4hash18BuildHasherDefaultNtB2t_8IdHasherEEEECs1YANDSn9Kib_7git_xet.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl4body4BodyEECs1YANDSn9Kib_7git_xet.exit.i, %bb.u
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1d_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map10ExtraValueNtNtB1k_5value11HeaderValueEEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !225 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = mul nuw i64 %.val2, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !226
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !225 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = mul nuw i64 %.val, 24
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !227
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = shl nuw i64 %.val2, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7
  %i.g = shl nuw i64 %.val, 5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtCsf1bHqHEg0eP_12clap_builder5error7context12ContextValueEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !alias.scope !234 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !235
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !alias.scope !234 ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !236
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh19SSHCredentialHelperEEB1k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !263 ; 2 uses
  %i.c = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.c, label %.body.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !264, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !265
  br label %.body.i.i

bb.d:                                             ; preds = %bb.a
  %.val.i.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !263 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !264, !nonnull !7, !noundef !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !266
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i

.body.i.i:                                        ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3syPzKb7XLA_13git_url_parse6GitUrlECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(200) %i.g) #23
          to label %.body.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %bb.e, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3syPzKb7XLA_13git_url_parse6GitUrlECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(200) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit.i unwind label %bb.g

bb.f:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.g, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.b, %.body.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !270, !nonnull !7, !noundef !7
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !271
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet8git_repo7GitRepoEBF_.exit.i

bb.h:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryEE9drop_slowCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet8git_repo7GitRepoEBF_.exit.i unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !275, !nonnull !7, !noundef !7
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !276
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh19SSHCredentialHelperEBH_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit.i
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtCsg0kSldJeyDi_4git24repo10RepositoryEE9drop_slowCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh19SSHCredentialHelperEBH_.exit

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet8git_repo7GitRepoEBF_.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh19SSHCredentialHelperEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs1YANDSn9Kib_7git_xet(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !9, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !10, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.f) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !9, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !10, !invariant.load !7
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtBG_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EEECs1YANDSn9Kib_7git_xet(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.0.09.i = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !289, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !290
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %.loopexit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !293, !nonnull !7, !noundef !7
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !294
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit.i
  %i.q = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5: ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4
  ret void

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EECs1YANDSn9Kib_7git_xet.exit8.i, %bb.c
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.r, i64 noundef 8) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtBG_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EEECs1YANDSn9Kib_7git_xet(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i
  %.sroa.0.09.i = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !307, !nonnull !7, !noundef !7
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !308
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.8.val
  br i1 %i.i, label %.loopexit, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !311, !nonnull !7, !noundef !7
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !312
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.o = icmp eq i64 %i.k, %.8.val
  br i1 %i.o, label %.loopexit, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit.i
  %i.q = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.q, i64 noundef 8) #22
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtB7_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet.exit5: ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4
  ret void

.loopexit:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EECs1YANDSn9Kib_7git_xet.exit8.i, %bb.c
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.r, i64 noundef 8) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !340, !noundef !7 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !noalias !345, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !345, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !345, !noundef !7
  invoke void %i.e(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
end_hunk_0
begin_hunk_1_@_RNCNvXs_NtNtCs1YANDSn9Kib_7git_xet4auth3sshNtB6_19SSHCredentialHelperNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelper15fill_credential0Ba_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  call void @llvm.experimental.noalias.scope.decl(metadata !1060)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !1061, !nonnull !7, !noundef !7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.kf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !alias.scope !1062, !noalias !994, !noundef !7
  %i.kh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ki = load i64, ptr %i.kh, align 8, !alias.scope !1062, !noalias !994, !noundef !7
  invoke void %i.kd(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ke, ptr noundef %i.kg, i64 noundef %i.ki)
          to label %.thread100.i.i unwind label %bb.dc, !noalias !977, !inline_history !0

_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread78.i.i: ; preds = %bb.cy, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !996
  br label %.thread48.i.i

_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.i.i: ; preds = %.noexc28.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !996
  br label %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread.i.i

_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread.i.i: ; preds = %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.i.i, %bb.da, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i, %.noexc25.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc30.i.i unwind label %.thread70.i.i, !noalias !977

.noexc30.i.i:                                     ; preds = %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread.i.i
  unreachable

.thread48.i.i:                                    ; preds = %_RINvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit.thread78.i.i, %bb.cu, %_RINvNtNtCsdCDTHl3mYPb_4http6header3map12append_valueNtNtB4_5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit.i.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !978
  %.sroa.053.0.copyload.pre = load i64, ptr %i.n, align 8, !alias.scope !1063, !noalias !1064
  br label %.thread81.i.i

bb.de:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !978
  store i16 0, ptr %i.i, align 8, !noalias !978
  %i.kj = invoke noundef nonnull align 8 ptr @_RINvMNtCsfaKIfeYzQZw_7reqwest5errorNtB3_5Error3newNtNtCsdCDTHl3mYPb_4http5error5ErrorECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.i, i8 noundef 5, i8 undef)
          to label %bb.df unwind label %bb.dh, !noalias !977 ; 3 uses

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !978
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.kk = load ptr, ptr %i.m, align 8, !alias.scope !1067, !noalias !978, !noundef !7 ; 2 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.kn = load ptr, ptr %i.km, align 8, !noalias !1072, !nonnull !7, !noundef !7
  %i.ko = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.kp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !alias.scope !1073, !noalias !978, !noundef !7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ks = load i64, ptr %i.kr, align 8, !alias.scope !1073, !noalias !978, !noundef !7
  invoke void %i.kn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ko, ptr noundef %i.kq, i64 noundef %i.ks)
          to label %bb.dk unwind label %.thread67.i.i, !noalias !977, !inline_history !0

bb.dh:                                            ; preds = %bb.de, %.noexc.i.i, %bb.bq
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.kt = load ptr, ptr %i.m, align 8, !alias.scope !1076, !noalias !978, !noundef !7 ; 2 uses
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %.thread100.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !1081, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ky = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !alias.scope !1082, !noalias !978, !noundef !7
  %i.la = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.lb = load i64, ptr %i.la, align 8, !alias.scope !1082, !noalias !978, !noundef !7
  invoke void %i.kw(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kx, ptr noundef %i.kz, i64 noundef %i.lb)
          to label %.thread100.i.i unwind label %bb.dj, !noalias !977, !inline_history !0

bb.dj:                                            ; preds = %.noexc41.i.i, %bb.dr, %bb.di, %.thread67.i.i
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1083
  unreachable

bb.dk:                                            ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !978
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestNtNtB13_5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.n)
          to label %bb.dl unwind label %.thread51.i.i, !noalias !977

.thread81.i.i:                                    ; preds = %bb.dl, %.thread48.i.i
  %.sroa.053.0.copyload = phi i64 [ 2, %bb.dl ], [ %.sroa.053.0.copyload.pre, %.thread48.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.sroa.6.0..sroa_idx58, i64 40, i1 false), !alias.scope !1063, !noalias !1064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.656, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.048.sroa.7.0..sroa_idx59, i64 224, i1 false), !alias.scope !1063, !noalias !1064
  br label %bb.dv

.thread51.i.i:                                    ; preds = %bb.dk
  %i.ld = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.n, align 8, !alias.scope !975, !noalias !977
  store ptr %i.kj, ptr %.sroa.048.sroa.6.0..sroa_idx58, align 8, !alias.scope !975, !noalias !977
  br label %.thread100.i.i

bb.dl:                                            ; preds = %bb.dk
  store i64 2, ptr %i.n, align 8, !alias.scope !975, !noalias !977
  store ptr %i.kj, ptr %.sroa.048.sroa.6.0..sroa_idx58, align 8, !alias.scope !975, !noalias !977
  br label %.thread81.i.i

bb.dm:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.555, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.048.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.656, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.048.sroa.7.0..sroa_idx, i64 224, i1 false)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.dp unwind label %bb.dn, !noalias !981

bb.dn:                                            ; preds = %bb.dm
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1084, !noalias !1085 ; 2 uses
  %i.lf = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.lf, label %.body.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.lg, align 8, !alias.scope !1086, !noalias !1085, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1087
  br label %.body.i

bb.dp:                                            ; preds = %bb.dm
  %.val.i.i.i.i = load i64, ptr %i.ag, align 8, !alias.scope !1084, !noalias !1085 ; 2 uses
  %i.lh = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.lh, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.li = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !1086, !noalias !1085, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1088
  br label %bb.dv

.thread100.i.i:                                   ; preds = %.thread51.i.i, %bb.di, %bb.dh, %bb.dd, %.body.thread.thread.i.i.i, %.thread70.i.i, %.thread67.i.i
  %.pn20104.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %.thread70.i.i ], [ %i.ld, %.thread51.i.i ], [ %i.dk, %.thread67.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.dh ], [ %lpad.thr_comm.split-lp.i.i, %bb.di ], [ %.pn50.i.i.i, %.body.thread.thread.i.i.i ], [ %.pn50.i.i.i, %bb.dd ]
  %i.lj = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  %i.lk = load ptr, ptr %i.lj, align 8, !alias.scope !1092, !noalias !977, !nonnull !7, !noundef !7
  %i.ll = atomicrmw sub ptr %i.lk, i64 1 release, align 8, !noalias !1093
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %bb.dr, label %.noexc41.i.i

bb.dr:                                            ; preds = %.thread100.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lj) #26
          to label %.noexc41.i.i unwind label %bb.dj, !noalias !977

.noexc41.i.i:                                     ; preds = %bb.dr, %.thread100.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsfaKIfeYzQZw_7reqwest10async_impl7request7RequestNtNtB13_5error5ErrorEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.n) #23
          to label %.body.i unwind label %bb.dj, !noalias !977

.body.i:                                          ; preds = %bb.dn, %bb.do, %.noexc41.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn20104.i.i, %.noexc41.i.i ], [ %i.le, %bb.do ], [ %i.le, %bb.dn ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.649.0.copyload) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtBG_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware10middleware10MiddlewareEL_EEECs1YANDSn9Kib_7git_xet(ptr nonnull %.sroa.649.0.copyload, i64 %.sroa.850.0.copyload) #23
          to label %bb.dt unwind label %bb.ds, !noalias !1094

bb.ds:                                            ; preds = %bb.du, %bb.dt, %.body.i
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1094
  unreachable

bb.dt:                                            ; preds = %.body.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.copyload) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtBG_4sync3ArcDNtNtCs4Sxm5svDswZ_18reqwest_middleware8req_init18RequestInitialiserEL_EEECs1YANDSn9Kib_7git_xet(ptr nonnull %.sroa.1051.0.copyload, i64 %.sroa.1252.0.copyload) #23
          to label %bb.du unwind label %bb.ds, !noalias !1094

bb.du:                                            ; preds = %bb.dt
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsdCDTHl3mYPb_4http10extensions10ExtensionsECs1YANDSn9Kib_7git_xet(ptr %.sroa.14.0.copyload) #23
          to label %.body14 unwind label %bb.ds, !noalias !1094

.body14:                                          ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %i.lo) #23
          to label %.body20 unwind label %bb.ea

bb.dv:                                            ; preds = %bb.dp, %bb.dq, %.thread81.i.i
  %.sroa.053.0 = phi i64 [ %.sroa.053.0.copyload, %.thread81.i.i ], [ 2, %bb.dq ], [ 2, %bb.dp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.649.0.copyload), "nonnull"(ptr %.sroa.1051.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.555, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.sroa.0, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.656, i64 224, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.555)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lp)
          to label %bb.dy unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i16 = load i64, ptr %i.lp, align 8, !alias.scope !1095 ; 2 uses
  %i.lr = icmp eq i64 %.val2.i.i16, 0
  br i1 %i.lr, label %.body20, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.val3.i.i17 = load ptr, ptr %i.ls, align 8, !alias.scope !1096, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i17, i64 noundef %.val2.i.i16, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1097
  br label %.body20

bb.dy:                                            ; preds = %bb.dv
  %.val.i.i18 = load i64, ptr %i.lp, align 8, !alias.scope !1095 ; 2 uses
  %i.lt = icmp eq i64 %.val.i.i18, 0
  br i1 %i.lt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %.val1.i.i19 = load ptr, ptr %i.lu, align 8, !alias.scope !1096, !nonnull !7, !noundef !7
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i19, i64 noundef %.val.i.i18, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1098
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit

.body20:                                          ; preds = %bb.dx, %bb.dw, %.body14, %bb.bm
  %.pn4.pn = phi { ptr, i32 } [ %.pn2, %bb.bm ], [ %eh.lpad-body.i, %.body14 ], [ %i.lq, %bb.dw ], [ %i.lq, %bb.dx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 650
  %i.lw = load i8, ptr %i.lv, align 2, !range !19, !noundef !7
  %i.lx = trunc nuw i8 %i.lw to i1
  br i1 %i.lx, label %bb.ei, label %bb.ec

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  store i8 0, ptr %i.dh, align 2
  br label %common.ret

bb.ea:                                            ; preds = %bb.ej, %bb.ei, %.body14
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.eb:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit.thread, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultNtNtNtCs1YANDSn9Kib_7git_xet4auth3ssh26GitLFSAuthenticateResponseNtNtBO_6errors11GitXetErrorE7map_errNtNtCsiAynQAjgDuT_10xet_client5error11ClientErrorINvMs0_B2n_B2l_23credential_helper_errorB1L_EEBO_.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(40) %i.lz, i64 40, i1 false), !alias.scope !970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware6client14RequestBuilderECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(312) %i.ma)
          to label %bb.ee unwind label %bb.ed

bb.ec:                                            ; preds = %bb.ei, %bb.ed, %.body20
  %.pn7 = phi { ptr, i32 } [ %i.mf, %bb.ed ], [ %.pn4.pn, %bb.ei ], [ %.pn4.pn, %.body20 ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.mb, align 2
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.md = load i8, ptr %i.mc, align 1, !range !19, !noundef !7
  %i.me = trunc nuw i8 %i.md to i1
  br i1 %i.me, label %bb.ej, label %bb.eg

bb.ed:                                            ; preds = %bb.eb
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ee:                                            ; preds = %bb.eb
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 650
  store i8 0, ptr %i.mg, align 2
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 649
  %i.mi = load i8, ptr %i.mh, align 1, !range !19, !noundef !7
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ef, label %common.ret

bb.ef:                                            ; preds = %bb.ee
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware6client14RequestBuilderECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(312) %1)
          to label %common.ret unwind label %bb.eh

bb.eg:                                            ; preds = %bb.ej, %bb.eh, %bb.ec
  %.pn9 = phi { ptr, i32 } [ %i.mk, %bb.eh ], [ %.pn7, %bb.ej ], [ %.pn7, %bb.ec ]
  store i8 2, ptr %i.aj, align 8
  resume { ptr, i32 } %.pn9

bb.eh:                                            ; preds = %bb.ef
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.ei:                                            ; preds = %.body20
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware6client14RequestBuilderECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(312) %i.ml) #23
          to label %bb.ec unwind label %bb.ea

bb.ej:                                            ; preds = %bb.ec
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4Sxm5svDswZ_18reqwest_middleware6client14RequestBuilderECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(312) %1) #23
          to label %bb.eg unwind label %bb.ea

infloop:                                          ; preds = %.outer130, %infloop
  br label %infloop

infloop158:                                       ; preds = %.outer, %infloop158
  br label %infloop158
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error12invalid_utf8Cs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 46 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 -1, ptr %i.f, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i8 -1, ptr %.sroa.030.sroa.5.0..sroa_idx, align 4
  %.sroa.030.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i8 -1, ptr %.sroa.030.sroa.7.0..sroa_idx, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  store i16 0, ptr %.sroa.431.0..sroa_idx, align 4
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  store i8 -1, ptr %.sroa.532.0..sroa_idx, align 2
  %.sroa.532.sroa.5.0..sroa.532.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  store i8 -1, ptr %.sroa.532.sroa.5.0..sroa.532.0..sroa_idx.sroa_idx, align 2
  %.sroa.532.sroa.7.0..sroa.532.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  store i8 -1, ptr %.sroa.532.sroa.7.0..sroa.532.0..sroa_idx.sroa_idx, align 2
  %.sroa.6.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i16 0, ptr %.sroa.6.0..sroa_idx33, align 2
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  store i8 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i8 -1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i8 -1, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  store i8 -1, ptr %.sroa.9.0..sroa_idx, align 2
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  store i8 -1, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  store i8 -1, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 2
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  store i16 0, ptr %.sroa.10.0..sroa_idx, align 2
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 -1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i8 -1, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 4
  %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i8 -1, ptr %.sroa.11.sroa.7.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.1334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  store i8 -1, ptr %.sroa.1334.0..sroa_idx, align 2
  %.sroa.1334.sroa.5.0..sroa.1334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  store i8 -1, ptr %.sroa.1334.sroa.5.0..sroa.1334.0..sroa_idx.sroa_idx, align 2
  %.sroa.1334.sroa.7.0..sroa.1334.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  store i8 -1, ptr %.sroa.1334.sroa.7.0..sroa.1334.0..sroa_idx.sroa_idx, align 2
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i16 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  store i8 -1, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i8 -1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  store i8 -1, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i16 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  store i8 -1, ptr %.sroa.17.0..sroa_idx, align 2
  %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  store i8 -1, ptr %.sroa.17.sroa.5.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store i8 -1, ptr %.sroa.17.sroa.7.0..sroa.17.0..sroa_idx.sroa_idx, align 2
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  store i16 0, ptr %.sroa.18.0..sroa_idx, align 2
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i8 -2, ptr %.sroa.19.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvMNtNtCs1YANDSn9Kib_7git_xet4auth3sshNtB2_19SSHCredentialHelper3new:bb.a
bb.ap:                                            ; preds = %_RNvXs1_NtCs1YANDSn9Kib_7git_xet7git_urlNtB5_6GitUrlNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtNtCsdCDTHl3mYPb_4http6header3mapNtB5_9HeaderMap16try_insert_entryCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 5 uses
  %i.d = icmp ult i64 %i.c, 88686269585142076
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 32767        ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %1, ptr %i.i, align 8
  store i64 0, ptr %i.a, align 8
  %i.j = load i64, ptr %i.f, align 8, !range !9, !alias.scope !1188, !noalias !1189, !noundef !7
  %i.k = icmp eq i64 %i.c, %i.j
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs9ekcjykjQb7_5hyper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.d, !noalias !1189

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsdCDTHl3mYPb_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a) #23
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !1193, !nonnull !7, !align !14, !noundef !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1193, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1193, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !1193, !noundef !7
  invoke void %i.p(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit unwind label %bb.i, !inline_history !1

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1188, !noalias !1189, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.y = add nuw nsw i64 %i.c, 1
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !1188, !noalias !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit, %bb.g
  ret i1 %i.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit: ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  %i.z = load ptr, ptr %2, align 8, !alias.scope !1196, !noundef !7 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header5value11HeaderValueECs1YANDSn9Kib_7git_xet.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !1201, !nonnull !7, !noundef !7
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1201, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1201, !noundef !7
  tail call void %i.ac(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah), !inline_history !1175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsdCDTHl3mYPb_4http6header4name10HeaderNameECs1YANDSn9Kib_7git_xet.exit

.body:                                            ; preds = %bb.i, %bb.j, %bb.d
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body7

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !1204, !noundef !7 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1209, !nonnull !7, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1209, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !1209, !noundef !7
  invoke void %i.am(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %.body unwind label %bb.k, !inline_history !0

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !1214 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1216
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1216
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1216
  %i.i = load i64, ptr %i.a, align 8, !range !13, !noalias !1216, !noundef !7
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1YANDSn9Kib_7git_xet.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !17, !noalias !1216, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !1216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  br label %bb.f

_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1YANDSn9Kib_7git_xet.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !1216, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1216
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !1216
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !1216
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.e
  %.sroa.3.0.i.ph = phi i64 [ %i.n, %bb.e ], [ undef, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i.ph = phi i64 [ %i.l, %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #25
  unreachable

bb.g:                                             ; preds = %_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs1YANDSn9Kib_7git_xet.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs1YANDSn9Kib_7git_xet(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %4 = mul nuw i64 %.val, %3                      ; 3 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  %i.e = inttoptr i64 %2 to ptr
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %1                       ; 3 uses
  %i.g = icmp ule i64 %i.f, %4
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.f) #22 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit
  store ptr %i.h, ptr %i.a, align 8
  %i.j = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.k = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, i64 } %i.k, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #22
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1YANDSn9Kib_7git_xet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs1YANDSn9Kib_7git_xet15token_refresher23new_git_token_refresher(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(224) %3, ptr noalias nofree noundef nonnull readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %7, i64 noundef %8, ptr noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.519 = alloca [40 x i8], align 8          ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 11 uses
  %i.f = alloca [224 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.g = alloca [224 x i8], align 8               ; 31 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %9, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = load i64, ptr %3, align 8, !range !12, !noundef !7
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef nonnull align 8 dereferenceable(224) %3, i64 224, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs1YANDSn9Kib_7git_xet8git_repoNtB2_7GitRepo10remote_url(ptr noalias nofree noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.e unwind label %.body.thread95

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelperEL_EECs1YANDSn9Kib_7git_xet.exit74
  br i1 %.sroa.020.2, label %.body.thread91, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapEEECs1YANDSn9Kib_7git_xet.exit76

.body.thread95:                                   ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread91

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.f, align 8, !range !12, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit

bb.g:                                             ; preds = %bb.e
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.526.0..sroa_idx, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.j, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCs1YANDSn9Kib_7git_xet4auth14get_credential(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.g, i1 noundef zeroext %6)
          to label %bb.l unwind label %bb.k

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs1YANDSn9Kib_7git_xet.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !1278, !noundef !7 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapEEECs1YANDSn9Kib_7git_xet.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1YANDSn9Kib_7git_xet7git_url6GitUrlEBF_.exit
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1279
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapEEECs1YANDSn9Kib_7git_xet.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapE9drop_slowCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsdCDTHl3mYPb_4http6header3map9HeaderMapEEECs1YANDSn9Kib_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtNtCsiAynQAjgDuT_10xet_client6common4auth9interface16CredentialHelperEL_EECs1YANDSn9Kib_7git_xet.exit74: ; preds = %bb.aw, %bb.ax, %bb.k
  %.sroa.020.2 = phi i1 [ %.sroa.020.3, %bb.k ], [ false, %bb.ax ], [ false, %bb.aw ]
  %.pn48 = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn46, %bb.ax ], [ %.pn46, %bb.aw ] ; 2 uses
end_hunk_2

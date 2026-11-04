Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_heif?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@dt_imageio_open_heif:bb.a
  %.not156 = icmp eq ptr %i.el, null
  br i1 %.not156, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.eo = call { i64, ptr } @heif_image_handle_get_raw_color_profile(ptr noundef %i.en, ptr noundef nonnull %i.el) #5
  %i.ep = extractvalue { i64, ptr } %i.eo, 0
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = trunc i64 %i.dv to i32
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store i32 %i.es, ptr %i.et, align 16, !tbaa !92
  br label %bb.an

bb.an:                                            ; preds = %bb.ak, %bb.am, %bb.al, %._crit_edge166.split
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 13, ptr %i.eu, align 8, !tbaa !93
  br label %bb.ao

bb.ao:                                            ; preds = %dt_image_transformation_to_flip_bits.exit, %bb.g, %bb.h, %bb.e, %bb.f, %bb.an, %bb.ag, %bb.ae, %bb.l, %bb.j
  %.0133 = phi i32 [ 5, %bb.e ], [ 3, %bb.g ], [ 2, %bb.f ], [ 6, %bb.j ], [ 5, %bb.l ], [ 6, %bb.ae ], [ 8, %bb.ag ], [ 0, %bb.an ], [ 3, %bb.h ], [ 2, %dt_image_transformation_to_flip_bits.exit ]
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !65
  call void @heif_image_release(ptr noundef %i.ev) #5
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !13
  call void @heif_image_handle_release(ptr noundef %i.ew) #5
  call void @heif_context_free(ptr noundef nonnull %i.g) #5
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.b
  %.0 = phi i32 [ %.0133, %bb.ao ], [ 8, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @heif_context_alloc() local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #2

declare { i64, ptr } @heif_context_read_from_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @heif_context_get_number_of_top_level_images(ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @heif_context_get_primary_image_handle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @heif_image_handle_get_list_of_metadata_block_IDs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @heif_image_handle_get_metadata_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #3

declare { i64, ptr } @heif_image_handle_get_metadata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_exif_read_from_blob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @heif_context_get_primary_image_ID(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @heif_item_get_transformation_properties(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @heif_item_get_property_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @heif_item_get_property_transform_rotation_ccw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @heif_item_get_property_transform_mirror(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @heif_decoding_options_alloc() local_unnamed_addr #2

declare { i64, ptr } @heif_decode_image(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @heif_decoding_options_free(ptr noundef) local_unnamed_addr #2

declare ptr @heif_image_get_plane_readonly(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @heif_image_handle_get_ispe_width(ptr noundef) local_unnamed_addr #2

declare i32 @heif_image_handle_get_ispe_height(ptr noundef) local_unnamed_addr #2

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @heif_image_get_bits_per_pixel_range(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @heif_image_handle_get_luma_bits_per_pixel(ptr noundef) local_unnamed_addr #2

declare i64 @heif_image_handle_get_raw_color_profile_size(ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @heif_image_handle_get_raw_color_profile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @heif_image_release(ptr noundef) local_unnamed_addr #2

declare void @heif_image_handle_release(ptr noundef) local_unnamed_addr #2

declare void @heif_context_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @dt_imageio_heif_read_profile(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !94
  store i32 2, ptr %2, align 4, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !97
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 2, ptr %i.d, align 4, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store ptr null, ptr %i.b, align 8, !tbaa !100
  %i.e = tail call ptr @heif_context_alloc() #5   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str) #5
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, ptr } @heif_context_read_from_file(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef null) #5
  %i.g = extractvalue { i64, ptr } %i.f, 0
  %i.h = and i64 %i.g, 4294967295
  %.not53 = icmp eq i64 %i.h, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.9, ptr noundef %0) #5
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.i = tail call i32 @heif_context_get_number_of_top_level_images(ptr noundef nonnull %i.e) #5
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef %0) #5
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  %i.k = call { i64, ptr } @heif_context_get_primary_image_handle(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #5
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = and i64 %i.l, 4294967295
  %.not54 = icmp eq i64 %i.m, 0
  br i1 %.not54, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef %0) #5
  br label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.o = call i32 @heif_image_handle_get_color_profile_type(ptr noundef %i.n) #5
  switch i32 %i.o, label %bb.z [
    i32 1852009592, label %bb.j
    i32 1917403971, label %bb.q
    i32 1886547814, label %bb.q
    i32 0, label %bb.x
  ]

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.q = and i32 %i.p, 262144
  %.not59 = icmp eq i32 %i.q, 0
  br i1 %.not59, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10, ptr noundef %0) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.s = call { i64, ptr } @heif_image_handle_get_nclx_color_profile(ptr noundef %i.r, ptr noundef nonnull %i.b) #5
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = and i64 %i.t, 4294967295
  %.not60 = icmp eq i64 %i.u, 0
  br i1 %.not60, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.w = and i32 %i.v, 262144
  %.not63 = icmp eq i32 %i.w, 0
  br i1 %.not63, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11, ptr noundef %0) #5
  br label %bb.ab

bb.o:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !61 ; 2 uses
  %i.aa = and <2 x i32> %i.z, splat (i32 65535)
  store <2 x i32> %i.aa, ptr %2, align 4, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !102 ; 2 uses
  %i.ad = and i32 %i.ac, 65535                    ; 2 uses
  store i32 %i.ad, ptr %i.d, align 4, !tbaa !98
  %3 = icmp eq <2 x i32> %i.z, <i32 1, i32 4>     ; 2 uses
  %4 = extractelement <2 x i1> %3, i64 0
  %5 = extractelement <2 x i1> %3, i64 1
  %or.cond = select i1 %4, i1 %5, i1 false
  %i.ae = icmp eq i32 %i.ac, 1
  %or.cond65 = select i1 %or.cond, i1 %i.ae, i1 false
  br i1 %or.cond65, label %.critedge, label %bb.ab

.critedge:                                        ; preds = %bb.o
  store i32 1, ptr %i.c, align 4, !tbaa !97
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.ag = and i32 %i.af, 262144
  %.not62 = icmp eq i32 %i.ag, 0
  br i1 %.not62, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %.critedge
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef 4, i32 noundef 1, i32 noundef 1, i32 noundef %i.ad) #5
  br label %bb.ab

bb.q:                                             ; preds = %bb.i, %bb.i
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ai = call i64 @heif_image_handle_get_raw_color_profile_size(ptr noundef %i.ah) #5 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = call noalias ptr @g_malloc0(i64 noundef %i.ai) #6 ; 4 uses
  %.not56 = icmp eq ptr %i.ak, null
  br i1 %.not56, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.am = call { i64, ptr } @heif_image_handle_get_raw_color_profile(ptr noundef %i.al, ptr noundef nonnull %i.ak) #5
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = and i64 %i.an, 4294967295
  %.not57 = icmp eq i64 %i.ao, 0
  br i1 %.not57, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.aq = and i32 %i.ap, 262144
  %.not58 = icmp eq i32 %i.aq, 0
  br i1 %.not58, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef %0) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @g_free(ptr noundef nonnull %i.ak) #5
  br label %bb.ab

bb.w:                                             ; preds = %bb.s
  %i.ar = trunc i64 %i.ai to i32
  store ptr %i.ak, ptr %1, align 8, !tbaa !94
  br label %bb.ab

bb.x:                                             ; preds = %bb.i
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.at = and i32 %i.as, 262144
  %.not55 = icmp eq i32 %i.at, 0
  br i1 %.not55, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef %0) #5
  br label %bb.ab

bb.z:                                             ; preds = %bb.i
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !59
  %i.av = and i32 %i.au, 262144
  %.not64 = icmp eq i32 %i.av, 0
  br i1 %.not64, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.15, ptr noundef %0) #5
  br label %bb.ab

bb.ab:                                            ; preds = %bb.p, %.critedge, %bb.w, %bb.o, %bb.y, %bb.x, %bb.aa, %bb.z, %bb.r, %bb.q, %bb.m, %bb.n, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.x ], [ 0, %bb.f ], [ 0, %bb.y ], [ 0, %bb.h ], [ %i.ar, %bb.w ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.r ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.v ], [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %.critedge ]
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !100
  call void @heif_nclx_color_profile_free(ptr noundef %i.aw) #5
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !13
  call void @heif_image_handle_release(ptr noundef %i.ax) #5
  call void @heif_context_free(ptr noundef %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0
}

declare i32 @heif_image_handle_get_color_profile_type(ptr noundef) local_unnamed_addr #2

declare { i64, ptr } @heif_image_handle_get_nclx_color_profile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #3

declare void @heif_nclx_color_profile_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS17heif_image_handle", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"dt_codepath_t", !8, i64 0}
!15 = !{!"p1 _ZTS6_GList", !11, i64 0}
!16 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!17 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!18 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!19 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!20 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!21 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!22 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!23 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!24 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!25 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!26 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!27 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!28 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!29 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!30 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!31 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!32 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!33 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!34 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!35 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!36 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!37 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!38 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!39 = !{!"dt_pthread_mutex_t", !7, i64 0}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!42 = !{!"_Bool", !7, i64 0}
!43 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!44 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!45 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!46 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!47 = !{!"", !41, i64 0, !39, i64 8, !7, i64 48, !42, i64 96, !42, i64 97, !43, i64 104, !44, i64 112, !45, i64 120, !46, i64 128, !46, i64 136, !46, i64 144}
!48 = !{!"double", !7, i64 0}
!49 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!50 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!51 = !{!"long", !7, i64 0}
!52 = !{!"p1 int", !11, i64 0}
!53 = !{!"dt_sys_resources_t", !51, i64 0, !51, i64 8, !52, i64 16, !52, i64 24, !8, i64 32}
!54 = !{!"dt_backthumb_t", !48, i64 0, !48, i64 8, !8, i64 16, !8, i64 20}
!55 = !{!"dt_gimp_t", !8, i64 0, !40, i64 8, !40, i64 16, !8, i64 24, !8, i64 28}
!56 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!57 = !{!"dt_splash_t", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !8, i64 32}
!58 = !{!"darktable_t", !14, i64 0, !8, i64 4, !8, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !16, i64 48, !17, i64 56, !18, i64 64, !19, i64 72, !20, i64 80, !21, i64 88, !22, i64 96, !23, i64 104, !24, i64 112, !25, i64 120, !26, i64 128, !27, i64 136, !28, i64 144, !29, i64 152, !30, i64 160, !31, i64 168, !32, i64 176, !33, i64 184, !34, i64 192, !35, i64 200, !36, i64 208, !37, i64 216, !38, i64 224, !7, i64 232, !39, i64 2792, !39, i64 2832, !39, i64 2872, !39, i64 2912, !39, i64 2952, !39, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !47, i64 3136, !15, i64 3288, !48, i64 3296, !15, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !49, i64 3520, !50, i64 3528, !53, i64 3536, !54, i64 3576, !55, i64 3600, !57, i64 3632, !8, i64 3672}
!59 = !{!58, !8, i64 8}
!60 = !{!"float", !7, i64 0}
!61 = !{!8, !8, i64 0}
!62 = distinct !{!62, !89, !90}
!63 = distinct !{!63, !90, !89}
!64 = !{!"p1 _ZTS10heif_image", !11, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"short", !7, i64 0}
!67 = !{!"", !66, i64 0, !66, i64 2}
!68 = !{!"", !8, i64 0, !7, i64 16}
!69 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !67, i64 48, !68, i64 64, !7, i64 96, !8, i64 112}
!70 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!71 = !{!"dt_image_geoloc_t", !48, i64 0, !48, i64 8, !48, i64 16}
!72 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!73 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!74 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !51, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !60, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !51, i64 1448, !51, i64 1456, !51, i64 1464, !51, i64 1472, !8, i64 1480, !69, i64 1488, !7, i64 1616, !40, i64 1656, !8, i64 1664, !8, i64 1668, !70, i64 1672, !71, i64 1680, !72, i64 1704, !66, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !60, i64 1756, !60, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !15, i64 1856, !73, i64 1864, !8, i64 1872, !8, i64 1876}
!75 = !{!74, !8, i64 0}
!76 = !{!74, !8, i64 4}
!77 = !{!"heif_color_conversion_options", !7, i64 0, !8, i64 4, !8, i64 8, !7, i64 12}
!78 = !{!"heif_decoding_options", !7, i64 0, !7, i64 1, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 41, !40, i64 48, !77, i64 56}
!79 = !{!78, !7, i64 1}
!80 = !{!74, !8, i64 1380}
!81 = !{!74, !8, i64 1384}
!82 = !{!74, !8, i64 1488}
!83 = !{!74, !8, i64 1492}
!84 = !{!74, !8, i64 1600}
!85 = !{!74, !8, i64 1496}
!86 = !{!74, !8, i64 1428}
!87 = !{!66, !66, i64 0}
!88 = !{!60, !60, i64 0}
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_jpegxl?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@dt_imageio_open_jpegxl:bb.a
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  call void @free(ptr noundef %i.g) #9
  br label %.thread172

bb.t:                                             ; preds = %.split
  %i.ad = call i32 @JxlDecoderGetBasicInfo(ptr noundef nonnull %i.l, ptr noundef nonnull %3) #9
  %.not166 = icmp eq i32 %i.ad, 0
  br i1 %.not166, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.10) #9
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  call void @free(ptr noundef %i.g) #9
  br label %.thread172

bb.v:                                             ; preds = %bb.t
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !17
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = load i32, ptr %i.r, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  %or.cond = select i1 %i.af, i1 true, i1 %i.ah
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11) #9
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  call void @free(ptr noundef %i.g) #9
  br label %.thread172

bb.x:                                             ; preds = %bb.v
  %i.ai = load i32, ptr %i.s, align 4, !tbaa !18
  %switch.tableidx = add i32 %i.ai, -2            ; 2 uses
  %i.aj = icmp ult i32 %switch.tableidx, 7
  br i1 %i.aj, label %switch.lookup, label %dt_image_orientation_to_flip_bits.exit

switch.lookup:                                    ; preds = %bb.x
  %i.ak = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_imageio_open_jpegxl, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %dt_image_orientation_to_flip_bits.exit

dt_image_orientation_to_flip_bits.exit:           ; preds = %bb.x, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.x ]
  store i32 %.0.i, ptr %i.t, align 4, !tbaa !32
  %i.al = call i32 @JxlDecoderSetKeepOrientation(ptr noundef nonnull %i.l, i32 noundef 1) #9 ; 0 uses
  %i.am = load i32, ptr %i.q, align 4, !tbaa !17
  %i.an = zext i32 %i.am to i64
  %i.ao = load i32, ptr %i.r, align 4, !tbaa !33
  %i.ap = zext i32 %i.ao to i64
  %i.aq = call i32 @JxlResizableParallelRunnerSuggestThreads(i64 noundef %i.an, i64 noundef %i.ap) #9
  %i.ar = zext i32 %i.aq to i64
  call void @JxlResizableParallelRunnerSetThreads(ptr noundef nonnull %i.m, i64 noundef %i.ar) #9
  br label %.backedge

bb.y:                                             ; preds = %.split
  %i.as = load i32, ptr %0, align 16, !tbaa !34
  %.not160 = icmp eq i32 %i.as, 0
  br i1 %.not160, label %bb.z, label %.backedge

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.at = call i64 @JxlDecoderReleaseBoxBuffer(ptr noundef nonnull %i.l) #9 ; 0 uses
  %i.au = call i32 @JxlDecoderGetBoxType(ptr noundef nonnull %i.l, ptr noundef nonnull %i.c, i32 noundef 0) #9
  %.not161 = icmp eq i32 %i.au, 0
  br i1 %.not161, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.av = call i32 @JxlDecoderGetBoxSizeRaw(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b) #9
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 9
  %or.cond4 = select i1 %i.aw, i1 true, i1 %i.ay
  br i1 %or.cond4, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = load i32, ptr %i.c, align 1
  %i.ba = icmp ne i32 %i.az, 1718188101
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bd = add i64 %i.ax, -4                       ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !12
  %i.be = call noalias ptr @g_try_malloc0(i64 noundef %i.bd) #10 ; 3 uses
  %.not162 = icmp eq ptr %i.be, null
  br i1 %.not162, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !12
  %i.bg = call i32 @JxlDecoderSetBoxBuffer(ptr noundef nonnull %i.l, ptr noundef nonnull %i.be, i64 noundef %i.bf) #9
  br label %bb.ae

.thread:                                          ; preds = %bb.aa, %bb.z, %bb.ac
  %.2134.ph = phi ptr [ null, %bb.ac ], [ %.0132, %bb.z ], [ %.0132, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.backedge

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %.2134 = phi ptr [ %.0132, %bb.ab ], [ %i.be, %bb.ad ]
  %.1127 = phi i32 [ 0, %bb.ab ], [ %i.bg, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.q, %.split
  %.3135 = phi ptr [ %.2134, %bb.ae ], [ %.0132, %.split ], [ %.0132, %bb.q ] ; 9 uses
  %.2128 = phi i32 [ %.1127, %bb.ae ], [ %i.z, %.split ], [ %i.z, %bb.q ]
  switch i32 %.2128, label %.backedge [
    i32 256, label %bb.ag
    i32 5, label %bb.al
    i32 4096, label %bb.ao
  ]

.backedge:                                        ; preds = %bb.af, %.thread, %bb.an, %bb.ai, %bb.aj, %bb.ah, %bb.y, %dt_image_orientation_to_flip_bits.exit
  %.0132.be = phi ptr [ %.3135, %bb.ai ], [ %.3135, %bb.an ], [ %.3135, %bb.ah ], [ %.3135, %bb.aj ], [ %.0132, %dt_image_orientation_to_flip_bits.exit ], [ %.2134.ph, %.thread ], [ %.0132, %bb.y ], [ %.3135, %bb.af ]
  br label %bb.q

bb.ag:                                            ; preds = %bb.af
  %i.bh = call i32 @JxlDecoderGetICCProfileSize(ptr noundef nonnull %i.l, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %i.a) #9
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not164 = icmp eq i64 %i.bj, 0
  br i1 %.not164, label %.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bk = call noalias ptr @g_try_malloc0(i64 noundef %i.bj) #10 ; 3 uses
  store ptr %i.bk, ptr %i.x, align 8, !tbaa !35
  %.not165 = icmp eq ptr %i.bk, null
  br i1 %.not165, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !12
  %i.bm = call i32 @JxlDecoderGetColorAsICCProfile(ptr noundef nonnull %i.l, ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %i.bk, i64 noundef %i.bl) #9 ; 0 uses
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !12
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %i.y, align 16, !tbaa !36
  br label %.backedge

bb.ak:                                            ; preds = %bb.ag
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.13, ptr noundef %1) #9
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  call void @free(ptr noundef %i.g) #9
  br label %.thread172

bb.al:                                            ; preds = %bb.af
  %i.bp = load <2 x i32>, ptr %i.q, align 4, !tbaa !37
  store <2 x i32> %i.bp, ptr %i.u, align 4, !tbaa !37
  store i32 4, ptr %i.v, align 16, !tbaa !38
  store i32 1, ptr %i.w, align 4, !tbaa !39
  %i.bq = call ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef %0) #9 ; 2 uses
  %.not163 = icmp eq ptr %i.bq, null
  br i1 %.not163, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  call void @free(ptr noundef %i.g) #9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.br) #9
  br label %.thread172

bb.an:                                            ; preds = %bb.al
  %i.bs = load i32, ptr %i.q, align 4, !tbaa !17
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !33
  %i.bu = shl i32 %i.bs, 4
  %i.bv = mul i32 %i.bu, %i.bt
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call i32 @JxlDecoderSetImageOutBuffer(ptr noundef nonnull %i.l, ptr noundef nonnull %4, ptr noundef nonnull %i.bq, i64 noundef %i.bw) #9 ; 0 uses
  br label %.backedge

bb.ao:                                            ; preds = %bb.af
  %i.by = load i32, ptr %0, align 16, !tbaa !34
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = icmp ne ptr %.3135, null
  %or.cond6 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond6, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.cb = call i64 @JxlDecoderReleaseBoxBuffer(ptr noundef nonnull %i.l) #9 ; 0 uses
  %i.cc = load i32, ptr %.3135, align 1
  %i.cd = call i32 @llvm.bswap.i32(i32 %i.cc)     ; 3 uses
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.cf = add i32 %i.cd, 4
  %i.cg = zext i32 %i.cf to i64
  %i.ch = icmp ugt i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ci = getelementptr inbounds nuw i8, ptr %.3135, i64 4
  %i.cj = zext i32 %i.cd to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %i.cl = trunc i64 %i.ce to i32
  %5 = add i32 %i.cl, -4
  %6 = sub i32 %5, %i.cd
  %i.cm = call i32 @dt_exif_read_from_blob(ptr noundef nonnull %0, ptr noundef nonnull %i.ck, i32 noundef %6) #9 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @g_free(ptr noundef nonnull %.3135) #9
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  call void @JxlResizableParallelRunnerDestroy(ptr noundef nonnull %i.m) #9
  call void @JxlDecoderDestroy(ptr noundef nonnull %i.l) #9
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.cn, align 8, !tbaa !40
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 16, ptr %i.cq, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %i.ct = icmp ult i32 %i.cs, 9
  %i.cu = and i32 %i.cp, -131297
  %storemerge.v = select i1 %i.ct, i32 32, i32 128
  %storemerge = or disjoint i32 %i.cu, %storemerge.v
  store i32 %storemerge, ptr %i.co, align 4, !tbaa !41
  br label %.thread172

.thread172:                                       ; preds = %bb.am, %bb.ak, %bb.w, %bb.u, %bb.s, %bb.r, %bb.j, %bb.l, %bb.n, %bb.p, %bb.as, %bb.h
  %.4 = phi i32 [ 2, %bb.h ], [ 2, %bb.l ], [ 2, %bb.n ], [ 2, %bb.p ], [ 2, %bb.j ], [ 0, %bb.as ], [ 8, %bb.am ], [ 5, %bb.ak ], [ 6, %bb.w ], [ 6, %bb.u ], [ 6, %bb.s ], [ 6, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.at

bb.at:                                            ; preds = %bb.d, %bb.f, %.thread172, %bb.b
  %.6 = phi i32 [ 1, %bb.b ], [ 7, %bb.f ], [ %.4, %.thread172 ], [ 2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @JxlDecoderCreate(ptr noundef) local_unnamed_addr #3

declare ptr @JxlResizableParallelRunnerCreate(ptr noundef) local_unnamed_addr #3

declare void @JxlDecoderDestroy(ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderSetInput(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @JxlResizableParallelRunnerDestroy(ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderSubscribeEvents(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @JxlDecoderSetParallelRunner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JxlResizableParallelRunner(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @JxlDecoderProcessInput(ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderGetBasicInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderSetKeepOrientation(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @JxlResizableParallelRunnerSuggestThreads(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @JxlResizableParallelRunnerSetThreads(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @JxlDecoderReleaseBoxBuffer(ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderGetBoxType(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @JxlDecoderGetBoxSizeRaw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #6

declare i32 @JxlDecoderSetBoxBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @JxlDecoderGetICCProfileSize(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderGetColorAsICCProfile(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @JxlDecoderSetImageOutBuffer(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @dt_exif_read_from_blob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!"", !8, i64 0, !8, i64 4}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!16 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !13, i64 20, !13, i64 24, !8, i64 28, !13, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !14, i64 72, !15, i64 80, !8, i64 96, !8, i64 100, !7, i64 104}
!17 = !{!16, !8, i64 4}
!18 = !{!16, !8, i64 48}
!19 = !{!"short", !7, i64 0}
!20 = !{!"", !19, i64 0, !19, i64 2}
!21 = !{!"", !8, i64 0, !7, i64 16}
!22 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !20, i64 48, !21, i64 64, !7, i64 96, !8, i64 112}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"p1 omnipotent char", !23, i64 0}
!25 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!26 = !{!"double", !7, i64 0}
!27 = !{!"dt_image_geoloc_t", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!29 = !{!"p1 _ZTS6_GList", !23, i64 0}
!30 = !{!"p1 _ZTS16dt_cache_entry_t", !23, i64 0}
!31 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !11, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !11, i64 1448, !11, i64 1456, !11, i64 1464, !11, i64 1472, !8, i64 1480, !22, i64 1488, !7, i64 1616, !24, i64 1656, !8, i64 1664, !8, i64 1668, !25, i64 1672, !27, i64 1680, !28, i64 1704, !19, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !29, i64 1856, !30, i64 1864, !8, i64 1872, !8, i64 1876}
!32 = !{!31, !8, i64 4}
!33 = !{!16, !8, i64 8}
!34 = !{!31, !8, i64 0}
!35 = !{!31, !24, i64 1656}
!36 = !{!31, !8, i64 1664}
!37 = !{!8, !8, i64 0}
!38 = !{!31, !8, i64 1488}
!39 = !{!31, !8, i64 1492}
!40 = !{!31, !8, i64 1496}
!41 = !{!31, !8, i64 1428}
!42 = !{!31, !8, i64 1480}
!43 = !{!16, !8, i64 12}
end_hunk_0

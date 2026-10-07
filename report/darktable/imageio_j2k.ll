Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_j2k?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_print_ext

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @opj_create_decompress(i32 noundef) local_unnamed_addr #3

declare i32 @opj_set_error_handler(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal void @error_callback(ptr noundef %0, ptr nofree noundef captures(none) %1) #5 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %0) #15 ; 0 uses
  ret void
}

declare i32 @opj_codec_set_threads(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @opj_destroy_codec(ptr noundef) local_unnamed_addr #3

declare i32 @opj_setup_decoder(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @opj_stream_create_default_file_stream(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @opj_read_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @opj_stream_destroy(ptr noundef) local_unnamed_addr #3

declare void @opj_image_destroy(ptr noundef) local_unnamed_addr #3

declare i32 @opj_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @opj_end_decompress(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @color_sycc_to_rgb(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.d, align 4, !tbaa !17
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 14 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.d, label %.thread27

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  switch i32 %i.j, label %.thread27 [
    i32 2, label %bb.e
    i32 1, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !29
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @sycc420_to_rgb(ptr noundef %0)
  br label %bb.t

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.k, label %.thread27

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.thread27

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.m, label %.thread27

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.n, label %.thread27

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @sycc422_to_rgb(ptr noundef %0)
  br label %bb.t

bb.o:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !28
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %.thread27

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %.thread27

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !29
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.r, label %.thread27

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !29
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.s, label %.thread27

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @sycc444_to_rgb(ptr noundef %0)
  br label %bb.t

.thread27:                                        ; preds = %bb.d, %bb.j, %bb.k, %bb.l, %bb.m, %bb.c, %bb.r, %bb.q, %bb.p, %bb.o
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 557) #15
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.s, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.au, align 4, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %.thread27, %bb.t, %bb.b
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc0(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sycc420_to_rgb(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = add i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 4 uses
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1                     ; 25 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 5 uses
  %i.j = zext i32 %i.i to i64                     ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = mul nuw i64 %i.m, %i.j                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 11 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 16 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 18 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 21 uses
  %i.x = icmp ne ptr %i.u, null
  %i.y = icmp ne ptr %i.v, null
  %or.cond = and i1 %i.x, %i.y
  %i.z = icmp ne ptr %i.w, null
  %or.cond3 = and i1 %or.cond, %i.z
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.aa = icmp ne i32 %i.l, 0
  %i.ab = icmp ne i32 %i.i, 0
  %or.cond135 = and i1 %i.aa, %i.ab
  br i1 %or.cond135, label %.lr.ph.preheader, label %._crit_edge134.split

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = add nsw i64 %i.m, -1
  %i.ad = lshr i64 %i.ac, 1                       ; 3 uses
  %i.ae = mul i64 %i.ad, %i.j
  %i.af = add nsw i64 %i.j, -1
  %i.ag = lshr i64 %i.af, 1                       ; 3 uses
  %i.ah = shl i64 %i.ag, 3
  %i.ai = add i64 %i.ae, %i.ag
  %i.aj = shl i64 %i.ai, 3                        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 4                ; 3 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ak ; 3 uses
  %1 = getelementptr i8, ptr %i.u, <2 x i64> <i64 0, i64 4> ; 5 uses
  %2 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %scevgep139 = getelementptr i8, ptr %i.u, i64 4 ; 3 uses
  %i.al = add i64 %i.aj, 8                        ; 4 uses
  %scevgep140 = getelementptr i8, ptr %i.u, i64 %i.al ; 9 uses
  %i.am = shl nuw nsw i64 %i.j, 2                 ; 5 uses
  %scevgep141 = getelementptr i8, ptr %i.u, i64 %i.am ; 4 uses
  %i.an = shl i64 %i.ad, 3
  %i.ao = or disjoint i64 %i.an, 4
  %i.ap = mul i64 %i.ao, %i.j
  %i.aq = add i64 %i.ap, %i.ah                    ; 2 uses
  %i.ar = add i64 %i.aq, 4                        ; 3 uses
  %scevgep142 = getelementptr i8, ptr %i.u, i64 %i.ar ; 4 uses
  %i.as = add nuw nsw i64 %i.am, 4                ; 3 uses
  %scevgep143 = getelementptr i8, ptr %i.u, i64 %i.as ; 6 uses
  %i.at = add i64 %i.aq, 8                        ; 4 uses
  %scevgep144.a = getelementptr i8, ptr %i.u, i64 %i.at ; 6 uses
  %scevgep145.a = getelementptr i8, ptr %i.v, i64 %i.ak ; 6 uses
  %3 = getelementptr i8, ptr %i.v, <2 x i64> <i64 0, i64 4>
  %4 = shufflevector <2 x ptr> %3, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %scevgep146 = getelementptr i8, ptr %i.v, i64 4 ; 7 uses
  %scevgep147 = getelementptr i8, ptr %i.v, i64 %i.al ; 8 uses
  %scevgep148.a = getelementptr i8, ptr %i.v, i64 %i.am ; 9 uses
  %scevgep149.a = getelementptr i8, ptr %i.v, i64 %i.ar ; 9 uses
  %scevgep150 = getelementptr i8, ptr %i.v, i64 %i.as ; 8 uses
  %scevgep151 = getelementptr i8, ptr %i.v, i64 %i.at ; 8 uses
  %scevgep152 = getelementptr i8, ptr %i.w, i64 %i.ak ; 5 uses
  %5 = getelementptr i8, ptr %i.w, <2 x i64> <i64 0, i64 4>
  %6 = shufflevector <2 x ptr> %5, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %7 = getelementptr i8, ptr %i.w, <2 x i64> <i64 0, i64 4>
  %8 = getelementptr i8, ptr %i.w, <2 x i64> <i64 0, i64 4>
  %9 = getelementptr i8, ptr %i.w, <2 x i64> <i64 0, i64 4>
  %10 = getelementptr i8, ptr %i.w, <2 x i64> <i64 0, i64 4>
  %scevgep153 = getelementptr i8, ptr %i.w, i64 4 ; 4 uses
  %scevgep154 = getelementptr i8, ptr %i.w, i64 %i.al ; 6 uses
  %scevgep155 = getelementptr i8, ptr %i.w, i64 %i.am ; 9 uses
  %scevgep156 = getelementptr i8, ptr %i.w, i64 %i.ar ; 9 uses
  %scevgep157.a = getelementptr i8, ptr %i.w, i64 %i.as ; 9 uses
  %scevgep158 = getelementptr i8, ptr %i.w, i64 %i.at ; 9 uses
  %11 = mul i64 %i.ad, %i.j
  %i.au = add i64 %11, %i.ag
  %12 = shl i64 %i.au, 2
  %13 = add i64 %12, 4                            ; 2 uses
  %scevgep159 = getelementptr i8, ptr %i.r, i64 %13 ; 7 uses
  %scevgep160 = getelementptr i8, ptr %i.t, i64 %13 ; 7 uses
  %scevgep161 = getelementptr i8, ptr %i.p, i64 %i.am ; 8 uses
  %scevgep162 = getelementptr i8, ptr %i.p, i64 %i.at ; 8 uses
  %scevgep163 = getelementptr i8, ptr %i.p, i64 %i.al ; 8 uses
  %14 = insertelement <8 x ptr> poison, ptr %i.u, i64 0
  %15 = shufflevector <8 x ptr> %14, <8 x ptr> poison, <8 x i32> zeroinitializer
  %16 = insertelement <8 x ptr> poison, ptr %scevgep140, i64 0
  %17 = insertelement <8 x ptr> %16, ptr %scevgep142, i64 1
  %18 = insertelement <8 x ptr> %17, ptr %scevgep144.a, i64 2
  %19 = insertelement <8 x ptr> %18, ptr %scevgep145.a, i64 3
  %20 = insertelement <8 x ptr> %19, ptr %scevgep147, i64 4
  %21 = insertelement <8 x ptr> %20, ptr %scevgep149.a, i64 5
  %22 = insertelement <8 x ptr> %21, ptr %scevgep151, i64 6
  %23 = insertelement <8 x ptr> %22, ptr %scevgep152, i64 7
  %24 = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %25 = shufflevector <8 x ptr> %24, <8 x ptr> poison, <8 x i32> zeroinitializer
  %26 = insertelement <8 x ptr> poison, ptr %i.v, i64 0
  %27 = shufflevector <8 x ptr> %26, <8 x ptr> poison, <8 x i32> zeroinitializer
  %28 = insertelement <8 x ptr> poison, ptr %scevgep147, i64 0
  %29 = insertelement <8 x ptr> %28, ptr %scevgep149.a, i64 1
  %30 = insertelement <8 x ptr> %29, ptr %scevgep151, i64 2
  %31 = insertelement <8 x ptr> %30, ptr %scevgep152, i64 3
  %32 = insertelement <8 x ptr> %31, ptr %scevgep154, i64 4
  %33 = insertelement <8 x ptr> %32, ptr %scevgep156, i64 5
  %34 = insertelement <8 x ptr> %33, ptr %scevgep158, i64 6
  %35 = insertelement <8 x ptr> %34, ptr %scevgep159, i64 7 ; 2 uses
  %36 = insertelement <8 x ptr> poison, ptr %scevgep146, i64 0
  %37 = insertelement <8 x ptr> %36, ptr %scevgep148.a, i64 1
  %38 = insertelement <8 x ptr> %37, ptr %scevgep150, i64 2
  %39 = insertelement <8 x ptr> %38, ptr %i.w, i64 3
  %40 = insertelement <8 x ptr> %39, ptr %scevgep153, i64 4
  %41 = insertelement <8 x ptr> %40, ptr %scevgep155, i64 5
  %42 = insertelement <8 x ptr> %41, ptr %scevgep157.a, i64 6
  %43 = insertelement <8 x ptr> %42, ptr %i.r, i64 7 ; 2 uses
  %44 = insertelement <8 x ptr> poison, ptr %scevgep145.a, i64 0
  %45 = shufflevector <8 x ptr> %44, <8 x ptr> poison, <8 x i32> zeroinitializer
  %46 = insertelement <4 x ptr> poison, ptr %scevgep160, i64 0
  %47 = insertelement <4 x ptr> %46, ptr %scevgep162, i64 1
  %48 = insertelement <4 x ptr> %47, ptr %scevgep163, i64 2 ; 4 uses
  %49 = insertelement <4 x ptr> %48, ptr %scevgep149.a, i64 3
  %50 = insertelement <4 x ptr> poison, ptr %i.t, i64 0
  %51 = insertelement <4 x ptr> %50, ptr %scevgep161, i64 1
  %52 = insertelement <4 x ptr> %51, ptr %i.p, i64 2 ; 4 uses
  %53 = insertelement <4 x ptr> %52, ptr %scevgep148.a, i64 3
  %54 = insertelement <4 x ptr> poison, ptr %scevgep145.a, i64 0
  %55 = insertelement <4 x ptr> %54, ptr %scevgep147, i64 1
  %56 = shufflevector <4 x ptr> %55, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %57 = insertelement <4 x ptr> poison, ptr %scevgep146, i64 0 ; 3 uses
  %58 = insertelement <4 x ptr> %57, ptr %scevgep155, i64 1
  %59 = shufflevector <4 x ptr> %58, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %60 = insertelement <4 x ptr> poison, ptr %scevgep152, i64 0 ; 2 uses
  %61 = insertelement <4 x ptr> %60, ptr %scevgep154, i64 1 ; 4 uses
  %62 = insertelement <4 x ptr> %61, ptr %scevgep147, i64 2
  %63 = insertelement <4 x ptr> %62, ptr %scevgep158, i64 3
  %64 = insertelement <4 x ptr> poison, ptr %scevgep147, i64 0 ; 3 uses
  %65 = insertelement <4 x ptr> %64, ptr %scevgep156, i64 1
  %66 = shufflevector <4 x ptr> %65, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %67 = insertelement <4 x ptr> %57, ptr %scevgep161, i64 1
  %68 = shufflevector <4 x ptr> %67, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %69 = insertelement <4 x ptr> poison, ptr %scevgep159, i64 0
  %70 = insertelement <4 x ptr> %69, ptr %scevgep160, i64 1 ; 3 uses
  %71 = insertelement <4 x ptr> %70, ptr %scevgep147, i64 2
  %72 = insertelement <4 x ptr> %71, ptr %scevgep163, i64 3
  %73 = insertelement <4 x ptr> poison, ptr %i.r, i64 0
  %74 = insertelement <4 x ptr> %73, ptr %i.t, i64 1 ; 3 uses
  %75 = insertelement <4 x ptr> %74, ptr %scevgep146, i64 2
  %76 = insertelement <4 x ptr> %75, ptr %i.p, i64 3
  %77 = insertelement <4 x ptr> %64, ptr %scevgep162, i64 1
  %78 = shufflevector <4 x ptr> %77, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %79 = insertelement <4 x ptr> poison, ptr %scevgep148.a, i64 0 ; 2 uses
  %80 = insertelement <4 x ptr> %79, ptr %scevgep155, i64 1
  %81 = shufflevector <4 x ptr> %80, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %82 = insertelement <4 x ptr> %61, ptr %scevgep149.a, i64 2
  %83 = insertelement <4 x ptr> %82, ptr %scevgep158, i64 3
  %84 = insertelement <4 x ptr> poison, ptr %scevgep149.a, i64 0 ; 2 uses
  %85 = insertelement <4 x ptr> %84, ptr %scevgep156, i64 1
  %86 = shufflevector <4 x ptr> %85, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %87 = insertelement <4 x ptr> %79, ptr %scevgep161, i64 1
  %88 = shufflevector <4 x ptr> %87, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %89 = insertelement <4 x ptr> %70, ptr %scevgep149.a, i64 2
  %90 = insertelement <4 x ptr> %89, ptr %scevgep163, i64 3
  %91 = insertelement <4 x ptr> %74, ptr %scevgep148.a, i64 2
  %92 = insertelement <4 x ptr> %91, ptr %i.p, i64 3
  %93 = insertelement <4 x ptr> %84, ptr %scevgep162, i64 1
  %94 = shufflevector <4 x ptr> %93, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %95 = insertelement <4 x ptr> poison, ptr %scevgep150, i64 0 ; 3 uses
  %96 = insertelement <4 x ptr> %95, ptr %scevgep155, i64 1
  %97 = shufflevector <4 x ptr> %96, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %98 = insertelement <4 x ptr> %61, ptr %scevgep151, i64 2
  %99 = insertelement <4 x ptr> %98, ptr %scevgep158, i64 3
  %100 = insertelement <4 x ptr> poison, ptr %scevgep151, i64 0 ; 3 uses
  %101 = insertelement <4 x ptr> %100, ptr %scevgep156, i64 1
  %102 = shufflevector <4 x ptr> %101, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %103 = insertelement <4 x ptr> %95, ptr %scevgep161, i64 1
  %104 = shufflevector <4 x ptr> %103, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %105 = insertelement <4 x ptr> %70, ptr %scevgep151, i64 2
  %106 = insertelement <4 x ptr> %105, ptr %scevgep163, i64 3
  %107 = insertelement <4 x ptr> %74, ptr %scevgep150, i64 2
  %108 = insertelement <4 x ptr> %107, ptr %i.p, i64 3
  %109 = insertelement <4 x ptr> %100, ptr %scevgep162, i64 1
  %110 = shufflevector <4 x ptr> %109, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %111 = insertelement <4 x ptr> poison, ptr %i.w, i64 0
  %112 = shufflevector <4 x ptr> %111, <4 x ptr> poison, <4 x i32> zeroinitializer
  %113 = insertelement <4 x ptr> poison, ptr %scevgep154, i64 0 ; 2 uses
  %114 = insertelement <4 x ptr> %113, ptr %scevgep156, i64 1
  %115 = insertelement <4 x ptr> %114, ptr %scevgep158, i64 2
  %116 = insertelement <4 x ptr> %115, ptr %scevgep159, i64 3 ; 3 uses
  %117 = insertelement <4 x ptr> poison, ptr %scevgep153, i64 0 ; 2 uses
  %118 = insertelement <4 x ptr> %117, ptr %scevgep155, i64 1
  %119 = insertelement <4 x ptr> %118, ptr %scevgep157.a, i64 2
  %120 = insertelement <4 x ptr> %119, ptr %i.r, i64 3 ; 3 uses
  %121 = shufflevector <4 x ptr> %60, <4 x ptr> poison, <4 x i32> zeroinitializer
  %122 = insertelement <4 x ptr> %48, ptr %scevgep156, i64 3
  %123 = insertelement <4 x ptr> %52, ptr %scevgep155, i64 3
  %124 = shufflevector <4 x ptr> %61, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %125 = insertelement <4 x ptr> poison, ptr %scevgep157.a, i64 0 ; 2 uses
  %126 = insertelement <4 x ptr> %125, ptr %scevgep153, i64 1
  %127 = shufflevector <4 x ptr> %126, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %128 = insertelement <4 x ptr> %113, ptr %scevgep159, i64 1
  %129 = insertelement <4 x ptr> %128, ptr %scevgep160, i64 2
  %130 = insertelement <4 x ptr> %129, ptr %scevgep162, i64 3
  %131 = insertelement <4 x ptr> %117, ptr %i.r, i64 1
  %132 = insertelement <4 x ptr> %131, ptr %i.t, i64 2
  %133 = insertelement <4 x ptr> %132, ptr %scevgep161, i64 3
  %134 = insertelement <4 x ptr> poison, ptr %scevgep158, i64 0 ; 2 uses
  %135 = insertelement <4 x ptr> %134, ptr %scevgep154, i64 1
  %136 = shufflevector <4 x ptr> %135, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %137 = insertelement <4 x ptr> %125, ptr %scevgep155, i64 1
  %138 = shufflevector <4 x ptr> %137, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %139 = insertelement <4 x ptr> poison, ptr %scevgep156, i64 0 ; 2 uses
  %140 = insertelement <4 x ptr> %139, ptr %scevgep159, i64 1
  %141 = insertelement <4 x ptr> %140, ptr %scevgep160, i64 2
  %142 = insertelement <4 x ptr> %141, ptr %scevgep162, i64 3
  %143 = insertelement <4 x ptr> poison, ptr %scevgep155, i64 0 ; 2 uses
  %144 = insertelement <4 x ptr> %143, ptr %i.r, i64 1
  %145 = insertelement <4 x ptr> %144, ptr %i.t, i64 2
  %146 = insertelement <4 x ptr> %145, ptr %scevgep161, i64 3
  %147 = insertelement <4 x ptr> %134, ptr %scevgep156, i64 1
  %148 = shufflevector <4 x ptr> %147, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %149 = insertelement <4 x ptr> %143, ptr %scevgep157.a, i64 1
  %150 = shufflevector <4 x ptr> %149, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %151 = insertelement <4 x ptr> poison, ptr %scevgep163, i64 0
  %152 = insertelement <4 x ptr> %151, ptr %scevgep159, i64 1
  %153 = insertelement <4 x ptr> %152, ptr %scevgep160, i64 2
  %154 = insertelement <4 x ptr> %153, ptr %scevgep162, i64 3
  %155 = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %156 = insertelement <4 x ptr> %155, ptr %i.r, i64 1
  %157 = insertelement <4 x ptr> %156, ptr %i.t, i64 2
  %158 = insertelement <4 x ptr> %157, ptr %scevgep161, i64 3
  %159 = insertelement <4 x ptr> %139, ptr %scevgep158, i64 1
  %160 = shufflevector <4 x ptr> %159, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %161 = insertelement <8 x ptr> poison, ptr %scevgep143, i64 0
  %162 = shufflevector <8 x ptr> %161, <8 x ptr> poison, <8 x i32> zeroinitializer
  %163 = insertelement <4 x ptr> poison, ptr %scevgep143, i64 0
  %164 = insertelement <4 x ptr> %163, ptr %scevgep146, i64 1
  %165 = shufflevector <4 x ptr> %164, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %166 = insertelement <4 x ptr> %48, ptr %scevgep151, i64 3
  %167 = insertelement <8 x ptr> poison, ptr %scevgep144.a, i64 0
  %168 = shufflevector <8 x ptr> %167, <8 x ptr> poison, <8 x i32> zeroinitializer
  %169 = insertelement <4 x ptr> %52, ptr %scevgep150, i64 3
  %170 = insertelement <4 x ptr> poison, ptr %scevgep144.a, i64 0
  %171 = insertelement <4 x ptr> %170, ptr %scevgep147, i64 1
  %172 = shufflevector <4 x ptr> %171, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %173 = insertelement <4 x ptr> %100, ptr %scevgep152, i64 1
  %174 = insertelement <4 x ptr> %173, ptr %scevgep154, i64 2
  %175 = insertelement <4 x ptr> %174, ptr %scevgep156, i64 3
  %176 = insertelement <2 x ptr> poison, ptr %scevgep158, i64 0
  %177 = insertelement <2 x ptr> %176, ptr %scevgep159, i64 1
  %178 = insertelement <4 x ptr> poison, ptr %scevgep140, i64 0 ; 2 uses
  %179 = shufflevector <4 x ptr> %178, <4 x ptr> poison, <4 x i32> zeroinitializer
  %180 = insertelement <4 x ptr> poison, ptr %scevgep162, i64 0
  %181 = insertelement <4 x ptr> %180, ptr %scevgep163, i64 1 ; 2 uses
  %182 = insertelement <4 x ptr> %181, ptr %scevgep142, i64 2
  %183 = insertelement <4 x ptr> %182, ptr %scevgep144.a, i64 3
  %184 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %185 = insertelement <2 x ptr> poison, ptr %scevgep145.a, i64 0
  %186 = insertelement <2 x ptr> %185, ptr %scevgep147, i64 1
  %187 = insertelement <4 x ptr> poison, ptr %scevgep161, i64 0
  %188 = insertelement <4 x ptr> %187, ptr %i.p, i64 1 ; 2 uses
  %189 = insertelement <4 x ptr> %188, ptr %scevgep141, i64 2
  %190 = insertelement <4 x ptr> %189, ptr %scevgep143, i64 3
  %191 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %192 = insertelement <4 x ptr> %191, ptr %scevgep140, i64 1
  %193 = shufflevector <4 x ptr> %192, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %194 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %195 = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %196 = shufflevector <4 x ptr> %195, <4 x ptr> poison, <4 x i32> zeroinitializer
  %197 = shufflevector <4 x ptr> %191, <4 x ptr> poison, <4 x i32> zeroinitializer
  %198 = insertelement <4 x ptr> %188, ptr %scevgep143, i64 2
  %199 = insertelement <4 x ptr> %198, ptr %i.v, i64 3
  %200 = insertelement <4 x ptr> %178, ptr %scevgep142, i64 1
  %201 = shufflevector <4 x ptr> %200, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %202 = insertelement <4 x ptr> %57, ptr %scevgep148.a, i64 1
  %203 = insertelement <4 x ptr> %202, ptr %scevgep150, i64 2
  %204 = insertelement <4 x ptr> %203, ptr %i.w, i64 3
  %205 = insertelement <4 x ptr> poison, ptr %scevgep142, i64 0 ; 2 uses
  %206 = shufflevector <4 x ptr> %205, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %207 = insertelement <4 x ptr> %52, ptr %i.v, i64 3
  %208 = insertelement <4 x ptr> %205, ptr %scevgep144.a, i64 1
  %209 = shufflevector <4 x ptr> %208, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %210 = insertelement <2 x ptr> poison, ptr %scevgep148.a, i64 0
  %211 = insertelement <2 x ptr> %210, ptr %scevgep153, i64 1
  %212 = insertelement <2 x ptr> poison, ptr %scevgep151, i64 0
  %213 = insertelement <2 x ptr> %212, ptr %scevgep163, i64 1
  %214 = insertelement <4 x ptr> poison, ptr %scevgep139, i64 0
  %215 = insertelement <4 x ptr> %214, ptr %scevgep141, i64 1
  %216 = shufflevector <4 x ptr> %215, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %217 = insertelement <4 x ptr> %181, ptr %scevgep144.a, i64 2
  %218 = insertelement <4 x ptr> %217, ptr %scevgep145.a, i64 3
  %219 = insertelement <4 x ptr> poison, ptr %scevgep141, i64 0 ; 2 uses
  %220 = shufflevector <4 x ptr> %219, <4 x ptr> poison, <4 x i32> zeroinitializer ; 2 uses
  %221 = insertelement <4 x ptr> %64, ptr %scevgep149.a, i64 1
  %222 = insertelement <4 x ptr> %221, ptr %scevgep151, i64 2
  %223 = insertelement <4 x ptr> %222, ptr %scevgep152, i64 3
  %224 = insertelement <4 x ptr> %219, ptr %scevgep143, i64 1
  %225 = shufflevector <4 x ptr> %224, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %226 = insertelement <4 x ptr> %48, ptr %scevgep145.a, i64 3
  %227 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %228 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %229 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %230 = shufflevector <2 x ptr> %10, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %231 = shufflevector <4 x ptr> %95, <4 x ptr> %230, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %232 = add nsw i64 %i.j, -1
  %233 = lshr i64 %232, 1
  %234 = add nuw i64 %233, 1                      ; 2 uses
  %min.iters.check.a = icmp ult i32 %i.i, 63
  %235 = icmp ult <8 x ptr> %15, %23
  %236 = insertelement <8 x ptr> %194, ptr %scevgep141, i64 1
  %237 = insertelement <8 x ptr> %236, ptr %scevgep143, i64 2
  %238 = insertelement <8 x ptr> %237, ptr %i.v, i64 3
  %239 = insertelement <8 x ptr> %238, ptr %scevgep146, i64 4
  %240 = insertelement <8 x ptr> %239, ptr %scevgep148.a, i64 5
  %241 = insertelement <8 x ptr> %240, ptr %scevgep150, i64 6
  %242 = insertelement <8 x ptr> %241, ptr %i.w, i64 7
  %243 = icmp ult <8 x ptr> %242, %25
  %244 = and <8 x i1> %235, %243
  %245 = icmp ult <4 x ptr> %196, %116
  %246 = icmp ult <4 x ptr> %120, %197
  %247 = and <4 x i1> %245, %246
  %bound0207.a = icmp ult ptr %i.u, %scevgep160
  %bound1208.a = icmp ult ptr %i.t, %scevgep
  %found.conflict209.a = and i1 %bound0207.a, %bound1208.a
  %248 = icmp ult <4 x ptr> %2, %183
  %249 = icmp ult <4 x ptr> %190, %193
  %250 = icmp ult <2 x ptr> %184, %186
  %bound1228.a = icmp ult ptr %i.v, %scevgep140
  %bound1232.a = icmp ult ptr %scevgep146, %scevgep140
  %bound0235.a = icmp ult ptr %scevgep139, %scevgep149.a
  %bound1236.a = icmp ult ptr %scevgep148.a, %scevgep140
  %251 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %252 = icmp ult <4 x ptr> %251, %175
  %253 = insertelement <4 x ptr> %231, ptr %scevgep155, i64 3
  %254 = icmp ult <4 x ptr> %253, %179
  %255 = shufflevector <2 x ptr> %1, <2 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %256 = icmp ult <2 x ptr> %255, %177
  %bound1256.a = icmp ult ptr %scevgep157.a, %scevgep140
  %bound1260.a = icmp ult ptr %i.r, %scevgep140
  %bound0263.a = icmp ult ptr %scevgep139, %scevgep160
  %bound1264.a = icmp ult ptr %i.t, %scevgep140
  %257 = icmp ult <4 x ptr> %216, %218
  %258 = icmp ult <4 x ptr> %199, %201
  %259 = icmp ult <4 x ptr> %220, %223
  %260 = icmp ult <4 x ptr> %204, %206
  %261 = icmp ult <4 x ptr> %220, %116
  %262 = icmp ult <4 x ptr> %120, %206
  %263 = icmp ult <4 x ptr> %225, %226
  %264 = icmp ult <4 x ptr> %207, %209
  %265 = icmp ult <8 x ptr> %162, %35
  %266 = icmp ult <8 x ptr> %43, %168
  %267 = icmp ult <4 x ptr> %165, %166
  %268 = icmp ult <4 x ptr> %169, %172
  %269 = icmp ult <8 x ptr> %27, %35
  %270 = icmp ult <8 x ptr> %43, %45
  %271 = and <8 x i1> %269, %270
  %272 = icmp ult <4 x ptr> %4, %49
  %273 = icmp ult <4 x ptr> %53, %56
  %274 = and <4 x i1> %272, %273
  %275 = icmp ult <4 x ptr> %59, %63
  %276 = insertelement <4 x ptr> %229, ptr %scevgep146, i64 2
  %277 = insertelement <4 x ptr> %276, ptr %scevgep157.a, i64 3
  %278 = icmp ult <4 x ptr> %277, %66
  %279 = and <4 x i1> %275, %278
  %280 = icmp ult <4 x ptr> %68, %72
  %281 = icmp ult <4 x ptr> %76, %78
  %282 = and <4 x i1> %280, %281
  %283 = icmp ult <2 x ptr> %211, %213
  %bound1460.a = icmp ult ptr %scevgep150, %scevgep149.a
  %284 = icmp ult <4 x ptr> %81, %83
  %285 = insertelement <4 x ptr> %228, ptr %scevgep148.a, i64 2
  %286 = insertelement <4 x ptr> %285, ptr %scevgep157.a, i64 3
  %287 = icmp ult <4 x ptr> %286, %86
  %288 = and <4 x i1> %284, %287
  %289 = icmp ult <4 x ptr> %88, %90
  %290 = icmp ult <4 x ptr> %92, %94
  %291 = and <4 x i1> %289, %290
  %292 = icmp ult <4 x ptr> %97, %99
  %293 = insertelement <4 x ptr> %227, ptr %scevgep150, i64 2
  %294 = insertelement <4 x ptr> %293, ptr %scevgep157.a, i64 3
  %295 = icmp ult <4 x ptr> %294, %102
  %296 = and <4 x i1> %292, %295
  %297 = icmp ult <4 x ptr> %104, %106
  %298 = icmp ult <4 x ptr> %108, %110
  %299 = and <4 x i1> %297, %298
  %300 = icmp ult <4 x ptr> %112, %116
  %301 = icmp ult <4 x ptr> %120, %121
  %302 = and <4 x i1> %300, %301
  %303 = icmp ult <4 x ptr> %6, %122
  %304 = icmp ult <4 x ptr> %123, %124
  %305 = and <4 x i1> %303, %304
  %306 = icmp ult <4 x ptr> %133, %136
  %307 = icmp ult <4 x ptr> %127, %130
  %308 = and <4 x i1> %307, %306
  %bound1576.a = icmp ult ptr %i.p, %scevgep154
  %309 = icmp ult <4 x ptr> %146, %148
  %310 = icmp ult <4 x ptr> %138, %142
  %311 = and <4 x i1> %310, %309
  %312 = icmp ult <4 x ptr> %150, %154
  %313 = icmp ult <4 x ptr> %158, %160
  %314 = and <4 x i1> %312, %313
  %bound0611.a = icmp ult ptr %scevgep157.a, %scevgep163
  %bound1612.a = icmp ult ptr %i.p, %scevgep158
  %rdx.op = or <8 x i1> %244, %271                ; 2 uses
  %315 = shufflevector <4 x i1> %274, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %316 = shufflevector <4 x i1> %279, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %317 = or <8 x i1> %315, %316
  %318 = shufflevector <4 x i1> %282, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %319 = or <8 x i1> %317, %318
  %320 = shufflevector <4 x i1> %288, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %321 = or <8 x i1> %319, %320
  %322 = shufflevector <4 x i1> %291, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %323 = or <8 x i1> %321, %322
  %324 = shufflevector <4 x i1> %296, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %325 = or <8 x i1> %323, %324
  %326 = shufflevector <4 x i1> %299, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %327 = or <8 x i1> %325, %326
  %328 = shufflevector <4 x i1> %302, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %329 = or <8 x i1> %327, %328
  %330 = shufflevector <4 x i1> %305, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %331 = or <8 x i1> %329, %330
  %332 = shufflevector <4 x i1> %308, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %333 = or <8 x i1> %331, %332
  %334 = shufflevector <4 x i1> %311, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %335 = or <8 x i1> %333, %334
  %336 = shufflevector <4 x i1> %314, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %337 = or <8 x i1> %335, %336
  %338 = or <8 x i1> %337, %rdx.op
  %339 = shufflevector <8 x i1> %338, <8 x i1> %rdx.op, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %340 = bitcast <8 x i1> %339 to i8
  %341 = icmp ne i8 %340, 0
  %342 = shufflevector <4 x i1> %257, <4 x i1> %259, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %343 = shufflevector <4 x i1> %261, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %344 = shufflevector <16 x i1> %342, <16 x i1> %343, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %345 = shufflevector <4 x i1> %263, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %346 = shufflevector <2 x i1> %283, <2 x i1> poison, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %347 = insertelement <32 x i1> %346, i1 %bound0611.a, i64 30
  %348 = insertelement <32 x i1> %347, i1 %341, i64 31
  %349 = shufflevector <16 x i1> %344, <16 x i1> %345, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %350 = shufflevector <32 x i1> %349, <32 x i1> %348, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 60, i32 61, i32 62, i32 63>
  %351 = shufflevector <8 x i1> %265, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %352 = shufflevector <32 x i1> %350, <32 x i1> %351, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %353 = shufflevector <4 x i1> %267, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %354 = shufflevector <32 x i1> %352, <32 x i1> %353, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31>
  %355 = shufflevector <4 x i1> %258, <4 x i1> %260, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %356 = shufflevector <4 x i1> %262, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %357 = shufflevector <16 x i1> %355, <16 x i1> %356, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %358 = shufflevector <4 x i1> %264, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %359 = insertelement <32 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1460.a, i64 28
  %360 = insertelement <32 x i1> %359, i1 %bound1576.a, i64 29
  %361 = insertelement <32 x i1> %360, i1 %bound1612.a, i64 30
  %362 = shufflevector <16 x i1> %357, <16 x i1> %358, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %363 = shufflevector <32 x i1> %362, <32 x i1> %361, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 60, i32 61, i32 62, i32 63>
  %364 = shufflevector <8 x i1> %266, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %365 = shufflevector <32 x i1> %363, <32 x i1> %364, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %366 = shufflevector <4 x i1> %268, <4 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %367 = shufflevector <32 x i1> %365, <32 x i1> %366, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 28, i32 29, i32 30, i32 31>
  %368 = and <32 x i1> %354, %367
  %369 = bitcast <32 x i1> %368 to i32
  %370 = icmp ne i32 %369, 0
  %371 = insertelement <8 x i1> poison, i1 %bound0263.a, i64 6
  %372 = insertelement <8 x i1> %371, i1 %370, i64 7
  %373 = shufflevector <4 x i1> %252, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %374 = shufflevector <8 x i1> %373, <8 x i1> %372, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %375 = shufflevector <2 x i1> %256, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %376 = shufflevector <8 x i1> %374, <8 x i1> %375, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %377 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1256.a, i64 4
  %378 = insertelement <8 x i1> %377, i1 %bound1260.a, i64 5
  %379 = insertelement <8 x i1> %378, i1 %bound1264.a, i64 6
  %380 = shufflevector <4 x i1> %254, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %381 = shufflevector <8 x i1> %380, <8 x i1> %379, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %382 = and <8 x i1> %376, %381
  %383 = bitcast <8 x i1> %382 to i8
  %384 = icmp ne i8 %383, 0
  %385 = insertelement <8 x i1> poison, i1 %bound0235.a, i64 6
  %386 = insertelement <8 x i1> %385, i1 %384, i64 7
  %387 = shufflevector <4 x i1> %248, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %388 = shufflevector <8 x i1> %387, <8 x i1> %386, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %389 = shufflevector <2 x i1> %250, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %390 = shufflevector <8 x i1> %388, <8 x i1> %389, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %391 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1228.a, i64 4
  %392 = insertelement <8 x i1> %391, i1 %bound1232.a, i64 5
  %393 = insertelement <8 x i1> %392, i1 %bound1236.a, i64 6
  %394 = shufflevector <4 x i1> %249, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %395 = shufflevector <8 x i1> %394, <8 x i1> %393, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %396 = and <8 x i1> %390, %395
  %397 = bitcast <8 x i1> %396 to i8
  %398 = icmp ne i8 %397, 0
  %399 = bitcast <4 x i1> %247 to i4
  %400 = icmp ne i4 %399, 0
  %op.rdx = or i1 %400, %found.conflict209.a
  %op.rdx727 = or i1 %op.rdx, %398
  %n.vec = and i64 %234, -8                       ; 3 uses
  %i.av = shl i64 %n.vec, 1
  %broadcast.splatinsert617 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat618 = shufflevector <8 x i32> %broadcast.splatinsert617, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert619 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat620 = shufflevector <8 x i32> %broadcast.splatinsert619, <8 x i32> poison, <8 x i32> zeroinitializer ; 24 uses
  %cmp.n = icmp eq i64 %234, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge134.split:                             ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store ptr %i.u, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.az) #15
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store ptr %i.v, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bd) #15
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 176
  store ptr %i.w, ptr %i.bf, align 8, !tbaa !25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  store i32 %i.i, ptr %i.bg, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 76
  store i32 %i.l, ptr %i.bh, align 4, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  store i32 %i.i, ptr %i.bi, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 140
  store i32 %i.l, ptr %i.bj, align 4, !tbaa !23
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  store i32 %i.bk, ptr %i.bm, align 8, !tbaa !28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !29 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 68
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 132
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0127132 = phi i64 [ %i.fj, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.br = lshr exact i64 %.0127132, 1
  %i.bs = mul nuw nsw i64 %i.br, %i.j             ; 2 uses
  %i.bt = mul nuw i64 %.0127132, %i.j             ; 4 uses
  %i.bu = or disjoint i64 %.0127132, 1
  %i.bv = mul nuw i64 %i.bu, %i.j                 ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bt ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bt ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bt ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bv ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bv ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bv ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bv ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !12
  %i.ce = sub nsw i32 %.pre, %i.f
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.ce to float
  %i.cg = fpext reassoc nsz arcp contract afn float %i.cf to double ; 2 uses
  %i.ch = fmul reassoc nnan nsz arcp contract afn double %i.cg, 1.402000e+00
  %i.ci = fptosi double %i.ch to i32              ; 2 uses
  %i.cj = fmul reassoc nnan nsz arcp contract afn double %i.cg, 7.140000e-01 ; 2 uses
  %brmerge = select i1 %min.iters.check.a, i1 true, i1 %op.rdx727
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ci, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert615 = insertelement <8 x double> poison, double %i.cj, i64 0
  %broadcast.splat616 = shufflevector <8 x double> %broadcast.splatinsert615, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ck = shl nuw i64 %index, 1                   ; 8 uses
  %i.cl = add nuw nsw i64 %index, %i.bs           ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cl
  %wide.load = load <8 x i32>, ptr %i.cm, align 4, !tbaa !12, !alias.scope !78
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cl
  %wide.load621 = load <8 x i32>, ptr %i.cn, align 4, !tbaa !12, !alias.scope !79
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ck
  %wide.vec = load <16 x i32>, ptr %i.co, align 4, !tbaa !12, !alias.scope !80 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec622 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ck
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ck
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ck
  %i.cs = sub nsw <8 x i32> %wide.load, %broadcast.splat618
  %i.ct = sub nsw <8 x i32> %wide.load621, %broadcast.splat618
  %i.cu = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ct to <8 x float>
  %i.cv = fpext reassoc nsz arcp contract afn <8 x float> %i.cu to <8 x double> ; 2 uses
  %i.cw = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cv, splat (double 1.402000e+00)
  %i.cx = fptosi <8 x double> %i.cw to <8 x i32>  ; 3 uses
  %i.cy = add nsw <8 x i32> %strided.vec, %i.cx   ; 2 uses
  %i.cz = icmp sgt <8 x i32> %i.cy, %broadcast.splat620
  %i.da = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cy, <8 x i32> zeroinitializer)
  %i.db = select <8 x i1> %i.cz, <8 x i32> %broadcast.splat620, <8 x i32> %i.da
  %i.dc = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cs to <8 x float>
  %i.dd = fpext reassoc nsz arcp contract afn <8 x float> %i.dc to <8 x double> ; 2 uses
  %i.de = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dd, splat (double 3.440000e-01) ; 2 uses
  %i.df = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cv, splat (double 7.140000e-01)
  %i.dg = fadd reassoc nsz arcp contract afn <8 x double> %i.df, %i.de
  %i.dh = fptosi <8 x double> %i.dg to <8 x i32>  ; 3 uses
  %i.di = sub nsw <8 x i32> %strided.vec, %i.dh   ; 2 uses
  %i.dj = icmp sgt <8 x i32> %i.di, %broadcast.splat620
  %i.dk = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.di, <8 x i32> zeroinitializer)
  %i.dl = select <8 x i1> %i.dj, <8 x i32> %broadcast.splat620, <8 x i32> %i.dk
  %i.dm = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dd, splat (double 1.772000e+00)
  %i.dn = fptosi <8 x double> %i.dm to <8 x i32>  ; 4 uses
  %i.do = add nsw <8 x i32> %strided.vec, %i.dn   ; 2 uses
  %i.dp = icmp sgt <8 x i32> %i.do, %broadcast.splat620
  %i.dq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.do, <8 x i32> zeroinitializer)
  %i.dr = select <8 x i1> %i.dp, <8 x i32> %broadcast.splat620, <8 x i32> %i.dq
  %i.ds = add nsw <8 x i32> %strided.vec622, %i.cx ; 2 uses
  %i.dt = icmp sgt <8 x i32> %i.ds, %broadcast.splat620
  %i.du = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ds, <8 x i32> zeroinitializer)
  %i.dv = select <8 x i1> %i.dt, <8 x i32> %broadcast.splat620, <8 x i32> %i.du
  %interleaved.vec = shufflevector <8 x i32> %i.db, <8 x i32> %i.dv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.cp, align 4, !tbaa !12
  %i.dw = sub nsw <8 x i32> %strided.vec622, %i.dh ; 2 uses
  %i.dx = icmp sgt <8 x i32> %i.dw, %broadcast.splat620
  %i.dy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dw, <8 x i32> zeroinitializer)
  %i.dz = select <8 x i1> %i.dx, <8 x i32> %broadcast.splat620, <8 x i32> %i.dy
  %interleaved.vec623 = shufflevector <8 x i32> %i.dl, <8 x i32> %i.dz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec623, ptr %i.cq, align 4, !tbaa !12
  %i.ea = add nsw <8 x i32> %strided.vec622, %i.dn ; 2 uses
  %i.eb = icmp sgt <8 x i32> %i.ea, %broadcast.splat620
  %i.ec = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ea, <8 x i32> zeroinitializer)
  %i.ed = select <8 x i1> %i.eb, <8 x i32> %broadcast.splat620, <8 x i32> %i.ec
  %interleaved.vec624 = shufflevector <8 x i32> %i.dr, <8 x i32> %i.ed, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec624, ptr %i.cr, align 4, !tbaa !12
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ck
  %wide.vec625 = load <16 x i32>, ptr %i.ee, align 4, !tbaa !12, !alias.scope !81 ; 2 uses
  %strided.vec626 = shufflevector <16 x i32> %wide.vec625, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec627 = shufflevector <16 x i32> %wide.vec625, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ck
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ck
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ck
  %i.ei = add nsw <8 x i32> %strided.vec626, %i.cx ; 2 uses
  %i.ej = icmp sgt <8 x i32> %i.ei, %broadcast.splat620
  %i.ek = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ei, <8 x i32> zeroinitializer)
  %i.el = select <8 x i1> %i.ej, <8 x i32> %broadcast.splat620, <8 x i32> %i.ek
  %i.em = sub nsw <8 x i32> %strided.vec626, %i.dh ; 2 uses
  %i.en = icmp sgt <8 x i32> %i.em, %broadcast.splat620
  %i.eo = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.em, <8 x i32> zeroinitializer)
  %i.ep = select <8 x i1> %i.en, <8 x i32> %broadcast.splat620, <8 x i32> %i.eo
  %i.eq = add nsw <8 x i32> %strided.vec626, %i.dn ; 2 uses
  %i.er = icmp sgt <8 x i32> %i.eq, %broadcast.splat620
  %i.es = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eq, <8 x i32> zeroinitializer)
  %i.et = select <8 x i1> %i.er, <8 x i32> %broadcast.splat620, <8 x i32> %i.es
  %i.eu = add nsw <8 x i32> %strided.vec627, %broadcast.splat ; 2 uses
  %i.ev = icmp sgt <8 x i32> %i.eu, %broadcast.splat620
  %i.ew = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eu, <8 x i32> zeroinitializer)
  %i.ex = select <8 x i1> %i.ev, <8 x i32> %broadcast.splat620, <8 x i32> %i.ew
  %interleaved.vec628 = shufflevector <8 x i32> %i.el, <8 x i32> %i.ex, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec628, ptr %i.ef, align 4, !tbaa !12
  %i.ey = fadd reassoc nsz arcp contract afn <8 x double> %broadcast.splat616, %i.de
  %i.ez = fptosi <8 x double> %i.ey to <8 x i32>
  %i.fa = sub nsw <8 x i32> %strided.vec627, %i.ez ; 2 uses
  %i.fb = icmp sgt <8 x i32> %i.fa, %broadcast.splat620
  %i.fc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fa, <8 x i32> zeroinitializer)
  %i.fd = select <8 x i1> %i.fb, <8 x i32> %broadcast.splat620, <8 x i32> %i.fc
  %interleaved.vec629 = shufflevector <8 x i32> %i.ep, <8 x i32> %i.fd, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec629, ptr %i.eg, align 4, !tbaa !12
  %i.fe = add nsw <8 x i32> %strided.vec627, %i.dn ; 2 uses
  %i.ff = icmp sgt <8 x i32> %i.fe, %broadcast.splat620
  %i.fg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fe, <8 x i32> zeroinitializer)
  %i.fh = select <8 x i1> %i.ff, <8 x i32> %broadcast.splat620, <8 x i32> %i.fg
  %interleaved.vec630 = shufflevector <8 x i32> %i.et, <8 x i32> %i.fh, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec630, ptr %i.eh, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0131.ph = phi i64 [ %i.av, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fj = add nuw nsw i64 %.0127132, 2            ; 2 uses
  %i.fk = icmp samesign ult i64 %i.fj, %i.m
  br i1 %i.fk, label %.lr.ph, label %._crit_edge134.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0131 = phi i64 [ %i.ix, %scalar.ph ], [ %.0131.ph, %scalar.ph.preheader ] ; 10 uses
  %i.fl = lshr exact i64 %.0131, 1
  %i.fm = add nuw nsw i64 %i.fl, %i.bs            ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fm
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.0131 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12 ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0131 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0131 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0131 ; 2 uses
  %i.fw = sub nsw i32 %i.fo, %i.f
  %i.fx = sub nsw i32 %i.fq, %i.f
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %i.fx to float
  %i.fz = fpext reassoc nsz arcp contract afn float %i.fy to double ; 2 uses
  %i.ga = fmul reassoc nnan nsz arcp contract afn double %i.fz, 1.402000e+00
  %i.gb = fptosi double %i.ga to i32              ; 3 uses
  %i.gc = add nsw i32 %i.fs, %i.gb                ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, %i.g
  %i.ge = tail call i32 @llvm.smax.i32(i32 %i.gc, i32 0)
  %i.gf = select i1 %i.gd, i32 %i.g, i32 %i.ge
  store i32 %i.gf, ptr %i.ft, align 4, !tbaa !12
  %i.gg = sitofp reassoc nsz arcp contract afn i32 %i.fw to float
  %i.gh = fpext reassoc nsz arcp contract afn float %i.gg to double ; 2 uses
  %i.gi = fmul reassoc nnan nsz arcp contract afn double %i.gh, 3.440000e-01 ; 2 uses
  %i.gj = fmul reassoc nnan nsz arcp contract afn double %i.fz, 7.140000e-01
  %i.gk = fadd reassoc nsz arcp contract afn double %i.gj, %i.gi
  %i.gl = fptosi double %i.gk to i32              ; 3 uses
  %i.gm = sub nsw i32 %i.fs, %i.gl                ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, %i.g
  %i.go = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 0)
  %i.gp = select i1 %i.gn, i32 %i.g, i32 %i.go
  store i32 %i.gp, ptr %i.fu, align 4, !tbaa !12
  %i.gq = fmul reassoc nnan nsz arcp contract afn double %i.gh, 1.772000e+00
  %i.gr = fptosi double %i.gq to i32              ; 4 uses
  %i.gs = add nsw i32 %i.fs, %i.gr                ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, %i.g
  %i.gu = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 0)
  %i.gv = select i1 %i.gt, i32 %i.g, i32 %i.gu
  store i32 %i.gv, ptr %i.fv, align 4, !tbaa !12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !12 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.hb = add nsw i32 %i.gx, %i.gb                ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, %i.g
  %i.hd = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.he = select i1 %i.hc, i32 %i.g, i32 %i.hd
  store i32 %i.he, ptr %i.gy, align 4, !tbaa !12
  %i.hf = sub nsw i32 %i.gx, %i.gl                ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, %i.g
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hf, i32 0)
  %i.hi = select i1 %i.hg, i32 %i.g, i32 %i.hh
  store i32 %i.hi, ptr %i.gz, align 4, !tbaa !12
  %i.hj = add nsw i32 %i.gx, %i.gr                ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, %i.g
  %i.hl = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 0)
  %i.hm = select i1 %i.hk, i32 %i.g, i32 %i.hl
  store i32 %i.hm, ptr %i.ha, align 4, !tbaa !12
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0131 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !12 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0131 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.0131 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0131 ; 2 uses
  %i.hs = add nsw i32 %i.ho, %i.gb                ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, %i.g
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 0)
  %i.hv = select i1 %i.ht, i32 %i.g, i32 %i.hu
  store i32 %i.hv, ptr %i.hp, align 4, !tbaa !12
  %i.hw = sub nsw i32 %i.ho, %i.gl                ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, %i.g
  %i.hy = tail call i32 @llvm.smax.i32(i32 %i.hw, i32 0)
  %i.hz = select i1 %i.hx, i32 %i.g, i32 %i.hy
  store i32 %i.hz, ptr %i.hq, align 4, !tbaa !12
end_hunk_0

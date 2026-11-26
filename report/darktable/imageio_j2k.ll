Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_j2k?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@fclose
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
  %i.j = zext i32 %i.i to i64                     ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = mul nuw i64 %i.m, %i.j                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 3 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 13 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 13 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 13 uses
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
  %i.ad = lshr i64 %i.ac, 1                       ; 2 uses
  %1 = shl i64 %i.ad, 3
  %2 = or disjoint i64 %1, 4
  %3 = mul i64 %2, %i.j
  %i.ae = shl nuw nsw i64 %i.j, 2
  %i.af = add nsw i64 %i.ae, -4
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = add i64 %3, %i.ag                       ; 2 uses
  %i.ai = add i64 %i.ah, 8                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ai ; 3 uses
  %i.aj = shl nuw nsw i64 %i.j, 2                 ; 4 uses
  %4 = add nuw nsw i64 %i.aj, 4                   ; 3 uses
  %scevgep226 = getelementptr i8, ptr %i.w, i64 %4 ; 3 uses
  %i.ak = add i64 %i.ah, 4                        ; 3 uses
  %scevgep227 = getelementptr i8, ptr %i.w, i64 %i.ak ; 3 uses
  %scevgep228 = getelementptr i8, ptr %i.w, i64 %i.aj ; 3 uses
  %5 = mul i64 %i.ad, %i.j
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %i.ag                          ; 2 uses
  %i.al = add i64 %7, 8                           ; 3 uses
  %scevgep229 = getelementptr i8, ptr %i.w, i64 %i.al ; 3 uses
  %scevgep230 = getelementptr i8, ptr %i.w, i64 4 ; 3 uses
  %8 = or disjoint i64 %7, 4                      ; 3 uses
  %scevgep231 = getelementptr i8, ptr %i.w, i64 %8
  %scevgep232 = getelementptr i8, ptr %i.v, i64 %i.ai ; 3 uses
  %scevgep233 = getelementptr i8, ptr %i.v, i64 %4 ; 3 uses
  %scevgep234 = getelementptr i8, ptr %i.v, i64 %i.ak ; 3 uses
  %scevgep235 = getelementptr i8, ptr %i.v, i64 %i.aj ; 3 uses
  %scevgep236 = getelementptr i8, ptr %i.v, i64 %i.al ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.v, i64 4 ; 3 uses
  %scevgep238 = getelementptr i8, ptr %i.v, i64 %8
  %scevgep239 = getelementptr i8, ptr %i.u, i64 %i.ai ; 3 uses
  %scevgep240 = getelementptr i8, ptr %i.u, i64 %4 ; 3 uses
  %scevgep241 = getelementptr i8, ptr %i.u, i64 %i.ak ; 2 uses
  %scevgep242 = getelementptr i8, ptr %i.u, i64 %i.aj ; 3 uses
  %scevgep243 = getelementptr i8, ptr %i.u, i64 %i.al ; 2 uses
  %scevgep244 = getelementptr i8, ptr %i.u, i64 4 ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.u, i64 %8
  %9 = insertelement <4 x ptr> poison, ptr %scevgep244, i64 0
  %10 = insertelement <4 x ptr> %9, ptr %scevgep242, i64 1
  %11 = insertelement <4 x ptr> %10, ptr %scevgep240, i64 2
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %13 = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %scevgep242, i64 1
  %15 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %16 = insertelement <4 x ptr> poison, ptr %scevgep243, i64 0
  %17 = insertelement <4 x ptr> %16, ptr %scevgep241, i64 1 ; 2 uses
  %18 = insertelement <4 x ptr> %17, ptr %scevgep239, i64 2
  %19 = shufflevector <4 x ptr> %18, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %20 = shufflevector <4 x ptr> %17, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %21 = insertelement <2 x ptr> %20, ptr %scevgep245, i64 0
  %22 = shufflevector <2 x ptr> %21, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %23 = insertelement <4 x ptr> poison, ptr %scevgep242, i64 0
  %24 = insertelement <4 x ptr> %23, ptr %i.v, i64 1
  %25 = shufflevector <4 x ptr> %24, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %26 = insertelement <4 x ptr> poison, ptr %scevgep239, i64 0
  %27 = insertelement <4 x ptr> %26, ptr %scevgep236, i64 1
  %28 = insertelement <4 x ptr> %27, ptr %scevgep234, i64 2
  %i.am = insertelement <4 x ptr> %28, ptr %scevgep232, i64 3
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep240, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep237, i64 1
  %29 = insertelement <4 x ptr> %i.ao, ptr %scevgep235, i64 2
  %i.ap = insertelement <4 x ptr> %29, ptr %scevgep233, i64 3
  %30 = insertelement <4 x ptr> poison, ptr %scevgep241, i64 0
  %i.aq = insertelement <4 x ptr> %30, ptr %scevgep238, i64 1
  %31 = shufflevector <4 x ptr> %i.aq, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep235, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.w, i64 1
  %32 = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.at = insertelement <4 x ptr> poison, ptr %scevgep232, i64 0
  %33 = insertelement <4 x ptr> %i.at, ptr %scevgep229, i64 1
  %i.au = insertelement <4 x ptr> %33, ptr %scevgep227, i64 2
  %i.av = insertelement <4 x ptr> %i.au, ptr %scevgep, i64 3
  %i.aw = insertelement <4 x ptr> poison, ptr %scevgep233, i64 0
  %34 = insertelement <4 x ptr> %i.aw, ptr %scevgep230, i64 1
  %i.ax = insertelement <4 x ptr> %34, ptr %scevgep228, i64 2
  %35 = insertelement <4 x ptr> %i.ax, ptr %scevgep226, i64 3
  %36 = insertelement <4 x ptr> poison, ptr %scevgep234, i64 0
  %37 = insertelement <4 x ptr> %36, ptr %scevgep231, i64 1
  %38 = shufflevector <4 x ptr> %37, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ay = add nsw i64 %i.j, -1
  %i.az = lshr i64 %i.ay, 1
  %i.ba = add nuw i64 %i.az, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 15
  %39 = icmp ult <4 x ptr> %15, %19
  %40 = icmp ult <4 x ptr> %12, %22
  %41 = and <4 x i1> %40, %39
  %bound0257 = icmp ult ptr %scevgep244, %scevgep239
  %bound1258 = icmp ult ptr %scevgep240, %scevgep243
  %found.conflict259 = and i1 %bound0257, %bound1258
  %42 = icmp ult <4 x ptr> %25, %i.am
  %i.bb = icmp ult <4 x ptr> %i.ap, %31
  %i.bc = and <4 x i1> %42, %i.bb
  %bound0277 = icmp ult ptr %scevgep237, %scevgep234
  %bound1278 = icmp ult ptr %scevgep235, %scevgep236
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0281 = icmp ult ptr %scevgep237, %scevgep232
  %bound1282 = icmp ult ptr %scevgep233, %scevgep236
  %found.conflict283 = and i1 %bound0281, %bound1282
  %43 = icmp ult <4 x ptr> %32, %i.av
  %i.bd = icmp ult <4 x ptr> %35, %38
  %i.be = and <4 x i1> %43, %i.bd
  %bound0301 = icmp ult ptr %scevgep230, %scevgep227
  %bound1302 = icmp ult ptr %scevgep228, %scevgep229
  %found.conflict303 = and i1 %bound0301, %bound1302
  %bound0305 = icmp ult ptr %scevgep230, %scevgep
  %bound1306 = icmp ult ptr %scevgep226, %scevgep229
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0309 = icmp ult ptr %scevgep228, %scevgep
  %bound1310 = icmp ult ptr %scevgep226, %scevgep227
  %found.conflict311 = and i1 %bound0309, %bound1310
  %rdx.op = or <4 x i1> %41, %i.bc
  %rdx.op329 = or <4 x i1> %rdx.op, %i.be
  %i.bf = bitcast <4 x i1> %rdx.op329 to i4
  %44 = icmp ne i4 %i.bf, 0
  %op.rdx = or i1 %44, %found.conflict259
  %op.rdx330 = or i1 %found.conflict279, %found.conflict283
  %op.rdx331 = or i1 %found.conflict303, %found.conflict307
  %op.rdx332 = or i1 %op.rdx, %op.rdx330
  %op.rdx333 = or i1 %op.rdx331, %found.conflict311
  %op.rdx334 = or i1 %op.rdx332, %op.rdx333
  %n.vec = and i64 %i.ba, -8                      ; 3 uses
  %i.bg = shl i64 %n.vec, 1
  %broadcast.splatinsert315 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat316 = shufflevector <8 x i32> %broadcast.splatinsert315, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317, <8 x i32> poison, <8 x i32> zeroinitializer ; 24 uses
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge134.split:                             ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.u, ptr %i.bi, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bk) #15
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store ptr %i.v, ptr %i.bm, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bo) #15
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  store ptr %i.w, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  store i32 %i.i, ptr %i.br, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 76
  store i32 %i.l, ptr %i.bs, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 136
  store i32 %i.i, ptr %i.bt, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 140
  store i32 %i.l, ptr %i.bu, align 4, !tbaa !23
  %i.bv = load i32, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  store i32 %i.bv, ptr %i.bx, align 8, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 68
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 132
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0127132 = phi i64 [ %i.fu, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.cc = lshr exact i64 %.0127132, 1
  %i.cd = mul nuw nsw i64 %i.cc, %i.j             ; 2 uses
  %i.ce = mul nuw i64 %.0127132, %i.j             ; 4 uses
  %i.cf = or disjoint i64 %.0127132, 1
  %i.cg = mul nuw i64 %i.cf, %i.j                 ; 4 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ce ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ce ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.ce ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ce ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.cg ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cg ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cg ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.cg ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !12
  %i.cp = sub nsw i32 %.pre, %i.f
  %i.cq = sitofp reassoc nsz arcp contract afn i32 %i.cp to float
  %i.cr = fpext reassoc nsz arcp contract afn float %i.cq to double ; 2 uses
  %i.cs = fmul reassoc nnan nsz arcp contract afn double %i.cr, 1.402000e+00
  %i.ct = fptosi double %i.cs to i32              ; 2 uses
  %i.cu = fmul reassoc nnan nsz arcp contract afn double %i.cr, 7.140000e-01 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx334
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ct, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x double> poison, double %i.cu, i64 0
  %broadcast.splat314 = shufflevector <8 x double> %broadcast.splatinsert313, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cv = shl nuw i64 %index, 1                   ; 8 uses
  %i.cw = add nuw nsw i64 %index, %i.cd           ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cw
  %wide.load = load <8 x i32>, ptr %i.cx, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.cw
  %wide.load319 = load <8 x i32>, ptr %i.cy, align 4, !tbaa !12
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cv
  %wide.vec = load <16 x i32>, ptr %i.cz, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec320 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cv
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cv
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cv
  %i.dd = sub nsw <8 x i32> %wide.load, %broadcast.splat316
  %i.de = sub nsw <8 x i32> %wide.load319, %broadcast.splat316
  %i.df = sitofp reassoc nsz arcp contract afn <8 x i32> %i.de to <8 x float>
  %i.dg = fpext reassoc nsz arcp contract afn <8 x float> %i.df to <8 x double> ; 2 uses
  %i.dh = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dg, splat (double 1.402000e+00)
  %i.di = fptosi <8 x double> %i.dh to <8 x i32>  ; 3 uses
  %i.dj = add nsw <8 x i32> %strided.vec, %i.di   ; 2 uses
  %i.dk = icmp sgt <8 x i32> %i.dj, %broadcast.splat318
  %i.dl = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dj, <8 x i32> zeroinitializer)
  %i.dm = select <8 x i1> %i.dk, <8 x i32> %broadcast.splat318, <8 x i32> %i.dl
  %i.dn = sitofp reassoc nsz arcp contract afn <8 x i32> %i.dd to <8 x float>
  %i.do = fpext reassoc nsz arcp contract afn <8 x float> %i.dn to <8 x double> ; 2 uses
  %i.dp = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.do, splat (double 3.440000e-01) ; 2 uses
  %i.dq = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dg, splat (double 7.140000e-01)
  %i.dr = fadd reassoc nsz arcp contract afn <8 x double> %i.dq, %i.dp
  %i.ds = fptosi <8 x double> %i.dr to <8 x i32>  ; 3 uses
  %i.dt = sub nsw <8 x i32> %strided.vec, %i.ds   ; 2 uses
  %i.du = icmp sgt <8 x i32> %i.dt, %broadcast.splat318
  %i.dv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dt, <8 x i32> zeroinitializer)
  %i.dw = select <8 x i1> %i.du, <8 x i32> %broadcast.splat318, <8 x i32> %i.dv
  %i.dx = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.do, splat (double 1.772000e+00)
  %i.dy = fptosi <8 x double> %i.dx to <8 x i32>  ; 4 uses
  %i.dz = add nsw <8 x i32> %strided.vec, %i.dy   ; 2 uses
  %i.ea = icmp sgt <8 x i32> %i.dz, %broadcast.splat318
  %i.eb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dz, <8 x i32> zeroinitializer)
  %i.ec = select <8 x i1> %i.ea, <8 x i32> %broadcast.splat318, <8 x i32> %i.eb
  %i.ed = add nsw <8 x i32> %strided.vec320, %i.di ; 2 uses
  %i.ee = icmp sgt <8 x i32> %i.ed, %broadcast.splat318
  %i.ef = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ed, <8 x i32> zeroinitializer)
  %i.eg = select <8 x i1> %i.ee, <8 x i32> %broadcast.splat318, <8 x i32> %i.ef
  %interleaved.vec = shufflevector <8 x i32> %i.dm, <8 x i32> %i.eg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.da, align 4, !tbaa !12
  %i.eh = sub nsw <8 x i32> %strided.vec320, %i.ds ; 2 uses
  %i.ei = icmp sgt <8 x i32> %i.eh, %broadcast.splat318
  %i.ej = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eh, <8 x i32> zeroinitializer)
  %i.ek = select <8 x i1> %i.ei, <8 x i32> %broadcast.splat318, <8 x i32> %i.ej
  %interleaved.vec321 = shufflevector <8 x i32> %i.dw, <8 x i32> %i.ek, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec321, ptr %i.db, align 4, !tbaa !12
  %i.el = add nsw <8 x i32> %strided.vec320, %i.dy ; 2 uses
  %i.em = icmp sgt <8 x i32> %i.el, %broadcast.splat318
  %i.en = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.el, <8 x i32> zeroinitializer)
  %i.eo = select <8 x i1> %i.em, <8 x i32> %broadcast.splat318, <8 x i32> %i.en
  %interleaved.vec322 = shufflevector <8 x i32> %i.ec, <8 x i32> %i.eo, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec322, ptr %i.dc, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cv
  %wide.vec323 = load <16 x i32>, ptr %i.ep, align 4, !tbaa !12 ; 2 uses
  %strided.vec324 = shufflevector <16 x i32> %wide.vec323, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec325 = shufflevector <16 x i32> %wide.vec323, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cv
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cv
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cv
  %i.et = add nsw <8 x i32> %strided.vec324, %i.di ; 2 uses
  %i.eu = icmp sgt <8 x i32> %i.et, %broadcast.splat318
  %i.ev = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.et, <8 x i32> zeroinitializer)
  %i.ew = select <8 x i1> %i.eu, <8 x i32> %broadcast.splat318, <8 x i32> %i.ev
  %i.ex = sub nsw <8 x i32> %strided.vec324, %i.ds ; 2 uses
  %i.ey = icmp sgt <8 x i32> %i.ex, %broadcast.splat318
  %i.ez = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ex, <8 x i32> zeroinitializer)
  %i.fa = select <8 x i1> %i.ey, <8 x i32> %broadcast.splat318, <8 x i32> %i.ez
  %i.fb = add nsw <8 x i32> %strided.vec324, %i.dy ; 2 uses
  %i.fc = icmp sgt <8 x i32> %i.fb, %broadcast.splat318
  %i.fd = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fb, <8 x i32> zeroinitializer)
  %i.fe = select <8 x i1> %i.fc, <8 x i32> %broadcast.splat318, <8 x i32> %i.fd
  %i.ff = add nsw <8 x i32> %strided.vec325, %broadcast.splat ; 2 uses
  %i.fg = icmp sgt <8 x i32> %i.ff, %broadcast.splat318
  %i.fh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ff, <8 x i32> zeroinitializer)
  %i.fi = select <8 x i1> %i.fg, <8 x i32> %broadcast.splat318, <8 x i32> %i.fh
  %interleaved.vec326 = shufflevector <8 x i32> %i.ew, <8 x i32> %i.fi, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec326, ptr %i.eq, align 4, !tbaa !12
  %i.fj = fadd reassoc nsz arcp contract afn <8 x double> %broadcast.splat314, %i.dp
  %i.fk = fptosi <8 x double> %i.fj to <8 x i32>
  %i.fl = sub nsw <8 x i32> %strided.vec325, %i.fk ; 2 uses
  %i.fm = icmp sgt <8 x i32> %i.fl, %broadcast.splat318
  %i.fn = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fl, <8 x i32> zeroinitializer)
  %i.fo = select <8 x i1> %i.fm, <8 x i32> %broadcast.splat318, <8 x i32> %i.fn
  %interleaved.vec327 = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fo, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec327, ptr %i.er, align 4, !tbaa !12
  %i.fp = add nsw <8 x i32> %strided.vec325, %i.dy ; 2 uses
  %i.fq = icmp sgt <8 x i32> %i.fp, %broadcast.splat318
  %i.fr = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fp, <8 x i32> zeroinitializer)
  %i.fs = select <8 x i1> %i.fq, <8 x i32> %broadcast.splat318, <8 x i32> %i.fr
  %interleaved.vec328 = shufflevector <8 x i32> %i.fe, <8 x i32> %i.fs, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec328, ptr %i.es, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0131.ph = phi i64 [ %i.bg, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fu = add nuw nsw i64 %.0127132, 2            ; 2 uses
  %i.fv = icmp samesign ult i64 %i.fu, %i.m
  br i1 %i.fv, label %.lr.ph, label %._crit_edge134.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0131 = phi i64 [ %i.ji, %scalar.ph ], [ %.0131.ph, %scalar.ph.preheader ] ; 10 uses
  %i.fw = lshr exact i64 %.0131, 1
  %i.fx = add nuw nsw i64 %i.fw, %i.cd            ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fx
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !12
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0131 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12 ; 3 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0131 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0131 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0131 ; 2 uses
  %i.gh = sub nsw i32 %i.fz, %i.f
  %i.gi = sub nsw i32 %i.gb, %i.f
  %i.gj = sitofp reassoc nsz arcp contract afn i32 %i.gi to float
  %i.gk = fpext reassoc nsz arcp contract afn float %i.gj to double ; 2 uses
  %i.gl = fmul reassoc nnan nsz arcp contract afn double %i.gk, 1.402000e+00
  %i.gm = fptosi double %i.gl to i32              ; 3 uses
  %i.gn = add nsw i32 %i.gd, %i.gm                ; 2 uses
  %i.go = icmp sgt i32 %i.gn, %i.g
  %i.gp = tail call i32 @llvm.smax.i32(i32 %i.gn, i32 0)
  %i.gq = select i1 %i.go, i32 %i.g, i32 %i.gp
  store i32 %i.gq, ptr %i.ge, align 4, !tbaa !12
  %i.gr = sitofp reassoc nsz arcp contract afn i32 %i.gh to float
  %i.gs = fpext reassoc nsz arcp contract afn float %i.gr to double ; 2 uses
  %i.gt = fmul reassoc nnan nsz arcp contract afn double %i.gs, 3.440000e-01 ; 2 uses
  %i.gu = fmul reassoc nnan nsz arcp contract afn double %i.gk, 7.140000e-01
  %i.gv = fadd reassoc nsz arcp contract afn double %i.gu, %i.gt
  %i.gw = fptosi double %i.gv to i32              ; 3 uses
  %i.gx = sub nsw i32 %i.gd, %i.gw                ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, %i.g
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gx, i32 0)
  %i.ha = select i1 %i.gy, i32 %i.g, i32 %i.gz
  store i32 %i.ha, ptr %i.gf, align 4, !tbaa !12
  %i.hb = fmul reassoc nnan nsz arcp contract afn double %i.gs, 1.772000e+00
  %i.hc = fptosi double %i.hb to i32              ; 4 uses
  %i.hd = add nsw i32 %i.gd, %i.hc                ; 2 uses
  %i.he = icmp sgt i32 %i.hd, %i.g
  %i.hf = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 0)
  %i.hg = select i1 %i.he, i32 %i.g, i32 %i.hf
  store i32 %i.hg, ptr %i.gg, align 4, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !12 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.hm = add nsw i32 %i.hi, %i.gm                ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, %i.g
  %i.ho = tail call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.hp = select i1 %i.hn, i32 %i.g, i32 %i.ho
  store i32 %i.hp, ptr %i.hj, align 4, !tbaa !12
  %i.hq = sub nsw i32 %i.hi, %i.gw                ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, %i.g
  %i.hs = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 0)
  %i.ht = select i1 %i.hr, i32 %i.g, i32 %i.hs
  store i32 %i.ht, ptr %i.hk, align 4, !tbaa !12
  %i.hu = add nsw i32 %i.hi, %i.hc                ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, %i.g
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 0)
  %i.hx = select i1 %i.hv, i32 %i.g, i32 %i.hw
  store i32 %i.hx, ptr %i.hl, align 4, !tbaa !12
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0131 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !12 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0131 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0131 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0131 ; 2 uses
  %i.id = add nsw i32 %i.hz, %i.gm                ; 2 uses
  %i.ie = icmp sgt i32 %i.id, %i.g
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.id, i32 0)
  %i.ig = select i1 %i.ie, i32 %i.g, i32 %i.if
  store i32 %i.ig, ptr %i.ia, align 4, !tbaa !12
  %i.ih = sub nsw i32 %i.hz, %i.gw                ; 2 uses
  %i.ii = icmp sgt i32 %i.ih, %i.g
  %i.ij = tail call i32 @llvm.smax.i32(i32 %i.ih, i32 0)
  %i.ik = select i1 %i.ii, i32 %i.g, i32 %i.ij
  store i32 %i.ik, ptr %i.ib, align 4, !tbaa !12
  %i.il = add nsw i32 %i.hz, %i.hc                ; 2 uses
  %i.im = icmp sgt i32 %i.il, %i.g
  %i.in = tail call i32 @llvm.smax.i32(i32 %i.il, i32 0)
  %i.io = select i1 %i.im, i32 %i.g, i32 %i.in
  store i32 %i.io, ptr %i.ic, align 4, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !12 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.it = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.iu = add nsw i32 %i.iq, %i.ct                ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, %i.g
  %i.iw = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 0)
  %i.ix = select i1 %i.iv, i32 %i.g, i32 %i.iw
  store i32 %i.ix, ptr %i.ir, align 4, !tbaa !12
  %i.iy = fadd reassoc nsz arcp contract afn double %i.cu, %i.gt
  %i.iz = fptosi double %i.iy to i32
  %i.ja = sub nsw i32 %i.iq, %i.iz                ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, %i.g
  %i.jc = tail call i32 @llvm.smax.i32(i32 %i.ja, i32 0)
  %i.jd = select i1 %i.jb, i32 %i.g, i32 %i.jc
  store i32 %i.jd, ptr %i.is, align 4, !tbaa !12
  %i.je = add nsw i32 %i.iq, %i.hc                ; 2 uses
  %i.jf = icmp sgt i32 %i.je, %i.g
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.je, i32 0)
  %i.jh = select i1 %i.jf, i32 %i.g, i32 %i.jg
  store i32 %i.jh, ptr %i.it, align 4, !tbaa !12
  %i.ji = add nuw nsw i64 %.0131, 2               ; 2 uses
  %i.jj = icmp samesign ult i64 %i.ji, %i.j
  br i1 %i.jj, label %scalar.ph, label %._crit_edge, !llvm.loop !72

bb.c:                                             ; preds = %._crit_edge134.split, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sycc422_to_rgb(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1                     ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 5 uses
  %i.j = zext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23   ; 4 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = mul nuw i64 %i.m, %i.j                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 4 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 4 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 4 uses
  %i.x = icmp ne ptr %i.u, null
  %i.y = icmp ne ptr %i.v, null
  %or.cond = and i1 %i.x, %i.y
  %i.z = icmp ne ptr %i.w, null
  %or.cond3 = and i1 %or.cond, %i.z
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.aa = icmp ne i32 %i.l, 0
  %i.ab = icmp ne i32 %i.i, 0
  %or.cond100 = and i1 %i.aa, %i.ab
  br i1 %or.cond100, label %.lr.ph.preheader, label %._crit_edge99.split

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ac = add nsw i64 %i.j, -1
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw i64 %i.ad, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 15
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.af = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert104 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat105 = shufflevector <8 x i32> %broadcast.splatinsert104, <8 x i32> poison, <8 x i32> zeroinitializer ; 12 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge99.split:                              ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store ptr %i.u, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.aj) #15
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store ptr %i.v, ptr %i.al, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 176
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.an) #15
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  store ptr %i.w, ptr %i.ap, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store i32 %i.i, ptr %i.aq, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 76
  store i32 %i.l, ptr %i.ar, align 4, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  store i32 %i.i, ptr %i.as, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 140
  store i32 %i.l, ptr %i.at, align 4, !tbaa !23
  %i.au = load i32, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store i32 %i.au, ptr %i.av, align 8, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  store i32 %i.au, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 132
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.09297 = phi i64 [ %i.db, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bb = mul nuw i64 %.09297, %i.j               ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bb ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bb ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.bg = shl nuw i64 %index, 1                   ; 4 uses
  %i.bh = add nuw i64 %index, %i.bb               ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bh
  %wide.load = load <8 x i32>, ptr %i.bi, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bh
  %wide.load106 = load <8 x i32>, ptr %i.bj, align 4, !tbaa !12
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bg
  %wide.vec = load <16 x i32>, ptr %i.bk, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec107 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bg
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  %i.bo = sub nsw <8 x i32> %wide.load, %broadcast.splat
  %i.bp = sub nsw <8 x i32> %wide.load106, %broadcast.splat
  %i.bq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bp to <8 x float>
  %i.br = fpext reassoc nsz arcp contract afn <8 x float> %i.bq to <8 x double> ; 2 uses
  %i.bs = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.br, splat (double 1.402000e+00)
  %i.bt = fptosi <8 x double> %i.bs to <8 x i32>  ; 2 uses
  %i.bu = add nsw <8 x i32> %strided.vec, %i.bt   ; 2 uses
  %i.bv = icmp sgt <8 x i32> %i.bu, %broadcast.splat105
  %i.bw = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bu, <8 x i32> zeroinitializer)
  %i.bx = select <8 x i1> %i.bv, <8 x i32> %broadcast.splat105, <8 x i32> %i.bw
  %i.by = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bo to <8 x float>
  %i.bz = fpext reassoc nsz arcp contract afn <8 x float> %i.by to <8 x double> ; 2 uses
  %i.ca = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.bz, splat (double 3.440000e-01)
  %i.cb = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.br, splat (double 7.140000e-01)
  %i.cc = fadd reassoc nsz arcp contract afn <8 x double> %i.cb, %i.ca
  %i.cd = fptosi <8 x double> %i.cc to <8 x i32>  ; 2 uses
  %i.ce = sub nsw <8 x i32> %strided.vec, %i.cd   ; 2 uses
  %i.cf = icmp sgt <8 x i32> %i.ce, %broadcast.splat105
  %i.cg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ce, <8 x i32> zeroinitializer)
  %i.ch = select <8 x i1> %i.cf, <8 x i32> %broadcast.splat105, <8 x i32> %i.cg
  %i.ci = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.bz, splat (double 1.772000e+00)
  %i.cj = fptosi <8 x double> %i.ci to <8 x i32>  ; 2 uses
  %i.ck = add nsw <8 x i32> %strided.vec, %i.cj   ; 2 uses
  %i.cl = icmp sgt <8 x i32> %i.ck, %broadcast.splat105
  %i.cm = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ck, <8 x i32> zeroinitializer)
  %i.cn = select <8 x i1> %i.cl, <8 x i32> %broadcast.splat105, <8 x i32> %i.cm
  %i.co = add nsw <8 x i32> %strided.vec107, %i.bt ; 2 uses
  %i.cp = icmp sgt <8 x i32> %i.co, %broadcast.splat105
  %i.cq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.co, <8 x i32> zeroinitializer)
  %i.cr = select <8 x i1> %i.cp, <8 x i32> %broadcast.splat105, <8 x i32> %i.cq
  %interleaved.vec = shufflevector <8 x i32> %i.bx, <8 x i32> %i.cr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.bl, align 4, !tbaa !12
  %i.cs = sub nsw <8 x i32> %strided.vec107, %i.cd ; 2 uses
  %i.ct = icmp sgt <8 x i32> %i.cs, %broadcast.splat105
  %i.cu = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cs, <8 x i32> zeroinitializer)
  %i.cv = select <8 x i1> %i.ct, <8 x i32> %broadcast.splat105, <8 x i32> %i.cu
  %interleaved.vec108 = shufflevector <8 x i32> %i.ch, <8 x i32> %i.cv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec108, ptr %i.bm, align 4, !tbaa !12
  %i.cw = add nsw <8 x i32> %strided.vec107, %i.cj ; 2 uses
  %i.cx = icmp sgt <8 x i32> %i.cw, %broadcast.splat105
  %i.cy = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cw, <8 x i32> zeroinitializer)
  %i.cz = select <8 x i1> %i.cx, <8 x i32> %broadcast.splat105, <8 x i32> %i.cy
  %interleaved.vec109 = shufflevector <8 x i32> %i.cn, <8 x i32> %i.cz, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec109, ptr %i.bn, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.096.ph = phi i64 [ 0, %.lr.ph ], [ %i.af, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.db = add nuw nsw i64 %.09297, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.db, %i.m
  br i1 %exitcond.not, label %._crit_edge99.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.096 = phi i64 [ %i.fe, %scalar.ph ], [ %.096.ph, %scalar.ph.preheader ] ; 6 uses
  %i.dc = lshr exact i64 %.096, 1
  %i.dd = add nuw i64 %i.dc, %i.bb                ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dd
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !12
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.096 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !12 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.096 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.096 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.096 ; 2 uses
  %i.dn = sub nsw i32 %i.df, %i.f
  %i.do = sub nsw i32 %i.dh, %i.f
  %i.dp = sitofp reassoc nsz arcp contract afn i32 %i.do to float
  %i.dq = fpext reassoc nsz arcp contract afn float %i.dp to double ; 2 uses
  %i.dr = fmul reassoc nnan nsz arcp contract afn double %i.dq, 1.402000e+00
  %i.ds = fptosi double %i.dr to i32              ; 2 uses
  %i.dt = add nsw i32 %i.dj, %i.ds                ; 2 uses
  %i.du = icmp sgt i32 %i.dt, %i.g
  %i.dv = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.dw = select i1 %i.du, i32 %i.g, i32 %i.dv
  store i32 %i.dw, ptr %i.dk, align 4, !tbaa !12
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.dn to float
  %i.dy = fpext reassoc nsz arcp contract afn float %i.dx to double ; 2 uses
  %i.dz = fmul reassoc nnan nsz arcp contract afn double %i.dy, 3.440000e-01
  %i.ea = fmul reassoc nnan nsz arcp contract afn double %i.dq, 7.140000e-01
  %i.eb = fadd reassoc nsz arcp contract afn double %i.ea, %i.dz
  %i.ec = fptosi double %i.eb to i32              ; 2 uses
  %i.ed = sub nsw i32 %i.dj, %i.ec                ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, %i.g
  %i.ef = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 0)
  %i.eg = select i1 %i.ee, i32 %i.g, i32 %i.ef
  store i32 %i.eg, ptr %i.dl, align 4, !tbaa !12
  %i.eh = fmul reassoc nnan nsz arcp contract afn double %i.dy, 1.772000e+00
  %i.ei = fptosi double %i.eh to i32              ; 2 uses
  %i.ej = add nsw i32 %i.dj, %i.ei                ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, %i.g
  %i.el = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 0)
  %i.em = select i1 %i.ek, i32 %i.g, i32 %i.el
  store i32 %i.em, ptr %i.dm, align 4, !tbaa !12
  %i.en = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !12 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.es = add nsw i32 %i.eo, %i.ds                ; 2 uses
  %i.et = icmp sgt i32 %i.es, %i.g
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.es, i32 0)
  %i.ev = select i1 %i.et, i32 %i.g, i32 %i.eu
  store i32 %i.ev, ptr %i.ep, align 4, !tbaa !12
  %i.ew = sub nsw i32 %i.eo, %i.ec                ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, %i.g
  %i.ey = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 0)
  %i.ez = select i1 %i.ex, i32 %i.g, i32 %i.ey
  store i32 %i.ez, ptr %i.eq, align 4, !tbaa !12
  %i.fa = add nsw i32 %i.eo, %i.ei                ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, %i.g
  %i.fc = tail call i32 @llvm.smax.i32(i32 %i.fa, i32 0)
  %i.fd = select i1 %i.fb, i32 %i.g, i32 %i.fc
  store i32 %i.fd, ptr %i.er, align 4, !tbaa !12
  %i.fe = add nuw nsw i64 %.096, 2                ; 2 uses
  %i.ff = icmp samesign ult i64 %i.fe, %i.j
  br i1 %i.ff, label %scalar.ph, label %._crit_edge, !llvm.loop !74

bb.c:                                             ; preds = %._crit_edge99.split, %bb.b
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @sycc444_to_rgb(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  %i.f = shl nuw i32 1, %i.e                      ; 3 uses
  %notmask = shl nsw i32 -1, %i.d
  %i.g = xor i32 %notmask, -1                     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw i64 %i.m, %i.j                   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 5 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 5 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 5 uses
  %i.x = icmp ne ptr %i.u, null
  %i.y = icmp ne ptr %i.v, null
  %or.cond = and i1 %i.x, %i.y
  %i.z = icmp ne ptr %i.w, null
  %or.cond3 = and i1 %or.cond, %i.z
  br i1 %or.cond3, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.preheader58, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert54 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat55 = shufflevector <8 x i32> %broadcast.splatinsert54, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i32>, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index
  %wide.load56 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index
  %wide.load57 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index
  %i.ag = sub nsw <8 x i32> %wide.load56, %broadcast.splat
  %i.ah = sub nsw <8 x i32> %wide.load57, %broadcast.splat
  %i.ai = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ah to <8 x float>
  %i.aj = fpext reassoc nsz arcp contract afn <8 x float> %i.ai to <8 x double> ; 2 uses
  %i.ak = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.aj, splat (double 1.402000e+00)
  %i.al = fptosi <8 x double> %i.ak to <8 x i32>
  %i.am = add nsw <8 x i32> %wide.load, %i.al     ; 2 uses
  %i.an = icmp sgt <8 x i32> %i.am, %broadcast.splat55
  %i.ao = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.am, <8 x i32> zeroinitializer)
  %i.ap = select <8 x i1> %i.an, <8 x i32> %broadcast.splat55, <8 x i32> %i.ao
  store <8 x i32> %i.ap, ptr %i.ad, align 4, !tbaa !12
  %i.aq = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ag to <8 x float>
  %i.ar = fpext reassoc nsz arcp contract afn <8 x float> %i.aq to <8 x double> ; 2 uses
  %i.as = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ar, splat (double 3.440000e-01)
  %i.at = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.aj, splat (double 7.140000e-01)
  %i.au = fadd reassoc nsz arcp contract afn <8 x double> %i.at, %i.as
  %i.av = fptosi <8 x double> %i.au to <8 x i32>
  %i.aw = sub nsw <8 x i32> %wide.load, %i.av     ; 2 uses
  %i.ax = icmp sgt <8 x i32> %i.aw, %broadcast.splat55
  %i.ay = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aw, <8 x i32> zeroinitializer)
  %i.az = select <8 x i1> %i.ax, <8 x i32> %broadcast.splat55, <8 x i32> %i.ay
  store <8 x i32> %i.az, ptr %i.ae, align 4, !tbaa !12
  %i.ba = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ar, splat (double 1.772000e+00)
  %i.bb = fptosi <8 x double> %i.ba to <8 x i32>
  %i.bc = add nsw <8 x i32> %wide.load, %i.bb     ; 2 uses
  %i.bd = icmp sgt <8 x i32> %i.bc, %broadcast.splat55
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bc, <8 x i32> zeroinitializer)
  %i.bf = select <8 x i1> %i.bd, <8 x i32> %broadcast.splat55, <8 x i32> %i.be
  store <8 x i32> %i.bf, ptr %i.af, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader58

.lr.ph.preheader58:                               ; preds = %.lr.ph.preheader, %middle.block
  %.050.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr %i.u, ptr %i.bi, align 8, !tbaa !25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bk) #15
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 112
  store ptr %i.v, ptr %i.bm, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bo) #15
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 176
  store ptr %i.w, ptr %i.bq, align 8, !tbaa !25
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader58, %.lr.ph
  %.050 = phi i64 [ %i.da, %.lr.ph ], [ %.050.ph, %.lr.ph.preheader58 ] ; 7 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.050
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12 ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.050
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.050
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.050
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.050
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.050
  %i.ca = sub nsw i32 %i.bu, %i.f
  %i.cb = sub nsw i32 %i.bw, %i.f
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.cb to float
  %i.cd = fpext reassoc nsz arcp contract afn float %i.cc to double ; 2 uses
  %i.ce = fmul reassoc nnan nsz arcp contract afn double %i.cd, 1.402000e+00
  %i.cf = fptosi double %i.ce to i32
  %i.cg = add nsw i32 %i.bs, %i.cf                ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, %i.g
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 0)
  %i.cj = select i1 %i.ch, i32 %i.g, i32 %i.ci
  store i32 %i.cj, ptr %i.bx, align 4, !tbaa !12
  %i.ck = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cl = fpext reassoc nsz arcp contract afn float %i.ck to double ; 2 uses
  %i.cm = fmul reassoc nnan nsz arcp contract afn double %i.cl, 3.440000e-01
  %i.cn = fmul reassoc nnan nsz arcp contract afn double %i.cd, 7.140000e-01
  %i.co = fadd reassoc nsz arcp contract afn double %i.cn, %i.cm
  %i.cp = fptosi double %i.co to i32
  %i.cq = sub nsw i32 %i.bs, %i.cp                ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, %i.g
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 0)
  %i.ct = select i1 %i.cr, i32 %i.g, i32 %i.cs
  store i32 %i.ct, ptr %i.by, align 4, !tbaa !12
  %i.cu = fmul reassoc nnan nsz arcp contract afn double %i.cl, 1.772000e+00
  %i.cv = fptosi double %i.cu to i32
  %i.cw = add nsw i32 %i.bs, %i.cv                ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, %i.g
  %i.cy = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cz = select i1 %i.cx, i32 %i.g, i32 %i.cy
  store i32 %i.cz, ptr %i.bz, align 4, !tbaa !12
  %i.da = add nuw i64 %.050, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr>, <4 x i1>, <4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i64.p0(<4 x i64>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(0,1) }

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
!12 = !{!8, !8, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTS14opj_image_comp", !11, i64 0}
!16 = !{!"opj_image", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !15, i64 24, !14, i64 32, !8, i64 40}
!17 = !{!16, !8, i64 20}
!18 = !{!16, !8, i64 16}
!19 = !{!16, !15, i64 24}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!"opj_image_comp", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !20, i64 48, !13, i64 56}
!22 = !{!21, !8, i64 8}
!23 = !{!21, !8, i64 12}
!24 = !{!21, !8, i64 24}
!25 = !{!21, !20, i64 48}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!21, !8, i64 0}
!29 = !{!21, !8, i64 4}
!30 = distinct !{!30, !26, !27}
!31 = distinct !{!31, !26, !27}
!32 = distinct !{!32, !27, !26}
!33 = distinct !{!33, !27, !26}
!34 = !{!"p1 _ZTS9opj_image", !11, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!7, !7, i64 0}
!37 = !{!"opj_dparameters", !8, i64 0, !8, i64 4, !7, i64 8, !7, i64 4104, !8, i64 8200, !8, i64 8204, !8, i64 8208, !8, i64 8212, !8, i64 8216, !8, i64 8220, !8, i64 8224, !8, i64 8228, !8, i64 8232, !8, i64 8236, !8, i64 8240, !8, i64 8244, !8, i64 8248}
!38 = !{!37, !8, i64 8200}
!39 = !{!"float", !7, i64 0}
!40 = !{!"long", !7, i64 0}
!41 = !{!"", !13, i64 0, !13, i64 2}
!42 = !{!"", !8, i64 0, !7, i64 16}
!43 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !41, i64 48, !42, i64 64, !7, i64 96, !8, i64 112}
!44 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!45 = !{!"double", !7, i64 0}
!46 = !{!"dt_image_geoloc_t", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!48 = !{!"p1 _ZTS6_GList", !11, i64 0}
!49 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!50 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !40, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !39, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !40, i64 1448, !40, i64 1456, !40, i64 1464, !40, i64 1472, !8, i64 1480, !43, i64 1488, !7, i64 1616, !14, i64 1656, !8, i64 1664, !8, i64 1668, !44, i64 1672, !46, i64 1680, !47, i64 1704, !13, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !39, i64 1756, !39, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !48, i64 1856, !49, i64 1864, !8, i64 1872, !8, i64 1876}
!51 = !{!50, !8, i64 0}
!52 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!16, !8, i64 40}
!55 = !{!16, !14, i64 32}
!56 = !{!50, !14, i64 1656}
!57 = !{!50, !8, i64 1664}
!58 = !{!16, !8, i64 8}
!59 = !{!16, !8, i64 12}
!60 = !{!50, !8, i64 1380}
!61 = !{!50, !8, i64 1384}
!62 = !{!50, !8, i64 1488}
!63 = !{!50, !8, i64 1492}
!64 = !{!21, !8, i64 32}
!65 = !{!40, !40, i64 0}
!66 = !{!39, !39, i64 0}
!67 = !{!50, !8, i64 1600}
!68 = !{!50, !8, i64 1496}
!69 = !{!50, !8, i64 1428}
!70 = !{!50, !8, i64 1480}
!71 = distinct !{!71, !26, !27}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26, !27}
!74 = distinct !{!74, !27, !26}
!75 = distinct !{!75, !26, !27}
!76 = distinct !{!76, !27, !26}
end_hunk_0

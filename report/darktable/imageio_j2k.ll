Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_j2k?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dt_exif_read
declare i32 @dt_exif_read(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

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
  %1 = add nsw i64 %i.m, -1
  %2 = lshr i64 %1, 1                             ; 2 uses
  %i.ac = shl i64 %2, 3
  %3 = or disjoint i64 %i.ac, 4
  %4 = mul i64 %3, %i.j
  %i.ad = shl nuw nsw i64 %i.j, 2
  %5 = add nsw i64 %i.ad, -4
  %6 = and i64 %5, -8                             ; 2 uses
  %i.ae = add i64 %4, %6                          ; 2 uses
  %i.af = add i64 %i.ae, 8                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.af ; 3 uses
  %7 = shl nuw nsw i64 %i.j, 2                    ; 4 uses
  %i.ag = add nuw nsw i64 %7, 4                   ; 3 uses
  %scevgep226 = getelementptr i8, ptr %i.w, i64 %i.ag ; 3 uses
  %i.ah = add i64 %i.ae, 4                        ; 3 uses
  %scevgep227 = getelementptr i8, ptr %i.w, i64 %i.ah ; 3 uses
  %scevgep228 = getelementptr i8, ptr %i.w, i64 %7 ; 3 uses
  %8 = mul i64 %2, %i.j
  %9 = shl i64 %8, 3
  %10 = add i64 %9, %6                            ; 2 uses
  %i.ai = add i64 %10, 8                          ; 3 uses
  %scevgep229 = getelementptr i8, ptr %i.w, i64 %i.ai ; 3 uses
  %scevgep230 = getelementptr i8, ptr %i.w, i64 4 ; 3 uses
  %i.aj = or disjoint i64 %10, 4                  ; 3 uses
  %scevgep231 = getelementptr i8, ptr %i.w, i64 %i.aj
  %scevgep232 = getelementptr i8, ptr %i.v, i64 %i.af ; 3 uses
  %scevgep233 = getelementptr i8, ptr %i.v, i64 %i.ag ; 3 uses
  %scevgep234 = getelementptr i8, ptr %i.v, i64 %i.ah ; 3 uses
  %scevgep235 = getelementptr i8, ptr %i.v, i64 %7 ; 3 uses
  %scevgep236 = getelementptr i8, ptr %i.v, i64 %i.ai ; 3 uses
  %scevgep237 = getelementptr i8, ptr %i.v, i64 4 ; 3 uses
  %scevgep238 = getelementptr i8, ptr %i.v, i64 %i.aj
  %scevgep239 = getelementptr i8, ptr %i.u, i64 %i.af ; 3 uses
  %scevgep240 = getelementptr i8, ptr %i.u, i64 %i.ag ; 3 uses
  %scevgep241 = getelementptr i8, ptr %i.u, i64 %i.ah ; 2 uses
  %scevgep242 = getelementptr i8, ptr %i.u, i64 %7 ; 3 uses
  %scevgep243 = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %scevgep244 = getelementptr i8, ptr %i.u, i64 4 ; 2 uses
  %scevgep245 = getelementptr i8, ptr %i.u, i64 %i.aj
  %i.ak = insertelement <4 x ptr> poison, ptr %scevgep244, i64 0
  %i.al = insertelement <4 x ptr> %i.ak, ptr %scevgep242, i64 1
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep240, i64 2
  %i.an = shufflevector <4 x ptr> %i.am, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ao = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep242, i64 1
  %i.aq = shufflevector <4 x ptr> %i.ap, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep243, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep241, i64 1 ; 2 uses
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep239, i64 2
  %i.au = shufflevector <4 x ptr> %i.at, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.av = shufflevector <4 x ptr> %i.as, <4 x ptr> poison, <2 x i32> <i32 poison, i32 1>
  %i.aw = insertelement <2 x ptr> %i.av, ptr %scevgep245, i64 0
  %i.ax = shufflevector <2 x ptr> %i.aw, <2 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ay = insertelement <4 x ptr> poison, ptr %scevgep242, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.v, i64 1
  %i.ba = shufflevector <4 x ptr> %i.az, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bb = insertelement <4 x ptr> poison, ptr %scevgep239, i64 0
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep236, i64 1
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %scevgep234, i64 2
  %i.be = insertelement <4 x ptr> %i.bd, ptr %scevgep232, i64 3
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep240, i64 0
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep237, i64 1
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep235, i64 2
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep233, i64 3
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep241, i64 0
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep238, i64 1
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep235, i64 0
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %i.w, i64 1
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep232, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep229, i64 1
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep227, i64 2
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep, i64 3
  %i.bt = insertelement <4 x ptr> poison, ptr %scevgep233, i64 0
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep230, i64 1
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep228, i64 2
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep226, i64 3
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep234, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep231, i64 1
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ca = add nsw i64 %i.j, -1
  %i.cb = lshr i64 %i.ca, 1
  %i.cc = add nuw i64 %i.cb, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 15
  %i.cd = icmp ult <4 x ptr> %i.aq, %i.au
  %i.ce = icmp ult <4 x ptr> %i.an, %i.ax
  %i.cf = and <4 x i1> %i.ce, %i.cd
  %bound0257 = icmp ult ptr %scevgep244, %scevgep239
  %bound1258 = icmp ult ptr %scevgep240, %scevgep243
  %found.conflict259 = and i1 %bound0257, %bound1258
  %i.cg = icmp ult <4 x ptr> %i.ba, %i.be
  %i.ch = icmp ult <4 x ptr> %i.bi, %i.bl
  %i.ci = and <4 x i1> %i.cg, %i.ch
  %bound0277 = icmp ult ptr %scevgep237, %scevgep234
  %bound1278 = icmp ult ptr %scevgep235, %scevgep236
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0281 = icmp ult ptr %scevgep237, %scevgep232
  %bound1282 = icmp ult ptr %scevgep233, %scevgep236
  %found.conflict283 = and i1 %bound0281, %bound1282
  %i.cj = icmp ult <4 x ptr> %i.bo, %i.bs
  %i.ck = icmp ult <4 x ptr> %i.bw, %i.bz
  %i.cl = and <4 x i1> %i.cj, %i.ck
  %bound0301 = icmp ult ptr %scevgep230, %scevgep227
  %bound1302 = icmp ult ptr %scevgep228, %scevgep229
  %found.conflict303 = and i1 %bound0301, %bound1302
  %bound0305 = icmp ult ptr %scevgep230, %scevgep
  %bound1306 = icmp ult ptr %scevgep226, %scevgep229
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0309 = icmp ult ptr %scevgep228, %scevgep
  %bound1310 = icmp ult ptr %scevgep226, %scevgep227
  %found.conflict311 = and i1 %bound0309, %bound1310
  %rdx.op = or <4 x i1> %i.cf, %i.ci
  %rdx.op329 = or <4 x i1> %rdx.op, %i.cl
  %i.cm = bitcast <4 x i1> %rdx.op329 to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx = or i1 %i.cn, %found.conflict259
  %op.rdx330 = or i1 %found.conflict279, %found.conflict283
  %op.rdx331 = or i1 %found.conflict303, %found.conflict307
  %op.rdx332 = or i1 %op.rdx, %op.rdx330
  %op.rdx333 = or i1 %op.rdx331, %found.conflict311
  %op.rdx334 = or i1 %op.rdx332, %op.rdx333
  %n.vec = and i64 %i.cc, -8                      ; 3 uses
  %i.co = shl i64 %n.vec, 1
  %broadcast.splatinsert315 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat316 = shufflevector <8 x i32> %broadcast.splatinsert315, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317, <8 x i32> poison, <8 x i32> zeroinitializer ; 24 uses
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge134.split:                             ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store ptr %i.u, ptr %i.cq, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.cs) #15
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 112
  store ptr %i.v, ptr %i.cu, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.cw) #15
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  store ptr %i.w, ptr %i.cy, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i32 %i.i, ptr %i.cz, align 8, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 76
  store i32 %i.l, ptr %i.da, align 4, !tbaa !23
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 136
  store i32 %i.i, ptr %i.db, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 140
  store i32 %i.l, ptr %i.dc, align 4, !tbaa !23
  %i.dd = load i32, ptr %i.cx, align 8, !tbaa !28 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 128
  store i32 %i.dd, ptr %i.df, align 8, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !29 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 68
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cx, i64 132
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0127132 = phi i64 [ %i.hc, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.dk = lshr exact i64 %.0127132, 1
  %i.dl = mul nuw nsw i64 %i.dk, %i.j             ; 2 uses
  %i.dm = mul nuw i64 %.0127132, %i.j             ; 4 uses
  %i.dn = or disjoint i64 %.0127132, 1
  %i.do = mul nuw i64 %i.dn, %i.j                 ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dm ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dm ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.dm ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dm ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.do ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.do ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.do ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.do ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !12
  %i.dx = sub nsw i32 %.pre, %i.f
  %i.dy = sitofp reassoc nsz arcp contract afn i32 %i.dx to float
  %i.dz = fpext reassoc nsz arcp contract afn float %i.dy to double ; 2 uses
  %i.ea = fmul reassoc nnan nsz arcp contract afn double %i.dz, 1.402000e+00
  %i.eb = fptosi double %i.ea to i32              ; 2 uses
  %i.ec = fmul reassoc nnan nsz arcp contract afn double %i.dz, 7.140000e-01 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx334
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x double> poison, double %i.ec, i64 0
  %broadcast.splat314 = shufflevector <8 x double> %broadcast.splatinsert313, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = shl nuw i64 %index, 1                   ; 8 uses
  %i.ee = add nuw nsw i64 %index, %i.dl           ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ee
  %wide.load = load <8 x i32>, ptr %i.ef, align 4, !tbaa !12
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ee
  %wide.load319 = load <8 x i32>, ptr %i.eg, align 4, !tbaa !12
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ed
  %wide.vec = load <16 x i32>, ptr %i.eh, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec320 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ed
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ed
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.ed
  %i.el = sub nsw <8 x i32> %wide.load, %broadcast.splat316
  %i.em = sub nsw <8 x i32> %wide.load319, %broadcast.splat316
  %i.en = sitofp reassoc nsz arcp contract afn <8 x i32> %i.em to <8 x float>
  %i.eo = fpext reassoc nsz arcp contract afn <8 x float> %i.en to <8 x double> ; 2 uses
  %i.ep = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.eo, splat (double 1.402000e+00)
  %i.eq = fptosi <8 x double> %i.ep to <8 x i32>  ; 3 uses
  %i.er = add nsw <8 x i32> %strided.vec, %i.eq   ; 2 uses
  %i.es = icmp sgt <8 x i32> %i.er, %broadcast.splat318
  %i.et = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.er, <8 x i32> zeroinitializer)
  %i.eu = select <8 x i1> %i.es, <8 x i32> %broadcast.splat318, <8 x i32> %i.et
  %i.ev = sitofp reassoc nsz arcp contract afn <8 x i32> %i.el to <8 x float>
  %i.ew = fpext reassoc nsz arcp contract afn <8 x float> %i.ev to <8 x double> ; 2 uses
  %i.ex = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.ew, splat (double 3.440000e-01) ; 2 uses
  %i.ey = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.eo, splat (double 7.140000e-01)
end_hunk_0

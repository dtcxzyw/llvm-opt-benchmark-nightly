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
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 9 uses
  %i.v = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 9 uses
  %i.w = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #18 ; 9 uses
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
  %i.ae = shl i64 %i.ad, 3
  %i.af = or disjoint i64 %i.ae, 4
  %i.ag = mul i64 %i.af, %i.j
  %i.ah = shl nuw nsw i64 %i.j, 2
  %i.ai = add nsw i64 %i.ah, -4
  %i.aj = and i64 %i.ai, -8                       ; 2 uses
  %i.ak = add i64 %i.ag, %i.aj
  %i.al = add i64 %i.ak, 8                        ; 3 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.al
  %i.am = shl nuw nsw i64 %i.j, 2                 ; 3 uses
  %scevgep228 = getelementptr i8, ptr %i.w, i64 %i.am
  %i.an = mul i64 %i.ad, %i.j
  %i.ao = shl i64 %i.an, 3
  %i.ap = add i64 %i.ao, %i.aj
  %i.aq = add i64 %i.ap, 8                        ; 3 uses
  %scevgep239 = getelementptr i8, ptr %i.w, i64 %i.aq
  %scevgep240 = getelementptr i8, ptr %i.v, i64 %i.al
  %scevgep241 = getelementptr i8, ptr %i.v, i64 %i.am
  %scevgep242 = getelementptr i8, ptr %i.v, i64 %i.aq
  %scevgep243 = getelementptr i8, ptr %i.u, i64 %i.al
  %scevgep244 = getelementptr i8, ptr %i.u, i64 %i.am
  %scevgep245 = getelementptr i8, ptr %i.u, i64 %i.aq
  %i.ar = add nsw i64 %i.j, -1
  %i.as = lshr i64 %i.ar, 1
  %i.at = add nuw i64 %i.as, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.i, 15
  %bound0281 = icmp ult ptr %i.u, %scevgep243
  %bound1282 = icmp ult ptr %scevgep244, %scevgep245
  %found.conflict283 = and i1 %bound0281, %bound1282
  %bound0301 = icmp ult ptr %i.v, %scevgep240
  %bound1302 = icmp ult ptr %scevgep241, %scevgep242
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx = or i1 %found.conflict283, %found.conflict303
  %bound0309 = icmp ult ptr %i.w, %scevgep
  %bound1310 = icmp ult ptr %scevgep228, %scevgep239
  %found.conflict311 = and i1 %bound0309, %bound1310
  %op.rdx334 = or i1 %conflict.rdx, %found.conflict311
  %n.vec = and i64 %i.at, -8                      ; 3 uses
  %i.au = shl i64 %n.vec, 1
  %broadcast.splatinsert315 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat316 = shufflevector <8 x i32> %broadcast.splatinsert315, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <8 x i32> poison, i32 %i.g, i64 0
  %broadcast.splat318 = shufflevector <8 x i32> %broadcast.splatinsert317, <8 x i32> poison, <8 x i32> zeroinitializer ; 24 uses
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.u) #15
  tail call void @free(ptr noundef %i.v) #15
  tail call void @free(ptr noundef %i.w) #15
  br label %bb.c

._crit_edge134.split:                             ; preds = %._crit_edge, %.preheader
  tail call void @free(ptr noundef %i.p) #15
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %i.u, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.ay) #15
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store ptr %i.v, ptr %i.ba, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.bc) #15
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !19  ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 176
  store ptr %i.w, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i32 %i.i, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  store i32 %i.l, ptr %i.bg, align 4, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  store i32 %i.i, ptr %i.bh, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 140
  store i32 %i.l, ptr %i.bi, align 4, !tbaa !23
  %i.bj = load i32, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 68
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !29
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 132
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !29
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.0127132 = phi i64 [ %i.fi, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.bq = lshr exact i64 %.0127132, 1
  %i.br = mul nuw nsw i64 %i.bq, %i.j             ; 2 uses
  %i.bs = mul nuw i64 %.0127132, %i.j             ; 4 uses
  %i.bt = or disjoint i64 %.0127132, 1
  %i.bu = mul nuw i64 %i.bt, %i.j                 ; 4 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bs ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bs ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bs ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bs ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bu ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bu ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bu ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bu ; 2 uses
  %.pre = load i32, ptr %i.t, align 4, !tbaa !12
  %i.cd = sub nsw i32 %.pre, %i.f
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.cd to float
  %i.cf = fpext reassoc nsz arcp contract afn float %i.ce to double ; 2 uses
  %i.cg = fmul reassoc nnan nsz arcp contract afn double %i.cf, 1.402000e+00
  %i.ch = fptosi double %i.cg to i32              ; 2 uses
  %i.ci = fmul reassoc nnan nsz arcp contract afn double %i.cf, 7.140000e-01 ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx334
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x double> poison, double %i.ci, i64 0
  %broadcast.splat314 = shufflevector <8 x double> %broadcast.splatinsert313, <8 x double> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cj = shl nuw i64 %index, 1                   ; 8 uses
  %i.ck = add nuw nsw i64 %index, %i.br           ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ck
  %wide.load = load <8 x i32>, ptr %i.cl, align 4, !tbaa !12
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ck
  %wide.load319 = load <8 x i32>, ptr %i.cm, align 4, !tbaa !12
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.cj
  %wide.vec = load <16 x i32>, ptr %i.cn, align 4, !tbaa !12 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec320 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cj
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cj
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cj
  %i.cr = sub nsw <8 x i32> %wide.load, %broadcast.splat316
  %i.cs = sub nsw <8 x i32> %wide.load319, %broadcast.splat316
  %i.ct = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cs to <8 x float>
  %i.cu = fpext reassoc nsz arcp contract afn <8 x float> %i.ct to <8 x double> ; 2 uses
  %i.cv = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cu, splat (double 1.402000e+00)
  %i.cw = fptosi <8 x double> %i.cv to <8 x i32>  ; 3 uses
  %i.cx = add nsw <8 x i32> %strided.vec, %i.cw   ; 2 uses
  %i.cy = icmp sgt <8 x i32> %i.cx, %broadcast.splat318
  %i.cz = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.cx, <8 x i32> zeroinitializer)
  %i.da = select <8 x i1> %i.cy, <8 x i32> %broadcast.splat318, <8 x i32> %i.cz
  %i.db = sitofp reassoc nsz arcp contract afn <8 x i32> %i.cr to <8 x float>
  %i.dc = fpext reassoc nsz arcp contract afn <8 x float> %i.db to <8 x double> ; 2 uses
  %i.dd = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dc, splat (double 3.440000e-01) ; 2 uses
  %i.de = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.cu, splat (double 7.140000e-01)
  %i.df = fadd reassoc nsz arcp contract afn <8 x double> %i.de, %i.dd
  %i.dg = fptosi <8 x double> %i.df to <8 x i32>  ; 3 uses
  %i.dh = sub nsw <8 x i32> %strided.vec, %i.dg   ; 2 uses
  %i.di = icmp sgt <8 x i32> %i.dh, %broadcast.splat318
  %i.dj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dh, <8 x i32> zeroinitializer)
  %i.dk = select <8 x i1> %i.di, <8 x i32> %broadcast.splat318, <8 x i32> %i.dj
  %i.dl = fmul reassoc nnan nsz arcp contract afn <8 x double> %i.dc, splat (double 1.772000e+00)
  %i.dm = fptosi <8 x double> %i.dl to <8 x i32>  ; 4 uses
  %i.dn = add nsw <8 x i32> %strided.vec, %i.dm   ; 2 uses
  %i.do = icmp sgt <8 x i32> %i.dn, %broadcast.splat318
  %i.dp = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dn, <8 x i32> zeroinitializer)
  %i.dq = select <8 x i1> %i.do, <8 x i32> %broadcast.splat318, <8 x i32> %i.dp
  %i.dr = add nsw <8 x i32> %strided.vec320, %i.cw ; 2 uses
  %i.ds = icmp sgt <8 x i32> %i.dr, %broadcast.splat318
  %i.dt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dr, <8 x i32> zeroinitializer)
  %i.du = select <8 x i1> %i.ds, <8 x i32> %broadcast.splat318, <8 x i32> %i.dt
  %interleaved.vec = shufflevector <8 x i32> %i.da, <8 x i32> %i.du, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.co, align 4, !tbaa !12, !alias.scope !80, !noalias !81
  %i.dv = sub nsw <8 x i32> %strided.vec320, %i.dg ; 2 uses
  %i.dw = icmp sgt <8 x i32> %i.dv, %broadcast.splat318
  %i.dx = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dv, <8 x i32> zeroinitializer)
  %i.dy = select <8 x i1> %i.dw, <8 x i32> %broadcast.splat318, <8 x i32> %i.dx
  %interleaved.vec321 = shufflevector <8 x i32> %i.dk, <8 x i32> %i.dy, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec321, ptr %i.cp, align 4, !tbaa !12, !alias.scope !82, !noalias !83
  %i.dz = add nsw <8 x i32> %strided.vec320, %i.dm ; 2 uses
  %i.ea = icmp sgt <8 x i32> %i.dz, %broadcast.splat318
  %i.eb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.dz, <8 x i32> zeroinitializer)
  %i.ec = select <8 x i1> %i.ea, <8 x i32> %broadcast.splat318, <8 x i32> %i.eb
  %interleaved.vec322 = shufflevector <8 x i32> %i.dq, <8 x i32> %i.ec, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec322, ptr %i.cq, align 4, !tbaa !12, !alias.scope !84, !noalias !85
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cj
  %wide.vec323 = load <16 x i32>, ptr %i.ed, align 4, !tbaa !12 ; 2 uses
  %strided.vec324 = shufflevector <16 x i32> %wide.vec323, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec325 = shufflevector <16 x i32> %wide.vec323, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cj
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cj
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cj
  %i.eh = add nsw <8 x i32> %strided.vec324, %i.cw ; 2 uses
  %i.ei = icmp sgt <8 x i32> %i.eh, %broadcast.splat318
  %i.ej = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.eh, <8 x i32> zeroinitializer)
  %i.ek = select <8 x i1> %i.ei, <8 x i32> %broadcast.splat318, <8 x i32> %i.ej
  %i.el = sub nsw <8 x i32> %strided.vec324, %i.dg ; 2 uses
  %i.em = icmp sgt <8 x i32> %i.el, %broadcast.splat318
  %i.en = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.el, <8 x i32> zeroinitializer)
  %i.eo = select <8 x i1> %i.em, <8 x i32> %broadcast.splat318, <8 x i32> %i.en
  %i.ep = add nsw <8 x i32> %strided.vec324, %i.dm ; 2 uses
  %i.eq = icmp sgt <8 x i32> %i.ep, %broadcast.splat318
  %i.er = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ep, <8 x i32> zeroinitializer)
  %i.es = select <8 x i1> %i.eq, <8 x i32> %broadcast.splat318, <8 x i32> %i.er
  %i.et = add nsw <8 x i32> %strided.vec325, %broadcast.splat ; 2 uses
  %i.eu = icmp sgt <8 x i32> %i.et, %broadcast.splat318
  %i.ev = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.et, <8 x i32> zeroinitializer)
  %i.ew = select <8 x i1> %i.eu, <8 x i32> %broadcast.splat318, <8 x i32> %i.ev
  %interleaved.vec326 = shufflevector <8 x i32> %i.ek, <8 x i32> %i.ew, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec326, ptr %i.ee, align 4, !tbaa !12, !alias.scope !81
  %i.ex = fadd reassoc nsz arcp contract afn <8 x double> %broadcast.splat314, %i.dd
  %i.ey = fptosi <8 x double> %i.ex to <8 x i32>
  %i.ez = sub nsw <8 x i32> %strided.vec325, %i.ey ; 2 uses
  %i.fa = icmp sgt <8 x i32> %i.ez, %broadcast.splat318
  %i.fb = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ez, <8 x i32> zeroinitializer)
  %i.fc = select <8 x i1> %i.fa, <8 x i32> %broadcast.splat318, <8 x i32> %i.fb
  %interleaved.vec327 = shufflevector <8 x i32> %i.eo, <8 x i32> %i.fc, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec327, ptr %i.ef, align 4, !tbaa !12, !alias.scope !83
  %i.fd = add nsw <8 x i32> %strided.vec325, %i.dm ; 2 uses
  %i.fe = icmp sgt <8 x i32> %i.fd, %broadcast.splat318
  %i.ff = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.fd, <8 x i32> zeroinitializer)
  %i.fg = select <8 x i1> %i.fe, <8 x i32> %broadcast.splat318, <8 x i32> %i.ff
  %interleaved.vec328 = shufflevector <8 x i32> %i.es, <8 x i32> %i.fg, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec328, ptr %i.eg, align 4, !tbaa !12, !alias.scope !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0131.ph = phi i64 [ %i.au, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.fi = add nuw nsw i64 %.0127132, 2            ; 2 uses
  %i.fj = icmp samesign ult i64 %i.fi, %i.m
  br i1 %i.fj, label %.lr.ph, label %._crit_edge134.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0131 = phi i64 [ %i.iw, %scalar.ph ], [ %.0131.ph, %scalar.ph.preheader ] ; 10 uses
  %i.fk = lshr exact i64 %.0131, 1
  %i.fl = add nuw nsw i64 %i.fk, %i.br            ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !12
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fl
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !12
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.0131 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !12 ; 3 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.0131 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.0131 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.0131 ; 2 uses
  %i.fv = sub nsw i32 %i.fn, %i.f
  %i.fw = sub nsw i32 %i.fp, %i.f
  %i.fx = sitofp reassoc nsz arcp contract afn i32 %i.fw to float
  %i.fy = fpext reassoc nsz arcp contract afn float %i.fx to double ; 2 uses
  %i.fz = fmul reassoc nnan nsz arcp contract afn double %i.fy, 1.402000e+00
  %i.ga = fptosi double %i.fz to i32              ; 3 uses
  %i.gb = add nsw i32 %i.fr, %i.ga                ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, %i.g
  %i.gd = tail call i32 @llvm.smax.i32(i32 %i.gb, i32 0)
  %i.ge = select i1 %i.gc, i32 %i.g, i32 %i.gd
  store i32 %i.ge, ptr %i.fs, align 4, !tbaa !12
  %i.gf = sitofp reassoc nsz arcp contract afn i32 %i.fv to float
  %i.gg = fpext reassoc nsz arcp contract afn float %i.gf to double ; 2 uses
  %i.gh = fmul reassoc nnan nsz arcp contract afn double %i.gg, 3.440000e-01 ; 2 uses
  %i.gi = fmul reassoc nnan nsz arcp contract afn double %i.fy, 7.140000e-01
  %i.gj = fadd reassoc nsz arcp contract afn double %i.gi, %i.gh
  %i.gk = fptosi double %i.gj to i32              ; 3 uses
  %i.gl = sub nsw i32 %i.fr, %i.gk                ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, %i.g
  %i.gn = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 0)
  %i.go = select i1 %i.gm, i32 %i.g, i32 %i.gn
  store i32 %i.go, ptr %i.ft, align 4, !tbaa !12
  %i.gp = fmul reassoc nnan nsz arcp contract afn double %i.gg, 1.772000e+00
  %i.gq = fptosi double %i.gp to i32              ; 4 uses
  %i.gr = add nsw i32 %i.fr, %i.gq                ; 2 uses
  %i.gs = icmp sgt i32 %i.gr, %i.g
  %i.gt = tail call i32 @llvm.smax.i32(i32 %i.gr, i32 0)
  %i.gu = select i1 %i.gs, i32 %i.g, i32 %i.gt
  store i32 %i.gu, ptr %i.fu, align 4, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !12 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.ha = add nsw i32 %i.gw, %i.ga                ; 2 uses
  %i.hb = icmp sgt i32 %i.ha, %i.g
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.ha, i32 0)
  %i.hd = select i1 %i.hb, i32 %i.g, i32 %i.hc
  store i32 %i.hd, ptr %i.gx, align 4, !tbaa !12
  %i.he = sub nsw i32 %i.gw, %i.gk                ; 2 uses
  %i.hf = icmp sgt i32 %i.he, %i.g
  %i.hg = tail call i32 @llvm.smax.i32(i32 %i.he, i32 0)
  %i.hh = select i1 %i.hf, i32 %i.g, i32 %i.hg
  store i32 %i.hh, ptr %i.gy, align 4, !tbaa !12
  %i.hi = add nsw i32 %i.gw, %i.gq                ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, %i.g
  %i.hk = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hl = select i1 %i.hj, i32 %i.g, i32 %i.hk
  store i32 %i.hl, ptr %i.gz, align 4, !tbaa !12
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.0131 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12 ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.0131 ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0131 ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.0131 ; 2 uses
  %i.hr = add nsw i32 %i.hn, %i.ga                ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, %i.g
  %i.ht = tail call i32 @llvm.smax.i32(i32 %i.hr, i32 0)
  %i.hu = select i1 %i.hs, i32 %i.g, i32 %i.ht
  store i32 %i.hu, ptr %i.ho, align 4, !tbaa !12
  %i.hv = sub nsw i32 %i.hn, %i.gk                ; 2 uses
  %i.hw = icmp sgt i32 %i.hv, %i.g
  %i.hx = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hy = select i1 %i.hw, i32 %i.g, i32 %i.hx
  store i32 %i.hy, ptr %i.hp, align 4, !tbaa !12
  %i.hz = add nsw i32 %i.hn, %i.gq                ; 2 uses
  %i.ia = icmp sgt i32 %i.hz, %i.g
  %i.ib = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 0)
  %i.ic = select i1 %i.ia, i32 %i.g, i32 %i.ib
  store i32 %i.ic, ptr %i.hq, align 4, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !12 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ii = add nsw i32 %i.ie, %i.ch                ; 2 uses
  %i.ij = icmp sgt i32 %i.ii, %i.g
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ii, i32 0)
  %i.il = select i1 %i.ij, i32 %i.g, i32 %i.ik
  store i32 %i.il, ptr %i.if, align 4, !tbaa !12
  %i.im = fadd reassoc nsz arcp contract afn double %i.ci, %i.gh
  %i.in = fptosi double %i.im to i32
  %i.io = sub nsw i32 %i.ie, %i.in                ; 2 uses
  %i.ip = icmp sgt i32 %i.io, %i.g
  %i.iq = tail call i32 @llvm.smax.i32(i32 %i.io, i32 0)
  %i.ir = select i1 %i.ip, i32 %i.g, i32 %i.iq
  store i32 %i.ir, ptr %i.ig, align 4, !tbaa !12
  %i.is = add nsw i32 %i.ie, %i.gq                ; 2 uses
  %i.it = icmp sgt i32 %i.is, %i.g
  %i.iu = tail call i32 @llvm.smax.i32(i32 %i.is, i32 0)
  %i.iv = select i1 %i.it, i32 %i.g, i32 %i.iu
  store i32 %i.iv, ptr %i.ih, align 4, !tbaa !12
  %i.iw = add nuw nsw i64 %.0131, 2               ; 2 uses
  %i.ix = icmp samesign ult i64 %i.iw, %i.j
  br i1 %i.ix, label %scalar.ph, label %._crit_edge, !llvm.loop !79

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
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !86

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
  br i1 %i.ff, label %scalar.ph, label %._crit_edge, !llvm.loop !87

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
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !88

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

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
!71 = distinct !{!71, i1 false, !"LVerDomain"}
!72 = distinct !{!72, !71}
!73 = distinct !{!73, !71}
!74 = distinct !{!74, !71}
!75 = distinct !{!75, !71}
!76 = distinct !{!76, !71}
!77 = distinct !{!77, !71}
!78 = distinct !{!78, !26, !27}
!79 = distinct !{!79, !26}
!80 = !{!72}
!81 = !{!73}
!82 = !{!74}
!83 = !{!75}
!84 = !{!76}
!85 = !{!77}
!86 = distinct !{!86, !26, !27}
!87 = distinct !{!87, !27, !26}
!88 = distinct !{!88, !26, !27}
!89 = distinct !{!89, !27, !26}
end_hunk_0

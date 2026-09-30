Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_png?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@png_get_image_width
declare i32 @png_get_image_width(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_get_image_height(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_imageio_png_read_image(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = call ptr @png_set_longjmp_fn(ptr noundef %i.b, ptr noundef nonnull @longjmp, i64 noundef 200) #12
  %i.d = call i32 @_setjmp(ptr noundef %i.c) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = call i32 @fclose(ptr noundef %i.f)       ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @png_destroy_read_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef null) #12
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = call noalias ptr @malloc(i64 noundef %i.l) #14 ; 6 uses
  %.not30 = icmp eq ptr %i.m, null
  br i1 %.not30, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = call i32 @fclose(ptr noundef %i.o)       ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @png_destroy_read_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.q, ptr noundef null) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = call i64 @png_get_rowbytes(ptr noundef %i.r, ptr noundef %i.t) #12 ; 3 uses
  %i.v = load i32, ptr %i.i, align 4, !tbaa !21   ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp ult i32 %i.v, 16
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.y = mul <4 x i64> %broadcast.splat, %vec.ind
  %i.z = mul <4 x i64> %broadcast.splat, %step.add
  %i.aa = mul <4 x i64> %broadcast.splat, %step.add.2
  %i.ab = mul <4 x i64> %broadcast.splat, %step.add.3
  %wide.gep = getelementptr inbounds nuw i8, ptr %1, <4 x i64> %i.y
  %wide.gep35 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> %i.z
  %wide.gep36 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> %i.aa
  %wide.gep37 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> %i.ab
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store <4 x ptr> %wide.gep, ptr %i.ac, align 8, !tbaa !23
  store <4 x ptr> %wide.gep35, ptr %i.ad, align 8, !tbaa !23
  store <4 x ptr> %wide.gep36, ptr %i.ae, align 8, !tbaa !23
  store <4 x ptr> %wide.gep37, ptr %i.af, align 8, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec38 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert39 = insertelement <4 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat40 = shufflevector <4 x i64> %broadcast.splatinsert39, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert41 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat42 = shufflevector <4 x i64> %broadcast.splatinsert41, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat42, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind44 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next47, %vec.epilog.vector.body ] ; 2 uses
  %i.ah = mul <4 x i64> %broadcast.splat40, %vec.ind44
  %wide.gep45 = getelementptr inbounds nuw i8, ptr %1, <4 x i64> %i.ah
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index43
  store <4 x ptr> %wide.gep45, ptr %i.ai, align 8, !tbaa !23
  %index.next46 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next47 = add nuw nsw <4 x i64> %vec.ind44, splat (i64 4)
  %i.aj = icmp eq i64 %index.next46, %n.vec38
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec38, %wide.trip.count
  br i1 %cmp.n48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !17
  call void @png_read_image(ptr noundef %i.ak, ptr noundef nonnull %i.m) #12
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !18
  call void @png_read_end(ptr noundef %i.al, ptr noundef %i.am) #12
  call void @png_destroy_read_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, ptr noundef null) #12
  call void @free(ptr noundef nonnull %i.m) #12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !16
  %i.ap = call i32 @fclose(ptr noundef %i.ao)     ; 0 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.aq = mul i64 %i.u, %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

bb.f:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare i64 @png_get_rowbytes(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_read_image(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_read_end(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 9) i32 @dt_imageio_open_png(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dt_imageio_png_t, align 8   ; 11 uses
  %i.a = load i32, ptr %0, align 16, !tbaa !55
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @dt_exif_read(ptr noundef nonnull %0, ptr noundef %1) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.c = call i32 @dt_imageio_png_read_header(ptr noundef %1, ptr noundef nonnull %3)
  %.not70 = icmp eq i32 %i.c, 0
  br i1 %.not70, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = call i64 @png_get_rowbytes(ptr noundef %i.h, ptr noundef %i.j) #12
  %i.l = mul i64 %i.k, %i.f
  %i.m = call ptr @dt_alloc_aligned(i64 noundef %i.l) #12 ; 26 uses
  %.not71 = icmp eq ptr %i.m, null
  br i1 %.not71, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16
  %i.p = call i32 @fclose(ptr noundef %i.o)       ; 0 uses
  call void @png_destroy_read_struct(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef null) #12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.q) #12
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.r = call i32 @dt_imageio_png_read_image(ptr noundef nonnull %3, ptr noundef nonnull %i.m)
  %.not72 = icmp eq i32 %i.r, 0
  br i1 %.not72, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.m) #12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.s) #12
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !20   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 %i.u, ptr %i.v, align 4, !tbaa !56
  %i.w = load i32, ptr %i.d, align 4, !tbaa !21   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 %i.w, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i32 4, ptr %i.aa, align 16, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1492
  store i32 1, ptr %i.ab, align 4, !tbaa !59
  %i.ac = call ptr @dt_mipmap_cache_alloc(ptr noundef %2, ptr noundef nonnull %0) #12 ; 11 uses
  %.not73 = icmp eq ptr %i.ac, null
  br i1 %.not73, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  %i.af = call i32 @fclose(ptr noundef %i.ae)     ; 0 uses
  call void @png_destroy_read_struct(ptr noundef nonnull %i.g, ptr noundef nonnull %i.i, ptr noundef null) #12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1124
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ag) #12
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ah = zext i32 %i.u to i64                    ; 3 uses
  %i.ai = zext i32 %i.w to i64                    ; 3 uses
  %i.aj = mul nuw i64 %i.ai, %i.ah                ; 13 uses
  %i.ak = and i32 %i.z, 240
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !60
  %i.ao = and i32 %i.an, -161                     ; 2 uses
  %.not80 = icmp eq i64 %i.aj, 0                  ; 2 uses
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = or disjoint i32 %i.ao, 32
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !60
  br i1 %.not80, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %bb.k
  %min.iters.check110 = icmp ult i64 %i.aj, 16
  br i1 %min.iters.check110, label %.lr.ph78.preheader131, label %vector.scevcheck97

vector.scevcheck97:                               ; preds = %.lr.ph78.preheader
  %i.aq = add i64 %i.aj, -1
  %scevgep98 = getelementptr i8, ptr %i.m, i64 1  ; 2 uses
  %mul99 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aq, i64 3) ; 2 uses
  %mul.result100 = extractvalue { i64, i1 } %mul99, 0 ; 2 uses
  %mul.overflow101 = extractvalue { i64, i1 } %mul99, 1
  %i.ar = getelementptr i8, ptr %scevgep98, i64 %mul.result100
  %i.as = icmp ult ptr %i.ar, %scevgep98
  %scevgep102 = getelementptr i8, ptr %i.m, i64 2 ; 2 uses
  %i.at = getelementptr i8, ptr %scevgep102, i64 %mul.result100
  %i.au = icmp ult ptr %i.at, %scevgep102
  %i.av = or i1 %i.au, %mul.overflow101
  %i.aw = or i1 %i.as, %i.av
  br i1 %i.aw, label %.lr.ph78.preheader131, label %vector.memcheck111

vector.memcheck111:                               ; preds = %vector.scevcheck97
  %i.ax = mul nuw i64 %i.ai, %i.ah                ; 2 uses
  %i.ay = shl i64 %i.ax, 4
  %i.az = getelementptr i8, ptr %i.ac, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 -4
  %i.bb = mul i64 %i.ax, 3
  %i.bc = getelementptr i8, ptr %i.m, i64 %i.bb
  %bound0112 = icmp ult ptr %i.ac, %i.bc
  %bound1113 = icmp ult ptr %i.m, %i.ba
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %.lr.ph78.preheader131, label %vector.ph115

vector.ph115:                                     ; preds = %vector.memcheck111
  %n.vec116 = and i64 %i.aj, -8                   ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next127, %vector.body117 ] ; 2 uses
  %vec.ind119 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph115 ], [ %vec.ind.next128, %vector.body117 ] ; 2 uses
  %i.bd = mul i64 %index118, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bd
  %wide.vec120 = load <24 x i8>, ptr %i.be, align 1, !tbaa !29, !alias.scope !61 ; 3 uses
  %strided.vec121 = shufflevector <24 x i8> %wide.vec120, <24 x i8> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec122 = shufflevector <24 x i8> %wide.vec120, <24 x i8> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec123 = shufflevector <24 x i8> %wide.vec120, <24 x i8> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.bf = uitofp <8 x i8> %strided.vec121 to <8 x float>
  %i.bg = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bf, splat (float f0x3B808081)
  %i.bh = shl <8 x i64> %vec.ind119, splat (i64 4)
  %wide.gep124 = getelementptr inbounds nuw i8, ptr %i.ac, <8 x i64> %i.bh ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bg, <8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !63, !noalias !61
  %i.bi = uitofp <8 x i8> %strided.vec122 to <8 x float>
  %i.bj = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bi, splat (float f0x3B808081)
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep124, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bj, <8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !63, !noalias !61
  %i.bk = uitofp <8 x i8> %strided.vec123 to <8 x float>
  %i.bl = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.bk, splat (float f0x3B808081)
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep124, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.bl, <8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !63, !noalias !61
  %index.next127 = add nuw i64 %index118, 8       ; 2 uses
  %vec.ind.next128 = add nuw <8 x i64> %vec.ind119, splat (i64 8)
  %i.bm = icmp eq i64 %index.next127, %n.vec116
  br i1 %i.bm, label %middle.block129, label %vector.body117, !llvm.loop !38

middle.block129:                                  ; preds = %vector.body117
  %cmp.n = icmp eq i64 %i.aj, %n.vec116
  br i1 %cmp.n, label %.loopexit, label %.lr.ph78.preheader131

.lr.ph78.preheader131:                            ; preds = %vector.memcheck111, %vector.scevcheck97, %.lr.ph78.preheader, %middle.block129
  %.06677.ph = phi i64 [ 0, %vector.memcheck111 ], [ 0, %vector.scevcheck97 ], [ 0, %.lr.ph78.preheader ], [ %n.vec116, %middle.block129 ] ; 5 uses
  %.neg = or disjoint i64 %.06677.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader131
  %i.bn = mul i64 %.06677.ph, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bn ; 3 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fmul reassoc nnan nsz arcp contract afn float %i.bq, f0x3B808081
  %.idx74.prol = shl i64 %.06677.ph, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx74.prol ; 3 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !62
  %i.bt = getelementptr i8, ptr %i.bo, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bv, f0x3B808081
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float %i.bw, ptr %i.bx, align 4, !tbaa !62
  %i.by = getelementptr i8, ptr %i.bo, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !29
  %i.ca = uitofp i8 %i.bz to float
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.ca, f0x3B808081
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.cb, ptr %i.cc, align 4, !tbaa !62
  %i.cd = or disjoint i64 %.06677.ph, 1
  br label %.lr.ph78.prol.loopexit

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader131
  %.06677.unr = phi i64 [ %.06677.ph, %.lr.ph78.preheader131 ], [ %i.cd, %.lr.ph78.prol ]
  %i.ce = icmp eq i64 %i.aj, %.neg
  br i1 %i.ce, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %.06677 = phi i64 [ %i.dm, %.lr.ph78 ], [ %.06677.unr, %.lr.ph78.prol.loopexit ] ; 4 uses
  %i.cf = mul i64 %.06677, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cf ; 3 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29
  %i.ci = uitofp i8 %i.ch to float
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ci, f0x3B808081
  %.idx74 = shl i64 %.06677, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx74 ; 3 uses
  store float %i.cj, ptr %i.ck, align 4, !tbaa !62
  %i.cl = getelementptr i8, ptr %i.cg, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !29
  %i.cn = uitofp i8 %i.cm to float
  %i.co = fmul reassoc nnan nsz arcp contract afn float %i.cn, f0x3B808081
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float %i.co, ptr %i.cp, align 4, !tbaa !62
  %i.cq = getelementptr i8, ptr %i.cg, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !29
  %i.cs = uitofp i8 %i.cr to float
  %i.ct = fmul reassoc nnan nsz arcp contract afn float %i.cs, f0x3B808081
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !62
  %i.cv = add nuw i64 %.06677, 1                  ; 2 uses
  %i.cw = mul i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cw ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = uitofp i8 %i.cy to float
  %i.da = fmul reassoc nnan nsz arcp contract afn float %i.cz, f0x3B808081
  %.idx74.1 = shl i64 %i.cv, 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx74.1 ; 3 uses
  store float %i.da, ptr %i.db, align 4, !tbaa !62
  %i.dc = getelementptr i8, ptr %i.cx, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.de = uitofp i8 %i.dd to float
  %i.df = fmul reassoc nnan nsz arcp contract afn float %i.de, f0x3B808081
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store float %i.df, ptr %i.dg, align 4, !tbaa !62
  %i.dh = getelementptr i8, ptr %i.cx, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !29
  %i.dj = uitofp i8 %i.di to float
  %i.dk = fmul reassoc nnan nsz arcp contract afn float %i.dj, f0x3B808081
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store float %i.dk, ptr %i.dl, align 4, !tbaa !62
  %i.dm = add nuw i64 %.06677, 2                  ; 2 uses
  %exitcond82.not.1 = icmp eq i64 %i.dm, %i.aj
  br i1 %exitcond82.not.1, label %.loopexit, label %.lr.ph78, !llvm.loop !39

bb.l:                                             ; preds = %bb.j
  %i.dn = or disjoint i32 %i.ao, 128
  store i32 %i.dn, ptr %i.am, align 4, !tbaa !60
  br i1 %.not80, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i64 %i.aj, 17
  br i1 %min.iters.check, label %.lr.ph.preheader132, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.do = add i64 %i.aj, -1
  %scevgep = getelementptr i8, ptr %i.m, i64 2    ; 2 uses
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.do, i64 6) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.dp = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.dq = icmp ult ptr %i.dp, %scevgep
  %scevgep87 = getelementptr i8, ptr %i.m, i64 3  ; 2 uses
  %i.dr = getelementptr i8, ptr %scevgep87, i64 %mul.result
  %i.ds = icmp ult ptr %i.dr, %scevgep87
  %scevgep88 = getelementptr i8, ptr %i.m, i64 4  ; 2 uses
  %i.dt = getelementptr i8, ptr %scevgep88, i64 %mul.result
  %i.du = icmp ult ptr %i.dt, %scevgep88
  %i.dv = or i1 %i.du, %mul.overflow
  %i.dw = or i1 %i.ds, %i.dq
  %i.dx = or i1 %i.dw, %i.dv
  br i1 %i.dx, label %.lr.ph.preheader132, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dy = mul nuw i64 %i.ai, %i.ah                ; 2 uses
  %i.dz = shl i64 %i.dy, 4
  %i.ea = getelementptr i8, ptr %i.ac, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = mul i64 %i.dy, 6
  %i.ed = getelementptr i8, ptr %i.m, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %bound0 = icmp ult ptr %i.ac, %i.ee
  %bound1 = icmp ult ptr %i.m, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ef = and i64 %i.aj, 7                        ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 0
  %i.eh = select i1 %i.eg, i64 8, i64 %i.ef
  %n.vec = sub i64 %i.aj, %i.eh                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %4 = mul <8 x i64> %vec.ind, splat (i64 6)      ; 8 uses
  %5 = extractelement <8 x i64> %4, i64 0
  %6 = getelementptr inbounds nuw i8, ptr %i.m, i64 %5 ; 2 uses
  %7 = extractelement <8 x i64> %4, i64 1
  %8 = getelementptr inbounds nuw i8, ptr %i.m, i64 %7
  %9 = extractelement <8 x i64> %4, i64 2
  %10 = getelementptr inbounds nuw i8, ptr %i.m, i64 %9
  %11 = extractelement <8 x i64> %4, i64 3
  %12 = getelementptr inbounds nuw i8, ptr %i.m, i64 %11
  %13 = extractelement <8 x i64> %4, i64 4
  %14 = getelementptr inbounds nuw i8, ptr %i.m, i64 %13
  %15 = extractelement <8 x i64> %4, i64 5
  %16 = getelementptr inbounds nuw i8, ptr %i.m, i64 %15
  %17 = extractelement <8 x i64> %4, i64 6
  %18 = getelementptr inbounds nuw i8, ptr %i.m, i64 %17
  %19 = extractelement <8 x i64> %4, i64 7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 %19
  %wide.vec = load <48 x i8>, ptr %6, align 1, !tbaa !29, !alias.scope !64 ; 5 uses
  %strided.vec = shufflevector <48 x i8> %wide.vec, <48 x i8> poison, <8 x i32> <i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 42>
  %strided.vec91 = shufflevector <48 x i8> %wide.vec, <48 x i8> poison, <8 x i32> <i32 1, i32 7, i32 13, i32 19, i32 25, i32 31, i32 37, i32 43>
  %strided.vec92 = shufflevector <48 x i8> %wide.vec, <48 x i8> poison, <8 x i32> <i32 2, i32 8, i32 14, i32 20, i32 26, i32 32, i32 38, i32 44>
  %strided.vec93 = shufflevector <48 x i8> %wide.vec, <48 x i8> poison, <8 x i32> <i32 3, i32 9, i32 15, i32 21, i32 27, i32 33, i32 39, i32 45>
  %strided.vec94 = shufflevector <48 x i8> %wide.vec, <48 x i8> poison, <8 x i32> <i32 4, i32 10, i32 16, i32 22, i32 28, i32 34, i32 40, i32 46>
  %i.ej = uitofp <8 x i8> %strided.vec to <8 x float>
  %i.ek = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ej, splat (float 2.560000e+02)
  %i.el = uitofp <8 x i8> %strided.vec91 to <8 x float>
  %i.em = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ek, %i.el
  %i.en = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.em, splat (float f0x37800080)
  %i.eo = shl <8 x i64> %vec.ind, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ac, <8 x i64> %i.eo ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.en, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !65, !noalias !64
  %i.ep = uitofp <8 x i8> %strided.vec92 to <8 x float>
  %i.eq = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ep, splat (float 2.560000e+02)
  %20 = getelementptr i8, ptr %6, i64 3
  %21 = getelementptr i8, ptr %8, i64 3
  %22 = getelementptr i8, ptr %10, i64 3
  %23 = getelementptr i8, ptr %12, i64 3
  %24 = getelementptr i8, ptr %14, i64 3
  %25 = getelementptr i8, ptr %16, i64 3
  %26 = getelementptr i8, ptr %18, i64 3
  %i.er = getelementptr i8, ptr %i.ei, i64 3
  %27 = load i8, ptr %20, align 1, !tbaa !29, !alias.scope !64
  %28 = load i8, ptr %21, align 1, !tbaa !29, !alias.scope !64
  %29 = load i8, ptr %22, align 1, !tbaa !29, !alias.scope !64
  %30 = load i8, ptr %23, align 1, !tbaa !29, !alias.scope !64
  %31 = load i8, ptr %24, align 1, !tbaa !29, !alias.scope !64
  %32 = load i8, ptr %25, align 1, !tbaa !29, !alias.scope !64
  %33 = load i8, ptr %26, align 1, !tbaa !29, !alias.scope !64
  %34 = load i8, ptr %i.er, align 1, !tbaa !29, !alias.scope !64
  %35 = insertelement <8 x i8> poison, i8 %27, i64 0
  %36 = insertelement <8 x i8> %35, i8 %28, i64 1
  %37 = insertelement <8 x i8> %36, i8 %29, i64 2
  %38 = insertelement <8 x i8> %37, i8 %30, i64 3
  %39 = insertelement <8 x i8> %38, i8 %31, i64 4
  %40 = insertelement <8 x i8> %39, i8 %32, i64 5
  %41 = insertelement <8 x i8> %40, i8 %33, i64 6
  %42 = insertelement <8 x i8> %41, i8 %34, i64 7
  %i.es = uitofp <8 x i8> %42 to <8 x float>
  %i.et = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.eq, %i.es
  %i.eu = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.et, splat (float f0x37800080)
  %wide.gep95 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep95, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !65, !noalias !64
  %i.ev = uitofp <8 x i8> %strided.vec94 to <8 x float>
  %i.ew = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ev, splat (float 2.560000e+02)
  %i.ex = uitofp <8 x i8> %strided.vec93 to <8 x float>
  %i.ey = fadd reassoc nnan nsz arcp contract afn <8 x float> %i.ew, %i.ex
  %i.ez = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.ey, splat (float f0x37800080)
  %wide.gep96 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ez, <8 x ptr> align 4 %wide.gep96, <8 x i1> splat (i1 true)), !tbaa !62, !alias.scope !65, !noalias !64
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %.lr.ph.preheader132, label %vector.body, !llvm.loop !43

.lr.ph.preheader132:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader
  %.076.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader132, %.lr.ph
  %.076 = phi i64 [ %i.gf, %.lr.ph ], [ %.076.ph, %.lr.ph.preheader132 ] ; 3 uses
  %i.fb = mul i64 %.076, 6
  %i.fc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.fb ; 5 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !29
  %i.fe = uitofp i8 %i.fd to float
  %i.ff = fmul reassoc nnan nsz arcp contract afn float %i.fe, 2.560000e+02
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !29
  %i.fi = uitofp i8 %i.fh to float
  %i.fj = fadd reassoc nnan nsz arcp contract afn float %i.ff, %i.fi
  %i.fk = fmul reassoc nnan nsz arcp contract afn float %i.fj, f0x37800080
  %.idx = shl i64 %.076, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx ; 3 uses
  store float %i.fk, ptr %i.fl, align 4, !tbaa !62
  %i.fm = getelementptr i8, ptr %i.fc, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29
  %i.fo = uitofp i8 %i.fn to float
  %i.fp = fmul reassoc nnan nsz arcp contract afn float %i.fo, 2.560000e+02
  %i.fq = getelementptr i8, ptr %i.fc, i64 3      ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !29
  %i.fs = uitofp i8 %i.fr to float
  %i.ft = fadd reassoc nnan nsz arcp contract afn float %i.fp, %i.fs
  %i.fu = fmul reassoc nnan nsz arcp contract afn float %i.ft, f0x37800080
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store float %i.fu, ptr %i.fv, align 4, !tbaa !62
  %i.fw = getelementptr i8, ptr %i.fc, i64 4
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !29
  %i.fy = uitofp i8 %i.fx to float
  %i.fz = fmul reassoc nnan nsz arcp contract afn float %i.fy, 2.560000e+02
  %i.ga = load i8, ptr %i.fq, align 1, !tbaa !29
  %i.gb = uitofp i8 %i.ga to float
  %i.gc = fadd reassoc nnan nsz arcp contract afn float %i.fz, %i.gb
  %i.gd = fmul reassoc nnan nsz arcp contract afn float %i.gc, f0x37800080
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store float %i.gd, ptr %i.ge, align 4, !tbaa !62
  %i.gf = add nuw i64 %.076, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gf, %i.aj
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !44

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph78.prol.loopexit, %.lr.ph78, %middle.block129, %bb.l, %bb.k
  call void @free(ptr noundef nonnull %i.m) #12
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 2, ptr %i.gg, align 16, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 1496
  store i32 0, ptr %i.gh, align 8, !tbaa !67
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1428 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !60
  %i.gk = and i32 %i.gj, -131137
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !60
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store i32 2, ptr %i.gl, align 8, !tbaa !68
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %bb.g, %.loopexit, %bb.i, %bb.c
  %.2 = phi i32 [ 3, %bb.c ], [ 8, %bb.e ], [ 6, %bb.g ], [ 0, %.loopexit ], [ 8, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.2
}

declare i32 @dt_exif_read(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare ptr @dt_mipmap_cache_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @dt_imageio_png_read_profile(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 12)) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dt_imageio_png_t, align 8   ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  store ptr null, ptr %1, align 8, !tbaa !23
  store i32 2, ptr %2, align 4, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2, ptr %i.e, align 4, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 2, ptr %i.f, align 4, !tbaa !72
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %0, align 1, !tbaa !29
  %.not31 = icmp eq i8 %i.g, 0
  br i1 %.not31, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.h = call i32 @dt_imageio_png_read_header(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %.not32 = icmp eq i32 %i.h, 0
  br i1 %.not32, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.m = call i32 @png_get_unknown_chunks(ptr noundef %i.j, ptr noundef %i.l, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.not3540.not = icmp eq i32 %i.m, 0
  br i1 %.not3540.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.p = add nuw i64 %.041, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.n
  br i1 %exitcond.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.041 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.041 ; 2 uses
  %i.r = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(5) @.str.2) #15
  %.not33 = icmp eq i32 %i.r, 0
  br i1 %.not33, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29
  %i.y = icmp eq i8 %i.v, 0
  %i.z = icmp ne i8 %i.x, 0
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load <2 x i8>, ptr %i.t, align 1, !tbaa !29
  %i.ac = zext <2 x i8> %i.ab to <2 x i32>
  store <2 x i32> %i.ac, ptr %2, align 4, !tbaa !77
  store i32 0, ptr %i.f, align 4, !tbaa !72
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !119
  %i.ae = and i32 %i.ad, 262144
  %.not36 = icmp eq i32 %i.ae, 0
  br i1 %.not36, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef nonnull %0) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.h, %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ah = call i32 @png_get_valid(ptr noundef %i.af, ptr noundef %i.ag, i32 noundef 4096) #12
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !18
  %i.ak = call i32 @png_get_iCCP(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b) #12
  %.not38 = icmp eq i32 %i.ak, 0
  br i1 %.not38, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i32, ptr %i.b, align 4, !tbaa !77
  %i.am = zext i32 %i.al to i64
  %i.an = call noalias ptr @g_try_malloc(i64 noundef %i.am) #14 ; 3 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !23
  %.not39 = icmp eq ptr %i.an, null
  br i1 %.not39, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0

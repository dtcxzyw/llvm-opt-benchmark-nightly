Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_jpeg?download=true
inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@JPEGDefaultTileSize:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !175
  tail call void %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %i.e = load i32, ptr %1, align 4, !tbaa !6      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load i16, ptr %i.f, align 8, !tbaa !95
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw nsw i32 %i.h, 3                  ; 3 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.e, -1
  %i.m = add i32 %i.l, %i.i
  %.fr = freeze i32 %i.m                          ; 2 uses
  %i.n = urem i32 %.fr, %i.i
  %i.o = sub nuw i32 %.fr, %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ]
  store i32 %i.p, ptr %1, align 4, !tbaa !6
  %i.q = load i32, ptr %2, align 4, !tbaa !6      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.s = load i16, ptr %i.r, align 2, !tbaa !95
  %i.t = zext i16 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 3                  ; 3 uses
  %i.v = sub nsw i32 0, %i.u
  %i.w = icmp ult i32 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.q, -1
  %i.y = add i32 %i.x, %i.u
  %.fr21 = freeze i32 %i.y                        ; 2 uses
  %i.z = urem i32 %.fr21, %i.u
  %i.aa = sub nuw i32 %.fr21, %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ab = phi i32 [ %i.aa, %bb.d ], [ 0, %bb.c ]
  store i32 %i.ab, ptr %2, align 4, !tbaa !6
  ret void
}

declare void @_TIFFsetByteArrayExt(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @TIFFFieldWithTag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #2

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i64 @TIFFGetStrileOffset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @TIFFGetStrileByteCount(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @TIFFReInitJPEG_12(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_TIFFNoPostDecode(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_create_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.b = call ptr @jpeg_std_error(ptr noundef nonnull %i.a) #16
  store ptr %i.b, ptr %0, align 8, !tbaa !36
  store ptr @TIFFjpeg_error_exit, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr @TIFFjpeg_output_message, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = call i32 @_setjmp(ptr noundef nonnull %i.e) #17
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_CreateCompress(ptr noundef nonnull %0, i32 noundef 80, i64 noundef 584) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.g
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #10

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_init_source(ptr nofree noundef captures(none) initializes((1104, 1120)) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store ptr %i.b, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 %i.f, ptr %i.g, align 8, !tbaa !70
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_abort(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_abort(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @DecodeRowError(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 %2, i16 zeroext %3) #0 {
bb.a:
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGDecodeRaw(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.f = load i32, ptr %i.e, align 4, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !105
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = icmp ugt i32 %i.d, %i.i
  br i1 %i.j, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !58
  %i.m = and i32 %i.l, 1024
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  %.0100.in = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not111 = icmp eq i32 %.0100.in, 0
  br i1 %.not111, label %.thread136, label %.thread

.thread:                                          ; preds = %bb.b, %select.unfold
  %.0100.in118 = phi i32 [ %.0100.in, %select.unfold ], [ %i.d, %bb.b ]
  %.0100 = zext i32 %.0100.in118 to i64           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !129
  %.fr198 = freeze i32 %i.q                       ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 412 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.y = sext i32 %i.s to i64                     ; 12 uses
  %i.z = add i32 %.fr198, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.y, %i.aa                 ; 2 uses
  %.not113145 = icmp eq i32 %.fr198, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1172 ; 2 uses
  %.pre260 = load i64, ptr %i.t, align 8, !tbaa !107 ; 2 uses
  br i1 %.not113145, label %.thread.split.us.split.us, label %.thread.split.preheader

.thread.split.preheader:                          ; preds = %.thread
  %xtraiter397 = and i32 %.fr198, 7               ; 2 uses
  %lcmp.mod398.not = icmp eq i32 %xtraiter397, 0
  %i.ad = icmp ult i32 %.fr198, 8
  br label %.thread.split

.thread.split.us.split.us:                        ; preds = %.thread, %._crit_edge.split.us.split.us.us.us
  %i.ae = phi i64 [ %i.au, %._crit_edge.split.us.split.us.us.us ], [ %.pre260, %.thread ]
  %.0104.us.us = phi i64 [ %i.av, %._crit_edge.split.us.split.us.us.us ], [ %2, %.thread ] ; 6 uses
  %.1101.us.us = phi i64 [ %i.ax, %._crit_edge.split.us.split.us.us.us ], [ %.0100, %.thread ]
  %i.af = icmp slt i64 %.0104.us.us, %i.ae
  br i1 %i.af, label %.split197.us, label %bb.c

bb.c:                                             ; preds = %.thread.split.us.split.us
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 7
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.v, align 4, !tbaa !36
  %i.aj = shl nsw i32 %i.ai, 3                    ; 2 uses
  %i.ak = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, i32 noundef %i.aj)
  %.not112.us.us = icmp eq i32 %i.ak, %i.aj
  br i1 %.not112.us.us, label %.thread119.us.us, label %.loopexit141

.thread119.us.us:                                 ; preds = %bb.d
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %.thread119.us.us, %bb.c
  %i.al = phi i32 [ 0, %.thread119.us.us ], [ %i.ag, %bb.c ]
  %i.am = load i32, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.us176.us.preheader, label %._crit_edge.split.us.split.us.us.us

.lr.ph.us176.us.preheader:                        ; preds = %bb.e
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !36
  %broadcast.splatinsert357 = insertelement <16 x i64> poison, i64 %.0104.us.us, i64 0
  %broadcast.splat358 = shufflevector <16 x i64> %broadcast.splatinsert357, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert331 = insertelement <16 x i64> poison, i64 %.0104.us.us, i64 0
  %broadcast.splat332 = shufflevector <16 x i64> %broadcast.splatinsert331, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.us176.us

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge156.us.us.us.us, %bb.e
  %i.ap = add nsw i32 %i.al, 1
  store i32 %i.ap, ptr %i.u, align 8, !tbaa !116
  %i.aq = load i16, ptr %i.ac, align 4, !tbaa !99 ; 2 uses
  %i.ar = zext i16 %i.aq to i32
  %i.as = load i32, ptr %i.g, align 4, !tbaa !105
  %i.at = add i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.g, align 4, !tbaa !105
  %i.au = load i64, ptr %i.t, align 8, !tbaa !107 ; 2 uses
  %i.av = sub nsw i64 %.0104.us.us, %i.au
  %i.aw = zext i16 %i.aq to i64
  %i.ax = sub nsw i64 %.1101.us.us, %i.aw         ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.thread.split.us.split.us, label %.thread136

.lr.ph.us176.us:                                  ; preds = %.lr.ph.us176.us.preheader, %._crit_edge156.us.us.us.us
  %.094172.us.us.us.us = phi i32 [ %.195.lcssa.us.us.us.us, %._crit_edge156.us.us.us.us ], [ 0, %.lr.ph.us176.us.preheader ] ; 2 uses
  %.098171.us.us.us.us = phi i32 [ %i.be, %._crit_edge156.us.us.us.us ], [ 0, %.lr.ph.us176.us.preheader ]
  %.099170.us.us.us.us = phi ptr [ %i.bf, %._crit_edge156.us.us.us.us ], [ %i.ao, %.lr.ph.us176.us.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.099170.us.us.us.us, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !112 ; 5 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph155.us.us.us.us, label %._crit_edge156.us.us.us.us

._crit_edge156.us.us.us.us.loopexit:              ; preds = %.preheader138.us.us.us.us.us.us, %middle.block346
  %indvars.iv.next256.lcssa = phi i64 [ %11, %middle.block346 ], [ %indvars.iv.next256, %.preheader138.us.us.us.us.us.us ]
  %i.bc = trunc nsw i64 %indvars.iv.next256.lcssa to i32
  br label %._crit_edge156.us.us.us.us

._crit_edge156.us.us.us.us.loopexit202:           ; preds = %.preheader139.us.us.us.us.us, %middle.block372
  %indvars.iv.next252.lcssa = phi i64 [ %i.bo, %middle.block372 ], [ %indvars.iv.next252, %.preheader139.us.us.us.us.us ]
  %i.bd = trunc nsw i64 %indvars.iv.next252.lcssa to i32
  br label %._crit_edge156.us.us.us.us

._crit_edge156.us.us.us.us:                       ; preds = %._crit_edge156.us.us.us.us.loopexit202, %._crit_edge156.us.us.us.us.loopexit, %.lr.ph.us176.us
  %.195.lcssa.us.us.us.us = phi i32 [ %.094172.us.us.us.us, %.lr.ph.us176.us ], [ %i.bc, %._crit_edge156.us.us.us.us.loopexit ], [ %i.bd, %._crit_edge156.us.us.us.us.loopexit202 ]
  %i.be = add nuw nsw i32 %.098171.us.us.us.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.099170.us.us.us.us, i64 96
  %i.bg = icmp slt i32 %i.be, %i.am
  br i1 %i.bg, label %.lr.ph.us176.us, label %._crit_edge.split.us.split.us.us.us

.lr.ph155.us.us.us.us:                            ; preds = %.lr.ph.us176.us
  %i.bh = getelementptr inbounds nuw i8, ptr %.099170.us.us.us.us, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !111
  %.fr200 = freeze i32 %i.bi                      ; 2 uses
  %i.bj = sext i32 %.fr200 to i64                 ; 8 uses
  %i.bk = add nsw i64 %i.ab, %i.bj                ; 4 uses
  %i.bl = icmp eq i32 %.fr200, 1
  %i.bm = sext i32 %.094172.us.us.us.us to i64    ; 6 uses
  %4 = zext nneg i32 %i.ba to i64                 ; 4 uses
  %min.iters.check326 = icmp ult i32 %i.ba, 16    ; 2 uses
  br i1 %i.bl, label %.lr.ph155.split.us.us.us.us.us.preheader, label %.lr.ph155.split.us173.us.us.us.preheader

.lr.ph155.split.us173.us.us.us.preheader:         ; preds = %.lr.ph155.us.us.us.us
  br i1 %min.iters.check326, label %.lr.ph155.split.us173.us.us.us.preheader382, label %vector.ph353

vector.ph353:                                     ; preds = %.lr.ph155.split.us173.us.us.us.preheader
  %n.vec354 = and i64 %4, 2147483632              ; 4 uses
  %i.bn = mul nsw i64 %n.vec354, %i.bj
  %i.bo = add i64 %i.bn, %i.bm                    ; 2 uses
  %i.bp = trunc nuw nsw i64 %n.vec354 to i32
  %broadcast.splatinsert355 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat356 = shufflevector <16 x i64> %broadcast.splatinsert355, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert359 = insertelement <16 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat360 = shufflevector <16 x i64> %broadcast.splatinsert359, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert361 = insertelement <16 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat362 = shufflevector <16 x i64> %broadcast.splatinsert361, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.bq = mul nsw <16 x i64> %broadcast.splat362, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction363 = add nsw <16 x i64> %broadcast.splat360, %i.bq
  %i.br = shl nsw i64 %i.bj, 4
  %broadcast.splatinsert364 = insertelement <16 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat365 = shufflevector <16 x i64> %broadcast.splatinsert364, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body366

vector.body366:                                   ; preds = %vector.body.interim371, %vector.ph353
  %index367 = phi i64 [ 0, %vector.ph353 ], [ %index.next369, %vector.body.interim371 ]
  %vec.ind368 = phi <16 x i64> [ %induction363, %vector.ph353 ], [ %vec.ind.next370, %vector.body.interim371 ] ; 2 uses
  %5 = add <16 x i64> %broadcast.splat356, %vec.ind368
  %6 = icmp slt <16 x i64> %broadcast.splat358, %5
  %7 = freeze <16 x i1> %6
  %8 = bitcast <16 x i1> %7 to i16
  %.not378 = icmp eq i16 %8, 0
  br i1 %.not378, label %vector.body.interim371, label %.split.us

vector.body.interim371:                           ; preds = %vector.body366
  %vec.ind.next370 = add nsw <16 x i64> %vec.ind368, %broadcast.splat365
  %index.next369 = add nuw i64 %index367, 16      ; 2 uses
  %9 = icmp eq i64 %index.next369, %n.vec354
  br i1 %9, label %middle.block372, label %vector.body366, !llvm.loop !176

middle.block372:                                  ; preds = %vector.body.interim371
  %cmp.n373 = icmp eq i64 %n.vec354, %4
  br i1 %cmp.n373, label %._crit_edge156.us.us.us.us.loopexit202, label %.lr.ph155.split.us173.us.us.us.preheader382

.lr.ph155.split.us173.us.us.us.preheader382:      ; preds = %.lr.ph155.split.us173.us.us.us.preheader, %middle.block372
  %indvars.iv251.ph = phi i64 [ %i.bm, %.lr.ph155.split.us173.us.us.us.preheader ], [ %i.bo, %middle.block372 ]
  %.090153.us158.us.us.us.us.ph = phi i32 [ 0, %.lr.ph155.split.us173.us.us.us.preheader ], [ %i.bp, %middle.block372 ]
  br label %.lr.ph155.split.us173.us.us.us

.lr.ph155.split.us.us.us.us.us.preheader:         ; preds = %.lr.ph155.us.us.us.us
  br i1 %min.iters.check326, label %.lr.ph155.split.us.us.us.us.us.preheader380, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph155.split.us.us.us.us.us.preheader
  %n.vec328 = and i64 %4, 2147483632              ; 4 uses
  %10 = mul nuw nsw i64 %n.vec328, %i.bj
  %11 = add nsw i64 %10, %i.bm                    ; 2 uses
  %12 = trunc nuw nsw i64 %n.vec328 to i32
  %broadcast.splatinsert329 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat330 = shufflevector <16 x i64> %broadcast.splatinsert329, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert333 = insertelement <16 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat334 = shufflevector <16 x i64> %broadcast.splatinsert333, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <16 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat336 = shufflevector <16 x i64> %broadcast.splatinsert335, <16 x i64> poison, <16 x i32> zeroinitializer
  %13 = mul nuw nsw <16 x i64> %broadcast.splat336, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction337 = add nsw <16 x i64> %broadcast.splat334, %13
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body.interim345, %vector.ph327
  %index341 = phi i64 [ 0, %vector.ph327 ], [ %index.next343, %vector.body.interim345 ]
  %vec.ind342 = phi <16 x i64> [ %induction337, %vector.ph327 ], [ %vec.ind.next344, %vector.body.interim345 ] ; 2 uses
  %i.bs = add <16 x i64> %broadcast.splat330, %vec.ind342
  %i.bt = icmp slt <16 x i64> %broadcast.splat332, %i.bs
  %i.bu = freeze <16 x i1> %i.bt
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %.not379 = icmp eq i16 %i.bv, 0
  br i1 %.not379, label %vector.body.interim345, label %.split.us

vector.body.interim345:                           ; preds = %vector.body340
  %vec.ind.next344 = add nsw <16 x i64> %vec.ind342, splat (i64 16)
  %index.next343 = add nuw i64 %index341, 16      ; 2 uses
  %i.bw = icmp eq i64 %index.next343, %n.vec328
  br i1 %i.bw, label %middle.block346, label %vector.body340, !llvm.loop !177

middle.block346:                                  ; preds = %vector.body.interim345
  %cmp.n347 = icmp eq i64 %n.vec328, %4
  br i1 %cmp.n347, label %._crit_edge156.us.us.us.us.loopexit, label %.lr.ph155.split.us.us.us.us.us.preheader380

.lr.ph155.split.us.us.us.us.us.preheader380:      ; preds = %.lr.ph155.split.us.us.us.us.us.preheader, %middle.block346
  %indvars.iv255.ph = phi i64 [ %i.bm, %.lr.ph155.split.us.us.us.us.us.preheader ], [ %11, %middle.block346 ]
  %.090153.us.us.us.us.us.us.ph = phi i32 [ 0, %.lr.ph155.split.us.us.us.us.us.preheader ], [ %12, %middle.block346 ]
  br label %.lr.ph155.split.us.us.us.us.us

.lr.ph155.split.us173.us.us.us:                   ; preds = %.lr.ph155.split.us173.us.us.us.preheader382, %.preheader139.us.us.us.us.us
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %.preheader139.us.us.us.us.us ], [ %indvars.iv251.ph, %.lr.ph155.split.us173.us.us.us.preheader382 ] ; 2 uses
  %.090153.us158.us.us.us.us = phi i32 [ %i.by, %.preheader139.us.us.us.us.us ], [ %.090153.us158.us.us.us.us.ph, %.lr.ph155.split.us173.us.us.us.preheader382 ]
  %i.bx = add i64 %i.bk, %indvars.iv251
  %.not115.us160.us.us.us.us = icmp slt i64 %.0104.us.us, %i.bx
  br i1 %.not115.us160.us.us.us.us, label %.split.us, label %.preheader139.us.us.us.us.us

.preheader139.us.us.us.us.us:                     ; preds = %.lr.ph155.split.us173.us.us.us
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.bj ; 2 uses
  %i.by = add nuw nsw i32 %.090153.us158.us.us.us.us, 1 ; 2 uses
  %exitcond254.not = icmp eq i32 %i.by, %i.ba
  br i1 %exitcond254.not, label %._crit_edge156.us.us.us.us.loopexit202, label %.lr.ph155.split.us173.us.us.us, !llvm.loop !178

.lr.ph155.split.us.us.us.us.us:                   ; preds = %.lr.ph155.split.us.us.us.us.us.preheader380, %.preheader138.us.us.us.us.us.us
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %.preheader138.us.us.us.us.us.us ], [ %indvars.iv255.ph, %.lr.ph155.split.us.us.us.us.us.preheader380 ] ; 2 uses
  %.090153.us.us.us.us.us.us = phi i32 [ %i.ca, %.preheader138.us.us.us.us.us.us ], [ %.090153.us.us.us.us.us.us.ph, %.lr.ph155.split.us.us.us.us.us.preheader380 ]
  %i.bz = add i64 %i.bk, %indvars.iv255
  %.not115.us.us.us.us.us.us = icmp slt i64 %.0104.us.us, %i.bz
  br i1 %.not115.us.us.us.us.us.us, label %.split.us, label %.preheader138.us.us.us.us.us.us

.preheader138.us.us.us.us.us.us:                  ; preds = %.lr.ph155.split.us.us.us.us.us
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, %i.bj ; 2 uses
  %i.ca = add nuw nsw i32 %.090153.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond258.not = icmp eq i32 %i.ca, %i.ba
  br i1 %exitcond258.not, label %._crit_edge156.us.us.us.us.loopexit, label %.lr.ph155.split.us.us.us.us.us, !llvm.loop !179

.thread.split:                                    ; preds = %.thread.split.preheader, %._crit_edge.split
  %i.cb = phi i64 [ %i.hg, %._crit_edge.split ], [ %.pre260, %.thread.split.preheader ]
  %.0106 = phi ptr [ %i.hh, %._crit_edge.split ], [ %1, %.thread.split.preheader ] ; 4 uses
  %.0104 = phi i64 [ %i.hi, %._crit_edge.split ], [ %2, %.thread.split.preheader ] ; 6 uses
  %.1101 = phi i64 [ %i.hk, %._crit_edge.split ], [ %.0100, %.thread.split.preheader ]
  %.0106294 = ptrtoaddr ptr %.0106 to i64
  %i.cc = icmp slt i64 %.0104, %i.cb
  br i1 %i.cc, label %.split197.us, label %bb.f

.split197.us:                                     ; preds = %.thread.split, %.thread.split.us.split.us
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #16
  br label %.loopexit141

bb.f:                                             ; preds = %.thread.split
  %i.cd = load i32, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 7
  br i1 %i.ce, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cf = load i32, ptr %i.v, align 4, !tbaa !36
  %i.cg = shl nsw i32 %i.cf, 3                    ; 2 uses
  %i.ch = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, i32 noundef %i.cg)
  %.not112 = icmp eq i32 %i.ch, %i.cg
  br i1 %.not112, label %.thread119, label %.loopexit141

.thread119:                                       ; preds = %bb.g
  store i32 0, ptr %i.u, align 8, !tbaa !116
  br label %bb.h

bb.h:                                             ; preds = %.thread119, %bb.f
  %i.ci = phi i32 [ 0, %.thread119 ], [ %i.cd, %bb.f ]
  %i.cj = load i32, ptr %i.x, align 8, !tbaa !36
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !36
  %broadcast.splatinsert311 = insertelement <16 x i64> poison, i64 %.0104, i64 0
  %broadcast.splat312 = shufflevector <16 x i64> %broadcast.splatinsert311, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge156
  %indvars.iv237 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next238, %._crit_edge156 ] ; 2 uses
  %.094172 = phi i32 [ 0, %.lr.ph.preheader ], [ %.195.lcssa, %._crit_edge156 ] ; 3 uses
  %.099170 = phi ptr [ %i.cl, %.lr.ph.preheader ], [ %i.gw, %._crit_edge156 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.099170, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !111
  %.fr199 = freeze i32 %i.cn                      ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.099170, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !112 ; 8 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %.lr.ph
  %i.cr = sext i32 %.fr199 to i64                 ; 8 uses
  %i.cs = add nsw i64 %i.ab, %i.cr                ; 4 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv237 ; 2 uses
  %i.cu = icmp eq i32 %.fr199, 1
  br i1 %i.cu, label %.lr.ph155.split.us.preheader, label %.lr.ph155.split

.lr.ph155.split.us.preheader:                     ; preds = %.lr.ph155
  %i.cv = sext i32 %.094172 to i64
  br label %.lr.ph155.split.us

.lr.ph155.split.us:                               ; preds = %.lr.ph155.split.us.preheader, %.loopexit.us
  %indvars.iv233 = phi i64 [ %i.cv, %.lr.ph155.split.us.preheader ], [ %indvars.iv.next234, %.loopexit.us ] ; 3 uses
  %.090153.us = phi i32 [ 0, %.lr.ph155.split.us.preheader ], [ %i.ei, %.loopexit.us ] ; 2 uses
  %i.cw = add i64 %i.cs, %indvars.iv233
  %.not115.us = icmp slt i64 %.0104, %i.cw
  br i1 %.not115.us, label %.split.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph155.split.us
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !126
  %i.cy = load i32, ptr %i.u, align 8, !tbaa !116
  %i.cz = mul nsw i32 %i.cy, %i.cp
  %i.da = add nsw i32 %i.cz, %.090153.us
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !118 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.0106, i64 %indvars.iv233 ; 2 uses
  br i1 %lcmp.mod398.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.085151.us.prol = phi ptr [ %i.di, %.lr.ph.us.prol ], [ %i.de, %.lr.ph.us.preheader ] ; 2 uses
  %.086150.us.prol = phi i32 [ %i.df, %.lr.ph.us.prol ], [ %.fr198, %.lr.ph.us.preheader ]
  %.088149.us.prol = phi ptr [ %i.dg, %.lr.ph.us.prol ], [ %i.dd, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter399 = phi i32 [ %prol.iter399.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.df = add i32 %.086150.us.prol, -1            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.088149.us.prol, i64 1 ; 2 uses
  %i.dh = load i8, ptr %.088149.us.prol, align 1, !tbaa !36
  store i8 %i.dh, ptr %.085151.us.prol, align 1, !tbaa !36
  %i.di = getelementptr inbounds i8, ptr %.085151.us.prol, i64 %i.y ; 2 uses
  %prol.iter399.next = add i32 %prol.iter399, 1   ; 2 uses
  %prol.iter399.cmp.not = icmp eq i32 %prol.iter399.next, %xtraiter397
  br i1 %prol.iter399.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !180

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.085151.us.unr = phi ptr [ %i.de, %.lr.ph.us.preheader ], [ %i.di, %.lr.ph.us.prol ]
  %.086150.us.unr = phi i32 [ %.fr198, %.lr.ph.us.preheader ], [ %i.df, %.lr.ph.us.prol ]
  %.088149.us.unr = phi ptr [ %i.dd, %.lr.ph.us.preheader ], [ %i.dg, %.lr.ph.us.prol ]
  br i1 %i.ad, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.085151.us = phi ptr [ %i.eh, %.lr.ph.us ], [ %.085151.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.086150.us = phi i32 [ %i.ee, %.lr.ph.us ], [ %.086150.us.unr, %.lr.ph.us.prol.loopexit ]
  %.088149.us = phi ptr [ %i.ef, %.lr.ph.us ], [ %.088149.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.088149.us, i64 1
  %i.dk = load i8, ptr %.088149.us, align 1, !tbaa !36
  store i8 %i.dk, ptr %.085151.us, align 1, !tbaa !36
  %i.dl = getelementptr inbounds i8, ptr %.085151.us, i64 %i.y ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.088149.us, i64 2
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !36
  store i8 %i.dn, ptr %i.dl, align 1, !tbaa !36
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %i.y ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.088149.us, i64 3
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !36
  store i8 %i.dq, ptr %i.do, align 1, !tbaa !36
  %i.dr = getelementptr inbounds i8, ptr %i.do, i64 %i.y ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.088149.us, i64 4
  %i.dt = load i8, ptr %i.dp, align 1, !tbaa !36
  store i8 %i.dt, ptr %i.dr, align 1, !tbaa !36
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 %i.y ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.088149.us, i64 5
  %i.dw = load i8, ptr %i.ds, align 1, !tbaa !36
  store i8 %i.dw, ptr %i.du, align 1, !tbaa !36
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.y ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.088149.us, i64 6
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !36
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !36
  %i.ea = getelementptr inbounds i8, ptr %i.dx, i64 %i.y ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.088149.us, i64 7
  %i.ec = load i8, ptr %i.dy, align 1, !tbaa !36
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !36
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 %i.y ; 2 uses
  %i.ee = add i32 %.086150.us, -8                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.088149.us, i64 8
  %i.eg = load i8, ptr %i.eb, align 1, !tbaa !36
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !36
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.y
  %.not114.us.7 = icmp eq i32 %i.ee, 0
  br i1 %.not114.us.7, label %.loopexit.us, label %.lr.ph.us

.loopexit.us:                                     ; preds = %.lr.ph.us, %.lr.ph.us.prol.loopexit
  %indvars.iv.next234 = add nsw i64 %indvars.iv233, %i.cr ; 2 uses
  %i.ei = add nuw nsw i32 %.090153.us, 1          ; 2 uses
  %exitcond236.not = icmp eq i32 %i.ei, %i.cp
  br i1 %exitcond236.not, label %._crit_edge156.loopexit, label %.lr.ph155.split.us

.lr.ph155.split:                                  ; preds = %.lr.ph155
  %i.ej = icmp sgt i32 %.fr199, 0
  %i.ek = sext i32 %.094172 to i64                ; 5 uses
  br i1 %i.ej, label %.lr.ph155.split.split.split.us.preheader, label %.lr.ph155.split.split.split.preheader

.lr.ph155.split.split.split.preheader:            ; preds = %.lr.ph155.split
  %i.el = zext nneg i32 %i.cp to i64              ; 2 uses
  %min.iters.check308 = icmp ult i32 %i.cp, 16
  br i1 %min.iters.check308, label %.lr.ph155.split.split.split.preheader389, label %vector.ph309

vector.ph309:                                     ; preds = %.lr.ph155.split.split.split.preheader
  %n.vec310 = and i64 %i.el, 2147483632           ; 4 uses
  %i.em = mul nsw i64 %n.vec310, %i.cr
  %i.en = add i64 %i.em, %i.ek                    ; 2 uses
  %i.eo = trunc nuw nsw i64 %n.vec310 to i32
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <16 x i64> poison, i64 %i.ek, i64 0
  %broadcast.splat314 = shufflevector <16 x i64> %broadcast.splatinsert313, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert315 = insertelement <16 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat316 = shufflevector <16 x i64> %broadcast.splatinsert315, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ep = mul nsw <16 x i64> %broadcast.splat316, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction = add nsw <16 x i64> %broadcast.splat314, %i.ep
  %i.eq = shl nsw i64 %i.cr, 4
  %broadcast.splatinsert317 = insertelement <16 x i64> poison, i64 %i.eq, i64 0
  %broadcast.splat318 = shufflevector <16 x i64> %broadcast.splatinsert317, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body.interim, %vector.ph309
  %index320 = phi i64 [ 0, %vector.ph309 ], [ %index.next321, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph309 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.er = add <16 x i64> %broadcast.splat, %vec.ind
  %i.es = icmp slt <16 x i64> %broadcast.splat312, %i.er
  %i.et = freeze <16 x i1> %i.es
  %i.eu = bitcast <16 x i1> %i.et to i16
  %.not377 = icmp eq i16 %i.eu, 0
  br i1 %.not377, label %vector.body.interim, label %.split.us

vector.body.interim:                              ; preds = %vector.body319
  %vec.ind.next = add nsw <16 x i64> %vec.ind, %broadcast.splat318
  %index.next321 = add nuw i64 %index320, 16      ; 2 uses
  %i.ev = icmp eq i64 %index.next321, %n.vec310
  br i1 %i.ev, label %middle.block322, label %vector.body319, !llvm.loop !181

middle.block322:                                  ; preds = %vector.body.interim
  %cmp.n323 = icmp eq i64 %n.vec310, %i.el
  br i1 %cmp.n323, label %._crit_edge156.loopexit213, label %.lr.ph155.split.split.split.preheader389

.lr.ph155.split.split.split.preheader389:         ; preds = %.lr.ph155.split.split.split.preheader, %middle.block322
  %indvars.iv.ph = phi i64 [ %i.ek, %.lr.ph155.split.split.split.preheader ], [ %i.en, %middle.block322 ]
  %.090153.ph = phi i32 [ 0, %.lr.ph155.split.split.split.preheader ], [ %i.eo, %middle.block322 ]
  br label %.lr.ph155.split.split.split

.lr.ph155.split.split.split.us.preheader:         ; preds = %.lr.ph155.split
  %wide.trip.count = zext nneg i32 %.fr199 to i64 ; 8 uses
  %i.ew = add i64 %.0106294, %i.ek
  %min.iters.check = icmp ult i32 %.fr199, 4
  %min.iters.check298 = icmp ult i32 %.fr199, 32
  %i.ex = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ex, 0
  %n.vec300 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n305 = icmp eq i64 %n.vec300, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph155.split.split.split.us

.lr.ph155.split.split.split.us:                   ; preds = %.lr.ph155.split.split.split.us.preheader, %..loopexit140_crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph155.split.split.split.us.preheader ], [ %indvar.next, %..loopexit140_crit_edge.us ] ; 2 uses
  %indvars.iv229 = phi i64 [ %i.ek, %.lr.ph155.split.split.split.us.preheader ], [ %indvars.iv.next230, %..loopexit140_crit_edge.us ] ; 3 uses
  %.090153.us163 = phi i32 [ 0, %.lr.ph155.split.split.split.us.preheader ], [ %i.gq, %..loopexit140_crit_edge.us ] ; 2 uses
  %i.ey = mul i64 %indvar, %i.cr
  %i.ez = add i64 %i.ew, %i.ey
  %i.fa = add i64 %i.cs, %indvars.iv229
  %.not115.us165 = icmp slt i64 %.0104, %i.fa
  br i1 %.not115.us165, label %.split.us, label %.preheader139.us166

.preheader139.us166:                              ; preds = %.lr.ph155.split.split.split.us
  %i.fb = getelementptr inbounds i8, ptr %.0106, i64 %indvars.iv229
  %i.fc = load ptr, ptr %i.ct, align 8, !tbaa !126
  %i.fd = load i32, ptr %i.u, align 8, !tbaa !116
  %i.fe = mul nsw i32 %i.fd, %i.cp
  %i.ff = add nsw i32 %i.fe, %.090153.us163
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !118
  br label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv225 = phi i64 [ %indvars.iv.next226.3, %vec.epilog.scalar.ph ], [ %indvars.iv225.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.2143.us = phi ptr [ %i.fu, %vec.epilog.scalar.ph ], [ %.2143.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.2143.us, i64 1
  %i.fk = load i8, ptr %.2143.us, align 1, !tbaa !36
  %i.fl = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %indvars.iv225
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !36
  %i.fm = getelementptr inbounds nuw i8, ptr %.2143.us, i64 2
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !36
  %i.fo = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %indvars.iv225
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !36
  %i.fq = getelementptr inbounds nuw i8, ptr %.2143.us, i64 3
  %i.fr = load i8, ptr %i.fm, align 1, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %indvars.iv225
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %.2143.us, i64 4 ; 2 uses
  %i.fv = load i8, ptr %i.fq, align 1, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %indvars.iv225
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !36
  %indvars.iv.next226.3 = add nuw nsw i64 %indvars.iv225, 4 ; 2 uses
  %exitcond228.not.3 = icmp eq i64 %indvars.iv.next226.3, %wide.trip.count
  br i1 %exitcond228.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !182

iter.check:                                       ; preds = %.preheader139.us166, %._crit_edge.us
  %indvar295 = phi i64 [ 0, %.preheader139.us166 ], [ %indvar.next296, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %.fr198, %.preheader139.us166 ], [ %i.go, %._crit_edge.us ]
  %.1147.us = phi ptr [ %i.fb, %.preheader139.us166 ], [ %i.gp, %._crit_edge.us ] ; 8 uses
  %.189146.us = phi ptr [ %i.fi, %.preheader139.us166 ], [ %.lcssa, %._crit_edge.us ] ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.189146.us297 = ptrtoaddr ptr %.189146.us to i64
  %i.fy = mul i64 %indvar295, %i.y
  %i.fz = add i64 %i.ez, %i.fy
  %i.ga = sub i64 %.189146.us297, %i.fz
  %diff.check = icmp ugt i64 %i.ga, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gb = getelementptr i8, ptr %.189146.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.189146.us, i64 %index ; 2 uses
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load299 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <16 x i8> %wide.load, ptr %i.gd, align 1, !tbaa !36
  store <16 x i8> %wide.load299, ptr %i.ge, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !183

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !133

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gg = getelementptr i8, ptr %.189146.us, i64 %n.vec300 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index301 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next304, %vec.epilog.vector.body ] ; 3 uses
  %next.gep302 = getelementptr i8, ptr %.189146.us, i64 %index301
  %wide.load303 = load <4 x i8>, ptr %next.gep302, align 1, !tbaa !36
  %i.gh = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %index301
  store <4 x i8> %wide.load303, ptr %i.gh, align 1, !tbaa !36
  %index.next304 = add nuw i64 %index301, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next304, %n.vec300
  br i1 %i.gi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !184

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n305, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv225.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec300, %vec.epilog.middle.block ] ; 3 uses
  %.2143.us.ph = phi ptr [ %.189146.us, %iter.check ], [ %.189146.us, %vector.memcheck ], [ %i.gb, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv225.prol = phi i64 [ %indvars.iv.next226.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv225.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2143.us.prol = phi ptr [ %i.gj, %vec.epilog.scalar.ph.prol ], [ %.2143.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.2143.us.prol, i64 1 ; 3 uses
  %i.gk = load i8, ptr %.2143.us.prol, align 1, !tbaa !36
  %i.gl = getelementptr inbounds nuw i8, ptr %.1147.us, i64 %indvars.iv225.prol
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !36
  %indvars.iv.next226.prol = add nuw nsw i64 %indvars.iv225.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !185

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa396.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gj, %vec.epilog.scalar.ph.prol ]
  %indvars.iv225.unr = phi i64 [ %indvars.iv225.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next226.prol, %vec.epilog.scalar.ph.prol ]
  %.2143.us.unr = phi ptr [ %.2143.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gj, %vec.epilog.scalar.ph.prol ]
  %i.gm = sub nsw i64 %indvars.iv225.ph, %wide.trip.count
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %._crit_edge.us, label %vec.epilog.scalar.ph

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gg, %vec.epilog.middle.block ], [ %i.gb, %middle.block ], [ %.lcssa396.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fu, %vec.epilog.scalar.ph ]
  %i.go = add i32 %.in, -1                        ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.1147.us, i64 %i.y
  %.not113.us = icmp eq i32 %i.go, 0
  %indvar.next296 = add i64 %indvar295, 1
  br i1 %.not113.us, label %..loopexit140_crit_edge.us, label %iter.check

..loopexit140_crit_edge.us:                       ; preds = %._crit_edge.us
  %indvars.iv.next230 = add nsw i64 %indvars.iv229, %i.cr ; 2 uses
  %i.gq = add nuw nsw i32 %.090153.us163, 1       ; 2 uses
  %exitcond232.not = icmp eq i32 %i.gq, %i.cp
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond232.not, label %._crit_edge156.loopexit211, label %.lr.ph155.split.split.split.us

.lr.ph155.split.split.split:                      ; preds = %.lr.ph155.split.split.split.preheader389, %.preheader139
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader139 ], [ %indvars.iv.ph, %.lr.ph155.split.split.split.preheader389 ] ; 2 uses
  %.090153 = phi i32 [ %i.gs, %.preheader139 ], [ %.090153.ph, %.lr.ph155.split.split.split.preheader389 ]
  %i.gr = add i64 %i.cs, %indvars.iv
  %.not115 = icmp slt i64 %.0104, %i.gr
  br i1 %.not115, label %.split.us, label %.preheader139

.preheader139:                                    ; preds = %.lr.ph155.split.split.split
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cr ; 2 uses
  %i.gs = add nuw nsw i32 %.090153, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gs, %i.cp
  br i1 %exitcond.not, label %._crit_edge156.loopexit213, label %.lr.ph155.split.split.split, !llvm.loop !186

.split.us:                                        ; preds = %vector.body319, %.lr.ph155.split.split.split, %.lr.ph155.split.split.split.us, %.lr.ph155.split.us, %vector.body366, %.lr.ph155.split.us173.us.us.us, %vector.body340, %.lr.ph155.split.us.us.us.us.us
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #16
  br label %.loopexit141

._crit_edge156.loopexit:                          ; preds = %.loopexit.us
  %i.gt = trunc nsw i64 %indvars.iv.next234 to i32
  br label %._crit_edge156

._crit_edge156.loopexit211:                       ; preds = %..loopexit140_crit_edge.us
  %i.gu = trunc nsw i64 %indvars.iv.next230 to i32
  br label %._crit_edge156

._crit_edge156.loopexit213:                       ; preds = %.preheader139, %middle.block322
  %indvars.iv.next.lcssa = phi i64 [ %i.en, %middle.block322 ], [ %indvars.iv.next, %.preheader139 ]
  %i.gv = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %._crit_edge156.loopexit213, %._crit_edge156.loopexit211, %._crit_edge156.loopexit, %.lr.ph
  %.195.lcssa = phi i32 [ %.094172, %.lr.ph ], [ %i.gu, %._crit_edge156.loopexit211 ], [ %i.gt, %._crit_edge156.loopexit ], [ %i.gv, %._crit_edge156.loopexit213 ]
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.099170, i64 96
  %i.gx = load i32, ptr %i.x, align 8, !tbaa !36
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %indvars.iv.next238, %i.gy
  br i1 %i.gz, label %.lr.ph, label %._crit_edge.split.loopexit

._crit_edge.split.loopexit:                       ; preds = %._crit_edge156
  %.pre259 = load i32, ptr %i.u, align 8, !tbaa !116
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.h
  %i.ha = phi i32 [ %.pre259, %._crit_edge.split.loopexit ], [ %i.ci, %bb.h ]
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.u, align 8, !tbaa !116
  %i.hc = load i16, ptr %i.ac, align 4, !tbaa !99 ; 2 uses
  %i.hd = zext i16 %i.hc to i32
  %i.he = load i32, ptr %i.g, align 4, !tbaa !105
  %i.hf = add i32 %i.he, %i.hd
  store i32 %i.hf, ptr %i.g, align 4, !tbaa !105
  %i.hg = load i64, ptr %i.t, align 8, !tbaa !107 ; 3 uses
  %i.hh = getelementptr inbounds i8, ptr %.0106, i64 %i.hg
  %i.hi = sub nsw i64 %.0104, %i.hg
  %i.hj = zext i16 %i.hc to i64
  %i.hk = sub nsw i64 %.1101, %i.hj               ; 2 uses
  %i.hl = icmp sgt i64 %i.hk, 0
  br i1 %i.hl, label %.thread.split, label %.thread136

.thread136:                                       ; preds = %._crit_edge.split, %._crit_edge.split.us.split.us.us.us, %select.unfold
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !36
  %i.hq = icmp ult i32 %i.hn, %i.hp
  br i1 %i.hq, label %.loopexit141, label %bb.i

bb.i:                                             ; preds = %.thread136
  %i.hr = tail call fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef nonnull %i.b)
  %i.hs = icmp ne i32 %i.hr, 0
  %i.ht = zext i1 %i.hs to i32
  br label %.loopexit141

.loopexit141:                                     ; preds = %bb.g, %bb.d, %.split.us, %.split197.us, %.thread136, %bb.i
  %.0103 = phi i32 [ %i.ht, %bb.i ], [ 1, %.thread136 ], [ 0, %.split197.us ], [ 0, %.split.us ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.0103
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_start_decompress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !36
  store ptr @TIFFjpeg_progress_monitor, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  store i32 100, ptr %i.c, align 4, !tbaa !134
  %i.d = call ptr @getenv(ptr noundef nonnull @.str.32) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #16, !inline_history !187
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %i.c, align 4, !tbaa !134
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.h = call i32 @_setjmp(ptr noundef nonnull %i.g) #17
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @jpeg_start_decompress(ptr noundef nonnull %0) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @alloc_downsampled_buffers(ptr %.1072.val, ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.1072.val, i64 1184
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.04 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.c ]
  %.0183 = phi ptr [ %0, %.lr.ph ], [ %i.p, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0183, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !111
  %i.e = getelementptr inbounds nuw i8, ptr %.0183, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !112  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0183, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !113
  %i.i = shl i32 %i.h, 3
  %i.j = shl nsw i32 %i.f, 3
  %i.k = tail call fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %.1072.val, i32 noundef %i.i, i32 noundef %i.j) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = mul nsw i32 %i.f, %i.d
  %i.n = add nsw i32 %i.m, %.04                   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.k, ptr %i.o, align 8, !tbaa !126
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0183, i64 96
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1072.val, i64 1268
  store i32 %.0.lcssa, ptr %i.q, align 4, !tbaa !127
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.020 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.b ]
  ret i32 %.020
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_read_raw_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_finish_decompress(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg_read_raw_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @TIFFjpeg_progress_monitor(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !190  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.f = load i32, ptr %i.e, align 4, !tbaa !134  ; 2 uses
  %.not10 = icmp slt i32 %i.d, %i.f
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.h, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %i.d, i32 noundef %i.f) #16
  tail call void @jpeg_abort(ptr noundef nonnull %0) #16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @longjmp(ptr noundef nonnull %i.i, i32 noundef 1) #18
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  %i.g = call ptr %i.f(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_read_scanlines(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_read_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_defaults(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_defaults(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prepare_JPEGTables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !90
  %i.e = tail call fastcc i32 @TIFFjpeg_set_quality(ptr noundef %i.b, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @TIFFjpeg_suppress_tables(ptr noundef nonnull %i.b)
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1332
  %i.h = load i32, ptr %i.g, align 4, !tbaa !92   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not16 = icmp eq i32 %i.i, 0
  br i1 %.not16, label %unsuppress_quant_table.exit21, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %unsuppress_quant_table.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.l, align 4, !tbaa !123
  br label %unsuppress_quant_table.exit

unsuppress_quant_table.exit:                      ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.n = load i16, ptr %i.m, align 8, !tbaa !97
  %i.o = icmp eq i16 %i.n, 6
  br i1 %i.o, label %bb.f, label %unsuppress_quant_table.exit21

bb.f:                                             ; preds = %unsuppress_quant_table.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i20, label %unsuppress_quant_table.exit21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i32 0, ptr %i.r, align 4, !tbaa !123
  br label %unsuppress_quant_table.exit21

unsuppress_quant_table.exit21:                    ; preds = %bb.g, %bb.f, %unsuppress_quant_table.exit, %bb.c
  %i.s = and i32 %i.h, 2
  %.not17 = icmp eq i32 %i.s, 0
  br i1 %.not17, label %unsuppress_huff_table.exit25, label %bb.h

bb.h:                                             ; preds = %unsuppress_quant_table.exit21
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.not.i22 = icmp eq ptr %i.u, null
  br i1 %.not.i22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 276
  store i32 0, ptr %i.v, align 4, !tbaa !125
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %unsuppress_huff_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 276
  store i32 0, ptr %i.y, align 4, !tbaa !125
  br label %unsuppress_huff_table.exit

unsuppress_huff_table.exit:                       ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp eq i16 %i.aa, 6
  br i1 %i.ab, label %bb.l, label %unsuppress_huff_table.exit25

bb.l:                                             ; preds = %unsuppress_huff_table.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ad, null
  br i1 %.not.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 276
  store i32 0, ptr %i.ae, align 4, !tbaa !125
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %.not6.i24 = icmp eq ptr %i.ag, null
  br i1 %.not6.i24, label %unsuppress_huff_table.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 276
  store i32 0, ptr %i.ah, align 4, !tbaa !125
  br label %unsuppress_huff_table.exit25

unsuppress_huff_table.exit25:                     ; preds = %bb.o, %bb.n, %unsuppress_huff_table.exit, %unsuppress_quant_table.exit21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1312 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not.i26 = icmp eq ptr %i.aj, null
  br i1 %.not.i26, label %bb.q, label %bb.p

bb.p:                                             ; preds = %unsuppress_huff_table.exit25
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.aj) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %unsuppress_huff_table.exit25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1320 ; 2 uses
  store i32 1000, ptr %i.ak, align 8, !tbaa !60
  %i.al = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 1000) #16 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !48
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %TIFFjpeg_tables_dest.exit.thread, label %bb.r

TIFFjpeg_tables_dest.exit.thread:                 ; preds = %bb.q
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !35
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.ao, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store ptr @tables_init_destination, ptr %i.ar, align 8, !tbaa !119
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store ptr @tables_empty_output_buffer, ptr %i.as, align 8, !tbaa !120
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store ptr @tables_term_destination, ptr %i.at, align 8, !tbaa !121
  %i.au = tail call fastcc i32 @TIFFjpeg_write_tables(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %TIFFjpeg_tables_dest.exit.thread, %bb.r, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %TIFFjpeg_tables_dest.exit.thread ], [ %i.au, %bb.r ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_quality(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_suppress_tables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_suppress_tables(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_write_tables(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_write_tables(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.b, ptr %i.c, align 8, !tbaa !135
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.f, ptr %i.g, align 8, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tables_empty_output_buffer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !60
  %i.g = add i32 %i.f, 1000
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @_TIFFreallocExt(ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h) #16 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !203    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 54, ptr %i.l, align 8, !tbaa !88
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 100, ptr %i.m, align 4, !tbaa !36
  %i.n = load ptr, ptr %0, align 8, !tbaa !203
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !204
  tail call void %i.o(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.r, ptr %i.s, align 8, !tbaa !135
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 1000, ptr %i.t, align 8, !tbaa !136
  store ptr %i.i, ptr %i.c, align 8, !tbaa !48
  %i.u = add i32 %i.p, 1000
  store i32 %i.u, ptr %i.e, align 8, !tbaa !60
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_term_destination(ptr nofree noundef captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load i64, ptr %i.a, align 8, !tbaa !136
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !60
  %i.f = sub i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !60
  ret void
}

declare ptr @_TIFFreallocExt(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_write_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.d, ptr %i.e, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.g, ptr %i.h, align 8, !tbaa !136
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @std_empty_output_buffer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !137
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !69
  %i.f = tail call i32 @TIFFFlushData1(ptr noundef %i.b) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.h, ptr %i.i, align 8, !tbaa !135
  %i.j = load i64, ptr %i.c, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.j, ptr %i.k, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_term_destination(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i64, ptr %i.h, align 8, !tbaa !136
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.j, ptr %i.k, align 8, !tbaa !69
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @JPEGEncodeRaw(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1268
  %i.e = load i32, ptr %i.d, align 4, !tbaa !127
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1352 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !117
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull @.str.47) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 1170
  %i.m = load i16, ptr %i.l, align 2, !tbaa !98
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %i.o = add nsw i64 %i.k, -1
  %i.p = add nsw i64 %i.o, %i.n
  %i.q = sdiv i64 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1172 ; 3 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !99
  %i.t = zext i16 %i.s to i64                     ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.n
  %i.v = add nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.x = load i32, ptr %i.w, align 8, !tbaa !36
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %i.q, %i.y
  %i.aa = mul i64 %i.z, %i.v
  %i.ab = add nsw i64 %i.aa, 7
  %i.ac = sdiv i64 %i.ab, 8                       ; 4 uses
  %i.ad = sdiv i64 %2, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.t                 ; 3 uses
  %i.af = srem i64 %2, %i.ac
  %.not101 = icmp eq i64 %i.af, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !117
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.ag, ptr noundef nonnull @.str.48) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !129
  %.fr = freeze i32 %i.ak                         ; 7 uses
  %i.al = icmp sgt i64 %i.ae, 0
  br i1 %i.al, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 92 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1184 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 10 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ap = sext i32 %i.e to i64                    ; 11 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %xtraiter248 = and i32 %.fr, 7                  ; 2 uses
  %lcmp.mod249.not = icmp eq i32 %xtraiter248, 0
  %i.as = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.g
  %.089155.us = phi i64 [ %i.bh, %bb.g ], [ %i.ae, %.lr.ph157 ]
  %i.at = load i32, ptr %i.am, align 4, !tbaa !36
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@JPEGEncodeRaw:bb.a
  %i.bn = shl i32 %i.bm, 3                        ; 3 uses
  %i.bo = icmp sgt i32 %i.bk, 0
  br i1 %i.bo, label %.lr.ph125.us.us, label %._crit_edge126.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 96
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !36
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next194, %i.br
  br i1 %i.bs, label %.lr.ph.us158, label %._crit_edge144.split.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bt = getelementptr inbounds nuw i8, ptr %.081142.us.us, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !111
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv193 ; 2 uses
  %i.bw = icmp eq i32 %i.bu, 1
  %i.bx = icmp sgt i32 %i.bn, 0                   ; 2 uses
  br i1 %i.bw, label %.loopexit.us.us.us, label %.lr.ph125.split.us145.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.bx, label %.preheader106.us.us.us.us, label %._crit_edge126.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.1120.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cg, %.lr.ph121.us.us.us ]
  %.4119.us.us.us = phi ptr [ %i.co, %.lr.ph121.us.us.us.preheader ], [ %i.cf, %.lr.ph121.us.us.us ] ; 9 uses
  store i8 %load_initial233, ptr %.4119.us.us.us, align 1, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 1
  store i8 %load_initial233, ptr %i.by, align 1, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 2
  store i8 %load_initial233, ptr %i.bz, align 1, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 3
  store i8 %load_initial233, ptr %i.ca, align 1, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 4
  store i8 %load_initial233, ptr %i.cb, align 1, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 5
  store i8 %load_initial233, ptr %i.cc, align 1, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 6
  store i8 %load_initial233, ptr %i.cd, align 1, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 7
  store i8 %load_initial233, ptr %i.ce, align 1, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %.4119.us.us.us, i64 8
  %i.cg = add nuw nsw i32 %.1120.us.us.us, 8      ; 2 uses
  %exitcond188.not.7 = icmp eq i32 %i.cg, %i.bn
  br i1 %exitcond188.not.7, label %._crit_edge.us129.us.us, label %.lr.ph121.us.us.us

._crit_edge.us129.us.us:                          ; preds = %.lr.ph121.us.us.us, %.loopexit.us.us.us
  %i.ch = add nuw nsw i32 %.082123.us.us.us, 1    ; 2 uses
  %exitcond192.not = icmp eq i32 %i.ch, %i.bk
  br i1 %exitcond192.not, label %._crit_edge126.us.us, label %.loopexit.us.us.us

.loopexit.us.us.us:                               ; preds = %.lr.ph125.us.us, %._crit_edge.us129.us.us
  %.082123.us.us.us = phi i32 [ %i.ch, %._crit_edge.us129.us.us ], [ 0, %.lr.ph125.us.us ] ; 2 uses
  br i1 %i.bx, label %.lr.ph121.us.us.us.preheader, label %._crit_edge.us129.us.us

.lr.ph121.us.us.us.preheader:                     ; preds = %.loopexit.us.us.us
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !126
  %i.cj = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.ck = mul nsw i32 %i.cj, %i.bk
  %i.cl = add nsw i32 %i.ck, %.082123.us.us.us
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !118 ; 2 uses
  %scevgep232 = getelementptr i8, ptr %i.co, i64 -1
  %load_initial233 = load i8, ptr %scevgep232, align 1 ; 8 uses
  br label %.lr.ph121.us.us.us

.preheader106.us.us.us.us:                        ; preds = %.lr.ph125.split.us145.us, %._crit_edge.us136.us.us.us
  %.082123.us131.us.us.us = phi i32 [ %i.df, %._crit_edge.us136.us.us.us ], [ 0, %.lr.ph125.split.us145.us ] ; 2 uses
  %i.cp = load ptr, ptr %i.bv, align 8, !tbaa !126
  %i.cq = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.cr = mul nsw i32 %i.cq, %i.bk
  %i.cs = add nsw i32 %i.cr, %.082123.us131.us.us.us
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !118 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cv, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader106.us.us.us.us
  %.1120.us133.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.de, %bb.h ]
  %.4119.us134.us.us.us = phi ptr [ %i.cv, %.preheader106.us.us.us.us ], [ %i.dd, %bb.h ] ; 9 uses
  store i8 %load_initial, ptr %.4119.us134.us.us.us, align 1, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 1
  store i8 %load_initial, ptr %i.cw, align 1, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 2
  store i8 %load_initial, ptr %i.cx, align 1, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 3
  store i8 %load_initial, ptr %i.cy, align 1, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 4
  store i8 %load_initial, ptr %i.cz, align 1, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 5
  store i8 %load_initial, ptr %i.da, align 1, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 6
  store i8 %load_initial, ptr %i.db, align 1, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 7
  store i8 %load_initial, ptr %i.dc, align 1, !tbaa !36
  %i.dd = getelementptr inbounds nuw i8, ptr %.4119.us134.us.us.us, i64 8
  %i.de = add nuw nsw i32 %.1120.us133.us.us.us, 8 ; 2 uses
  %exitcond186.not.7 = icmp eq i32 %i.de, %i.bn
  br i1 %exitcond186.not.7, label %._crit_edge.us136.us.us.us, label %bb.h

._crit_edge.us136.us.us.us:                       ; preds = %bb.h
  %i.df = add nuw nsw i32 %.082123.us131.us.us.us, 1 ; 2 uses
  %exitcond187.not = icmp eq i32 %i.df, %i.bk
  br i1 %exitcond187.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %.lr.ph157.split.preheader ] ; 2 uses
  %.089155 = phi i64 [ %i.jn, %bb.j ], [ %i.ae, %.lr.ph157.split.preheader ]
  %.098153 = phi ptr [ %i.jl, %bb.j ], [ %1, %.lr.ph157.split.preheader ] ; 3 uses
  %i.dg = mul i64 %i.ac, %indvar
  %i.dh = add i64 %i.dg, %i.a
  %i.di = load i32, ptr %i.am, align 4, !tbaa !36
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv183 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next184, %._crit_edge126 ] ; 2 uses
  %.081142 = phi ptr [ %i.dk, %.lr.ph.preheader ], [ %i.ix, %._crit_edge126 ] ; 4 uses
  %.085140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.186.lcssa, %._crit_edge126 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.081142, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !111 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.081142, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !112 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.081142, i64 28
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !113
  %i.dr = shl i32 %i.dq, 3                        ; 3 uses
  %i.ds = mul i32 %i.dm, %.fr                     ; 3 uses
  %i.dt = sub i32 %i.dr, %i.ds                    ; 5 uses
  %i.du = icmp sgt i32 %i.do, 0
  br i1 %i.du, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv183 ; 2 uses
  %i.dw = icmp eq i32 %i.dm, 1
  %i.dx = icmp sgt i32 %i.dm, 0
  %i.dy = icmp sgt i32 %i.dt, 0                   ; 2 uses
  %i.dz = sext i32 %.085140 to i64                ; 3 uses
  br i1 %i.dw, label %.lr.ph.us.preheader.preheader, label %.preheader106.preheader

.lr.ph.us.preheader.preheader:                    ; preds = %.lr.ph125
  %xtraiter251 = and i32 %i.dt, 7                 ; 3 uses
  %i.ea = sub i32 %i.ds, %i.dr
  %i.eb = icmp ugt i32 %i.ea, -8
  %unroll_iter255 = and i32 %i.dt, 2147483640
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  %lcmp.mod254 = icmp ne i32 %xtraiter251, 0
  br label %.lr.ph.us.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.ec = sext i32 %i.dm to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.dm to i64        ; 8 uses
  %i.ed = add i64 %i.dh, %i.dz
  %min.iters.check = icmp ult i32 %i.dm, 4
  %min.iters.check222 = icmp ult i32 %i.dm, 32
  %i.ee = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ee, 0
  %n.vec224 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n229 = icmp eq i64 %n.vec224, %wide.trip.count
  %xtraiter245 = and i32 %i.dt, 7                 ; 3 uses
  %i.ef = sub i32 %i.ds, %i.dr
  %i.eg = icmp ugt i32 %i.ef, -8
  %unroll_iter = and i32 %i.dt, 2147483640
  %lcmp.mod246.not = icmp eq i32 %xtraiter245, 0
  %lcmp.mod247 = icmp ne i32 %xtraiter245, 0
  br label %.preheader106

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %._crit_edge.us129
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._crit_edge.us129 ], [ %i.dz, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %.082123.us = phi i32 [ %i.gb, %._crit_edge.us129 ], [ 0, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %i.eh = load ptr, ptr %i.dv, align 8, !tbaa !126
  %i.ei = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.ej = mul nsw i32 %i.ei, %i.do
  %i.ek = add nsw i32 %i.ej, %.082123.us
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !118 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.098153, i64 %indvars.iv179 ; 2 uses
  br i1 %lcmp.mod249.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.087118.us.prol = phi i32 [ %i.ep, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %.090117.us.prol = phi ptr [ %i.er, %.lr.ph.us.prol ], [ %i.en, %.lr.ph.us.preheader ] ; 3 uses
  %.092116.us.prol = phi ptr [ %i.es, %.lr.ph.us.prol ], [ %i.eo, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter250 = phi i32 [ %prol.iter250.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.ep = add i32 %.087118.us.prol, -1            ; 2 uses
  %i.eq = load i8, ptr %.092116.us.prol, align 1, !tbaa !36
  %i.er = getelementptr inbounds nuw i8, ptr %.090117.us.prol, i64 1 ; 3 uses
  store i8 %i.eq, ptr %.090117.us.prol, align 1, !tbaa !36
  %i.es = getelementptr inbounds i8, ptr %.092116.us.prol, i64 %i.ap ; 2 uses
  %prol.iter250.next = add i32 %prol.iter250, 1   ; 2 uses
  %prol.iter250.cmp.not = icmp eq i32 %prol.iter250.next, %xtraiter248
  br i1 %prol.iter250.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !205

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.090117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.090117.us.prol, %.lr.ph.us.prol ]
  %.lcssa244.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.er, %.lr.ph.us.prol ]
  %.087118.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.ep, %.lr.ph.us.prol ]
  %.090117.us.unr = phi ptr [ %i.en, %.lr.ph.us.preheader ], [ %i.er, %.lr.ph.us.prol ]
  %.092116.us.unr = phi ptr [ %i.eo, %.lr.ph.us.preheader ], [ %i.es, %.lr.ph.us.prol ]
  br i1 %i.as, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.087118.us = phi i32 [ %i.fo, %.lr.ph.us ], [ %.087118.us.unr, %.lr.ph.us.prol.loopexit ]
  %.090117.us = phi ptr [ %i.fq, %.lr.ph.us ], [ %.090117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.092116.us = phi ptr [ %i.fr, %.lr.ph.us ], [ %.092116.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %i.et = load i8, ptr %.092116.us, align 1, !tbaa !36
  %i.eu = getelementptr inbounds nuw i8, ptr %.090117.us, i64 1
  store i8 %i.et, ptr %.090117.us, align 1, !tbaa !36
  %i.ev = getelementptr inbounds i8, ptr %.092116.us, i64 %i.ap ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !36
  %i.ex = getelementptr inbounds nuw i8, ptr %.090117.us, i64 2
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !36
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ap ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !36
  %i.fa = getelementptr inbounds nuw i8, ptr %.090117.us, i64 3
  store i8 %i.ez, ptr %i.ex, align 1, !tbaa !36
  %i.fb = getelementptr inbounds i8, ptr %i.ey, i64 %i.ap ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %.090117.us, i64 4
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !36
  %i.fe = getelementptr inbounds i8, ptr %i.fb, i64 %i.ap ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !36
  %i.fg = getelementptr inbounds nuw i8, ptr %.090117.us, i64 5
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !36
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 %i.ap ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !36
  %i.fj = getelementptr inbounds nuw i8, ptr %.090117.us, i64 6
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !36
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.ap ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !36
  %i.fm = getelementptr inbounds nuw i8, ptr %.090117.us, i64 7
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !36
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 %i.ap ; 2 uses
  %i.fo = add i32 %.087118.us, -8                 ; 2 uses
  %i.fp = load i8, ptr %i.fn, align 1, !tbaa !36
  %i.fq = getelementptr inbounds nuw i8, ptr %.090117.us, i64 8 ; 2 uses
  store i8 %i.fp, ptr %i.fm, align 1, !tbaa !36
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.ap
  %.not104.us.7 = icmp eq i32 %i.fo, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4119.us = phi ptr [ %i.fz, %.lr.ph121.us ], [ %.lcssa244, %.lr.ph121.us.preheader ] ; 9 uses
  %niter256 = phi i32 [ %niter256.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i8 %load_initial238, ptr %.4119.us, align 1, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %.4119.us, i64 1
  store i8 %load_initial238, ptr %i.fs, align 1, !tbaa !36
  %i.ft = getelementptr inbounds nuw i8, ptr %.4119.us, i64 2
  store i8 %load_initial238, ptr %i.ft, align 1, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %.4119.us, i64 3
  store i8 %load_initial238, ptr %i.fu, align 1, !tbaa !36
  %i.fv = getelementptr inbounds nuw i8, ptr %.4119.us, i64 4
  store i8 %load_initial238, ptr %i.fv, align 1, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %.4119.us, i64 5
  store i8 %load_initial238, ptr %i.fw, align 1, !tbaa !36
  %i.fx = getelementptr inbounds nuw i8, ptr %.4119.us, i64 6
  store i8 %load_initial238, ptr %i.fx, align 1, !tbaa !36
  %i.fy = getelementptr inbounds nuw i8, ptr %.4119.us, i64 7
  store i8 %load_initial238, ptr %i.fy, align 1, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %.4119.us, i64 8 ; 2 uses
  %niter256.next.7 = add i32 %niter256, 8         ; 2 uses
  %niter256.ncmp.7 = icmp eq i32 %niter256.next.7, %unroll_iter255
  br i1 %niter256.ncmp.7, label %._crit_edge.us129.loopexit.unr-lcssa, label %.lr.ph121.us

._crit_edge.us129.loopexit.unr-lcssa:             ; preds = %.lr.ph121.us
  br i1 %lcmp.mod253.not, label %._crit_edge.us129, label %.lr.ph121.us.epil.preheader

.lr.ph121.us.epil.preheader:                      ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.preheader
  %.4119.us.epil.init = phi ptr [ %.lcssa244, %.lr.ph121.us.preheader ], [ %i.fz, %._crit_edge.us129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph121.us.epil

.lr.ph121.us.epil:                                ; preds = %.lr.ph121.us.epil, %.lr.ph121.us.epil.preheader
  %.4119.us.epil = phi ptr [ %i.ga, %.lr.ph121.us.epil ], [ %.4119.us.epil.init, %.lr.ph121.us.epil.preheader ] ; 2 uses
  %epil.iter252 = phi i32 [ %epil.iter252.next, %.lr.ph121.us.epil ], [ 0, %.lr.ph121.us.epil.preheader ]
  store i8 %load_initial238, ptr %.4119.us.epil, align 1, !tbaa !36
  %i.ga = getelementptr inbounds nuw i8, ptr %.4119.us.epil, i64 1
  %epil.iter252.next = add i32 %epil.iter252, 1   ; 2 uses
  %epil.iter252.cmp.not = icmp eq i32 %epil.iter252.next, %xtraiter251
  br i1 %epil.iter252.cmp.not, label %._crit_edge.us129, label %.lr.ph121.us.epil, !llvm.loop !206

._crit_edge.us129:                                ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.epil, %.loopexit.us
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.gb = add nuw nsw i32 %.082123.us, 1          ; 2 uses
  %exitcond182.not = icmp eq i32 %i.gb, %i.do
  br i1 %exitcond182.not, label %._crit_edge126.loopexit, label %.lr.ph.us.preheader

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.us
  %i.gc = getelementptr inbounds nuw i8, ptr %.090117.us, i64 7
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.loopexit.us.unr-lcssa
  %.090117.us.lcssa = phi ptr [ %.090117.us.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.gc, %.loopexit.us.unr-lcssa ]
  %.lcssa244 = phi ptr [ %.lcssa244.unr, %.lr.ph.us.prol.loopexit ], [ %i.fq, %.loopexit.us.unr-lcssa ] ; 2 uses
  br i1 %i.dy, label %.lr.ph121.us.preheader, label %._crit_edge.us129

.lr.ph121.us.preheader:                           ; preds = %.loopexit.us
  %load_initial238 = load i8, ptr %.090117.us.lcssa, align 1 ; 9 uses
  br i1 %i.eb, label %.lr.ph121.us.epil.preheader, label %.lr.ph121.us

.preheader106:                                    ; preds = %.preheader106.preheader, %._crit_edge
  %indvar218 = phi i64 [ 0, %.preheader106.preheader ], [ %indvar.next219, %._crit_edge ] ; 2 uses
  %indvars.iv174 = phi i64 [ %i.dz, %.preheader106.preheader ], [ %indvars.iv.next175, %._crit_edge ] ; 2 uses
  %.082123 = phi i32 [ 0, %.preheader106.preheader ], [ %i.iu, %._crit_edge ] ; 2 uses
  %i.gd = mul i64 %indvar218, %i.ec
  %i.ge = add i64 %i.ed, %i.gd
  %i.gf = load ptr, ptr %i.dv, align 8, !tbaa !126
  %i.gg = load i32, ptr %i.ao, align 8, !tbaa !116
  %i.gh = mul nsw i32 %i.gg, %i.do
  %i.gi = add nsw i32 %i.gh, %.082123
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !118 ; 2 uses
  br i1 %i.dx, label %.preheader.us.preheader, label %..loopexit107_crit_edge

.preheader.us.preheader:                          ; preds = %.preheader106
  %i.gm = getelementptr inbounds i8, ptr %.098153, i64 %indvars.iv174
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar220 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next221, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %.fr, %.preheader.us.preheader ], [ %i.gn, %._crit_edge.us ]
  %.191113.us = phi ptr [ %i.gl, %.preheader.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 7 uses
  %.193112.us = phi ptr [ %i.gm, %.preheader.us.preheader ], [ %i.ik, %._crit_edge.us ] ; 12 uses
  %i.gn = add i32 %.in, -1                        ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.go = mul i64 %indvar220, %i.ap
  %i.gp = add i64 %i.ge, %i.go
  %.191113.us217 = ptrtoaddr ptr %.191113.us to i64
  %i.gq = sub i64 %i.gp, %.191113.us217
  %diff.check = icmp ugt i64 %i.gq, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check222, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gr = getelementptr i8, ptr %.191113.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.191113.us, i64 %index ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load = load <16 x i8>, ptr %i.gs, align 1, !tbaa !36
  %wide.load223 = load <16 x i8>, ptr %i.gt, align 1, !tbaa !36
  %i.gu = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !36
  store <16 x i8> %wide.load223, ptr %i.gu, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !133

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gw = getelementptr i8, ptr %.191113.us, i64 %n.vec224 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next228, %vec.epilog.vector.body ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %.191113.us, i64 %index225
  %i.gx = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %index225
  %wide.load227 = load <4 x i8>, ptr %i.gx, align 1, !tbaa !36
  store <4 x i8> %wide.load227, ptr %next.gep226, align 1, !tbaa !36
  %index.next228 = add nuw i64 %index225, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next228, %n.vec224
  br i1 %i.gy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n229, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec224, %vec.epilog.middle.block ] ; 4 uses
  %.2109.us.ph = phi ptr [ %.191113.us, %iter.check ], [ %.191113.us, %vector.memcheck ], [ %i.gr, %vec.epilog.iter.check ], [ %i.gw, %vec.epilog.middle.block ] ; 2 uses
  %i.gz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2109.us.prol = phi ptr [ %i.hc, %vec.epilog.scalar.ph.prol ], [ %.2109.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv.prol
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !36
  %i.hc = getelementptr inbounds nuw i8, ptr %.2109.us.prol, i64 1 ; 3 uses
  store i8 %i.hb, ptr %.2109.us.prol, align 1, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !209

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa243.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.hc, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.2109.us.unr = phi ptr [ %.2109.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.hc, %vec.epilog.scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.he = icmp ugt i64 %i.hd, -8
  br i1 %i.he, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.2109.us = phi ptr [ %i.ij, %vec.epilog.scalar.ph ], [ %.2109.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !36
  %i.hh = getelementptr inbounds nuw i8, ptr %.2109.us, i64 1
  store i8 %i.hg, ptr %.2109.us, align 1, !tbaa !36
  %i.hi = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !36
  %i.hl = getelementptr inbounds nuw i8, ptr %.2109.us, i64 2
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !36
  %i.hm = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !36
  %i.hp = getelementptr inbounds nuw i8, ptr %.2109.us, i64 3
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !36
  %i.hq = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !36
  %i.ht = getelementptr inbounds nuw i8, ptr %.2109.us, i64 4
  store i8 %i.hs, ptr %i.hp, align 1, !tbaa !36
  %i.hu = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !36
  %i.hx = getelementptr inbounds nuw i8, ptr %.2109.us, i64 5
  store i8 %i.hw, ptr %i.ht, align 1, !tbaa !36
  %i.hy = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 5
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !36
  %i.ib = getelementptr inbounds nuw i8, ptr %.2109.us, i64 6
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !36
  %i.ic = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 6
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !36
  %i.if = getelementptr inbounds nuw i8, ptr %.2109.us, i64 7
  store i8 %i.ie, ptr %i.ib, align 1, !tbaa !36
  %i.ig = getelementptr inbounds nuw i8, ptr %.193112.us, i64 %indvars.iv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 7
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !36
  %i.ij = getelementptr inbounds nuw i8, ptr %.2109.us, i64 8 ; 2 uses
  store i8 %i.ii, ptr %i.if, align 1, !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !210

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gw, %vec.epilog.middle.block ], [ %i.gr, %middle.block ], [ %.lcssa243.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ij, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.193112.us, i64 %i.ap
  %.not103.us = icmp eq i32 %i.gn, 0
  %indvar.next221 = add i64 %indvar220, 1
  br i1 %.not103.us, label %..loopexit107_crit_edge, label %iter.check

..loopexit107_crit_edge:                          ; preds = %._crit_edge.us, %.preheader106
  %.us-phi = phi ptr [ %i.gl, %.preheader106 ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %i.dy, label %.lr.ph121.preheader, label %._crit_edge

.lr.ph121.preheader:                              ; preds = %..loopexit107_crit_edge
  %scevgep235 = getelementptr i8, ptr %.us-phi, i64 -1
  %load_initial236 = load i8, ptr %scevgep235, align 1 ; 9 uses
  br i1 %i.eg, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.4119 = phi ptr [ %i.is, %.lr.ph121 ], [ %.us-phi, %.lr.ph121.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  store i8 %load_initial236, ptr %.4119, align 1, !tbaa !36
  %i.il = getelementptr inbounds nuw i8, ptr %.4119, i64 1
  store i8 %load_initial236, ptr %i.il, align 1, !tbaa !36
  %i.im = getelementptr inbounds nuw i8, ptr %.4119, i64 2
  store i8 %load_initial236, ptr %i.im, align 1, !tbaa !36
  %i.in = getelementptr inbounds nuw i8, ptr %.4119, i64 3
  store i8 %load_initial236, ptr %i.in, align 1, !tbaa !36
  %i.io = getelementptr inbounds nuw i8, ptr %.4119, i64 4
  store i8 %load_initial236, ptr %i.io, align 1, !tbaa !36
  %i.ip = getelementptr inbounds nuw i8, ptr %.4119, i64 5
  store i8 %load_initial236, ptr %i.ip, align 1, !tbaa !36
  %i.iq = getelementptr inbounds nuw i8, ptr %.4119, i64 6
  store i8 %load_initial236, ptr %i.iq, align 1, !tbaa !36
  %i.ir = getelementptr inbounds nuw i8, ptr %.4119, i64 7
  store i8 %load_initial236, ptr %i.ir, align 1, !tbaa !36
  %i.is = getelementptr inbounds nuw i8, ptr %.4119, i64 8 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph121

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph121
  br i1 %lcmp.mod246.not, label %._crit_edge, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.preheader
  %.4119.epil.init = phi ptr [ %.us-phi, %.lr.ph121.preheader ], [ %i.is, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.4119.epil = phi ptr [ %i.it, %.lr.ph121.epil ], [ %.4119.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  store i8 %load_initial236, ptr %.4119.epil, align 1, !tbaa !36
  %i.it = getelementptr inbounds nuw i8, ptr %.4119.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter245
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph121.epil, !llvm.loop !211

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.epil, %..loopexit107_crit_edge
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, %i.ec ; 2 uses
  %i.iu = add nuw nsw i32 %.082123, 1             ; 2 uses
  %exitcond177.not = icmp eq i32 %i.iu, %i.do
  %indvar.next219 = add i64 %indvar218, 1
  br i1 %exitcond177.not, label %._crit_edge126.loopexit162, label %.preheader106

._crit_edge126.loopexit:                          ; preds = %._crit_edge.us129
  %i.iv = trunc nsw i64 %indvars.iv.next180 to i32
  br label %._crit_edge126

._crit_edge126.loopexit162:                       ; preds = %._crit_edge
  %i.iw = trunc nsw i64 %indvars.iv.next175 to i32
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit162, %._crit_edge126.loopexit, %.lr.ph
  %.186.lcssa = phi i32 [ %.085140, %.lr.ph ], [ %i.iv, %._crit_edge126.loopexit ], [ %i.iw, %._crit_edge126.loopexit162 ]
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.081142, i64 96
  %i.iy = load i32, ptr %i.am, align 4, !tbaa !36
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next184, %i.iz
  br i1 %i.ja, label %.lr.ph, label %._crit_edge144.split

._crit_edge144.split:                             ; preds = %._crit_edge126, %.lr.ph157.split
  %i.jb = load i32, ptr %i.ao, align 8, !tbaa !116 ; 2 uses
  %i.jc = add nsw i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ao, align 8, !tbaa !116
  %i.jd = icmp sgt i32 %i.jb, 6
  br i1 %i.jd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge144.split
  %i.je = load i32, ptr %i.aq, align 8, !tbaa !36
  %i.jf = shl nsw i32 %i.je, 3                    ; 2 uses
  %i.jg = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.c, ptr noundef nonnull %i.an, i32 noundef %i.jf)
  %.not102 = icmp eq i32 %i.jg, %i.jf
  br i1 %.not102, label %.thread, label %.split.us

.thread:                                          ; preds = %bb.i
  store i32 0, ptr %i.ao, align 8, !tbaa !116
  br label %bb.j

.split.us:                                        ; preds = %bb.i, %bb.f
  store i32 1, ptr %i.f, align 8, !tbaa !128
  br label %.loopexit108

bb.j:                                             ; preds = %.thread, %._crit_edge144.split
  %i.jh = load i16, ptr %i.r, align 4, !tbaa !99  ; 2 uses
  %i.ji = zext i16 %i.jh to i32
  %i.jj = load i32, ptr %i.ar, align 4, !tbaa !105
  %i.jk = add i32 %i.jj, %i.ji
  store i32 %i.jk, ptr %i.ar, align 4, !tbaa !105
  %i.jl = getelementptr inbounds i8, ptr %.098153, i64 %i.ac
  %i.jm = zext i16 %i.jh to i64
  %i.jn = sub nsw i64 %.089155, %i.jm             ; 2 uses
  %i.jo = icmp sgt i64 %i.jn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.jo, label %.lr.ph157.split, label %.loopexit108

.loopexit108:                                     ; preds = %bb.j, %bb.g, %bb.e, %.split.us, %bb.b
  %.397 = phi i32 [ 0, %bb.b ], [ 0, %.split.us ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.j ]
  ret i32 %.397
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_start_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_write_raw_data(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg_write_raw_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_finish_compress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.c
}

declare void @jpeg_finish_compress(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TIFFjpeg_write_scanlines(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = call i32 @_setjmp(ptr noundef nonnull %i.a) #17
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 @jpeg_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %i.d
}

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind returns_twice }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!"p1 omnipotent char", !7, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"p1 _ZTS12_TIFFHashSet", !7, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"p1 double", !7, i64 0}
!13 = !{!"float", !4, i64 0}
!14 = !{!"p1 short", !7, i64 0}
!15 = !{!"p1 long", !7, i64 0}
!16 = !{!"", !11, i64 0, !11, i64 2, !9, i64 8, !4, i64 16, !4, i64 24}
!17 = !{!"p1 float", !7, i64 0}
!18 = !{!"", !4, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !11, i64 44, !11, i64 46, !11, i64 48, !11, i64 50, !11, i64 52, !11, i64 54, !11, i64 56, !11, i64 58, !5, i64 60, !11, i64 64, !11, i64 66, !12, i64 72, !12, i64 80, !13, i64 88, !13, i64 92, !11, i64 96, !11, i64 98, !13, i64 100, !13, i64 104, !4, i64 108, !4, i64 112, !4, i64 136, !11, i64 140, !14, i64 144, !5, i64 152, !5, i64 156, !15, i64 160, !15, i64 168, !5, i64 176, !16, i64 184, !16, i64 216, !11, i64 248, !15, i64 256, !4, i64 264, !11, i64 268, !4, i64 272, !17, i64 296, !5, i64 304, !8, i64 312, !11, i64 320, !5, i64 324, !7, i64 328, !4, i64 336, !4, i64 337, !9, i64 344, !9, i64 352, !5, i64 360, !7, i64 368}
!19 = !{!"any p2 pointer", !7, i64 0}
!20 = !{!"p2 _ZTS10_TIFFField", !19, i64 0}
!21 = !{!"p1 _ZTS10_TIFFField", !7, i64 0}
!22 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!23 = !{!"p1 _ZTS11client_info", !7, i64 0}
!24 = !{!"p1 _ZTS15_TIFFFieldArray", !7, i64 0}
!25 = !{!"tiff", !8, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !10, i64 48, !10, i64 56, !5, i64 64, !18, i64 72, !18, i64 448, !4, i64 824, !11, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !5, i64 856, !9, i64 864, !9, i64 872, !9, i64 880, !11, i64 888, !9, i64 896, !5, i64 904, !5, i64 908, !9, i64 912, !5, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !5, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !7, i64 1064, !8, i64 1072, !9, i64 1080, !9, i64 1088, !8, i64 1096, !9, i64 1104, !9, i64 1112, !9, i64 1120, !8, i64 1128, !9, i64 1136, !8, i64 1144, !9, i64 1152, !7, i64 1160, !7, i64 1168, !7, i64 1176, !7, i64 1184, !7, i64 1192, !7, i64 1200, !7, i64 1208, !7, i64 1216, !7, i64 1224, !20, i64 1232, !9, i64 1240, !21, i64 1248, !22, i64 1256, !23, i64 1280, !24, i64 1288, !9, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !5, i64 1360}
!26 = !{!25, !11, i64 116}
!27 = !{!"p2 omnipotent char", !19, i64 0}
!28 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !9, i64 128, !27, i64 136, !5, i64 144, !27, i64 152, !5, i64 160, !5, i64 164}
!29 = !{!"jpeg_progress_mgr", !7, i64 0, !9, i64 8, !9, i64 16, !5, i64 24, !5, i64 28}
!30 = !{!"jpeg_destination_mgr", !8, i64 0, !9, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!31 = !{!"jpeg_source_mgr", !8, i64 0, !9, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!32 = !{!"p1 _ZTS4tiff", !7, i64 0}
!33 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72}
!34 = !{!"", !4, i64 0, !5, i64 656, !28, i64 664, !4, i64 832, !29, i64 1032, !30, i64 1064, !31, i64 1104, !32, i64 1160, !11, i64 1168, !11, i64 1170, !11, i64 1172, !9, i64 1176, !4, i64 1184, !5, i64 1264, !5, i64 1268, !33, i64 1272, !5, i64 1352}
!35 = !{!34, !32, i64 1160}
!36 = !{!4, !4, i64 0}
!37 = !{!34, !7, i64 1120}
!38 = !{!34, !7, i64 1128}
!39 = !{!34, !7, i64 1136}
!40 = !{!34, !7, i64 1144}
!41 = !{!34, !7, i64 1152}
!42 = !{!34, !7, i64 664}
!43 = !{!34, !7, i64 680}
!44 = !{!25, !8, i64 1072}
!45 = !{!7, !7, i64 0}
!46 = !{!25, !7, i64 1272}
!47 = !{!34, !7, i64 1288}
!48 = !{!34, !7, i64 1312}
!49 = !{!34, !5, i64 1336}
!50 = !{!25, !7, i64 936}
!51 = !{!25, !7, i64 984}
!52 = !{!25, !7, i64 1000}
!53 = !{!25, !7, i64 1016}
!54 = !{!25, !7, i64 952}
!55 = !{!25, !7, i64 992}
!56 = !{!25, !7, i64 1008}
!57 = !{!25, !7, i64 1024}
!58 = !{!25, !5, i64 16}
!59 = !{!34, !5, i64 656}
!60 = !{!34, !5, i64 1320}
!61 = !{!"p1 _ZTS14jpeg_error_mgr", !7, i64 0}
!62 = !{!"p1 _ZTS15jpeg_memory_mgr", !7, i64 0}
!63 = !{!"p1 _ZTS17jpeg_progress_mgr", !7, i64 0}
!64 = !{!"jpeg_common_struct", !61, i64 0, !62, i64 8, !63, i64 16, !7, i64 24, !5, i64 32, !5, i64 36}
!65 = !{!64, !61, i64 0}
!66 = !{!28, !7, i64 24}
!67 = !{!25, !8, i64 1096}
!68 = !{!34, !8, i64 1104}
!69 = !{!25, !9, i64 1136}
!70 = !{!34, !9, i64 1112}
!71 = !{!"p1 _ZTS15jpeg_source_mgr", !7, i64 0}
!72 = !{!"double", !4, i64 0}
!73 = !{!"p1 int", !7, i64 0}
!74 = !{!"p1 _ZTS18jpeg_marker_struct", !7, i64 0}
!75 = !{!"p1 _ZTS18jpeg_decomp_master", !7, i64 0}
!76 = !{!"p1 _ZTS22jpeg_d_main_controller", !7, i64 0}
!77 = !{!"p1 _ZTS22jpeg_d_coef_controller", !7, i64 0}
!78 = !{!"p1 _ZTS22jpeg_d_post_controller", !7, i64 0}
!79 = !{!"p1 _ZTS21jpeg_input_controller", !7, i64 0}
!80 = !{!"p1 _ZTS18jpeg_marker_reader", !7, i64 0}
!81 = !{!"p1 _ZTS20jpeg_entropy_decoder", !7, i64 0}
!82 = !{!"p1 _ZTS16jpeg_inverse_dct", !7, i64 0}
!83 = !{!"p1 _ZTS14jpeg_upsampler", !7, i64 0}
!84 = !{!"p1 _ZTS22jpeg_color_deconverter", !7, i64 0}
!85 = !{!"p1 _ZTS20jpeg_color_quantizer", !7, i64 0}
!86 = !{!"jpeg_decompress_struct", !61, i64 0, !62, i64 8, !63, i64 16, !7, i64 24, !5, i64 32, !5, i64 36, !71, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !72, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !27, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !73, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !7, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !4, i64 324, !4, i64 340, !4, i64 356, !5, i64 372, !5, i64 376, !4, i64 380, !4, i64 381, !4, i64 382, !11, i64 384, !11, i64 386, !5, i64 388, !4, i64 392, !5, i64 396, !74, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !8, i64 432, !5, i64 440, !4, i64 448, !5, i64 480, !5, i64 484, !5, i64 488, !4, i64 492, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !73, i64 552, !5, i64 560, !5, i64 564, !75, i64 568, !76, i64 576, !77, i64 584, !78, i64 592, !79, i64 600, !80, i64 608, !81, i64 616, !82, i64 624, !83, i64 632, !84, i64 640, !85, i64 648}
!87 = !{!86, !61, i64 0}
!88 = !{!28, !5, i64 40}
!89 = !{!28, !7, i64 8}
!90 = !{!34, !5, i64 1324}
!91 = !{!34, !5, i64 1328}
!92 = !{!34, !5, i64 1332}
!93 = !{!18, !11, i64 98}
!94 = !{!18, !11, i64 50}
!95 = !{!11, !11, i64 0}
!96 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 4, !6, i64 52, i64 4, !6, i64 56, i64 4, !6, i64 60, i64 4, !6, i64 64, i64 4, !6, i64 68, i64 4, !6, i64 72, i64 4, !6}
!97 = !{!34, !11, i64 1168}
!98 = !{!34, !11, i64 1170}
!99 = !{!34, !11, i64 1172}
!100 = !{!25, !8, i64 1128}
!101 = !{!18, !5, i64 28}
!102 = !{!18, !5, i64 32}
!103 = !{!18, !5, i64 16}
!104 = !{!18, !5, i64 20}
!105 = !{!25, !5, i64 844}
!106 = !{!18, !5, i64 60}
!107 = !{!34, !9, i64 1176}
!108 = !{!18, !11, i64 58}
!109 = !{!18, !11, i64 44}
!110 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !7, i64 80, !7, i64 88}
!111 = !{!110, !5, i64 8}
!112 = !{!110, !5, i64 12}
!113 = !{!110, !5, i64 28}
!114 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !9, i64 88, !9, i64 96}
!115 = !{!114, !9, i64 88}
!116 = !{!34, !5, i64 1264}
!117 = !{!25, !8, i64 0}
!118 = !{!8, !8, i64 0}
!119 = !{!34, !7, i64 1080}
!120 = !{!34, !7, i64 1088}
!121 = !{!34, !7, i64 1096}
!122 = !{!"", !4, i64 0, !5, i64 128}
!123 = !{!122, !5, i64 128}
!124 = !{!"", !4, i64 0, !4, i64 17, !5, i64 276}
!125 = !{!124, !5, i64 276}
!126 = !{!27, !27, i64 0}
!127 = !{!34, !5, i64 1268}
!128 = !{!34, !5, i64 1352}
!129 = !{!110, !5, i64 44}
!130 = !{!"llvm.loop.isvectorized", i32 1}
!131 = !{!"llvm.loop.unroll.runtime.disable"}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!"branch_weights", i32 4, i32 28}
!134 = !{!34, !5, i64 1340}
!135 = !{!34, !8, i64 1064}
!136 = !{!34, !9, i64 1072}
!137 = !{!25, !9, i64 1104}
!138 = !{!25, !7, i64 1264}
!139 = !{!25, !7, i64 1256}
!140 = !{!25, !7, i64 928}
!141 = !{!25, !7, i64 944}
!142 = !{!25, !7, i64 968}
!143 = !{!25, !7, i64 976}
!144 = !{!25, !7, i64 1048}
!145 = !{!25, !7, i64 1056}
!146 = !{!25, !7, i64 1064}
!147 = !{!25, !9, i64 24}
!148 = !{ptr @std_fill_input_buffer}
!149 = !{!73, !73, i64 0}
!150 = !{!19, !19, i64 0}
!151 = !{!34, !7, i64 1272}
!152 = !{!25, !9, i64 912}
!153 = !{!25, !9, i64 1080}
!154 = !{!34, !7, i64 1280}
!155 = !{!"_TIFFField", !5, i64 0, !11, i64 4, !11, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !11, i64 20, !4, i64 22, !4, i64 23, !8, i64 24, !24, i64 32}
!156 = !{!155, !11, i64 20}
!157 = distinct !{null, null, null}
!158 = distinct !{null, null, null}
!159 = !{!25, !11, i64 122}
!160 = !{!25, !11, i64 170}
!161 = !{!25, !11, i64 130}
!162 = !{!25, !7, i64 1200}
!163 = !{!25, !7, i64 1176}
!164 = !{!25, !7, i64 1184}
!165 = !{!25, !7, i64 1224}
!166 = !{!34, !5, i64 1344}
!167 = !{!110, !5, i64 32}
!168 = !{!13, !13, i64 0}
!169 = !{!110, !5, i64 0}
!170 = !{!110, !5, i64 16}
!171 = !{!110, !5, i64 20}
!172 = !{!110, !5, i64 24}
!173 = !{!25, !5, i64 92}
!174 = !{!34, !7, i64 1296}
!175 = !{!34, !7, i64 1304}
!176 = distinct !{!176, !130, !131}
!177 = distinct !{!177, !130, !131}
!178 = distinct !{!178, !131, !130}
!179 = distinct !{!179, !131, !130}
!180 = distinct !{!180, !132}
!181 = distinct !{!181, !130, !131}
!182 = distinct !{!182, !130}
!183 = distinct !{!183, !130, !131}
!184 = distinct !{!184, !130, !131}
!185 = distinct !{!185, !132}
!186 = distinct !{!186, !131, !130}
!187 = distinct !{null}
!188 = !{!34, !7, i64 1032}
!189 = !{!64, !5, i64 32}
!190 = !{!86, !5, i64 172}
!191 = !{!114, !7, i64 16}
!192 = !{!"p1 _ZTS20jpeg_destination_mgr", !7, i64 0}
!193 = !{!"p1 _ZTS16jpeg_comp_master", !7, i64 0}
!194 = !{!"p1 _ZTS22jpeg_c_main_controller", !7, i64 0}
!195 = !{!"p1 _ZTS22jpeg_c_prep_controller", !7, i64 0}
!196 = !{!"p1 _ZTS22jpeg_c_coef_controller", !7, i64 0}
!197 = !{!"p1 _ZTS18jpeg_marker_writer", !7, i64 0}
!198 = !{!"p1 _ZTS20jpeg_color_converter", !7, i64 0}
!199 = !{!"p1 _ZTS16jpeg_downsampler", !7, i64 0}
!200 = !{!"p1 _ZTS16jpeg_forward_dct", !7, i64 0}
!201 = !{!"p1 _ZTS20jpeg_entropy_encoder", !7, i64 0}
!202 = !{!"jpeg_compress_struct", !61, i64 0, !62, i64 8, !63, i64 16, !7, i64 24, !5, i64 32, !5, i64 36, !192, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !72, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !7, i64 104, !4, i64 112, !4, i64 144, !4, i64 160, !4, i64 192, !4, i64 224, !4, i64 240, !4, i64 256, !5, i64 272, !7, i64 280, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !4, i64 329, !4, i64 330, !11, i64 332, !11, i64 334, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 376, !5, i64 408, !5, i64 412, !5, i64 416, !4, i64 420, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !73, i64 480, !5, i64 488, !193, i64 496, !194, i64 504, !195, i64 512, !196, i64 520, !197, i64 528, !198, i64 536, !199, i64 544, !200, i64 552, !201, i64 560, !7, i64 568, !5, i64 576}
!203 = !{!202, !61, i64 0}
!204 = !{!28, !7, i64 0}
!205 = distinct !{!205, !132}
!206 = distinct !{!206, !132}
!207 = distinct !{!207, !130, !131}
!208 = distinct !{!208, !130, !131}
!209 = distinct !{!209, !132}
!210 = distinct !{!210, !130}
!211 = distinct !{!211, !132}
end_hunk_1

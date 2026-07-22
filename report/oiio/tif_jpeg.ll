inline.NumInlined: 39
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@JPEGDefaultStripSize:bb.a
  %i.j = load i16, ptr %i.i, align 2, !tbaa !122
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 3                  ; 3 uses
  %i.m = sub nsw i32 0, %i.l
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i32 %i.e, -1
  %i.p = add i32 %i.o, %i.l
  %.fr = freeze i32 %i.p                          ; 2 uses
  %i.q = urem i32 %.fr, %i.l
  %i.r = sub nuw i32 %.fr, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.a ], [ %i.r, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @JPEGDefaultTileSize(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166
  tail call void %i.d(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load i16, ptr %i.f, align 8, !tbaa !122
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
  store i32 %i.p, ptr %1, align 4, !tbaa !3
  %i.q = load i32, ptr %2, align 4, !tbaa !3      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.s = load i16, ptr %i.r, align 2, !tbaa !122
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
  store i32 %i.ab, ptr %2, align 4, !tbaa !3
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
  store ptr %i.b, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 %i.f, ptr %i.g, align 8, !tbaa !80
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
  %i.f = load i32, ptr %i.e, align 4, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !133
  %i.i = sub i32 %i.f, %i.h                       ; 2 uses
  %i.j = icmp ugt i32 %i.d, %i.i
  br i1 %i.j, label %bb.b, label %select.unfold

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !67
  %i.m = and i32 %i.l, 1024
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.b, %bb.a
  %.0105.in = phi i32 [ %i.d, %bb.a ], [ %i.i, %bb.b ] ; 2 uses
  %.not111 = icmp eq i32 %.0105.in, 0
  br i1 %.not111, label %.thread137, label %.thread

.thread:                                          ; preds = %bb.b, %select.unfold
  %.0105.in119 = phi i32 [ %.0105.in, %select.unfold ], [ %i.d, %bb.b ]
  %.0105 = zext i32 %.0105.in119 to i64           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 304 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 140
  %i.q = load i32, ptr %i.p, align 4, !tbaa !167
  %.fr199 = freeze i32 %i.q                       ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.s = load i32, ptr %i.r, align 4, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 412 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.y = sext i32 %i.s to i64                     ; 12 uses
  %i.z = add i32 %.fr199, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.y, %i.aa                 ; 2 uses
  %.not113146 = icmp eq i32 %.fr199, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 1172 ; 2 uses
  %.pre261 = load i64, ptr %i.t, align 8, !tbaa !135 ; 2 uses
  br i1 %.not113146, label %.thread.split.us.split.us, label %.thread.split.preheader

.thread.split.preheader:                          ; preds = %.thread
  %xtraiter402 = and i32 %.fr199, 7               ; 2 uses
  %lcmp.mod403.not = icmp eq i32 %xtraiter402, 0
  %i.ad = icmp ult i32 %.fr199, 8
  br label %.thread.split

.thread.split.us.split.us:                        ; preds = %.thread, %._crit_edge.split.us.split.us.us.us
  %i.ae = phi i64 [ %i.au, %._crit_edge.split.us.split.us.us.us ], [ %.pre261, %.thread ]
  %.1106.us.us = phi i64 [ %i.ax, %._crit_edge.split.us.split.us.us.us ], [ %.0105, %.thread ]
  %.097.us.us = phi i64 [ %i.av, %._crit_edge.split.us.split.us.us.us ], [ %2, %.thread ] ; 6 uses
  %i.af = icmp slt i64 %.097.us.us, %i.ae
  br i1 %i.af, label %.split198.us, label %bb.c

bb.c:                                             ; preds = %.thread.split.us.split.us
  %i.ag = load i32, ptr %i.u, align 8, !tbaa !146 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 7
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.v, align 4, !tbaa !36
  %i.aj = shl nsw i32 %i.ai, 3                    ; 2 uses
  %i.ak = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, i32 noundef %i.aj)
  %.not112.us.us = icmp eq i32 %i.ak, %i.aj
  br i1 %.not112.us.us, label %.thread120.us.us, label %.loopexit142

.thread120.us.us:                                 ; preds = %bb.d
  store i32 0, ptr %i.u, align 8, !tbaa !146
  br label %bb.e

bb.e:                                             ; preds = %.thread120.us.us, %bb.c
  %i.al = phi i32 [ 0, %.thread120.us.us ], [ %i.ag, %bb.c ]
  %i.am = load i32, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.us177.us.preheader, label %._crit_edge.split.us.split.us.us.us

.lr.ph.us177.us.preheader:                        ; preds = %bb.e
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !36
  %broadcast.splatinsert362.a = insertelement <16 x i64> poison, i64 %.097.us.us, i64 0
  %broadcast.splat363.a = shufflevector <16 x i64> %broadcast.splatinsert362.a, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert335.a = insertelement <16 x i64> poison, i64 %.097.us.us, i64 0
  %broadcast.splat336.a = shufflevector <16 x i64> %broadcast.splatinsert335.a, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph.us177.us

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge157.us.us.us.us, %bb.e
  %i.ap = add nsw i32 %i.al, 1
  store i32 %i.ap, ptr %i.u, align 8, !tbaa !146
  %i.aq = load i16, ptr %i.ac, align 4, !tbaa !126 ; 2 uses
  %i.ar = zext i16 %i.aq to i32
  %i.as = load i32, ptr %i.g, align 4, !tbaa !133
  %i.at = add i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.g, align 4, !tbaa !133
  %i.au = load i64, ptr %i.t, align 8, !tbaa !135 ; 2 uses
  %i.av = sub nsw i64 %.097.us.us, %i.au
  %i.aw = zext i16 %i.aq to i64
  %i.ax = sub nsw i64 %.1106.us.us, %i.aw         ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.thread.split.us.split.us, label %.thread137

.lr.ph.us177.us:                                  ; preds = %.lr.ph.us177.us.preheader, %._crit_edge157.us.us.us.us
  %.099173.us.us.us.us = phi i32 [ %.1100.lcssa.us.us.us.us, %._crit_edge157.us.us.us.us ], [ 0, %.lr.ph.us177.us.preheader ] ; 2 uses
  %.0103172.us.us.us.us = phi i32 [ %i.be, %._crit_edge157.us.us.us.us ], [ 0, %.lr.ph.us177.us.preheader ]
  %.0104171.us.us.us.us = phi ptr [ %i.bf, %._crit_edge157.us.us.us.us ], [ %i.ao, %.lr.ph.us177.us.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0104171.us.us.us.us, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !141 ; 5 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph156.us.us.us.us, label %._crit_edge157.us.us.us.us

._crit_edge157.us.us.us.us.loopexit:              ; preds = %.preheader139.us.us.us.us.us.us, %middle.block350
  %indvars.iv.next257.lcssa = phi i64 [ %i.bz, %middle.block350 ], [ %indvars.iv.next257, %.preheader139.us.us.us.us.us.us ]
  %i.bc = trunc nsw i64 %indvars.iv.next257.lcssa to i32
  br label %._crit_edge157.us.us.us.us

._crit_edge157.us.us.us.us.loopexit203:           ; preds = %.preheader140.us.us.us.us.us, %middle.block377
  %indvars.iv.next253.lcssa = phi i64 [ %i.bp, %middle.block377 ], [ %indvars.iv.next253, %.preheader140.us.us.us.us.us ]
  %i.bd = trunc nsw i64 %indvars.iv.next253.lcssa to i32
  br label %._crit_edge157.us.us.us.us

._crit_edge157.us.us.us.us:                       ; preds = %._crit_edge157.us.us.us.us.loopexit203, %._crit_edge157.us.us.us.us.loopexit, %.lr.ph.us177.us
  %.1100.lcssa.us.us.us.us = phi i32 [ %.099173.us.us.us.us, %.lr.ph.us177.us ], [ %i.bc, %._crit_edge157.us.us.us.us.loopexit ], [ %i.bd, %._crit_edge157.us.us.us.us.loopexit203 ]
  %i.be = add nuw nsw i32 %.0103172.us.us.us.us, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0104171.us.us.us.us, i64 96
  %i.bg = icmp slt i32 %i.be, %i.am
  br i1 %i.bg, label %.lr.ph.us177.us, label %._crit_edge.split.us.split.us.us.us

.lr.ph156.us.us.us.us:                            ; preds = %.lr.ph.us177.us
  %i.bh = getelementptr inbounds nuw i8, ptr %.0104171.us.us.us.us, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !139
  %.fr201 = freeze i32 %i.bi                      ; 2 uses
  %i.bj = sext i32 %.fr201 to i64                 ; 8 uses
  %i.bk = add nsw i64 %i.ab, %i.bj                ; 4 uses
  %i.bl = icmp eq i32 %.fr201, 1
  %i.bm = sext i32 %.099173.us.us.us.us to i64    ; 6 uses
  %i.bn = zext nneg i32 %i.ba to i64              ; 4 uses
  %min.iters.check329 = icmp ult i32 %i.ba, 16    ; 2 uses
  br i1 %i.bl, label %.lr.ph156.split.us.us.us.us.us.preheader, label %.lr.ph156.split.us174.us.us.us.preheader

.lr.ph156.split.us174.us.us.us.preheader:         ; preds = %.lr.ph156.us.us.us.us
  br i1 %min.iters.check329, label %.lr.ph156.split.us174.us.us.us.preheader387, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph156.split.us174.us.us.us.preheader
  %n.vec359 = and i64 %i.bn, 2147483632           ; 4 uses
  %i.bo = mul nsw i64 %n.vec359, %i.bj
  %i.bp = add i64 %i.bo, %i.bm                    ; 2 uses
  %i.bq = trunc nuw nsw i64 %n.vec359 to i32
  %broadcast.splatinsert360 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat361 = shufflevector <16 x i64> %broadcast.splatinsert360, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert364.a = insertelement <16 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat365.a = shufflevector <16 x i64> %broadcast.splatinsert364.a, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert366 = insertelement <16 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat367 = shufflevector <16 x i64> %broadcast.splatinsert366, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.br = mul nsw <16 x i64> %broadcast.splat367, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction368 = add nsw <16 x i64> %broadcast.splat365.a, %i.br
  %i.bs = shl nsw i64 %i.bj, 4
  %broadcast.splatinsert369 = insertelement <16 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat370 = shufflevector <16 x i64> %broadcast.splatinsert369, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body.interim376, %vector.ph357
  %index372 = phi i64 [ 0, %vector.ph357 ], [ %index.next374, %vector.body.interim376 ]
  %vec.ind373 = phi <16 x i64> [ %induction368, %vector.ph357 ], [ %vec.ind.next375, %vector.body.interim376 ] ; 2 uses
  %i.bt = add <16 x i64> %broadcast.splat361, %vec.ind373
  %i.bu = icmp slt <16 x i64> %broadcast.splat363.a, %i.bt
  %i.bv = freeze <16 x i1> %i.bu
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %.not383 = icmp eq i16 %i.bw, 0
  br i1 %.not383, label %vector.body.interim376, label %.split.us

vector.body.interim376:                           ; preds = %vector.body371
  %vec.ind.next375 = add nsw <16 x i64> %vec.ind373, %broadcast.splat370
  %index.next374 = add nuw i64 %index372, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next374, %n.vec359
  br i1 %i.bx, label %middle.block377, label %vector.body371, !llvm.loop !168

middle.block377:                                  ; preds = %vector.body.interim376
  %cmp.n378 = icmp eq i64 %n.vec359, %i.bn
  br i1 %cmp.n378, label %._crit_edge157.us.us.us.us.loopexit203, label %.lr.ph156.split.us174.us.us.us.preheader387

.lr.ph156.split.us174.us.us.us.preheader387:      ; preds = %.lr.ph156.split.us174.us.us.us.preheader, %middle.block377
  %indvars.iv252.ph = phi i64 [ %i.bm, %.lr.ph156.split.us174.us.us.us.preheader ], [ %i.bp, %middle.block377 ]
  %.090154.us159.us.us.us.us.ph = phi i32 [ 0, %.lr.ph156.split.us174.us.us.us.preheader ], [ %i.bq, %middle.block377 ]
  br label %.lr.ph156.split.us174.us.us.us

.lr.ph156.split.us.us.us.us.us.preheader:         ; preds = %.lr.ph156.us.us.us.us
  br i1 %min.iters.check329, label %.lr.ph156.split.us.us.us.us.us.preheader385, label %vector.ph330

vector.ph330:                                     ; preds = %.lr.ph156.split.us.us.us.us.us.preheader
  %n.vec332 = and i64 %i.bn, 2147483632           ; 4 uses
  %i.by = mul nuw nsw i64 %n.vec332, %i.bj
  %i.bz = add nsw i64 %i.by, %i.bm                ; 2 uses
  %i.ca = trunc nuw nsw i64 %n.vec332 to i32
  %broadcast.splatinsert333 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat334 = shufflevector <16 x i64> %broadcast.splatinsert333, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert337.a = insertelement <16 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat338.a = shufflevector <16 x i64> %broadcast.splatinsert337.a, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert339 = insertelement <16 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat340 = shufflevector <16 x i64> %broadcast.splatinsert339, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.cb = mul nuw nsw <16 x i64> %broadcast.splat340, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction341 = add nsw <16 x i64> %broadcast.splat338.a, %i.cb
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body.interim349, %vector.ph330
  %index345 = phi i64 [ 0, %vector.ph330 ], [ %index.next347, %vector.body.interim349 ]
  %vec.ind346 = phi <16 x i64> [ %induction341, %vector.ph330 ], [ %vec.ind.next348, %vector.body.interim349 ] ; 2 uses
  %i.cc = add <16 x i64> %broadcast.splat334, %vec.ind346
  %i.cd = icmp slt <16 x i64> %broadcast.splat336.a, %i.cc
  %i.ce = freeze <16 x i1> %i.cd
  %i.cf = bitcast <16 x i1> %i.ce to i16
  %.not384 = icmp eq i16 %i.cf, 0
  br i1 %.not384, label %vector.body.interim349, label %.split.us

vector.body.interim349:                           ; preds = %vector.body344
  %vec.ind.next348 = add nsw <16 x i64> %vec.ind346, splat (i64 16)
  %index.next347 = add nuw i64 %index345, 16      ; 2 uses
  %i.cg = icmp eq i64 %index.next347, %n.vec332
  br i1 %i.cg, label %middle.block350, label %vector.body344, !llvm.loop !171

middle.block350:                                  ; preds = %vector.body.interim349
  %cmp.n351 = icmp eq i64 %n.vec332, %i.bn
  br i1 %cmp.n351, label %._crit_edge157.us.us.us.us.loopexit, label %.lr.ph156.split.us.us.us.us.us.preheader385

.lr.ph156.split.us.us.us.us.us.preheader385:      ; preds = %.lr.ph156.split.us.us.us.us.us.preheader, %middle.block350
  %indvars.iv256.ph = phi i64 [ %i.bm, %.lr.ph156.split.us.us.us.us.us.preheader ], [ %i.bz, %middle.block350 ]
  %.090154.us.us.us.us.us.us.ph = phi i32 [ 0, %.lr.ph156.split.us.us.us.us.us.preheader ], [ %i.ca, %middle.block350 ]
  br label %.lr.ph156.split.us.us.us.us.us

.lr.ph156.split.us174.us.us.us:                   ; preds = %.lr.ph156.split.us174.us.us.us.preheader387, %.preheader140.us.us.us.us.us
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %.preheader140.us.us.us.us.us ], [ %indvars.iv252.ph, %.lr.ph156.split.us174.us.us.us.preheader387 ] ; 2 uses
  %.090154.us159.us.us.us.us = phi i32 [ %i.ci, %.preheader140.us.us.us.us.us ], [ %.090154.us159.us.us.us.us.ph, %.lr.ph156.split.us174.us.us.us.preheader387 ]
  %i.ch = add i64 %i.bk, %indvars.iv252
  %.not115.us161.us.us.us.us = icmp slt i64 %.097.us.us, %i.ch
  br i1 %.not115.us161.us.us.us.us, label %.split.us, label %.preheader140.us.us.us.us.us

.preheader140.us.us.us.us.us:                     ; preds = %.lr.ph156.split.us174.us.us.us
  %indvars.iv.next253 = add nsw i64 %indvars.iv252, %i.bj ; 2 uses
  %i.ci = add nuw nsw i32 %.090154.us159.us.us.us.us, 1 ; 2 uses
  %exitcond255.not = icmp eq i32 %i.ci, %i.ba
  br i1 %exitcond255.not, label %._crit_edge157.us.us.us.us.loopexit203, label %.lr.ph156.split.us174.us.us.us, !llvm.loop !172

.lr.ph156.split.us.us.us.us.us:                   ; preds = %.lr.ph156.split.us.us.us.us.us.preheader385, %.preheader139.us.us.us.us.us.us
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %.preheader139.us.us.us.us.us.us ], [ %indvars.iv256.ph, %.lr.ph156.split.us.us.us.us.us.preheader385 ] ; 2 uses
  %.090154.us.us.us.us.us.us = phi i32 [ %i.ck, %.preheader139.us.us.us.us.us.us ], [ %.090154.us.us.us.us.us.us.ph, %.lr.ph156.split.us.us.us.us.us.preheader385 ]
  %i.cj = add i64 %i.bk, %indvars.iv256
  %.not115.us.us.us.us.us.us = icmp slt i64 %.097.us.us, %i.cj
  br i1 %.not115.us.us.us.us.us.us, label %.split.us, label %.preheader139.us.us.us.us.us.us

.preheader139.us.us.us.us.us.us:                  ; preds = %.lr.ph156.split.us.us.us.us.us
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, %i.bj ; 2 uses
  %i.ck = add nuw nsw i32 %.090154.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond259.not = icmp eq i32 %i.ck, %i.ba
  br i1 %exitcond259.not, label %._crit_edge157.us.us.us.us.loopexit, label %.lr.ph156.split.us.us.us.us.us, !llvm.loop !173

.thread.split:                                    ; preds = %.thread.split.preheader, %._crit_edge.split
  %i.cl = phi i64 [ %i.hk, %._crit_edge.split ], [ %.pre261, %.thread.split.preheader ]
  %.1106 = phi i64 [ %i.ho, %._crit_edge.split ], [ %.0105, %.thread.split.preheader ]
  %.097 = phi i64 [ %i.hm, %._crit_edge.split ], [ %2, %.thread.split.preheader ] ; 6 uses
  %.092 = phi ptr [ %i.hl, %._crit_edge.split ], [ %1, %.thread.split.preheader ] ; 4 uses
  %.092295 = ptrtoaddr ptr %.092 to i64
  %i.cm = icmp slt i64 %.097, %i.cl
  br i1 %i.cm, label %.split198.us, label %bb.f

.split198.us:                                     ; preds = %.thread.split, %.thread.split.us.split.us
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #16
  br label %.loopexit142

bb.f:                                             ; preds = %.thread.split
  %i.cn = load i32, ptr %i.u, align 8, !tbaa !146 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 7
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cp = load i32, ptr %i.v, align 4, !tbaa !36
  %i.cq = shl nsw i32 %i.cp, 3                    ; 2 uses
  %i.cr = tail call fastcc i32 @TIFFjpeg_read_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.w, i32 noundef %i.cq)
  %.not112 = icmp eq i32 %i.cr, %i.cq
  br i1 %.not112, label %.thread120, label %.loopexit142

.thread120:                                       ; preds = %bb.g
  store i32 0, ptr %i.u, align 8, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %.thread120, %bb.f
  %i.cs = phi i32 [ 0, %.thread120 ], [ %i.cn, %bb.f ]
  %i.ct = load i32, ptr %i.x, align 8, !tbaa !36
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !36
  %broadcast.splatinsert314.a = insertelement <16 x i64> poison, i64 %.097, i64 0
  %broadcast.splat315.a = shufflevector <16 x i64> %broadcast.splatinsert314.a, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge157
  %indvars.iv238 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next239, %._crit_edge157 ] ; 2 uses
  %.099173 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1100.lcssa, %._crit_edge157 ] ; 3 uses
  %.0104171 = phi ptr [ %i.cv, %.lr.ph.preheader ], [ %i.ha, %._crit_edge157 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0104171, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !139
  %.fr200 = freeze i32 %i.cx                      ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0104171, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !141 ; 8 uses
  %i.da = icmp sgt i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %.lr.ph
  %i.db = sext i32 %.fr200 to i64                 ; 8 uses
  %i.dc = add nsw i64 %i.ab, %i.db                ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv238 ; 2 uses
  %i.de = icmp eq i32 %.fr200, 1
  br i1 %i.de, label %.lr.ph156.split.us.preheader, label %.lr.ph156.split

.lr.ph156.split.us.preheader:                     ; preds = %.lr.ph156
  %i.df = sext i32 %.099173 to i64
  br label %.lr.ph156.split.us

.lr.ph156.split.us:                               ; preds = %.lr.ph156.split.us.preheader, %.loopexit.us
  %indvars.iv234 = phi i64 [ %i.df, %.lr.ph156.split.us.preheader ], [ %indvars.iv.next235, %.loopexit.us ] ; 3 uses
  %.090154.us = phi i32 [ 0, %.lr.ph156.split.us.preheader ], [ %i.es, %.loopexit.us ] ; 2 uses
  %i.dg = add i64 %i.dc, %indvars.iv234
  %.not115.us = icmp slt i64 %.097, %i.dg
  br i1 %.not115.us, label %.split.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph156.split.us
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !161
  %i.di = load i32, ptr %i.u, align 8, !tbaa !146
  %i.dj = mul nsw i32 %i.di, %i.cz
  %i.dk = add nsw i32 %i.dj, %.090154.us
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !148 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.092, i64 %indvars.iv234 ; 2 uses
  br i1 %lcmp.mod403.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.085152.us.prol = phi ptr [ %i.ds, %.lr.ph.us.prol ], [ %i.do, %.lr.ph.us.preheader ] ; 2 uses
  %.086151.us.prol = phi i32 [ %i.dp, %.lr.ph.us.prol ], [ %.fr199, %.lr.ph.us.preheader ]
  %.088150.us.prol = phi ptr [ %i.dq, %.lr.ph.us.prol ], [ %i.dn, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter404 = phi i32 [ %prol.iter404.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.dp = add i32 %.086151.us.prol, -1            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.088150.us.prol, i64 1 ; 2 uses
  %i.dr = load i8, ptr %.088150.us.prol, align 1, !tbaa !36
  store i8 %i.dr, ptr %.085152.us.prol, align 1, !tbaa !36
  %i.ds = getelementptr inbounds i8, ptr %.085152.us.prol, i64 %i.y ; 2 uses
  %prol.iter404.next = add i32 %prol.iter404, 1   ; 2 uses
  %prol.iter404.cmp.not = icmp eq i32 %prol.iter404.next, %xtraiter402
  br i1 %prol.iter404.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !174

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.085152.us.unr = phi ptr [ %i.do, %.lr.ph.us.preheader ], [ %i.ds, %.lr.ph.us.prol ]
  %.086151.us.unr = phi i32 [ %.fr199, %.lr.ph.us.preheader ], [ %i.dp, %.lr.ph.us.prol ]
  %.088150.us.unr = phi ptr [ %i.dn, %.lr.ph.us.preheader ], [ %i.dq, %.lr.ph.us.prol ]
  br i1 %i.ad, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.085152.us = phi ptr [ %i.er, %.lr.ph.us ], [ %.085152.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.086151.us = phi i32 [ %i.eo, %.lr.ph.us ], [ %.086151.us.unr, %.lr.ph.us.prol.loopexit ]
  %.088150.us = phi ptr [ %i.ep, %.lr.ph.us ], [ %.088150.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.088150.us, i64 1
  %i.du = load i8, ptr %.088150.us, align 1, !tbaa !36
  store i8 %i.du, ptr %.085152.us, align 1, !tbaa !36
  %i.dv = getelementptr inbounds i8, ptr %.085152.us, i64 %i.y ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.088150.us, i64 2
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !36
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !36
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.y ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.088150.us, i64 3
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !36
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !36
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 %i.y ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.088150.us, i64 4
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !36
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !36
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.y ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.088150.us, i64 5
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !36
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !36
  %i.eh = getelementptr inbounds i8, ptr %i.ee, i64 %i.y ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.088150.us, i64 6
  %i.ej = load i8, ptr %i.ef, align 1, !tbaa !36
  store i8 %i.ej, ptr %i.eh, align 1, !tbaa !36
  %i.ek = getelementptr inbounds i8, ptr %i.eh, i64 %i.y ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.088150.us, i64 7
  %i.em = load i8, ptr %i.ei, align 1, !tbaa !36
  store i8 %i.em, ptr %i.ek, align 1, !tbaa !36
  %i.en = getelementptr inbounds i8, ptr %i.ek, i64 %i.y ; 2 uses
  %i.eo = add i32 %.086151.us, -8                 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.088150.us, i64 8
  %i.eq = load i8, ptr %i.el, align 1, !tbaa !36
  store i8 %i.eq, ptr %i.en, align 1, !tbaa !36
  %i.er = getelementptr inbounds i8, ptr %i.en, i64 %i.y
  %.not114.us.7 = icmp eq i32 %i.eo, 0
  br i1 %.not114.us.7, label %.loopexit.us, label %.lr.ph.us

.loopexit.us:                                     ; preds = %.lr.ph.us, %.lr.ph.us.prol.loopexit
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, %i.db ; 2 uses
  %i.es = add nuw nsw i32 %.090154.us, 1          ; 2 uses
  %exitcond237.not = icmp eq i32 %i.es, %i.cz
  br i1 %exitcond237.not, label %._crit_edge157.loopexit, label %.lr.ph156.split.us

.lr.ph156.split:                                  ; preds = %.lr.ph156
  %i.et = icmp sgt i32 %.fr200, 0
  %i.eu = sext i32 %.099173 to i64                ; 5 uses
  br i1 %i.et, label %.lr.ph156.split.split.split.us.preheader, label %.lr.ph156.split.split.split.preheader

.lr.ph156.split.split.split.preheader:            ; preds = %.lr.ph156.split
  %i.ev = zext nneg i32 %i.cz to i64              ; 2 uses
  %min.iters.check310 = icmp ult i32 %i.cz, 16
  br i1 %min.iters.check310, label %.lr.ph156.split.split.split.preheader394, label %vector.ph311

vector.ph311:                                     ; preds = %.lr.ph156.split.split.split.preheader
  %n.vec313 = and i64 %i.ev, 2147483632           ; 4 uses
  %i.ew = mul nsw i64 %n.vec313, %i.db
  %i.ex = add i64 %i.ew, %i.eu                    ; 2 uses
  %i.ey = trunc nuw nsw i64 %n.vec313 to i32
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert316.a = insertelement <16 x i64> poison, i64 %i.eu, i64 0
  %broadcast.splat317.a = shufflevector <16 x i64> %broadcast.splatinsert316.a, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert318.a = insertelement <16 x i64> poison, i64 %i.db, i64 0
  %broadcast.splat319.a = shufflevector <16 x i64> %broadcast.splatinsert318.a, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ez = mul nsw <16 x i64> %broadcast.splat319.a, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %induction = add nsw <16 x i64> %broadcast.splat317.a, %i.ez
  %i.fa = shl nsw i64 %i.db, 4
  %broadcast.splatinsert320 = insertelement <16 x i64> poison, i64 %i.fa, i64 0
  %broadcast.splat321 = shufflevector <16 x i64> %broadcast.splatinsert320, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body.interim, %vector.ph311
  %index323 = phi i64 [ 0, %vector.ph311 ], [ %index.next324, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph311 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.fb = add <16 x i64> %broadcast.splat, %vec.ind
  %i.fc = icmp slt <16 x i64> %broadcast.splat315.a, %i.fb
  %i.fd = freeze <16 x i1> %i.fc
  %i.fe = bitcast <16 x i1> %i.fd to i16
  %.not382 = icmp eq i16 %i.fe, 0
  br i1 %.not382, label %vector.body.interim, label %.split.us

vector.body.interim:                              ; preds = %vector.body322
  %vec.ind.next = add nsw <16 x i64> %vec.ind, %broadcast.splat321
  %index.next324 = add nuw i64 %index323, 16      ; 2 uses
  %i.ff = icmp eq i64 %index.next324, %n.vec313
  br i1 %i.ff, label %middle.block325, label %vector.body322, !llvm.loop !176

middle.block325:                                  ; preds = %vector.body.interim
  %cmp.n326 = icmp eq i64 %n.vec313, %i.ev
  br i1 %cmp.n326, label %._crit_edge157.loopexit214, label %.lr.ph156.split.split.split.preheader394

.lr.ph156.split.split.split.preheader394:         ; preds = %.lr.ph156.split.split.split.preheader, %middle.block325
  %indvars.iv.ph = phi i64 [ %i.eu, %.lr.ph156.split.split.split.preheader ], [ %i.ex, %middle.block325 ]
  %.090154.ph = phi i32 [ 0, %.lr.ph156.split.split.split.preheader ], [ %i.ey, %middle.block325 ]
  br label %.lr.ph156.split.split.split

.lr.ph156.split.split.split.us.preheader:         ; preds = %.lr.ph156.split
  %wide.trip.count = zext nneg i32 %.fr200 to i64 ; 8 uses
  %4 = add i64 %.092295, %i.eu
  %min.iters.check = icmp ult i32 %.fr200, 4
  %min.iters.check299 = icmp ult i32 %.fr200, 32
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec302 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n307 = icmp eq i64 %n.vec302, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph156.split.split.split.us

.lr.ph156.split.split.split.us:                   ; preds = %.lr.ph156.split.split.split.us.preheader, %..loopexit141_crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph156.split.split.split.us.preheader ], [ %indvar.next, %..loopexit141_crit_edge.us ] ; 2 uses
  %indvars.iv230 = phi i64 [ %i.eu, %.lr.ph156.split.split.split.us.preheader ], [ %indvars.iv.next231, %..loopexit141_crit_edge.us ] ; 3 uses
  %.090154.us164 = phi i32 [ 0, %.lr.ph156.split.split.split.us.preheader ], [ %i.gu, %..loopexit141_crit_edge.us ] ; 2 uses
  %i.fg = mul i64 %indvar, %i.db
  %5 = add i64 %4, %i.fg
  %i.fh = add i64 %i.dc, %indvars.iv230
  %.not115.us166 = icmp slt i64 %.097, %i.fh
  br i1 %.not115.us166, label %.split.us, label %.preheader140.us167

.preheader140.us167:                              ; preds = %.lr.ph156.split.split.split.us
  %i.fi = getelementptr inbounds i8, ptr %.092, i64 %indvars.iv230
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !161
  %i.fk = load i32, ptr %i.u, align 8, !tbaa !146
  %i.fl = mul nsw i32 %i.fk, %i.cz
  %i.fm = add nsw i32 %i.fl, %.090154.us164
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fn
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !148
  br label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227.3, %vec.epilog.scalar.ph ], [ %indvars.iv226.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.2144.us = phi ptr [ %i.gb, %vec.epilog.scalar.ph ], [ %.2144.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.2144.us, i64 1
  %i.fr = load i8, ptr %.2144.us, align 1, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %indvars.iv226
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !36
  %i.ft = getelementptr inbounds nuw i8, ptr %.2144.us, i64 2
  %i.fu = load i8, ptr %i.fq, align 1, !tbaa !36
  %i.fv = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %indvars.iv226
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store i8 %i.fu, ptr %i.fw, align 1, !tbaa !36
  %i.fx = getelementptr inbounds nuw i8, ptr %.2144.us, i64 3
  %i.fy = load i8, ptr %i.ft, align 1, !tbaa !36
  %i.fz = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %indvars.iv226
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !36
  %i.gb = getelementptr inbounds nuw i8, ptr %.2144.us, i64 4 ; 2 uses
  %i.gc = load i8, ptr %i.fx, align 1, !tbaa !36
  %i.gd = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %indvars.iv226
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 3
  store i8 %i.gc, ptr %i.ge, align 1, !tbaa !36
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4 ; 2 uses
  %exitcond229.not.3 = icmp eq i64 %indvars.iv.next227.3, %wide.trip.count
  br i1 %exitcond229.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !177

iter.check:                                       ; preds = %.preheader140.us167, %._crit_edge.us
  %indvar296 = phi i64 [ 0, %.preheader140.us167 ], [ %indvar.next297, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %.fr199, %.preheader140.us167 ], [ %i.gs, %._crit_edge.us ]
  %.1148.us.a = phi ptr [ %i.fi, %.preheader140.us167 ], [ %i.gt, %._crit_edge.us ] ; 8 uses
  %.189147.us = phi ptr [ %i.fp, %.preheader140.us167 ], [ %.lcssa, %._crit_edge.us ] ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.189147.us298 = ptrtoaddr ptr %.189147.us to i64
  %6 = mul i64 %indvar296, %i.y
  %7 = add i64 %5, %6
  %8 = sub i64 %.189147.us298, %7
  %diff.check = icmp ugt i64 %8, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check299, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gf = getelementptr i8, ptr %.189147.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.189147.us, i64 %index ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !36
  %wide.load300 = load <16 x i8>, ptr %i.gg, align 1, !tbaa !36
  %i.gh = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <16 x i8> %wide.load, ptr %i.gh, align 1, !tbaa !36
  store <16 x i8> %wide.load300, ptr %i.gi, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gk = getelementptr i8, ptr %.189147.us, i64 %n.vec302 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index303 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next306, %vec.epilog.vector.body ] ; 3 uses
  %next.gep304 = getelementptr i8, ptr %.189147.us, i64 %index303
  %wide.load305 = load <4 x i8>, ptr %next.gep304, align 1, !tbaa !36
  %i.gl = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %index303
  store <4 x i8> %wide.load305, ptr %i.gl, align 1, !tbaa !36
  %index.next306 = add nuw i64 %index303, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next306, %n.vec302
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n307, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv226.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec302, %vec.epilog.middle.block ] ; 3 uses
  %.2144.us.ph = phi ptr [ %.189147.us, %iter.check ], [ %.189147.us, %vector.memcheck ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv226.prol = phi i64 [ %indvars.iv.next227.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv226.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2144.us.prol = phi ptr [ %i.gn, %vec.epilog.scalar.ph.prol ], [ %.2144.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.2144.us.prol, i64 1 ; 3 uses
  %i.go = load i8, ptr %.2144.us.prol, align 1, !tbaa !36
  %i.gp = getelementptr inbounds nuw i8, ptr %.1148.us.a, i64 %indvars.iv226.prol
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !36
  %indvars.iv.next227.prol = add nuw nsw i64 %indvars.iv226.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !181

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa401.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %indvars.iv226.unr = phi i64 [ %indvars.iv226.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next227.prol, %vec.epilog.scalar.ph.prol ]
  %.2144.us.unr = phi ptr [ %.2144.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gn, %vec.epilog.scalar.ph.prol ]
  %i.gq = sub nsw i64 %indvars.iv226.ph, %wide.trip.count
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge.us, label %vec.epilog.scalar.ph

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gk, %vec.epilog.middle.block ], [ %i.gf, %middle.block ], [ %.lcssa401.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gb, %vec.epilog.scalar.ph ]
  %i.gs = add i32 %.in, -1                        ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %.1148.us.a, i64 %i.y
  %.not113.us = icmp eq i32 %i.gs, 0
  %indvar.next297 = add i64 %indvar296, 1
  br i1 %.not113.us, label %..loopexit141_crit_edge.us, label %iter.check

..loopexit141_crit_edge.us:                       ; preds = %._crit_edge.us
  %indvars.iv.next231 = add nsw i64 %indvars.iv230, %i.db ; 2 uses
  %i.gu = add nuw nsw i32 %.090154.us164, 1       ; 2 uses
  %exitcond233.not = icmp eq i32 %i.gu, %i.cz
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond233.not, label %._crit_edge157.loopexit212, label %.lr.ph156.split.split.split.us

.lr.ph156.split.split.split:                      ; preds = %.lr.ph156.split.split.split.preheader394, %.preheader140
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader140 ], [ %indvars.iv.ph, %.lr.ph156.split.split.split.preheader394 ] ; 2 uses
  %.090154 = phi i32 [ %i.gw, %.preheader140 ], [ %.090154.ph, %.lr.ph156.split.split.split.preheader394 ]
  %i.gv = add i64 %i.dc, %indvars.iv
  %.not115 = icmp slt i64 %.097, %i.gv
  br i1 %.not115, label %.split.us, label %.preheader140

.preheader140:                                    ; preds = %.lr.ph156.split.split.split
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.db ; 2 uses
  %i.gw = add nuw nsw i32 %.090154, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gw, %i.cz
  br i1 %exitcond.not, label %._crit_edge157.loopexit214, label %.lr.ph156.split.split.split, !llvm.loop !182

.split.us:                                        ; preds = %vector.body322, %.lr.ph156.split.split.split, %.lr.ph156.split.split.split.us, %.lr.ph156.split.us, %vector.body371, %.lr.ph156.split.us174.us.us.us, %vector.body344, %.lr.ph156.split.us.us.us.us.us
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #16
  br label %.loopexit142

._crit_edge157.loopexit:                          ; preds = %.loopexit.us
  %i.gx = trunc nsw i64 %indvars.iv.next235 to i32
  br label %._crit_edge157

._crit_edge157.loopexit212:                       ; preds = %..loopexit141_crit_edge.us
  %i.gy = trunc nsw i64 %indvars.iv.next231 to i32
  br label %._crit_edge157

._crit_edge157.loopexit214:                       ; preds = %.preheader140, %middle.block325
  %indvars.iv.next.lcssa = phi i64 [ %i.ex, %middle.block325 ], [ %indvars.iv.next, %.preheader140 ]
  %i.gz = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %._crit_edge157.loopexit214, %._crit_edge157.loopexit212, %._crit_edge157.loopexit, %.lr.ph
  %.1100.lcssa = phi i32 [ %.099173, %.lr.ph ], [ %i.gy, %._crit_edge157.loopexit212 ], [ %i.gx, %._crit_edge157.loopexit ], [ %i.gz, %._crit_edge157.loopexit214 ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0104171, i64 96
  %i.hb = load i32, ptr %i.x, align 8, !tbaa !36
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next239, %i.hc
  br i1 %i.hd, label %.lr.ph, label %._crit_edge.split.loopexit

._crit_edge.split.loopexit:                       ; preds = %._crit_edge157
  %.pre260 = load i32, ptr %i.u, align 8, !tbaa !146
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.h
  %i.he = phi i32 [ %.pre260, %._crit_edge.split.loopexit ], [ %i.cs, %bb.h ]
  %i.hf = add nsw i32 %i.he, 1
  store i32 %i.hf, ptr %i.u, align 8, !tbaa !146
  %i.hg = load i16, ptr %i.ac, align 4, !tbaa !126 ; 2 uses
  %i.hh = zext i16 %i.hg to i32
  %i.hi = load i32, ptr %i.g, align 4, !tbaa !133
  %i.hj = add i32 %i.hi, %i.hh
  store i32 %i.hj, ptr %i.g, align 4, !tbaa !133
  %i.hk = load i64, ptr %i.t, align 8, !tbaa !135 ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %.092, i64 %i.hk
  %i.hm = sub nsw i64 %.097, %i.hk
  %i.hn = zext i16 %i.hg to i64
  %i.ho = sub nsw i64 %.1106, %i.hn               ; 2 uses
  %i.hp = icmp sgt i64 %i.ho, 0
  br i1 %i.hp, label %.thread.split, label %.thread137

.thread137:                                       ; preds = %._crit_edge.split, %._crit_edge.split.us.split.us.us.us, %select.unfold
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !36
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !36
  %i.hu = icmp ult i32 %i.hr, %i.ht
  br i1 %i.hu, label %.loopexit142, label %bb.i

bb.i:                                             ; preds = %.thread137
  %i.hv = tail call fastcc i32 @TIFFjpeg_finish_decompress(ptr noundef nonnull %i.b)
  %i.hw = icmp ne i32 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  br label %.loopexit142

.loopexit142:                                     ; preds = %bb.g, %bb.d, %.split.us, %.split198.us, %.thread137, %bb.i
  %.091 = phi i32 [ %i.hx, %bb.i ], [ 1, %.thread137 ], [ 0, %.split198.us ], [ 0, %.split.us ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.091
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @TIFFjpeg_start_decompress(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !36
  store ptr @TIFFjpeg_progress_monitor, ptr %i.a, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  store i32 100, ptr %i.c, align 4, !tbaa !184
  %i.d = call ptr @getenv(ptr noundef nonnull @.str.32) #16 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i64 @strtol(ptr noundef nonnull captures(none) %i.d, ptr noundef null, i32 noundef 10) #16, !inline_history !185
  %i.f = trunc i64 %i.e to i32
  store i32 %i.f, ptr %i.c, align 4, !tbaa !184
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
  %.0193 = phi ptr [ %0, %.lr.ph ], [ %i.p, %bb.c ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0193, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %.0193, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !141  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0193, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !142
  %i.i = shl i32 %i.h, 3
  %i.j = shl nsw i32 %i.f, 3
  %i.k = tail call fastcc ptr @TIFFjpeg_alloc_sarray(ptr noundef %.1072.val, i32 noundef %i.i, i32 noundef %i.j) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = mul nsw i32 %i.f, %i.d
  %i.n = add nsw i32 %i.m, %.04                   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store ptr %i.k, ptr %i.o, align 8, !tbaa !161
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0193, i64 96
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.n, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %.1072.val, i64 1268
  store i32 %.0.lcssa, ptr %i.q, align 4, !tbaa !162
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %._crit_edge
  %.018 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.b ]
  ret i32 %.018
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !186
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !187  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1340
  %i.f = load i32, ptr %i.e, align 4, !tbaa !184  ; 2 uses
  %.not10 = icmp slt i32 %i.d, %i.f
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103
  %i.e = tail call fastcc i32 @TIFFjpeg_set_quality(ptr noundef %i.b, i32 noundef %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc i32 @TIFFjpeg_suppress_tables(ptr noundef nonnull %i.b)
  %.not15 = icmp eq i32 %i.f, 0
  br i1 %.not15, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1332
  %i.h = load i32, ptr %i.g, align 4, !tbaa !105  ; 2 uses
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
  store i32 0, ptr %i.l, align 4, !tbaa !157
  br label %unsuppress_quant_table.exit

unsuppress_quant_table.exit:                      ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.n = load i16, ptr %i.m, align 8, !tbaa !124
  %i.o = icmp eq i16 %i.n, 6
  br i1 %i.o, label %bb.f, label %unsuppress_quant_table.exit21

bb.f:                                             ; preds = %unsuppress_quant_table.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not.i20 = icmp eq ptr %i.q, null
  br i1 %.not.i20, label %unsuppress_quant_table.exit21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  store i32 0, ptr %i.r, align 4, !tbaa !157
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
  store i32 0, ptr %i.v, align 4, !tbaa !159
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 2 uses
  %.not6.i = icmp eq ptr %i.x, null
  br i1 %.not6.i, label %unsuppress_huff_table.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 276
  store i32 0, ptr %i.y, align 4, !tbaa !159
  br label %unsuppress_huff_table.exit

unsuppress_huff_table.exit:                       ; preds = %bb.j, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1168
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !124
  %i.ab = icmp eq i16 %i.aa, 6
  br i1 %i.ab, label %bb.l, label %unsuppress_huff_table.exit25

bb.l:                                             ; preds = %unsuppress_huff_table.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ad, null
  br i1 %.not.i23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 276
  store i32 0, ptr %i.ae, align 4, !tbaa !159
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %.not6.i24 = icmp eq ptr %i.ag, null
  br i1 %.not6.i24, label %unsuppress_huff_table.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 276
  store i32 0, ptr %i.ah, align 4, !tbaa !159
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
  store i32 1000, ptr %i.ak, align 8, !tbaa !70
  %i.al = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 1000) #16 ; 2 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !48
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %TIFFjpeg_tables_dest.exit.thread, label %bb.r

TIFFjpeg_tables_dest.exit.thread:                 ; preds = %bb.q
  store i32 0, ptr %i.ak, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.ao, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #16
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store ptr @tables_init_destination, ptr %i.ar, align 8, !tbaa !150
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store ptr @tables_empty_output_buffer, ptr %i.as, align 8, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store ptr @tables_term_destination, ptr %i.at, align 8, !tbaa !152
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
  store ptr %i.b, ptr %i.c, align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.f, ptr %i.g, align 8, !tbaa !190
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @tables_empty_output_buffer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70
  %i.g = add i32 %i.f, 1000
  %i.h = zext i32 %i.g to i64
  %i.i = tail call ptr @_TIFFreallocExt(ptr noundef %i.b, ptr noundef %i.d, i64 noundef %i.h) #16 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !191    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 54, ptr %i.l, align 8, !tbaa !98
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 100, ptr %i.m, align 4, !tbaa !36
  %i.n = load ptr, ptr %0, align 8, !tbaa !191
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !203
  tail call void %i.o(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load i32, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.r, ptr %i.s, align 8, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 1000, ptr %i.t, align 8, !tbaa !190
  store ptr %i.i, ptr %i.c, align 8, !tbaa !48
  %i.u = add i32 %i.p, 1000
  store i32 %i.u, ptr %i.e, align 8, !tbaa !70
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @tables_term_destination(ptr nofree noundef captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load i64, ptr %i.a, align 8, !tbaa !190
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  %i.f = sub i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 8, !tbaa !70
  ret void
}

declare ptr @_TIFFreallocExt(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @jpeg_write_tables(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_init_destination(ptr nofree noundef captures(none) initializes((1064, 1080)) %0) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.d, ptr %i.e, align 8, !tbaa !189
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.g, ptr %i.h, align 8, !tbaa !190
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @std_empty_output_buffer(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !204
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.d, ptr %i.e, align 8, !tbaa !79
  %i.f = tail call i32 @TIFFFlushData1(ptr noundef %i.b) #16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %i.h, ptr %i.i, align 8, !tbaa !189
  %i.j = load i64, ptr %i.c, align 8, !tbaa !204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store i64 %i.j, ptr %i.k, align 8, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @std_term_destination(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  store ptr %i.d, ptr %i.e, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i64, ptr %i.h, align 8, !tbaa !190
  %i.j = sub nsw i64 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  store i64 %i.j, ptr %i.k, align 8, !tbaa !79
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
  %4 = ptrtoaddr ptr %1 to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1268
  %i.d = load i32, ptr %i.c, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !163
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !147
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef %i.g, ptr noundef nonnull @.str.47) #16
  br label %.loopexit108

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1170
  %i.l = load i16, ptr %i.k, align 2, !tbaa !125
  %i.m = zext i16 %i.l to i64                     ; 3 uses
  %i.n = add nsw i64 %i.j, -1
  %i.o = add nsw i64 %i.n, %i.m
  %i.p = sdiv i64 %i.o, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 1172 ; 3 uses
  %i.r = load i16, ptr %i.q, align 4, !tbaa !126
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, %i.m
  %i.u = add nuw nsw i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !36
  %i.x = sext i32 %i.w to i64
  %i.y = mul i64 %i.p, %i.x
  %i.z = mul i64 %i.y, %i.u
  %i.aa = add nsw i64 %i.z, 7
  %i.ab = sdiv i64 %i.aa, 8                       ; 4 uses
  %i.ac = sdiv i64 %2, %i.ab
  %i.ad = mul nsw i64 %i.ac, %i.s                 ; 3 uses
  %i.ae = srem i64 %2, %i.ab
  %.not101 = icmp eq i64 %i.ae, 0
  br i1 %.not101, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %0, align 8, !tbaa !147
  tail call void (ptr, ptr, ptr, ...) @TIFFWarningExtR(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull @.str.48) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 140
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !167
  %.fr = freeze i32 %i.aj                         ; 7 uses
  %i.ak = icmp sgt i64 %i.ad, 0
  br i1 %i.ak, label %.lr.ph157, label %.loopexit108

.lr.ph157:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1184 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 1264 ; 10 uses
  %.not103111 = icmp eq i32 %.fr, 0
  %i.ao = sext i32 %i.d to i64                    ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  br i1 %.not103111, label %.lr.ph157.split.us, label %.lr.ph157.split.preheader

.lr.ph157.split.preheader:                        ; preds = %.lr.ph157
  %xtraiter249 = and i32 %.fr, 7                  ; 2 uses
  %lcmp.mod250.not = icmp eq i32 %xtraiter249, 0
  %i.ar = icmp ult i32 %.fr, 8
  br label %.lr.ph157.split

.lr.ph157.split.us:                               ; preds = %.lr.ph157, %bb.g
  %.089153.us = phi i64 [ %i.bg, %bb.g ], [ %i.ad, %.lr.ph157 ]
  %i.as = load i32, ptr %i.al, align 4, !tbaa !36
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.us158.preheader, label %._crit_edge144.split.us.us

.lr.ph.us158.preheader:                           ; preds = %.lr.ph157.split.us
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !36
  br label %.lr.ph.us158

._crit_edge144.split.us.us:                       ; preds = %._crit_edge126.us.us, %.lr.ph157.split.us
  %i.av = load i32, ptr %i.an, align 8, !tbaa !146 ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.an, align 8, !tbaa !146
  %i.ax = icmp sgt i32 %i.av, 6
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge144.split.us.us
  %i.ay = load i32, ptr %i.ap, align 8, !tbaa !36
  %i.az = shl nsw i32 %i.ay, 3                    ; 2 uses
  %i.ba = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.am, i32 noundef %i.az)
  %.not102.us = icmp eq i32 %i.ba, %i.az
  br i1 %.not102.us, label %.thread.us, label %.split.us

.thread.us:                                       ; preds = %bb.f
  store i32 0, ptr %i.an, align 8, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %.thread.us, %._crit_edge144.split.us.us
  %i.bb = load i16, ptr %i.q, align 4, !tbaa !126 ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = load i32, ptr %i.aq, align 4, !tbaa !133
  %i.be = add i32 %i.bd, %i.bc
  store i32 %i.be, ptr %i.aq, align 4, !tbaa !133
  %i.bf = zext i16 %i.bb to i64
  %i.bg = sub nsw i64 %.089153.us, %i.bf          ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph157.split.us, label %.loopexit108

.lr.ph.us158:                                     ; preds = %.lr.ph.us158.preheader, %._crit_edge126.us.us
  %indvars.iv193 = phi i64 [ 0, %.lr.ph.us158.preheader ], [ %indvars.iv.next194, %._crit_edge126.us.us ] ; 2 uses
  %.092142.us.us = phi ptr [ %i.au, %.lr.ph.us158.preheader ], [ %i.bo, %._crit_edge126.us.us ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !141 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !142
  %i.bm = shl i32 %i.bl, 3                        ; 3 uses
  %i.bn = icmp sgt i32 %i.bj, 0
  br i1 %i.bn, label %.lr.ph125.us.us, label %._crit_edge126.us.us

._crit_edge126.us.us:                             ; preds = %._crit_edge.us136.us.us.us, %._crit_edge.us129.us.us, %.lr.ph125.split.us145.us, %.lr.ph.us158
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 96
  %i.bp = load i32, ptr %i.al, align 4, !tbaa !36
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next194, %i.bq
  br i1 %i.br, label %.lr.ph.us158, label %._crit_edge144.split.us.us

.lr.ph125.us.us:                                  ; preds = %.lr.ph.us158
  %i.bs = getelementptr inbounds nuw i8, ptr %.092142.us.us, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !139
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv193 ; 2 uses
  %i.bv = icmp eq i32 %i.bt, 1
  %i.bw = icmp sgt i32 %i.bm, 0                   ; 2 uses
  br i1 %i.bv, label %.loopexit.us.us.us, label %.lr.ph125.split.us145.us

.lr.ph125.split.us145.us:                         ; preds = %.lr.ph125.us.us
  br i1 %i.bw, label %.preheader106.us.us.us.us, label %._crit_edge126.us.us

._crit_edge.us129.us.us:                          ; preds = %.lr.ph121.us.us.us, %.loopexit.us.us.us
  %i.bx = add nuw nsw i32 %.093123.us.us.us, 1    ; 2 uses
  %exitcond192.not = icmp eq i32 %i.bx, %i.bj
  br i1 %exitcond192.not, label %._crit_edge126.us.us, label %.loopexit.us.us.us

.lr.ph121.us.us.us:                               ; preds = %.lr.ph121.us.us.us, %.lr.ph121.us.us.us.preheader
  %.4120.us.us.us = phi ptr [ %i.cn, %.lr.ph121.us.us.us.preheader ], [ %i.cf, %.lr.ph121.us.us.us ] ; 9 uses
  %.195119.us.us.us = phi i32 [ 0, %.lr.ph121.us.us.us.preheader ], [ %i.cg, %.lr.ph121.us.us.us ]
  store i8 %load_initial234, ptr %.4120.us.us.us, align 1, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 1
  store i8 %load_initial234, ptr %i.by, align 1, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 2
  store i8 %load_initial234, ptr %i.bz, align 1, !tbaa !36
  %i.ca = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 3
  store i8 %load_initial234, ptr %i.ca, align 1, !tbaa !36
  %i.cb = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 4
  store i8 %load_initial234, ptr %i.cb, align 1, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 5
  store i8 %load_initial234, ptr %i.cc, align 1, !tbaa !36
  %i.cd = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 6
  store i8 %load_initial234, ptr %i.cd, align 1, !tbaa !36
  %i.ce = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 7
  store i8 %load_initial234, ptr %i.ce, align 1, !tbaa !36
  %i.cf = getelementptr inbounds nuw i8, ptr %.4120.us.us.us, i64 8
  %i.cg = add nuw nsw i32 %.195119.us.us.us, 8    ; 2 uses
  %exitcond188.not.7 = icmp eq i32 %i.cg, %i.bm
  br i1 %exitcond188.not.7, label %._crit_edge.us129.us.us, label %.lr.ph121.us.us.us

.loopexit.us.us.us:                               ; preds = %.lr.ph125.us.us, %._crit_edge.us129.us.us
  %.093123.us.us.us = phi i32 [ %i.bx, %._crit_edge.us129.us.us ], [ 0, %.lr.ph125.us.us ] ; 2 uses
  br i1 %i.bw, label %.lr.ph121.us.us.us.preheader, label %._crit_edge.us129.us.us

.lr.ph121.us.us.us.preheader:                     ; preds = %.loopexit.us.us.us
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !161
  %i.ci = load i32, ptr %i.an, align 8, !tbaa !146
  %i.cj = mul nsw i32 %i.ci, %i.bj
  %i.ck = add nsw i32 %i.cj, %.093123.us.us.us
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !148 ; 2 uses
  %scevgep233 = getelementptr i8, ptr %i.cn, i64 -1
  %load_initial234 = load i8, ptr %scevgep233, align 1 ; 8 uses
  br label %.lr.ph121.us.us.us

.preheader106.us.us.us.us:                        ; preds = %.lr.ph125.split.us145.us, %._crit_edge.us136.us.us.us
  %.093123.us131.us.us.us = phi i32 [ %i.de, %._crit_edge.us136.us.us.us ], [ 0, %.lr.ph125.split.us145.us ] ; 2 uses
  %i.co = load ptr, ptr %i.bu, align 8, !tbaa !161
  %i.cp = load i32, ptr %i.an, align 8, !tbaa !146
  %i.cq = mul nsw i32 %i.cp, %i.bj
  %i.cr = add nsw i32 %i.cq, %.093123.us131.us.us.us
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !148 ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.cu, i64 -1
  %load_initial = load i8, ptr %scevgep.a, align 1 ; 8 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader106.us.us.us.us
  %.4120.us133.us.us.us = phi ptr [ %i.cu, %.preheader106.us.us.us.us ], [ %i.dc, %bb.h ] ; 9 uses
  %.195119.us134.us.us.us = phi i32 [ 0, %.preheader106.us.us.us.us ], [ %i.dd, %bb.h ]
  store i8 %load_initial, ptr %.4120.us133.us.us.us, align 1, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 1
  store i8 %load_initial, ptr %i.cv, align 1, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 2
  store i8 %load_initial, ptr %i.cw, align 1, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 3
  store i8 %load_initial, ptr %i.cx, align 1, !tbaa !36
  %i.cy = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 4
  store i8 %load_initial, ptr %i.cy, align 1, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 5
  store i8 %load_initial, ptr %i.cz, align 1, !tbaa !36
  %i.da = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 6
  store i8 %load_initial, ptr %i.da, align 1, !tbaa !36
  %i.db = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 7
  store i8 %load_initial, ptr %i.db, align 1, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %.4120.us133.us.us.us, i64 8
  %i.dd = add nuw nsw i32 %.195119.us134.us.us.us, 8 ; 2 uses
  %exitcond186.not.7 = icmp eq i32 %i.dd, %i.bm
  br i1 %exitcond186.not.7, label %._crit_edge.us136.us.us.us, label %bb.h

._crit_edge.us136.us.us.us:                       ; preds = %bb.h
  %i.de = add nuw nsw i32 %.093123.us131.us.us.us, 1 ; 2 uses
  %exitcond187.not = icmp eq i32 %i.de, %i.bj
  br i1 %exitcond187.not, label %._crit_edge126.us.us, label %.preheader106.us.us.us.us

.lr.ph157.split:                                  ; preds = %.lr.ph157.split.preheader, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %.lr.ph157.split.preheader ] ; 2 uses
  %.081154 = phi ptr [ %i.jb, %bb.j ], [ %1, %.lr.ph157.split.preheader ] ; 3 uses
  %.089153 = phi i64 [ %i.jd, %bb.j ], [ %i.ad, %.lr.ph157.split.preheader ]
  %i.df = mul i64 %i.ab, %indvar
  %5 = add i64 %i.df, %4
  %i.dg = load i32, ptr %i.al, align 4, !tbaa !36
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader, label %._crit_edge144.split

.lr.ph.preheader:                                 ; preds = %.lr.ph157.split
  %i.di = load ptr, ptr %i.ag, align 8, !tbaa !36
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge126
  %indvars.iv183 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next184, %._crit_edge126 ] ; 2 uses
  %.092142 = phi ptr [ %i.di, %.lr.ph.preheader ], [ %i.in, %._crit_edge126 ] ; 4 uses
  %.097140 = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.lcssa, %._crit_edge126 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.092142, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !139 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.092142, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !141 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.092142, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !142
  %i.dp = shl i32 %i.do, 3                        ; 3 uses
  %i.dq = mul i32 %i.dk, %.fr                     ; 3 uses
  %i.dr = sub i32 %i.dp, %i.dq                    ; 5 uses
  %i.ds = icmp sgt i32 %i.dm, 0
  br i1 %i.ds, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv183 ; 2 uses
  %i.du = icmp eq i32 %i.dk, 1
  %i.dv = icmp sgt i32 %i.dk, 0
  %i.dw = icmp sgt i32 %i.dr, 0                   ; 2 uses
  %i.dx = sext i32 %.097140 to i64                ; 3 uses
  br i1 %i.du, label %.lr.ph.us.preheader.preheader, label %.preheader106.preheader

.lr.ph.us.preheader.preheader:                    ; preds = %.lr.ph125
  %xtraiter252 = and i32 %i.dr, 7                 ; 3 uses
  %i.dy = sub i32 %i.dq, %i.dp
  %i.dz = icmp ugt i32 %i.dy, -8
  %unroll_iter256 = and i32 %i.dr, 2147483640
  %lcmp.mod254.not = icmp eq i32 %xtraiter252, 0
  %lcmp.mod255 = icmp ne i32 %xtraiter252, 0
  br label %.lr.ph.us.preheader

.preheader106.preheader:                          ; preds = %.lr.ph125
  %i.ea = sext i32 %i.dk to i64                   ; 2 uses
  %wide.trip.count = zext i32 %i.dk to i64        ; 8 uses
  %6 = add i64 %5, %i.dx
  %min.iters.check = icmp ult i32 %i.dk, 4
  %min.iters.check222 = icmp ult i32 %i.dk, 32
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec225 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %cmp.n230 = icmp eq i64 %n.vec225, %wide.trip.count
  %xtraiter246 = and i32 %i.dr, 7                 ; 3 uses
  %i.eb = sub i32 %i.dq, %i.dp
  %i.ec = icmp ugt i32 %i.eb, -8
  %unroll_iter = and i32 %i.dr, 2147483640
  %lcmp.mod247.not = icmp eq i32 %xtraiter246, 0
  %lcmp.mod248 = icmp ne i32 %xtraiter246, 0
  br label %.preheader106

.lr.ph.us.preheader:                              ; preds = %.lr.ph.us.preheader.preheader, %._crit_edge.us129
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %._crit_edge.us129 ], [ %i.dx, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %.093123.us = phi i32 [ %i.fp, %._crit_edge.us129 ], [ 0, %.lr.ph.us.preheader.preheader ] ; 2 uses
  %i.ed = load ptr, ptr %i.dt, align 8, !tbaa !161
  %i.ee = load i32, ptr %i.an, align 8, !tbaa !146
  %i.ef = mul nsw i32 %i.ee, %i.dm
  %i.eg = add nsw i32 %i.ef, %.093123.us
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !148 ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.081154, i64 %indvars.iv179 ; 2 uses
  br i1 %lcmp.mod250.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.082118.us.prol = phi ptr [ %i.eo, %.lr.ph.us.prol ], [ %i.ek, %.lr.ph.us.preheader ] ; 2 uses
  %.084117.us.prol = phi ptr [ %i.en, %.lr.ph.us.prol ], [ %i.ej, %.lr.ph.us.preheader ] ; 3 uses
  %.090116.us.prol = phi i32 [ %i.el, %.lr.ph.us.prol ], [ %.fr, %.lr.ph.us.preheader ]
  %prol.iter251 = phi i32 [ %prol.iter251.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.el = add i32 %.090116.us.prol, -1            ; 2 uses
  %i.em = load i8, ptr %.082118.us.prol, align 1, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %.084117.us.prol, i64 1 ; 3 uses
  store i8 %i.em, ptr %.084117.us.prol, align 1, !tbaa !36
  %i.eo = getelementptr inbounds i8, ptr %.082118.us.prol, i64 %i.ao ; 2 uses
  %prol.iter251.next = add i32 %prol.iter251, 1   ; 2 uses
  %prol.iter251.cmp.not = icmp eq i32 %prol.iter251.next, %xtraiter249
  br i1 %prol.iter251.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !205

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.084117.us.lcssa.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %.084117.us.prol, %.lr.ph.us.prol ]
  %.lcssa245.unr = phi ptr [ poison, %.lr.ph.us.preheader ], [ %i.en, %.lr.ph.us.prol ]
  %.082118.us.unr = phi ptr [ %i.ek, %.lr.ph.us.preheader ], [ %i.eo, %.lr.ph.us.prol ]
  %.084117.us.unr = phi ptr [ %i.ej, %.lr.ph.us.preheader ], [ %i.en, %.lr.ph.us.prol ]
  %.090116.us.unr = phi i32 [ %.fr, %.lr.ph.us.preheader ], [ %i.el, %.lr.ph.us.prol ]
  br i1 %i.ar, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.082118.us = phi ptr [ %i.fn, %.lr.ph.us ], [ %.082118.us.unr, %.lr.ph.us.prol.loopexit ] ; 2 uses
  %.084117.us = phi ptr [ %i.fm, %.lr.ph.us ], [ %.084117.us.unr, %.lr.ph.us.prol.loopexit ] ; 10 uses
  %.090116.us = phi i32 [ %i.fk, %.lr.ph.us ], [ %.090116.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.ep = load i8, ptr %.082118.us, align 1, !tbaa !36
  %i.eq = getelementptr inbounds nuw i8, ptr %.084117.us, i64 1
  store i8 %i.ep, ptr %.084117.us, align 1, !tbaa !36
  %i.er = getelementptr inbounds i8, ptr %.082118.us, i64 %i.ao ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !36
  %i.et = getelementptr inbounds nuw i8, ptr %.084117.us, i64 2
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !36
  %i.eu = getelementptr inbounds i8, ptr %i.er, i64 %i.ao ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !36
  %i.ew = getelementptr inbounds nuw i8, ptr %.084117.us, i64 3
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !36
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ao ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !36
  %i.ez = getelementptr inbounds nuw i8, ptr %.084117.us, i64 4
  store i8 %i.ey, ptr %i.ew, align 1, !tbaa !36
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %i.ao ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %.084117.us, i64 5
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !36
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.ao ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !36
  %i.ff = getelementptr inbounds nuw i8, ptr %.084117.us, i64 6
  store i8 %i.fe, ptr %i.fc, align 1, !tbaa !36
  %i.fg = getelementptr inbounds i8, ptr %i.fd, i64 %i.ao ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %.084117.us, i64 7
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !36
  %i.fj = getelementptr inbounds i8, ptr %i.fg, i64 %i.ao ; 2 uses
  %i.fk = add i32 %.090116.us, -8                 ; 2 uses
  %i.fl = load i8, ptr %i.fj, align 1, !tbaa !36
  %i.fm = getelementptr inbounds nuw i8, ptr %.084117.us, i64 8 ; 2 uses
  store i8 %i.fl, ptr %i.fi, align 1, !tbaa !36
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.ao
  %.not104.us.7 = icmp eq i32 %i.fk, 0
  br i1 %.not104.us.7, label %.loopexit.us.unr-lcssa, label %.lr.ph.us

._crit_edge.us129.loopexit.unr-lcssa:             ; preds = %.lr.ph121.us
  br i1 %lcmp.mod254.not, label %._crit_edge.us129, label %.lr.ph121.us.epil.preheader

.lr.ph121.us.epil.preheader:                      ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.preheader
  %.4120.us.epil.init = phi ptr [ %.lcssa245, %.lr.ph121.us.preheader ], [ %i.fx, %._crit_edge.us129.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod255)
  br label %.lr.ph121.us.epil

.lr.ph121.us.epil:                                ; preds = %.lr.ph121.us.epil, %.lr.ph121.us.epil.preheader
  %.4120.us.epil = phi ptr [ %i.fo, %.lr.ph121.us.epil ], [ %.4120.us.epil.init, %.lr.ph121.us.epil.preheader ] ; 2 uses
  %epil.iter253 = phi i32 [ %epil.iter253.next, %.lr.ph121.us.epil ], [ 0, %.lr.ph121.us.epil.preheader ]
  store i8 %load_initial239, ptr %.4120.us.epil, align 1, !tbaa !36
  %i.fo = getelementptr inbounds nuw i8, ptr %.4120.us.epil, i64 1
  %epil.iter253.next = add i32 %epil.iter253, 1   ; 2 uses
  %epil.iter253.cmp.not = icmp eq i32 %epil.iter253.next, %xtraiter252
  br i1 %epil.iter253.cmp.not, label %._crit_edge.us129, label %.lr.ph121.us.epil, !llvm.loop !206

._crit_edge.us129:                                ; preds = %._crit_edge.us129.loopexit.unr-lcssa, %.lr.ph121.us.epil, %.loopexit.us
  %indvars.iv.next180 = add nsw i64 %indvars.iv179, 1 ; 2 uses
  %i.fp = add nuw nsw i32 %.093123.us, 1          ; 2 uses
  %exitcond182.not = icmp eq i32 %i.fp, %i.dm
  br i1 %exitcond182.not, label %._crit_edge126.loopexit, label %.lr.ph.us.preheader

.lr.ph121.us:                                     ; preds = %.lr.ph121.us.preheader, %.lr.ph121.us
  %.4120.us = phi ptr [ %i.fx, %.lr.ph121.us ], [ %.lcssa245, %.lr.ph121.us.preheader ] ; 9 uses
  %niter257 = phi i32 [ %niter257.next.7, %.lr.ph121.us ], [ 0, %.lr.ph121.us.preheader ]
  store i8 %load_initial239, ptr %.4120.us, align 1, !tbaa !36
  %i.fq = getelementptr inbounds nuw i8, ptr %.4120.us, i64 1
  store i8 %load_initial239, ptr %i.fq, align 1, !tbaa !36
  %i.fr = getelementptr inbounds nuw i8, ptr %.4120.us, i64 2
  store i8 %load_initial239, ptr %i.fr, align 1, !tbaa !36
  %i.fs = getelementptr inbounds nuw i8, ptr %.4120.us, i64 3
  store i8 %load_initial239, ptr %i.fs, align 1, !tbaa !36
  %i.ft = getelementptr inbounds nuw i8, ptr %.4120.us, i64 4
  store i8 %load_initial239, ptr %i.ft, align 1, !tbaa !36
  %i.fu = getelementptr inbounds nuw i8, ptr %.4120.us, i64 5
  store i8 %load_initial239, ptr %i.fu, align 1, !tbaa !36
  %i.fv = getelementptr inbounds nuw i8, ptr %.4120.us, i64 6
  store i8 %load_initial239, ptr %i.fv, align 1, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %.4120.us, i64 7
  store i8 %load_initial239, ptr %i.fw, align 1, !tbaa !36
  %i.fx = getelementptr inbounds nuw i8, ptr %.4120.us, i64 8 ; 2 uses
  %niter257.next.7 = add i32 %niter257, 8         ; 2 uses
  %niter257.ncmp.7 = icmp eq i32 %niter257.next.7, %unroll_iter256
  br i1 %niter257.ncmp.7, label %._crit_edge.us129.loopexit.unr-lcssa, label %.lr.ph121.us

.loopexit.us.unr-lcssa:                           ; preds = %.lr.ph.us
  %i.fy = getelementptr inbounds nuw i8, ptr %.084117.us, i64 7
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.loopexit.us.unr-lcssa
  %.084117.us.lcssa = phi ptr [ %.084117.us.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.fy, %.loopexit.us.unr-lcssa ]
  %.lcssa245 = phi ptr [ %.lcssa245.unr, %.lr.ph.us.prol.loopexit ], [ %i.fm, %.loopexit.us.unr-lcssa ] ; 2 uses
  br i1 %i.dw, label %.lr.ph121.us.preheader, label %._crit_edge.us129

.lr.ph121.us.preheader:                           ; preds = %.loopexit.us
  %load_initial239 = load i8, ptr %.084117.us.lcssa, align 1 ; 9 uses
  br i1 %i.dz, label %.lr.ph121.us.epil.preheader, label %.lr.ph121.us

.preheader106:                                    ; preds = %.preheader106.preheader, %._crit_edge
  %indvar218 = phi i64 [ 0, %.preheader106.preheader ], [ %indvar.next219, %._crit_edge ] ; 2 uses
  %indvars.iv174 = phi i64 [ %i.dx, %.preheader106.preheader ], [ %indvars.iv.next175, %._crit_edge ] ; 2 uses
  %.093123 = phi i32 [ 0, %.preheader106.preheader ], [ %i.ik, %._crit_edge ] ; 2 uses
  %i.fz = mul i64 %indvar218, %i.ea
  %7 = add i64 %6, %i.fz
  %i.ga = load ptr, ptr %i.dt, align 8, !tbaa !161
  %i.gb = load i32, ptr %i.an, align 8, !tbaa !146
  %i.gc = mul nsw i32 %i.gb, %i.dm
  %i.gd = add nsw i32 %i.gc, %.093123
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !148 ; 2 uses
  br i1 %i.dv, label %.preheader.us.preheader, label %..loopexit107_crit_edge

.preheader.us.preheader:                          ; preds = %.preheader106
  %8 = getelementptr inbounds i8, ptr %.081154, i64 %indvars.iv174
  br label %iter.check.a

iter.check.a:                                     ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar220 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next221, %._crit_edge.us ] ; 2 uses
  %.in = phi i32 [ %.fr, %.preheader.us.preheader ], [ %9, %._crit_edge.us ]
  %.183113.us = phi ptr [ %8, %.preheader.us.preheader ], [ %i.ia, %._crit_edge.us ] ; 12 uses
  %.185112.us = phi ptr [ %i.gg, %.preheader.us.preheader ], [ %.lcssa, %._crit_edge.us ] ; 7 uses
  %9 = add i32 %.in, -1                           ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check.a
  %10 = mul i64 %indvar220, %i.ao
  %11 = add i64 %7, %10
  %.185112.us217 = ptrtoaddr ptr %.185112.us to i64
  %12 = sub i64 %11, %.185112.us217
  %diff.check = icmp ugt i64 %12, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check222, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gh = getelementptr i8, ptr %.185112.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.185112.us, i64 %index ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load = load <16 x i8>, ptr %i.gi, align 1, !tbaa !36
  %wide.load223 = load <16 x i8>, ptr %i.gj, align 1, !tbaa !36
  %i.gk = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !36
  store <16 x i8> %wide.load223, ptr %i.gk, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !179

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.gm = getelementptr i8, ptr %.185112.us, i64 %n.vec225 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index226 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 3 uses
  %next.gep227 = getelementptr i8, ptr %.185112.us, i64 %index226
  %i.gn = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %index226
  %wide.load228 = load <4 x i8>, ptr %i.gn, align 1, !tbaa !36
  store <4 x i8> %wide.load228, ptr %next.gep227, align 1, !tbaa !36
  %index.next229 = add nuw i64 %index226, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next229, %n.vec225
  br i1 %i.go, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n230, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check.a, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec225, %vec.epilog.middle.block ] ; 4 uses
  %.286110.us.ph = phi ptr [ %.185112.us, %iter.check.a ], [ %.185112.us, %vector.memcheck ], [ %i.gh, %vec.epilog.iter.check ], [ %i.gm, %vec.epilog.middle.block ] ; 2 uses
  %i.gp = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.gp, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.286110.us.prol = phi ptr [ %i.gs, %vec.epilog.scalar.ph.prol ], [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv.prol
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !36
  %i.gs = getelementptr inbounds nuw i8, ptr %.286110.us.prol, i64 1 ; 3 uses
  store i8 %i.gr, ptr %.286110.us.prol, align 1, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !209

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa244.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.gs, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.286110.us.unr = phi ptr [ %.286110.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gs, %vec.epilog.scalar.ph.prol ]
  %i.gt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gu = icmp ugt i64 %i.gt, -8
  br i1 %i.gu, label %._crit_edge.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.286110.us = phi ptr [ %i.hz, %vec.epilog.scalar.ph ], [ %.286110.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !36
  %i.gx = getelementptr inbounds nuw i8, ptr %.286110.us, i64 1
  store i8 %i.gw, ptr %.286110.us, align 1, !tbaa !36
  %i.gy = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !36
  %i.hb = getelementptr inbounds nuw i8, ptr %.286110.us, i64 2
  store i8 %i.ha, ptr %i.gx, align 1, !tbaa !36
  %i.hc = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !36
  %i.hf = getelementptr inbounds nuw i8, ptr %.286110.us, i64 3
  store i8 %i.he, ptr %i.hb, align 1, !tbaa !36
  %i.hg = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !36
  %i.hj = getelementptr inbounds nuw i8, ptr %.286110.us, i64 4
  store i8 %i.hi, ptr %i.hf, align 1, !tbaa !36
  %i.hk = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !36
  %i.hn = getelementptr inbounds nuw i8, ptr %.286110.us, i64 5
  store i8 %i.hm, ptr %i.hj, align 1, !tbaa !36
  %i.ho = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 5
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !36
  %i.hr = getelementptr inbounds nuw i8, ptr %.286110.us, i64 6
  store i8 %i.hq, ptr %i.hn, align 1, !tbaa !36
  %i.hs = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 6
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !36
  %i.hv = getelementptr inbounds nuw i8, ptr %.286110.us, i64 7
  store i8 %i.hu, ptr %i.hr, align 1, !tbaa !36
  %i.hw = getelementptr inbounds nuw i8, ptr %.183113.us, i64 %indvars.iv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 7
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !36
  %i.hz = getelementptr inbounds nuw i8, ptr %.286110.us, i64 8 ; 2 uses
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !36
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !210

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.gm, %vec.epilog.middle.block ], [ %i.gh, %middle.block ], [ %.lcssa244.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.hz, %vec.epilog.scalar.ph ] ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.183113.us, i64 %i.ao
  %.not103.us = icmp eq i32 %9, 0
  %indvar.next221 = add i64 %indvar220, 1
  br i1 %.not103.us, label %..loopexit107_crit_edge, label %iter.check.a

..loopexit107_crit_edge:                          ; preds = %._crit_edge.us, %.preheader106
  %.us-phi = phi ptr [ %i.gg, %.preheader106 ], [ %.lcssa, %._crit_edge.us ] ; 3 uses
  br i1 %i.dw, label %.lr.ph121.preheader, label %._crit_edge

.lr.ph121.preheader:                              ; preds = %..loopexit107_crit_edge
  %scevgep236 = getelementptr i8, ptr %.us-phi, i64 -1
  %load_initial237 = load i8, ptr %scevgep236, align 1 ; 9 uses
  br i1 %i.ec, label %.lr.ph121.epil.preheader, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %.lr.ph121
  %.4120 = phi ptr [ %i.ii, %.lr.ph121 ], [ %.us-phi, %.lr.ph121.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.lr.ph121 ], [ 0, %.lr.ph121.preheader ]
  store i8 %load_initial237, ptr %.4120, align 1, !tbaa !36
  %i.ib = getelementptr inbounds nuw i8, ptr %.4120, i64 1
  store i8 %load_initial237, ptr %i.ib, align 1, !tbaa !36
  %i.ic = getelementptr inbounds nuw i8, ptr %.4120, i64 2
  store i8 %load_initial237, ptr %i.ic, align 1, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %.4120, i64 3
  store i8 %load_initial237, ptr %i.id, align 1, !tbaa !36
  %i.ie = getelementptr inbounds nuw i8, ptr %.4120, i64 4
  store i8 %load_initial237, ptr %i.ie, align 1, !tbaa !36
  %i.if = getelementptr inbounds nuw i8, ptr %.4120, i64 5
  store i8 %load_initial237, ptr %i.if, align 1, !tbaa !36
  %i.ig = getelementptr inbounds nuw i8, ptr %.4120, i64 6
  store i8 %load_initial237, ptr %i.ig, align 1, !tbaa !36
  %i.ih = getelementptr inbounds nuw i8, ptr %.4120, i64 7
  store i8 %load_initial237, ptr %i.ih, align 1, !tbaa !36
  %i.ii = getelementptr inbounds nuw i8, ptr %.4120, i64 8 ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph121

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph121
  br i1 %lcmp.mod247.not, label %._crit_edge, label %.lr.ph121.epil.preheader

.lr.ph121.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.preheader
  %.4120.epil.init = phi ptr [ %.us-phi, %.lr.ph121.preheader ], [ %i.ii, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod248)
  br label %.lr.ph121.epil

.lr.ph121.epil:                                   ; preds = %.lr.ph121.epil, %.lr.ph121.epil.preheader
  %.4120.epil = phi ptr [ %i.ij, %.lr.ph121.epil ], [ %.4120.epil.init, %.lr.ph121.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph121.epil ], [ 0, %.lr.ph121.epil.preheader ]
  store i8 %load_initial237, ptr %.4120.epil, align 1, !tbaa !36
  %i.ij = getelementptr inbounds nuw i8, ptr %.4120.epil, i64 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter246
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph121.epil, !llvm.loop !211

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph121.epil, %..loopexit107_crit_edge
  %indvars.iv.next175 = add nsw i64 %indvars.iv174, %i.ea ; 2 uses
  %i.ik = add nuw nsw i32 %.093123, 1             ; 2 uses
  %exitcond177.not = icmp eq i32 %i.ik, %i.dm
  %indvar.next219 = add i64 %indvar218, 1
  br i1 %exitcond177.not, label %._crit_edge126.loopexit162, label %.preheader106

._crit_edge126.loopexit:                          ; preds = %._crit_edge.us129
  %i.il = trunc nsw i64 %indvars.iv.next180 to i32
  br label %._crit_edge126

._crit_edge126.loopexit162:                       ; preds = %._crit_edge
  %i.im = trunc nsw i64 %indvars.iv.next175 to i32
  br label %._crit_edge126

._crit_edge126:                                   ; preds = %._crit_edge126.loopexit162, %._crit_edge126.loopexit, %.lr.ph
  %.198.lcssa = phi i32 [ %.097140, %.lr.ph ], [ %i.il, %._crit_edge126.loopexit ], [ %i.im, %._crit_edge126.loopexit162 ]
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.092142, i64 96
  %i.io = load i32, ptr %i.al, align 4, !tbaa !36
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %indvars.iv.next184, %i.ip
  br i1 %i.iq, label %.lr.ph, label %._crit_edge144.split

._crit_edge144.split:                             ; preds = %._crit_edge126, %.lr.ph157.split
  %i.ir = load i32, ptr %i.an, align 8, !tbaa !146 ; 2 uses
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.an, align 8, !tbaa !146
  %i.it = icmp sgt i32 %i.ir, 6
  br i1 %i.it, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge144.split
  %i.iu = load i32, ptr %i.ap, align 8, !tbaa !36
  %i.iv = shl nsw i32 %i.iu, 3                    ; 2 uses
  %i.iw = tail call fastcc i32 @TIFFjpeg_write_raw_data(ptr noundef nonnull %i.b, ptr noundef nonnull %i.am, i32 noundef %i.iv)
  %.not102 = icmp eq i32 %i.iw, %i.iv
  br i1 %.not102, label %.thread, label %.split.us

.thread:                                          ; preds = %bb.i
  store i32 0, ptr %i.an, align 8, !tbaa !146
  br label %bb.j

.split.us:                                        ; preds = %bb.i, %bb.f
  store i32 1, ptr %i.e, align 8, !tbaa !163
  br label %.loopexit108

bb.j:                                             ; preds = %.thread, %._crit_edge144.split
  %i.ix = load i16, ptr %i.q, align 4, !tbaa !126 ; 2 uses
  %i.iy = zext i16 %i.ix to i32
  %i.iz = load i32, ptr %i.aq, align 4, !tbaa !133
  %i.ja = add i32 %i.iz, %i.iy
  store i32 %i.ja, ptr %i.aq, align 4, !tbaa !133
  %i.jb = getelementptr inbounds i8, ptr %.081154, i64 %i.ab
  %i.jc = zext i16 %i.ix to i64
  %i.jd = sub nsw i64 %.089153, %i.jc             ; 2 uses
  %i.je = icmp sgt i64 %i.jd, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.je, label %.lr.ph157.split, label %.loopexit108

.loopexit108:                                     ; preds = %bb.j, %bb.g, %bb.e, %.split.us, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %.split.us ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.j ]
  ret i32 %.3
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !14, i64 116}
!8 = !{!"tiff", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !4, i64 64, !13, i64 72, !13, i64 448, !5, i64 824, !14, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !14, i64 888, !11, i64 896, !4, i64 904, !4, i64 908, !11, i64 912, !4, i64 920, !10, i64 928, !10, i64 936, !10, i64 944, !10, i64 952, !4, i64 960, !10, i64 968, !10, i64 976, !10, i64 984, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !9, i64 1072, !11, i64 1080, !11, i64 1088, !9, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !9, i64 1128, !11, i64 1136, !9, i64 1144, !11, i64 1152, !10, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !10, i64 1224, !21, i64 1232, !11, i64 1240, !23, i64 1248, !24, i64 1256, !25, i64 1280, !26, i64 1288, !11, i64 1296, !10, i64 1304, !10, i64 1312, !10, i64 1320, !10, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !4, i64 1360}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"p1 _ZTS12_TIFFHashSet", !10, i64 0}
!13 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !14, i64 44, !14, i64 46, !14, i64 48, !14, i64 50, !14, i64 52, !14, i64 54, !14, i64 56, !14, i64 58, !4, i64 60, !14, i64 64, !14, i64 66, !15, i64 72, !15, i64 80, !16, i64 88, !16, i64 92, !14, i64 96, !14, i64 98, !16, i64 100, !16, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !14, i64 140, !17, i64 144, !4, i64 152, !4, i64 156, !18, i64 160, !18, i64 168, !4, i64 176, !19, i64 184, !19, i64 216, !14, i64 248, !18, i64 256, !5, i64 264, !14, i64 268, !5, i64 272, !20, i64 296, !4, i64 304, !9, i64 312, !14, i64 320, !4, i64 324, !10, i64 328, !5, i64 336, !5, i64 337, !11, i64 344, !11, i64 352, !4, i64 360, !10, i64 368}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 double", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !10, i64 0}
!18 = !{!"p1 long", !10, i64 0}
!19 = !{!"", !14, i64 0, !14, i64 2, !11, i64 8, !5, i64 16, !5, i64 24}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!"p2 _ZTS10_TIFFField", !22, i64 0}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p1 _ZTS10_TIFFField", !10, i64 0}
!24 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!25 = !{!"p1 _ZTS11client_info", !10, i64 0}
!26 = !{!"p1 _ZTS15_TIFFFieldArray", !10, i64 0}
!27 = !{!28, !34, i64 1160}
!28 = !{!"", !5, i64 0, !4, i64 656, !29, i64 664, !5, i64 832, !31, i64 1032, !32, i64 1064, !33, i64 1104, !34, i64 1160, !14, i64 1168, !14, i64 1170, !14, i64 1172, !11, i64 1176, !5, i64 1184, !4, i64 1264, !4, i64 1268, !35, i64 1272, !4, i64 1352}
!29 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40, !5, i64 44, !4, i64 124, !11, i64 128, !30, i64 136, !4, i64 144, !30, i64 152, !4, i64 160, !4, i64 164}
!30 = !{!"p2 omnipotent char", !22, i64 0}
!31 = !{!"jpeg_progress_mgr", !10, i64 0, !11, i64 8, !11, i64 16, !4, i64 24, !4, i64 28}
!32 = !{!"jpeg_destination_mgr", !9, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!33 = !{!"jpeg_source_mgr", !9, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!34 = !{!"p1 _ZTS4tiff", !10, i64 0}
!35 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72}
!36 = !{!5, !5, i64 0}
!37 = !{!28, !10, i64 1120}
!38 = !{!28, !10, i64 1128}
!39 = !{!28, !10, i64 1136}
!40 = !{!28, !10, i64 1144}
!41 = !{!28, !10, i64 1152}
!42 = !{!28, !10, i64 664}
!43 = !{!28, !10, i64 680}
!44 = !{!8, !9, i64 1072}
!45 = !{!10, !10, i64 0}
!46 = !{!8, !10, i64 1272}
!47 = !{!28, !10, i64 1288}
!48 = !{!28, !10, i64 1312}
!49 = !{!28, !4, i64 1336}
!50 = !{!8, !10, i64 1264}
!51 = !{!8, !10, i64 1256}
!52 = !{!8, !10, i64 928}
!53 = !{!8, !10, i64 936}
!54 = !{!8, !10, i64 944}
!55 = !{!8, !10, i64 984}
!56 = !{!8, !10, i64 1000}
!57 = !{!8, !10, i64 1016}
!58 = !{!8, !10, i64 952}
!59 = !{!8, !10, i64 968}
!60 = !{!8, !10, i64 976}
!61 = !{!8, !10, i64 992}
!62 = !{!8, !10, i64 1008}
!63 = !{!8, !10, i64 1024}
!64 = !{!8, !10, i64 1048}
!65 = !{!8, !10, i64 1056}
!66 = !{!8, !10, i64 1064}
!67 = !{!8, !4, i64 16}
!68 = !{!28, !4, i64 656}
!69 = !{!8, !11, i64 24}
!70 = !{!28, !4, i64 1320}
!71 = !{!72, !73, i64 0}
!72 = !{!"jpeg_common_struct", !73, i64 0, !74, i64 8, !75, i64 16, !10, i64 24, !4, i64 32, !4, i64 36}
!73 = !{!"p1 _ZTS14jpeg_error_mgr", !10, i64 0}
!74 = !{!"p1 _ZTS15jpeg_memory_mgr", !10, i64 0}
!75 = !{!"p1 _ZTS17jpeg_progress_mgr", !10, i64 0}
!76 = !{!29, !10, i64 24}
!77 = !{!8, !9, i64 1096}
!78 = !{!28, !9, i64 1104}
!79 = !{!8, !11, i64 1136}
!80 = !{!28, !11, i64 1112}
!81 = !{!82, !73, i64 0}
!82 = !{!"jpeg_decompress_struct", !73, i64 0, !74, i64 8, !75, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !83, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !84, i64 80, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156, !30, i64 160, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !85, i64 192, !5, i64 200, !5, i64 232, !5, i64 264, !4, i64 296, !10, i64 304, !4, i64 312, !4, i64 316, !4, i64 320, !5, i64 324, !5, i64 340, !5, i64 356, !4, i64 372, !4, i64 376, !5, i64 380, !5, i64 381, !5, i64 382, !14, i64 384, !14, i64 386, !4, i64 388, !5, i64 392, !4, i64 396, !86, i64 400, !4, i64 408, !4, i64 412, !4, i64 416, !4, i64 420, !4, i64 424, !9, i64 432, !4, i64 440, !5, i64 448, !4, i64 480, !4, i64 484, !4, i64 488, !5, i64 492, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !85, i64 552, !4, i64 560, !4, i64 564, !87, i64 568, !88, i64 576, !89, i64 584, !90, i64 592, !91, i64 600, !92, i64 608, !93, i64 616, !94, i64 624, !95, i64 632, !96, i64 640, !97, i64 648}
!83 = !{!"p1 _ZTS15jpeg_source_mgr", !10, i64 0}
!84 = !{!"double", !5, i64 0}
!85 = !{!"p1 int", !10, i64 0}
!86 = !{!"p1 _ZTS18jpeg_marker_struct", !10, i64 0}
!87 = !{!"p1 _ZTS18jpeg_decomp_master", !10, i64 0}
!88 = !{!"p1 _ZTS22jpeg_d_main_controller", !10, i64 0}
!89 = !{!"p1 _ZTS22jpeg_d_coef_controller", !10, i64 0}
!90 = !{!"p1 _ZTS22jpeg_d_post_controller", !10, i64 0}
!91 = !{!"p1 _ZTS21jpeg_input_controller", !10, i64 0}
!92 = !{!"p1 _ZTS18jpeg_marker_reader", !10, i64 0}
!93 = !{!"p1 _ZTS20jpeg_entropy_decoder", !10, i64 0}
!94 = !{!"p1 _ZTS16jpeg_inverse_dct", !10, i64 0}
!95 = !{!"p1 _ZTS14jpeg_upsampler", !10, i64 0}
!96 = !{!"p1 _ZTS22jpeg_color_deconverter", !10, i64 0}
!97 = !{!"p1 _ZTS20jpeg_color_quantizer", !10, i64 0}
!98 = !{!29, !4, i64 40}
!99 = !{!29, !10, i64 8}
!100 = !{ptr @std_fill_input_buffer}
!101 = !{!85, !85, i64 0}
!102 = !{!22, !22, i64 0}
!103 = !{!28, !4, i64 1324}
!104 = !{!28, !4, i64 1328}
!105 = !{!28, !4, i64 1332}
!106 = !{!28, !10, i64 1272}
!107 = !{!13, !14, i64 98}
!108 = !{!13, !14, i64 50}
!109 = !{!8, !11, i64 912}
!110 = !{!8, !11, i64 1080}
!111 = !{!28, !10, i64 1280}
!112 = !{!113, !14, i64 20}
!113 = !{!"_TIFFField", !4, i64 0, !14, i64 4, !14, i64 6, !4, i64 8, !4, i64 12, !4, i64 16, !14, i64 20, !5, i64 22, !5, i64 23, !9, i64 24, !26, i64 32}
!114 = !{!8, !14, i64 122}
!115 = !{!8, !14, i64 170}
!116 = !{!8, !14, i64 130}
!117 = !{!8, !10, i64 1200}
!118 = !{!8, !10, i64 1176}
!119 = distinct !{null, null, null}
!120 = !{!8, !10, i64 1184}
!121 = distinct !{null, null, null}
!122 = !{!14, !14, i64 0}
!123 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 8, !45, i64 32, i64 8, !45, i64 40, i64 8, !45, i64 48, i64 4, !3, i64 52, i64 4, !3, i64 56, i64 4, !3, i64 60, i64 4, !3, i64 64, i64 4, !3, i64 68, i64 4, !3, i64 72, i64 4, !3}
!124 = !{!28, !14, i64 1168}
!125 = !{!28, !14, i64 1170}
!126 = !{!28, !14, i64 1172}
!127 = !{!8, !10, i64 1224}
!128 = !{!8, !9, i64 1128}
!129 = !{!13, !4, i64 28}
!130 = !{!13, !4, i64 32}
!131 = !{!13, !4, i64 16}
!132 = !{!13, !4, i64 20}
!133 = !{!8, !4, i64 844}
!134 = !{!13, !4, i64 60}
!135 = !{!28, !11, i64 1176}
!136 = !{!13, !14, i64 58}
!137 = !{!13, !14, i64 44}
!138 = !{!28, !4, i64 1344}
!139 = !{!140, !4, i64 8}
!140 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !10, i64 80, !10, i64 88}
!141 = !{!140, !4, i64 12}
!142 = !{!140, !4, i64 28}
!143 = !{!140, !4, i64 32}
!144 = !{!145, !11, i64 88}
!145 = !{!"jpeg_memory_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 96}
!146 = !{!28, !4, i64 1264}
!147 = !{!8, !9, i64 0}
!148 = !{!9, !9, i64 0}
!149 = !{!16, !16, i64 0}
!150 = !{!28, !10, i64 1080}
!151 = !{!28, !10, i64 1088}
!152 = !{!28, !10, i64 1096}
!153 = !{!140, !4, i64 0}
!154 = !{!140, !4, i64 16}
!155 = !{!140, !4, i64 20}
!156 = !{!140, !4, i64 24}
!157 = !{!158, !4, i64 128}
!158 = !{!"", !5, i64 0, !4, i64 128}
!159 = !{!160, !4, i64 276}
!160 = !{!"", !5, i64 0, !5, i64 17, !4, i64 276}
!161 = !{!30, !30, i64 0}
!162 = !{!28, !4, i64 1268}
!163 = !{!28, !4, i64 1352}
!164 = !{!8, !4, i64 92}
!165 = !{!28, !10, i64 1296}
!166 = !{!28, !10, i64 1304}
!167 = !{!140, !4, i64 44}
!168 = distinct !{!168, !169, !170}
!169 = !{!"llvm.loop.isvectorized", i32 1}
!170 = !{!"llvm.loop.unroll.runtime.disable"}
!171 = distinct !{!171, !169, !170}
!172 = distinct !{!172, !170, !169}
!173 = distinct !{!173, !170, !169}
!174 = distinct !{!174, !175}
!175 = !{!"llvm.loop.unroll.disable"}
!176 = distinct !{!176, !169, !170}
!177 = distinct !{!177, !169}
!178 = distinct !{!178, !169, !170}
!179 = !{!"branch_weights", i32 4, i32 28}
!180 = distinct !{!180, !169, !170}
!181 = distinct !{!181, !175}
!182 = distinct !{!182, !170, !169}
!183 = !{!28, !10, i64 1032}
!184 = !{!28, !4, i64 1340}
!185 = distinct !{null}
!186 = !{!72, !4, i64 32}
!187 = !{!82, !4, i64 172}
!188 = !{!145, !10, i64 16}
!189 = !{!28, !9, i64 1064}
!190 = !{!28, !11, i64 1072}
!191 = !{!192, !73, i64 0}
!192 = !{!"jpeg_compress_struct", !73, i64 0, !74, i64 8, !75, i64 16, !10, i64 24, !4, i64 32, !4, i64 36, !193, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !84, i64 64, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !10, i64 104, !5, i64 112, !5, i64 144, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 240, !5, i64 256, !4, i64 272, !10, i64 280, !4, i64 288, !4, i64 292, !4, i64 296, !4, i64 300, !4, i64 304, !4, i64 308, !4, i64 312, !4, i64 316, !4, i64 320, !4, i64 324, !5, i64 328, !5, i64 329, !5, i64 330, !14, i64 332, !14, i64 334, !4, i64 336, !4, i64 340, !4, i64 344, !4, i64 348, !4, i64 352, !4, i64 356, !4, i64 360, !4, i64 364, !4, i64 368, !5, i64 376, !4, i64 408, !4, i64 412, !4, i64 416, !5, i64 420, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !85, i64 480, !4, i64 488, !194, i64 496, !195, i64 504, !196, i64 512, !197, i64 520, !198, i64 528, !199, i64 536, !200, i64 544, !201, i64 552, !202, i64 560, !10, i64 568, !4, i64 576}
!193 = !{!"p1 _ZTS20jpeg_destination_mgr", !10, i64 0}
!194 = !{!"p1 _ZTS16jpeg_comp_master", !10, i64 0}
!195 = !{!"p1 _ZTS22jpeg_c_main_controller", !10, i64 0}
!196 = !{!"p1 _ZTS22jpeg_c_prep_controller", !10, i64 0}
!197 = !{!"p1 _ZTS22jpeg_c_coef_controller", !10, i64 0}
!198 = !{!"p1 _ZTS18jpeg_marker_writer", !10, i64 0}
!199 = !{!"p1 _ZTS20jpeg_color_converter", !10, i64 0}
!200 = !{!"p1 _ZTS16jpeg_downsampler", !10, i64 0}
!201 = !{!"p1 _ZTS16jpeg_forward_dct", !10, i64 0}
!202 = !{!"p1 _ZTS20jpeg_entropy_encoder", !10, i64 0}
!203 = !{!29, !10, i64 0}
!204 = !{!8, !11, i64 1104}
!205 = distinct !{!205, !175}
!206 = distinct !{!206, !175}
!207 = distinct !{!207, !169, !170}
!208 = distinct !{!208, !169, !170}
!209 = distinct !{!209, !175}
!210 = distinct !{!210, !169}
!211 = distinct !{!211, !175}
end_hunk_0

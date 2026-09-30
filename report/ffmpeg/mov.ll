Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mov?download=true
inline.NumInlined: 191
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@mov_read_dac3:bb.a
  %i.aa = and i32 %i.z, 8
  %i.ab = zext i16 %i.y to i32
  %spec.select27 = or i32 %i.aa, %i.ab
  %spec.select = zext nneg i32 %spec.select27 to i64
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.ad) #16
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ag = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.af, i64 noundef %spec.select) #16 ; 0 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !95
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 132
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !101
  %i.ak = icmp sgt i32 %i.aj, 1
  %i.al = icmp eq i32 %i.t, 7
  %or.cond = and i1 %i.al, %i.ak
  %spec.store.select = select i1 %or.cond, i32 8, i32 %i.t
  store i32 %spec.store.select, ptr %i.q, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.023 = phi i32 [ 0, %bb.a ], [ -12, %bb.b ], [ 0, %bb.c ]
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @mov_read_dec3(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = tail call ptr @av_packet_side_data_new(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 7, i64 noundef 4, i32 noundef 0) #16 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !181  ; 2 uses
  %i.r = tail call i32 @avio_rb16(ptr noundef %1) #16 ; 0 uses
  %i.s = tail call i32 @avio_rb24(ptr noundef %1) #16 ; 3 uses
  %i.t = lshr i32 %i.s, 12
  %i.u = and i32 %i.t, 31                         ; 3 uses
  %i.v = lshr i32 %i.s, 9
  %i.w = and i32 %i.v, 7
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_channel_layout_tab, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !191
  %i.aa = lshr i32 %i.s, 5
  %i.ab = and i32 %i.aa, 8
  %i.ac = zext i16 %i.z to i32
  %spec.select28 = or i32 %i.ab, %i.ac
  %spec.select = zext nneg i32 %spec.select28 to i64
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.ae) #16
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = tail call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.ag, i64 noundef %spec.select) #16 ; 0 uses
  store i32 %i.u, ptr %i.q, align 4, !tbaa !95
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 132
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !101
  %i.al = icmp sgt i32 %i.ak, 1
  %i.am = icmp eq i32 %i.u, 7
  %or.cond = and i1 %i.am, %i.al
  %spec.store.select = select i1 %or.cond, i32 8, i32 %i.u
  store i32 %spec.store.select, ptr %i.q, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.024 = phi i32 [ 0, %bb.a ], [ -12, %bb.b ], [ 0, %bb.c ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_ddts(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 20) #16 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = add i32 %i.g, -1
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = load i32, ptr %i.a, align 16, !tbaa !94
  %i.p = and i32 %i.o, 65535
  %i.q = call i32 @llvm.bswap.i32(i32 %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load i32, ptr %i.r, align 2, !tbaa !94
  %i.t = call i32 @llvm.bswap.i32(i32 %i.s)
  %i.u = lshr i32 %i.t, 16
  %i.v = or disjoint i32 %i.u, %i.q               ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store i32 %i.v, ptr %i.y, align 8, !tbaa !102
  %i.z = icmp slt i32 %i.v, 1
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %i.v) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !94
  %i.ac = and i32 %i.ab, 65535
  %i.ad = call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.af = load i32, ptr %i.ae, align 2, !tbaa !94
  %i.ag = call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = or disjoint i32 %i.ah, %i.ad
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !238
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !94
  %i.an = and i32 %i.am, 255
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !94
  %i.ar = lshr i32 %i.aq, 6
  %i.as = and i32 %i.ar, 3                        ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.au = load i32, ptr %i.at, align 1, !tbaa !94
  %i.av = call i32 @llvm.bswap.i32(i32 %i.au)     ; 3 uses
  %i.aw = lshr i32 %i.av, 16                      ; 3 uses
  switch i32 %i.as, label %bb.f [
    i32 0, label %bb.g
    i32 1, label %.fold.split
  ]

bb.f:                                             ; preds = %bb.e
  %i.ax = icmp eq i32 %i.as, 2
  %i.ay = icmp eq i32 %i.as, 3
  %i.az = select i1 %i.ay, i32 4096, i32 0
  %i.ba = select i1 %i.ax, i32 2048, i32 %i.az
  br label %bb.g

.fold.split:                                      ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.fold.split, %bb.f
  %i.bb = phi i32 [ 512, %bb.e ], [ %i.ba, %bb.f ], [ 1024, %.fold.split ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !415
  %i.bd = icmp ugt i32 %i.av, 16777215
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.e, i32 noundef 24, ptr noundef nonnull @.str.223) #16
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.be = phi ptr [ %.pre, %bb.h ], [ %i.x, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  call void @av_channel_layout_uninit(ptr noundef nonnull %i.bf) #16
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bi = shl nuw nsw i32 %i.aw, 2
  %i.bj = and i32 %i.bi, 4
  %i.bk = and i32 %i.aw, 2                        ; 2 uses
  %.lobit = lshr exact i32 %i.bk, 1
  %i.bl = or disjoint i32 %.lobit, %i.bj
  %i.bm = or disjoint i32 %i.bl, %i.bk
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = and i32 %i.av, 262144
  %.not = icmp eq i32 %i.bo, 0
  %4 = select i1 %.not, i64 0, i64 1536
  %i.bp = and i32 %i.aw, 8
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = or disjoint i64 %4, %i.bq
  %i.bs = or disjoint i64 %i.br, %i.bn
  %i.bt = call i32 @av_channel_layout_from_mask(ptr noundef nonnull %i.bh, i64 noundef %i.bs) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %bb.i, %bb.d
  %.0 = phi i32 [ 0, %bb.i ], [ %i.b, %bb.a ], [ -1094995529, %bb.d ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mov_read_wide(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = icmp slt i64 %3, 8
  br i1 %i.a, label %mov_read_mdat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @avio_rb32(ptr noundef %1) #16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i64 %3, -4
  %i.d = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.c) #16 ; 0 uses
  br label %mov_read_mdat.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @avio_rl32(ptr noundef %1) #16
  %i.f = add nsw i64 %3, -8                       ; 2 uses
  %.not14 = icmp eq i32 %i.e, 1952539757
  br i1 %.not14, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i64 @avio_skip(ptr noundef %1, i64 noundef %i.f) #16 ; 0 uses
  br label %mov_read_mdat.exit

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %mov_read_mdat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.i, align 4, !tbaa !137
  br label %mov_read_mdat.exit

mov_read_mdat.exit:                               ; preds = %bb.g, %bb.f, %bb.a, %bb.e, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mov_read_wfex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.n = trunc i64 %3 to i32
  %i.o = tail call i32 @ff_get_wav_header(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %i.m, i32 noundef %i.n, i32 noundef 0) #16 ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.q, i32 noundef 24, ptr noundef nonnull @.str.224) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mov_read_cmov(ptr noundef %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %4 = alloca %struct.FFIOContext, align 8        ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.c = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not = icmp eq i32 %i.c, 1836016484
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not28 = icmp eq i32 %i.d, 1651076218
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.225) #16
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @avio_rb32(ptr noundef %1) #16 ; 0 uses
  %i.h = tail call i32 @avio_rl32(ptr noundef %1) #16
  %.not29 = icmp eq i32 %i.h, 1685482851
  br i1 %.not29, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @avio_rb32(ptr noundef %1) #16
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !171
  %i.k = add nsw i64 %3, -24                      ; 3 uses
  %i.l = tail call noalias ptr @av_malloc(i64 noundef %i.k) #16 ; 5 uses
  %.not30 = icmp eq ptr %i.l, null
  br i1 %.not30, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noalias ptr @av_malloc(i64 noundef %i.j) #16 ; 4 uses
  %.not31 = icmp eq ptr %i.m, null
  br i1 %.not31, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @av_free(ptr noundef nonnull %i.l) #16
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.n = trunc i64 %i.k to i32
  %i.o = tail call i32 @ffio_read_size(ptr noundef %1, ptr noundef nonnull %i.l, i32 noundef %i.n) #16 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @uncompress(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, i64 noundef %i.k) #16
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !171
  %i.s = trunc i64 %i.r to i32
  call void @ffio_init_read_context(ptr noundef nonnull %4, ptr noundef nonnull %i.m, i32 noundef %i.s) #16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 1, ptr %i.t, align 8, !tbaa !634
  %i.u = load i64, ptr %i.a, align 8, !tbaa !171
  %i.v = call i32 @mov_read_default(ptr noundef %0, ptr noundef nonnull %4, i32 1987014509, i64 %i.u)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.j
  %.0 = phi i32 [ %i.o, %bb.h ], [ -1094995529, %bb.i ], [ %i.v, %bb.j ]
  call void @av_free(ptr noundef nonnull %i.m) #16
  call void @av_free(ptr noundef nonnull %i.l) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.k, %bb.g, %bb.c
  %.024 = phi i32 [ -1094995529, %bb.d ], [ -1094995529, %bb.c ], [ -1094995529, %bb.a ], [ %.0, %bb.k ], [ -12, %bb.g ], [ -12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mov_read_chan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !47   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp slt i64 %3, 16
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = add i32 %i.d, -1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = tail call i64 @avio_skip(ptr noundef %1, i64 noundef 4) #16 ; 0 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.o = add nsw i64 %3, -4
  %i.p = tail call i32 @ff_mov_read_chan(ptr noundef %i.n, ptr noundef %1, ptr noundef %i.l, i64 noundef %i.o) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, -2147483648) i32 @mov_read_chnl(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 %2, i64 %3) #0 {
bb.a:
  %i.a = tail call i64 @avio_seek(ptr noundef %1, i64 noundef 0, i32 noundef 1) #16
  %i.b = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.a, i64 %3) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
end_hunk_0
